uint64_t static DeliveryDateFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v4 = type metadata accessor for FormatterConfiguration(), (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    v5 = type metadata accessor for DeliveryDateFormatter(0);
    v6 = *(a1 + *(v5 + 20)) ^ *(a2 + *(v5 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1B767EBA8(uint64_t a1)
{
  v2 = sub_1B76827FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B767EBE4(uint64_t a1)
{
  v2 = sub_1B76827FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeliveryDateFormatter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76827FC();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B76827B4(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for DeliveryDateFormatter(0);
    v8[14] = 1;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DeliveryDateFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  type metadata accessor for DeliveryDateFormatter(0);
  return sub_1B7802318();
}

uint64_t DeliveryDateFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  type metadata accessor for DeliveryDateFormatter(0);
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t DeliveryDateFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABE0);
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for DeliveryDateFormatter(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76827FC();
  v11 = v19;
  sub_1B78023C8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for FormatterConfiguration;
  }

  else
  {
    v12 = v17;
    v21 = 0;
    sub_1B76827B4(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    sub_1B72A2B9C(v18, v10);
    v20 = 1;
    v13 = sub_1B7801E08();
    (*(v12 + 8))(v7, v5);
    v10[*(v8 + 20)] = v13 & 1;
    sub_1B767D800(v10, v16, type metadata accessor for DeliveryDateFormatter);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for DeliveryDateFormatter;
  }

  return sub_1B767D0B4(v10, v15);
}

uint64_t sub_1B767F438()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B767F5A4()
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802318();
}

uint64_t sub_1B767F6F8()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t ShippedDateFormatter.useRelativeDateFormatting.setter(char a1)
{
  result = type metadata accessor for ShippedDateFormatter(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t ShippedDateFormatter.shippingType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShippedDateFormatter(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ShippedDateFormatter.shippingType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ShippedDateFormatter(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t ShippedDateFormatter.yesterdayFormatter.getter()
{
  if (*(v0 + *(type metadata accessor for ShippedDateFormatter(0) + 24)) == 1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t ShippedDateFormatter.todayFormatter.getter()
{
  if (*(v0 + *(type metadata accessor for ShippedDateFormatter(0) + 24)) == 1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

Swift::String __swiftcall ShippedDateFormatter.defaultFormatter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + *(type metadata accessor for ShippedDateFormatter(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B721FF04();
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;
  v6 = qword_1EDAF93A8;

  if (v4 == 1)
  {
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDAF93B0;
  }

  else
  {
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDAF93B0;
  }

  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = sub_1B7800838();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_1B7800868();
  v12 = sub_1B78008A8();
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_1B767FEC4()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x676E697070696873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1B767FF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7683510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B767FF60(uint64_t a1)
{
  v2 = sub_1B7682850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B767FF9C(uint64_t a1)
{
  v2 = sub_1B7682850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ShippedDateFormatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7682850();
  sub_1B78023F8();
  v11[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B76827B4(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for ShippedDateFormatter(0);
    v11[14] = 1;
    sub_1B7801F88();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1B760E1B4();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ShippedDateFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for ShippedDateFormatter(0);
  sub_1B7802318();
  return MEMORY[0x1B8CA6620](*(v0 + *(v1 + 24)));
}

uint64_t ShippedDateFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  v1 = type metadata accessor for ShippedDateFormatter(0);
  sub_1B7802318();
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 24)));
  return sub_1B7802368();
}

uint64_t ShippedDateFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ABF8);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ShippedDateFormatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7682850();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for FormatterConfiguration;
  }

  else
  {
    v12 = v17;
    v23 = 0;
    sub_1B76827B4(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    v13 = v18;
    sub_1B7801E48();
    sub_1B72A2B9C(v19, v11);
    v22 = 1;
    v11[*(v9 + 20)] = sub_1B7801E08() & 1;
    v20 = 2;
    sub_1B760E2B0();
    sub_1B7801E48();
    (*(v12 + 8))(v8, v13);
    v11[*(v9 + 24)] = v21;
    sub_1B767D800(v11, v16, type metadata accessor for ShippedDateFormatter);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for ShippedDateFormatter;
  }

  return sub_1B767D0B4(v11, v15);
}

uint64_t sub_1B768082C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v10 = a2(a1, v9);
  v12 = v11;
  result = (*(v7 + 8))(v9, v6);
  *a3 = v10;
  a3[1] = v12;
  return result;
}

uint64_t sub_1B7680958(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  return MEMORY[0x1B8CA6620](*(v2 + *(a2 + 24)));
}

uint64_t sub_1B7680AB8(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76827B4(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B76827B4(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76827B4(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 24)));
  return sub_1B7802368();
}

uint64_t sub_1B7680C60(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7680DA4(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7680EE8(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B768102C(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681170(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B76812B4(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B76813F8(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B768153C(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681680(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B76817C4(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681908(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681A4C(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681B90(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681CD4(char a1)
{
  if (a1)
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  else
  {
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDAF93B0;
  }

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1B7800868();
  return v6;
}

uint64_t sub_1B7681E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v6 = type metadata accessor for FormatterConfiguration(), (MEMORY[0x1B8CA3EF0](a1 + *(v6 + 20), a2 + *(v6 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) != 0 && (v7 = a3(0), *(a1 + *(v7 + 20)) == *(a2 + *(v7 + 20))))
  {
    v8 = *(a1 + *(v7 + 24)) ^ *(a2 + *(v7 + 24)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL _s10FinanceKit5OrderV19ShippingFulfillmentV12StatusValuesV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v51 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v11 = MEMORY[0x1EEE9AC00](v62);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v51 - v13;
  v14 = type metadata accessor for Order.FulfillmentWindow(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990A40);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  v23 = a2;
  if ((sub_1B767C198(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v52 = v6;
  v53 = v4;
  v54 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  v55 = a1;
  v24 = v54[5];
  v25 = *(v20 + 48);
  sub_1B7205588(a1 + v24, v22, &qword_1EB990828);
  sub_1B7205588(v23 + v24, &v22[v25], &qword_1EB990828);
  v26 = *(v15 + 48);
  if (v26(v22, 1, v14) == 1)
  {
    if (v26(&v22[v25], 1, v14) == 1)
    {
      sub_1B7205418(v22, &qword_1EB990828);
      goto LABEL_9;
    }

LABEL_7:
    v27 = &qword_1EB990A40;
    v28 = v22;
LABEL_22:
    sub_1B7205418(v28, v27);
    return 0;
  }

  sub_1B7205588(v22, v19, &qword_1EB990828);
  if (v26(&v22[v25], 1, v14) == 1)
  {
    sub_1B767D0B4(v19, type metadata accessor for Order.FulfillmentWindow);
    goto LABEL_7;
  }

  v29 = v59;
  sub_1B7683770(&v22[v25], v59, type metadata accessor for Order.FulfillmentWindow);
  v30 = _s10FinanceKit5OrderV17FulfillmentWindowO2eeoiySbAE_AEtFZ_0(v19, v29);
  sub_1B767D0B4(v29, type metadata accessor for Order.FulfillmentWindow);
  sub_1B767D0B4(v19, type metadata accessor for Order.FulfillmentWindow);
  sub_1B7205418(v22, &qword_1EB990828);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v31 = v54[6];
  v32 = v61;
  v33 = *(v62 + 48);
  sub_1B7205588(v55 + v31, v61, &qword_1EB98EBD0);
  v34 = v23;
  sub_1B7205588(v23 + v31, v32 + v33, &qword_1EB98EBD0);
  v35 = v60;
  v36 = *(v60 + 48);
  v37 = v53;
  if (v36(v32, 1, v53) != 1)
  {
    v38 = v58;
    sub_1B7205588(v32, v58, &qword_1EB98EBD0);
    if (v36(v32 + v33, 1, v37) != 1)
    {
      v39 = v32 + v33;
      v40 = v52;
      (*(v35 + 32))(v52, v39, v37);
      sub_1B76827B4(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v41 = sub_1B7800828();
      v42 = *(v35 + 8);
      v42(v40, v37);
      v42(v38, v37);
      sub_1B7205418(v61, &qword_1EB98EBD0);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v35 + 8))(v38, v37);
    goto LABEL_14;
  }

  if (v36(v32 + v33, 1, v37) != 1)
  {
LABEL_14:
    v27 = &qword_1EB98FCE0;
    v28 = v32;
    goto LABEL_22;
  }

  sub_1B7205418(v32, &qword_1EB98EBD0);
LABEL_16:
  v43 = v54[7];
  v44 = *(v62 + 48);
  v45 = v57;
  sub_1B7205588(v55 + v43, v57, &qword_1EB98EBD0);
  sub_1B7205588(v34 + v43, v45 + v44, &qword_1EB98EBD0);
  if (v36(v45, 1, v37) == 1)
  {
    if (v36(v45 + v44, 1, v37) == 1)
    {
      sub_1B7205418(v45, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_21;
  }

  v46 = v56;
  sub_1B7205588(v45, v56, &qword_1EB98EBD0);
  if (v36(v45 + v44, 1, v37) == 1)
  {
    (*(v35 + 8))(v46, v37);
LABEL_21:
    v27 = &qword_1EB98FCE0;
    v28 = v45;
    goto LABEL_22;
  }

  v48 = v52;
  (*(v35 + 32))(v52, v45 + v44, v37);
  sub_1B76827B4(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v49 = sub_1B7800828();
  v50 = *(v35 + 8);
  v50(v48, v37);
  v50(v46, v37);
  sub_1B7205418(v45, &qword_1EB98EBD0);
  return (v49 & 1) != 0;
}

unint64_t sub_1B7682760()
{
  result = qword_1EB99ABC0;
  if (!qword_1EB99ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ABC0);
  }

  return result;
}

uint64_t sub_1B76827B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B76827FC()
{
  result = qword_1EB99ABD8;
  if (!qword_1EB99ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ABD8);
  }

  return result;
}

unint64_t sub_1B7682850()
{
  result = qword_1EB99ABF0;
  if (!qword_1EB99ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ABF0);
  }

  return result;
}

uint64_t sub_1B76828A4(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC00, type metadata accessor for Order.ShippingFulfillment.StatusFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7682A1C(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC28, type metadata accessor for DeliveryDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7682A74(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC30, type metadata accessor for DeliveryDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7682BEC(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC58, type metadata accessor for ShippedDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7682C44(uint64_t a1)
{
  result = sub_1B76827B4(&qword_1EB99AC60, type metadata accessor for ShippedDateFormatter);
  *(a1 + 8) = result;
  return result;
}

void sub_1B7682DE4()
{
  sub_1B7682EB8();
  if (v0 <= 0x3F)
  {
    sub_1B72A2394(319, &qword_1EB990A10, type metadata accessor for Order.FulfillmentWindow);
    if (v1 <= 0x3F)
    {
      sub_1B72A2394(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7682EB8()
{
  if (!qword_1EB99AC98)
  {
    sub_1B7290B10();
    sub_1B7682F34();
    v0 = type metadata accessor for Order.Fulfillment.DisplayStatus();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB99AC98);
    }
  }
}

unint64_t sub_1B7682F34()
{
  result = qword_1EB99ACA0;
  if (!qword_1EB99ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ACA0);
  }

  return result;
}

uint64_t sub_1B7683018()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B76830CC()
{
  result = qword_1EB99ACD8;
  if (!qword_1EB99ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ACD8);
  }

  return result;
}

unint64_t sub_1B7683124()
{
  result = qword_1EB99ACE0;
  if (!qword_1EB99ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ACE0);
  }

  return result;
}

unint64_t sub_1B768317C()
{
  result = qword_1EB99ACE8;
  if (!qword_1EB99ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ACE8);
  }

  return result;
}

unint64_t sub_1B76831D4()
{
  result = qword_1EB99ACF0;
  if (!qword_1EB99ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ACF0);
  }

  return result;
}

unint64_t sub_1B768322C()
{
  result = qword_1EB99ACF8;
  if (!qword_1EB99ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ACF8);
  }

  return result;
}

unint64_t sub_1B7683284()
{
  result = qword_1EB99AD00;
  if (!qword_1EB99AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AD00);
  }

  return result;
}

unint64_t sub_1B76832DC()
{
  result = qword_1EB99AD08;
  if (!qword_1EB99AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AD08);
  }

  return result;
}

unint64_t sub_1B7683334()
{
  result = qword_1EB99AD10;
  if (!qword_1EB99AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AD10);
  }

  return result;
}

unint64_t sub_1B768338C()
{
  result = qword_1EB99AD18;
  if (!qword_1EB99AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AD18);
  }

  return result;
}

uint64_t sub_1B76833E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7889BC0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B78773D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B7683510(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B78773D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E697070696873 && a2 == 0xEC00000065707954)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B7683770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B77FFAF8();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);
  v7 = type metadata accessor for FormatterConfiguration();
  v8 = *(v7 + 20);
  v9 = sub_1B77FFC88();
  (*(*(v9 - 8) + 8))(v1 + v4 + v8, v9);
  v10 = *(v7 + 24);
  v11 = sub_1B77FFCF8();
  (*(*(v11 - 8) + 8))(v1 + v4 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1B7683A78(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return a2(v4, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedInstitutionDeleter.deleteAll(context:)(NSManagedObjectContext context)
{
  type metadata accessor for ManagedInstitution();
  v18.receiver = swift_getObjCClassFromMetadata();
  v18.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedInstitution;
  v3 = objc_msgSendSuper2(&v18, sel_fetchRequest);
  v4 = sub_1B7801498();
  if (!v1)
  {
    v13 = v4;

    if (v13 >> 62)
    {
      v14 = sub_1B7801958();
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    if (v14 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8CA5DC0](i, v13);
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      [(objc_class *)context.super.isa deleteObject:v16];
    }

LABEL_16:

    return;
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B78000B8();
  __swift_project_value_buffer(v5, qword_1EDAF65B0);
  v6 = v1;
  v7 = sub_1B7800098();
  v8 = sub_1B78011D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B7198000, v7, v8, "Could not delete institution: %@", v9, 0xCu);
    sub_1B726B694(v10);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
  }

  swift_willThrow();
}

CLLocation __swiftcall CLLocation.init(rawLocation:)(FinanceKit::RawLocation rawLocation)
{
  v1 = *&rawLocation.altitude.is_nil;
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);
  if (*(v1 + 24))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *(v1 + 16);
  }

  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B77FF978();
  v10 = sub_1B77FF8B8();
  (*(v3 + 8))(v5, v2);
  v11 = [v9 initWithCoordinate:v10 altitude:v6 horizontalAccuracy:v7 verticalAccuracy:v8 timestamp:{0.0, 1.0}];

  v13 = v11;
  result._internal = v12;
  result.super.isa = v13;
  return result;
}

FinanceKit::RawLocation __swiftcall RawLocation.init(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  v3 = v1;
  [(objc_class *)a1.super.isa coordinate];
  v5 = v4;
  [(objc_class *)isa coordinate];
  v7 = v6;
  [(objc_class *)isa altitude];
  v9 = v8;

  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 16) = v9;
  *(v3 + 24) = 0;
  result.altitude.value = v13;
  result.longitude = v12;
  result.latitude = v11;
  result.altitude.is_nil = v10;
  return result;
}

uint64_t RawLocation.altitude.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

FinanceKit::RawLocation __swiftcall RawLocation.init(latitude:longitude:altitude:)(Swift::Double latitude, Swift::Double longitude, Swift::Double_optional altitude)
{
  *v4 = latitude;
  *(v4 + 8) = longitude;
  *(v4 + 16) = *&altitude.is_nil;
  *(v4 + 24) = v3 & 1;
  result.altitude.value = altitude.value;
  result.altitude.is_nil = altitude.is_nil;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t sub_1B7683FE4()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6564757469746C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1B7684038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76846CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7684060(uint64_t a1)
{
  v2 = sub_1B7684500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B768409C(uint64_t a1)
{
  v2 = sub_1B7684500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawLocation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AD40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7684500();
  sub_1B78023F8();
  v12 = 0;
  sub_1B7801F98();
  if (!v2)
  {
    v11 = 1;
    sub_1B7801F98();
    v10 = 2;
    sub_1B7801F18();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AD50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7684500();
  sub_1B78023C8();
  if (!v2)
  {
    v20 = 0;
    sub_1B7801E18();
    v10 = v9;
    v19 = 1;
    sub_1B7801E18();
    v12 = v11;
    v18 = 2;
    v14 = sub_1B7801D98();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s10FinanceKit11RawLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0;
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }
}

unint64_t sub_1B7684500()
{
  result = qword_1EB99AD48;
  if (!qword_1EB99AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AD48);
  }

  return result;
}

uint64_t sub_1B7684554(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7684574(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1B76845C8()
{
  result = qword_1EB99AD58;
  if (!qword_1EB99AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AD58);
  }

  return result;
}

unint64_t sub_1B7684620()
{
  result = qword_1EB99AD60;
  if (!qword_1EB99AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AD60);
  }

  return result;
}

unint64_t sub_1B7684678()
{
  result = qword_1EB99AD68[0];
  if (!qword_1EB99AD68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB99AD68);
  }

  return result;
}

uint64_t sub_1B76846CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

id ManagedInternalTransaction.bankMerchantInformationInsight.getter()
{
  v1 = [v0 insightsObject];
  v2 = [v1 bankMerchantInformationInsightObject];

  return v2;
}

uint64_t ManagedBankMerchantInformationInsight.merchantCategoryCodeValue.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = sub_1B7800838();
  v3 = [v0 primitiveValueForKey_];

  if (v3)
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = 0;
      v5 = v10;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1B726990C(v13);
  }

  v5 = 0;
  v4 = 1;
LABEL_9:
  v6 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  if (v5 == v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = v5;
  if (v7)
  {
    v8 = 0;
  }

  return v8 | (v7 << 16);
}

void TransactionMerchantInformation.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = ManagedBankMerchantInformationInsight.merchantCategoryCodeValue.getter();
  v5 = [a1 standardIndustrialClassificationCode];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B7800868();
    v25 = v8;
    v26 = v7;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v9 = [a1 categoryDescription];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B7800868();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a1 merchantName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1B7800868();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [a1 merchantNumber];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B7800868();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [a1 merchantAddress];

  *a2 = v4;
  *(a2 + 2) = BYTE2(v4) & 1;
  *(a2 + 8) = v26;
  *(a2 + 16) = v25;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v21;
  *(a2 + 64) = v23;
  *(a2 + 72) = v24;
}

void sub_1B7684B28(int a1)
{
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  if ((a1 & 0x10000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B7802288();
  }

  v5 = sub_1B7800838();
  [v1 setPrimitiveValue:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

id ManagedBankMerchantInformationInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBankMerchantInformationInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBankMerchantInformationInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedBankMerchantInformationInsight.__allocating_init(insight:context:)(unsigned __int16 *a1, void *a2)
{
  v5 = *(a1 + 3);
  v10 = *(a1 + 2);
  v11 = v5;
  v12 = *(a1 + 4);
  v6 = *(a1 + 1);
  v7 = [objc_allocWithZone(v2) initWithContext_];
  ManagedBankMerchantInformationInsight.update(with:)(a1);

  sub_1B76630AC(&v9);
  return v7;
}

id ManagedBankMerchantInformationInsight.update(with:)(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 2);
  v13 = *(a1 + 1);
  v5 = *(a1 + 4);
  v7 = *(a1 + 8);
  v6 = *(a1 + 9);
  if (*(a1 + 6))
  {
    v8 = sub_1B7800838();
  }

  else
  {
    v8 = 0;
  }

  [v1 setMerchantName_];

  if (v5)
  {
    v9 = sub_1B7800838();
  }

  else
  {
    v9 = 0;
  }

  [v1 setCategoryDescription_];

  sub_1B7684B28(v2 | (v3 << 16));
  if (v7)
  {
    v10 = sub_1B7800838();
  }

  else
  {
    v10 = 0;
  }

  [v1 setMerchantNumber_];

  if (v4)
  {
    v11 = sub_1B7800838();
  }

  else
  {
    v11 = 0;
  }

  [v1 setStandardIndustrialClassificationCode_];

  return [v1 setMerchantAddress_];
}

id static ManagedBankMerchantInformationInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit37ManagedBankMerchantInformationInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t sub_1B7685068()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B76850D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1B7685218(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t RawMerchant.address.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1B7205588(v10, v9, &qword_1EB995F40);
}

__n128 RawMerchant.address.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_1B7205418(v9, &qword_1EB995F40);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t type metadata accessor for RawMerchant()
{
  result = qword_1EDAF8F58;
  if (!qword_1EDAF8F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawMerchant.businessChatURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawMerchant() + 20);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawMerchant.contactURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawMerchant() + 24);

  return sub_1B727CBBC(a1, v3);
}

uint64_t RawMerchant.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant() + 28));

  return v1;
}

uint64_t RawMerchant.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawMerchant.emailAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant() + 32));

  return v1;
}

uint64_t RawMerchant.emailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawMerchant.logo.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant() + 36));

  return v1;
}

uint64_t RawMerchant.logo.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawMerchant.merchantIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant() + 40));

  return v1;
}

uint64_t RawMerchant.merchantIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawMerchant.phoneNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawMerchant() + 44));

  return v1;
}

uint64_t RawMerchant.phoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawMerchant() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawMerchant.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawMerchant() + 48);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawMerchant.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawMerchant() + 48);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawMerchant.init(address:businessChatURL:contactURL:displayName:emailAddress:logo:merchantIdentifier:phoneNumber:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = 1;
  v17 = type metadata accessor for RawMerchant();
  *(a9 + 8) = 0u;
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  v18 = v17[5];
  v19 = sub_1B77FF4F8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(a9 + v18, 1, 1, v19);
  v22 = v17[6];
  v21(a9 + v22, 1, 1, v19);
  v23 = (a9 + v17[8]);
  v24 = (a9 + v17[9]);
  v25 = (a9 + v17[11]);
  v26 = *(a9 + 80);
  v42[4] = *(a9 + 64);
  v42[5] = v26;
  v43 = *(a9 + 96);
  v27 = *(a9 + 16);
  v42[0] = *a9;
  v42[1] = v27;
  v28 = *(a9 + 48);
  v42[2] = *(a9 + 32);
  v42[3] = v28;
  sub_1B7205418(v42, &qword_1EB995F40);
  v29 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v29;
  *(a9 + 96) = *(a1 + 96);
  v30 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v30;
  v31 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v31;
  sub_1B727CBBC(a2, a9 + v18);
  sub_1B727CBBC(a3, a9 + v22);
  v32 = (a9 + v17[7]);
  *v32 = a4;
  v32[1] = a5;
  *v23 = a6;
  v23[1] = a7;
  *v24 = a8;
  v24[1] = a10;
  v33 = (a9 + v17[10]);
  *v33 = a11;
  v33[1] = a12;
  *v25 = a13;
  v25[1] = a14;
  return (*(v20 + 32))(a9 + v17[12], a15, v19);
}

unint64_t sub_1B7685EB0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73736572646461;
    v6 = 0x55746361746E6F63;
    if (a1 != 2)
    {
      v6 = 0x4E79616C70736964;
    }

    if (a1)
    {
      v5 = 0x7373656E69737562;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x6D754E656E6F6870;
    if (a1 != 7)
    {
      v2 = 7107189;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6464416C69616D65;
    if (a1 != 4)
    {
      v3 = 1869049708;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B7685FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7687F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7686018(uint64_t a1)
{
  v2 = sub_1B7687C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7686054(uint64_t a1)
{
  v2 = sub_1B7687C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawMerchant.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99ADF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7687C24();
  sub_1B78023F8();
  v8 = v2[3];
  v9 = v2[5];
  v32 = v2[4];
  v33 = v9;
  v10 = v2[1];
  v29[0] = *v2;
  v29[1] = v10;
  v11 = v2[3];
  v13 = *v2;
  v12 = v2[1];
  v30 = v2[2];
  v31 = v11;
  v25 = v8;
  v26 = v32;
  v27 = v2[5];
  v22 = v13;
  v34 = *(v2 + 12);
  v28 = *(v2 + 12);
  v23 = v12;
  v24 = v30;
  v21 = 0;
  sub_1B7205588(v29, v19, &qword_1EB995F40);
  sub_1B7304418();
  v35 = v4;
  v14 = v17;
  sub_1B7801F38();
  v19[4] = v26;
  v19[5] = v27;
  v20 = v28;
  v19[0] = v22;
  v19[1] = v23;
  v19[2] = v24;
  v19[3] = v25;
  sub_1B7205418(v19, &qword_1EB995F40);
  if (v14)
  {
    return (*(v5 + 8))(v7, v35);
  }

  v17 = type metadata accessor for RawMerchant();
  v18 = 1;
  sub_1B77FF4F8();
  sub_1B7535C74(&qword_1EB98F700);
  sub_1B7801F38();
  v18 = 2;
  sub_1B7801F38();
  v18 = 3;
  sub_1B7801F78();
  v18 = 4;
  sub_1B7801EF8();
  v18 = 5;
  sub_1B7801EF8();
  v18 = 6;
  sub_1B7801F78();
  v18 = 7;
  sub_1B7801EF8();
  v18 = 8;
  v16 = v35;
  sub_1B7801FC8();
  return (*(v5 + 8))(v7, v16);
}

uint64_t RawMerchant.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE00);
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for RawMerchant();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 1;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  v17 = *(v4 + 56);
  v83 = *(v14 + 20);
  v17(&v16[v83], 1, 1, v3);
  v18 = *(v13 + 24);
  v63 = v13;
  v64 = v18;
  v17(&v16[v18], 1, 1, v3);
  v19 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B7687C24();
  v20 = v61;
  sub_1B78023C8();
  if (v20)
  {
    v61 = 0;
    __swift_destroy_boxed_opaque_existential_1(v62);
    v21 = *(v16 + 5);
    v80 = *(v16 + 4);
    v81 = v21;
    v82 = *(v16 + 12);
    v22 = *(v16 + 1);
    v76 = *v16;
    v77 = v22;
    v23 = *(v16 + 3);
    v78 = *(v16 + 2);
    v79 = v23;
    sub_1B7205418(&v76, &qword_1EB995F40);
    sub_1B7205418(&v16[v83], &unk_1EB994C70);
    sub_1B7205418(&v16[v64], &unk_1EB994C70);
  }

  else
  {
    v54 = v4;
    v75 = 0;
    sub_1B73043C4();
    sub_1B7801DB8();
    v70 = v80;
    v71 = v81;
    v72 = v82;
    v66 = v76;
    v67 = v77;
    v68 = v78;
    v69 = v79;
    v24 = *v16;
    v25 = *(v16 + 2);
    v26 = *(v16 + 3);
    v73[1] = *(v16 + 1);
    v73[2] = v25;
    v73[0] = v24;
    v27 = *(v16 + 4);
    v28 = *(v16 + 5);
    v74 = *(v16 + 12);
    v73[4] = v27;
    v73[5] = v28;
    v73[3] = v26;
    sub_1B7205418(v73, &qword_1EB995F40);
    v29 = v71;
    *(v16 + 4) = v70;
    *(v16 + 5) = v29;
    *(v16 + 12) = v72;
    v30 = v67;
    *v16 = v66;
    *(v16 + 1) = v30;
    v31 = v69;
    *(v16 + 2) = v68;
    *(v16 + 3) = v31;
    v65 = 1;
    v32 = sub_1B7535C74(&qword_1EB98F730);
    v33 = v58;
    sub_1B7801DB8();
    sub_1B727CBBC(v33, &v16[v83]);
    v65 = 2;
    v34 = v57;
    sub_1B7801DB8();
    v58 = v32;
    sub_1B727CBBC(v34, &v16[v64]);
    v65 = 3;
    v35 = v60;
    v36 = sub_1B7801DF8();
    v37 = v12;
    v38 = v63;
    v39 = &v16[v63[7]];
    *v39 = v36;
    v39[1] = v40;
    v65 = 4;
    v57 = v37;
    v41 = sub_1B7801D78();
    v42 = &v16[v38[8]];
    *v42 = v41;
    v42[1] = v43;
    v61 = v43;
    v65 = 5;
    v44 = sub_1B7801D78();
    v45 = &v16[v38[9]];
    *v45 = v44;
    v45[1] = v46;
    v65 = 6;
    v47 = sub_1B7801DF8();
    v48 = &v16[v38[10]];
    *v48 = v47;
    v48[1] = v49;
    v65 = 7;
    v50 = sub_1B7801D78();
    v51 = &v16[v63[11]];
    *v51 = v50;
    v51[1] = v52;
    v65 = 8;
    sub_1B7801E48();
    (*(v59 + 8))(v57, v35);
    (*(v54 + 32))(&v16[v63[12]], v56, v3);
    sub_1B7687C78(v16, v55);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return sub_1B74BA260(v16);
  }
}

void RawMerchant.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  *a2 = 1;
  v10 = type metadata accessor for RawMerchant();
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  v64 = 0u;
  *(a2 + 88) = 0u;
  v11 = v10[5];
  v12 = sub_1B77FF4F8();
  v13 = *(*(v12 - 8) + 56);
  v13(a2 + v11, 1, 1, v12);
  v63 = v10[6];
  v13(a2 + v63, 1, 1, v12);
  v14 = [a1 address];
  if (v14)
  {
    RawAddress.init(_:)(v14, &v65);
    v64 = v66;
    v62 = v65;
    v60 = v68;
    v61 = v67;
    v58 = v70;
    v59 = v69;
    v15 = v71;
  }

  else
  {
    v15 = 0;
    v61 = 0u;
    v62 = xmmword_1B78347C0;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
  }

  v16 = *(a2 + 80);
  v69 = *(a2 + 64);
  v70 = v16;
  v71 = *(a2 + 96);
  v17 = *(a2 + 16);
  v65 = *a2;
  v66 = v17;
  v18 = *(a2 + 48);
  v67 = *(a2 + 32);
  v68 = v18;
  sub_1B7205418(&v65, &qword_1EB995F40);
  v19 = v64;
  *a2 = v62;
  *(a2 + 16) = v19;
  v20 = v60;
  *(a2 + 32) = v61;
  *(a2 + 48) = v20;
  v21 = v58;
  *(a2 + 64) = v59;
  *(a2 + 80) = v21;
  *(a2 + 96) = v15;
  v22 = [a1 businessChatURL];
  if (v22)
  {
    v23 = v22;
    sub_1B77FF478();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = 1;
  v13(v9, v24, 1, v12);
  sub_1B727CBBC(v9, a2 + v11);
  v26 = [a1 contactURL];
  if (v26)
  {
    v27 = v26;
    sub_1B77FF478();

    v25 = 0;
  }

  v13(v7, v25, 1, v12);
  sub_1B727CBBC(v7, a2 + v63);
  v28 = [a1 displayName];
  v29 = sub_1B77FFA48();
  v30 = sub_1B741F7D4(v29);
  v32 = v31;

  v33 = (a2 + v10[7]);
  *v33 = v30;
  v33[1] = v32;
  v34 = [a1 emailAddress];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1B7800868();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = (a2 + v10[8]);
  *v39 = v36;
  v39[1] = v38;
  v40 = [a1 logoName];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1B7800868();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = (a2 + v10[9]);
  *v45 = v42;
  v45[1] = v44;
  v46 = [a1 merchantIdentifier];
  v47 = sub_1B7800868();
  v49 = v48;

  v50 = (a2 + v10[10]);
  *v50 = v47;
  v50[1] = v49;
  v51 = [a1 phoneNumber];
  if (v51)
  {
    v52 = v51;
    v53 = sub_1B7800868();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v56 = (a2 + v10[11]);
  *v56 = v53;
  v56[1] = v55;
  v57 = [a1 url];
  sub_1B77FF478();
}

uint64_t _s10FinanceKit11RawMerchantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v76[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v83 = &v76[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v76[-v16];
  v18 = *(a1 + 48);
  v19 = *(a1 + 80);
  v117[4] = *(a1 + 64);
  v117[5] = v19;
  v118 = *(a1 + 96);
  v20 = *(a1 + 16);
  v117[0] = *a1;
  v117[1] = v20;
  v117[2] = *(a1 + 32);
  v117[3] = v18;
  v21 = *(a2 + 16);
  v119[0] = *a2;
  v119[1] = v21;
  v22 = *(a2 + 32);
  v23 = *(a2 + 48);
  v24 = *(a2 + 64);
  v25 = *(a2 + 80);
  v120 = *(a2 + 96);
  v119[4] = v24;
  v119[5] = v25;
  v119[2] = v22;
  v119[3] = v23;
  v26 = *&v117[0];
  v27 = *(a1 + 56);
  v113 = *(a1 + 40);
  v114 = v27;
  v28 = *(a1 + 88);
  v115 = *(a1 + 72);
  v116 = v28;
  v29 = *(a1 + 24);
  v111 = *(a1 + 8);
  v112 = v29;
  v30 = *&v119[0];
  v31 = *(a2 + 24);
  v105 = *(a2 + 8);
  v106 = v31;
  v32 = *(a2 + 40);
  v33 = *(a2 + 56);
  v34 = *(a2 + 88);
  v109 = *(a2 + 72);
  v110 = v34;
  v107 = v32;
  v108 = v33;
  if (*&v117[0] == 1)
  {
    if (*&v119[0] == 1)
    {
      v80 = v7;
      v81 = v15;
      *v97 = 1;
      *&v97[40] = *(a1 + 40);
      *&v97[56] = *(a1 + 56);
      *&v97[72] = *(a1 + 72);
      *&v97[88] = *(a1 + 88);
      *&v97[8] = *(a1 + 8);
      *&v97[24] = *(a1 + 24);
      sub_1B7205588(v117, &v90, &qword_1EB995F40);
      sub_1B7205588(v119, &v90, &qword_1EB995F40);
      sub_1B7205418(v97, &qword_1EB995F40);
      goto LABEL_9;
    }

    sub_1B7205588(v117, v97, &qword_1EB995F40);
    sub_1B7205588(v119, v97, &qword_1EB995F40);
LABEL_7:
    *&v97[40] = v113;
    *&v97[56] = v114;
    *&v97[72] = v115;
    *&v97[88] = v116;
    *&v97[8] = v111;
    *&v97[24] = v112;
    *v97 = v26;
    v98 = v30;
    v99 = v105;
    v100 = v106;
    v103 = v109;
    v104 = v110;
    v101 = v107;
    v102 = v108;
    v35 = &unk_1EB99AE20;
    v36 = v97;
LABEL_20:
    sub_1B7205418(v36, v35);
    goto LABEL_21;
  }

  v80 = v7;
  *v97 = *&v117[0];
  *&v97[8] = *(a1 + 8);
  *&v97[24] = *(a1 + 24);
  *&v97[40] = *(a1 + 40);
  *&v97[88] = *(a1 + 88);
  *&v97[72] = *(a1 + 72);
  *&v97[56] = *(a1 + 56);
  v90 = *v97;
  v91 = *&v97[16];
  v96 = *&v97[96];
  v94 = *&v97[64];
  v95 = *&v97[80];
  v92 = *&v97[32];
  v93 = *&v97[48];
  if (*&v119[0] == 1)
  {
    *&v89[64] = *&v97[64];
    *&v89[80] = *&v97[80];
    *&v89[96] = *&v97[96];
    *v89 = *v97;
    *&v89[16] = *&v97[16];
    *&v89[32] = *&v97[32];
    *&v89[48] = *&v97[48];
    sub_1B7205588(v117, v87, &qword_1EB995F40);
    sub_1B7205588(v119, v87, &qword_1EB995F40);
    sub_1B7205588(v97, v87, &qword_1EB995F40);
    sub_1B730446C(v89);
    goto LABEL_7;
  }

  v81 = v15;
  *&v89[40] = *(a2 + 40);
  *&v89[56] = *(a2 + 56);
  *&v89[72] = *(a2 + 72);
  *&v89[88] = *(a2 + 88);
  *&v89[8] = *(a2 + 8);
  *&v89[24] = *(a2 + 24);
  *v89 = *&v119[0];
  LODWORD(v79) = _s10FinanceKit10RawAddressV2eeoiySbAC_ACtFZ_0(&v90, v89);
  v85[4] = *&v89[64];
  v85[5] = *&v89[80];
  v86 = *&v89[96];
  v85[0] = *v89;
  v85[1] = *&v89[16];
  v85[2] = *&v89[32];
  v85[3] = *&v89[48];
  sub_1B7205588(v117, v87, &qword_1EB995F40);
  sub_1B7205588(v119, v87, &qword_1EB995F40);
  sub_1B7205588(v97, v87, &qword_1EB995F40);
  sub_1B730446C(v85);
  v87[4] = v94;
  v87[5] = v95;
  v88 = v96;
  v87[0] = v90;
  v87[1] = v91;
  v87[2] = v92;
  v87[3] = v93;
  sub_1B730446C(v87);
  *v89 = v26;
  *&v89[40] = v113;
  *&v89[56] = v114;
  *&v89[72] = v115;
  *&v89[88] = v116;
  *&v89[8] = v111;
  *&v89[24] = v112;
  sub_1B7205418(v89, &qword_1EB995F40);
  if ((v79 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v79 = type metadata accessor for RawMerchant();
  v37 = v79[5];
  v38 = *(v81 + 48);
  sub_1B7205588(a1 + v37, v17, &unk_1EB994C70);
  sub_1B7205588(a2 + v37, v17 + v38, &unk_1EB994C70);
  v78 = v5;
  v39 = *(v5 + 48);
  if (v39(v17, 1, v4) == 1)
  {
    if (v39(v17 + v38, 1, v4) != 1)
    {
LABEL_19:
      v35 = &qword_1EB991C30;
      v36 = v17;
      goto LABEL_20;
    }

    sub_1B7205418(v17, &unk_1EB994C70);
  }

  else
  {
    v40 = v84;
    sub_1B7205588(v17, v84, &unk_1EB994C70);
    if (v39(v17 + v38, 1, v4) == 1)
    {
LABEL_18:
      (*(v78 + 8))(v40, v4);
      goto LABEL_19;
    }

    v41 = v78;
    v42 = v80;
    (*(v78 + 32))(v80, v17 + v38, v4);
    sub_1B7535C74(&qword_1EB990310);
    v77 = sub_1B7800828();
    v43 = *(v41 + 8);
    v43(v42, v4);
    v43(v84, v4);
    sub_1B7205418(v17, &unk_1EB994C70);
    if ((v77 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v44 = v79[6];
  v45 = *(v81 + 48);
  v17 = v83;
  sub_1B7205588(a1 + v44, v83, &unk_1EB994C70);
  v84 = v45;
  sub_1B7205588(a2 + v44, &v45[v17], &unk_1EB994C70);
  if (v39(v17, 1, v4) != 1)
  {
    v40 = v82;
    sub_1B7205588(v17, v82, &unk_1EB994C70);
    v46 = v84;
    if (v39(&v84[v17], 1, v4) != 1)
    {
      v49 = v78;
      v50 = v80;
      (*(v78 + 32))(v80, &v46[v17], v4);
      sub_1B7535C74(&qword_1EB990310);
      v51 = sub_1B7800828();
      v52 = *(v49 + 8);
      v52(v50, v4);
      v52(v40, v4);
      sub_1B7205418(v17, &unk_1EB994C70);
      if ((v51 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (v39(&v84[v17], 1, v4) != 1)
  {
    goto LABEL_19;
  }

  sub_1B7205418(v17, &unk_1EB994C70);
LABEL_24:
  v53 = v79[7];
  v54 = *(a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  if ((v54 != *v56 || v55 != v56[1]) && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_21;
  }

  v57 = v79[8];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 8);
  v60 = (a2 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61 || (*v58 != *v60 || v59 != v61) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v61)
  {
    goto LABEL_21;
  }

  v62 = v79[9];
  v63 = (a1 + v62);
  v64 = *(a1 + v62 + 8);
  v65 = (a2 + v62);
  v66 = v65[1];
  if (v64)
  {
    if (!v66 || (*v63 != *v65 || v64 != v66) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v66)
  {
    goto LABEL_21;
  }

  v67 = v79[10];
  v68 = *(a1 + v67);
  v69 = *(a1 + v67 + 8);
  v70 = (a2 + v67);
  if (v68 == *v70 && v69 == v70[1] || (sub_1B78020F8() & 1) != 0)
  {
    v71 = v79[11];
    v72 = (a1 + v71);
    v73 = *(a1 + v71 + 8);
    v74 = (a2 + v71);
    v75 = v74[1];
    if (v73)
    {
      if (v75 && (*v72 == *v74 && v73 == v75 || (sub_1B78020F8() & 1) != 0))
      {
        goto LABEL_51;
      }
    }

    else if (!v75)
    {
LABEL_51:
      v47 = sub_1B77FF458();
      return v47 & 1;
    }
  }

LABEL_21:
  v47 = 0;
  return v47 & 1;
}

unint64_t sub_1B7687C24()
{
  result = qword_1EB99ADF8;
  if (!qword_1EB99ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99ADF8);
  }

  return result;
}

uint64_t sub_1B7687C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawMerchant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B7687D04()
{
  sub_1B72F2CB8(319, &qword_1EDAF8F88);
  if (v0 <= 0x3F)
  {
    sub_1B7325908();
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EDAFD2C0);
      if (v2 <= 0x3F)
      {
        sub_1B77FF4F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B7687DFC()
{
  result = qword_1EB99AE08;
  if (!qword_1EB99AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE08);
  }

  return result;
}

unint64_t sub_1B7687E54()
{
  result = qword_1EB99AE10;
  if (!qword_1EB99AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE10);
  }

  return result;
}

unint64_t sub_1B7687EAC()
{
  result = qword_1EB99AE18;
  if (!qword_1EB99AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE18);
  }

  return result;
}

uint64_t sub_1B7687F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373656E69737562 && a2 == 0xEF4C525574616843 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x55746361746E6F63 && a2 == 0xEA00000000004C52 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7876A70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id ManagedInstitutionImporter.insertOrUpdateInstitution(_:context:)(uint64_t *a1, void *a2)
{
  v5 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ManagedInstitution();
  v9 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(*a1, a1[1]);
  if (!v2)
  {
    v10 = v9;
    if (v9)
    {
      v8 = v9;
      _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA0D0VSo22NSManagedObjectContextCtFZ_0(v8, a1, a2);
    }

    else
    {
      sub_1B7688DB0(a1, v7, type metadata accessor for Institution);
      v11 = a2;
      v8 = sub_1B74FA170(v7, v11);
    }

    sub_1B7688858(a1 + *(v5 + 60), v8, a2);
  }

  return v8;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v44 - v5;
  v53 = type metadata accessor for RawBankConnectData.TermsAndConditions();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9925D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for RawBankConnectData.Institution(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ManagedInstitution();
  v18 = a2;
  v19 = v54;
  v54 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(*a1, a1[1]);
  if (!v19)
  {
    v20 = a1;
    v48 = v7;
    v49 = 0;
    v50 = v18;
    if (v54)
    {
      v17 = v54;
      v21 = v50;
      _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA18RawBankConnectDataO0D0VSo22NSManagedObjectContextCtFZ_0(v17, a1, v50);
    }

    else
    {
      sub_1B7688DB0(a1, v16, type metadata accessor for RawBankConnectData.Institution);
      v22 = v50;
      v23 = v50;
      v24 = v16;
      v21 = v22;
      v17 = sub_1B74FAC9C(v24, v23);
    }

    v25 = v51;
    v26 = v13;
    sub_1B7205588(v20 + *(v14 + 48), v10, &qword_1EB9925D8);
    v27 = v53;
    v28 = (*(v25 + 48))(v10, 1, v53);
    v29 = v48;
    if (v28 == 1)
    {
      v30 = type metadata accessor for BankConnectTermsAndConditions();
      (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    }

    else
    {
      v47 = type metadata accessor for RawBankConnectData.TermsAndConditions;
      sub_1B7688CE8(v10, v48, type metadata accessor for RawBankConnectData.TermsAndConditions);
      v31 = *(v29 + 1);
      v51 = *v29;
      v45 = *(v27 + 24);
      v46 = v31;
      v32 = type metadata accessor for BankConnectTermsAndConditions();
      v33 = v32[5];
      v34 = sub_1B77FF988();
      v35 = *(v34 - 8);
      v36 = *(v35 + 16);
      v36(&v13[v33], &v29[v45], v34);
      v37 = *(v35 + 56);
      v37(v52, 1, 1, v34);
      v36(&v13[v32[7]], &v29[*(v53 + 28)], v34);
      v38 = v46;

      sub_1B7688D50(v29, v47);
      v39 = v32[6];
      v40 = v34;
      v21 = v50;
      v37(&v26[v39], 1, 1, v40);
      v41 = v52;
      *v26 = v51;
      *(v26 + 1) = v38;
      sub_1B72DFF88(v41, &v26[v39]);
      (*(*(v32 - 1) + 56))(v26, 0, 1, v32);
    }

    v42 = v49;
    sub_1B7688858(v26, v17, v21);
    sub_1B7688C30(v26);
    if (v42)
    {
    }
  }

  return v17;
}

id sub_1B7688858(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for BankConnectTermsAndConditions();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v32 - v13);
  sub_1B7205588(a1, v8, &qword_1EB98FC40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B7688C30(v8);
    return [a2 setTermsAndConditionsObject_];
  }

  else
  {
    v32 = a2;
    sub_1B7688CE8(v8, v14, type metadata accessor for BankConnectTermsAndConditions);
    v16 = type metadata accessor for ManagedBankConnectTermsAndConditions();
    v17 = *v14;
    v18 = v14[1];

    v19 = v17;
    v20 = v34;
    v21 = static ManagedBankConnectTermsAndConditions.existingTermsAndConditions(withID:in:)(v19, v18);
    if (v20)
    {
      sub_1B7688D50(v14, type metadata accessor for BankConnectTermsAndConditions);
    }

    else
    {
      v22 = v21;

      if (v22)
      {
        v23 = v22;
        v24 = sub_1B77FF8B8();
        [v23 setPublishedAt_];

        v25 = sub_1B77FF8B8();
        [v23 setInEffectOn_];

        [v32 setTermsAndConditionsObject_];
      }

      else
      {
        v26 = v33;
        sub_1B7688DB0(v14, v33, type metadata accessor for BankConnectTermsAndConditions);
        v27 = objc_allocWithZone(v16);
        v28 = a3;
        v23 = [v27 initWithContext_];
        v29 = sub_1B7800838();
        [v23 setId_];

        v30 = sub_1B77FF8B8();
        [v23 setPublishedAt_];

        v31 = sub_1B77FF8B8();
        [v23 setInEffectOn_];

        sub_1B7688D50(v26, type metadata accessor for BankConnectTermsAndConditions);
        [v32 setTermsAndConditionsObject_];
      }

      return sub_1B7688D50(v14, type metadata accessor for BankConnectTermsAndConditions);
    }
  }
}

uint64_t sub_1B7688C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7688CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7688D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7688DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ApplePayTransactionIdentifier.init(hexEncoded:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B77ED25C(a1, a2);
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  v7 = 0xF000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t ApplePayTransactionIdentifier.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ApplePayTransactionIdentifier.data.getter()
{
  v1 = *v0;
  sub_1B720ABEC(*v0, *(v0 + 8));
  return v1;
}

uint64_t ApplePayTransactionIdentifier.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B720A388(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ApplePayTransactionIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FF5C8();
  return sub_1B7802368();
}

unint64_t sub_1B7688F5C()
{
  result = qword_1EB99AE28;
  if (!qword_1EB99AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE28);
  }

  return result;
}

uint64_t RawECommerceOrderContent.ContentItem.lineItems.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawOrderReturn();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawECommerceOrderContent.ContentItem(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76929E8(v1, v16, type metadata accessor for RawECommerceOrderContent.ContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B768D65C(v16, v4, type metadata accessor for RawOrderReturn);
    v17 = *v4;

    v18 = type metadata accessor for RawOrderReturn;
    v19 = v4;
  }

  else
  {
    sub_1B768D65C(v16, v13, type metadata accessor for RawOrderFulfillment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B768D65C(v13, v7, type metadata accessor for RawOrderPickupFulfillment);
      v17 = *v7;

      v18 = type metadata accessor for RawOrderPickupFulfillment;
      v19 = v7;
    }

    else
    {
      sub_1B768D65C(v13, v10, type metadata accessor for RawOrderShippingFulfillment);
      v17 = *v10;

      v18 = type metadata accessor for RawOrderShippingFulfillment;
      v19 = v10;
    }
  }

  sub_1B768D6C4(v19, v18);
  return v17;
}

uint64_t RawECommerceOrderContent.automaticUpdatesEnabledUntilDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v191 = &v180 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v189 = &v180 - v6;
  v7 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v190 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1B77FFB08();
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v184 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1B77FFC88();
  v188 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v187 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v201 = &v180 - v12;
  v209 = type metadata accessor for RawOrderReturn();
  v13 = *(v209 - 8);
  v14 = MEMORY[0x1EEE9AC00](v209);
  v218 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v180 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v233 = (&v180 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v180 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE30);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v227 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v225 = &v180 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v231 = &v180 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v224 = (&v180 - v30);
  v31 = sub_1B77FF988();
  v228 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v230 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v194 = &v180 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v202 = &v180 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v217 = &v180 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v220 = &v180 - v40;
  v41 = type metadata accessor for RawECommerceOrderContent(0);
  MEMORY[0x1EEE9AC00](v41);
  v207 = &v180 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v199 = *(v197 - 8);
  v43 = MEMORY[0x1EEE9AC00](v197);
  v223 = &v180 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v180 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v229 = &v180 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v198 = &v180 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v183 = &v180 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v193 = &v180 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v205 = &v180 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v219 = &v180 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v226 = &v180 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v221 = (&v180 - v63);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v222 = &v180 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v200 = &v180 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v204 = &v180 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v180 - v70;
  v72 = RawECommerceOrderContent.isActive.getter();
  if (v72)
  {
    v73 = *(v228 + 56);

    return v73(a1, 1, 1, v31);
  }

  v182 = v47;
  v181 = a1;
  MEMORY[0x1EEE9AC00](v72);
  v178 = v1;
  v76 = sub_1B755E350(sub_1B76929CC, &v176, v75);
  v195 = v71;
  sub_1B75286C8(v76, v71);

  v206 = v41;
  v77 = *(v1 + *(v41 + 64));
  v196 = v1;
  sub_1B76929E8(v1, v207, type metadata accessor for RawECommerceOrderContent);
  v78 = *(v77 + 16);

  v232 = v31;
  if (v78)
  {
    v79 = v77 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v80 = *(v13 + 72);
    v81 = -1;
    while (1)
    {
      sub_1B76929E8(v79, v22, type metadata accessor for RawOrderReturn);
      if (v22[8] > 3u)
      {
        break;
      }

      sub_1B768D6C4(v22, type metadata accessor for RawOrderReturn);
      --v81;
      v79 += v80;
      if (v78 + v81 == -1)
      {
        v82 = 1;
        v83 = v78;
        v31 = v232;
        goto LABEL_11;
      }
    }

    v85 = v22;
    v84 = v224;
    sub_1B768D65C(v85, v224, type metadata accessor for RawOrderReturn);
    v82 = 0;
    v83 = -v81;
    v31 = v232;
  }

  else
  {
    v82 = 1;
    v83 = 0;
LABEL_11:
    v84 = v224;
  }

  v86 = v209;
  v215 = *(v13 + 56);
  v216 = v13 + 56;
  v215(v84, v82, 1, v209);
  v87 = v231;
  sub_1B722376C(v84, v231, &qword_1EB99AE30);
  v88 = *(v13 + 48);
  v214 = v13 + 48;
  v213 = v88;
  v89 = v88(v87, 1, v86);
  v208 = v77;
  if (v89 == 1)
  {
    v90 = v222;
    v224 = *(v228 + 56);
    (v224)(v222, 1, 1, v31);
    v91 = *(v228 + 48);
    v92 = (v228 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v93 = v196;
  }

  else
  {
    v94 = v87;
    v95 = v233;
    sub_1B768D65C(v94, v233, type metadata accessor for RawOrderReturn);
    v96 = v221;
    sub_1B7205588(v95 + *(v86 + 40), v221, &qword_1EB98EBD0);
    v91 = *(v228 + 48);
    v231 = (v228 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v97 = (v91)(v96, 1, v31);
    v93 = v196;
    if (v97 == 1)
    {
      v98 = v196;
      v99 = v222;
      (*(v228 + 16))(v222, v207 + *(v206 + 48), v31);
      v90 = v99;
      v93 = v98;
      if ((v91)(v96, 1, v31) != 1)
      {
        sub_1B7205418(v96, &qword_1EB98EBD0);
      }
    }

    else
    {
      v90 = v222;
      (*(v228 + 32))(v222, v96, v31);
    }

    sub_1B768D6C4(v233, type metadata accessor for RawOrderReturn);
    v224 = *(v228 + 56);
    (v224)(v90, 0, 1, v31);
    v92 = v231;
  }

  v231 = v92;
  v100 = (v91)(v90, 1, v31);
  v233 = v91;
  if (v100 != 1)
  {
    v104 = v228 + 32;
    v221 = *(v228 + 32);
    v222 = (v228 + 32);
    result = (v221)(v220, v90, v31);
    v203 = (v104 - 16);
    v212 = v104 + 24;
    v211 = (v104 - 24);
    v105 = v231;
    v106 = v209;
    for (i = v13; ; v13 = i)
    {
      v107 = v219;
      if (v83 != v78)
      {
        break;
      }

LABEL_31:
      v110 = 1;
      v83 = v78;
LABEL_33:
      v111 = 1;
      v112 = v225;
      v215(v225, v110, 1, v106);
      v113 = v112;
      v114 = v227;
      sub_1B722376C(v113, v227, &qword_1EB99AE30);
      v115 = v213(v114, 1, v106);
      v116 = v220;
      if (v115 != 1)
      {
        v117 = v218;
        sub_1B768D65C(v227, v218, type metadata accessor for RawOrderReturn);
        sub_1B7205588(v117 + *(v106 + 40), v107, &qword_1EB98EBD0);
        v118 = v232;
        v119 = v105;
        v120 = v233;
        if ((v233)(v107, 1, v232) == 1)
        {
          (*v203)(v226, v207 + *(v206 + 48), v118);
          v121 = v120(v107, 1, v118);
          v105 = v119;
          if (v121 != 1)
          {
            sub_1B7205418(v107, &qword_1EB98EBD0);
          }
        }

        else
        {
          (v221)(v226, v107, v118);
          v105 = v119;
        }

        sub_1B768D6C4(v218, type metadata accessor for RawOrderReturn);
        v111 = 0;
        v106 = v209;
      }

      v122 = v226;
      v123 = v111;
      v124 = v232;
      (v224)(v226, v123, 1, v232);
      if ((v233)(v122, 1, v124) == 1)
      {
        sub_1B7205418(v122, &qword_1EB98EBD0);
        v103 = v200;
        (v221)(v200, v116, v124);
        v101 = 0;
        v93 = v196;
        v31 = v124;
        v102 = v202;
        v91 = v233;
        goto LABEL_43;
      }

      v125 = v105;
      v126 = v122;
      v127 = v217;
      v128 = v221;
      (v221)(v217, v126, v124);
      sub_1B719BD38(&qword_1EB98EBD8, MEMORY[0x1E6969530]);
      v129 = sub_1B78007E8();
      v130 = *v211;
      if (v129)
      {
        v130(v116, v124);
        result = v128(v116, v127, v124);
      }

      else
      {
        result = (v130)(v127, v124);
      }

      v105 = v125;
    }

    v108 = v208;
    while (v83 < v78)
    {
      result = sub_1B76929E8(v108 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v83, v18, type metadata accessor for RawOrderReturn);
      v109 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_68;
      }

      if (v18[8] > 3u)
      {
        sub_1B768D65C(v18, v225, type metadata accessor for RawOrderReturn);
        v110 = 0;
        ++v83;
        goto LABEL_33;
      }

      result = sub_1B768D6C4(v18, type metadata accessor for RawOrderReturn);
      ++v83;
      if (v109 == v78)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  sub_1B7205418(v90, &qword_1EB98EBD0);
  v101 = 1;
  v102 = v202;
  v103 = v200;
LABEL_43:
  (v224)(v103, v101, 1, v31);

  sub_1B768D6C4(v207, type metadata accessor for RawECommerceOrderContent);
  v131 = (v91)(v103, 1, v31);
  v132 = v206;
  v133 = v204;
  if (v131 == 1)
  {
    sub_1B7205418(v103, &qword_1EB98EBD0);
    v134 = 1;
    v135 = v228;
  }

  else
  {
    Date.noon.getter(v102);
    v136 = *(v228 + 8);
    v136(v103, v31);
    Date.dayAfter.getter(v133);
    v136(v102, v31);
    v135 = v228;
    v134 = 0;
  }

  v137 = v201;
  v138 = v135 + 56;
  (v224)(v133, v134, 1, v31);
  sub_1B7205588(v93 + *(v132 + 60), v137, &qword_1EB99A4B0);
  v139 = type metadata accessor for RawOrderReturnInfo();
  v140 = (*(*(v139 - 8) + 48))(v137, 1, v139);
  v227 = v138;
  if (v140 == 1)
  {
    v141 = v133;
    v142 = &qword_1EB99A4B0;
    v143 = v137;
LABEL_50:
    sub_1B7205418(v143, v142);
    v146 = 1;
    v147 = v199;
    goto LABEL_53;
  }

  v144 = v137 + *(v139 + 28);
  v145 = v193;
  sub_1B7205588(v144, v193, &qword_1EB98EBD0);
  sub_1B768D6C4(v137, type metadata accessor for RawOrderReturnInfo);
  if ((v91)(v145, 1, v31) == 1)
  {
    v141 = v133;
    v142 = &qword_1EB98EBD0;
    v143 = v145;
    goto LABEL_50;
  }

  Date.noon.getter(v194);
  v225 = *(v228 + 8);
  v226 = (v228 + 8);
  (v225)(v145, v31);
  v148 = v185;
  v149 = v184;
  v150 = v186;
  (*(v185 + 104))(v184, *MEMORY[0x1E6969830], v186);
  v151 = v187;
  sub_1B77FFB18();
  (*(v148 + 8))(v149, v150);
  v152 = v188;
  (*(v188 + 56))(v189, 1, 1, v192);
  v153 = sub_1B77FFCF8();
  (*(*(v153 - 8) + 56))(v191, 1, 1, v153);
  v179 = 1;
  v178 = 0;
  v177 = 1;
  v176 = 0;
  v154 = v190;
  v155 = v194;
  sub_1B77FECD8();
  v156 = v183;
  sub_1B77FFC08();
  result = (v233)(v156, 1, v31);
  if (result == 1)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v141 = v133;
  sub_1B768D6C4(v154, type metadata accessor for Duration);
  (*(v152 + 8))(v151, v192);
  (v225)(v155, v31);
  (*(v228 + 32))(v205, v156, v31);
  v146 = 0;
  v147 = v199;
LABEL_53:
  v157 = v205;
  (v224)(v205, v146, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE38);
  v158 = *(v147 + 72);
  v159 = (*(v147 + 80) + 32) & ~*(v147 + 80);
  v226 = swift_allocObject();
  v160 = &v226[v159];
  sub_1B7205588(v195, &v226[v159], &qword_1EB98EBD0);
  sub_1B7205588(v141, &v160[v158], &qword_1EB98EBD0);
  sub_1B7205588(v157, &v160[2 * v158], &qword_1EB98EBD0);
  v161 = (v228 + 32);
  v162 = MEMORY[0x1E69E7CC0];
  v163 = 3;
  v225 = v160;
  v164 = v223;
  do
  {
    v165 = v229;
    sub_1B7205588(v160, v229, &qword_1EB98EBD0);
    sub_1B722376C(v165, v164, &qword_1EB98EBD0);
    if ((v233)(v164, 1, v31) == 1)
    {
      sub_1B7205418(v164, &qword_1EB98EBD0);
    }

    else
    {
      v166 = *v161;
      (*v161)(v230, v164, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = sub_1B723F170(0, *(v162 + 2) + 1, 1, v162);
      }

      v168 = *(v162 + 2);
      v167 = *(v162 + 3);
      v169 = v228;
      if (v168 >= v167 >> 1)
      {
        v170 = sub_1B723F170(v167 > 1, v168 + 1, 1, v162);
        v169 = v228;
        v162 = v170;
      }

      *(v162 + 2) = v168 + 1;
      v31 = v232;
      v166(&v162[((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v168], v230, v232);
      v164 = v223;
    }

    v160 += v158;
    --v163;
  }

  while (v163);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v171 = v198;
  sub_1B75286C8(v162, v198);

  v172 = v182;
  sub_1B7205588(v171, v182, &qword_1EB98EBD0);
  v173 = v233;
  if ((v233)(v172, 1, v31) == 1)
  {
    v174 = v202;
    Date.noon.getter(v202);
    v175 = v181;
    Date.dayAfter.getter(v181);
    (*(v228 + 8))(v174, v31);
    sub_1B7205418(v171, &qword_1EB98EBD0);
    sub_1B7205418(v205, &qword_1EB98EBD0);
    sub_1B7205418(v204, &qword_1EB98EBD0);
    sub_1B7205418(v195, &qword_1EB98EBD0);
    if (v173(v172, 1, v31) != 1)
    {
      sub_1B7205418(v172, &qword_1EB98EBD0);
    }
  }

  else
  {
    sub_1B7205418(v171, &qword_1EB98EBD0);
    sub_1B7205418(v205, &qword_1EB98EBD0);
    sub_1B7205418(v204, &qword_1EB98EBD0);
    sub_1B7205418(v195, &qword_1EB98EBD0);
    v175 = v181;
    (*v161)(v181, v172, v31);
  }

  return (v224)(v175, 0, 1, v31);
}

_WORD *RawECommerceOrderContent.DecodingConfiguration.init(schemaVersion:)@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t RawECommerceOrderContent.init(from:configuration:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v159 = a1;
  v137 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v135 = v130 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v134 = v130 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *&v139 = v130 - v9;
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v136 = v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  *&v140 = v130 - v14;
  v15 = sub_1B77FF988();
  v149 = *(v15 - 8);
  v150 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  *&v141 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v142 = v130 - v18;
  v145 = type metadata accessor for RawMerchant();
  MEMORY[0x1EEE9AC00](v145);
  v146 = v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE40);
  v151 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v197 = v130 - v20;
  v21 = type metadata accessor for RawECommerceOrderContent(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a2;
  v133 = *(a2 + 2);
  v143 = v22[8];
  v24[v143] = 2;
  v26 = &v24[v22[14]];
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  v158 = v26;
  *v26 = 0u;
  v27 = v22[15];
  v28 = type metadata accessor for RawOrderReturnInfo();
  v29 = *(*(v28 - 8) + 56);
  v157 = v27;
  v138 = v28;
  v29(&v24[v27], 1, 1);
  v30 = &v24[v21[18]];
  *v30 = xmmword_1B78301C0;
  *(v30 + 1) = 0u;
  *(v30 + 2) = 0u;
  *(v30 + 3) = 0u;
  v156 = v30;
  *(v30 + 4) = 0u;
  v31 = &v24[v21[22]];
  *(v31 + 6) = 0;
  *(v31 + 1) = 0u;
  *(v31 + 2) = 0u;
  v153 = v31;
  *v31 = 0u;
  v32 = v21[23];
  v33 = type metadata accessor for RawOrderProvider();
  v34 = *(*(v33 - 8) + 56);
  v154 = v32;
  v34(&v24[v32], 1, 1, v33);
  v35 = v21[24];
  v147 = v11;
  v148 = v10;
  v38 = *(v11 + 56);
  v36 = v11 + 56;
  v37 = v38;
  v155 = v35;
  v38(&v24[v35], 1, 1, v10);
  v160 = v21;
  v161 = v24;
  v39 = v21[26];
  v40 = v159;
  *&v24[v39] = v25;
  v41 = v39;
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_1B7692FAC();
  v42 = v152;
  sub_1B78023C8();
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    LODWORD(v152) = 0;
    v47 = 0;

    LODWORD(v159) = 0;
    LODWORD(v151) = 0;
    v48 = 0;
    v49 = v161;
    LODWORD(v197) = 0;
    if (v152)
    {
      (*(v149 + 8))(&v161[v160[12]], v150);
    }

LABEL_13:
    v65 = *(v158 + 3);
    v194 = *(v158 + 2);
    v195 = v65;
    v196 = *(v158 + 4);
    v66 = *(v158 + 1);
    v192 = *v158;
    v193 = v66;
    sub_1B7205418(&v192, &qword_1EB9982A8);
    sub_1B7205418(v49 + v157, &qword_1EB99A4B0);
    if (v47)
    {
    }

    if (v197)
    {
    }

    v67 = *(v156 + 3);
    v189 = *(v156 + 2);
    v190 = v67;
    v191 = *(v156 + 4);
    v68 = *(v156 + 1);
    v187 = *v156;
    v188 = v68;
    sub_1B7205418(&v187, &qword_1EB99AE50);
    if (v48)
    {

      if (!v151)
      {
        goto LABEL_19;
      }
    }

    else if (!v151)
    {
LABEL_19:
      if (!v159)
      {
LABEL_21:
        sub_1B74C69A8(*v153, v153[1], v153[2], v153[3], v153[4]);
        sub_1B7205418(v49 + v154, &qword_1EB99A4B8);
        return sub_1B7205418(v49 + v155, &unk_1EB994C70);
      }

LABEL_20:

      goto LABEL_21;
    }

    if (!v159)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v43 = v143;
  v132 = v33;
  v152 = v37;
  LOBYTE(v192) = 0;
  sub_1B719BD38(&qword_1EB99AE58, type metadata accessor for RawMerchant);
  v44 = v146;
  v45 = v144;
  v46 = v197;
  sub_1B7801E48();
  v130[1] = v36;
  v131 = v41;
  v52 = v161;
  sub_1B768D65C(v44, v161, type metadata accessor for RawMerchant);
  LOBYTE(v192) = 1;
  v53 = sub_1B7801DF8();
  v54 = v160;
  v55 = (v52 + v160[5]);
  *v55 = v53;
  v55[1] = v56;
  LOBYTE(v192) = 2;
  v146 = 0;
  v57 = sub_1B7801DF8();
  v58 = (v52 + v54[6]);
  *v58 = v57;
  v58[1] = v59;
  LOBYTE(v192) = 3;
  v60 = sub_1B7801D78();
  v61 = (v52 + v54[7]);
  *v61 = v60;
  v61[1] = v62;
  v145 = v62;
  LOBYTE(v187) = 4;
  sub_1B7693000();
  sub_1B7801DB8();
  *(v52 + v43) = v192;
  LOBYTE(v187) = 5;
  sub_1B7693054();
  sub_1B7801E48();
  v70 = v160;
  *(v52 + v160[9]) = v192;
  LOBYTE(v192) = 6;
  v71 = sub_1B7801D78();
  v73 = v72;
  v74 = (v52 + v70[10]);
  *v74 = v71;
  v74[1] = v72;
  LOBYTE(v192) = 7;
  v75 = sub_1B719BD38(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v76 = v142;
  v77 = v150;
  v143 = v75;
  sub_1B7801E48();
  v130[0] = v73;
  v78 = *(v149 + 32);
  v78(&v161[v70[11]], v76, v77);
  LOBYTE(v192) = 8;
  v79 = v141;
  sub_1B7801E48();
  v78(&v161[v160[12]], v79, v150);
  LOBYTE(v192) = 9;
  sub_1B719BD38(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
  v80 = v45;
  v81 = v46;
  sub_1B7801E48();
  v82 = v161;
  v83 = *(v147 + 32);
  v83(&v161[v160[13]], v140, v148);
  v84 = *(v82 + v131);
  v186 = 10;
  v185 = v84;
  v85 = sub_1B7801EB8();
  if (v85)
  {
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v192 = 0u;
  }

  else
  {
    sub_1B7693204();
    sub_1B7801D58();
  }

  v182 = v194;
  v183 = v195;
  v184 = v196;
  v180 = v192;
  v181 = v193;
  v86 = v158;
  v87 = *(v158 + 3);
  v189 = *(v158 + 2);
  v190 = v87;
  v191 = *(v158 + 4);
  v88 = *(v158 + 1);
  v187 = *v158;
  v188 = v88;
  sub_1B7205418(&v187, &qword_1EB9982A8);
  v89 = v183;
  *(v86 + 2) = v182;
  *(v86 + 3) = v89;
  *(v86 + 4) = v184;
  v90 = v181;
  *v86 = v180;
  *(v86 + 1) = v90;
  LOBYTE(v175) = 11;
  sub_1B719BD38(&qword_1EB99AE70, type metadata accessor for RawOrderReturnInfo);
  sub_1B7801DB8();
  sub_1B7213740(v139, &v161[v157], &qword_1EB99A4B0);
  type metadata accessor for RawOrderReturn.DecodingConfiguration();
  v91 = swift_allocObject();
  v92 = MEMORY[0x1E69E7CD0];
  *(v91 + 16) = MEMORY[0x1E69E7CD0];
  v143 = v91;
  v93 = sub_1B768EC24(12, v91, &qword_1EB99AEE8, &unk_1B7857968, sub_1B7696130);
  v94 = MEMORY[0x1E69E7CC0];
  if (v93)
  {
    v94 = v93;
  }

  *&v161[v160[16]] = v94;
  type metadata accessor for RawOrderFulfillment.DecodingConfiguration();
  v95 = swift_allocObject();
  *(v95 + 16) = v92;
  v142 = v95;
  v96 = sub_1B768EC24(13, v95, &qword_1EB99AF00, &unk_1B7857970, sub_1B769607C);
  v97 = MEMORY[0x1E69E7CC0];
  if (v96)
  {
    v97 = v96;
  }

  *&v161[v160[17]] = v97;
  v174 = 14;
  sub_1B76930A8();
  sub_1B7801DB8();
  v170 = v177;
  v171 = v178;
  v168 = v175;
  v169 = v176;
  v98 = v156;
  v99 = *(v156 + 2);
  v100 = *(v156 + 3);
  v101 = *v156;
  v173[1] = *(v156 + 1);
  v173[2] = v99;
  v102 = *(v156 + 4);
  v173[3] = v100;
  v173[4] = v102;
  v172 = v179;
  v173[0] = v101;
  sub_1B7205418(v173, &qword_1EB99AE50);
  v103 = v171;
  *(v98 + 2) = v170;
  *(v98 + 3) = v103;
  *(v98 + 4) = v172;
  v104 = v169;
  *v98 = v168;
  *(v98 + 1) = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30);
  LOBYTE(v162) = 15;
  sub_1B7457370(&qword_1EB994F38, sub_1B7457208);
  sub_1B7801DB8();
  v105 = v164;
  if (!v164)
  {
    v105 = MEMORY[0x1E69E7CC0];
  }

  *&v161[v160[19]] = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE80);
  LOBYTE(v162) = 18;
  sub_1B76930FC();
  sub_1B7801DB8();
  v106 = v164;
  if (!v164)
  {
    v106 = MEMORY[0x1E69E7CC0];
  }

  *&v161[v160[20]] = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  LOBYTE(v162) = 19;
  sub_1B721523C(&qword_1EDAF64A8);
  sub_1B7801DB8();
  v107 = v164;
  if (!v164)
  {
    v107 = MEMORY[0x1E69E7CC0];
  }

  *&v161[v160[21]] = v107;
  LOBYTE(v162) = 20;
  sub_1B76931B0();
  sub_1B7801DB8();
  v108 = v167;
  v109 = v153;
  v110 = *v153;
  v111 = v153[1];
  v112 = v153[2];
  v113 = v153[3];
  v114 = v153[4];
  v140 = v164;
  v141 = v166;
  v139 = v165;
  sub_1B74C69A8(v110, v111, v112, v113, v114);
  v115 = v139;
  *v109 = v140;
  *(v109 + 1) = v115;
  *(v109 + 2) = v141;
  v109[6] = v108;
  LOBYTE(v164) = 21;
  sub_1B719BD38(&qword_1EB99AEA0, type metadata accessor for RawOrderProvider);
  sub_1B7801DB8();
  sub_1B7213740(v134, &v161[v154], &qword_1EB99A4B8);
  LOBYTE(v164) = 22;
  sub_1B7801DB8();
  *&v141 = &v161[v160[25]];
  if ((*(v147 + 48))(v135, 1, v148) != 1)
  {
    v83(v136, v135, v148);
    v120 = sub_1B77FF4C8();
    if (v121)
    {
      *&v164 = v120;
      *(&v164 + 1) = v121;
      v162 = 0x7370747468;
      v163 = 0xE500000000000000;
      sub_1B7205210();
      v122 = sub_1B78017F8();

      if ((v122 == 0) | v133 & 1)
      {
        goto LABEL_45;
      }
    }

    else if (v133)
    {
LABEL_45:
      v123 = v161;
      v124 = v155;
      sub_1B7205418(&v161[v155], &unk_1EB994C70);
      v125 = v148;
      (*(v147 + 16))(v123 + v124, v136, v148);
      v152(v123 + v124, 0, 1, v125);
      LOBYTE(v164) = 23;
      v126 = sub_1B7801DF8();
      v128 = v127;
      if (sub_1B78009A8() >= 16)
      {

        (*(v147 + 8))(v136, v148);
        (*(v151 + 8))(v81, v80);
        v129 = v141;
        *v141 = v126;
        *(v129 + 8) = v128;
        goto LABEL_42;
      }

      LOBYTE(v164) = 23;
      sub_1B7801B18();
      swift_allocError();
      sub_1B728216C(&qword_1EB99AEA8, &qword_1EB99AE40);
      goto LABEL_48;
    }

    LOBYTE(v164) = 22;
    sub_1B7801B18();
    swift_allocError();
    sub_1B728216C(&qword_1EB99AEA8, &qword_1EB99AE40);
LABEL_48:
    sub_1B7801AD8();
    swift_willThrow();

    (*(v147 + 8))(v136, v148);
    (*(v151 + 8))(v81, v80);
    LODWORD(v152) = 1;
    LODWORD(v197) = 1;
    v63 = v146;
    __swift_destroy_boxed_opaque_existential_1(v159);
    sub_1B768D6C4(v161, type metadata accessor for RawMerchant);
    if (!v63)
    {
    }

    LODWORD(v146) = 1;
    v47 = v197;
    LODWORD(v151) = 1;
    LODWORD(v159) = 1;
    v64 = v160;
    v49 = v161;

    LODWORD(v197) = 1;
    v50 = v150;
    v51 = *(v149 + 8);
    v51(v49 + v64[11], v150);
    if (v152)
    {
      v51(v49 + v64[12], v50);
    }

    v48 = v146;
    (*(v147 + 8))(v49 + v64[13], v148);
    goto LABEL_13;
  }

  (*(v151 + 8))(v81, v80);

  sub_1B7205418(v135, &unk_1EB994C70);
  v116 = v161;
  v117 = v155;
  sub_1B7205418(&v161[v155], &unk_1EB994C70);
  v152(v116 + v117, 1, 1, v148);
  v118 = v141;
  *v141 = 0;
  *(v118 + 8) = 0;
LABEL_42:
  v119 = v161;
  sub_1B76929E8(v161, v137, type metadata accessor for RawECommerceOrderContent);
  __swift_destroy_boxed_opaque_existential_1(v159);
  return sub_1B768D6C4(v119, type metadata accessor for RawECommerceOrderContent);
}

uint64_t RawECommerceOrderContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AEB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7692FAC();
  sub_1B78023F8();
  LOBYTE(v56[0]) = 0;
  type metadata accessor for RawMerchant();
  sub_1B719BD38(&qword_1EB99AEC0, type metadata accessor for RawMerchant);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for RawECommerceOrderContent(0);
    LOBYTE(v56[0]) = 1;
    sub_1B7801F78();
    LOBYTE(v56[0]) = 2;
    sub_1B7801F78();
    LOBYTE(v56[0]) = 3;
    sub_1B7801EF8();
    LOBYTE(v56[0]) = *(v3 + v9[8]);
    LOBYTE(v51) = 4;
    sub_1B7693258();
    sub_1B7801F38();
    LOBYTE(v56[0]) = *(v3 + v9[9]);
    LOBYTE(v51) = 5;
    sub_1B76932AC();
    sub_1B7801FC8();
    LOBYTE(v56[0]) = 6;
    sub_1B7801EF8();
    v32 = v9[11];
    LOBYTE(v56[0]) = 7;
    v10 = sub_1B77FF988();
    sub_1B719BD38(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    v32 = v10;
    sub_1B7801FC8();
    LOBYTE(v56[0]) = 8;
    sub_1B7801FC8();
    v64 = 9;
    v11 = sub_1B77FF4F8();
    v32 = sub_1B719BD38(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801FC8();
    v12 = (v3 + v9[14]);
    v13 = v12[1];
    v14 = v12[3];
    v57 = v12[2];
    v58 = v14;
    v15 = v12[3];
    v59 = v12[4];
    v16 = v12[1];
    v56[0] = *v12;
    v56[1] = v16;
    v31[0] = v9[26];
    v31[1] = v11;
    v17 = *(v3 + v31[0]);
    v53 = v57;
    v54 = v15;
    v55 = v12[4];
    v51 = v56[0];
    v52 = v13;
    v63 = 10;
    v62 = v17;
    sub_1B7205588(v56, v50, &qword_1EB9982A8);
    sub_1B7693300();
    sub_1B7801EE8();
    v50[2] = v53;
    v50[3] = v54;
    v50[4] = v55;
    v50[0] = v51;
    v50[1] = v52;
    sub_1B7205418(v50, &qword_1EB9982A8);
    LOBYTE(v46[0]) = 11;
    type metadata accessor for RawOrderReturnInfo();
    sub_1B719BD38(&qword_1EB99AEE0, type metadata accessor for RawOrderReturnInfo);
    sub_1B7801F38();
    if (*(*(v3 + v9[16]) + 16))
    {
      *&v46[0] = *(v3 + v9[16]);
      LOBYTE(v41) = 12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AEE8);
      sub_1B7693354();
      sub_1B7801FC8();
    }

    if (*(*(v3 + v9[17]) + 16))
    {
      *&v46[0] = *(v3 + v9[17]);
      LOBYTE(v41) = 13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AF00);
      sub_1B7693408();
      sub_1B7801FC8();
    }

    v19 = (v3 + v9[18]);
    v20 = v19[1];
    v21 = v19[3];
    v47 = v19[2];
    v48 = v21;
    v22 = v19[3];
    v49 = v19[4];
    v23 = v19[1];
    v46[0] = *v19;
    v46[1] = v23;
    v43 = v47;
    v44 = v22;
    v45 = v19[4];
    v41 = v46[0];
    v42 = v20;
    v61 = 14;
    sub_1B7205588(v46, v40, &qword_1EB99AE50);
    sub_1B76934BC();
    sub_1B7801F38();
    v40[2] = v43;
    v40[3] = v44;
    v40[4] = v45;
    v40[0] = v41;
    v40[1] = v42;
    sub_1B7205418(v40, &qword_1EB99AE50);
    if (*(*(v3 + v9[19]) + 16))
    {
      v33 = *(v3 + v9[19]);
      v60 = 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30);
      sub_1B7457370(&qword_1EB994F58, sub_1B74573E8);
      sub_1B7801FC8();
    }

    LOBYTE(v33) = 17;
    sub_1B7693510();
    sub_1B7801FC8();
    if (*(*(v3 + v9[20]) + 16))
    {
      v33 = *(v3 + v9[20]);
      v60 = 18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE80);
      sub_1B7693564();
      sub_1B7801FC8();
    }

    if (*(*(v3 + v9[21]) + 16))
    {
      v33 = *(v3 + v9[21]);
      v60 = 19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
      sub_1B721523C(&qword_1EB98F960);
      sub_1B7801FC8();
    }

    v24 = (v3 + v9[22]);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[4];
    v29 = v24[5];
    v30 = v24[6];
    v33 = *v24;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v60 = 20;
    sub_1B74C6ADC(v33, v25, v26, v27, v28);
    sub_1B7693618();
    sub_1B7801F38();
    sub_1B74C69A8(v33, v34, v35, v36, v37);
    LOBYTE(v33) = 21;
    type metadata accessor for RawOrderProvider();
    sub_1B719BD38(&qword_1EB99AF40, type metadata accessor for RawOrderProvider);
    sub_1B7801F38();
    LOBYTE(v33) = 22;
    sub_1B7801F38();
    LOBYTE(v33) = 23;
    sub_1B7801EF8();
    LOWORD(v33) = *(v3 + v31[0]);
    v60 = 24;
    sub_1B769366C();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

FinanceKit::RawOrderStatus_optional __swiftcall RawOrderStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderStatus.rawValue.getter()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x656C6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852141679;
  }
}

uint64_t sub_1B768D1D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v3 = 0x656C6C65636E6163;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1852141679;
  }

  if (v2)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x6574656C706D6F63;
  if (*a2 != 1)
  {
    v6 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1852141679;
  }

  if (*a2)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();
  }

  return v9 & 1;
}

uint64_t sub_1B768D2C4()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B768D368()
{
  sub_1B7800798();
}

uint64_t sub_1B768D3F8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B768D4A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v4 = 0x656C6C65636E6163;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1852141679;
  }

  if (!v5)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t RawOrderError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t sub_1B768D65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B768D6C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RawECommerceOrderContent.orderTypeIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 20));

  return v1;
}

uint64_t RawECommerceOrderContent.orderTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawECommerceOrderContent(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawECommerceOrderContent.orderIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 24));

  return v1;
}

uint64_t RawECommerceOrderContent.orderIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawECommerceOrderContent(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawECommerceOrderContent.orderNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 28));

  return v1;
}

uint64_t RawECommerceOrderContent.orderNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawECommerceOrderContent(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawECommerceOrderContent.changeNotifications.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawECommerceOrderContent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RawECommerceOrderContent.changeNotifications.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawECommerceOrderContent(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t RawECommerceOrderContent.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawECommerceOrderContent(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t RawECommerceOrderContent.status.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawECommerceOrderContent(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t RawECommerceOrderContent.statusDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 40));

  return v1;
}

uint64_t RawECommerceOrderContent.statusDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawECommerceOrderContent(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawECommerceOrderContent.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 44);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawECommerceOrderContent.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 44);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawECommerceOrderContent.updatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawECommerceOrderContent.updatedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawECommerceOrderContent.orderManagementURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 52);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawECommerceOrderContent.orderManagementURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 52);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawECommerceOrderContent.payment.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 56));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_1B7205588(&v11, &v10, &qword_1EB9982A8);
}

__n128 RawECommerceOrderContent.payment.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 56));
  v4 = v3[4];
  v8[3] = v3[3];
  v8[4] = v4;
  v5 = v3[2];
  v8[1] = v3[1];
  v8[2] = v5;
  v8[0] = *v3;
  sub_1B7205418(v8, &qword_1EB9982A8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t RawECommerceOrderContent.returns.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);
}

