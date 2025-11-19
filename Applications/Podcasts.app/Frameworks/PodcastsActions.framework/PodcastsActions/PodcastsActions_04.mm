uint64_t sub_62624(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_57D58;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_62758;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_62758()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4 + *(v3 + 48);
  sub_4DC8C(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_62AF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_E53E4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_62B34(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v4 = *a1;
  v5 = a1[1];

  return sub_E53F4();
}

uint64_t sub_62BC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_62BFC(char *a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v4 = *a1;
  return sub_E53F4();
}

uint64_t sub_62C48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_62D18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_62DC8()
{
  sub_5041C(319, &qword_12E680);
  if (v0 <= 0x3F)
  {
    sub_62F90();
    if (v1 <= 0x3F)
    {
      sub_58F2C();
      if (v2 <= 0x3F)
      {
        sub_62FF8(319, &qword_12EAB8, &qword_12EAC0, &qword_ECC30, sub_59150);
        if (v3 <= 0x3F)
        {
          sub_62FF8(319, &qword_12EAD0, &qword_131EE0, &unk_F5BE0, sub_59204);
          if (v4 <= 0x3F)
          {
            sub_62FF8(319, &qword_12EB20, &qword_12E988, &qword_EC5B0, sub_630B0);
            if (v5 <= 0x3F)
            {
              sub_63134();
              if (v6 <= 0x3F)
              {
                sub_5041C(319, &unk_12E6B8);
                if (v7 <= 0x3F)
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

void sub_62F90()
{
  if (!qword_12E688)
  {
    sub_4ABC(255, &qword_12E090, NSManagedObjectID_ptr);
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_12E688);
    }
  }
}

void sub_62FF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_E54C4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_63068(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_630B0()
{
  result = qword_12EB28;
  if (!qword_12EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E988, &qword_EC5B0);
    sub_503C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EB28);
  }

  return result;
}

void sub_63134()
{
  if (!qword_12E6B0)
  {
    sub_E5FD4();
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_12E6B0);
    }
  }
}

uint64_t type metadata accessor for WarmupAudioQueueResult()
{
  result = qword_12F060;
  if (!qword_12F060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_63288()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_145600);
  __swift_project_value_buffer(v0, qword_145600);
  return sub_E57B4();
}

uint64_t sub_633BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB38 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_145600);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_63468()
{
  result = qword_12EFF0;
  if (!qword_12EFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12EFF8, &qword_ED828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EFF0);
  }

  return result;
}

uint64_t sub_634CC(uint64_t a1)
{
  v2 = sub_45ED4(&qword_12E220);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_63568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_E56B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_635DC(uint64_t a1)
{
  v2 = sub_45ED4(&qword_12EFE8);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_63658(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_E56B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_63718(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_E56B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_637BC()
{
  result = sub_E56B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_63840()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12F098);
  __swift_project_value_buffer(v0, qword_12F098);
  return sub_E57B4();
}

uint64_t static AudioActivity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB40 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_63958()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F118, &qword_EDC70);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130840, &qword_EDC78);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_ED920;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_E5644();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_E5644();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_E5644();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_E5644();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_E5644();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_E5644();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_E5644();
  v12 = *(v0 + 48);
  v4[7 * v1] = 7;
  sub_E5644();
  v13 = *(v0 + 48);
  v4[8 * v1] = 8;
  sub_E5644();
  v14 = *(v0 + 48);
  v4[9 * v1] = 9;
  sub_E5644();
  v15 = *(v0 + 48);
  v4[10 * v1] = 10;
  sub_E5644();
  v16 = *(v0 + 48);
  v4[11 * v1] = 11;
  sub_E5644();
  v17 = *(v0 + 48);
  v4[12 * v1] = 12;
  sub_E5644();
  v18 = *(v0 + 48);
  v4[13 * v1] = 13;
  sub_E5644();
  v19 = *(v0 + 48);
  v4[14 * v1] = 14;
  sub_E5644();
  v20 = *(v0 + 48);
  v4[15 * v1] = 15;
  sub_E5644();
  v21 = *(v0 + 48);
  v4[16 * v1] = 16;
  sub_E5644();
  v22 = *(v0 + 48);
  v4[17 * v1] = 17;
  sub_E5644();
  v23 = *(v0 + 48);
  v4[18 * v1] = 18;
  sub_E5644();
  v24 = *(v0 + 48);
  v4[19 * v1] = 19;
  sub_E5644();
  v25 = *(v0 + 48);
  v4[20 * v1] = 20;
  sub_E5644();
  v26 = *(v0 + 48);
  v4[21 * v1] = 21;
  sub_E5644();
  v27 = *(v0 + 48);
  v4[22 * v1] = 22;
  sub_E5644();
  v28 = *(v0 + 48);
  v4[23 * v1] = 23;
  sub_E5644();
  v29 = *(v0 + 48);
  v4[24 * v1] = 24;
  sub_E5644();
  v30 = *(v0 + 48);
  v4[25 * v1] = 25;
  sub_E5644();
  v31 = *(v0 + 48);
  v4[26 * v1] = 26;
  sub_E5644();
  v32 = *(v0 + 48);
  v4[27 * v1] = 27;
  sub_E5644();
  v33 = *(v0 + 48);
  v4[28 * v1] = 28;
  sub_E5644();
  v34 = *(v0 + 48);
  v4[29 * v1] = 29;
  sub_E5644();
  v35 = *(v0 + 48);
  v4[30 * v1] = 30;
  sub_E5644();
  v36 = *(v0 + 48);
  v4[31 * v1] = 31;
  sub_E5644();
  v37 = *(v0 + 48);
  v4[32 * v1] = 32;
  sub_E5644();
  v38 = sub_B0694(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12F0B0 = v38;
  return result;
}

uint64_t static AudioActivity.caseDisplayRepresentations.getter()
{
  if (qword_12CB48 != -1)
  {
    swift_once();
  }
}

PodcastsActions::AudioActivity_optional __swiftcall AudioActivity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_E7C04();

  v5 = 0;
  v6 = 15;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
      goto LABEL_25;
    case 14:
      v5 = 14;
LABEL_25:
      v6 = v5;
      break;
    case 15:
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    default:
      v6 = 33;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t AudioActivity.rawValue.getter()
{
  result = 0x6975636562726162;
  switch(*v0)
  {
    case 1:
      return 0x7961446863616562;
    case 2:
      return 0x676E696E61656C63;
    case 3:
      v4 = 0x74756D6D6F63;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 4:
      v2 = 1802465123;
      goto LABEL_33;
    case 5:
      v2 = 1818458467;
      goto LABEL_33;
    case 6:
      return 0x65636E6164;
    case 7:
      return 0x676E696E6964;
    case 8:
      v2 = 1986622052;
      goto LABEL_33;
    case 9:
      return 0x676E697375636F66;
    case 0xA:
      return 0x676E696D6167;
    case 0xB:
      v4 = 0x6E6564726167;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 0xC:
      return 1953065320;
    case 0xD:
      return 0x6341726F6F646E69;
    case 0xE:
      return 0x697461746964656DLL;
    case 0xF:
      return 0x41726F6F6474756FLL;
    case 0x10:
      v3 = 1953653104;
      return v3 | 0x676E697900000000;
    case 0x11:
      v2 = 1684104562;
      goto LABEL_33;
    case 0x12:
      return 0x676E6978616C6572;
    case 0x13:
      return 0x7069725464616F72;
    case 0x14:
      return 0x676E69776F72;
    case 0x15:
      v2 = 1852732786;
      goto LABEL_33;
    case 0x16:
      v4 = 0x7265776F6873;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 0x17:
      return 0x676E697065656C73;
    case 0x18:
      return 0x6874676E65727473;
    case 0x19:
      v3 = 1685419123;
      return v3 | 0x676E697900000000;
    case 0x1A:
      v4 = 0x6C6576617274;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 0x1B:
      v2 = 1802264951;
      goto LABEL_33;
    case 0x1C:
      v2 = 1802661751;
LABEL_33:
      result = v2 | 0x676E6900000000;
      break;
    case 0x1D:
      result = 0xD000000000000014;
      break;
    case 0x1E:
      result = 0xD000000000000013;
      break;
    case 0x1F:
      result = 0xD000000000000016;
      break;
    case 0x20:
      result = 1634168697;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_64658(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AudioActivity.rawValue.getter();
  v4 = v3;
  if (v2 == AudioActivity.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_E7BD4();
  }

  return v7 & 1;
}

unint64_t sub_646F8()
{
  result = qword_12F0B8;
  if (!qword_12F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0B8);
  }

  return result;
}

Swift::Int sub_6474C()
{
  v1 = *v0;
  sub_E7CC4();
  AudioActivity.rawValue.getter();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_647B4()
{
  v2 = *v0;
  AudioActivity.rawValue.getter();
  sub_E7124();
}

Swift::Int sub_64818()
{
  v1 = *v0;
  sub_E7CC4();
  AudioActivity.rawValue.getter();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_64888@<X0>(uint64_t *a1@<X8>)
{
  result = AudioActivity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_648B4()
{
  result = qword_12F0C0;
  if (!qword_12F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0C0);
  }

  return result;
}

unint64_t sub_6490C()
{
  result = qword_12F0C8;
  if (!qword_12F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0C8);
  }

  return result;
}

unint64_t sub_64964()
{
  result = qword_12F0D0;
  if (!qword_12F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0D0);
  }

  return result;
}

unint64_t sub_649BC()
{
  result = qword_12F0D8;
  if (!qword_12F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0D8);
  }

  return result;
}

unint64_t sub_64A14()
{
  result = qword_12F0E0;
  if (!qword_12F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0E0);
  }

  return result;
}

unint64_t sub_64A70()
{
  result = qword_12F0E8;
  if (!qword_12F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0E8);
  }

  return result;
}

uint64_t sub_64B14(uint64_t a1)
{
  v2 = sub_50A6C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_64B64()
{
  result = qword_12F0F0;
  if (!qword_12F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0F0);
  }

  return result;
}

unint64_t sub_64BBC()
{
  result = qword_12F0F8;
  if (!qword_12F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0F8);
  }

  return result;
}

unint64_t sub_64C14()
{
  result = qword_12F100;
  if (!qword_12F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F100);
  }

  return result;
}

uint64_t sub_64C68(uint64_t a1)
{
  v2 = sub_64A70();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_64CB8()
{
  result = qword_12F108;
  if (!qword_12F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F110, &qword_EDB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F108);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioActivity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioActivity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_64E84()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12F120);
  __swift_project_value_buffer(v0, qword_12F120);
  return sub_E57B4();
}

uint64_t static InvocationSource.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB50 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F120);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_64F90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F1A0, &qword_EDF50);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130830, &qword_EDF58);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E9EF0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_E5644();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_E5644();
  v7 = sub_B087C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12F138 = v7;
  return result;
}

uint64_t static InvocationSource.caseDisplayRepresentations.getter()
{
  if (qword_12CB58 != -1)
  {
    swift_once();
  }
}

PodcastsActions::InvocationSource_optional __swiftcall InvocationSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_11FF10;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t InvocationSource.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6574736567677573;
  }

  else
  {
    result = 0x74696E4972657375;
  }

  *v0;
  return result;
}

uint64_t sub_65214(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574736567677573;
  }

  else
  {
    v4 = 0x74696E4972657375;
  }

  if (v3)
  {
    v5 = 0xED00006465746169;
  }

  else
  {
    v5 = 0xEE00707041794264;
  }

  if (*a2)
  {
    v6 = 0x6574736567677573;
  }

  else
  {
    v6 = 0x74696E4972657375;
  }

  if (*a2)
  {
    v7 = 0xEE00707041794264;
  }

  else
  {
    v7 = 0xED00006465746169;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_E7BD4();
  }

  return v9 & 1;
}

unint64_t sub_652D8()
{
  result = qword_12F140;
  if (!qword_12F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F140);
  }

  return result;
}

Swift::Int sub_6532C()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_653C8()
{
  *v0;
  sub_E7124();
}

Swift::Int sub_65450()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_654E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_11FF10;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_65548(uint64_t *a1@<X8>)
{
  v2 = 0x74696E4972657375;
  if (*v1)
  {
    v2 = 0x6574736567677573;
  }

  v3 = 0xED00006465746169;
  if (*v1)
  {
    v3 = 0xEE00707041794264;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_655A4()
{
  result = qword_12F148;
  if (!qword_12F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F148);
  }

  return result;
}

unint64_t sub_655FC()
{
  result = qword_12F150;
  if (!qword_12F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F150);
  }

  return result;
}