uint64_t RawECommerceOrderContent.fulfillments.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);
}

uint64_t RawECommerceOrderContent.customer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 72));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_1B7205588(&v11, &v10, &qword_1EB99AE50);
}

__n128 RawECommerceOrderContent.customer.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 72));
  v4 = v3[4];
  v8[3] = v3[3];
  v8[4] = v4;
  v5 = v3[2];
  v8[1] = v3[1];
  v8[2] = v5;
  v8[0] = *v3;
  sub_1B7205418(v8, &qword_1EB99AE50);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t RawECommerceOrderContent.lineItems.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);
}

uint64_t RawECommerceOrderContent.lineItems.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 76);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RawECommerceOrderContent.associatedApplications.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);
}

uint64_t RawECommerceOrderContent.associatedApplications.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 80);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RawECommerceOrderContent.associatedApplicationIdentifiers.getter()
{
  type metadata accessor for RawECommerceOrderContent(0);
}

uint64_t RawECommerceOrderContent.associatedApplicationIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawECommerceOrderContent(0) + 84);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RawECommerceOrderContent.barcode.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 88));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  return sub_1B74C6ADC(v4, v5, v6, v7, v8);
}

__n128 RawECommerceOrderContent.barcode.setter(uint64_t a1)
{
  v7 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 88));
  sub_1B74C69A8(*v4, v4[1], v4[2], v4[3], v4[4]);
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  result = v7;
  *(v4 + 2) = v7;
  v4[6] = v3;
  return result;
}

uint64_t RawECommerceOrderContent.authenticationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 100));

  return v1;
}

uint64_t RawECommerceOrderContent.schemaVersion.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RawECommerceOrderContent(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t RawECommerceOrderContent.schemaVersion.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawECommerceOrderContent(0);
  *(v1 + *(result + 104)) = v2;
  return result;
}

uint64_t RawECommerceOrderContent.init(orderTypeIdentifier:orderIdentifier:status:merchant:orderManagementURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = *a5;
  v13 = type metadata accessor for RawECommerceOrderContent(0);
  v14 = (a8 + v13[7]);
  *v14 = 0;
  v14[1] = 0;
  v15 = v13[8];
  *(a8 + v15) = 2;
  v16 = (a8 + v13[10]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a8 + v13[14]);
  v17[3] = 0u;
  v17[4] = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  v18 = v13[15];
  v19 = type metadata accessor for RawOrderReturnInfo();
  (*(*(v19 - 8) + 56))(a8 + v18, 1, 1, v19);
  v20 = (a8 + v13[18]);
  *v20 = xmmword_1B78301C0;
  v20[1] = 0u;
  v20[2] = 0u;
  v20[3] = 0u;
  v20[4] = 0u;
  v21 = a8 + v13[22];
  *(v21 + 48) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 0u;
  v22 = v13[23];
  v23 = type metadata accessor for RawOrderProvider();
  (*(*(v23 - 8) + 56))(a8 + v22, 1, 1, v23);
  v24 = v13[24];
  v25 = sub_1B77FF4F8();
  v26 = *(v25 - 8);
  (*(v26 + 56))(a8 + v24, 1, 1, v25);
  v27 = (a8 + v13[25]);
  *v27 = 0;
  v27[1] = 0;
  *(a8 + v13[26]) = 1;
  v28 = (a8 + v13[5]);
  *v28 = a1;
  v28[1] = a2;
  v29 = (a8 + v13[6]);
  *v29 = a3;
  v29[1] = a4;
  *(a8 + v13[9]) = v35;
  sub_1B76929E8(a6, a8, type metadata accessor for RawMerchant);
  v30 = MEMORY[0x1E69E7CC0];
  *(a8 + v13[19]) = MEMORY[0x1E69E7CC0];
  *(a8 + v13[17]) = v30;
  *(a8 + v13[16]) = v30;
  (*(v26 + 16))(a8 + v13[13], a7, v25);
  v31 = v13[11];
  sub_1B77FF938();
  v32 = v13[12];
  v33 = sub_1B77FF988();
  (*(*(v33 - 8) + 16))(a8 + v32, a8 + v31, v33);
  *(a8 + v13[20]) = v30;
  (*(v26 + 8))(a7, v25);
  result = sub_1B768D6C4(a6, type metadata accessor for RawMerchant);
  *(a8 + v13[21]) = v30;
  *(a8 + v15) = 0;
  return result;
}