unint64_t sub_65654()
{
  result = qword_12F158;
  if (!qword_12F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F158);
  }

  return result;
}

unint64_t sub_656AC()
{
  result = qword_12F160;
  if (!qword_12F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F160);
  }

  return result;
}

unint64_t sub_65704()
{
  result = qword_12F168;
  if (!qword_12F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F168);
  }

  return result;
}

unint64_t sub_65760()
{
  result = qword_12F170;
  if (!qword_12F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F170);
  }

  return result;
}

uint64_t sub_65804(uint64_t a1)
{
  v2 = sub_50A18();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_65854()
{
  result = qword_12F178;
  if (!qword_12F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F178);
  }

  return result;
}

unint64_t sub_658AC()
{
  result = qword_12F180;
  if (!qword_12F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F180);
  }

  return result;
}

unint64_t sub_65904()
{
  result = qword_12F188;
  if (!qword_12F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F188);
  }

  return result;
}

uint64_t sub_65958(uint64_t a1)
{
  v2 = sub_65760();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_659A8()
{
  result = qword_12F190;
  if (!qword_12F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F198, &qword_EDED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F190);
  }

  return result;
}

uint64_t sub_65A34()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12F1A8);
  __swift_project_value_buffer(v0, qword_12F1A8);
  return sub_E57B4();
}

uint64_t static PlaybackAttributes.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB60 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F1A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static PlaybackAttributes.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_12CB60 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F1A8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PlaybackAttributes.typeDisplayRepresentation.modify())()
{
  if (qword_12CB60 != -1)
  {
    swift_once();
  }

  v0 = sub_E57C4();
  __swift_project_value_buffer(v0, qword_12F1A8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_65CE0(uint64_t a1)
{
  if (qword_12CB60 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F1A8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_65DA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F238, &qword_EE230);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130820, &qword_EE238);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E9EF0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_E5644();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_E5644();
  v7 = sub_B0A64(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12F1C0 = v7;
  return result;
}

uint64_t static PlaybackAttributes.caseDisplayRepresentations.getter()
{
  if (qword_12CB68 != -1)
  {
    swift_once();
  }
}

PodcastsActions::PlaybackAttributes_optional __swiftcall PlaybackAttributes.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_11FFB0;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t PlaybackAttributes.rawValue.getter()
{
  if (*v0)
  {
    result = 0x746165706572;
  }

  else
  {
    result = 0x656C6666756873;
  }

  *v0;
  return result;
}

uint64_t sub_66008(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746165706572;
  }

  else
  {
    v4 = 0x656C6666756873;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x746165706572;
  }

  else
  {
    v6 = 0x656C6666756873;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_E7BD4();
  }

  return v9 & 1;
}

unint64_t sub_660B0()
{
  result = qword_12F1C8;
  if (!qword_12F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1C8);
  }

  return result;
}

Swift::Int sub_66104()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_66184()
{
  *v0;
  sub_E7124();
}

Swift::Int sub_661F0()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_6626C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_11FFB0;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_662CC(uint64_t *a1@<X8>)
{
  v2 = 0x656C6666756873;
  if (*v1)
  {
    v2 = 0x746165706572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_6630C()
{
  result = qword_12F1D0;
  if (!qword_12F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1D0);
  }

  return result;
}

unint64_t sub_66364()
{
  result = qword_12F1D8;
  if (!qword_12F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1D8);
  }

  return result;
}

unint64_t sub_663BC()
{
  result = qword_12F1E0;
  if (!qword_12F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1E0);
  }

  return result;
}

unint64_t sub_66414()
{
  result = qword_12F1E8;
  if (!qword_12F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1E8);
  }

  return result;
}

unint64_t sub_6646C()
{
  result = qword_12F1F0;
  if (!qword_12F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1F0);
  }

  return result;
}

unint64_t sub_664C4()
{
  result = qword_12F1F8;
  if (!qword_12F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1F8);
  }

  return result;
}

unint64_t sub_6651C()
{
  result = qword_12F200;
  if (!qword_12F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F200);
  }

  return result;
}

unint64_t sub_665C0()
{
  result = qword_12F208;
  if (!qword_12F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F208);
  }

  return result;
}

uint64_t sub_66614(uint64_t a1)
{
  v2 = sub_665C0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_66664()
{
  result = qword_12F210;
  if (!qword_12F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F210);
  }

  return result;
}

unint64_t sub_666BC()
{
  result = qword_12F218;
  if (!qword_12F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F218);
  }

  return result;
}

unint64_t sub_66714()
{
  result = qword_12F220;
  if (!qword_12F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F220);
  }

  return result;
}

uint64_t sub_66768(uint64_t a1)
{
  v2 = sub_6651C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_667B8()
{
  result = qword_12F228;
  if (!qword_12F228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F230, &qword_EE1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F228);
  }

  return result;
}

uint64_t sub_6684C()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_145618);
  __swift_project_value_buffer(v0, qword_145618);
  return sub_E57B4();
}

uint64_t sub_668B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2B0, &qword_EE508);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2B8, qword_EE510);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_EB2E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_E5644();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_E5644();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_E5644();
  v8 = sub_B0C4C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_145630 = v8;
  return result;
}

uint64_t sub_66A2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1818845556;
  if (v2 != 1)
  {
    v5 = 0x726574616CLL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1954047342;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1818845556;
  if (*a2 != 1)
  {
    v8 = 0x726574616CLL;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1954047342;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_E7BD4();
  }

  return v11 & 1;
}

unint64_t sub_66B10()
{
  result = qword_12F240;
  if (!qword_12F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F240);
  }

  return result;
}

Swift::Int sub_66B64()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_66BF4()
{
  *v0;
  *v0;
  sub_E7124();
}

Swift::Int sub_66C70()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_66CFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_673B0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_66D2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1818845556;
  if (v2 != 1)
  {
    v5 = 0x726574616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1954047342;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_66D7C()
{
  result = qword_12F248;
  if (!qword_12F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F248);
  }

  return result;
}

unint64_t sub_66DD4()
{
  result = qword_12F250;
  if (!qword_12F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F250);
  }

  return result;
}

unint64_t sub_66E2C()
{
  result = qword_12F258;
  if (!qword_12F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F258);
  }

  return result;
}

unint64_t sub_66E84()
{
  result = qword_12F260;
  if (!qword_12F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F260);
  }

  return result;
}

unint64_t sub_66EDC()
{
  result = qword_12F268;
  if (!qword_12F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F268);
  }

  return result;
}

unint64_t sub_66F34()
{
  result = qword_12F270;
  if (!qword_12F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F270);
  }

  return result;
}

unint64_t sub_66F8C()
{
  result = qword_12F278;
  if (!qword_12F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F278);
  }

  return result;
}

uint64_t sub_66FE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB70 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_145618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_670D8()
{
  result = qword_12F280;
  if (!qword_12F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F280);
  }

  return result;
}

uint64_t sub_6712C(uint64_t a1)
{
  v2 = sub_670D8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_6717C()
{
  result = qword_12F288;
  if (!qword_12F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F288);
  }

  return result;
}

unint64_t sub_671D4()
{
  result = qword_12F290;
  if (!qword_12F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F290);
  }

  return result;
}

unint64_t sub_6722C()
{
  result = qword_12F298;
  if (!qword_12F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F298);
  }

  return result;
}

uint64_t sub_67280()
{
  if (qword_12CB78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_672DC(uint64_t a1)
{
  v2 = sub_66F8C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_6732C()
{
  result = qword_12F2A0;
  if (!qword_12F2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F2A8, &qword_EE498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2A0);
  }

  return result;
}

uint64_t sub_673B0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_120050;
  v6._object = a2;
  v4 = sub_E7B34(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_67408()
{
  result = qword_12F2C0;
  if (!qword_12F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2C0);
  }

  return result;
}

unint64_t sub_67460()
{
  result = qword_12F2C8;
  if (!qword_12F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2C8);
  }

  return result;
}

unint64_t sub_674B8()
{
  result = qword_12F2D0;
  if (!qword_12F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2D0);
  }

  return result;
}

uint64_t sub_6750C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_145638);
  __swift_project_value_buffer(v0, qword_145638);
  return sub_E5914();
}

uint64_t sub_67578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_145650);
  v1 = __swift_project_value_buffer(v0, qword_145650);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_67638(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = sub_E5D24();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v6 = *(v5 + 64) + 15;
  v2[19] = swift_task_alloc();
  v7 = sub_E6974();
  v2[20] = v7;
  v8 = *(v7 - 8);
  v2[21] = v8;
  v9 = *(v8 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v10 = *(*(type metadata accessor for AudioEntity() - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v11 = sub_E62C4();
  v2[26] = v11;
  v12 = *(v11 - 8);
  v2[27] = v12;
  v13 = *(v12 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_67844, 0, 0);
}

uint64_t sub_67844()
{
  v41 = v0;
  v1 = v0[30];
  v2 = v0[25];
  v3 = *(v0[15] + 32);
  sub_E5504();
  sub_4B104(v2, v1);
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[24];
  sub_E6914();
  v9 = *(v7 + 16);
  v0[31] = v9;
  v0[32] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v4, v6);
  v10 = sub_E6964();
  v11 = sub_E74D4();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[29];
  if (v12)
  {
    v36 = v11;
    v14 = v0[27];
    v15 = v0[28];
    v16 = v0[26];
    v37 = v0[21];
    v38 = v0[20];
    v39 = v0[24];
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v17 = 136315138;
    v9(v15, v13, v16);
    v18 = sub_E7084();
    v20 = v19;
    v21 = v10;
    v22 = *(v14 + 8);
    v22(v13, v16);
    v23 = sub_23E64(v18, v20, &v40);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_0, v21, v36, "Identified content to play: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);

    v24 = *(v37 + 8);
    v24(v39, v38);
  }

  else
  {
    v25 = v0[26];
    v26 = v0[27];
    v27 = v0[24];
    v28 = v0[20];
    v29 = v0[21];

    v22 = *(v26 + 8);
    v22(v13, v25);
    v24 = *(v29 + 8);
    v24(v27, v28);
  }

  v0[33] = v24;
  v0[34] = v22;
  v30 = *v0[15];
  sub_E51D4();
  v0[35] = v0[13];
  v31 = sub_E5D94();
  v32 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v33 = swift_task_alloc();
  v0[36] = v33;
  *v33 = v0;
  v33[1] = sub_67BC8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 12, v31, v31);
}

uint64_t sub_67BC8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 280);

  if (v0)
  {
    v6 = sub_68598;
  }

  else
  {
    v6 = sub_67CFC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_67CFC()
{
  v57 = v0;
  v1 = *(v0 + 120);
  *(v0 + 304) = *(v0 + 96);
  v2 = *(v1 + 24);
  sub_E5504();
  v3 = *(v0 + 344);
  if (v3 == 3)
  {
    v4 = *(v0 + 176);
    sub_E6914();
    v5 = sub_E6964();
    v6 = sub_E74D4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Starting playback immediately.", v7, 2u);
    }

    v8 = *(v0 + 264);
    v9 = *(v0 + 240);
    v50 = *(v0 + 248);
    v52 = *(v0 + 256);
    v10 = *(v0 + 224);
    v11 = *(v0 + 208);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = *(v0 + 160);
    v15 = *(v0 + 128);

    v8(v12, v14);
    v16 = sub_E5D34();
    *(v0 + 40) = v16;
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v50(v10, v9, v11);
    v18 = sub_E63C4();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_E73D4();
    sub_E61E4();
    (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, enum case for PlaybackController.QueueCommand.replace(_:), v16);
    v19 = *(&async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + 1);
    v53 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
    v20 = swift_task_alloc();
    *(v0 + 328) = v20;
    *v20 = v0;
    v20[1] = sub_68468;
    v21.n128_u64[0] = 5.0;

    return (v53)(v0 + 16, 0, v21);
  }

  else
  {
    v23 = *(v0 + 184);
    sub_E6914();
    v24 = sub_E6964();
    v25 = sub_E74D4();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 264);
    v28 = *(v0 + 184);
    v30 = *(v0 + 160);
    v29 = *(v0 + 168);
    v54 = v3;
    if (v26)
    {
      v51 = *(v0 + 264);
      v31 = swift_slowAlloc();
      v49 = v28;
      v32 = swift_slowAlloc();
      v56 = v32;
      *v31 = 136315138;
      *(v0 + 345) = v3;
      v33 = sub_E7084();
      v35 = sub_23E64(v33, v34, &v56);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v24, v25, "Inserting at queue position: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);

      v51(v49, v30);
    }

    else
    {

      v27(v28, v30);
    }

    v37 = *(v0 + 248);
    v36 = *(v0 + 256);
    v38 = *(v0 + 240);
    v39 = *(v0 + 208);
    v40 = *(v0 + 144);
    v41 = *(v0 + 152);
    v42 = *(v0 + 136);
    v43 = sub_E5D34();
    *(v0 + 80) = v43;
    *(v0 + 88) = &protocol witness table for PlaybackController.QueueCommand;
    v44 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    v37(v44, v38, v39);
    v45 = &enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
    if (v54)
    {
      v45 = &enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
    }

    (*(v40 + 104))(v41, *v45, v42);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F338, &qword_F2E90);
    (*(v40 + 32))(v44 + *(v46 + 48), v41, v42);
    (*(*(v43 - 8) + 104))(v44, enum case for PlaybackController.QueueCommand.addItemToQueue(_:), v43);
    v47 = *(&async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + 1);
    v55 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v48 = swift_task_alloc();
    *(v0 + 312) = v48;
    *v48 = v0;
    v48[1] = sub_68220;

    return (v55)(v0 + 56, 0);
  }
}