uint64_t sub_1B768EC24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE40);
  v8 = sub_1B7801EB8();
  if (v5)
  {

    return 0;
  }

  else if (v8)
  {
    return 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    a5(v10);
    sub_1B7801D58();
    return v11;
  }
}

uint64_t sub_1B768ED08(char a1)
{
  result = 0x746E61686372656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x656449726564726FLL;
      break;
    case 3:
      result = 0x6D754E726564726FLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x737574617473;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      v3 = 1634038371;
      goto LABEL_23;
    case 8:
      v3 = 1633972341;
LABEL_23:
      result = v3 | 0x4164657400000000;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x746E656D796170;
      break;
    case 11:
      result = 0x6E496E7275746572;
      break;
    case 12:
      result = 0x736E7275746572;
      break;
    case 13:
      result = 0x6D6C6C69666C7566;
      break;
    case 14:
      result = 0x72656D6F74737563;
      break;
    case 15:
      result = 0x6D657449656E696CLL;
      break;
    case 16:
      result = 0x6976726553626577;
      break;
    case 17:
      result = 0x707954726564726FLL;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    case 20:
      result = 0x65646F63726162;
      break;
    case 21:
      result = 0x6F7250726564726FLL;
      break;
    case 22:
      result = 0x6976726553626577;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x6556616D65686373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B768EFEC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1B768ED08(*a1);
  v5 = v4;
  if (v3 == sub_1B768ED08(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B768F074()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B768ED08(v1);
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B768F0D8()
{
  sub_1B768ED08(*v0);
  sub_1B7800798();
}

uint64_t sub_1B768F12C()
{
  v1 = *v0;
  sub_1B78022F8();
  sub_1B768ED08(v1);
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B768F18C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B76950C8();
  *a1 = result;
  return result;
}

uint64_t sub_1B768F1BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B768ED08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B768F1F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B76950C8();
  *a1 = result;
  return result;
}

uint64_t sub_1B768F224(uint64_t a1)
{
  v2 = sub_1B7692FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B768F260(uint64_t a1)
{
  v2 = sub_1B7692FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawECommerceOrderContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for RawECommerceOrderContent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-4] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AE40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-4] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7692FAC();
  sub_1B78023C8();
  if (!v2)
  {
    LOBYTE(v16) = 24;
    sub_1B7639C54();
    sub_1B7801E48();
    v11 = v15[0];
    if (v15[0] <= 1)
    {
      LOBYTE(v15[0]) = 17;
      sub_1B7639CA8();
      sub_1B7801E48();
      sub_1B719B06C(a1, v15);
      v16 = v11;
      v17 = 0;
      RawECommerceOrderContent.init(from:configuration:)(v15, &v16, v6);
      (*(v8 + 8))(v10, v7);
      sub_1B768D65C(v6, v14, type metadata accessor for RawECommerceOrderContent);
    }

    else
    {
      sub_1B7639CFC();
      swift_allocError();
      *v12 = v11;
      swift_willThrow();
      (*(v8 + 8))(v10, v7);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B768F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 2);
  v5 = *a2;
  v6 = v3;
  return RawECommerceOrderContent.init(from:configuration:)(a1, &v5, a3);
}

uint64_t RawECommerceOrderContent.init(order:orderContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v190 = a1;
  v5 = type metadata accessor for RawOrderReturn();
  v196 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v195 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v184 = &v176 - v8;
  v176 = type metadata accessor for RawOrderFulfillment();
  v9 = *(v176 - 8);
  v10 = MEMORY[0x1EEE9AC00](v176);
  *&v199 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v189 = &v176 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v202 = &v176 - v17;
  v18 = type metadata accessor for RawOrderApplication();
  v197 = *(v18 - 8);
  *&v198 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RawECommerceOrderContent(0);
  v22 = v21[8];
  *(a3 + v22) = 2;
  v23 = (a3 + v21[14]);
  v23[3] = 0u;
  v23[4] = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v179 = v23;
  *v23 = 0u;
  v24 = v21[15];
  v25 = type metadata accessor for RawOrderReturnInfo();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v182 = v25;
  v183 = v24;
  v180 = v26 + 56;
  v181 = v27;
  (v27)(a3 + v24, 1, 1);
  v28 = (a3 + v21[18]);
  *v28 = xmmword_1B78301C0;
  v28[1] = 0u;
  v28[2] = 0u;
  v28[3] = 0u;
  v28[4] = 0u;
  v29 = a3 + v21[22];
  *(v29 + 48) = 0;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  v185 = v29;
  *v29 = 0u;
  v30 = v21[23];
  v31 = type metadata accessor for RawOrderProvider();
  (*(*(v31 - 8) + 56))(a3 + v30, 1, 1, v31);
  v191 = v21;
  v32 = v21[24];
  v33 = sub_1B77FF4F8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v192 = a3;
  v177 = v32;
  v204 = v35;
  v205 = v33;
  v203 = v34 + 56;
  (v35)(a3 + v32, 1, 1);
  v36 = [a2 associatedApplicationIdentifiers];
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v36;
    v40 = sub_1B7800C38();

    v37 = v38;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  *(v192 + v191[21]) = v40;
  v41 = ManagedECommerceOrderContent.associatedApplications.getter();
  v42 = v41;
  if (v41 >> 62)
  {
    v43 = sub_1B7801958();
  }

  else
  {
    v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v178 = v16;
  *&v200 = v9;
  v187 = v28;
  v188 = a2;
  v186 = v22;
  if (v43)
  {
    *&v206 = v37;
    *&v201 = v43;
    result = sub_1B71FE738(0, v43 & ~(v43 >> 63), 0);
    if ((v201 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_84;
    }

    v45 = 0;
    v46 = v206;
    v193 = v42 & 0xC000000000000001;
    v194 = v42;
    v47 = v202;
    do
    {
      if (v193)
      {
        v48 = MEMORY[0x1B8CA5DC0](v45, v42);
      }

      else
      {
        v48 = *(v42 + 8 * v45 + 32);
      }

      v49 = v48;
      v50 = [v49 storeIdentifier];
      v51 = [v49 launchURL];
      if (v51)
      {
        v52 = v51;
        sub_1B77FF478();

        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v204(v47, v53, 1, v205);
      v54 = [v49 customProductPageIdentifier];
      if (v54)
      {
        v55 = v54;
        v56 = sub_1B7800868();
        v58 = v57;
      }

      else
      {
        v56 = 0;
        v58 = 0;
      }

      v59 = v198;
      v60 = *(v198 + 20);
      v204(&v20[v60], 1, 1, v205);
      v61 = &v20[*(v59 + 24)];
      *v20 = v50;
      v62 = &v20[v60];
      v47 = v202;
      sub_1B7213740(v202, v62, &unk_1EB994C70);

      *v61 = v56;
      v61[1] = v58;
      *&v206 = v46;
      v64 = *(v46 + 16);
      v63 = *(v46 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1B71FE738(v63 > 1, v64 + 1, 1);
        v46 = v206;
      }

      ++v45;
      *(v46 + 16) = v64 + 1;
      sub_1B768D65C(v20, v46 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v64, type metadata accessor for RawOrderApplication);
      v42 = v194;
    }

    while (v201 != v45);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  *(v192 + v191[20]) = v46;
  v65 = [v190 authenticationToken];
  v66 = v189;
  if (v65)
  {
    v67 = v65;
    v68 = sub_1B7800868();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = v188;
  v72 = (v192 + v191[25]);
  *v72 = v68;
  v72[1] = v70;
  v73 = [v71 barcode];
  if (v73)
  {
    v74 = v73;
    ManagedOrderBarcode.rawOrderBarcode.getter(&v206);

    v75 = *(&v206 + 1);
    v202 = v206;
    v76 = v207;
    v77 = *(&v207 + 1);
    v79 = *(&v208 + 1);
    v78 = v208;
    v80 = v209;
  }

  else
  {
    v202 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
  }

  v81 = v185;
  sub_1B74C69A8(*v185, v185[1], v185[2], v185[3], v185[4]);
  *v81 = v202;
  v81[1] = v75;
  v81[2] = v76;
  v81[3] = v77;
  v81[4] = v78;
  v81[5] = v79;
  v81[6] = v80;
  ManagedECommerceOrderContent.changeNotifications.getter(v217);
  *(v192 + v186) = v217[0];
  v82 = [v71 createdDate];
  sub_1B77FF928();

  v83 = v71;
  RawOrderCustomer.init(_:)(v83, v215);
  v84 = v187;
  v85 = v187[3];
  v216[2] = v187[2];
  v216[3] = v85;
  v216[4] = v187[4];
  v86 = v187[1];
  v216[0] = *v187;
  v216[1] = v86;
  sub_1B7205418(v216, &qword_1EB99AE50);
  v87 = v215[3];
  v84[2] = v215[2];
  v84[3] = v87;
  v84[4] = v215[4];
  v88 = v215[1];
  *v84 = v215[0];
  v84[1] = v88;
  v202 = v83;
  v89 = ManagedECommerceOrderContent.fulfillments.getter();
  v90 = *(v89 + 2);
  if (v90)
  {
    *&v206 = MEMORY[0x1E69E7CC0];
    sub_1B71FE544(0, v90, 0);
    v91 = 32;
    v92 = v206;
    do
    {
      v93 = *&v89[v91];
      if ((v93 & 0x8000000000000000) != 0)
      {
        v94 = (v93 & 0x7FFFFFFFFFFFFFFFLL);
        v95 = v199;
        ManagedOrderPickupFulfillment.rawOrderPickupFulfillment.getter(v199);
      }

      else
      {
        v94 = v93;
        v95 = v199;
        ManagedOrderShippingFulfillment.rawOrderShippingFulfillment.getter(v199);
      }

      swift_storeEnumTagMultiPayload();
      sub_1B768D65C(v95, v66, type metadata accessor for RawOrderFulfillment);

      *&v206 = v92;
      v96 = v66;
      v98 = *(v92 + 16);
      v97 = *(v92 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_1B71FE544(v97 > 1, v98 + 1, 1);
        v92 = v206;
      }

      *(v92 + 16) = v98 + 1;
      sub_1B768D65C(v96, v92 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v98, type metadata accessor for RawOrderFulfillment);
      v91 += 8;
      --v90;
      v66 = v96;
    }

    while (v90);
  }

  else
  {

    v92 = MEMORY[0x1E69E7CC0];
  }

  *(v192 + v191[17]) = v92;
  v99 = ManagedECommerceOrderContent.lineItems.getter();
  v100 = v99;
  if (!(v99 >> 62))
  {
    v101 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v101)
    {
      goto LABEL_41;
    }

LABEL_53:

    v103 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v101 = sub_1B7801958();
  if (!v101)
  {
    goto LABEL_53;
  }

LABEL_41:
  v214 = MEMORY[0x1E69E7CC0];
  result = sub_1B71FE27C(0, v101 & ~(v101 >> 63), 0);
  if (v101 < 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v102 = 0;
  v103 = v214;
  if ((v100 & 0xC000000000000001) == 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  for (i = MEMORY[0x1B8CA5DC0](v102, v100); ; i = *(v100 + 8 * v102 + 32))
  {
    v105 = i;
    ManagedOrderLineItem.rawOrderLineItem.getter(&v206);

    v214 = v103;
    v107 = *(v103 + 16);
    v106 = *(v103 + 24);
    if (v107 >= v106 >> 1)
    {
      sub_1B71FE27C((v106 > 1), v107 + 1, 1);
      v103 = v214;
    }

    *(v103 + 16) = v107 + 1;
    v108 = (v103 + (v107 << 7));
    v109 = v206;
    v110 = v207;
    v111 = v209;
    v108[4] = v208;
    v108[5] = v111;
    v108[2] = v109;
    v108[3] = v110;
    v112 = v210;
    v113 = v211;
    v114 = v213;
    v108[8] = v212;
    v108[9] = v114;
    v108[6] = v112;
    v108[7] = v113;
    if (v101 - 1 == v102)
    {
      break;
    }

    ++v102;
    if ((v100 & 0xC000000000000001) != 0)
    {
      goto LABEL_43;
    }

LABEL_44:
    ;
  }

LABEL_54:
  v116 = v191;
  v115 = v192;
  *(v192 + v191[19]) = v103;
  v117 = v202;
  RawMerchant.init(_:)([v202 merchant], v115);
  v118 = [v190 orderIdentifier];
  v119 = sub_1B7800868();
  v121 = v120;

  v122 = (v115 + v116[6]);
  *v122 = v119;
  v122[1] = v121;
  v123 = [v117 orderManagementURL];
  v124 = v117;
  sub_1B77FF478();

  v125 = [v117 orderNumber];
  if (v125)
  {
    v126 = v125;
    v127 = sub_1B7800868();
    v129 = v128;
  }

  else
  {
    v127 = 0;
    v129 = 0;
  }

  v131 = v191;
  v130 = v192;
  v132 = (v192 + v191[7]);
  *v132 = v127;
  v132[1] = v129;
  v133 = [v190 orderTypeIdentifier];
  v134 = sub_1B7800868();
  v136 = v135;

  v137 = (v130 + v131[5]);
  *v137 = v134;
  v137[1] = v136;
  v138 = [v117 payment];
  if (v138)
  {
    RawOrderPayment.init(_:)(v138, &v206);
    v200 = v207;
    v201 = v206;
    v198 = v209;
    v199 = v208;
    v140 = *(&v210 + 1);
    v139 = v210;
  }

  else
  {
    v139 = 0;
    v140 = 0;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
  }

  v141 = v179;
  v142 = v179[3];
  v208 = v179[2];
  v209 = v142;
  v210 = v179[4];
  v143 = v179[1];
  v206 = *v179;
  v207 = v143;
  sub_1B7205418(&v206, &qword_1EB9982A8);
  v144 = v200;
  *v141 = v201;
  v141[1] = v144;
  v145 = v198;
  v141[2] = v199;
  v141[3] = v145;
  *(v141 + 8) = v139;
  *(v141 + 9) = v140;
  v146 = [v124 returnInfo];
  if (v146)
  {
    v147 = v184;
    RawOrderReturnInfo.init(_:)(v146, v184);
    v148 = 0;
  }

  else
  {
    v148 = 1;
    v147 = v184;
  }

  v181(v147, v148, 1, v182);
  sub_1B7213740(v147, v192 + v183, &qword_1EB99A4B0);
  v149 = ManagedECommerceOrderContent.returns.getter();
  v150 = v149;
  if (v149 >> 62)
  {
    v151 = sub_1B7801958();
    if (v151)
    {
LABEL_65:
      v214 = MEMORY[0x1E69E7CC0];
      result = sub_1B71FE500(0, v151 & ~(v151 >> 63), 0);
      if ((v151 & 0x8000000000000000) == 0)
      {
        v152 = 0;
        v153 = v214;
        do
        {
          if ((v150 & 0xC000000000000001) != 0)
          {
            v154 = MEMORY[0x1B8CA5DC0](v152, v150);
          }

          else
          {
            v154 = *(v150 + 8 * v152 + 32);
          }

          v155 = v154;
          v156 = v195;
          ManagedOrderReturn.rawOrderReturn.getter(v195);

          v214 = v153;
          v158 = *(v153 + 16);
          v157 = *(v153 + 24);
          if (v158 >= v157 >> 1)
          {
            sub_1B71FE500(v157 > 1, v158 + 1, 1);
            v153 = v214;
          }

          ++v152;
          *(v153 + 16) = v158 + 1;
          sub_1B768D65C(v156, v153 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v158, type metadata accessor for RawOrderReturn);
        }

        while (v151 != v152);

        goto LABEL_76;
      }

LABEL_85:
      __break(1u);
      return result;
    }
  }

  else
  {
    v151 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v151)
    {
      goto LABEL_65;
    }
  }

  v153 = MEMORY[0x1E69E7CC0];
LABEL_76:
  v160 = v191;
  v159 = v192;
  *(v192 + v191[16]) = v153;
  v161 = v202;
  *(v159 + v160[26]) = [v202 schemaVersion];
  ManagedECommerceOrderContent.status.getter(&v214);
  *(v159 + v160[9]) = v214;
  v162 = [v161 statusDescription];
  if (v162)
  {
    v163 = v162;
    v164 = sub_1B77FFA48();
    v165 = sub_1B741F7D4(v164);
    v167 = v166;
  }

  else
  {
    v165 = 0;
    v167 = 0;
  }

  v168 = v178;
  v169 = (v192 + v191[10]);
  *v169 = v165;
  v169[1] = v167;
  v170 = [v161 updatedDate];
  sub_1B77FF928();

  v171 = v190;
  v172 = [v190 orderWebService];
  if (v172)
  {
    v173 = v172;
    v174 = [v172 baseURL];

    sub_1B77FF478();
    v175 = 0;
    v171 = v161;
    v161 = v174;
  }

  else
  {
    v175 = 1;
  }

  v204(v168, v175, 1, v205);
  return sub_1B7213740(v168, v192 + v177, &unk_1EB994C70);
}

Swift::Void __swiftcall RawECommerceOrderContent.clearFulfillments()()
{
  v1 = *(type metadata accessor for RawECommerceOrderContent(0) + 68);

  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RawECommerceOrderContent.setFulfillments(_:)(Swift::OpaquePointer a1)
{
  sub_1B769511C(a1._rawValue);
  if (!v2)
  {
    v4 = *(type metadata accessor for RawECommerceOrderContent(0) + 68);

    *(v1 + v4) = a1;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RawECommerceOrderContent.setReturns(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = 0;
  v14[3] = MEMORY[0x1E69E7CD0];
  v5 = *(a1._rawValue + 2);
  while (v5 != v4)
  {
    v6 = type metadata accessor for RawOrderReturn();
    v7 = v4 + 1;
    v8 = (a1._rawValue + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4 + *(v6 + 64));
    v9 = *v8;
    v10 = v8[1];

    v11 = sub_1B724E408(v14, v9, v10);

    v4 = v7;
    if ((v11 & 1) == 0)
    {

      sub_1B7695530();
      swift_allocError();
      *v12 = 3;
      swift_willThrow();
      return;
    }
  }

  v13 = *(type metadata accessor for RawECommerceOrderContent(0) + 64);

  *(v2 + v13) = a1;
}

uint64_t RawECommerceOrderContent.setAutomaticUpdatesInfo(webServiceURL:authenticationToken:allowHTTP:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_1B7695584(a1, a2, a3, a4);
  if (!v5)
  {
    v10 = type metadata accessor for RawECommerceOrderContent(0);
    v11 = *(v10 + 96);
    sub_1B7205418(v4 + v11, &unk_1EB994C70);
    v12 = sub_1B77FF4F8();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v4 + v11, a1, v12);
    (*(v13 + 56))(v4 + v11, 0, 1, v12);
    v14 = (v4 + *(v10 + 100));

    *v14 = a2;
    v14[1] = a3;
  }

  return result;
}

uint64_t RawECommerceOrderContent.fullyQualifiedOrderIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for RawECommerceOrderContent(0);
  v4 = *(v3 + 24);
  v5 = (v1 + *(v3 + 20));
  v7 = *v5;
  v6 = v5[1];
  v8 = v1 + v4;
  v9 = *(v1 + v4);
  v10 = *(v8 + 8);
  *a1 = v7;
  a1[1] = v6;
  a1[2] = v9;
  a1[3] = v10;
}

uint64_t RawECommerceOrderContent.versionIdentifier.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for RawECommerceOrderContent(0);
  v4 = v3[6];
  v5 = (v1 + v3[5]);
  v7 = *v5;
  v6 = v5[1];
  v9 = *(v1 + v4);
  v8 = *(v1 + v4 + 8);
  v10 = v3[12];
  v11 = *(type metadata accessor for Order.VersionIdentifier() + 20);
  v12 = sub_1B77FF988();
  (*(*(v12 - 8) + 16))(&a1[v11], v1 + v10, v12);
  *a1 = v7;
  *(a1 + 1) = v6;
  *(a1 + 2) = v9;
  *(a1 + 3) = v8;
}

uint64_t RawECommerceOrderContent.imageNames.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for RawOrderProvider();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = RawECommerceOrderContent.lineItemsImageNames.getter();
  v8 = (v0 + *(type metadata accessor for RawMerchant() + 36));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;

    sub_1B724E408(&v18, v10, v9);
  }

  v11 = type metadata accessor for RawECommerceOrderContent(0);
  sub_1B7205588(v0 + *(v11 + 92), v3, &qword_1EB99A4B8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1B7205418(v3, &qword_1EB99A4B8);
  }

  else
  {
    sub_1B768D65C(v3, v7, type metadata accessor for RawOrderProvider);
    v12 = v7[4];
    v13 = v7[5];

    sub_1B724E408(&v18, v12, v13);

    v14 = v7[2];
    v15 = v7[3];

    sub_1B724E408(&v18, v14, v15);

    sub_1B768D6C4(v7, type metadata accessor for RawOrderProvider);
  }

  return v19;
}

uint64_t RawECommerceOrderContent.lineItemsImageNames.getter()
{
  v1 = type metadata accessor for RawOrderReturn();
  v74 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v76 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = (&v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for RawOrderFulfillment();
  v7 = *(v81 - 8);
  v8 = MEMORY[0x1EEE9AC00](v81);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v73 - v11;
  v82 = MEMORY[0x1E69E7CD0];
  result = type metadata accessor for RawECommerceOrderContent(0);
  v14 = 0;
  v77 = result;
  v78 = v0;
  v15 = *(v0 + *(result + 76));
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v18 = v15 - 96 + (v14 << 7);
  while (1)
  {
    if (v16 == v14)
    {
      sub_1B7262E6C(v17);

      v25 = *(v78 + *(v77 + 68));
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v28 = *(v7 + 72);
        v29 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          sub_1B76929E8(v27, v12, type metadata accessor for RawOrderFulfillment);
          sub_1B76929E8(v12, v10, type metadata accessor for RawOrderFulfillment);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v30 = v80;
            sub_1B768D65C(v10, v80, type metadata accessor for RawOrderPickupFulfillment);
            v31 = *v30;

            v32 = type metadata accessor for RawOrderPickupFulfillment;
          }

          else
          {
            v30 = v79;
            sub_1B768D65C(v10, v79, type metadata accessor for RawOrderShippingFulfillment);
            v31 = *v30;

            v32 = type metadata accessor for RawOrderShippingFulfillment;
          }

          sub_1B768D6C4(v30, v32);
          result = sub_1B768D6C4(v12, type metadata accessor for RawOrderFulfillment);
          v33 = *(v31 + 16);
          v34 = *(v29 + 16);
          v35 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_74;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result && v35 <= *(v29 + 24) >> 1)
          {
            if (!*(v31 + 16))
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v34 <= v35)
            {
              v36 = v34 + v33;
            }

            else
            {
              v36 = v34;
            }

            result = sub_1B723F9D8(result, v36, 1, v29);
            v29 = result;
            if (!*(v31 + 16))
            {
LABEL_13:

              if (v33)
              {
                goto LABEL_75;
              }

              goto LABEL_14;
            }
          }

          if ((*(v29 + 24) >> 1) - *(v29 + 16) < v33)
          {
            goto LABEL_78;
          }

          swift_arrayInitWithCopy();

          if (v33)
          {
            v37 = *(v29 + 16);
            v38 = __OFADD__(v37, v33);
            v39 = v37 + v33;
            if (v38)
            {
              goto LABEL_80;
            }

            *(v29 + 16) = v39;
          }

LABEL_14:
          v27 += v28;
          if (!--v26)
          {
            goto LABEL_32;
          }
        }
      }

      v29 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v40 = 0;
      v41 = *(v29 + 16);
      v42 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v43 = (v29 + 40 + (v40 << 7));
      v44 = v76;
      while (v41 != v40)
      {
        if (v40 >= *(v29 + 16))
        {
          goto LABEL_72;
        }

        ++v40;
        v45 = v43 + 16;
        v46 = *v43;
        v43 += 16;
        if (v46)
        {
          v47 = *(v45 - 17);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B723E180(0, *(v42 + 16) + 1, 1, v42);
            v42 = result;
          }

          v49 = *(v42 + 16);
          v48 = *(v42 + 24);
          if (v49 >= v48 >> 1)
          {
            result = sub_1B723E180((v48 > 1), v49 + 1, 1, v42);
            v42 = result;
          }

          *(v42 + 16) = v49 + 1;
          v50 = v42 + 16 * v49;
          *(v50 + 32) = v47;
          *(v50 + 40) = v46;
          goto LABEL_33;
        }
      }

      sub_1B7262E6C(v42);

      v51 = *(v78 + *(v77 + 64));
      v52 = *(v51 + 16);
      if (!v52)
      {
        v55 = MEMORY[0x1E69E7CC0];
LABEL_60:
        v63 = 0;
        v64 = *(v55 + 16);
        v65 = MEMORY[0x1E69E7CC0];
LABEL_61:
        v66 = (v55 + 40 + (v63 << 7));
        while (v64 != v63)
        {
          if (v63 >= *(v55 + 16))
          {
            goto LABEL_73;
          }

          ++v63;
          v67 = v66 + 16;
          v68 = *v66;
          v66 += 16;
          if (v68)
          {
            v69 = *(v67 - 17);

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1B723E180(0, *(v65 + 16) + 1, 1, v65);
              v65 = result;
            }

            v71 = *(v65 + 16);
            v70 = *(v65 + 24);
            if (v71 >= v70 >> 1)
            {
              result = sub_1B723E180((v70 > 1), v71 + 1, 1, v65);
              v65 = result;
            }

            *(v65 + 16) = v71 + 1;
            v72 = v65 + 16 * v71;
            *(v72 + 32) = v69;
            *(v72 + 40) = v68;
            goto LABEL_61;
          }
        }

        sub_1B7262E6C(v65);

        return v82;
      }

      v53 = v51 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v54 = *(v74 + 72);
      v55 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1B76929E8(v53, v44, type metadata accessor for RawOrderReturn);
        v56 = *v44;

        result = sub_1B768D6C4(v44, type metadata accessor for RawOrderReturn);
        v57 = *(v56 + 16);
        v58 = *(v55 + 16);
        v59 = v58 + v57;
        if (__OFADD__(v58, v57))
        {
          goto LABEL_76;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v59 <= *(v55 + 24) >> 1)
        {
          if (!*(v56 + 16))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v58 <= v59)
          {
            v60 = v58 + v57;
          }

          else
          {
            v60 = v58;
          }

          result = sub_1B723F9D8(result, v60, 1, v55);
          v55 = result;
          if (!*(v56 + 16))
          {
LABEL_44:

            if (v57)
            {
              goto LABEL_77;
            }

            goto LABEL_45;
          }
        }

        if ((*(v55 + 24) >> 1) - *(v55 + 16) < v57)
        {
          goto LABEL_79;
        }

        swift_arrayInitWithCopy();

        if (v57)
        {
          v61 = *(v55 + 16);
          v38 = __OFADD__(v61, v57);
          v62 = v61 + v57;
          if (v38)
          {
            goto LABEL_81;
          }

          *(v55 + 16) = v62;
        }

LABEL_45:
        v53 += v54;
        if (!--v52)
        {
          goto LABEL_60;
        }
      }
    }

    if (v14 >= *(v15 + 16))
    {
      break;
    }

    ++v14;
    v19 = (v18 + 128);
    v20 = *(v18 + 136);
    v18 += 128;
    if (v20)
    {
      v75 = *v19;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B723E180(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v73 = v22 + 1;
        result = sub_1B723E180((v21 > 1), v22 + 1, 1, v17);
        v23 = v73;
        v17 = result;
      }

      *(v17 + 16) = v23;
      v24 = v17 + 16 * v22;
      *(v24 + 32) = v75;
      *(v24 + 40) = v20;
      goto LABEL_2;
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
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t RawECommerceOrderContent.receiptNames.getter()
{
  v1 = type metadata accessor for RawOrderPaymentTransaction();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 56);
  if (!*(v5 + 40))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(v5 + 72);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = &v4[*(v1 + 40)];
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B76929E8(v9, v4, type metadata accessor for RawOrderPaymentTransaction);
      v14 = *v8;
      v13 = *(v8 + 1);

      sub_1B768D6C4(v4, type metadata accessor for RawOrderPaymentTransaction);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1B723E180(0, *(v11 + 2) + 1, 1, v11);
        }

        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v16 >= v15 >> 1)
        {
          v11 = sub_1B723E180((v15 > 1), v16 + 1, 1, v11);
        }

        *(v11 + 2) = v16 + 1;
        v12 = &v11[16 * v16];
        *(v12 + 4) = v14;
        *(v12 + 5) = v13;
      }

      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1B723B658(v11);

  return v17;
}

uint64_t RawECommerceOrderContent.returnLabelNames.getter()
{
  v1 = type metadata accessor for RawOrderReturn();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for RawECommerceOrderContent(0) + 64));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = &v4[*(v1 + 56)];
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B76929E8(v8, v4, type metadata accessor for RawOrderReturn);
      v13 = *v7;
      v12 = *(v7 + 1);

      sub_1B768D6C4(v4, type metadata accessor for RawOrderReturn);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B723E180(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_1B723E180((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v11 = &v10[16 * v15];
        *(v11 + 4) = v13;
        *(v11 + 5) = v12;
      }

      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1B723B658(v10);

  return v16;
}

int *RawECommerceOrderContent.isActive.getter()
{
  v1 = type metadata accessor for RawOrderReturn();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52 - v6;
  v8 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawOrderFulfillment();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  result = type metadata accessor for RawECommerceOrderContent(0);
  if (*(v0 + result[9]))
  {
    if (*(v0 + result[9]) == 1)
    {
      v22 = 0;
      v23 = *(v0 + result[16]);
      v24 = *(v23 + 16);
      do
      {
        v25 = v24 != v22;
        if (v24 == v22)
        {
          break;
        }

        if (v22 >= *(v23 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1B76929E8(v23 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22++, v5, type metadata accessor for RawOrderReturn);
        v26 = v5[8];
        result = sub_1B768D6C4(v5, type metadata accessor for RawOrderReturn);
      }

      while (v26 > 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v59 = v15;
    v56 = v10;
    v57 = v13;
    v27 = *(v0 + result[17]);
    v28 = *(v27 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v53 = v2;
      v54 = v0;
      v55 = result;
      v61 = MEMORY[0x1E69E7CC0];
      sub_1B71FE660(0, v28, 0);
      v29 = v61;
      v30 = v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v58 = *(v59 + 72);
      v59 = v14;
      v31 = v56;
      do
      {
        sub_1B76929E8(v30, v20, type metadata accessor for RawOrderFulfillment);
        sub_1B76929E8(v20, v18, type metadata accessor for RawOrderFulfillment);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1B768D65C(v18, v31, type metadata accessor for RawOrderPickupFulfillment);
          v32 = *(v31 + 8);
          sub_1B768D6C4(v31, type metadata accessor for RawOrderPickupFulfillment);
          v33 = v32 >= 5;
          v34 = 8;
        }

        else
        {
          v35 = v57;
          sub_1B768D65C(v18, v57, type metadata accessor for RawOrderShippingFulfillment);
          v32 = *(v35 + 40);
          sub_1B768D6C4(v35, type metadata accessor for RawOrderShippingFulfillment);
          v33 = v32 >= 7;
          v34 = 36;
        }

        v36 = v34 >> v32;
        if (v33)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        sub_1B768D6C4(v20, type metadata accessor for RawOrderFulfillment);
        v61 = v29;
        v39 = *(v29 + 16);
        v38 = *(v29 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1B71FE660((v38 > 1), v39 + 1, 1);
          v31 = v56;
          v29 = v61;
        }

        *(v29 + 16) = v39 + 1;
        *(v29 + v39 + 32) = v37 & 1;
        v30 += v58;
        --v28;
      }

      while (v28);
      v0 = v54;
      result = v55;
      v2 = v53;
    }

    v61 = v29;
    v40 = *(v0 + result[16]);
    v41 = *(v40 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v60 = MEMORY[0x1E69E7CC0];
      sub_1B71FE660(0, v41, 0);
      v42 = v60;
      v43 = v40 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v44 = *(v2 + 72);
      do
      {
        sub_1B76929E8(v43, v7, type metadata accessor for RawOrderReturn);
        v45 = v7[8];
        sub_1B768D6C4(v7, type metadata accessor for RawOrderReturn);
        v60 = v42;
        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1B71FE660((v46 > 1), v47 + 1, 1);
          v42 = v60;
        }

        *(v42 + 16) = v47 + 1;
        *(v42 + v47 + 32) = v45 > 3;
        v43 += v44;
        --v41;
      }

      while (v41);
    }

    sub_1B72449B0(v42);
    v48 = *(v61 + 16);
    if (v48)
    {
      v49 = (v61 + 32);
      do
      {
        v50 = v48-- != 0;
        v25 = v50;
        if (!v50)
        {
          break;
        }

        v51 = *v49++;
      }

      while ((v51 & 1) != 0);
    }

    else
    {
      v25 = 1;
    }
  }

  return v25;
}

uint64_t sub_1B7691D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a1;
  v97 = a2;
  v101 = a3;
  v96 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v96);
  v100 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v84 - v7;
  v8 = type metadata accessor for Duration();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1B77FFB08();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B77FFC88();
  v88 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1B77FF988();
  v103 = *(v104 - 8);
  v12 = MEMORY[0x1EEE9AC00](v104);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v99 = (&v84 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v93 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v84 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v84 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v84 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v86 = &v84 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v84 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v98 = &v84 - v35;
  v36 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76929E8(v102, v41, type metadata accessor for RawOrderFulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v100;
    sub_1B768D65C(v41, v100, type metadata accessor for RawOrderPickupFulfillment);
    v43 = *(v42 + 8);
    v44 = v42;
    if (v43 == 5 || v43 == 3)
    {
      sub_1B7205588(v42 + *(v96 + 56), v23, &qword_1EB98EBD0);
      v45 = v103;
      v46 = *(v103 + 48);
      v47 = v104;
      if (v46(v23, 1, v104) == 1)
      {
        v48 = type metadata accessor for RawECommerceOrderContent(0);
        (*(v45 + 16))(v14, v97 + *(v48 + 48), v47);
        v49 = v46(v23, 1, v47);
        v50 = v101;
        if (v49 != 1)
        {
          sub_1B7205418(v23, &qword_1EB98EBD0);
        }
      }

      else
      {
        (*(v45 + 32))(v14, v23, v47);
        v50 = v101;
      }

      v68 = v99;
      Date.noon.getter(v99);
      v69 = *(v45 + 8);
      v69(v14, v47);
      Date.dayAfter.getter(v26);
      v69(v68, v47);
      v70 = 0;
      v44 = v100;
    }

    else
    {
      v70 = 1;
      v50 = v101;
      v47 = v104;
      v45 = v103;
    }

    sub_1B768D6C4(v44, type metadata accessor for RawOrderPickupFulfillment);
    (*(v45 + 56))(v26, v70, 1, v47);
    v57 = v26;
    return sub_1B722376C(v57, v50, &qword_1EB98EBD0);
  }

  sub_1B768D65C(v41, v38, type metadata accessor for RawOrderShippingFulfillment);
  v51 = v38[40];
  if (v51 == 7 || v51 == 5)
  {
    v62 = *(v36 + 60);
    v102 = v38;
    sub_1B7205588(&v38[v62], v29, &qword_1EB98EBD0);
    v52 = v103;
    v63 = *(v103 + 48);
    v64 = v104;
    if (v63(v29, 1, v104) == 1)
    {
      v65 = type metadata accessor for RawECommerceOrderContent(0);
      v66 = v93;
      (*(v52 + 16))(v93, v97 + *(v65 + 48), v64);
      v67 = v63(v29, 1, v64);
      v50 = v101;
      if (v67 != 1)
      {
        sub_1B7205418(v29, &qword_1EB98EBD0);
      }
    }

    else
    {
      v66 = v93;
      (*(v52 + 32))(v93, v29, v64);
      v50 = v101;
    }

    v71 = v99;
    Date.noon.getter(v99);
    v72 = *(v52 + 8);
    v72(v66, v64);
    v57 = v98;
    Date.dayAfter.getter(v98);
    v72(v71, v64);
    sub_1B768D6C4(v102, type metadata accessor for RawOrderShippingFulfillment);
    v73 = 0;
    v55 = v64;
    goto LABEL_26;
  }

  v52 = v103;
  if (v51 != 2)
  {
    sub_1B768D6C4(v38, type metadata accessor for RawOrderShippingFulfillment);
    v73 = 1;
    v50 = v101;
    v55 = v104;
    v57 = v98;
LABEL_26:
    (*(v52 + 56))(v57, v73, 1, v55);
    return sub_1B722376C(v57, v50, &qword_1EB98EBD0);
  }

  v53 = *(v36 + 68);
  v102 = v38;
  sub_1B7205588(&v38[v53], v34, &qword_1EB98EBD0);
  v54 = *(v52 + 48);
  v55 = v104;
  v56 = (v54)(v34, 1, v104);
  v57 = v98;
  v99 = v54;
  v100 = v52 + 48;
  if (v56 == 1)
  {
    v58 = type metadata accessor for RawECommerceOrderContent(0);
    (*(v52 + 16))(v94, v97 + *(v58 + 48), v55);
    v59 = (v54)(v34, 1, v55);
    v60 = v92;
    v61 = v88;
    if (v59 != 1)
    {
      sub_1B7205418(v34, &qword_1EB98EBD0);
    }
  }

  else
  {
    (*(v52 + 32))(v94, v34, v55);
    v60 = v92;
    v61 = v88;
  }

  v74 = v84;
  v75 = v85;
  v76 = v87;
  (*(v85 + 104))(v84, *MEMORY[0x1E6969830], v87);
  sub_1B77FFB18();
  (*(v75 + 8))(v74, v76);
  v77 = v61;
  (*(v61 + 56))(v89, 1, 1, v60);
  v78 = sub_1B77FFCF8();
  (*(*(v78 - 8) + 56))(v91, 1, 1, v78);
  v79 = v90;
  v80 = v95;
  sub_1B77FECD8();
  v81 = v86;
  v82 = v94;
  sub_1B77FFC08();
  result = (v99)(v81, 1, v55);
  if (result != 1)
  {
    sub_1B768D6C4(v79, type metadata accessor for Duration);
    (*(v77 + 8))(v80, v92);
    (*(v52 + 8))(v82, v55);
    sub_1B768D6C4(v102, type metadata accessor for RawOrderShippingFulfillment);
    (*(v52 + 32))(v57, v81, v55);
    v73 = 0;
    v50 = v101;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B76929E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL RawECommerceOrderContent.supportsAutomaticUpdates.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for RawECommerceOrderContent(0);
  sub_1B7205588(v0 + *(v4 + 96), v3, &unk_1EB994C70);
  v5 = sub_1B77FF4F8();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1B7205418(v3, &unk_1EB994C70);
  return v6 != 1 && *(v0 + *(v4 + 100) + 8) != 0;
}

FinanceKit::RawOrderChangeNotificationsValue_optional __swiftcall RawOrderChangeNotificationsValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderChangeNotificationsValue.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1B7692C1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x64656C62616E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000001B7874AD0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  if (*a2)
  {
    v6 = 0x80000001B7874AD0;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B7692CC8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7692D50()
{
  sub_1B7800798();
}

uint64_t sub_1B7692DC4()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7692E48@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B7692EA8(unint64_t *a1@<X8>)
{
  v2 = 0x80000001B7874AD0;
  v3 = 0x64656C62616E65;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1B7692FAC()
{
  result = qword_1EB99AE48;
  if (!qword_1EB99AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE48);
  }

  return result;
}

unint64_t sub_1B7693000()
{
  result = qword_1EB99AE60;
  if (!qword_1EB99AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE60);
  }

  return result;
}

unint64_t sub_1B7693054()
{
  result = qword_1EB99AE68;
  if (!qword_1EB99AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE68);
  }

  return result;
}

unint64_t sub_1B76930A8()
{
  result = qword_1EB99AE78;
  if (!qword_1EB99AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE78);
  }

  return result;
}

unint64_t sub_1B76930FC()
{
  result = qword_1EB99AE88;
  if (!qword_1EB99AE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AE80);
    sub_1B719BD38(&qword_1EB99AE90, type metadata accessor for RawOrderApplication);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE88);
  }

  return result;
}