uint64_t sub_68220(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v7 = sub_6868C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v4 + 56));
    v7 = sub_68350;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_68350()
{
  v1 = v0[38];
  v2 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[16];
  v10 = v0[14];
  sub_E53A4();

  v2(v3, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_68468(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v7 = sub_68798;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v4 + 16));
    v7 = sub_695C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_68598()
{
  v1 = *(v0 + 216) + 8;
  (*(v0 + 272))(*(v0 + 240), *(v0 + 208));
  v2 = *(v0 + 296);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_6868C()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[26];
  v5 = v0[27];

  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[40];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v11 = v0[24];
  v10 = v0[25];
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[19];
  v15 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_68798()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[26];
  v5 = v0[27];

  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[42];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v11 = v0[24];
  v10 = v0[25];
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[19];
  v15 = v0[16];

  v16 = v0[1];

  return v16();
}

unint64_t sub_688A8()
{
  result = qword_12F2D8;
  if (!qword_12F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2D8);
  }

  return result;
}

unint64_t sub_68900()
{
  result = qword_12F2E0;
  if (!qword_12F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2E0);
  }

  return result;
}

uint64_t sub_689C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB80 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_145638);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_68A7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB88 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_145650);

  return sub_69558(v3, a1);
}

uint64_t sub_68B00(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_68BAC;

  return sub_67638(a1);
}

uint64_t sub_68BAC()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_68CA0@<D0>(uint64_t a1@<X8>)
{
  sub_68E3C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_68CE4(uint64_t a1)
{
  v2 = sub_674B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_68D34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_68D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_68DD8()
{
  result = qword_12F2E8;
  if (!qword_12F2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F2F0, &unk_EF770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2E8);
  }

  return result;
}

uint64_t sub_68E3C@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v54 = sub_E5774();
  v1 = *(v54 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v54);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F300, &qword_EE700);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v41 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v56 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v46 = sub_E5214();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F308, &qword_EE708);
  sub_E5914();
  v55 = sub_E5944();
  v20 = *(v55 - 8);
  v51 = *(v20 + 56);
  v52 = v20 + 56;
  v51(v19, 0, 1, v55);
  v21 = type metadata accessor for WarmupAudioQueueResult();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = sub_E5354();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v49 = v23 + 56;
  v24(v11, 1, 1, v22);
  v24(v9, 1, 1, v22);
  v50 = enum case for InputConnectionBehavior.default(_:);
  v43 = *(v1 + 104);
  v53 = v1 + 104;
  v25 = v54;
  v43(v4);
  sub_69510(&qword_12E220, type metadata accessor for WarmupAudioQueueResult);
  v26 = v9;
  v27 = v4;
  v45 = sub_E5564();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F310, &qword_EE710);
  sub_E5914();
  v28 = v51;
  v51(v19, 0, 1, v55);
  v57 = &_swiftEmptySetSingleton;
  v48 = v24;
  v24(v11, 1, 1, v22);
  v24(v26, 1, 1, v22);
  v42 = v27;
  v29 = v50;
  v30 = v25;
  v31 = v43;
  (v43)(v27, v50, v30);
  sub_665C0();
  v44 = sub_E5544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F318, &qword_EE718);
  sub_E5914();
  v28(v19, 0, 1, v55);
  LOBYTE(v57) = 3;
  v32 = v48;
  v48(v11, 1, 1, v22);
  v32(v26, 1, 1, v22);
  v33 = v42;
  v34 = v54;
  v31(v42, v29, v54);
  sub_670D8();
  v35 = v33;
  v36 = sub_E5544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F320, &qword_EE720);
  sub_E5914();
  v51(v19, 0, 1, v55);
  v48(v11, 1, 1, v22);
  v31(v35, v50, v34);
  sub_69510(&qword_12F328, type metadata accessor for AudioEntity);
  result = sub_E5534();
  v38 = v47;
  v39 = v44;
  v40 = v45;
  *v47 = v46;
  v38[1] = v40;
  v38[2] = v39;
  v38[3] = v36;
  v38[4] = result;
  return result;
}

uint64_t sub_69510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_69558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_695CC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F348);
  __swift_project_value_buffer(v0, qword_12F348);
  return sub_E5914();
}

uint64_t static DownloadEpisodesAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB90 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DownloadEpisodesAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static DownloadEpisodesAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F360, &qword_EE730);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F368, &qword_EE738);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_69904();
  sub_E5744();
  v5._object = 0x80000000000F6EB0;
  v5._countAndFlagsBits = 0xD000000000000013;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F378, &qword_EE768);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_69904()
{
  result = qword_12F370;
  if (!qword_12F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F370);
  }

  return result;
}

uint64_t sub_6997C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

uint64_t sub_699A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;

  sub_E51E4();
}

void (*DownloadEpisodesAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t FetchShowLatestEpisodesAppIntent.limit.getter()
{
  v1 = *(v0 + 8);
  sub_E5504();
  return v3;
}

uint64_t sub_69AB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;

  sub_E5514();
}

void (*DownloadEpisodesAppIntent.episodes.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t DownloadEpisodesAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v23 = sub_E5774();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v24 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F380, &qword_EE778);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v25 = 0;
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v9, 1, 1, v19);
  (*(v2 + 104))(v22, enum case for InputConnectionBehavior.default(_:), v23);
  sub_70530(&qword_12E000, type metadata accessor for EpisodeEntity);
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t DownloadEpisodesAppIntent.perform()(uint64_t a1)
{
  *(v2 + 56) = a1;
  v3 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v6 = sub_E6974();
  *(v2 + 88) = v6;
  v7 = *(v6 - 8);
  *(v2 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *v1;

  return _swift_task_switch(sub_6A08C, 0, 0);
}

uint64_t sub_6A08C()
{
  v43 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_E6914();

  v4 = sub_E6964();
  v5 = sub_E74D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = v0[12];
    v41 = v0[13];
    v8 = v0[11];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    sub_E5504();
    v12 = v0[6];
    v13 = sub_E7204();
    v15 = v14;

    v16 = sub_23E64(v13, v15, &v42);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v4, v5, "Received a request to download episodes: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);

    (*(v7 + 8))(v41, v8);
  }

  else
  {
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[15];
  sub_E5504();
  v21 = v0[5];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[9];
    v24 = v0[10];
    v42 = _swiftEmptyArrayStorage;
    sub_15D58(0, v22, 0);
    v25 = v42;
    v26 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v27 = *(v23 + 72);
    do
    {
      sub_6FAC8(v26, v0[10]);
      v28 = *(v24 + 64);
      if (v28)
      {
        v29 = 1;
        v30 = *(v24 + 64);
      }

      else
      {
        v29 = 0;
        v30 = *(v24 + 88);
      }

      v31 = v0[10];
      v32 = v28;
      sub_6FB2C(v31);
      v42 = v25;
      v34 = v25[2];
      v33 = v25[3];
      if (v34 >= v33 >> 1)
      {
        sub_15D58((v33 > 1), v34 + 1, 1);
        v25 = v42;
      }

      v25[2] = v34 + 1;
      v35 = &v25[3 * v34];
      v35[4] = v30;
      v35[5] = 0;
      *(v35 + 48) = v29;
      v26 += v27;
      --v22;
    }

    while (v22);
  }

  else
  {
    v36 = v0[5];

    v25 = _swiftEmptyArrayStorage;
  }

  v0[16] = v25;
  v37 = swift_task_alloc();
  v0[17] = v37;
  *v37 = v0;
  v37[1] = sub_6A3C8;
  v38 = v0[14];
  v39 = v0[15];

  return sub_6A670(sub_6A670, v25, v38, v39);
}

uint64_t sub_6A3C8()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_6A600;
  }

  else
  {
    v4 = sub_6A4F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6A4F8()
{
  v10 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  OpenAppLocationAppIntent.init()(v9);
  v4 = v9[0];
  v5 = v9[1];
  v6 = v9[2];
  *(v0 + 152) = 9;
  sub_E5514();
  *(v0 + 153) = 2;
  sub_E5514();
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  sub_6FB88();
  sub_E5374();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_6A600()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_6A670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a1;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6A694, 0, 0);
}

uint64_t sub_6A694()
{
  v0[11] = sub_6FCE0();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6A770;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6A770()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_705D4;
  }

  else
  {
    v4 = sub_6A8A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6A8A0()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = sub_A4F8();
  *v6 = v0;
  v6[1] = sub_6A9A0;
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v8, v0 + 9, v4, &type metadata for DownloadEpisodesIntent, v7, v2, v3);
}

uint64_t sub_6A9A0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_705F0;
  }

  else
  {
    v4 = sub_705D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6AAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6AAF4, 0, 0);
}

uint64_t sub_6AAF4()
{
  v0[11] = sub_70578();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6ABD0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6ABD0()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_705D4;
  }

  else
  {
    v4 = sub_6AD00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6AD00()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  updated = type metadata accessor for UpdateEpisodePlayStateIntent();
  v8 = sub_70530(&qword_12F498, type metadata accessor for UpdateEpisodePlayStateIntent);
  *v6 = v0;
  v6[1] = sub_6AE34;
  v9 = v0[9];
  v10 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v10, v4, updated, v8, v2, v3);
}

uint64_t sub_6AE34()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_705CC;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_705D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6AF74, 0, 0);
}

uint64_t sub_6AF74()
{
  v0[11] = sub_704DC();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6B050;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6B050()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_705D4;
  }

  else
  {
    v4 = sub_6B180;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6B180()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  updated = type metadata accessor for UpdateEpisodePlayStateIntent();
  v8 = sub_70530(&qword_12F498, type metadata accessor for UpdateEpisodePlayStateIntent);
  *v6 = v0;
  v6[1] = sub_6AE34;
  v9 = v0[9];
  v10 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v10, v4, updated, v8, v2, v3);
}

uint64_t sub_6B2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6B2D8, 0, 0);
}

uint64_t sub_6B2D8()
{
  v0[11] = sub_70488();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6B3B4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6B3B4()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_7750;
  }

  else
  {
    v4 = sub_6B4E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6B4E4()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = type metadata accessor for PlayEpisodeIntent();
  v8 = sub_70530(&qword_12F3C8, type metadata accessor for PlayEpisodeIntent);
  *v6 = v0;
  v6[1] = sub_6B618;
  v9 = v0[9];
  v10 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v10, v4, v7, v8, v2, v3);
}

uint64_t sub_6B618()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_6B798;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_6B734;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6B734()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6B798()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t sub_6B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6B828, 0, 0);
}

uint64_t sub_6B828()
{
  v0[11] = sub_70434();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6B904;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6B904()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_705D4;
  }

  else
  {
    v4 = sub_6BA34;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6BA34()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = type metadata accessor for EnqueueEpisodeForPlaybackIntent();
  v8 = sub_70530(&qword_12F478, type metadata accessor for EnqueueEpisodeForPlaybackIntent);
  *v6 = v0;
  v6[1] = sub_6AE34;
  v9 = v0[9];
  v10 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v10, v4, v7, v8, v2, v3);
}

uint64_t sub_6BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6BB8C, 0, 0);
}

uint64_t sub_6BB8C()
{
  v0[11] = sub_703E0();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6BC68;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6BC68()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_705D4;
  }

  else
  {
    v4 = sub_6BD98;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6BD98()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = type metadata accessor for EnqueueEpisodeForPlaybackIntent();
  v8 = sub_70530(&qword_12F478, type metadata accessor for EnqueueEpisodeForPlaybackIntent);
  *v6 = v0;
  v6[1] = sub_6AE34;
  v9 = v0[9];
  v10 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v10, v4, v7, v8, v2, v3);
}