unint64_t sub_1B76931B0()
{
  result = qword_1EB99AE98;
  if (!qword_1EB99AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AE98);
  }

  return result;
}

unint64_t sub_1B7693204()
{
  result = qword_1EB99AEB0;
  if (!qword_1EB99AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AEB0);
  }

  return result;
}

unint64_t sub_1B7693258()
{
  result = qword_1EB99AEC8;
  if (!qword_1EB99AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AEC8);
  }

  return result;
}

unint64_t sub_1B76932AC()
{
  result = qword_1EB99AED0;
  if (!qword_1EB99AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AED0);
  }

  return result;
}

unint64_t sub_1B7693300()
{
  result = qword_1EB99AED8;
  if (!qword_1EB99AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AED8);
  }

  return result;
}

unint64_t sub_1B7693354()
{
  result = qword_1EB99AEF0;
  if (!qword_1EB99AEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AEE8);
    sub_1B719BD38(&qword_1EB99AEF8, type metadata accessor for RawOrderReturn);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AEF0);
  }

  return result;
}

unint64_t sub_1B7693408()
{
  result = qword_1EB99AF08;
  if (!qword_1EB99AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AF00);
    sub_1B719BD38(&qword_1EB99AF10, type metadata accessor for RawOrderFulfillment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF08);
  }

  return result;
}

unint64_t sub_1B76934BC()
{
  result = qword_1EB99AF18;
  if (!qword_1EB99AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF18);
  }

  return result;
}

unint64_t sub_1B7693510()
{
  result = qword_1EB99AF20;
  if (!qword_1EB99AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF20);
  }

  return result;
}

unint64_t sub_1B7693564()
{
  result = qword_1EB99AF28;
  if (!qword_1EB99AF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AE80);
    sub_1B719BD38(&qword_1EB99AF30, type metadata accessor for RawOrderApplication);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF28);
  }

  return result;
}

unint64_t sub_1B7693618()
{
  result = qword_1EB99AF38;
  if (!qword_1EB99AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF38);
  }

  return result;
}

unint64_t sub_1B769366C()
{
  result = qword_1EB99AF48;
  if (!qword_1EB99AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF48);
  }

  return result;
}

uint64_t _s10FinanceKit24RawECommerceOrderContentV0F4ItemO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderReturn();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawECommerceOrderContent.ContentItem(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AFB8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1B76929E8(a1, &v27 - v18, type metadata accessor for RawECommerceOrderContent.ContentItem);
  sub_1B76929E8(a2, &v19[v20], type metadata accessor for RawECommerceOrderContent.ContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B76929E8(v19, v13, type metadata accessor for RawECommerceOrderContent.ContentItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B768D65C(&v19[v20], v6, type metadata accessor for RawOrderReturn);
      v21 = static RawOrderReturn.== infix(_:_:)(v13, v6);
      sub_1B768D6C4(v6, type metadata accessor for RawOrderReturn);
      v22 = v13;
      v23 = type metadata accessor for RawOrderReturn;
LABEL_9:
      sub_1B768D6C4(v22, v23);
      sub_1B768D6C4(v19, type metadata accessor for RawECommerceOrderContent.ContentItem);
      return v21 & 1;
    }

    v24 = type metadata accessor for RawOrderReturn;
    v25 = v13;
  }

  else
  {
    sub_1B76929E8(v19, v15, type metadata accessor for RawECommerceOrderContent.ContentItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B768D65C(&v19[v20], v9, type metadata accessor for RawOrderFulfillment);
      v21 = static RawOrderFulfillment.== infix(_:_:)(v15, v9);
      sub_1B768D6C4(v9, type metadata accessor for RawOrderFulfillment);
      v22 = v15;
      v23 = type metadata accessor for RawOrderFulfillment;
      goto LABEL_9;
    }

    v24 = type metadata accessor for RawOrderFulfillment;
    v25 = v15;
  }

  sub_1B768D6C4(v25, v24);
  sub_1B7205418(v19, &qword_1EB99AFB8);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1B7693A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawMerchant();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s10FinanceKit24RawECommerceOrderContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v174 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v176 = &v164 - v8;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v175);
  v178 = (&v164 - v9);
  v182 = type metadata accessor for RawOrderProvider();
  v180 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v177 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v181 = (&v164 - v12);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AFE0);
  MEMORY[0x1EEE9AC00](v179);
  v183 = (&v164 - v13);
  v14 = type metadata accessor for RawOrderReturnInfo();
  v184 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v164 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99AFE8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v164 - v21;
  if ((static RawMerchant.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v23 = type metadata accessor for RawECommerceOrderContent(0);
  v24 = v23[5];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  v29 = v25 == *v27;
  v185 = v23;
  if (!v29 || v26 != v28)
  {
    v30 = sub_1B78020F8();
    v23 = v185;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v23[6];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if (v32 != *v34 || v33 != v34[1])
  {
    v35 = sub_1B78020F8();
    v23 = v185;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v36 = v23[7];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }

    if (*v37 != *v39 || v38 != v40)
    {
      v41 = sub_1B78020F8();
      v23 = v185;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  v42 = v23[8];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43 == 2)
  {
    v172 = v4;
    if (v44 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v44 == 2)
    {
      return 0;
    }

    v172 = v4;
    v173 = v5;
    if (v43)
    {
      v45 = 0xD000000000000016;
    }

    else
    {
      v45 = 0x64656C62616E65;
    }

    if (v43)
    {
      v46 = 0x80000001B7874AD0;
    }

    else
    {
      v46 = 0xE700000000000000;
    }

    if (v44)
    {
      v47 = 0xD000000000000016;
    }

    else
    {
      v47 = 0x64656C62616E65;
    }

    if (v44)
    {
      v48 = 0x80000001B7874AD0;
    }

    else
    {
      v48 = 0xE700000000000000;
    }

    if (v45 == v47 && v46 == v48)
    {

      v5 = v173;
      v23 = v185;
    }

    else
    {
      LODWORD(v171) = sub_1B78020F8();

      v5 = v173;
      v23 = v185;
      if ((v171 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v49 = 0xE900000000000064;
  v50 = 1852141679;
  v51 = v23[9];
  v52 = *(a1 + v51);
  v53 = *(a2 + v51);
  v173 = v5;
  if (v52)
  {
    if (v52 == 1)
    {
      v54 = 0x6574656C706D6F63;
    }

    else
    {
      v54 = 0x656C6C65636E6163;
    }

    v55 = 0xE900000000000064;
  }

  else
  {
    v55 = 0xE400000000000000;
    v54 = 1852141679;
  }

  if (v53)
  {
    if (v53 == 1)
    {
      v50 = 0x6574656C706D6F63;
    }

    else
    {
      v50 = 0x656C6C65636E6163;
    }
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  if (v54 == v50 && v55 == v49)
  {
  }

  else
  {
    LODWORD(v171) = sub_1B78020F8();

    if ((v171 & 1) == 0)
    {
      return 0;
    }
  }

  v56 = v185;
  v57 = v185[10];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 8);
  v60 = (a2 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61)
    {
      return 0;
    }

    if (*v58 != *v60 || v59 != v61)
    {
      v62 = sub_1B78020F8();
      v56 = v185;
      if ((v62 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v61)
  {
    return 0;
  }

  if ((sub_1B77FF918() & 1) == 0 || (sub_1B77FF918() & 1) == 0 || (sub_1B77FF458() & 1) == 0)
  {
    return 0;
  }

  v63 = (a1 + v56[14]);
  v64 = v63[4];
  v237 = v63[3];
  v238 = v64;
  v66 = v63[2];
  v65 = v63[3];
  v67 = *v63;
  v68 = *v63;
  v235 = v63[1];
  v236 = v66;
  v234 = v67;
  v69 = (a2 + v56[14]);
  v70 = v69[3];
  v71 = v69[4];
  v240 = v69[2];
  v241 = v70;
  v242 = v71;
  v72 = v69[1];
  v239[0] = *v69;
  v239[1] = v72;
  v191 = v68;
  v192 = v235;
  v73 = v63[4];
  v210 = v65;
  v211 = v73;
  *&v193 = *(v63 + 4);
  v74 = *(&v66 + 1);
  v186 = v239[0];
  v187 = v72;
  *&v188 = *(v69 + 4);
  v75 = *(&v240 + 1);
  v76 = v69[4];
  v206 = v70;
  v207 = v76;
  if (!*(&v66 + 1))
  {
    if (!*(&v240 + 1))
    {
      v86 = v63[1];
      v224 = *v63;
      v225 = v86;
      v226 = *(v63 + 4);
      v87 = v63[4];
      v227 = v63[3];
      v228 = v87;
      sub_1B7205588(&v234, &v219, &qword_1EB9982A8);
      sub_1B7205588(v239, &v219, &qword_1EB9982A8);
      sub_1B7205418(&v224, &qword_1EB9982A8);
      goto LABEL_71;
    }

    sub_1B7205588(&v234, &v224, &qword_1EB9982A8);
    sub_1B7205588(v239, &v224, &qword_1EB9982A8);
LABEL_68:
    v224 = v191;
    v225 = v192;
    *&v226 = v193;
    *(&v226 + 1) = v74;
    v227 = v210;
    v228 = v211;
    v229 = v186;
    v230 = v187;
    *&v231 = v188;
    *(&v231 + 1) = v75;
    v232 = v206;
    v233 = v207;
    v84 = &unk_1EB99AFF0;
LABEL_69:
    v85 = &v224;
LABEL_77:
    sub_1B7205418(v85, v84);
    return 0;
  }

  v77 = *(v63 + 4);
  v78 = v63[1];
  v224 = *v63;
  v225 = v78;
  *&v226 = v77;
  *(&v226 + 1) = *(&v236 + 1);
  v79 = v63[4];
  v227 = v63[3];
  v228 = v79;
  v222 = v227;
  v223 = v79;
  v219 = v224;
  v220 = v78;
  v221 = v226;
  if (!*(&v240 + 1))
  {
    v216 = v226;
    v217 = v227;
    v218 = v228;
    v214 = v224;
    v215 = v225;
    sub_1B7205588(&v234, &v201, &qword_1EB9982A8);
    sub_1B7205588(v239, &v201, &qword_1EB9982A8);
    sub_1B7205588(&v224, &v201, &qword_1EB9982A8);
    sub_1B74C2740(&v214);
    goto LABEL_68;
  }

  v80 = v69[1];
  v214 = *v69;
  v215 = v80;
  v81 = *(v69 + 4);
  v82 = v69[4];
  v217 = v69[3];
  v218 = v82;
  *&v216 = v81;
  *(&v216 + 1) = *(&v240 + 1);
  v171 = *(&v236 + 1);
  sub_1B7205588(&v234, &v201, &qword_1EB9982A8);
  sub_1B7205588(v239, &v201, &qword_1EB9982A8);
  sub_1B7205588(&v224, &v201, &qword_1EB9982A8);
  v83 = _s10FinanceKit15RawOrderPaymentV2eeoiySbAC_ACtFZ_0(&v219, &v214);
  v198 = v216;
  v199 = v217;
  v200 = v218;
  v196 = v214;
  v197 = v215;
  sub_1B74C2740(&v196);
  v203 = v221;
  v204 = v222;
  v205 = v223;
  v201 = v219;
  v202 = v220;
  sub_1B74C2740(&v201);
  v214 = v191;
  v215 = v192;
  *&v216 = v193;
  *(&v216 + 1) = v171;
  v217 = v210;
  v218 = v211;
  sub_1B7205418(&v214, &qword_1EB9982A8);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  v88 = v185[15];
  v89 = *(v20 + 48);
  sub_1B7205588(a1 + v88, v22, &qword_1EB99A4B0);
  v90 = a2 + v88;
  v91 = v89;
  sub_1B7205588(v90, &v22[v89], &qword_1EB99A4B0);
  v92 = *(v184 + 48);
  if (v92(v22, 1, v14) == 1)
  {
    if (v92(&v22[v91], 1, v14) == 1)
    {
      sub_1B7205418(v22, &qword_1EB99A4B0);
      goto LABEL_81;
    }

LABEL_76:
    v84 = &qword_1EB99AFE8;
    v85 = v22;
    goto LABEL_77;
  }

  sub_1B7205588(v22, v19, &qword_1EB99A4B0);
  if (v92(&v22[v91], 1, v14) == 1)
  {
    sub_1B768D6C4(v19, type metadata accessor for RawOrderReturnInfo);
    goto LABEL_76;
  }

  sub_1B768D65C(&v22[v91], v16, type metadata accessor for RawOrderReturnInfo);
  v94 = _s10FinanceKit18RawOrderReturnInfoV2eeoiySbAC_ACtFZ_0(v19, v16);
  sub_1B768D6C4(v16, type metadata accessor for RawOrderReturnInfo);
  sub_1B768D6C4(v19, type metadata accessor for RawOrderReturnInfo);
  sub_1B7205418(v22, &qword_1EB99A4B0);
  if (!v94)
  {
    return 0;
  }

LABEL_81:
  v95 = v185;
  if ((sub_1B7320A3C(*(a1 + v185[16]), *(a2 + v185[16])) & 1) == 0 || (sub_1B7320A90(*(a1 + v95[17]), *(a2 + v95[17])) & 1) == 0)
  {
    return 0;
  }

  v96 = (a1 + v95[18]);
  v97 = v96[4];
  v98 = v96[1];
  v99 = v96[2];
  v217 = v96[3];
  v218 = v97;
  v100 = *v96;
  v215 = v96[1];
  v216 = v99;
  v214 = v100;
  v101 = (a2 + v95[18]);
  v102 = v101[3];
  v223 = v101[4];
  v103 = v101[3];
  v104 = v101[1];
  v221 = v101[2];
  v222 = v103;
  v105 = v101[1];
  v219 = *v101;
  v220 = v105;
  v210 = v98;
  v211 = v99;
  v106 = v96[4];
  v212 = v217;
  v213 = v106;
  v107 = v101[4];
  v208 = v102;
  v209 = v107;
  v108 = v214;
  v109 = v219;
  v206 = v104;
  v207 = v221;
  if (*(&v214 + 1) == 1)
  {
    if (*(&v219 + 1) == 1)
    {
      *&v224 = v214;
      *(&v224 + 1) = 1;
      v110 = v96[2];
      v225 = v96[1];
      v226 = v110;
      v111 = v96[4];
      v227 = v96[3];
      v228 = v111;
      sub_1B7205588(&v214, &v201, &qword_1EB99AE50);
      sub_1B7205588(&v219, &v201, &qword_1EB99AE50);
      sub_1B7205418(&v224, &qword_1EB99AE50);
      goto LABEL_91;
    }

    sub_1B7205588(&v214, &v224, &qword_1EB99AE50);
    sub_1B7205588(&v219, &v224, &qword_1EB99AE50);
    goto LABEL_89;
  }

  v224 = v214;
  v112 = v96[2];
  v225 = v96[1];
  v226 = v112;
  v113 = v96[4];
  v227 = v96[3];
  v228 = v113;
  v203 = v112;
  v204 = v227;
  v205 = v113;
  v201 = v214;
  v202 = v225;
  if (*(&v219 + 1) == 1)
  {
    v198 = v226;
    v199 = v227;
    v200 = v228;
    v196 = v224;
    v197 = v225;
    sub_1B7205588(&v214, &v191, &qword_1EB99AE50);
    sub_1B7205588(&v219, &v191, &qword_1EB99AE50);
    sub_1B7205588(&v224, &v191, &qword_1EB99AE50);
    sub_1B76961E4(&v196);
LABEL_89:
    v224 = v108;
    v225 = v210;
    v226 = v211;
    v227 = v212;
    v228 = v213;
    v229 = v109;
    v230 = v206;
    v231 = v207;
    v232 = v208;
    v233 = v209;
    v84 = &unk_1EB99AFF8;
    goto LABEL_69;
  }

  v114 = v101[2];
  v197 = v101[1];
  v198 = v114;
  v115 = v101[4];
  v199 = v101[3];
  v200 = v115;
  v196 = v219;
  v116 = _s10FinanceKit21CascadeExtractedOrderV7AddressV2eeoiySbAE_AEtFZ_0(&v201, &v196);
  v188 = v198;
  v189 = v199;
  v190 = v200;
  v186 = v196;
  v187 = v197;
  sub_1B7205588(&v214, &v191, &qword_1EB99AE50);
  sub_1B7205588(&v219, &v191, &qword_1EB99AE50);
  sub_1B7205588(&v224, &v191, &qword_1EB99AE50);
  sub_1B76961E4(&v186);
  v193 = v203;
  v194 = v204;
  v195 = v205;
  v191 = v201;
  v192 = v202;
  sub_1B76961E4(&v191);
  v196 = v108;
  v197 = v210;
  v198 = v211;
  v199 = v212;
  v200 = v213;
  sub_1B7205418(&v196, &qword_1EB99AE50);
  if ((v116 & 1) == 0)
  {
    return 0;
  }

LABEL_91:
  if ((sub_1B731D48C(*(a1 + v185[19]), *(a2 + v185[19])) & 1) == 0 || (sub_1B7320FD8(*(a1 + v185[20]), *(a2 + v185[20])) & 1) == 0 || (sub_1B731D168(*(a1 + v185[21]), *(a2 + v185[21])) & 1) == 0)
  {
    return 0;
  }

  v117 = v185[22];
  v118 = *(a1 + v117);
  v167 = *(a1 + v117 + 8);
  v119 = *(a1 + v117 + 16);
  v169 = v118;
  v170 = v119;
  v120 = *(a1 + v117 + 32);
  v168 = *(a1 + v117 + 24);
  v121 = *(a1 + v117 + 48);
  v171 = *(a1 + v117 + 40);
  v184 = v121;
  v122 = (a2 + v117);
  v123 = *v122;
  v124 = v122[1];
  v125 = v122[2];
  v126 = v122[3];
  v128 = v122[4];
  v127 = v122[5];
  v129 = v122[6];
  v164 = v127;
  v165 = v129;
  v166 = v120;
  if (!v120)
  {
    sub_1B74C6ADC(v169, v167, v170, v168, 0);
    if (!v128)
    {
      sub_1B74C6ADC(v123, v124, v125, v126, 0);
      sub_1B74C69A8(v169, v167, v170, v168, 0);
      goto LABEL_103;
    }

    sub_1B74C6ADC(v123, v124, v125, v126, v128);
LABEL_101:
    sub_1B74C69A8(v169, v167, v170, v168, v166);
    sub_1B74C69A8(v123, v124, v125, v126, v128);
    return 0;
  }

  *&v224 = v169;
  *(&v224 + 1) = v167;
  *&v225 = v170;
  *(&v225 + 1) = v168;
  *&v226 = v166;
  *(&v226 + 1) = v171;
  *&v227 = v184;
  if (!v128)
  {
    v135 = v167;
    v134 = v168;
    v136 = v166;
    sub_1B74C6ADC(v169, v167, v170, v168, v166);
    sub_1B74C6ADC(v123, v124, v125, v126, 0);
    sub_1B74C6ADC(v169, v135, v170, v134, v136);

    goto LABEL_101;
  }

  *&v201 = v123;
  *(&v201 + 1) = v124;
  LOBYTE(v202) = v125;
  *(&v202 + 1) = v126;
  *&v203 = v128;
  *(&v203 + 1) = v164;
  *&v204 = v165;
  sub_1B74C6ADC(v169, v167, v170, v168, v166);
  sub_1B74C6ADC(v123, v124, v125, v126, v128);
  v131 = v169;
  v130 = v170;
  v133 = v167;
  v132 = v168;
  sub_1B74C6ADC(v169, v167, v170, v168, v166);
  LODWORD(v165) = _s10FinanceKit15RawOrderBarcodeV2eeoiySbAC_ACtFZ_0(&v224, &v201);

  sub_1B74C69A8(v131, v133, v130, v132, v166);
  if ((v165 & 1) == 0)
  {
    return 0;
  }

LABEL_103:
  v137 = v185[23];
  v138 = *(v179 + 48);
  v139 = v183;
  sub_1B7205588(a1 + v137, v183, &qword_1EB99A4B8);
  sub_1B7205588(a2 + v137, v139 + v138, &qword_1EB99A4B8);
  v140 = *(v180 + 48);
  if (v140(v139, 1, v182) == 1)
  {
    if (v140(v183 + v138, 1, v182) == 1)
    {
      sub_1B7205418(v183, &qword_1EB99A4B8);
      goto LABEL_106;
    }

    goto LABEL_111;
  }

  v145 = v183;
  sub_1B7205588(v183, v181, &qword_1EB99A4B8);
  if (v140((v145 + v138), 1, v182) == 1)
  {
    sub_1B768D6C4(v181, type metadata accessor for RawOrderProvider);
LABEL_111:
    v84 = &qword_1EB99AFE0;
LABEL_127:
    v85 = v183;
    goto LABEL_77;
  }

  v146 = v177;
  sub_1B768D65C(v183 + v138, v177, type metadata accessor for RawOrderProvider);
  if ((*v181 != *v146 || v181[1] != v146[1]) && (sub_1B78020F8() & 1) == 0 || (v181[2] != v177[2] || v181[3] != v177[3]) && (sub_1B78020F8() & 1) == 0 || (v181[4] != v177[4] || v181[5] != v177[5]) && (sub_1B78020F8() & 1) == 0)
  {
    sub_1B768D6C4(v177, type metadata accessor for RawOrderProvider);
    sub_1B768D6C4(v181, type metadata accessor for RawOrderProvider);
    v84 = &qword_1EB99A4B8;
    goto LABEL_127;
  }

  v147 = v181;
  v148 = v177;
  v149 = sub_1B77FF458();
  sub_1B768D6C4(v148, type metadata accessor for RawOrderProvider);
  sub_1B768D6C4(v147, type metadata accessor for RawOrderProvider);
  sub_1B7205418(v183, &qword_1EB99A4B8);
  if ((v149 & 1) == 0)
  {
    return 0;
  }

LABEL_106:
  v141 = v185[24];
  v142 = *(v175 + 48);
  v143 = v178;
  sub_1B7205588(a1 + v141, v178, &unk_1EB994C70);
  sub_1B7205588(a2 + v141, v143 + v142, &unk_1EB994C70);
  v144 = *(v173 + 48);
  if (v144(v143, 1, v172) != 1)
  {
    v150 = v178;
    sub_1B7205588(v178, v176, &unk_1EB994C70);
    if (v144(v150 + v142, 1, v172) != 1)
    {
      v151 = v173;
      v152 = v174;
      v153 = v178;
      v154 = v178 + v142;
      v155 = v172;
      (*(v173 + 32))(v174, v154, v172);
      sub_1B719BD38(&qword_1EB990310, MEMORY[0x1E6968FB0]);
      v156 = v176;
      v157 = sub_1B7800828();
      v158 = *(v151 + 8);
      v158(v152, v155);
      v158(v156, v155);
      sub_1B7205418(v153, &unk_1EB994C70);
      if ((v157 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_129;
    }

    (*(v173 + 8))(v176, v172);
    goto LABEL_125;
  }

  if (v144(v178 + v142, 1, v172) != 1)
  {
LABEL_125:
    v84 = &qword_1EB991C30;
    v85 = v178;
    goto LABEL_77;
  }

  sub_1B7205418(v178, &unk_1EB994C70);
LABEL_129:
  v159 = v185[25];
  v160 = (a1 + v159);
  v161 = *(a1 + v159 + 8);
  v162 = (a2 + v159);
  v163 = v162[1];
  if (v161)
  {
    if (!v163 || (*v160 != *v162 || v161 != v163) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }

    return *(a1 + v185[26]) == *(a2 + v185[26]);
  }

  if (!v163)
  {
    return *(a1 + v185[26]) == *(a2 + v185[26]);
  }

  return 0;
}

uint64_t sub_1B76950C8()
{
  v0 = sub_1B7802178();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B769511C(uint64_t a1)
{
  v36 = type metadata accessor for RawOrderPickupFulfillment();
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for RawOrderShippingFulfillment();
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for RawOrderFulfillment();
  v5 = *(v39 - 8);
  v6 = MEMORY[0x1EEE9AC00](v39);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - v10;
  if (a1)
  {
    v40[3] = MEMORY[0x1E69E7CD0];
    v12 = *(a1 + 16);
    if (v12)
    {
      v32 = v1;
      v40[0] = MEMORY[0x1E69E7CC0];
      sub_1B71FDB50(0, v12, 0);
      v13 = v40[0];
      v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v37 = *(v5 + 72);
      v38 = v8;
      do
      {
        sub_1B76929E8(v14, v11, type metadata accessor for RawOrderFulfillment);
        sub_1B76929E8(v11, v8, type metadata accessor for RawOrderFulfillment);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = v35;
          sub_1B768D65C(v8, v35, type metadata accessor for RawOrderPickupFulfillment);
          v16 = (v15 + *(v36 + 60));
          v17 = *v16;
          v18 = v16[1];

          v19 = type metadata accessor for RawOrderPickupFulfillment;
        }

        else
        {
          v15 = v33;
          sub_1B768D65C(v8, v33, type metadata accessor for RawOrderShippingFulfillment);
          v20 = (v15 + *(v34 + 64));
          v17 = *v20;
          v18 = v20[1];

          v19 = type metadata accessor for RawOrderShippingFulfillment;
        }

        sub_1B768D6C4(v15, v19);
        result = sub_1B768D6C4(v11, type metadata accessor for RawOrderFulfillment);
        v40[0] = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          result = sub_1B71FDB50((v21 > 1), v22 + 1, 1);
          v13 = v40[0];
        }

        *(v13 + 16) = v23;
        v24 = v13 + 16 * v22;
        *(v24 + 32) = v17;
        *(v24 + 40) = v18;
        v8 = v38;
        v14 += v37;
        --v12;
      }

      while (v12);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v23 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    v25 = (v13 + 40);
    v26 = -v23;
    v27 = -1;
    while (1)
    {
      if (v26 + v27 == -1)
      {
      }

      if (++v27 >= *(v13 + 16))
      {
        break;
      }

      v28 = v25 + 2;
      v29 = *(v25 - 1);
      v30 = *v25;

      LOBYTE(v29) = sub_1B724E408(v40, v29, v30);

      v25 = v28;
      if ((v29 & 1) == 0)
      {

        sub_1B7695530();
        swift_allocError();
        *v31 = 2;
        return swift_willThrow();
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B7695530()
{
  result = qword_1EB99AF50;
  if (!qword_1EB99AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF50);
  }

  return result;
}

uint64_t sub_1B7695584(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B77FF4C8();
  if (v5 && (sub_1B7205210(), v6 = sub_1B78017F8(), , !v6) || (a4 & 1) != 0)
  {
    result = sub_1B78009A8();
    if (result >= 16)
    {
      return result;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_1B7695530();
  swift_allocError();
  *v9 = v7;
  return swift_willThrow();
}

unint64_t sub_1B769567C()
{
  result = qword_1EB99AF58;
  if (!qword_1EB99AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF58);
  }

  return result;
}

unint64_t sub_1B76956D4()
{
  result = qword_1EB99AF60;
  if (!qword_1EB99AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF60);
  }

  return result;
}

unint64_t sub_1B769572C()
{
  result = qword_1EB99AF68;
  if (!qword_1EB99AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF68);
  }

  return result;
}

void sub_1B769580C()
{
  type metadata accessor for RawMerchant();
  if (v0 <= 0x3F)
  {
    sub_1B7695C34(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B7695C34(319, qword_1EDAF6EF0, &type metadata for RawOrderChangeNotificationsValue, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B77FF988();
        if (v3 <= 0x3F)
        {
          sub_1B77FF4F8();
          if (v4 <= 0x3F)
          {
            sub_1B7695C34(319, &qword_1EDAF89A8, &type metadata for RawOrderPayment, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1B7695C84(319, qword_1EDAF8860, type metadata accessor for RawOrderReturnInfo, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1B7695C84(319, &qword_1EDAF64F0, type metadata accessor for RawOrderReturn, MEMORY[0x1E69E62F8]);
                if (v7 <= 0x3F)
                {
                  sub_1B7695C84(319, &qword_1EDAF64D8, type metadata accessor for RawOrderFulfillment, MEMORY[0x1E69E62F8]);
                  if (v8 <= 0x3F)
                  {
                    sub_1B7695C34(319, &unk_1EDAF8950, &type metadata for RawOrderCustomer, MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      sub_1B7695C34(319, &qword_1EDAF64E8, &type metadata for RawOrderLineItem, MEMORY[0x1E69E62F8]);
                      if (v10 <= 0x3F)
                      {
                        sub_1B7695C84(319, &qword_1EDAF64E0, type metadata accessor for RawOrderApplication, MEMORY[0x1E69E62F8]);
                        if (v11 <= 0x3F)
                        {
                          sub_1B7695C34(319, &qword_1EDAFA080, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
                          if (v12 <= 0x3F)
                          {
                            sub_1B7695C34(319, qword_1EDAF89B0, &type metadata for RawOrderBarcode, MEMORY[0x1E69E6720]);
                            if (v13 <= 0x3F)
                            {
                              sub_1B7695C84(319, qword_1EDAF8908, type metadata accessor for RawOrderProvider, MEMORY[0x1E69E6720]);
                              if (v14 <= 0x3F)
                              {
                                sub_1B7695C84(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
                                if (v15 <= 0x3F)
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

void sub_1B7695C34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B7695C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B7695CE8()
{
  result = type metadata accessor for RawOrderFulfillment();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RawOrderReturn();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RawECommerceOrderContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RawECommerceOrderContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7695ED0()
{
  result = qword_1EB99AF90;
  if (!qword_1EB99AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF90);
  }

  return result;
}

unint64_t sub_1B7695F28()
{
  result = qword_1EB99AF98;
  if (!qword_1EB99AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AF98);
  }

  return result;
}

unint64_t sub_1B7695F80()
{
  result = qword_1EB99AFA0;
  if (!qword_1EB99AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AFA0);
  }

  return result;
}

unint64_t sub_1B7695FD4()
{
  result = qword_1EB99AFA8;
  if (!qword_1EB99AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AFA8);
  }

  return result;
}

unint64_t sub_1B7696028()
{
  result = qword_1EB99AFB0;
  if (!qword_1EB99AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AFB0);
  }

  return result;
}

unint64_t sub_1B769607C()
{
  result = qword_1EB99AFC0;
  if (!qword_1EB99AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AF00);
    sub_1B719BD38(&qword_1EB99AFC8, type metadata accessor for RawOrderFulfillment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AFC0);
  }

  return result;
}

unint64_t sub_1B7696130()
{
  result = qword_1EB99AFD0;
  if (!qword_1EB99AFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99AEE8);
    sub_1B719BD38(&qword_1EB99AFD8, type metadata accessor for RawOrderReturn);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99AFD0);
  }

  return result;
}

uint64_t ManagedTransaction.displayDescription.getter()
{
  v1 = [v0 merchantName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B7800868();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [v0 transactionDescription];
  v7 = sub_1B7800868();
  v9 = v8;

  TransactionType.init(rawValue:)([v0 transactionTypeValue]);
  v10 = sub_1B7696334(v3, v5, v7, v9);

  return v10;
}

uint64_t sub_1B7696334(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a3;
  if (a2)
  {
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v4 = a1;
LABEL_9:

      return v4;
    }
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  return TransactionType.localizedDescription.getter();
}

uint64_t InternalTransaction.displayDescription.getter()
{
  v1 = type metadata accessor for InternalTransaction(0);
  v2 = (v0 + *(v1 + 52));
  v3 = v2[1];
  v4 = (v0 + *(v1 + 56));
  v6 = *v4;
  v5 = v4[1];
  if (!v3)
  {
    goto LABEL_6;
  }

  v7 = *v2;
  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = v7;

    return v9;
  }

  else
  {
LABEL_6:
    v11 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v11 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      return v6;
    }

    else
    {
      return TransactionType.localizedDescription.getter();
    }
  }
}

void sub_1B7696478(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7280900(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedLabRequest.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedLabRequest.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedLabRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedLabRequest.__allocating_init(success:date:context:)(char a1, uint64_t a2, void *a3)
{
  v4 = sub_1B7696BA4(a1, a2, a3);

  return v4;
}

id ManagedLabRequest.__allocating_init(lastSuccessDate:lastFailureDate:failedAttemptCount:context:)(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = v4;
  v25 = a3;
  v26 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24[-v12];
  v14 = [objc_allocWithZone(v5) initWithContext_];
  v27 = a1;
  sub_1B7280900(a1, v13);
  v15 = sub_1B77FF988();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v19 = v14;
  v20 = 0;
  if (v18 != 1)
  {
    v20 = sub_1B77FF8B8();
    (*(v16 + 8))(v13, v15);
  }

  [v19 setLastSuccessDate_];

  v21 = v26;
  sub_1B7280900(v26, v11);
  if (v17(v11, 1, v15) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_1B77FF8B8();
    (*(v16 + 8))(v11, v15);
  }

  [v19 setLastFailureDate_];

  [v19 setFailedAttemptCount_];
  sub_1B71F31EC(v21);
  sub_1B71F31EC(v27);
  return v19;
}

void static ManagedLabRequest.insertOrUpdate(for:success:date:context:)(void *a1, char a2, uint64_t a3, void *a4)
{
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 labRequestObject];
  if (!v12)
  {
    (*(v9 + 16))(v11, a3, v8);
    v14 = a4;
    v15 = sub_1B7696BA4(a2 & 1, v11, v14);

    [a1 setLabRequestObject_];
    return;
  }

  v19 = v12;
  if (a2)
  {
    [v12 setFailedAttemptCount_];
    v13 = sub_1B77FF8B8();
    [v19 setLastSuccessDate_];
  }

  else
  {
    v16 = [v12 failedAttemptCount];
    if ((v16 + 1) != v16 + 1)
    {
      __break(1u);
      return;
    }

    [v19 setFailedAttemptCount_];
    v13 = sub_1B77FF8B8();
    [v19 setLastFailureDate_];
  }

  v17 = v19;
}

id static ManagedLabRequest.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedLabRequest;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id sub_1B7696BA4(char a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v31 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v31 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - v15;
  v17 = sub_1B77FF988();
  v18 = *(v17 - 8);
  v34 = v14;
  v35 = a2;
  if (a1)
  {
    (*(v18 + 16))(v16, a2, v17);
    v19 = *(v18 + 56);
    v19(v16, 0, 1, v17);
    v19(v14, 1, 1, v17);
    v33 = 0;
  }

  else
  {
    v31[0] = v8;
    v20 = *(v18 + 56);
    v33 = 1;
    v20(v16, 1, 1, v17);
    (*(v18 + 16))(v14, a2, v17);
    v20(v14, 0, 1, v17);
    v8 = v31[0];
  }

  v21 = objc_allocWithZone(v31[1]);
  v22 = [v21 initWithContext_];
  sub_1B7280900(v16, v11);
  sub_1B77FF988();
  v23 = v18;
  v24 = *(v18 + 48);
  v25 = v24(v11, 1, v17);
  v26 = v22;
  v27 = 0;
  if (v25 != 1)
  {
    v27 = sub_1B77FF8B8();
    (*(v23 + 8))(v11, v17);
  }

  [v26 setLastSuccessDate_];

  v28 = v34;
  sub_1B7280900(v34, v8);
  if (v24(v8, 1, v17) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_1B77FF8B8();
    (*(v23 + 8))(v8, v17);
  }

  [v26 setLastFailureDate_];

  [v26 setFailedAttemptCount_];
  (*(v23 + 8))(v35, v17);
  sub_1B71F31EC(v28);
  sub_1B71F31EC(v16);
  return v26;
}