uint64_t sub_6BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a1;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6BEF0, 0, 0);
}

uint64_t sub_6BEF0()
{
  v0[11] = sub_7038C();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6BFCC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6BFCC()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_705D4;
  }

  else
  {
    v4 = sub_6C0FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6C0FC()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = sub_C2A8();
  *v6 = v0;
  v6[1] = sub_6A9A0;
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v8, v0 + 9, v4, &type metadata for RemoveEpisodesDownloadIntent, v7, v2, v3);
}

uint64_t sub_6C1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a1;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6C220, 0, 0);
}

uint64_t sub_6C220()
{
  v0[11] = sub_702E4();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6C2FC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6C2FC()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_7750;
  }

  else
  {
    v4 = sub_6C42C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6C42C()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = sub_70338();
  *v6 = v0;
  v6[1] = sub_6C52C;
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v8, v0 + 9, v4, &type metadata for BookmarkEpisodeIntent, v7, v2, v3);
}

uint64_t sub_6C52C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_6C65C;
  }

  else
  {
    v4 = sub_6B734;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6C65C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t sub_6C6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a1;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6C6E4, 0, 0);
}

uint64_t sub_6C6E4()
{
  v0[11] = sub_7023C();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6C7C0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6C7C0()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_705D4;
  }

  else
  {
    v4 = sub_6C8F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6C8F0()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = sub_70290();
  *v6 = v0;
  v6[1] = sub_6A9A0;
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v8, v0 + 9, v4, &type metadata for UnbookmarkEpisodeIntent, v7, v2, v3);
}

uint64_t sub_6CA10()
{
  v0[9] = sub_70194();
  v0[10] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_6CAEC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6CAEC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_6CE34;
  }

  else
  {
    v4 = sub_6CC1C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6CC1C()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[13] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[14] = v6;
  v8 = sub_701E8();
  *v6 = v0;
  v6[1] = sub_6CD18;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v7, v4, &type metadata for PlayNextChapterIntent, v8, v2, v3);
}

uint64_t sub_6CD18()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_6CEB4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_6CE4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6CE4C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_6CEB4()
{
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[15];
  v3 = v0[1];

  return v3();
}

uint64_t sub_6CF40()
{
  v0[9] = sub_700EC();
  v0[10] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_6D01C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6D01C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_705D8;
  }

  else
  {
    v4 = sub_6D14C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6D14C()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[13] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[14] = v6;
  v8 = sub_70140();
  *v6 = v0;
  v6[1] = sub_6D248;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v7, v4, &type metadata for PlayPreviousChapterIntent, v8, v2, v3);
}

uint64_t sub_6D248()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_705E0;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_705EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6D364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6D388, 0, 0);
}

uint64_t sub_6D388()
{
  v0[11] = sub_70098();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6D464;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6D464()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_705D4;
  }

  else
  {
    v4 = sub_6D594;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6D594()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = type metadata accessor for OpenTranscriptIntent();
  v8 = sub_70530(&qword_12F420, type metadata accessor for OpenTranscriptIntent);
  *v6 = v0;
  v6[1] = sub_6AE34;
  v9 = v0[9];
  v10 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v10, v4, v7, v8, v2, v3);
}

uint64_t sub_6D6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return _swift_task_switch(sub_6D6F0, 0, 0);
}

uint64_t sub_6D6F0()
{
  v0[12] = sub_70044();
  v0[13] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_6D7CC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6D7CC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_6DB50;
  }

  else
  {
    v4 = sub_6D8FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6D8FC()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[16] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  ShowLatestEpisodesIntent = type metadata accessor for FetchShowLatestEpisodesIntent();
  v8 = sub_70530(&qword_12F410, type metadata accessor for FetchShowLatestEpisodesIntent);
  *v6 = v0;
  v6[1] = sub_6DA34;
  v9 = v0[11];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 10, v9, v4, ShowLatestEpisodesIntent, v8, v2, v3);
}

uint64_t sub_6DA34()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_6DBD0;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_6DB68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6DB68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[10];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_6DBD0()
{
  v1 = v0[16];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_6DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a3;
  v3[12] = a1;
  v3[10] = a2;
  return _swift_task_switch(sub_6DC60, 0, 0);
}

uint64_t sub_6DC60()
{
  v0[13] = sub_6FF9C();
  v0[14] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_6DD3C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6DD3C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_705DC;
  }

  else
  {
    v4 = sub_6DE6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6DE6C()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[17] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  v7 = type metadata accessor for FollowFeedIntent();
  v8 = sub_70530(&qword_12F3F0, type metadata accessor for FollowFeedIntent);
  *v6 = v0;
  v6[1] = sub_6DFA4;
  v9 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v9, v4, v7, v8, v2, v3);
}

uint64_t sub_6DFA4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_705E4;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_705E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6E0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a1;
  v3[7] = a2;
  v3[8] = a3;
  return _swift_task_switch(sub_6E0E4, 0, 0);
}

uint64_t sub_6E0E4()
{
  v0[11] = sub_6FF9C();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6E1C0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6E1C0()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_7750;
  }

  else
  {
    v4 = sub_6E2F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6E2F0()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = sub_6FFF0();
  *v6 = v0;
  v6[1] = sub_6E3F0;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 9, v0 + 10, v4, &type metadata for FetchShowEntitiesIntent, v7, v2, v3);
}

uint64_t sub_6E3F0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_6C65C;
  }

  else
  {
    v4 = sub_6E520;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6E520()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[9];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_6E588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a3;
  v3[12] = a1;
  v3[10] = a2;
  return _swift_task_switch(sub_6E5AC, 0, 0);
}

uint64_t sub_6E5AC()
{
  v0[13] = sub_6FF48();
  v0[14] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_6E688;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6E688()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_6EA0C;
  }

  else
  {
    v4 = sub_6E7B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6E7B8()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[17] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  v7 = type metadata accessor for FollowFeedIntent();
  v8 = sub_70530(&qword_12F3F0, type metadata accessor for FollowFeedIntent);
  *v6 = v0;
  v6[1] = sub_6E8F0;
  v9 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v9, v4, v7, v8, v2, v3);
}

uint64_t sub_6E8F0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_6EA90;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_6EA24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6EA24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3(v1, v2, v4);
}

uint64_t sub_6EA90()
{
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t sub_6EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a1;
  v5[11] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[9] = a5;
  return _swift_task_switch(sub_6EB24, 0, 0);
}

uint64_t sub_6EB24()
{
  v0[12] = sub_6FEF4();
  v0[13] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_6EC00;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6EC00()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_6DB50;
  }

  else
  {
    v4 = sub_6ED30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6ED30()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[16] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = type metadata accessor for PlayStationIntent();
  v8 = sub_70530(&qword_12F3D8, type metadata accessor for PlayStationIntent);
  *v6 = v0;
  v6[1] = sub_6EE64;
  v9 = v0[10];
  v10 = v0[11];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v10, v4, v7, v8, v2, v3);
}

uint64_t sub_6EE64()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_6DBD0;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_6B734;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6EF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6EFA4, 0, 0);
}

uint64_t sub_6EFA4()
{
  v0[11] = sub_6FEA0();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_6F080;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6F080()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_705D4;
  }

  else
  {
    v4 = sub_6F1B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6F1B0()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = sub_E5B44();
  v0[15] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = type metadata accessor for PlayStationIntent();
  v8 = sub_70530(&qword_12F3D8, type metadata accessor for PlayStationIntent);
  *v6 = v0;
  v6[1] = sub_6AE34;
  v9 = v0[9];
  v10 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v10, v4, v7, v8, v2, v3);
}

uint64_t sub_6F2E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v4 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v2 + 32);
  return _swift_task_switch(sub_6F314, 0, 0);
}

uint64_t sub_6F314()
{
  v0[14] = sub_6FE4C();
  v0[15] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_6F3F0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_6F3F0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_6F770;
  }

  else
  {
    v4 = sub_6F520;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6F520()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = sub_E5B44();
  v0[18] = v4;
  v5 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v6 = swift_task_alloc();
  v0[19] = v6;
  v7 = type metadata accessor for PlayEpisodeIntent();
  v8 = sub_70530(&qword_12F3C8, type metadata accessor for PlayEpisodeIntent);
  *v6 = v0;
  v6[1] = sub_6F654;
  v9 = v0[12];
  v10 = v0[13];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v10, v4, v7, v8, v2, v3);
}

uint64_t sub_6F654()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_6F7EC;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_6F788;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6F788()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6F7EC()
{
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[20];
  v3 = v0[1];

  return v3();
}

uint64_t sub_6F858()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F360, &qword_EE730);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F368, &qword_EE738);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._object = 0x80000000000F6EB0;
  v5._countAndFlagsBits = 0xD000000000000013;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F378, &qword_EE768);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_6F9F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return DownloadEpisodesAppIntent.perform()(a1);
}

uint64_t sub_6FA8C(uint64_t a1)
{
  v2 = sub_69904();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_6FAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6FB2C(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_6FB88()
{
  result = qword_12F388;
  if (!qword_12F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F388);
  }

  return result;
}

unint64_t sub_6FBE0()
{
  result = qword_12F390;
  if (!qword_12F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F390);
  }

  return result;
}

unint64_t sub_6FC38()
{
  result = qword_12F398;
  if (!qword_12F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F398);
  }

  return result;
}

unint64_t sub_6FCE0()
{
  result = qword_12F3A0;
  if (!qword_12F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3A0);
  }

  return result;
}

uint64_t sub_6FD34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_6FD74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5504();
  *a2 = v5;
  return result;
}

unint64_t sub_6FE4C()
{
  result = qword_12F3C0;
  if (!qword_12F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3C0);
  }

  return result;
}

unint64_t sub_6FEA0()
{
  result = qword_12F3D0;
  if (!qword_12F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3D0);
  }

  return result;
}

unint64_t sub_6FEF4()
{
  result = qword_12F3E0;
  if (!qword_12F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3E0);
  }

  return result;
}

unint64_t sub_6FF48()
{
  result = qword_12F3E8;
  if (!qword_12F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3E8);
  }

  return result;
}

unint64_t sub_6FF9C()
{
  result = qword_12F3F8;
  if (!qword_12F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3F8);
  }

  return result;
}

unint64_t sub_6FFF0()
{
  result = qword_12F400;
  if (!qword_12F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F400);
  }

  return result;
}

unint64_t sub_70044()
{
  result = qword_12F408;
  if (!qword_12F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F408);
  }

  return result;
}

unint64_t sub_70098()
{
  result = qword_12F418;
  if (!qword_12F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F418);
  }

  return result;
}

unint64_t sub_700EC()
{
  result = qword_12F428;
  if (!qword_12F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F428);
  }

  return result;
}

unint64_t sub_70140()
{
  result = qword_12F430;
  if (!qword_12F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F430);
  }

  return result;
}

unint64_t sub_70194()
{
  result = qword_12F438;
  if (!qword_12F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F438);
  }

  return result;
}

unint64_t sub_701E8()
{
  result = qword_12F440;
  if (!qword_12F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F440);
  }

  return result;
}

unint64_t sub_7023C()
{
  result = qword_12F448;
  if (!qword_12F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F448);
  }

  return result;
}

unint64_t sub_70290()
{
  result = qword_12F450;
  if (!qword_12F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F450);
  }

  return result;
}

unint64_t sub_702E4()
{
  result = qword_12F458;
  if (!qword_12F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F458);
  }

  return result;
}

unint64_t sub_70338()
{
  result = qword_12F460;
  if (!qword_12F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F460);
  }

  return result;
}

unint64_t sub_7038C()
{
  result = qword_12F468;
  if (!qword_12F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F468);
  }

  return result;
}

unint64_t sub_703E0()
{
  result = qword_12F470;
  if (!qword_12F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F470);
  }

  return result;
}

unint64_t sub_70434()
{
  result = qword_12F480;
  if (!qword_12F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F480);
  }

  return result;
}

unint64_t sub_70488()
{
  result = qword_12F488;
  if (!qword_12F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F488);
  }

  return result;
}

unint64_t sub_704DC()
{
  result = qword_12F490;
  if (!qword_12F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F490);
  }

  return result;
}

uint64_t sub_70530(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_70578()
{
  result = qword_12F4A0;
  if (!qword_12F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F4A0);
  }

  return result;
}

uint64_t sub_705F4()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F4A8);
  __swift_project_value_buffer(v0, qword_12F4A8);
  return sub_E5914();
}

uint64_t static MarkEpisodeAsPlayedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB98 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F4A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MarkEpisodeAsPlayedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static MarkEpisodeAsPlayedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4C0, &qword_EE9D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4C8, &qword_EE9D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_70934();
  sub_E5744();
  v5._countAndFlagsBits = 0x206B72614DLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4D8, &qword_EEA08);
  sub_E5724();

  v6._countAndFlagsBits = 0x79616C5020736120;
  v6._object = 0xEA00000000006465;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_70934()
{
  result = qword_12F4D0;
  if (!qword_12F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F4D0);
  }

  return result;
}

uint64_t sub_70988@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*MarkEpisodeAsPlayedAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_70A4C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_6FAC8(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_6FAC8(v10, v8);

  sub_E5514();
  sub_71A70(v10, type metadata accessor for EpisodeEntity);
}

uint64_t MarkEpisodeAsPlayedAppIntent.episode.setter(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_6FAC8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_71A70(a1, type metadata accessor for EpisodeEntity);
}

void (*MarkEpisodeAsPlayedAppIntent.episode.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t MarkEpisodeAsPlayedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_E5944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v31 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v21 + 56))(v19, 0, 1, v20);
  v23 = type metadata accessor for EpisodeEntity(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v9, 1, 1, v24);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

unint64_t sub_71064()
{
  result = qword_12E000;
  if (!qword_12E000)
  {
    type metadata accessor for EpisodeEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E000);
  }

  return result;
}

uint64_t MarkEpisodeAsPlayedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  updated = type metadata accessor for UpdateEpisodePlayStateIntent();
  *(v2 + 48) = updated;
  v4 = *(*(updated - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v5 = *(*(sub_E6304() - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v6 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 72) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v8 = sub_E6974();
  *(v2 + 104) = v8;
  v9 = *(v8 - 8);
  *(v2 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;

  return _swift_task_switch(sub_71228, 0, 0);
}

uint64_t sub_71228()
{
  v30 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_E6914();

  v4 = sub_E6964();
  v5 = sub_E7494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = v0[14];
    v28 = v0[15];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    sub_E5504();
    v13 = sub_E7084();
    v15 = sub_23E64(v13, v14, &v29);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v4, v5, "Received a request to mark episode as played: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);

    (*(v7 + 8))(v28, v8);
  }

  else
  {
    v17 = v0[14];
    v16 = v0[15];
    v18 = v0[13];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[17];
  v20 = v0[7];
  v21 = v20 + *(v0[6] + 20);
  sub_E5504();
  *v20 = 0;
  v22 = swift_task_alloc();
  v0[18] = v22;
  *v22 = v0;
  v22[1] = sub_71460;
  v23 = v0[16];
  v24 = v0[17];
  v26 = v0[7];
  v25 = v0[8];

  return sub_6AAD0(v25, v26, v23, v24);
}

uint64_t sub_71460()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 152) = v0;

  sub_71A70(v4, type metadata accessor for UpdateEpisodePlayStateIntent);
  if (v0)
  {
    v5 = sub_71750;
  }

  else
  {
    sub_71A70(*(v2 + 64), &type metadata accessor for EpisodePlayState);
    v5 = sub_715C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_715C8()
{
  v15 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v11 = *(v0 + 120);
  v12 = *(v0 + 64);
  v13 = *(v0 + 56);
  v5 = *(v0 + 40);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v14);
  v7 = v14[0];
  v6 = v14[1];
  v8 = v14[2];
  sub_6FAC8(v3, v2);
  sub_6FAC8(v2, v4);
  sub_E5514();
  sub_71A70(v2, type metadata accessor for EpisodeEntity);
  *(v0 + 160) = 2;
  sub_E5514();
  sub_71A70(v3, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 32) = v8;
  sub_71AD0();
  sub_E5374();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_71750()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];
  v8 = v0[19];

  return v7();
}

uint64_t sub_717F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4C0, &qword_EE9D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4C8, &qword_EE9D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x206B72614DLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4D8, &qword_EEA08);
  sub_E5724();

  v6._countAndFlagsBits = 0x79616C5020736120;
  v6._object = 0xEA00000000006465;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_71998(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return MarkEpisodeAsPlayedAppIntent.perform()(a1);
}

uint64_t sub_71A34(uint64_t a1)
{
  v2 = sub_70934();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_71A70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_71AD0()
{
  result = qword_12F4F0;
  if (!qword_12F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F4F0);
  }

  return result;
}

unint64_t sub_71B28()
{
  result = qword_12F4F8;
  if (!qword_12F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F4F8);
  }

  return result;
}

unint64_t sub_71B80()
{
  result = qword_12F500;
  if (!qword_12F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F500);
  }

  return result;
}

uint64_t sub_71C28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_71D28()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F518);
  __swift_project_value_buffer(v0, qword_12F518);
  return sub_E5914();
}

uint64_t static MarkEpisodeAsUnplayedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBA0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MarkEpisodeAsUnplayedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static MarkEpisodeAsUnplayedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F530, &qword_EEBC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F538, &qword_EEBC8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_7206C();
  sub_E5744();
  v5._countAndFlagsBits = 0x206B72614DLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F548, &unk_EEBF8);
  sub_E5724();

  v6._countAndFlagsBits = 0x6C706E5520736120;
  v6._object = 0xEC00000064657961;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_7206C()
{
  result = qword_12F540;
  if (!qword_12F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F540);
  }

  return result;
}

uint64_t sub_720C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*MarkEpisodeAsUnplayedAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_72160(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_6FAC8(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_6FAC8(v10, v8);

  sub_E5514();
  sub_71A70(v10, type metadata accessor for EpisodeEntity);
}

uint64_t MarkEpisodeAsUnplayedAppIntent.episode.setter(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_6FAC8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_71A70(a1, type metadata accessor for EpisodeEntity);
}

void (*MarkEpisodeAsUnplayedAppIntent.episode.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t MarkEpisodeAsUnplayedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_E5944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v31 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v21 + 56))(v19, 0, 1, v20);
  v23 = type metadata accessor for EpisodeEntity(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v9, 1, 1, v24);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t MarkEpisodeAsUnplayedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  updated = type metadata accessor for UpdateEpisodePlayStateIntent();
  *(v2 + 48) = updated;
  v4 = *(*(updated - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v5 = *(*(sub_E6304() - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v6 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 72) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v8 = sub_E6974();
  *(v2 + 104) = v8;
  v9 = *(v8 - 8);
  *(v2 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;

  return _swift_task_switch(sub_728E4, 0, 0);
}

uint64_t sub_728E4()
{
  v30 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_E6914();

  v4 = sub_E6964();
  v5 = sub_E7494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = v0[14];
    v28 = v0[15];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    sub_E5504();
    v13 = sub_E7084();
    v15 = sub_23E64(v13, v14, &v29);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v4, v5, "Received a request to mark episode as unplayed: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);

    (*(v7 + 8))(v28, v8);
  }

  else
  {
    v17 = v0[14];
    v16 = v0[15];
    v18 = v0[13];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[17];
  v20 = v0[7];
  v21 = v20 + *(v0[6] + 20);
  sub_E5504();
  *v20 = 2;
  v22 = swift_task_alloc();
  v0[18] = v22;
  *v22 = v0;
  v22[1] = sub_72B20;
  v23 = v0[16];
  v24 = v0[17];
  v26 = v0[7];
  v25 = v0[8];

  return sub_6AF50(v25, v26, v23, v24);
}

uint64_t sub_72B20()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 152) = v0;

  sub_71A70(v4, type metadata accessor for UpdateEpisodePlayStateIntent);
  if (v0)
  {
    v5 = sub_71750;
  }

  else
  {
    sub_71A70(*(v2 + 64), &type metadata accessor for EpisodePlayState);
    v5 = sub_72C88;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_72C88()
{
  v15 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v11 = *(v0 + 120);
  v12 = *(v0 + 64);
  v13 = *(v0 + 56);
  v5 = *(v0 + 40);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v14);
  v7 = v14[0];
  v6 = v14[1];
  v8 = v14[2];
  sub_6FAC8(v3, v2);
  sub_6FAC8(v2, v4);
  sub_E5514();
  sub_71A70(v2, type metadata accessor for EpisodeEntity);
  *(v0 + 160) = 3;
  sub_E5514();
  sub_71A70(v3, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 32) = v8;
  sub_71AD0();
  sub_E5374();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_72E10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F530, &qword_EEBC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F538, &qword_EEBC8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x206B72614DLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F548, &unk_EEBF8);
  sub_E5724();

  v6._countAndFlagsBits = 0x6C706E5520736120;
  v6._object = 0xEC00000064657961;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_72FB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return MarkEpisodeAsUnplayedAppIntent.perform()(a1);
}

uint64_t sub_73050(uint64_t a1)
{
  v2 = sub_7206C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_73090()
{
  result = qword_12F550;
  if (!qword_12F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F550);
  }

  return result;
}

unint64_t sub_730E8()
{
  result = qword_12F558;
  if (!qword_12F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F558);
  }

  return result;
}

uint64_t sub_73190@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_7324C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F570);
  __swift_project_value_buffer(v0, qword_12F570);
  return sub_E5914();
}

uint64_t static PlayEpisodeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBA8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F570);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_73360()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12F588);
  v1 = __swift_project_value_buffer(v0, qword_12F588);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayEpisodeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F588);
  swift_beginAccess();
  return sub_69558(v3, a1);
}

uint64_t static PlayEpisodeAppIntent.description.setter(uint64_t a1)
{
  if (qword_12CBB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F588);
  swift_beginAccess();
  sub_73560(a1, v3);
  swift_endAccess();
  return sub_735D0(a1);
}

uint64_t sub_73560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_735D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static PlayEpisodeAppIntent.description.modify())()
{
  if (qword_12CBB0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_project_value_buffer(v0, qword_12F588);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_736D8(uint64_t a1)
{
  if (qword_12CBB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F588);
  swift_beginAccess();
  sub_73560(a1, v3);
  return swift_endAccess();
}

uint64_t static PlayEpisodeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5A0, &qword_EEDB8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5A8, &qword_EEDC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_73910();
  sub_E5744();
  v5._countAndFlagsBits = 0x2079616C50;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5B8, &unk_EEDF0);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_73910()
{
  result = qword_12F5B0;
  if (!qword_12F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F5B0);
  }

  return result;
}

uint64_t sub_73964@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*PlayEpisodeAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_73A04(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_6FAC8(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_6FAC8(v10, v8);

  sub_E5514();
  sub_74E00(v10, type metadata accessor for EpisodeEntity);
}

uint64_t PlayEpisodeAppIntent.episode.setter(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_6FAC8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_74E00(a1, type metadata accessor for EpisodeEntity);
}

void (*PlayEpisodeAppIntent.episode.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayEpisodeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_E5944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v31 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v21 + 56))(v19, 0, 1, v20);
  v23 = type metadata accessor for EpisodeEntity(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v9, 1, 1, v24);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t PlayEpisodeAppIntent.perform()(uint64_t a1)
{
  v2[7] = a1;
  v3 = *(*(type metadata accessor for EpisodeEntity(0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_E5354();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v1;
  v9 = v1[1];
  v2[13] = v7;
  v2[14] = v9;
  v2[5] = v8;
  v2[6] = v9;
  v10 = swift_task_alloc();
  v2[15] = v10;
  *v10 = v2;
  v10[1] = sub_74168;

  return sub_743F4(v7);
}

uint64_t sub_74168()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_74264, 0, 0);
}

uint64_t sub_74264()
{
  v15 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v13 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v12 = *(v0 + 56);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v14);
  v8 = v14[0];
  v7 = v14[1];
  v9 = v14[2];
  sub_6FAC8(v5, v4);
  sub_6FAC8(v4, v6);
  sub_E5514();
  sub_74E00(v4, type metadata accessor for EpisodeEntity);
  *(v0 + 128) = 6;
  sub_E5514();
  sub_74E00(v5, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 32) = v9;
  sub_71AD0();
  sub_E5364();
  (*(v3 + 8))(v2, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_743F4(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = *(*(type metadata accessor for EpisodeEntity(0) - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v4 = *(*(sub_E7014() - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v5 = type metadata accessor for PlayEpisodeIntent();
  *(v2 + 56) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *v1;

  return _swift_task_switch(sub_744E8, 0, 0);
}

uint64_t sub_744E8()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  sub_E5504();
  v4 = v3[5];
  v5 = sub_E63C4();
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = v3[7];
  v7 = enum case for PlaybackIntent.Source.app(_:);
  v8 = sub_E6204();
  (*(*(v8 - 8) + 104))(v2 + v6, v7, v8);
  v9 = (v2 + v3[6]);
  *v9 = 0;
  v9[1] = 0;
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_74648;
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[8];

  return (sub_6B2B4)();
}

uint64_t sub_74648()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 96) = v0;

  sub_74E00(v3, type metadata accessor for PlayEpisodeIntent);
  if (v0)
  {
    v4 = sub_748BC;
  }

  else
  {
    v4 = sub_7478C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7478C()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_E7004();
  v14._countAndFlagsBits = 0x79616C7020776F4ELL;
  v14._object = 0xED00002720676E69;
  sub_E6FF4(v14);
  sub_E5504();
  v5 = *(v3 + 16);
  sub_E53E4();
  v6 = v0[2];
  v7 = v0[3];
  sub_74E00(v3, type metadata accessor for EpisodeEntity);
  v15._countAndFlagsBits = v6;
  v15._object = v7;
  sub_E6FD4(v15);

  v16._countAndFlagsBits = 39;
  v16._object = 0xE100000000000000;
  sub_E6FF4(v16);
  sub_E5344();
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_748BC()
{
  sub_8EE68(v0[12], v0[4]);

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_74948()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5A0, &qword_EEDB8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5A8, &qword_EEDC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x2079616C50;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5B8, &unk_EEDF0);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_74AD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayEpisodeAppIntent.perform()(a1);
}

uint64_t sub_74B74(uint64_t a1)
{
  v2 = sub_73910();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_74BB4()
{
  result = qword_12F5C0;
  if (!qword_12F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F5C0);
  }

  return result;
}

unint64_t sub_74C0C()
{
  result = qword_12F5C8;
  if (!qword_12F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F5C8);
  }

  return result;
}

uint64_t sub_74CBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_74E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_74E60()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F5F8);
  __swift_project_value_buffer(v0, qword_12F5F8);
  return sub_E5914();
}

uint64_t static PlayEpisodeLastAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBB8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F5F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_74F6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12F610);
  v1 = __swift_project_value_buffer(v0, qword_12F610);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayEpisodeLastAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBC0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F610);

  return sub_69558(v3, a1);
}

uint64_t static PlayEpisodeLastAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F628, &qword_EEFB8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F630, &qword_EEFC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_75250();
  sub_E5744();
  v5._countAndFlagsBits = 0x2079616C50;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F640, &unk_EEFF0);
  sub_E5724();

  v6._countAndFlagsBits = 0x7473616C20;
  v6._object = 0xE500000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_75250()
{
  result = qword_12F638;
  if (!qword_12F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F638);
  }

  return result;
}

uint64_t sub_752A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*PlayEpisodeLastAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_75344(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_6FAC8(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_6FAC8(v10, v8);

  sub_E5514();
  sub_76828(v10, type metadata accessor for EpisodeEntity);
}

uint64_t PlayEpisodeLastAppIntent.episode.setter(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_6FAC8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_76828(a1, type metadata accessor for EpisodeEntity);
}

void (*PlayEpisodeLastAppIntent.episode.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayEpisodeLastAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_E5944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v31 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v21 + 56))(v19, 0, 1, v20);
  v23 = type metadata accessor for EpisodeEntity(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v9, 1, 1, v24);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t PlayEpisodeLastAppIntent.perform()(uint64_t a1)
{
  v2[7] = a1;
  v3 = *(*(type metadata accessor for EpisodeEntity(0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_E5354();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v1;
  v9 = v1[1];
  v2[13] = v7;
  v2[14] = v9;
  v2[5] = v8;
  v2[6] = v9;
  v10 = swift_task_alloc();
  v2[15] = v10;
  *v10 = v2;
  v10[1] = sub_75AA8;

  return sub_75D30(v7);
}

uint64_t sub_75AA8()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_75BA4, 0, 0);
}

uint64_t sub_75BA4()
{
  v15 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v13 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v12 = *(v0 + 56);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v14);
  v8 = v14[0];
  v7 = v14[1];
  v9 = v14[2];
  sub_6FAC8(v5, v4);
  sub_6FAC8(v4, v6);
  sub_E5514();
  sub_76828(v4, type metadata accessor for EpisodeEntity);
  *(v0 + 128) = 0;
  sub_E5514();
  sub_76828(v5, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 32) = v9;
  sub_71AD0();
  sub_E5364();
  (*(v3 + 8))(v2, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_75D30(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = *(*(sub_E7014() - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v4 = *(*(type metadata accessor for EpisodeEntity(0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v5 = type metadata accessor for EnqueueEpisodeForPlaybackIntent();
  *(v2 + 64) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = *v1;

  return _swift_task_switch(sub_75E3C, 0, 0);
}

uint64_t sub_75E3C()
{
  v1 = v0[12];
  v2 = v0[7];
  sub_E5504();
  v4 = *(v2 + 72);
  v3 = *(v2 + 80);

  sub_76828(v2, type metadata accessor for EpisodeEntity);
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v6 = v0[12];
    v7 = v0[6];
    sub_E5504();
    v4 = *(v7 + 88);
    sub_76828(v7, type metadata accessor for EpisodeEntity);
    v5 = 0;
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = *(v0[8] + 20);
  v11 = enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
  v12 = sub_E5D24();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = v4;
  *(v9 + 8) = v3;
  *(v9 + 16) = v5;
  sub_767C4(v9, v8);
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_75FDC;
  v14 = v0[11];
  v15 = v0[12];
  v16 = v0[10];

  return sub_6B804(sub_6B804, v16, v14, v15);
}

uint64_t sub_75FDC()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 112) = v0;

  sub_76828(v3, type metadata accessor for EnqueueEpisodeForPlaybackIntent);
  if (v0)
  {
    v4 = sub_76264;
  }

  else
  {
    v4 = sub_76120;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_76120()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_E7004();
  v16._countAndFlagsBits = 0x20676E6979616C50;
  v16._object = 0xE900000000000027;
  sub_E6FF4(v16);
  sub_E5504();
  v5 = *(v3 + 16);
  sub_E53E4();
  v6 = v0[2];
  v7 = v0[3];
  sub_76828(v3, type metadata accessor for EpisodeEntity);
  v17._countAndFlagsBits = v6;
  v17._object = v7;
  sub_E6FD4(v17);

  v18._countAndFlagsBits = 0x7473616C2027;
  v18._object = 0xE600000000000000;
  sub_E6FF4(v18);
  sub_E5344();
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_76264()
{
  sub_8EE68(v0[14], v0[4]);

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_7630C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F628, &qword_EEFB8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F630, &qword_EEFC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x2079616C50;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F640, &unk_EEFF0);
  sub_E5724();

  v6._countAndFlagsBits = 0x7473616C20;
  v6._object = 0xE500000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_764A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayEpisodeLastAppIntent.perform()(a1);
}

uint64_t sub_76540(uint64_t a1)
{
  v2 = sub_75250();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_76580()
{
  result = qword_12F648;
  if (!qword_12F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F648);
  }

  return result;
}

unint64_t sub_765D8()
{
  result = qword_12F650;
  if (!qword_12F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F650);
  }

  return result;
}

uint64_t sub_76680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_767C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnqueueEpisodeForPlaybackIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_76828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_76888()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F668);
  __swift_project_value_buffer(v0, qword_12F668);
  return sub_E5914();
}

uint64_t static PlayEpisodeNextAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBC8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_76994()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12F680);
  v1 = __swift_project_value_buffer(v0, qword_12F680);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayEpisodeNextAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F680);

  return sub_69558(v3, a1);
}

uint64_t static PlayEpisodeNextAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F698, &qword_EF1A8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6A0, &qword_EF1B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_76C7C();
  sub_E5744();
  v5._countAndFlagsBits = 543450177;
  v5._object = 0xE400000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6B0, &unk_EF1E0);
  sub_E5724();

  v6._countAndFlagsBits = 0x75657551206F7420;
  v6._object = 0xE900000000000065;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_76C7C()
{
  result = qword_12F6A8;
  if (!qword_12F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F6A8);
  }

  return result;
}

uint64_t sub_76CD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*PlayEpisodeNextAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_76D70(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_6FAC8(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_6FAC8(v10, v8);

  sub_E5514();
  sub_76828(v10, type metadata accessor for EpisodeEntity);
}

uint64_t PlayEpisodeNextAppIntent.episode.setter(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_6FAC8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_76828(a1, type metadata accessor for EpisodeEntity);
}

void (*PlayEpisodeNextAppIntent.episode.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayEpisodeNextAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_E5944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v31 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v21 + 56))(v19, 0, 1, v20);
  v23 = type metadata accessor for EpisodeEntity(0);
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v9, 1, 1, v24);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t PlayEpisodeNextAppIntent.perform()(uint64_t a1)
{
  v2[7] = a1;
  v3 = *(*(type metadata accessor for EpisodeEntity(0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_E5354();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v1;
  v9 = v1[1];
  v2[13] = v7;
  v2[14] = v9;
  v2[5] = v8;
  v2[6] = v9;
  v10 = swift_task_alloc();
  v2[15] = v10;
  *v10 = v2;
  v10[1] = sub_774D4;

  return sub_77760(v7);
}

uint64_t sub_774D4()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_775D0, 0, 0);
}

uint64_t sub_775D0()
{
  v15 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v13 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v12 = *(v0 + 56);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v14);
  v8 = v14[0];
  v7 = v14[1];
  v9 = v14[2];
  sub_6FAC8(v5, v4);
  sub_6FAC8(v4, v6);
  sub_E5514();
  sub_76828(v4, type metadata accessor for EpisodeEntity);
  *(v0 + 128) = 4;
  sub_E5514();
  sub_76828(v5, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 32) = v9;
  sub_71AD0();
  sub_E5364();
  (*(v3 + 8))(v2, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_77760(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = *(*(sub_E7014() - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v4 = *(*(type metadata accessor for EpisodeEntity(0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v5 = type metadata accessor for EnqueueEpisodeForPlaybackIntent();
  *(v2 + 64) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = *v1;

  return _swift_task_switch(sub_7786C, 0, 0);
}

uint64_t sub_7786C()
{
  v1 = v0[12];
  v2 = v0[7];
  sub_E5504();
  v4 = *(v2 + 72);
  v3 = *(v2 + 80);

  sub_76828(v2, type metadata accessor for EpisodeEntity);
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v6 = v0[12];
    v7 = v0[6];
    sub_E5504();
    v4 = *(v7 + 88);
    sub_76828(v7, type metadata accessor for EpisodeEntity);
    v5 = 0;
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = *(v0[8] + 20);
  v11 = enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
  v12 = sub_E5D24();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = v4;
  *(v9 + 8) = v3;
  *(v9 + 16) = v5;
  sub_767C4(v9, v8);
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_77A0C;
  v14 = v0[11];
  v15 = v0[12];
  v16 = v0[10];

  return sub_6BB68(sub_6BB68, v16, v14, v15);
}

uint64_t sub_77A0C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 112) = v0;

  sub_76828(v3, type metadata accessor for EnqueueEpisodeForPlaybackIntent);
  if (v0)
  {
    v4 = sub_76264;
  }

  else
  {
    v4 = sub_77B50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_77B50()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_E7004();
  v16._countAndFlagsBits = 0x20676E6979616C50;
  v16._object = 0xE900000000000027;
  sub_E6FF4(v16);
  sub_E5504();
  v5 = *(v3 + 16);
  sub_E53E4();
  v6 = v0[2];
  v7 = v0[3];
  sub_76828(v3, type metadata accessor for EpisodeEntity);
  v17._countAndFlagsBits = v6;
  v17._object = v7;
  sub_E6FD4(v17);

  v18._countAndFlagsBits = 0x7478656E2027;
  v18._object = 0xE600000000000000;
  sub_E6FF4(v18);
  sub_E5344();
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_77C94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F698, &qword_EF1A8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6A0, &qword_EF1B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 543450177;
  v5._object = 0xE400000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6B0, &unk_EF1E0);
  sub_E5724();

  v6._countAndFlagsBits = 0x75657551206F7420;
  v6._object = 0xE900000000000065;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_77E30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayEpisodeNextAppIntent.perform()(a1);
}

uint64_t sub_77ECC(uint64_t a1)
{
  v2 = sub_76C7C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_77F0C()
{
  result = qword_12F6B8;
  if (!qword_12F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F6B8);
  }

  return result;
}

unint64_t sub_77F64()
{
  result = qword_12F6C0;
  if (!qword_12F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F6C0);
  }

  return result;
}

uint64_t sub_7800C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_78150()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F6D8);
  __swift_project_value_buffer(v0, qword_12F6D8);
  return sub_E5914();
}

uint64_t static RemoveEpisodesDownloadAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBD8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F6D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static RemoveEpisodesDownloadAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static RemoveEpisodesDownloadAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6F0, &qword_EF3A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6F8, &qword_EF3A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_78488();
  sub_E5744();
  v5._object = 0x80000000000F7180;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F708, &qword_EF3D8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_78488()
{
  result = qword_12F700;
  if (!qword_12F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F700);
  }

  return result;
}

uint64_t sub_784DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*RemoveEpisodesDownloadAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

void (*RemoveEpisodesDownloadAppIntent.episodes.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t RemoveEpisodesDownloadAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v23 = sub_E5774();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v24 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F380, &qword_EE778);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v25 = 0;
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v9, 1, 1, v19);
  (*(v2 + 104))(v22, enum case for InputConnectionBehavior.default(_:), v23);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t RemoveEpisodesDownloadAppIntent.perform()(uint64_t a1)
{
  *(v2 + 48) = a1;
  v3 = *(type metadata accessor for EpisodeEntity(0) - 8);
  *(v2 + 56) = v3;
  v4 = *(v3 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *v1;

  return _swift_task_switch(sub_78A30, 0, 0);
}

uint64_t sub_78A30()
{
  v1 = v0[10];
  sub_E5504();
  v2 = v0[5];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[7];
    v5 = v0[8];
    sub_15D58(0, v3, 0);
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      sub_6FAC8(v6, v0[8]);
      v8 = *(v5 + 64);
      if (v8)
      {
        v9 = 1;
        v10 = *(v5 + 64);
      }

      else
      {
        v9 = 0;
        v10 = *(v5 + 88);
      }

      v11 = v0[8];
      v12 = v8;
      sub_6FB2C(v11);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_15D58((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[3 * v14];
      v15[4] = v10;
      v15[5] = 0;
      *(v15 + 48) = v9;
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  else
  {
    v16 = v0[5];
  }

  v0[11] = _swiftEmptyArrayStorage;
  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_78C00;
  v18 = v0[9];
  v19 = v0[10];

  return sub_6BECC(sub_6BECC, _swiftEmptyArrayStorage, v18, v19);
}

uint64_t sub_78C00()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_78E2C;
  }

  else
  {
    v4 = sub_78D30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_78D30()
{
  v9 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  OpenAppLocationAppIntent.init()(v8);
  v3 = v8[0];
  v4 = v8[1];
  v5 = v8[2];
  *(v0 + 112) = 9;
  sub_E5514();
  *(v0 + 113) = 2;
  sub_E5514();
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  sub_6FB88();
  sub_E5374();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_78E2C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_78E90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6F0, &qword_EF3A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6F8, &qword_EF3A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._object = 0x80000000000F7180;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F708, &qword_EF3D8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_79028(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return RemoveEpisodesDownloadAppIntent.perform()(a1);
}

uint64_t sub_790C4(uint64_t a1)
{
  v2 = sub_78488();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_79104()
{
  result = qword_12F710;
  if (!qword_12F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F710);
  }

  return result;
}

unint64_t sub_7915C()
{
  result = qword_12F718;
  if (!qword_12F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F718);
  }

  return result;
}

uint64_t sub_79204@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_79244@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5504();
  *a2 = v5;
  return result;
}

uint64_t sub_792D8()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F730);
  __swift_project_value_buffer(v0, qword_12F730);
  return sub_E5914();
}

uint64_t static SaveEpisodeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static SaveEpisodeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static SaveEpisodeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F748, &qword_EF590);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F750, &qword_EF598);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_79614();
  sub_E5744();
  v5._countAndFlagsBits = 0x2065766153;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F760, &qword_EF5C8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_79614()
{
  result = qword_12F758;
  if (!qword_12F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F758);
  }

  return result;
}

uint64_t sub_79668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*SaveEpisodeAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

void (*SaveEpisodeAppIntent.episodes.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t SaveEpisodeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v23 = sub_E5774();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v24 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F380, &qword_EE778);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v25 = 0;
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v9, 1, 1, v19);
  (*(v2 + 104))(v22, enum case for InputConnectionBehavior.default(_:), v23);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t SaveEpisodeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 56) = a1;
  v3 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v6 = sub_E6974();
  *(v2 + 88) = v6;
  v7 = *(v6 - 8);
  *(v2 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *v1;

  return _swift_task_switch(sub_79C1C, 0, 0);
}

uint64_t sub_79C1C()
{
  v43 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_E6914();

  v4 = sub_E6964();
  v5 = sub_E7494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = v0[12];
    v41 = v0[13];
    v8 = v0[11];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    sub_E5504();
    v12 = v0[6];
    v13 = sub_E7204();
    v15 = v14;

    v16 = sub_23E64(v13, v15, &v42);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v4, v5, "Received a request to bookmark episodes: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);

    (*(v7 + 8))(v41, v8);
  }

  else
  {
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[15];
  sub_E5504();
  v21 = v0[5];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[9];
    v24 = v0[10];
    v42 = _swiftEmptyArrayStorage;
    sub_15D58(0, v22, 0);
    v25 = v42;
    v26 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v27 = *(v23 + 72);
    do
    {
      sub_6FAC8(v26, v0[10]);
      v28 = *(v24 + 64);
      if (v28)
      {
        v29 = 1;
        v30 = *(v24 + 64);
      }

      else
      {
        v29 = 0;
        v30 = *(v24 + 88);
      }

      v31 = v0[10];
      v32 = v28;
      sub_6FB2C(v31);
      v42 = v25;
      v34 = v25[2];
      v33 = v25[3];
      if (v34 >= v33 >> 1)
      {
        sub_15D58((v33 > 1), v34 + 1, 1);
        v25 = v42;
      }

      v25[2] = v34 + 1;
      v35 = &v25[3 * v34];
      v35[4] = v30;
      v35[5] = 0;
      *(v35 + 48) = v29;
      v26 += v27;
      --v22;
    }

    while (v22);
  }

  else
  {
    v36 = v0[5];

    v25 = _swiftEmptyArrayStorage;
  }

  v0[16] = v25;
  v37 = swift_task_alloc();
  v0[17] = v37;
  *v37 = v0;
  v37[1] = sub_79F58;
  v38 = v0[14];
  v39 = v0[15];

  return sub_6C1FC(sub_6C1FC, v25, v38, v39);
}

uint64_t sub_79F58()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_6A600;
  }

  else
  {
    v4 = sub_7A088;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7A088()
{
  v10 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  OpenAppLocationAppIntent.init()(v9);
  v4 = v9[0];
  v5 = v9[1];
  v6 = v9[2];
  *(v0 + 152) = 4;
  sub_E5514();
  *(v0 + 153) = 0;
  sub_E5514();
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  sub_6FB88();
  sub_E5374();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_7A18C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F748, &qword_EF590);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F750, &qword_EF598);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x2065766153;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F760, &qword_EF5C8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7A31C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return SaveEpisodeAppIntent.perform()(a1);
}

uint64_t sub_7A3B8(uint64_t a1)
{
  v2 = sub_79614();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_7A3F8()
{
  result = qword_12F768;
  if (!qword_12F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F768);
  }

  return result;
}

unint64_t sub_7A450()
{
  result = qword_12F770;
  if (!qword_12F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F770);
  }

  return result;
}

uint64_t sub_7A4F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_7A538@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5504();
  *a2 = v5;
  return result;
}

uint64_t sub_7A5CC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F788);
  __swift_project_value_buffer(v0, qword_12F788);
  return sub_E5914();
}

uint64_t static UnsaveEpisodeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBE8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F788);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UnsaveEpisodeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static UnsaveEpisodeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7A0, &qword_EF780);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7A8, &qword_EF788);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_7A90C();
  sub_E5744();
  v5._countAndFlagsBits = 0x20657661736E55;
  v5._object = 0xE700000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7B8, &qword_EF7B8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_7A90C()
{
  result = qword_12F7B0;
  if (!qword_12F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F7B0);
  }

  return result;
}

uint64_t sub_7A960@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*UnsaveEpisodeAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

void (*UnsaveEpisodeAppIntent.episodes.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t UnsaveEpisodeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v23 = sub_E5774();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v24 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F380, &qword_EE778);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v25 = 0;
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v9, 1, 1, v19);
  (*(v2 + 104))(v22, enum case for InputConnectionBehavior.default(_:), v23);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t UnsaveEpisodeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 64) = a1;
  v3 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 72) = v3;
  v4 = *(v3 - 8);
  *(v2 + 80) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v6 = sub_E6974();
  *(v2 + 96) = v6;
  v7 = *(v6 - 8);
  *(v2 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;

  return _swift_task_switch(sub_7AF20, 0, 0);
}

uint64_t sub_7AF20()
{
  v44 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_E6914();

  v4 = sub_E6964();
  v5 = sub_E7494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v42 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v10 = 136315138;
    sub_E5504();
    v12 = v0[7];
    v13 = sub_E7204();
    v15 = v14;

    v16 = sub_23E64(v13, v15, &v43);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v4, v5, "Received a request to unbookmark episodes: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);

    v17 = *(v7 + 8);
    v17(v42, v8);
  }

  else
  {
    v18 = v0[15];
    v19 = v0[12];
    v20 = v0[13];

    v17 = *(v20 + 8);
    v17(v18, v19);
  }

  v0[18] = v17;
  v21 = v0[17];
  sub_E5504();
  v22 = v0[5];
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v0[10];
    v25 = v0[11];
    v43 = _swiftEmptyArrayStorage;
    sub_15D58(0, v23, 0);
    v26 = v43;
    v27 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v28 = *(v24 + 72);
    do
    {
      sub_6FAC8(v27, v0[11]);
      v29 = *(v25 + 64);
      if (v29)
      {
        v30 = 1;
        v31 = *(v25 + 64);
      }

      else
      {
        v30 = 0;
        v31 = *(v25 + 88);
      }

      v32 = v0[11];
      v33 = v29;
      sub_6FB2C(v32);
      v43 = v26;
      v35 = v26[2];
      v34 = v26[3];
      if (v35 >= v34 >> 1)
      {
        sub_15D58((v34 > 1), v35 + 1, 1);
        v26 = v43;
      }

      v26[2] = v35 + 1;
      v36 = &v26[3 * v35];
      v36[4] = v31;
      v36[5] = 0;
      *(v36 + 48) = v30;
      v27 += v28;
      --v23;
    }

    while (v23);
  }

  else
  {
    v37 = v0[5];

    v26 = _swiftEmptyArrayStorage;
  }

  v0[19] = v26;
  v38 = swift_task_alloc();
  v0[20] = v38;
  *v38 = v0;
  v38[1] = sub_7B260;
  v39 = v0[16];
  v40 = v0[17];

  return sub_6C6C0(sub_6C6C0, v26, v39, v40);
}

uint64_t sub_7B260()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_7B618;
  }

  else
  {
    v4 = sub_7B390;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7B390()
{
  v33 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  sub_E6914();

  v4 = sub_E6964();
  v5 = sub_E7494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 104);
    v30 = *(v0 + 112);
    v31 = *(v0 + 144);
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136315138;
    sub_E5504();
    v12 = *(v0 + 48);
    v13 = sub_E7204();
    v15 = v14;

    v16 = sub_23E64(v13, v15, v32);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v4, v5, "Received a request to bookmark episodes: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);

    v31(v30, v8);
  }

  else
  {
    v17 = *(v0 + 144);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);

    v17(v18, v20);
  }

  v21 = *(v0 + 112);
  v22 = *(v0 + 120);
  v23 = *(v0 + 88);
  v24 = *(v0 + 64);
  OpenAppLocationAppIntent.init()(v32);
  v25 = v32[0];
  v26 = v32[1];
  v27 = v32[2];
  *(v0 + 176) = 4;
  sub_E5514();
  *(v0 + 177) = 1;
  sub_E5514();
  *(v0 + 16) = v25;
  *(v0 + 24) = v26;
  *(v0 + 32) = v27;
  sub_6FB88();
  sub_E5374();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_7B618()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t sub_7B690()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7A0, &qword_EF780);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7A8, &qword_EF788);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._countAndFlagsBits = 0x20657661736E55;
  v5._object = 0xE700000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7B8, &qword_EF7B8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7B824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return UnsaveEpisodeAppIntent.perform()(a1);
}

uint64_t sub_7B8C0(uint64_t a1)
{
  v2 = sub_7A90C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_7B900()
{
  result = qword_12F7C0;
  if (!qword_12F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F7C0);
  }

  return result;
}

unint64_t sub_7B958()
{
  result = qword_12F7C8;
  if (!qword_12F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F7C8);
  }

  return result;
}

uint64_t sub_7BA00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_7BA40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5504();
  *a2 = v5;
  return result;
}

unint64_t sub_7BB04()
{
  result = qword_12F7E0;
  if (!qword_12F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F7E0);
  }

  return result;
}

uint64_t OpenAppLocationAppIntent.init(target:notice:)@<X0>(char a1@<W0>, char *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  OpenAppLocationAppIntent.init()(v9);
  v6 = v9[1];
  v7 = v9[2];
  *a3 = v9[0];
  a3[1] = v6;
  a3[2] = v7;
  LOBYTE(v9[0]) = a1;
  sub_E5514();
  LOBYTE(v9[0]) = v5;
  return sub_E5514();
}

uint64_t sub_7BBCC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F7E8);
  __swift_project_value_buffer(v0, qword_12F7E8);
  return sub_E5914();
}

uint64_t static OpenAppLocationAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBF0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F7E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenAppLocationAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static OpenAppLocationAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F800, &qword_EFA60);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F808, &qword_EFA68);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_6FB88();
  sub_E5744();
  v5._object = 0x80000000000F7320;
  v5._countAndFlagsBits = 0xD000000000000021;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F810, &unk_EFA98);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7BF04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;

  sub_E51E4();
}

void (*OpenAppLocationAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_3CA68;
}

uint64_t OpenAppLocationAppIntent.target.getter()
{
  v1 = *(v0 + 8);
  sub_E5504();
  return v3;
}

uint64_t sub_7C028(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;

  sub_E5514();
}

void (*OpenAppLocationAppIntent.target.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t sub_7C168(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;

  sub_E5514();
}

uint64_t OpenEpisodeAppIntent.notice.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_E5514();
}

void (*OpenAppLocationAppIntent.notice.modify(uint64_t *a1))(void *)
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
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t OpenAppLocationAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v36 = sub_E5774();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v36);
  v35 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = sub_E5944();
  v32 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v37 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F818, &qword_EFAA8);
  sub_E5914();
  sub_E5914();
  v19 = *(v17 + 56);
  v31 = v17 + 56;
  v33 = v19;
  v19(v15, 0, 1, v16);
  v38 = 12;
  v20 = sub_E5354();
  v21 = *(*(v20 - 8) + 56);
  v21(v11, 1, 1, v20);
  v21(v9, 1, 1, v20);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v2 + 104);
  v27 = v2 + 104;
  v28 = v22;
  v23 = v35;
  v22(v35);
  sub_49C94();
  v24 = sub_E5554();
  v25 = v34;
  v34[1] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F820, &qword_EFAB0);
  v33(v15, 1, 1, v32);
  v38 = 2;
  v21(v11, 1, 1, v20);
  v21(v9, 1, 1, v20);
  v28(v23, v29, v36);
  sub_7D1D0();
  result = sub_E5544();
  v25[2] = result;
  return result;
}

uint64_t sub_7C714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

uint64_t OpenAppLocationAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  v3 = sub_E5BB4();
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v6 = type metadata accessor for OpenAppLocationAction();
  *(v2 + 72) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v8 = sub_E6CF4();
  *(v2 + 88) = v8;
  v9 = *(v8 - 8);
  *(v2 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v11 = sub_E6974();
  *(v2 + 112) = v11;
  v12 = *(v11 - 8);
  *(v2 + 120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = *v1;
  *(v2 + 152) = *(v1 + 16);

  return _swift_task_switch(sub_7C8F8, 0, 0);
}

uint64_t sub_7C8F8()
{
  v35 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  sub_E6914();

  v5 = sub_E6964();
  v6 = sub_E74B4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315138;
    sub_E5504();
    v13 = AppLocation.rawValue.getter(*(v0 + 177));
    v15 = sub_23E64(v13, v14, &v34);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "Opening App Location from intent: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 72);
  v19 = *(v0 + 80);
  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 24) = *(v0 + 144);
  sub_E5504();
  v24 = *(v0 + 176);
  sub_E6CD4();
  *(v19 + *(v20 + 20)) = v24;
  (*(v22 + 104))(v21, enum case for ActionMetricsBehavior.notProcessed(_:), v23);
  v25 = async function pointer to ActionDispatching.dispatch<A>(action:metrics:)[1];
  v26 = swift_task_alloc();
  *(v0 + 160) = v26;
  v27 = sub_7D224();
  v28 = sub_7D278();
  *v26 = v0;
  v26[1] = sub_7CB94;
  v29 = *(v0 + 104);
  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  v32 = *(v0 + 64);

  return ActionDispatching.dispatch<A>(action:metrics:)(v29, v30, v32, &type metadata for OpenAppLocationAppIntent, v31, v27, v28);
}

uint64_t sub_7CB94()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  sub_7D2D0(v4);
  if (v0)
  {
    v9 = sub_7CDE8;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    v9 = sub_7CD4C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_7CD4C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[5];
  sub_E53A4();

  v6 = v0[1];

  return v6();
}

uint64_t sub_7CDE8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_7CE78@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_E5504();
  *a1 = v5;
  return result;
}

uint64_t sub_7CEB4(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_E5514();
}

void (*sub_7CEEC(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_7CF60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F800, &qword_EFA60);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F808, &qword_EFA68);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_E5744();
  v5._object = 0x80000000000F7320;
  v5._countAndFlagsBits = 0xD000000000000021;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F810, &unk_EFA98);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7D0F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return OpenAppLocationAppIntent.perform()(a1);
}

uint64_t sub_7D194(uint64_t a1)
{
  v2 = sub_6FB88();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_7D1D0()
{
  result = qword_12F828;
  if (!qword_12F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F828);
  }

  return result;
}

unint64_t sub_7D224()
{
  result = qword_12F830;
  if (!qword_12F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F830);
  }

  return result;
}

unint64_t sub_7D278()
{
  result = qword_12F838;
  if (!qword_12F838)
  {
    type metadata accessor for OpenAppLocationAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F838);
  }

  return result;
}

uint64_t sub_7D2D0(uint64_t a1)
{
  v2 = type metadata accessor for OpenAppLocationAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_7D330()
{
  result = qword_12F840;
  if (!qword_12F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F840);
  }

  return result;
}

unint64_t sub_7D38C()
{
  result = qword_12F848;
  if (!qword_12F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F848);
  }

  return result;
}

unint64_t sub_7D3E8()
{
  result = qword_12F850;
  if (!qword_12F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F850);
  }

  return result;
}

unint64_t sub_7D440()
{
  result = qword_12F858;
  if (!qword_12F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F858);
  }

  return result;
}

uint64_t sub_7D4CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_E51D4();
  *a2 = v5;
  return result;
}

uint64_t sub_7D50C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5504();
  *a2 = v5;
  return result;
}

uint64_t sub_7D54C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_E5504();
  *a2 = v5;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_7D5A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_7D5E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_7D6C0()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F870);
  __swift_project_value_buffer(v0, qword_12F870);
  return sub_E5914();
}

uint64_t static OpenChannelAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F870);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenChannelAppIntent.title.setter(uint64_t a1)
{
  if (qword_12CBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F870);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenChannelAppIntent.title.modify())()
{
  if (qword_12CBF8 != -1)
  {
    swift_once();
  }

  v0 = sub_E5944();
  __swift_project_value_buffer(v0, qword_12F870);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_7D974(uint64_t a1)
{
  if (qword_12CBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F870);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static OpenChannelAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F888, &qword_EFCE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F890, &qword_EFCE8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_7DBD4();
  sub_E5744();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F8A0, &unk_EFD18);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_7DBD4()
{
  result = qword_12F898;
  if (!qword_12F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F898);
  }

  return result;
}

uint64_t sub_7DC28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E5524();
  *a2 = result;
  return result;
}

void (*OpenChannelAppIntent.objectGraph.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E51C4();
  return sub_3CA68;
}

uint64_t sub_7DCC8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ChannelEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_7DE68(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_7DE68(v10, v8);

  sub_E5514();
  sub_7F2A0(v10, type metadata accessor for ChannelEntity);
}

uint64_t OpenChannelAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for ChannelEntity();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  sub_7DE68(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_7F2A0(a1, type metadata accessor for ChannelEntity);
}

uint64_t sub_7DE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*OpenChannelAppIntent.target.modify(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t OpenChannelAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F8A8, &qword_EFD28);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_E5944();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v31 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F8B0, &qword_EFD30);
  sub_E5914();
  sub_E5914();
  (*(v21 + 56))(v19, 0, 1, v20);
  v23 = type metadata accessor for ChannelEntity();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = sub_E5354();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v9, 1, 1, v24);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_7F3A0(&qword_12E040, type metadata accessor for ChannelEntity);
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t OpenChannelAppIntent.init(target:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ChannelEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  OpenChannelAppIntent.init()(v13);
  v11 = v13[1];
  *a2 = v13[0];
  a2[1] = v11;
  sub_7DE68(a1, v10);
  sub_7DE68(v10, v8);
  sub_E5514();
  sub_7F2A0(a1, type metadata accessor for ChannelEntity);
  return sub_7F2A0(v10, type metadata accessor for ChannelEntity);
}

uint64_t OpenChannelAppIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = sub_E6974();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = sub_E5BB4();
  *(v2 + 64) = v6;
  v7 = *(v6 - 8);
  *(v2 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v9 = type metadata accessor for OpenStoreURLAction();
  *(v2 + 88) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  v11 = sub_E6CF4();
  *(v2 + 104) = v11;
  v12 = *(v11 - 8);
  *(v2 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v15 = type metadata accessor for ChannelEntity();
  *(v2 + 136) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v17 = sub_E59C4();
  *(v2 + 160) = v17;
  v18 = *(v17 - 8);
  *(v2 + 168) = v18;
  v19 = *(v18 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = *v1;
  sub_E72F4();
  *(v2 + 200) = sub_E72E4();
  v21 = sub_E7294();
  *(v2 + 208) = v21;
  *(v2 + 216) = v20;

  return _swift_task_switch(sub_7E720, v21, v20);
}

uint64_t sub_7E720()
{
  v55 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  sub_E5504();
  sub_CC80(v4 + *(v6 + 48), v5);
  sub_7F2A0(v4, type metadata accessor for ChannelEntity);
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 184);
    v10 = *(v0 + 128);
    v11 = *(v0 + 56);

    sub_DB70(v10);
    sub_E6914();

    v12 = sub_E6964();
    v13 = sub_E74B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 192);
      v15 = *(v0 + 144);
      v16 = *(v0 + 48);
      v52 = *(v0 + 56);
      v17 = *(v0 + 40);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v54 = v19;
      *v18 = 136315138;
      sub_E5504();
      v20 = *v15;
      v21 = v15[1];

      sub_7F2A0(v15, type metadata accessor for ChannelEntity);
      v22 = sub_23E64(v20, v21, &v54);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_0, v12, v13, "Unable to open show %s, no share URL", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);

      (*(v16 + 8))(v52, v17);
    }

    else
    {
      v40 = *(v0 + 48);
      v39 = *(v0 + 56);
      v41 = *(v0 + 40);

      (*(v40 + 8))(v39, v41);
    }

    sub_7F1F8();
    swift_allocError();
    swift_willThrow();
    v42 = *(v0 + 176);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    v46 = *(v0 + 120);
    v45 = *(v0 + 128);
    v47 = *(v0 + 96);
    v48 = *(v0 + 80);
    v49 = *(v0 + 56);

    v50 = *(v0 + 8);

    return v50();
  }

  else
  {
    v24 = *(v0 + 168);
    v23 = *(v0 + 176);
    v25 = *(v0 + 160);
    v27 = *(v0 + 88);
    v26 = *(v0 + 96);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 64);
    v53 = *(v0 + 184);
    (*(v24 + 32))(v23, *(v0 + 128), v25);
    *(v0 + 16) = v53;
    (*(v24 + 16))(v26 + *(v27 + 20), v23, v25);
    sub_E6CD4();
    (*(v29 + 104))(v28, enum case for ActionMetricsBehavior.notProcessed(_:), v30);
    v31 = async function pointer to ActionDispatching.dispatch<A>(action:metrics:)[1];
    v32 = swift_task_alloc();
    *(v0 + 224) = v32;
    v33 = sub_7F24C();
    v34 = sub_7F3A0(&qword_12F8C8, type metadata accessor for OpenStoreURLAction);
    *v32 = v0;
    v32[1] = sub_7EB70;
    v35 = *(v0 + 120);
    v37 = *(v0 + 88);
    v36 = *(v0 + 96);
    v38 = *(v0 + 80);

    return ActionDispatching.dispatch<A>(action:metrics:)(v35, v36, v38, &type metadata for OpenChannelAppIntent, v37, v33, v34);
  }
}