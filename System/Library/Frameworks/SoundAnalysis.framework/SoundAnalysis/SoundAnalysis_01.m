uint64_t sub_1C97A4E30(uint64_t a1)
{
  sub_1C97A7CA0(a1);
  sub_1C97A4E00();
  return sub_1C97A7C50(v1, v2);
}

uint64_t sub_1C97A4E58()
{
  v1 = sub_1C97A79B8();
  result = sub_1C9945DA0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C97A4EA4()
{
  v0 = sub_1C9A924A8();
  v1 = MEMORY[0x1CCA902B0](v0);

  return v1;
}

uint64_t sub_1C97A4EDC()
{
  sub_1C9A924A8();
  sub_1C9A92528();
}

uint64_t sub_1C97A4F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C979BD9C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C97A4F60(uint64_t a1)
{
  v2 = sub_1C97A5224(&qword_1EC3C6300, type metadata accessor for Category);
  v3 = sub_1C97A5224(&qword_1EC3C6308, type metadata accessor for Category);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C97A501C(uint64_t a1)
{
  v2 = sub_1C97A5224(&qword_1EC3C62F0, type metadata accessor for Mode);
  v3 = sub_1C97A5224(&qword_1EC3C62F8, type metadata accessor for Mode);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C97A50D8(uint64_t a1)
{
  v2 = sub_1C97A5224(&qword_1EC3C6310, type metadata accessor for SNSoundIdentifier);
  v3 = sub_1C97A5224(&qword_1EC3C6318, type metadata accessor for SNSoundIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C97A5224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C97A52B4(uint64_t a1)
{
  v2 = sub_1C97A5224(&qword_1EC3C6630, type metadata accessor for SNDetectorIdentifier);
  v3 = sub_1C97A5224(&qword_1EC3C6638, type metadata accessor for SNDetectorIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C97A5370(uint64_t a1)
{
  v2 = sub_1C97A5224(&qword_1EC3C62E0, type metadata accessor for SNClassifierIdentifier);
  v3 = sub_1C97A5224(&qword_1EC3C62E8, type metadata accessor for SNClassifierIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C97A542C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C9A92478();

  *a1 = v2;
  return result;
}

uint64_t sub_1C97A5474(uint64_t a1)
{
  v2 = sub_1C97A5224(&qword_1EC3C54F0, type metadata accessor for MLModelMetadataKey);
  v3 = sub_1C97A5224(&qword_1EC3C6628, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1C97A58D8()
{
  result = qword_1EC3C6320;
  if (!qword_1EC3C6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6320);
  }

  return result;
}

uint64_t sub_1C97A592C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C97A5978(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C97A59D0(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&unk_1EC3C5E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C97A5A38()
{
  result = qword_1EC3C6328;
  if (!qword_1EC3C6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6328);
  }

  return result;
}

void *sub_1C97A5A8C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C97A5AD0()
{
  result = qword_1EC3C6338;
  if (!qword_1EC3C6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6338);
  }

  return result;
}

unint64_t sub_1C97A5B24()
{
  result = qword_1EC3C63A0;
  if (!qword_1EC3C63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63A0);
  }

  return result;
}

unint64_t sub_1C97A5B78()
{
  result = qword_1EC3CC840;
  if (!qword_1EC3CC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC840);
  }

  return result;
}

unint64_t sub_1C97A5BCC()
{
  result = qword_1EC3C63B0;
  if (!qword_1EC3C63B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63B0);
  }

  return result;
}

unint64_t sub_1C97A5C20()
{
  result = qword_1EC3C63B8;
  if (!qword_1EC3C63B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63B8);
  }

  return result;
}

unint64_t sub_1C97A5C74()
{
  result = qword_1EC3C63C0;
  if (!qword_1EC3C63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63C0);
  }

  return result;
}

unint64_t sub_1C97A5CC8()
{
  result = qword_1EC3CC830;
  if (!qword_1EC3CC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC830);
  }

  return result;
}

unint64_t sub_1C97A5D1C()
{
  result = qword_1EC3C63D0;
  if (!qword_1EC3C63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63D0);
  }

  return result;
}

unint64_t sub_1C97A5D70()
{
  result = qword_1EC3C63D8;
  if (!qword_1EC3C63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63D8);
  }

  return result;
}

unint64_t sub_1C97A5DC4()
{
  result = qword_1EC3C63E0;
  if (!qword_1EC3C63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63E0);
  }

  return result;
}

unint64_t sub_1C97A5E18()
{
  result = qword_1EC3C63E8;
  if (!qword_1EC3C63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63E8);
  }

  return result;
}

unint64_t sub_1C97A5E6C()
{
  result = qword_1EC3C63F0;
  if (!qword_1EC3C63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63F0);
  }

  return result;
}

unint64_t sub_1C97A5EC0()
{
  result = qword_1EC3C63F8;
  if (!qword_1EC3C63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C63F8);
  }

  return result;
}

unint64_t sub_1C97A5F14()
{
  result = qword_1EC3C6400;
  if (!qword_1EC3C6400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6400);
  }

  return result;
}

unint64_t sub_1C97A5FC4()
{
  result = qword_1EC3C6408;
  if (!qword_1EC3C6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6408);
  }

  return result;
}

unint64_t sub_1C97A6018()
{
  result = qword_1EC3C6410;
  if (!qword_1EC3C6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6410);
  }

  return result;
}

unint64_t sub_1C97A606C()
{
  result = qword_1EC3C6418;
  if (!qword_1EC3C6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6418);
  }

  return result;
}

unint64_t sub_1C97A60C0()
{
  result = qword_1EC3C6420;
  if (!qword_1EC3C6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6420);
  }

  return result;
}

unint64_t sub_1C97A6114()
{
  result = qword_1EC3CC820;
  if (!qword_1EC3CC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC820);
  }

  return result;
}

unint64_t sub_1C97A6168()
{
  result = qword_1EC3C6430;
  if (!qword_1EC3C6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6430);
  }

  return result;
}

unint64_t sub_1C97A61BC()
{
  result = qword_1EC3C6438;
  if (!qword_1EC3C6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6438);
  }

  return result;
}

unint64_t sub_1C97A6210()
{
  result = qword_1EC3C6440;
  if (!qword_1EC3C6440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6440);
  }

  return result;
}

unint64_t sub_1C97A62C0()
{
  result = qword_1EC3C6448;
  if (!qword_1EC3C6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6448);
  }

  return result;
}

unint64_t sub_1C97A6314()
{
  result = qword_1EC3C6450;
  if (!qword_1EC3C6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6450);
  }

  return result;
}

uint64_t sub_1C97A6368(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }
  }
}

uint64_t sub_1C97A6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C97A63F8()
{
  result = qword_1EC3CC860;
  if (!qword_1EC3CC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC860);
  }

  return result;
}

unint64_t sub_1C97A644C()
{
  result = qword_1EC3C6460;
  if (!qword_1EC3C6460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6460);
  }

  return result;
}

unint64_t sub_1C97A64FC()
{
  result = qword_1EC3CBAA0;
  if (!qword_1EC3CBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CBAA0);
  }

  return result;
}

unint64_t sub_1C97A6550()
{
  result = qword_1EC3C6470;
  if (!qword_1EC3C6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6470);
  }

  return result;
}

unint64_t sub_1C97A65A4()
{
  result = qword_1EC3C8080;
  if (!qword_1EC3C8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8080);
  }

  return result;
}

unint64_t sub_1C97A65F8()
{
  result = qword_1EC3C6480;
  if (!qword_1EC3C6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6480);
  }

  return result;
}

unint64_t sub_1C97A664C()
{
  result = qword_1EC3CAE10;
  if (!qword_1EC3CAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAE10);
  }

  return result;
}

unint64_t sub_1C97A66A0()
{
  result = qword_1EC3C6490;
  if (!qword_1EC3C6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6490);
  }

  return result;
}

unint64_t sub_1C97A66F4()
{
  result = qword_1EC3C6498;
  if (!qword_1EC3C6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6498);
  }

  return result;
}

unint64_t sub_1C97A6748()
{
  result = qword_1EC3C64A0;
  if (!qword_1EC3C64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C64A0);
  }

  return result;
}

unint64_t sub_1C97A679C()
{
  result = qword_1EC3C64A8;
  if (!qword_1EC3C64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C64A8);
  }

  return result;
}

unint64_t sub_1C97A67F0()
{
  result = qword_1EC3C64B0;
  if (!qword_1EC3C64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C64B0);
  }

  return result;
}

unint64_t sub_1C97A68A0()
{
  result = qword_1EC3CAD10;
  if (!qword_1EC3CAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAD10);
  }

  return result;
}

unint64_t sub_1C97A68F4()
{
  result = qword_1EC3C64C0;
  if (!qword_1EC3C64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C64C0);
  }

  return result;
}

unint64_t sub_1C97A69A4()
{
  result = qword_1EC3C64C8;
  if (!qword_1EC3C64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C64C8);
  }

  return result;
}

unint64_t sub_1C97A69F8()
{
  result = qword_1EC3C64D0;
  if (!qword_1EC3C64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C64D0);
  }

  return result;
}

unint64_t sub_1C97A6A4C()
{
  result = qword_1EC3C8130;
  if (!qword_1EC3C8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8130);
  }

  return result;
}

unint64_t sub_1C97A6AA0()
{
  result = qword_1EC3C64E0;
  if (!qword_1EC3C64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C64E0);
  }

  return result;
}

unint64_t sub_1C97A6AF4()
{
  result = qword_1EC3C64E8;
  if (!qword_1EC3C64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C64E8);
  }

  return result;
}

unint64_t sub_1C97A6B48()
{
  result = qword_1EC3C64F0;
  if (!qword_1EC3C64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C64F0);
  }

  return result;
}

uint64_t sub_1C97A6B9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }
  }
}

unint64_t sub_1C97A6C28()
{
  result = qword_1EC3C7D10;
  if (!qword_1EC3C7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7D10);
  }

  return result;
}

unint64_t sub_1C97A6C7C()
{
  result = qword_1EC3C6500;
  if (!qword_1EC3C6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6500);
  }

  return result;
}

unint64_t sub_1C97A6CD0()
{
  result = qword_1EC3C6508;
  if (!qword_1EC3C6508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6508);
  }

  return result;
}

unint64_t sub_1C97A6D24()
{
  result = qword_1EC3C6510;
  if (!qword_1EC3C6510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6510);
  }

  return result;
}

unint64_t sub_1C97A6DD4()
{
  result = qword_1EC3CD2E0;
  if (!qword_1EC3CD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD2E0);
  }

  return result;
}

unint64_t sub_1C97A6E28()
{
  result = qword_1EC3C6520;
  if (!qword_1EC3C6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6520);
  }

  return result;
}

unint64_t sub_1C97A6E7C()
{
  result = qword_1EC3C6528;
  if (!qword_1EC3C6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6528);
  }

  return result;
}

unint64_t sub_1C97A6ED0()
{
  result = qword_1EC3C6530;
  if (!qword_1EC3C6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6530);
  }

  return result;
}

unint64_t sub_1C97A6F24()
{
  result = qword_1EC3C6538;
  if (!qword_1EC3C6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6538);
  }

  return result;
}

unint64_t sub_1C97A6F78()
{
  result = qword_1EC3C6540;
  if (!qword_1EC3C6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6540);
  }

  return result;
}

unint64_t sub_1C97A6FCC()
{
  result = qword_1EC3D21E0;
  if (!qword_1EC3D21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D21E0);
  }

  return result;
}

uint64_t sub_1C97A7020(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1C97A7034(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C97A7054(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_1C97A7094(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1C97A71DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C97A721C(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for Time(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C97A74F8(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return sub_1C97A79E8();
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return sub_1C97A79E8();
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return sub_1C97A79E8();
}

_BYTE *sub_1C97A7560(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 sub_1C97A7628(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void sub_1C97A7664(uint64_t a1, unint64_t *a2)
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

__n128 sub_1C97A775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __n128 a12, __int128 a13)
{
  *v13 = a10;
  v13[1] = a11;
  result = a12;
  v13[2] = a12;
  v13[3] = a13;
  return result;
}

id sub_1C97A7794(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return [v10 a2];
}

__n128 sub_1C97A77B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12)
{
  *v12 = a10;
  v12[1] = a11;
  return a12;
}

id sub_1C97A77DC(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C97A7810()
{

  return swift_dynamicCast();
}

uint64_t sub_1C97A7834(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_1C97A7870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20)
{
  v22 = a20;
  *(v20 - 64) = a19;
  *(v20 - 48) = v22;

  return sub_1C97A2C7C(v20 - 64, &a19);
}

uint64_t sub_1C97A789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  a11 = a9;
  a12 = a10;

  return sub_1C97A2C7C(&a11, &a9);
}

uint64_t sub_1C97A78BC(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_1C97A78DC()
{

  return sub_1C9A92478();
}

id sub_1C97A78F8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C97A7914()
{

  return swift_dynamicCast();
}

uint64_t sub_1C97A7930()
{

  return swift_dynamicCast();
}

uint64_t sub_1C97A7950()
{

  return sub_1C9A92478();
}

uint64_t sub_1C97A7978(_OWORD *a1)
{
  v3 = v1[1];
  a1[1] = *v1;
  a1[2] = v3;
  v4 = v1[3];
  a1[3] = v1[2];
  a1[4] = v4;

  return sub_1C9A913A8();
}

_OWORD *sub_1C97A799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_1C99785F8(&a11, &a15);
}

uint64_t sub_1C97A79DC(__n128 a1, __n128 a2)
{
  *(v2 - 64) = a1;
  *(v2 - 48) = a2;
  return v2 - 64;
}

__n128 sub_1C97A79FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

_OWORD *sub_1C97A7A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_1C99785F8(&a10, &a14);
}

uint64_t sub_1C97A7A80()
{

  return swift_allocError();
}

uint64_t sub_1C97A7A98()
{

  return swift_allocObject();
}

uint64_t sub_1C97A7AD0(uint64_t a1)
{
  sub_1C97A592C(a1);

  return sub_1C98058A4(v1 - 104);
}

uint64_t sub_1C97A7B08()
{

  return sub_1C9A93318();
}

id sub_1C97A7B20(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C97A7B70()
{

  return sub_1C97A59D0(v0 - 64);
}

id sub_1C97A7BA4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1C97A7BC0(uint64_t a1)
{
  sub_1C97A592C(a1);

  return sub_1C98058A4(v1 - 120);
}

uint64_t sub_1C97A7BEC()
{

  return sub_1C9A92478();
}

uint64_t sub_1C97A7C08(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1C97A59D0(va);
}

uint64_t sub_1C97A7C50(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C97A7C70()
{

  return sub_1C9A93318();
}

_OWORD *sub_1C97A7C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_1C97A2D34(&a15, (v15 - 104));
}

id sub_1C97A7D00(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C97A7D30()
{

  return sub_1C9A93318();
}

uint64_t sub_1C97A7D48()
{

  return sub_1C9A92478();
}

uint64_t sub_1C97A7D60(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1C97A59D0(va);
}

uint64_t sub_1C97A7D78()
{

  return sub_1C9A93318();
}

uint64_t sub_1C97A7DA4()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C97A7DC4()
{

  return sub_1C9A91388();
}

uint64_t sub_1C97A7DE4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1C97A59D0(va);
}

void sub_1C97A7E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t))
{
  type metadata accessor for XPCProxyEncoder();
  inited = swift_initStackObject();
  inited[2] = 0;
  inited[3] = 0;
  inited[4] = a3;
  inited[5] = a4;

  a5(inited, a1, a2);
  if (!v5)
  {
    if (sub_1C97A8568())
    {
      swift_setDeallocating();

      sub_1C97A8D58();
      sub_1C97AA868();
      swift_deallocClassInstance();
      sub_1C97AA900();
      sub_1C97AA074(v12);
      goto LABEL_3;
    }

    sub_1C97A8E8C();
    sub_1C97AA928();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  swift_setDeallocating();
  sub_1C97A8D58();
  sub_1C97AA868();
  swift_deallocClassInstance();
LABEL_3:
  sub_1C97AA900();
}

uint64_t sub_1C97A7F94@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *sub_1C97A7FCC(void *(*a1)(uint64_t *__return_ptr))
{
  result = a1(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C97A8010()
{
  v2 = v0[4];
  v1 = v0[5];
  type metadata accessor for XPCProxyEncoder.UnkeyedContainer();
  v3 = swift_allocObject();
  v3[2] = MEMORY[0x1E69E7CC0];
  v3[3] = v2;
  v3[4] = v1;
  sub_1C97AA878();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C97A8F74;
  *(v4 + 24) = v3;
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C97A8F90;
  *(v5 + 24) = v4;
  if (v0[2])
  {
    v8 = v0[3];
    v9 = v0[2];
    sub_1C97A8E8C();
    sub_1C97AA928();
    v10 = swift_allocError();
    sub_1C97AA89C(v10, v11);
    swift_willThrow();
    v0[2] = v9;
    v0[3] = v8;

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C97AA878();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1C97AA808;
    *(v6 + 24) = v5;
    v0[2] = sub_1C97AA824;
    v0[3] = v6;
  }

  return result;
}

void sub_1C97A81C0()
{
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v21 = MEMORY[0x1E69E7CC0];

    sub_1C97B792C();
    v5 = 0;
    v4 = v21;
    v6 = v2 + 40;
    while (v5 < *(v2 + 16))
    {
      v7 = *(v6 - 8);

      v7(&v19, v8);
      if (v1)
      {

        goto LABEL_11;
      }

      v9 = v19;
      v10 = v20;
      v21 = v4;
      v11 = *(v4 + 16);
      if (v11 >= *(v4 + 24) >> 1)
      {
        v17 = v20;
        v18 = v19;
        sub_1C97B792C();
        v10 = v17;
        v9 = v18;
        v4 = v21;
      }

      ++v5;
      *(v4 + 16) = v11 + 1;
      v12 = v4 + 32 * v11;
      *(v12 + 32) = v9;
      *(v12 + 48) = v10;
      v6 += 16;
      if (v3 == v5)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1C97AA878();
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = 0;
    sub_1C97AA878();
    v14 = swift_allocObject();
    *(v14 + 16) = &unk_1C9A9C530;
    *(v14 + 24) = v13;
    v16 = v0[3];
    v15 = v0[4];
    swift_retain_n();
    sub_1C97A7E5C(&unk_1C9A9C540, v14, v16, v15, sub_1C97A9C60);
    sub_1C97AA968();

LABEL_11:
    sub_1C97AA910();
  }
}

uint64_t sub_1C97A83D4()
{
  v2 = v0[4];
  v1 = v0[5];
  type metadata accessor for XPCProxyEncoder.SingleValueContainer();
  sub_1C97A7DFC();
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v2;
  v3[5] = v1;
  sub_1C97AA878();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C97AA7F0;
  *(v4 + 24) = v3;
  if (v0[2])
  {
    v7 = v0[3];
    v8 = v0[2];
    sub_1C97A8E8C();
    sub_1C97AA928();
    v9 = swift_allocError();
    sub_1C97AA89C(v9, v10);
    swift_willThrow();
    v0[2] = v8;
    v0[3] = v7;

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C97AA878();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C97AA808;
    *(v5 + 24) = v4;
    v0[2] = sub_1C97AA824;
    v0[3] = v5;
  }

  return result;
}

uint64_t sub_1C97A8518()
{
  result = sub_1C97A8568();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C97A8568()
{
  v2 = *(v0 + 16);
  if (v2)
  {

    v2(v3);
    if (!v1)
    {
      sub_1C97AA968();
    }

    sub_1C979AFD4(v2);
  }

  return sub_1C97AA910();
}

uint64_t sub_1C97A8604()
{
  sub_1C97A8A7C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C97A8638(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C97A8658, 0, 0);
}

uint64_t sub_1C97A8658()
{
  v1 = v0[6];
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  if (v4 == v5)
  {
    v6 = xmmword_1C9A9C440;
    v7 = 0uLL;
  }

  else
  {
    if (v4 >= v5)
    {
      __break(1u);
      return result;
    }

    v8 = v3 + 32 * v4;
    v11 = *(v8 + 48);
    v12 = *(v8 + 32);
    *(v1 + 24) = v4 + 1;
    sub_1C97A8F30(v12);
    v7 = v11;
    v6 = v12;
  }

  v9 = v0[5];
  *v9 = v6;
  v9[1] = v7;
  v10 = v0[1];

  return v10();
}

uint64_t sub_1C97A8728(uint64_t a1, int *a2)
{
  *(v2 + 48) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_1C97A881C;

  return v5(v2 + 16);
}

uint64_t sub_1C97A881C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97A8918()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1C97A8954()
{
  v4 = *(v0 + 24);
  type metadata accessor for XPCProxyEncoder();
  sub_1C97A7DFC();
  v5 = swift_allocObject();
  sub_1C97AA8B8(v5);
  v3(v5, v4, v2);
  if (!v1)
  {
    sub_1C97AA878();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1C97AA538;
    *(v6 + 24) = v5;
    swift_beginAccess();

    sub_1C99DCA34();
    v7 = *(*(v0 + 16) + 16);
    sub_1C99DCAA8(v7);
    v8 = *(v0 + 16);
    *(v8 + 16) = v7 + 1;
    v9 = v8 + 16 * v7;
    *(v9 + 32) = sub_1C97AA808;
    *(v9 + 40) = v6;
    *(v0 + 16) = v8;
    swift_endAccess();
  }
}

uint64_t sub_1C97A8A7C()
{

  return v0;
}

uint64_t sub_1C97A8AA4()
{
  v4 = v0;
  v5 = v0[4];
  type metadata accessor for XPCProxyEncoder();
  sub_1C97A7DFC();
  v6 = swift_allocObject();
  sub_1C97AA8B8(v6);
  v3(v6, v5, v2);
  if (v1)
  {
  }

  sub_1C97AA878();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C97AA7F0;
  *(v7 + 24) = v6;
  v8 = v0[2];
  if (v8)
  {
    v9 = v0[3];
    sub_1C97A8E8C();
    sub_1C97AA928();
    v10 = swift_allocError();
    sub_1C97AA89C(v10, v11);
    swift_willThrow();
    v4[2] = v8;
    v4[3] = v9;
  }

  sub_1C97AA878();
  result = swift_allocObject();
  *(result + 16) = sub_1C97A8E58;
  *(result + 24) = v7;
  v0[2] = sub_1C97A8E70;
  v0[3] = result;
  return result;
}

uint64_t sub_1C97A8BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97A7DFC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  sub_1C97AA878();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C97A8EE0;
  *(v10 + 24) = v9;
  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = *(v4 + 24);
    sub_1C97A8E8C();
    sub_1C97AA928();
    v13 = swift_allocError();
    sub_1C97AA89C(v13, v14);
    swift_willThrow();
    *(v4 + 16) = v11;
    *(v4 + 24) = v12;
    sub_1C97AA97C();
  }

  else
  {
    sub_1C97AA878();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C97A8EEC;
    *(v16 + 24) = v10;
    *(v4 + 16) = sub_1C97AA824;
    *(v4 + 24) = v16;
    return sub_1C97AA97C();
  }
}

uint64_t sub_1C97A8D2C()
{
  sub_1C97A8D58();
  sub_1C97AA868();

  return swift_deallocClassInstance();
}

uint64_t sub_1C97A8D58()
{
  sub_1C979AFD4(*(v0 + 16));

  return v0;
}

unint64_t sub_1C97A8E8C()
{
  result = qword_1EC3C7C60;
  if (!qword_1EC3C7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C60);
  }

  return result;
}

uint64_t sub_1C97A8EEC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1C97A8F30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C97A8F90()
{
  result = (*(v0 + 16))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C97A8FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C97A83D4();
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  v8[5] = v7;
  swift_retain_n();

  sub_1C97A8BD4(&unk_1C9A9C590, v8, v6, v7);
}

uint64_t sub_1C97A909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  v12 = swift_task_alloc();
  *(v6 + 72) = v12;
  *v12 = v6;
  v12[1] = sub_1C97A9180;

  return sub_1C97A9284(v6 + 16, a3, a4, a2, a5, a6);
}

uint64_t sub_1C97A9180()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (!v0)
  {
    v7 = *(v3 + 64);
    v8 = *(v3 + 16);
    v9 = *(v3 + 48);
    v7[1] = *(v3 + 32);
    v7[2] = v9;
    *v7 = v8;
  }

  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_1C97A9284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a2;
  v6[22] = a3;
  v6[20] = a1;
  type metadata accessor for RemoteRequest();
  v8 = swift_task_alloc();
  v6[25] = v8;
  v9 = swift_task_alloc();
  v6[26] = v9;
  *v9 = v6;
  v9[1] = sub_1C97A9374;

  return (sub_1C98A13D4)(v8, a4);
}

uint64_t sub_1C97A9374()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  v3[27] = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v13 = (v3[21] + *v3[21]);
    v10 = swift_task_alloc();
    v3[28] = v10;
    *v10 = v5;
    v10[1] = sub_1C97A9538;
    v11 = v3[25];

    return v13(v3 + 14, v11);
  }
}

uint64_t sub_1C97A9538()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 232) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97A9634()
{
  sub_1C97AA884();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C97A9694()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v4;
  *(v0 + 48) = *(v0 + 144);
  sub_1C9817A64((v0 + 16), v2, v3, (v0 + 64));
  v5 = *(v0 + 200);
  if (v1)
  {
    sub_1C97AA780(*(v0 + 112), *(v0 + 120));
    sub_1C97AA900();
    sub_1C97AA074(v6);
    sub_1C97AA724(v5);
  }

  else
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 128);
    sub_1C97AA780(*(v0 + 112), *(v0 + 120));
    sub_1C97AA074(v9);
    sub_1C97AA724(v5);
    v11 = *(v0 + 80);
    v10 = *(v0 + 96);
    *v8 = *(v0 + 64);
    v8[1] = v11;
    v8[2] = v10;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1C97A97B8()
{
  sub_1C97AA884();
  sub_1C97AA724(*(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C97A9820(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1C97A9910;

  return v4(v1 + 16);
}

uint64_t sub_1C97A9910()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97A9A44()
{
  sub_1C97AA884();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C97A9B30;

  return v4(v0 + 16);
}

uint64_t sub_1C97A9B30()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97A9C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97A83D4();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1C9A9C550;
  *(v6 + 24) = v5;
  v8[3] = sub_1C97A2CEC(&qword_1EC3C6740);
  v8[4] = sub_1C97AA46C();
  v8[0] = &unk_1C9A9C560;
  v8[1] = v6;

  sub_1C97A8AA4();

  return sub_1C97A592C(v8);
}

uint64_t sub_1C97A9D64(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1C97A9E54;

  return v4(v1 + 16);
}

uint64_t sub_1C97A9E54()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C97A9F50()
{
  sub_1C97AA884();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = sub_1C97AA858(v3);
  *v4 = v5;
  v4[1] = sub_1C97AA7CC;

  return sub_1C97A8638(v2, v0);
}

uint64_t sub_1C97A9FE0()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97AA7CC;
  v3 = sub_1C97AA934();

  return sub_1C97A8728(v3, v4);
}

uint64_t sub_1C97AA074(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C97AA0B8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C97AA7C4;

  return sub_1C97A9D64(a2);
}

uint64_t sub_1C97AA158()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97AA7CC;
  v3 = sub_1C97AA934();

  return v4(v3);
}

uint64_t sub_1C97AA1F8(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1C97AA298;

  return sub_1C97A9820(a3);
}

uint64_t sub_1C97AA298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97AA890();
  v11 = v10;
  sub_1C97AA84C();
  *v12 = v11;
  v13 = *v5;
  sub_1C97AA83C();
  *v14 = v13;

  if (!v4)
  {
    v15 = *(v11 + 16);
    *v15 = a1;
    v15[1] = a2;
    v15[2] = a3;
    v15[3] = a4;
  }

  v16 = *(v13 + 8);

  return v16();
}

uint64_t sub_1C97AA3B8()
{
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97AA7CC;
  v3 = sub_1C97AA948();

  return v4(v3);
}

unint64_t sub_1C97AA46C()
{
  result = qword_1EC3C6748;
  if (!qword_1EC3C6748)
  {
    sub_1C97AA4F0(&qword_1EC3C6740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6748);
  }

  return result;
}

uint64_t sub_1C97AA4F0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C97AA554@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1C97AA58C()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_1C97AA858(v4);
  *v5 = v6;
  v5[1] = sub_1C97AA640;
  v7 = sub_1C97AA948();

  return sub_1C97A909C(v7, v8, v9, v1, v3, v2);
}

uint64_t sub_1C97AA640()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C97AA724(uint64_t a1)
{
  v2 = type metadata accessor for RemoteRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C97AA780(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C97A5978(a1, a2);
  }

  return a1;
}

uint64_t sub_1C97AA8B8(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v3;
  a1[5] = v2;
  sub_1C97A5A8C(v1, v1[3]);
}

uint64_t sub_1C97AA97C()
{

  return sub_1C97A8F30(v0);
}

void sub_1C97AA99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v139 = a4;
  v134[0] = a2;
  v140 = a1;
  v134[2] = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1C97ABF78(TupleTypeMetadata2, v141);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97ABFC0();
  sub_1C97ABFB4(v13);
  v14 = sub_1C9A92EE8();
  sub_1C97ABF78(v14, &v140);
  v128 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AC02C();
  sub_1C97ABFB4(v17);
  swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getTupleTypeMetadata2();
  v20 = sub_1C97ABF78(v19, v134);
  v107 = v21;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97ABFC0();
  sub_1C97ABFB4(v23);
  v112 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C97ABFC0();
  sub_1C97ABFB4(v26);
  v135 = a5;
  v114 = v18;
  swift_getAssociatedConformanceWitness();
  v27 = sub_1C9A92EE8();
  sub_1C97ABF78(v27, &v130);
  v104 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  sub_1C97ABFB4(v30);
  v31 = swift_checkMetadataState();
  v32 = sub_1C97ABF78(v31, &v148);
  v120 = v33;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97ABFC0();
  sub_1C97ABFB4(v35);
  v36 = swift_getAssociatedTypeWitness();
  v133 = *(v36 - 8);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  sub_1C97ABFB4(v38);
  v136 = a6;
  swift_getAssociatedConformanceWitness();
  v122 = v36;
  swift_getAssociatedTypeWitness();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  sub_1C97ABFB4(v40);
  v138 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97ABFC0();
  sub_1C97ABFB4(v44);
  v127 = swift_getTupleTypeMetadata2();
  v45 = sub_1C9A93258();
  v46 = sub_1C97ABF78(v45, v147);
  v131 = v47;
  MEMORY[0x1EEE9AC00](v46);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C97ABFC0();
  sub_1C97ABFB4(v49);
  swift_getAssociatedTypeWitness();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v50);
  v142 = 0;
  v141[11] = a3;
  v141[12] = v139;
  v141[13] = a5;
  v141[14] = a6;
  sub_1C97ABFCC();
  v146 = sub_1C984EF0C(v51, v52, v53, v54, v55, v56);
  sub_1C9A92C38();
  swift_getAssociatedConformanceWitness();
  sub_1C9A928E8();
  sub_1C97ABE3C(AssociatedTypeWitness, AssociatedTypeWitness);
  sub_1C97ABFFC();
  v57 = sub_1C9A927C8();
  sub_1C9A92C58();
  sub_1C999F6C4(v57);
  v58 = sub_1C9A92818();

  v147[1] = v58;
  v59 = sub_1C97A2CEC(&unk_1EC3CE7E0);
  v60 = sub_1C9A928B8();
  v61 = sub_1C97ABEA8();
  WitnessTable = swift_getWitnessTable();
  sub_1C9A93BC8();

  v146 = v142;
  v147[0] = v143;
  v141[3] = a3;
  v141[4] = v139;
  v141[5] = v135;
  v141[6] = v136;
  sub_1C97AC020();
  v141[7] = v63;
  v142 = v59;
  v143 = v60;
  v64 = v131;
  v144 = v61;
  v145 = WitnessTable;
  sub_1C9A935D8();
  swift_getWitnessTable();
  v65 = v130;
  v66 = v132;
  sub_1C9A926A8();

  (*(v64 + 16))(v126, v65, v66);
  if (sub_1C97ABF20(v126, 1, v127) == 1)
  {
    v67 = *(v64 + 8);
    v67(v126, v66);
    sub_1C97ABFCC();
    sub_1C9A92E78();
    v67(v65, v66);
    return;
  }

  v68 = *v126;
  (*(v138 + 32))(v121, &v126[*(v127 + 48)], AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1C9A93BA8();
  sub_1C9A93AF8();
  sub_1C9A932B8();
  v69 = (v133 + 1);
  v70 = v133[1];
  v70(v123, v122);
  sub_1C97AC020();
  v72 = __OFSUB__(v68, v71);
  v73 = v68 - v71;
  if (v72)
  {
    __break(1u);
    goto LABEL_11;
  }

  v133 = v69;
  v74 = v140;
  v134[0] = v73;
  v75 = sub_1C9A92D58();
  v76 = *(v120 + 16);
  v77 = sub_1C97AC038();
  v79 = *(v78 - 256);
  v76(v77);
  v75(&v142, 0);
  v80 = sub_1C9A92C08();
  v81 = *(v120 + 8);
  v81(v74, v79);
  sub_1C97AC020();
  if (__OFSUB__(v80, v82))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v101 = v81;
  sub_1C97ABFCC();
  v83 = sub_1C9A92D58();
  v84 = sub_1C97AC038();
  v134[0] = v76;
  v76(v84);
  v83(&v142, 0);
  sub_1C97AC04C();
  sub_1C9A92BF8();
  sub_1C9A92C28();
  v85 = *(v112 + 8);
  v85(v111, v114);
  sub_1C97AC04C();
  sub_1C9A92C58();
  if ((sub_1C9A923E8() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v86 = *(v112 + 32);
  v86(v106, v110, v114);
  v86(v106 + *(v109 + 48), v111, v114);
  (*(v107 + 16))();
  v113 = *(v109 + 48);
  v86(v103, v108, v114);
  v85(v108 + v113, v114);
  (*(v107 + 32))();
  v86(v103 + *(v105 + 36), v108 + *(v109 + 48), v114);
  v85(v108, v114);
  sub_1C9A92D48();
  (*(v104 + 8))();
  sub_1C9A93BA8();
  sub_1C9A93AF8();
  sub_1C9A932B8();
  v70(v123, v122);
  if ((sub_1C97AC058() & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v87 = v138;
  v88 = *(v138 + 16);
  v135 = v138 + 16;
  v133 = v88;
  (v88)(v115, v141[0], AssociatedTypeWitness);
  sub_1C97ABFD8();
  v122();
  v89 = sub_1C97AC04C();
  v125 = v90;
  (v90)(v89);
  v136 = *(v117 + 48);
  v91 = v137;
  (v122)(v118, v102, AssociatedTypeWitness);
  v92 = *(v87 + 8);
  v92(&v136[v102], AssociatedTypeWitness);
  v93 = sub_1C97AC04C();
  v124 = v94;
  (v94)(v93);
  (v122)(v118 + *(v116 + 36), v102 + *(v117 + 48), AssociatedTypeWitness);
  v136 = v92;
  v138 = v87 + 8;
  v92(v102, AssociatedTypeWitness);
  sub_1C97ABE3C(v91, v91);
  sub_1C97ABFFC();
  v95 = sub_1C9A927C8();
  (v134[0])(v96, v129, v91);
  v142 = sub_1C999F6C4(v95);
  sub_1C9A928B8();
  swift_getWitnessTable();
  sub_1C97ABFCC();
  sub_1C9A92D78();
  v134[0] = *(v128 + 8);
  (v134[0])();
  sub_1C9A92BF8();
  if ((sub_1C97AC058() & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_1C97ABFD8();
  v119();
  (v133)(v115 + *(v117 + 48), v141[0], AssociatedTypeWitness);
  v125();
  v97 = *(v117 + 48);
  (v119)(v118, v102, AssociatedTypeWitness);
  v98 = v136;
  (v136)(v102 + v97, AssociatedTypeWitness);
  v124();
  (v119)(v118 + *(v116 + 36), v102 + *(v117 + 48), AssociatedTypeWitness);
  v98(v102, AssociatedTypeWitness);
  sub_1C97ABFCC();
  sub_1C9A92D68();
  sub_1C97AC020();
  v99();
  v100 = v137;
  v101(v129, v137);
  v101(v134[1], v100);
  v98(v141[0], AssociatedTypeWitness);
  v98(v121, AssociatedTypeWitness);
  (*(v131 + 8))(v130, v132);
}

uint64_t sub_1C97ABDA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  result = sub_1C9A92C08();
  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + result;
  }

  return result;
}

uint64_t sub_1C97ABE3C(uint64_t a1, uint64_t a2)
{
  if (sub_1C97ABF48(a2))
  {

    return sub_1C97A2CEC(&unk_1EC3C6E20);
  }

  else
  {

    return sub_1C9A93AA8();
  }
}

unint64_t sub_1C97ABEA8()
{
  result = qword_1EC3C4A38;
  if (!qword_1EC3C4A38)
  {
    sub_1C97AA4F0(&unk_1EC3CE7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C4A38);
  }

  return result;
}

uint64_t sub_1C97ABF48(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C97ABFFC()
{

  return swift_allocObject();
}

uint64_t sub_1C97AC058()
{

  return sub_1C9A923E8();
}

uint64_t sub_1C97AC078()
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  return sub_1C9A93D18();
}

uint64_t sub_1C97AC0C8()
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  return sub_1C9A93D18();
}

BOOL sub_1C97AC108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1C9A92438())
  {
    *&v17 = a3;
    *(&v17 + 1) = a4;
    *&v18 = a5;
    *(&v18 + 1) = a6;
    v12 = *(type metadata accessor for SharedLogMelSpectrogram.Configuration() + 52);
    v13 = *(a1 + v12 + 16);
    v17 = *(a1 + v12);
    v18 = v13;
    v19 = *(a1 + v12 + 32);
    v20 = *(a1 + v12 + 48);
    sub_1C97AEABC((a2 + v12));
    return sub_1C99B6E8C(&v17, &v16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C97AC1B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001C9AD41E0 == a2;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C9AD4200 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C97AC290(char a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a1 & 1);
  return sub_1C9A93D18();
}

unint64_t sub_1C97AC2E4(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1C97AC35C()
{
  sub_1C9A93CC8();
  sub_1C979AF70(v2, *v0);
  return sub_1C9A93D18();
}

uint64_t sub_1C97AC3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97AC1B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97AC41C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97AC288();
  *a1 = result;
  return result;
}

uint64_t sub_1C97AC450(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C97AC4A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C97AC4F8(uint64_t a1, uint64_t a2)
{
  sub_1C9A92398();
  sub_1C97AEABC((v2 + *(a2 + 52)));
  return sub_1C99B7894();
}

uint64_t sub_1C97AC550(uint64_t a1)
{
  sub_1C9A93CC8();
  sub_1C97AC4F8(v3, a1);
  return sub_1C9A93D18();
}

__n128 sub_1C97AC598@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1C97AEB3C();
  (*(v4 + 32))(a2);
  v5 = a2 + *(type metadata accessor for SharedLogMelSpectrogram.Configuration() + 52);
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v6;
  result = *(a1 + 32);
  *(v5 + 32) = result;
  *(v5 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1C97AC64C(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C97AC4F8(v4, a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C97AC6A0()
{
  sub_1C97A2CEC(qword_1EC3C6788);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  v3[2] = sub_1C97AE650;
  v3[3] = v0;
  v3[4] = v2;

  sub_1C97A2CEC(&unk_1EC3CC280);
  sub_1C97AE9EC();
  sub_1C97AE67C(v4, &unk_1EC3CC280);
  sub_1C9A91EF8();
  sub_1C97AE67C(&unk_1EC3C4A58, qword_1EC3C6788);
  v5 = sub_1C9A91F28();
  v6 = sub_1C97AEB30();
  v7(v6);
  return v5;
}

uint64_t sub_1C97AC84C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C97AC8B8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C97AC930(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 52;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFFC;
    if ((v8 & 0xFFFFFFFC) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

LABEL_21:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_25;
    }

    return (v16 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return sub_1C97ABF20(result, v5, v4);
  }

  v17 = *(((result + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 24);
  if (v17 < 2)
  {
    return 0;
  }

  v16 = (v17 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_1C97ACA6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 52;
  if (((v9 + 3) & 0xFFFFFFFC) == 0xFFFFFFCC)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0xFE)
          {
            v17 = &a1[v9 + 3] & 0xFFFFFFFFFFFFFFFCLL;
            if (a2 > 0xFE)
            {
              *(v17 + 40) = 0;
              *(v17 + 24) = 0u;
              *(v17 + 8) = 0u;
              *(v17 + 48) = 0;
              *v17 = (a2 - 255);
            }

            else
            {
              *(v17 + 24) = a2 + 1;
            }
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 3) & 0xFFFFFFFC) == 0xFFFFFFCC)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 3) & 0xFFFFFFFC) != 0xFFFFFFCC)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 52);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C97ACCAC()
{
  sub_1C97AEB94();
  v21 = v1;
  v18 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v19 = *(v2 + 32);
  v20 = v6;
  v22 = v6;
  v23 = v19;
  type metadata accessor for SharedLogMelSpectrogram.Configuration.CodingKeys();
  sub_1C97AEA04();
  swift_getWitnessTable();
  v7 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1C97A5A8C(v5, v5[3]);
  v13 = v18;
  sub_1C9A93DD8();
  v14 = v21;
  sub_1C9A93A18();
  if (!v14)
  {
    v15 = (v13 + *(v3 + 52));
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
    v24 = v15[2];
    v25 = *(v15 + 12);
    sub_1C97AE5FC();
    sub_1C9A93A18();
  }

  (*(v9 + 8))(v12, v7);
  sub_1C97AEB5C();
}

void sub_1C97ACE60()
{
  sub_1C97AEB94();
  v39 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v32 = v11;
  sub_1C97AE9DC();
  v33 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v38 = v15 - v14;
  type metadata accessor for SharedLogMelSpectrogram.Configuration.CodingKeys();
  sub_1C97AEA04();
  swift_getWitnessTable();
  v37 = sub_1C9A93978();
  sub_1C97AE9C8();
  v34 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v35 = v8;
  v36 = v6;
  *&v40 = v8;
  *(&v40 + 1) = v6;
  *&v41 = v4;
  *(&v41 + 1) = v2;
  v20 = type metadata accessor for SharedLogMelSpectrogram.Configuration();
  sub_1C97AE9C8();
  v31 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v10, v10[3]);
  v23 = v39;
  sub_1C9A93DB8();
  if (v23)
  {
    sub_1C97A592C(v10);
  }

  else
  {
    v24 = v33;
    LOBYTE(v40) = 0;
    v25 = v37;
    v26 = v35;
    sub_1C9A938F8();
    (*(v24 + 32))(v8, v38, v26);
    sub_1C97AE5A8();
    sub_1C9A938F8();
    (*(v34 + 8))(v19, v25);
    v27 = v8 + *(v20 + 52);
    v28 = v41;
    *v27 = v40;
    *(v27 + 16) = v28;
    *(v27 + 32) = v42;
    *(v27 + 48) = v43;
    (*(v31 + 16))(v32, v8, v20);
    sub_1C97A592C(v10);
    v29 = sub_1C97AEB30();
    v30(v29);
  }

  sub_1C97AEB5C();
}

void sub_1C97AD200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1C97AE9DC();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = (*(v35 + 16))(v36, v35);
  (*(v30 + 16))(v34, v20, v26);
  v38 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v24;
  (*(v30 + 32))(v39 + v38, v34, v26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_1C97AEA9C();
  v42 = sub_1C97AEA9C();
  v43 = sub_1C97AEA9C();
  v47[2] = AssociatedTypeWitness;
  v47[3] = v41;
  v47[4] = v42;
  v47[5] = v43;
  v44 = type metadata accessor for SharedLogMelSpectrogram.Configuration();
  v45 = type metadata accessor for SharedLogMelSpectrogram.Instance();
  WitnessTable = swift_getWitnessTable();
  sub_1C99D6B34(v28, v37, sub_1C97AE51C, v39, v44, v45, WitnessTable, &a10);

  sub_1C97AEB5C();
}

uint64_t sub_1C97AD41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AEA7C();
  sub_1C97AEA7C();
  sub_1C97AEA7C();
  return sub_1C97AD4FC(a1, sub_1C97AE4E4, v7, AssociatedTypeWitness);
}

uint64_t sub_1C97AD4FC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v49 = sub_1C97A2CEC(&unk_1EC3C7370);
  sub_1C97AEB3C();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AC02C();
  v56 = v7;
  sub_1C97A2CEC(&qword_1EC3C6758);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AC02C();
  v50 = v9;
  sub_1C97A2CEC(&unk_1EC3C7380);
  sub_1C97AE9C8();
  v52 = v11;
  v53 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v51 = v13;
  sub_1C9A91748();
  sub_1C97AE9C8();
  v54 = v15;
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v60 = v17 - v16;
  sub_1C97AE9DC();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AEAD8();
  v23 = v22 - v21;
  v24 = type metadata accessor for SharedReformattedAudioSource.Configuration();
  sub_1C97AE9C8();
  v57 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AC02C();
  v61 = v27;
  (*(v19 + 16))(v23, a1, a4);
  v28 = sub_1C97ADE3C(a1);
  if (v62)
  {
    return (*(v19 + 8))(v23, a4);
  }

  sub_1C98BEFD0(v23, 1, v28, a4, v61);
  a2(v61);
  (*(v57 + 8))(v61, v24);
  sub_1C9A91738();
  sub_1C98BF080();
  sub_1C97A2CEC(&unk_1EC3C7390);
  v30 = sub_1C97A2CEC(&qword_1EC3C7C80);
  sub_1C97AE9EC();
  sub_1C97AE67C(v31, &unk_1EC3C7390);
  v58 = v30;
  sub_1C9A91F68();

  result = type metadata accessor for SharedLogMelSpectrogram.Configuration();
  v32 = a1 + *(result + 52);
  v33 = *(v32 + 32);
  v34 = *(v32 + 36);
  if (__CFADD__(v34, v33))
  {
    __break(1u);
  }

  else
  {
    v63 = *(v32 + 48);
    v35 = *(v32 + 28);
    v36 = *(v32 + 24);
    v37 = *(v32 + 20);
    v38 = *(v32 + 16);
    v39 = *(v32 + 4);
    v40 = *v32;
    v41 = sub_1C97A2CEC(&qword_1EC3C6760);
    *(v56 + v41[15]) = (v34 + v33);
    *(v56 + v41[16]) = v35;
    *(v56 + v41[17]) = v58;
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 20) = v39;
    *(v42 + 24) = *(v32 + 8);
    *(v42 + 32) = v38;
    *(v42 + 36) = v37;
    *(v42 + 40) = v36;
    *(v42 + 44) = v35;
    *(v42 + 48) = v33;
    *(v42 + 52) = v34;
    *(v42 + 56) = *(v32 + 40);
    *(v42 + 64) = v63;
    v43 = (v56 + *(v49 + 52));
    *v43 = sub_1C97AE3B8;
    v43[1] = v42;
    v44 = (v56 + *(v49 + 56));
    *v44 = sub_1C97E74C4;
    v44[1] = 0;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1C97ADF1C;
    *(v45 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C73A0);
    sub_1C97AE67C(qword_1EC3C4FB8, &unk_1EC3C7370);
    sub_1C97AE67C(&unk_1EC3C4AE0, &unk_1EC3C73A0);
    sub_1C9A92078();

    sub_1C97AE434(v56, &unk_1EC3C7370);
    sub_1C9A935B8();

    sub_1C97AE3DC();
    v46 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v46);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    sub_1C97DC5C4();

    sub_1C97AE434(v50, &qword_1EC3C6758);
    sub_1C97AE67C(&qword_1EC3C4C80, &unk_1EC3C7380);
    v47 = sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3C6768);
    swift_allocObject();
    sub_1C98E3778(v47);
    (*(v52 + 8))(v51, v53);
    sub_1C97AE67C(&qword_1EC3C4EE0, &qword_1EC3C6768);
    v48 = sub_1C9A91F28();

    (*(v54 + 8))(v60, v55);
    type metadata accessor for SharedLogMelSpectrogram.Instance();
    result = swift_allocObject();
    *(result + 16) = v48;
  }

  return result;
}

void sub_1C97ADD18()
{
  sub_1C97AEB94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEA4C();
  (*(v3 + 16))(v5, v3);
  (*(v1 + 40))(v7, AssociatedTypeWitness, v1);
  v10 = sub_1C97AEB30();
  v11(v10);
  sub_1C97AEB5C();
}

uint64_t sub_1C97ADE3C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for SharedLogMelSpectrogram.Configuration() + 52));
  v2 = truncf(v1);
  if (v1 > -9.2234e18 && v1 < 9.2234e18 && v1 == v2)
  {
    return v1;
  }

  sub_1C97AE490();
  swift_allocError();
  return swift_willThrow();
}

uint64_t *sub_1C97ADED8@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v3 = result[2];
  if ((v3 | result[1]) < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1C97AE110(0, v3, *result);
    *a2 = result;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1C97ADF1C()
{
  sub_1C97A2CEC(&qword_1EC3C6750);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C97AEA4C();
  sub_1C97A2CEC(&unk_1EC3CC290);
  sub_1C97AE67C(&qword_1EC3C4A50, &unk_1EC3CC290);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  v1 = sub_1C97AEB30();
  return v2(v1);
}

uint64_t sub_1C97AE070(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C97AEA1C(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  sub_1C97AEA5C();
  return sub_1C97E8454(v8);
}

unint64_t sub_1C97AE110(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1C97AE17C()
{
  sub_1C97AEA3C();
  swift_getWitnessTable();
  _s21ServerEnvironmentImplVMa();
  swift_getWitnessTable();
  sub_1C97AEB0C();
}

uint64_t sub_1C97AE1FC()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  return sub_1C97AEAE8(WitnessTable);
}

uint64_t sub_1C97AE284()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  return sub_1C97AEAE8(WitnessTable);
}

void sub_1C97AE30C()
{
  sub_1C97AEA3C();
  swift_getWitnessTable();
  type metadata accessor for AudioStreamAnalyzerEnvironmentImpl();
  swift_getWitnessTable();
  sub_1C97AEB0C();
}

uint64_t sub_1C97AE38C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98BF808();
  *a1 = result;
  return result;
}

unint64_t sub_1C97AE3DC()
{
  result = qword_1EC3C5480;
  if (!qword_1EC3C5480)
  {
    sub_1C9A91748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5480);
  }

  return result;
}

uint64_t sub_1C97AE434(uint64_t a1, uint64_t *a2)
{
  sub_1C97A2CEC(a2);
  sub_1C97AEB3C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C97AE490()
{
  result = qword_1EC3C6770;
  if (!qword_1EC3C6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6770);
  }

  return result;
}

uint64_t sub_1C97AE51C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 24))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C97AE5A8()
{
  result = qword_1EC3C6778;
  if (!qword_1EC3C6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6778);
  }

  return result;
}

unint64_t sub_1C97AE5FC()
{
  result = qword_1EC3C6780;
  if (!qword_1EC3C6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6780);
  }

  return result;
}

uint64_t sub_1C97AE67C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SNNullDetector.DomainError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C97AE74C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedLogMelSpectrogramError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SharedLogMelSpectrogramError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C97AE91C()
{
  result = qword_1EC3C6810;
  if (!qword_1EC3C6810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6810);
  }

  return result;
}

void *sub_1C97AEA1C(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, __src, 0x78uLL);
}

__n128 sub_1C97AEA5C()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v3;
  *(v1 - 32) = *(v0 + 32);
  return result;
}

uint64_t sub_1C97AEA7C()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C97AEA9C()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C97AEAE8(uint64_t a1)
{

  return sub_1C97AD41C(v3, v2, v1, a1);
}

void sub_1C97AEB0C()
{

  sub_1C97ADD18();
}

void sub_1C97AEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1C97AD200(v21, v20, a1, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1C97AEBAC()
{
  sub_1C97BE558();
  v3 = sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A93DA8();
  if (v1)
  {
    sub_1C97BD200(v0);
  }

  else
  {
    sub_1C97BE20C(v5, v5[3]);
    sub_1C9A93B48();
    sub_1C97BD318(0, &unk_1EC3C5500);
    v5[6] = MEMORY[0x1E69E7CC0];
    sub_1C97A2CEC(&unk_1EC3CE7E0);
    sub_1C97B1D1C();
    sub_1C97B1D80();
    v3 = sub_1C9A92F68();
    sub_1C97BD200(v5);
    sub_1C97BD200(v0);
  }

  return v3;
}

uint64_t sub_1C97AECC0(void *a1)
{
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DC8();
  sub_1C97BDE74(v2, v3);
  sub_1C9A93B68();
  return sub_1C97BD200(v2);
}

uint64_t sub_1C97AED44()
{
  sub_1C97BD318(0, &qword_1EC3C54A0);
  sub_1C97BE374();
  return sub_1C9A931E8() & 1;
}

uint64_t sub_1C97AEDB8()
{
  sub_1C97BE32C();
  sub_1C9A931F8();
  return sub_1C9A93D18();
}

uint64_t sub_1C97AEDF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C97AEBAC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C97AEE48()
{
  sub_1C9A93CC8();
  sub_1C9A931F8();
  return sub_1C9A93D18();
}

SoundAnalysis::SNKShotLabel_optional __swiftcall SNKShotLabel.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

id sub_1C97AF064(char a1)
{
  v1[OBJC_IVAR___SNKShotLabel_impl] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SNKShotLabelObjC();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1C97AF17C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = a1[2];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  if (!static TimeRange.== infix(_:_:)(v6, v5))
  {
    return 0;
  }

  type metadata accessor for KShotSegment(0);

  return sub_1C9A914E8();
}

uint64_t sub_1C97AF210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C97AF2E0(char a1)
{
  if (a1)
  {
    return 7107189;
  }

  else
  {
    return 0x676E6152656D6974;
  }
}

uint64_t sub_1C97AF314(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3C6C00);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  sub_1C97BE20C(a1, a1[3]);
  sub_1C97BD084();
  sub_1C9A93DD8();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v17 = v3[2];
  v14[15] = 0;
  sub_1C97BD12C();
  sub_1C97BE2BC();
  sub_1C9A93A18();
  if (!v2)
  {
    type metadata accessor for KShotSegment(0);
    LOBYTE(v15) = 1;
    sub_1C9A91558();
    sub_1C97BDF64();
    sub_1C97BCEAC(v12);
    sub_1C97BE564();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1C97AF4B0()
{
  sub_1C97BE460();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  type metadata accessor for KShotSegment(0);
  sub_1C9A91558();
  sub_1C97BDF64();
  sub_1C97BCEAC(v4);
  sub_1C9A92398();
  sub_1C97BE478();
}

uint64_t sub_1C97AF588()
{
  sub_1C97BE32C();
  v1 = v0[3];
  v2 = v0[5];
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  v3 = sub_1C97BE0E0();
  MEMORY[0x1CCA919B0](v3);
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  type metadata accessor for KShotSegment(0);
  sub_1C9A91558();
  sub_1C97BDF64();
  sub_1C97BCEAC(v4);
  sub_1C9A92398();
  return sub_1C9A93D18();
}

void sub_1C97AF698()
{
  sub_1C97AEB94();
  v2 = v1;
  v27 = v3;
  v28 = sub_1C9A91558();
  sub_1C97AE9C8();
  v26 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  sub_1C97A2CEC(&qword_1EC3C6BE8);
  sub_1C97AE9C8();
  v29 = v10;
  v30 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for KShotSegment(0);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v17 = (v16 - v15);
  sub_1C97BE20C(v2, v2[3]);
  sub_1C97BD084();
  sub_1C9A93DB8();
  if (!v0)
  {
    v18 = v17;
    v25 = v14;
    v19 = v29;
    sub_1C97BD0D8();
    v20 = v30;
    sub_1C9A938F8();
    v21 = v32;
    v22 = v18;
    *v18 = v31;
    v18[1] = v21;
    v18[2] = v33;
    sub_1C97BDF64();
    sub_1C97BCEAC(v23);
    v24 = v28;
    sub_1C9A938F8();
    (*(v19 + 8))(v13, v20);
    (*(v26 + 32))(v22 + *(v25 + 20), v8, v24);
    sub_1C97AFCEC(v22, v27);
  }

  sub_1C97BD200(v2);
  sub_1C97AEB5C();
}

uint64_t sub_1C97AF974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97AF210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97AF9BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97AC288();
  *a1 = result;
  return result;
}

uint64_t sub_1C97AF9E4(uint64_t a1)
{
  v2 = sub_1C97BD084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97AFA20(uint64_t a1)
{
  v2 = sub_1C97BD084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97AFA64()
{
  sub_1C9A93CC8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A91558();
  sub_1C97BCEAC(&qword_1EC3C6BA0);
  sub_1C9A92398();
  return sub_1C9A93D18();
}

id SNKShotSegment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNKShotSegment.init()()
{
  v1 = type metadata accessor for KShotSegment(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C97AEAD8();
  v4 = v3 - v2;
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 8);
  v7 = *(MEMORY[0x1E6960C70] + 12);
  v8 = *(MEMORY[0x1E6960C70] + 16);
  sub_1C9A91468();
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 12) = v7;
  *(v4 + 16) = v8;
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  *(v4 + 36) = v7;
  *(v4 + 40) = v8;
  sub_1C97AFCEC(v4, v0 + OBJC_IVAR___SNKShotSegment_impl);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SNKShotSegment(0);
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1C97AFCEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KShotSegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C97AFD70(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1C97AFE28@<D0>(uint64_t a1@<X8>)
{
  sub_1C97BE2CC(OBJC_IVAR___SNKShotSegment_impl);
  swift_beginAccess();
  v3 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 16) = *(v1 + 16);
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double sub_1C97AFEE8(double *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 5);
  sub_1C97BE2CC(OBJC_IVAR___SNKShotSegment_impl);
  swift_beginAccess();
  *v1 = v3;
  *(v1 + 8) = a1[1];
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  result = a1[4];
  *(v1 + 32) = result;
  *(v1 + 40) = v6;
  return result;
}

double sub_1C97AFF60@<D0>(_OWORD *a1@<X8>)
{
  sub_1C97AFE28(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*sub_1C97AFFA4(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1C97A2C48(0x98uLL);
  *a1 = v3;
  *v3 = v1;
  sub_1C97AFE28((v3 + 13));
  return sub_1C97B0008;
}

void sub_1C97B0008(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = 56;
  if (a2)
  {
    v3 = 8;
  }

  v4 = (v2 + v3);
  v5 = *(v2 + 120);
  *v4 = *(v2 + 104);
  v4[1] = v5;
  v4[2] = *(v2 + 136);
  sub_1C97AFEE8((v2 + v3));

  free(v2);
}

uint64_t sub_1C97B0150@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for KShotSegment(0) - 8;
  MEMORY[0x1EEE9AC00]();
  sub_1C97AEAD8();
  v6 = v5 - v4;
  v7 = OBJC_IVAR___SNKShotSegment_impl;
  swift_beginAccess();
  sub_1C97B1CB8(v1 + v7, v6);
  v8 = *(v3 + 28);
  v9 = sub_1C9A91558();
  return (*(*(v9 - 8) + 32))(a1, v6 + v8, v9);
}

uint64_t sub_1C97B02C4(uint64_t a1)
{
  sub_1C97BE2CC(OBJC_IVAR___SNKShotSegment_impl);
  swift_beginAccess();
  v3 = *(type metadata accessor for KShotSegment(0) + 20);
  v4 = sub_1C9A91558();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_1C97B0394(uint64_t a1)
{
  v2 = sub_1C9A91558();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1C97B02C4(v4);
}

void (*sub_1C97B0460(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_1C97A2C48(0x58uLL);
  *a1 = v3;
  v3[6] = v1;
  v4 = sub_1C9A91558();
  v3[7] = v4;
  sub_1C97BE2AC(v4);
  v3[8] = v5;
  v7 = *(v6 + 64);
  v3[9] = sub_1C97A2C48(v7);
  v8 = sub_1C97A2C48(v7);
  v3[10] = v8;
  sub_1C97B0150(v8);
  return sub_1C97B052C;
}

void sub_1C97B052C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = sub_1C97BE264();
    v8(v7);
    swift_beginAccess();
    v9 = type metadata accessor for KShotSegment(0);
    v10 = sub_1C97BE4FC(v9);
    v11(v10, v4, v5);
    swift_endAccess();
    v12 = *(v6 + 8);
    v12(v4, v5);
    v12(v3, v5);
  }

  else
  {
    swift_beginAccess();
    v13 = type metadata accessor for KShotSegment(0);
    v14 = sub_1C97BE4FC(v13);
    v15(v14, v3, v5);
    swift_endAccess();
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

id sub_1C97B06AC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C97B06F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  sub_1C97BD318(0, &qword_1EC3C54A0);
  return sub_1C97BE244() & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

uint64_t sub_1C97B0768(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5474657361746164 && a2 == 0xEB00000000657079;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C97B0880(char a1)
{
  if (!a1)
  {
    return 1635017060;
  }

  if (a1 == 1)
  {
    return 0x5474657361746164;
  }

  return 0x6C6562616CLL;
}

void sub_1C97B08D4()
{
  sub_1C97AEB94();
  v3 = v2;
  sub_1C97A2CEC(&qword_1EC3C6B00);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEA4C();
  v5 = *v0;
  sub_1C97BE20C(v3, v3[3]);
  sub_1C97BCB88();
  v6 = v5;
  sub_1C97BE418();
  sub_1C97BCAE0();
  sub_1C97BE02C();
  sub_1C9A93A18();

  if (!v1)
  {
    sub_1C97BCC84();
    sub_1C97BE02C();
    sub_1C9A93A18();
    sub_1C97BCCD8();
    sub_1C97BE02C();
    sub_1C9A93A18();
  }

  v7 = sub_1C97BE0EC();
  v8(v7);
  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C97B0A6C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  sub_1C9A931F8();
  MEMORY[0x1CCA91980](v1);
  return MEMORY[0x1CCA91980](v2);
}

uint64_t sub_1C97B0ABC()
{
  v1 = *(v0 + 9);
  sub_1C97BE32C();
  sub_1C9A931F8();
  v2 = sub_1C97BE288();
  MEMORY[0x1CCA91980](v2);
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

void sub_1C97B0B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C97AEB94();
  sub_1C97BE558();
  v13 = v12;
  sub_1C97A2CEC(&qword_1EC3C6AE0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97BE20C(v10, v10[3]);
  sub_1C97BCB88();
  sub_1C9A93DB8();
  if (v11)
  {
    sub_1C97BD200(v10);
  }

  else
  {
    sub_1C97BCA38();
    sub_1C97BE224();
    sub_1C97BCBDC();
    sub_1C97BE224();
    sub_1C97BCC30();
    sub_1C97BE224();
    v15 = sub_1C97BE31C();
    v16(v15);
    *v13 = a10;
    *(v13 + 8) = v19;
    *(v13 + 9) = v18;
    v17 = a10;
    sub_1C97BD200(v10);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C97B0D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97B0768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97B0D50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97B0878();
  *a1 = result;
  return result;
}

uint64_t sub_1C97B0D78(uint64_t a1)
{
  v2 = sub_1C97BCB88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97B0DB4(uint64_t a1)
{
  v2 = sub_1C97BCB88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97B0E28()
{
  sub_1C9A93CC8();
  sub_1C97B0A6C();
  return sub_1C9A93D18();
}

id SNKShotFeaturizationStreamResult.init()()
{
  sub_1C97BD318(0, &unk_1EC3C5500);
  v6 = MEMORY[0x1E69E7CC0];
  v1 = sub_1C97A2CEC(&unk_1EC3CE7E0);
  sub_1C97B1D1C();
  sub_1C97B1D80();
  v2 = sub_1C97BE008();
  if (v1)
  {
    sub_1C97BE0A8();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v3 = &v0[OBJC_IVAR___SNKShotFeaturizationStreamResult_impl];
    *v3 = v2;
    *(v3 + 4) = 0;
    v5.receiver = v0;
    v5.super_class = type metadata accessor for SNKShotFeaturizationStreamResult();
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

uint64_t sub_1C97B1044(void *a1)
{
  sub_1C97BE2EC(a1, OBJC_IVAR___SNKShotFeaturizationStreamResult_impl);
  v2 = v1;
  return sub_1C97BE374();
}

unint64_t sub_1C97B10F0(unint64_t result)
{
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR___SNKShotFeaturizationStreamResult_impl + 8) = result;
  }

  return result;
}

id sub_1C97B1154()
{
  v1 = *(v0 + OBJC_IVAR___SNKShotFeaturizationStreamResult_impl + 9);
  v2 = type metadata accessor for SNKShotLabelObjC();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___SNKShotLabel_impl] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1C97B1210(_BYTE *a1)
{
  v2 = a1[OBJC_IVAR___SNKShotLabel_impl];

  *(v1 + OBJC_IVAR___SNKShotFeaturizationStreamResult_impl + 9) = v2;
}

void sub_1C97B1270()
{
  sub_1C97BE460();
  sub_1C97BD318(0, &qword_1EC3C54A0);
  sub_1C97BE244();
  sub_1C97BE478();
}

uint64_t sub_1C97B12F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C706D657865 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C9AD4340 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C97B13C0(char a1)
{
  sub_1C97BE32C();
  MEMORY[0x1CCA91980](a1 & 1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97B1400(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x72616C706D657865;
  }
}

void sub_1C97B143C(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3C6AC0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEA4C();
  v5 = *v1;
  sub_1C97BE20C(a1, a1[3]);
  sub_1C97BC9E4();
  v6 = v5;
  sub_1C97BE418();
  sub_1C97BCAE0();
  sub_1C97BDFE4();
  sub_1C97BE02C();
  sub_1C9A93A18();

  if (!v2)
  {
    sub_1C97BE4D0();
    sub_1C97BCB34();
    sub_1C97BDFE4();
    sub_1C97BE02C();
    sub_1C9A93A18();
  }

  v7 = sub_1C97BE0EC();
  v8(v7);
  sub_1C97BE538();
}

uint64_t sub_1C97B15A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1C9A931F8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  return MEMORY[0x1CCA919B0](v2);
}

uint64_t sub_1C97B1610()
{
  v1 = *(v0 + 24);
  sub_1C97BE32C();
  sub_1C9A931F8();
  v2 = sub_1C97BE288();
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  return sub_1C9A93D18();
}

void sub_1C97B1694()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3C6AA0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97BE20C(v2, v2[3]);
  sub_1C97BC9E4();
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97BD200(v2);
  }

  else
  {
    sub_1C97BCA38();
    sub_1C97BE2FC();
    sub_1C9A938F8();
    sub_1C97BCA8C();
    sub_1C97BE2FC();
    sub_1C9A938F8();
    v6 = sub_1C97A7890();
    v7(v6);
    *v4 = v9;
    v4[1] = v9;
    v4[2] = v10;
    v4[3] = v11;
    v8 = v9;
    sub_1C97BD200(v2);
  }

  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C97B185C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C97B18B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97B12F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97B18D8(uint64_t a1)
{
  v2 = sub_1C97BC9E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97B1914(uint64_t a1)
{
  v2 = sub_1C97BC9E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97B1988()
{
  sub_1C9A93CC8();
  sub_1C97B15A8();
  return sub_1C9A93D18();
}

id SNKShotFeaturizationStreamCompletion.init()()
{
  sub_1C97BD318(0, &unk_1EC3C5500);
  v9 = MEMORY[0x1E69E7CC0];
  v1 = sub_1C97A2CEC(&unk_1EC3CE7E0);
  sub_1C97B1D1C();
  sub_1C97B1D80();
  v2 = sub_1C97BE008();
  if (v1)
  {
    sub_1C97BE0A8();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v3 = MEMORY[0x1E6960C70];
    v4 = *MEMORY[0x1E6960C70];
    v5 = *(MEMORY[0x1E6960C70] + 16);
    v6 = &v0[OBJC_IVAR___SNKShotFeaturizationStreamCompletion_impl];
    *v6 = v2;
    v6[1] = v4;
    v6[2] = *(v3 + 8);
    v6[3] = v5;
    v8.receiver = v0;
    v8.super_class = type metadata accessor for SNKShotFeaturizationStreamCompletion();
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

uint64_t sub_1C97B1BBC(void *a1)
{
  sub_1C97BE2EC(a1, OBJC_IVAR___SNKShotFeaturizationStreamCompletion_impl);
  v2 = v1;
  return sub_1C97BE374();
}

uint64_t sub_1C97B1C64(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + OBJC_IVAR___SNKShotFeaturizationStreamCompletion_impl);
  v4[1] = result;
  v4[2] = a2;
  v4[3] = a3;
  return result;
}

uint64_t sub_1C97B1CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KShotSegment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C97B1D1C()
{
  result = qword_1EC3C6820;
  if (!qword_1EC3C6820)
  {
    sub_1C97AA4F0(&unk_1EC3CE7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6820);
  }

  return result;
}

unint64_t sub_1C97B1D80()
{
  result = qword_1EC3C6828;
  if (!qword_1EC3C6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C6828);
  }

  return result;
}

double (*sub_1C97B1E1C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = v1 + OBJC_IVAR___SNKShotFeaturizationStreamCompletion_impl;
  *(a1 + 8) = *(v1 + OBJC_IVAR___SNKShotFeaturizationStreamCompletion_impl + 8);
  *(a1 + 24) = *(v2 + 24);
  return sub_1C97B1E5C;
}

double sub_1C97B1E5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *a1 + OBJC_IVAR___SNKShotFeaturizationStreamCompletion_impl;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 16);
  *(v2 + 16) = result;
  *(v2 + 24) = v1;
  return result;
}

BOOL sub_1C97B1EA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v21 = *(a1 + 40);
  v19 = *(a1 + 52);
  v20 = *(a1 + 48);
  v18 = *(a1 + 56);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v17 = *(a2 + 52);
  v16 = *(a2 + 56);
  sub_1C98081FC(*a1, *a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C98082D0(v2, v5) & 1) == 0)
  {
    return 0;
  }

  sub_1C98081FC(v4, v7);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C98082D0(v3, v6) & 1) == 0)
  {
    return 0;
  }

  sub_1C97BD318(0, &qword_1EC3C54A0);
  if ((sub_1C97BE244() & 1) == 0)
  {
    return 0;
  }

  return v21 == v8 && v20 == v9 && v19 == v17 && v18 == v16;
}

uint64_t sub_1C97B1FB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001C9AD4360 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C9AD4380 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001C9AD43A0 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001C9AD43C0 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72616C706D657865 && a2 == 0xE800000000000000;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001C9AD4340 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9A93B18();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C97B21AC(char a1)
{
  result = 0x72616C706D657865;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

void sub_1C97B2284(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3C6B48);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C97BE20C(a1, a1[3]);
  v3 = sub_1C97BCD2C();

  sub_1C97BE43C();
  sub_1C97A2CEC(&qword_1EC3C6B28);
  sub_1C97BCDEC(&unk_1EC3C6B50);
  sub_1C97BDFE4();
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (v3)
  {
  }

  else
  {

    sub_1C97BE4D0();
    sub_1C97A2CEC(&qword_1EC3C6B38);
    sub_1C97BCD80(&unk_1EC3C6B58);
    sub_1C97BDFE4();
    sub_1C97BE02C();
    sub_1C9A93A18();
    sub_1C97BDFE4();
    sub_1C97BE02C();
    sub_1C9A93A18();
    sub_1C97BDFE4();
    sub_1C97BE02C();
    sub_1C9A93A18();
    sub_1C97BCAE0();
    sub_1C97BDFE4();
    sub_1C97BE02C();
    sub_1C9A93A18();
    sub_1C97BCB34();
    sub_1C97BDFE4();
    sub_1C97BE02C();
    sub_1C9A93A18();
  }

  v4 = sub_1C97BE0EC();
  v5(v4);
  sub_1C97BE538();
}

void sub_1C97B255C()
{
  sub_1C97BE460();
  v4 = v3;
  sub_1C97BE524();
  sub_1C97C83C8(v5, v6);
  sub_1C97C8388();
  sub_1C97C83C8(v4, v0);
  sub_1C97C8388();
  sub_1C9A931F8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  sub_1C97BE478();
}

uint64_t sub_1C97B25EC()
{
  v4 = *v0;
  sub_1C97BE524();
  sub_1C97BE32C();
  sub_1C97C83C8(v6, v4);
  sub_1C97C8388();
  sub_1C97C83C8(v6, v1);
  sub_1C97C8388();
  sub_1C9A931F8();
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  return sub_1C9A93D18();
}

void sub_1C97B26B0()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3C6B18);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97BE20C(v2, v2[3]);
  sub_1C97BCD2C();
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97BD200(v2);
  }

  else
  {
    v17 = v4;
    sub_1C97A2CEC(&qword_1EC3C6B28);
    sub_1C97BCDEC(&unk_1EC3C6B30);
    sub_1C97BE164();
    v15 = v23[0];
    sub_1C97A2CEC(&qword_1EC3C6B38);
    sub_1C97BCD80(&unk_1EC3C6B40);
    sub_1C97BE194();
    v14 = v23[0];
    sub_1C97BE164();
    v16 = v23[0];
    sub_1C97BE194();
    v6 = v23[0];
    LOBYTE(v19) = 4;
    sub_1C97BCA38();
    sub_1C9A938F8();
    v7 = v23[0];
    sub_1C97BCA8C();
    sub_1C97BE2FC();
    sub_1C9A938F8();
    v8 = sub_1C97BDFB0();
    v9(v8);
    v18 = v27;
    v10 = DWORD1(v28);
    v29 = v28;
    v11 = *(&v28 + 1);
    *&v19 = v15;
    *(&v19 + 1) = v14;
    *&v20 = v16;
    *(&v20 + 1) = v6;
    *&v21 = v7;
    *(&v21 + 1) = v27;
    v22 = v28;
    v12 = v20;
    *v17 = v19;
    v17[1] = v12;
    v13 = v22;
    v17[2] = v21;
    v17[3] = v13;
    sub_1C97BB3E4(&v19, v23);
    sub_1C97BD200(v2);
    v23[0] = v15;
    v23[1] = v14;
    v23[2] = v16;
    v23[3] = v6;
    v23[4] = v7;
    v23[5] = v18;
    v24 = v29;
    v25 = v10;
    v26 = v11;
    sub_1C97BB41C(v23);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C97B2B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97B1FB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97B2B2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97B21A4();
  *a1 = result;
  return result;
}

uint64_t sub_1C97B2B54(uint64_t a1)
{
  v2 = sub_1C97BCD2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97B2B90(uint64_t a1)
{
  v2 = sub_1C97BCD2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97B2C04()
{
  sub_1C9A93CC8();
  sub_1C97B255C();
  return sub_1C9A93D18();
}

id SNKShotFeaturizationResult.init()()
{
  sub_1C97BD318(0, &unk_1EC3C5500);
  v1 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v2 = sub_1C97A2CEC(&unk_1EC3CE7E0);
  sub_1C97B1D1C();
  sub_1C97B1D80();
  v3 = sub_1C97BE008();
  if (v2)
  {
    sub_1C97BE0A8();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E6960CC0];
    v5 = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    v7 = &v0[OBJC_IVAR___SNKShotFeaturizationResult_impl];
    *v7 = v1;
    *(v7 + 1) = v1;
    *(v7 + 2) = v1;
    *(v7 + 3) = v1;
    *(v7 + 4) = v3;
    *(v7 + 5) = v5;
    *(v7 + 6) = *(v4 + 8);
    *(v7 + 7) = v6;
    v9.receiver = v0;
    v9.super_class = type metadata accessor for SNKShotFeaturizationResult();
    return objc_msgSendSuper2(&v9, sel_init);
  }

  return result;
}

uint64_t sub_1C97B2DA4()
{
  v1 = *(v0 + OBJC_IVAR___SNKShotFeaturizationResult_impl);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    sub_1C97BE60C();
    sub_1C97BE288();
    sub_1C9A93698();
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      sub_1C97BE658();
      sub_1C97BE088();
      sub_1C97BE0E0();
      sub_1C9A936B8();
      sub_1C9A93688();
      v4 += 8;
      --v2;
    }

    while (v2);

    return v6;
  }

  return result;
}

uint64_t sub_1C97B2E68()
{
  sub_1C97BE5BC();
  sub_1C97BE11C();
  if (v3)
  {
    v2 = sub_1C97BE138();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  sub_1C97BE4F0();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = MEMORY[0x1E69E7CC0];
  result = sub_1C9A93698();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_1C97BE640();
    }

    else
    {
      sub_1C97BE5F4();
    }

    ++v5;
    sub_1C9A93678();
    sub_1C97BE584();
    sub_1C97A7890();
    sub_1C9A936B8();
    sub_1C9A93688();
  }

  while (v2 != v5);

  v6 = v8;
LABEL_12:
  *(v0 + OBJC_IVAR___SNKShotFeaturizationResult_impl) = v6;
  sub_1C97BE5A4();
}

uint64_t sub_1C97B2F84(uint64_t a1)
{
  sub_1C97BE2A0(a1);
  *v1 = sub_1C97B2DA4();
  return sub_1C97BE074();
}

id sub_1C97B3004(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  a3();

  sub_1C97BD318(0, a4);
  v7 = sub_1C9A92768();

  return v7;
}

void sub_1C97B3088()
{
  sub_1C97BE5BC();
  v1 = *(v0 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1C97BE60C();
    sub_1C97BE288();
    sub_1C9A93698();
    v3 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C97BE658();
      sub_1C97BE088();
      sub_1C97BE0E0();
      sub_1C9A936B8();
      sub_1C9A93688();
      ++v3;
      --v2;
    }

    while (v2);
  }

  sub_1C97BE5A4();
}

void sub_1C97B3160(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_1C97BD318(0, a4);
  sub_1C9A92798();
  v8 = a1;
  v9 = sub_1C97BE4DC();
  a6(v9);
}

void sub_1C97B31DC()
{
  sub_1C97BE11C();
  if (v5)
  {
    goto LABEL_15;
  }

  sub_1C97BE4F0();
  if (v1)
  {
    while (1)
    {
      sub_1C97BE3F4();
      if (v1 < 0)
      {
        break;
      }

      sub_1C97BE344();
      while (1)
      {
        if (v3)
        {
          sub_1C97BE640();
        }

        else
        {
          v6 = sub_1C97BE5F4();
        }

        v7 = v6;
        v8 = [v6 (v4 + 120)];

        if (v8 > 1)
        {
          break;
        }

        sub_1C97BE4BC();
        if (v9)
        {
          sub_1C97BE3B0();
          v2 = v12;
        }

        sub_1C97BE35C();
        if (v10)
        {

          v0 = v11;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      v1 = sub_1C97BE138();
      if (!v1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    v2 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(v0 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 8) = v2;
  }
}

uint64_t sub_1C97B3314(uint64_t a1)
{
  sub_1C97BE2A0(a1);
  sub_1C97B3088();
  *v1 = v2;
  return sub_1C97BE074();
}

uint64_t sub_1C97B3394()
{
  v1 = *(v0 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 16);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    sub_1C97BE60C();
    sub_1C97BE288();
    sub_1C9A93698();
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      sub_1C97BE658();
      sub_1C97BE088();
      sub_1C97BE0E0();
      sub_1C9A936B8();
      sub_1C9A93688();
      v4 += 8;
      --v2;
    }

    while (v2);

    return v6;
  }

  return result;
}

uint64_t sub_1C97B345C()
{
  sub_1C97BE5BC();
  sub_1C97BE11C();
  if (v3)
  {
    v2 = sub_1C97BE138();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  sub_1C97BE4F0();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = MEMORY[0x1E69E7CC0];
  result = sub_1C9A93698();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_1C97BE640();
    }

    else
    {
      sub_1C97BE5F4();
    }

    ++v5;
    sub_1C9A93678();
    sub_1C97BE584();
    sub_1C97A7890();
    sub_1C9A936B8();
    sub_1C9A93688();
  }

  while (v2 != v5);

  v6 = v8;
LABEL_12:
  *(v0 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 16) = v6;
  sub_1C97BE5A4();
}

uint64_t sub_1C97B357C(uint64_t a1)
{
  sub_1C97BE2A0(a1);
  *v1 = sub_1C97B3394();
  return sub_1C97BE074();
}

void sub_1C97B35FC()
{
  sub_1C97BE5BC();
  v1 = *(v0 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1C97BE60C();
    sub_1C97BE288();
    sub_1C9A93698();
    v3 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C97BE658();
      sub_1C97BE088();
      sub_1C97BE0E0();
      sub_1C9A936B8();
      sub_1C9A93688();
      ++v3;
      --v2;
    }

    while (v2);
  }

  sub_1C97BE5A4();
}

void sub_1C97B36D4()
{
  sub_1C97BE11C();
  if (v5)
  {
    goto LABEL_15;
  }

  sub_1C97BE4F0();
  if (v1)
  {
    while (1)
    {
      sub_1C97BE3F4();
      if (v1 < 0)
      {
        break;
      }

      sub_1C97BE344();
      while (1)
      {
        if (v3)
        {
          sub_1C97BE640();
        }

        else
        {
          v6 = sub_1C97BE5F4();
        }

        v7 = v6;
        v8 = [v6 (v4 + 120)];

        if (v8 > 1)
        {
          break;
        }

        sub_1C97BE4BC();
        if (v9)
        {
          sub_1C97BE3B0();
          v2 = v12;
        }

        sub_1C97BE35C();
        if (v10)
        {

          v0 = v11;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      v1 = sub_1C97BE138();
      if (!v1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    v2 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(v0 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 24) = v2;
  }
}

uint64_t sub_1C97B380C(uint64_t a1)
{
  sub_1C97BE2A0(a1);
  sub_1C97B35FC();
  *v1 = v2;
  return sub_1C97BE074();
}

uint64_t sub_1C97B394C(void *a1)
{
  v2 = OBJC_IVAR___SNKShotFeaturizationResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2 + 32);
  *a1 = v3;
  v4 = v3;
  return sub_1C97BE374();
}

void sub_1C97B39A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + a1[2];
  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
}

double (*sub_1C97B3A4C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v2 = v1 + OBJC_IVAR___SNKShotFeaturizationResult_impl;
  *(a1 + 8) = *(v1 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 40);
  *(a1 + 24) = *(v2 + 56);
  return sub_1C97B3A8C;
}

BOOL sub_1C97B3B1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 24);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *(a2 + 8);
  v9 = *(a2 + 12);
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 24);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  v16 = sub_1C9808000();
  result = 0;
  v18.i64[0] = v23;
  v18.i64[1] = v22;
  v19.i64[0] = v21;
  v19.i64[1] = v20;
  if ((vminv_u16(vmovn_s32(vceqq_s32(v18, v19))) & 1) != 0 && v4 == v11 && v5 == v12 && v6 == v13 && v7 == v14 && v3 == v10 && (v16 & 1) != 0 && v2 == v9)
  {
    return v8 == v15;
  }

  return result;
}

uint64_t sub_1C97B3C40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x734C5255656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001C9AD43F0 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000001C9AD4410 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C9AD4430 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C9AD4450 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001C9AD4470 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9A93B18();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C97B3E2C(char a1)
{
  result = 0x734C5255656C6966;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C97B3EF8(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3C6BD0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C97BE20C(a1, a1[3]);
  v3 = sub_1C97BCF80();

  sub_1C97BE43C();
  sub_1C97A2CEC(&qword_1EC3C6BB8);
  sub_1C97BCFD4(&unk_1EC3C6BD8);
  sub_1C97BE2DC();
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (v3)
  {
  }

  else
  {

    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BCB34();
    sub_1C97BE2DC();
    sub_1C97BE02C();
    sub_1C9A93A18();
    sub_1C97BE2DC();
    sub_1C97BE02C();
    sub_1C9A93A18();
    sub_1C97BE02C();
    sub_1C9A939F8();
  }

  v4 = sub_1C97BE0EC();
  return v5(v4);
}

uint64_t sub_1C97B419C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[7];
  sub_1C97C82CC(a1, *v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v5);
  return sub_1C9A93CF8();
}

uint64_t sub_1C97B4288()
{
  sub_1C97BE32C();
  sub_1C97B419C(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97B42C0()
{
  sub_1C97BE558();
  v3 = v2;
  sub_1C97A2CEC(&qword_1EC3C6BA8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97BE20C(v0, v0[3]);
  sub_1C97BCF80();
  sub_1C9A93DB8();
  if (v1)
  {
    return sub_1C97BD200(v0);
  }

  sub_1C97A2CEC(&qword_1EC3C6BB8);
  sub_1C97BCFD4(&unk_1EC3C6BC0);
  sub_1C97BE294();
  sub_1C9A938F8();
  v5 = v25;
  sub_1C97BE294();
  sub_1C9A938D8();
  v7 = v6;
  LOBYTE(v25) = 2;
  sub_1C97BE294();
  sub_1C9A938D8();
  v9 = v8;
  sub_1C97BCA8C();
  sub_1C97BE294();
  sub_1C9A938F8();
  v23 = v25;
  v10 = v26;
  v22 = v27;
  sub_1C97BE294();
  sub_1C9A938F8();
  v20 = v25;
  v21 = v27;
  v35 = 5;
  sub_1C97BE294();
  sub_1C9A938D8();
  v12 = v11;
  v13 = sub_1C97BE0FC();
  v14(v13);
  __src[0] = v5;
  __src[1] = __PAIR64__(v9, v7);
  __src[2] = v25;
  __src[3] = v26;
  __src[4] = v27;
  __src[5] = v25;
  sub_1C97BE4A8();
  __src[6] = __PAIR64__(v15, v16);
  __src[7] = v27;
  LODWORD(__src[8]) = v12;
  memcpy(v3, __src, 0x44uLL);
  sub_1C97BB2D8(__src, &v25);
  sub_1C97BD200(v0);
  v25 = v5;
  v26 = __PAIR64__(v9, v7);
  v27 = v23;
  v28 = v10;
  v29 = v22;
  v30 = v20;
  sub_1C97BE4A8();
  v31 = v18;
  v32 = v17;
  v33 = v21;
  v34 = v12;
  return sub_1C97BD054(&v25);
}

uint64_t sub_1C97B46A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97B3C40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97B46CC(uint64_t a1)
{
  v2 = sub_1C97BCF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97B4708(uint64_t a1)
{
  v2 = sub_1C97BCF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97B477C()
{
  sub_1C9A93CC8();
  sub_1C97B419C(v1);
  return sub_1C9A93D18();
}

id SNKShotSegmentationRequest.init()()
{
  CMTimeMake(&v10, 3, 2);
  value = v10.value;
  epoch = v10.epoch;
  v3 = *&v10.timescale;
  CMTimeMake(&v10, 15, 100);
  v4 = v10.value;
  v5 = v10.epoch;
  v6 = *&v10.timescale;
  v7 = &v0[OBJC_IVAR___SNKShotSegmentationRequest_impl];
  *v7 = MEMORY[0x1E69E7CC0];
  *(v7 + 1) = 0x42A0000041A00000;
  *(v7 + 2) = value;
  *(v7 + 3) = v3;
  *(v7 + 4) = epoch;
  *(v7 + 5) = v4;
  *(v7 + 6) = v6;
  *(v7 + 7) = v5;
  *(v7 + 16) = 1061997773;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SNKShotSegmentationRequest();
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1C97B4940(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  sub_1C9A92798();
  v7 = a1;
  v8 = sub_1C97BE4DC();
  a5(v8);
}

void (*sub_1C97B49FC(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_1C97A2C48(0xA8uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___SNKShotSegmentationRequest_impl;
  v3[19] = v1;
  v3[20] = v4;
  memcpy(v3, (v1 + v4), 0x44uLL);
  v3[18] = *v3;
  sub_1C97BB2D8(v3, (v3 + 9));
  return sub_1C97B4A84;
}

void sub_1C97B4A84(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*(*a1 + 152) + *(*a1 + 160)) = *(*a1 + 144);
  if (a2)
  {
  }

  free(v2);
}

float (*sub_1C97B4B60(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNKShotSegmentationRequest_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 8);
  return sub_1C97B4B98;
}

float sub_1C97B4B98(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 8) = result;
  return result;
}

float (*sub_1C97B4C1C(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNKShotSegmentationRequest_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 12);
  return sub_1C97B4C54;
}

float sub_1C97B4C54(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 12) = result;
  return result;
}

uint64_t sub_1C97B4CC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + OBJC_IVAR___SNKShotSegmentationRequest_impl);
  v4[2] = result;
  v4[3] = a2;
  v4[4] = a3;
  return result;
}

double (*sub_1C97B4D18(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = v1 + OBJC_IVAR___SNKShotSegmentationRequest_impl;
  *(a1 + 8) = *(v1 + OBJC_IVAR___SNKShotSegmentationRequest_impl + 16);
  *(a1 + 24) = *(v2 + 32);
  return sub_1C97B4D58;
}

double sub_1C97B4D58(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *a1 + OBJC_IVAR___SNKShotSegmentationRequest_impl;
  *(v2 + 16) = *(a1 + 8);
  result = *(a1 + 16);
  *(v2 + 24) = result;
  *(v2 + 32) = v1;
  return result;
}

uint64_t sub_1C97B4E0C()
{
  sub_1C97BE038();
  v1 = v0();
  return sub_1C97BE510(v1, v2, v3);
}

double (*sub_1C97B4E6C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v2 = v1 + OBJC_IVAR___SNKShotSegmentationRequest_impl;
  *(a1 + 8) = *(v1 + OBJC_IVAR___SNKShotSegmentationRequest_impl + 40);
  *(a1 + 24) = *(v2 + 56);
  return sub_1C97B4EAC;
}

double sub_1C97B4EB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *a1 + *a3;
  *(v4 + 40) = *(a1 + 8);
  result = *(a1 + 16);
  *(v4 + 48) = result;
  *(v4 + 56) = v3;
  return result;
}

float (*sub_1C97B4F4C(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNKShotSegmentationRequest_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 64);
  return sub_1C97B4F84;
}

float sub_1C97B4F84(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 64) = result;
  return result;
}

uint64_t sub_1C97B4FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C97BD318(0, &qword_1EC3C54A0);
  if (sub_1C9A931E8())
  {
    return sub_1C9808340() & (a3 == a6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C97B5054(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C9AD4490 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73746E656D676573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x72616C706D657865 && a2 == 0xED00007865646E49)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C97B5174(unsigned __int8 a1)
{
  sub_1C97BE32C();
  MEMORY[0x1CCA91980](a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97B51B4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x73746E656D676573;
  }

  return 0x72616C706D657865;
}

void sub_1C97B521C()
{
  sub_1C97AEB94();
  v10 = v1;
  v3 = v2;
  v4 = sub_1C97A2CEC(&qword_1EC3C6B88);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v10 - v8;
  sub_1C97BE20C(v3, v3[3]);
  sub_1C97BCE58();
  sub_1C9A93DD8();
  v11 = 0;
  sub_1C97BCAE0();
  sub_1C97BE2BC();
  sub_1C9A93A18();
  if (!v0)
  {
    sub_1C97BE4D0();
    sub_1C97A2CEC(&qword_1EC3C6B70);
    sub_1C97BCEF0(&unk_1EC3C6B90);
    sub_1C97BE564();
    sub_1C97BE2BC();
    sub_1C9A93A08();
  }

  (*(v6 + 8))(v9, v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C97B53E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C9A931F8();
  sub_1C97C8418(a1, a3);
  return MEMORY[0x1CCA91980](a4);
}

uint64_t sub_1C97B5438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97BE32C();
  sub_1C9A931F8();
  sub_1C97C8418(v6, a2);
  MEMORY[0x1CCA91980](a3);
  return sub_1C9A93D18();
}

void sub_1C97B549C()
{
  sub_1C97AEB94();
  sub_1C97BE558();
  sub_1C97A2CEC(&qword_1EC3C6B60);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97BE20C(v0, v0[3]);
  sub_1C97BCE58();
  sub_1C9A93DB8();
  sub_1C97BCA38();
  sub_1C9A938F8();
  sub_1C97A2CEC(&qword_1EC3C6B70);
  sub_1C97BE4D0();
  sub_1C97BCEF0(&unk_1EC3C6B78);
  sub_1C9A938F8();
  sub_1C9A938E8();
  v2 = sub_1C97BE30C();
  v3(v2);
  sub_1C97BD200(v0);
  sub_1C97AEB5C();
}

uint64_t sub_1C97B56E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C97B573C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97B5054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97B5764(uint64_t a1)
{
  v2 = sub_1C97BCE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97B57A0(uint64_t a1)
{
  v2 = sub_1C97BCE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C97B57DC(void *a1@<X8>)
{
  sub_1C97B549C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_1C97B5844()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9A93CC8();
  sub_1C97B53E8(v5, v1, v2, v3);
  return sub_1C9A93D18();
}

id SNKShotSegmentationResult.init()()
{
  sub_1C97BD318(0, &unk_1EC3C5500);
  v1 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v2 = sub_1C97A2CEC(&unk_1EC3CE7E0);
  sub_1C97B1D1C();
  sub_1C97B1D80();
  v3 = sub_1C97BE008();
  if (v2)
  {
    sub_1C97BE0A8();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v4 = &v0[OBJC_IVAR___SNKShotSegmentationResult_impl];
    *v4 = v3;
    v4[1] = v1;
    v4[2] = 0;
    v6.receiver = v0;
    v6.super_class = type metadata accessor for SNKShotSegmentationResult();
    return objc_msgSendSuper2(&v6, sel_init);
  }

  return result;
}

uint64_t sub_1C97B5A80(void *a1)
{
  sub_1C97BE2EC(a1, OBJC_IVAR___SNKShotSegmentationResult_impl);
  v2 = v1;
  return sub_1C97BE374();
}

void sub_1C97B5ACC(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
}

void sub_1C97B5B44()
{
  sub_1C97BE460();
  v1 = type metadata accessor for KShotSegment(0);
  sub_1C97BE2AC(v1);
  v3 = v2;
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v0 + OBJC_IVAR___SNKShotSegmentationResult_impl + 8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v18 = MEMORY[0x1E69E7CC0];

    sub_1C9A93698();
    v11 = *(v3 + 80);
    v16 = v9;
    v12 = v9 + ((v11 + 32) & ~v11);
    v13 = *(v3 + 72);
    do
    {
      sub_1C97B1CB8(v12, v8);
      sub_1C97B1CB8(v8, v6);
      v14 = type metadata accessor for SNKShotSegment(0);
      v15 = objc_allocWithZone(v14);
      sub_1C97B1CB8(v6, v15 + OBJC_IVAR___SNKShotSegment_impl);
      v17.receiver = v15;
      v17.super_class = v14;
      objc_msgSendSuper2(&v17, sel_init, v16);
      sub_1C97BB334(v6);
      sub_1C97BB334(v8);
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  sub_1C97BE478();
}

void sub_1C97B5D24()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for KShotSegment(0);
  v5 = sub_1C97BE2AC(v4);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *(v1 + OBJC_IVAR___SNKShotSegmentationResult_impl + 8) = v13;

    sub_1C97BE478();
    return;
  }

  v11 = sub_1C97BE138();
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  v20 = MEMORY[0x1E69E7CC0];
  sub_1C97B79BC(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v19 = v0;
    v12 = 0;
    v13 = v20;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCA912B0](v12, v3);
      }

      else
      {
        v14 = *(v3 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = OBJC_IVAR___SNKShotSegment_impl;
      swift_beginAccess();
      sub_1C97B1CB8(v15 + v16, v10);

      v18 = *(v20 + 16);
      v17 = *(v20 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C97B79BC(v17 > 1, v18 + 1, 1);
      }

      ++v12;
      *(v20 + 16) = v18 + 1;
      sub_1C97AFCEC(v10, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
    }

    while (v11 != v12);

    v1 = v19;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1C97B5F34(uint64_t a1)
{
  sub_1C97BE2A0(a1);
  sub_1C97B5B44();
  *v1 = v2;
  return sub_1C97BE074();
}

uint64_t sub_1C97B5F8C(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

id sub_1C97B6040()
{
  v1 = *(v0 + OBJC_IVAR___SNKShotSegmentationResult_impl + 16);
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInteger_];
}

void sub_1C97B60F0(void *a1)
{
  v3 = [a1 integerValue];

  *(v1 + OBJC_IVAR___SNKShotSegmentationResult_impl + 16) = v3;
}

uint64_t sub_1C97B6168(uint64_t a1)
{
  sub_1C97BE2A0(a1);
  *v1 = sub_1C97B6040();
  return sub_1C97BE074();
}

void sub_1C97B61A8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1C97B60F0(v3);
  }

  else
  {
    sub_1C97B60F0(v2);
  }
}

uint64_t static SNKShotFeaturizer.featurizeFiles(_:hallucinatorModelURL:queue:completionHandler:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v8 = objc_opt_self();
  sub_1C9A91558();
  v9 = sub_1C9A92768();
  v10 = sub_1C9A91488();
  sub_1C97AA878();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v15[4] = sub_1C97BB390;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1C97B649C;
  v15[3] = &unk_1F492CD30;
  v12 = _Block_copy(v15);

  v13 = [v8 featurizeFiles:v9 hallucinatorModelURL:v10 queue:a1 completionHandler:v12];
  _Block_release(v12);

  result = swift_getObjectType();
  a4[3] = result;
  *a4 = v13;
  return result;
}

void sub_1C97B63CC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  sub_1C97A2C7C(a1, v7);
  if (!v8)
  {
    sub_1C97A59D0(v7);
    goto LABEL_6;
  }

  sub_1C97BD318(0, &qword_1EC3C54A0);
  if (!swift_dynamicCast())
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  type metadata accessor for SNKShotFeaturizationResult();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
  }

LABEL_7:
  a3(v5, a2);
}

uint64_t sub_1C97B649C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1C97A2D34(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_1C97A59D0(v10);
}

uint64_t static SNKShotFeaturizer.featurizeFiles(_:hallucinatorModelURL:queue:resultHandler:completionHandler:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v19 = objc_opt_self();
  sub_1C9A91558();
  v11 = sub_1C9A92768();
  v12 = sub_1C9A91488();
  sub_1C97AA878();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v25 = sub_1C97BB3B0;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C97B6948;
  v24 = &unk_1F492CD80;
  v14 = _Block_copy(&aBlock);

  sub_1C97AA878();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v25 = sub_1C97BB3B8;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C97B649C;
  v24 = &unk_1F492CDD0;
  v16 = _Block_copy(&aBlock);

  v17 = [v19 featurizeFiles:v11 hallucinatorModelURL:v12 queue:a1 resultHandler:v14 completionHandler:v16];
  _Block_release(v16);
  _Block_release(v14);

  result = swift_getObjectType();
  a6[3] = result;
  *a6 = v17;
  return result;
}

void sub_1C97B68D4(uint64_t a1, void (*a2)())
{
  sub_1C97BD360(a1, v4);
  type metadata accessor for SNKShotFeaturizationStreamResult();
  swift_dynamicCast();
  a2();
}

uint64_t sub_1C97B6948(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return sub_1C97BD200(v5);
}

void sub_1C97B69B8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  sub_1C97A2C7C(a1, v7);
  if (v8)
  {
    type metadata accessor for SNKShotFeaturizationStreamCompletion();
    if (swift_dynamicCast())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1C97A59D0(v7);
    v5 = 0;
  }

  a3(v5, a2);
}

void sub_1C97B6C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C9A913B8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t static SNKShotFeaturizer.performSegmentationRequest(_:)(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *&v6[0] = 0;
  v1 = [objc_opt_self() performSegmentationRequest:a1 error:v6];
  v2 = *&v6[0];
  if (v1)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
    sub_1C97A2D34(&v7, v6);
    type metadata accessor for SNKShotSegmentationResult();
    swift_dynamicCast();
    return v5;
  }

  else
  {
    v4 = v2;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

uint64_t static SNKShotFeaturizer.featurize(urls:hallucinatorModelURL:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C97B6E70, 0, 0);
}

uint64_t sub_1C97B6E70()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1C97B6F30;
  v5 = swift_continuation_init();
  sub_1C97B7070(v5, v2, v1, v4, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C97B6F30()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 80);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

uint64_t sub_1C97B7070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = a5;
  v24 = a1;
  v7 = sub_1C9A92138();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  v23 = objc_opt_self();
  sub_1C9A91558();

  v13 = sub_1C9A92768();
  v14 = sub_1C9A91488();
  sub_1C97BD318(0, &qword_1EC3C56B0);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F98], v7);
  v15 = sub_1C9A93058();
  (*(v8 + 8))(v10, v7);
  v29 = sub_1C97BD30C;
  v30 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1C97B6948;
  v28 = &unk_1F492D290;
  v16 = _Block_copy(&aBlock);

  v17 = swift_allocObject();
  *(v17 + 16) = v24;
  v29 = sub_1C97BD358;
  v30 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1C97B649C;
  v28 = &unk_1F492D2E0;
  v18 = _Block_copy(&aBlock);

  v19 = v13;
  v20 = [v23 featurizeFiles:v13 hallucinatorModelURL:v14 queue:v15 resultHandler:v16 completionHandler:v18];

  _Block_release(v18);
  _Block_release(v16);

  swift_beginAccess();
  *(v11 + 16) = v20;

  return swift_unknownObjectRelease();
}

void sub_1C97B73AC(uint64_t a1, uint64_t a2, void (*a3)())
{
  if (sub_1C9A92A48())
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    if (v6)
    {
      [v6 cancel];
    }
  }

  else
  {
    sub_1C97BD360(a1, v8);
    type metadata accessor for SNKShotFeaturizationStreamResult();
    swift_dynamicCast();
    a3();
  }
}

uint64_t sub_1C97B7460(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_1C9A92A48();
  if ((result & 1) == 0)
  {
    sub_1C97A2C7C(a1, &v10);
    if (v11)
    {
      sub_1C97A2D34(&v10, v12);
      sub_1C97BD360(v12, &v10);
      type metadata accessor for SNKShotFeaturizationStreamCompletion();
      swift_dynamicCast();
      **(*(a3 + 64) + 40) = v9;
      swift_continuation_throwingResume();
      return sub_1C97BD200(v12);
    }

    else
    {
      result = sub_1C97A59D0(&v10);
      if (a2)
      {
        sub_1C97A2CEC(&unk_1EC3CA040);
        swift_allocError();
        *v7 = a2;
        v8 = a2;
        return swift_continuation_throwingResumeWithError();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

id SNKShotFeaturizer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNKShotFeaturizer();
  return objc_msgSendSuper2(&v2, sel_init);
}

void static SNKShotFeaturizer.writeToFile(_:segmentationResult:)(uint64_t a1, uint64_t a2)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + OBJC_IVAR___SNKShotSegmentationResult_impl);
  v3 = *(a2 + OBJC_IVAR___SNKShotSegmentationResult_impl + 8);
  v5 = *(a2 + OBJC_IVAR___SNKShotSegmentationResult_impl + 16);
  v6 = objc_opt_self();
  v16[1] = v3;
  v16[2] = v5;
  v7 = v4;
  swift_bridgeObjectRetain_n();
  v8 = v7;
  v16[0] = 0;
  v9 = [v6 dataWithJSONObject:sub_1C9A93BB8() options:0 error:v16];
  swift_unknownObjectRelease();
  v10 = v16[0];
  if (v9)
  {
    sub_1C9A91618();

    sub_1C9A91648();
    if (v2)
    {

      v11 = sub_1C97A7890();
      sub_1C97A5978(v11, v12);
      return;
    }

    v14 = sub_1C97A7890();
    sub_1C97A5978(v14, v15);
  }

  else
  {
    v13 = v10;
    sub_1C9A913C8();

    swift_willThrow();
  }
}

uint64_t static SNKShotFeaturizer.writeToFile(_:featurizationResult:)(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 16);
  v16 = *(a2 + OBJC_IVAR___SNKShotFeaturizationResult_impl);
  v17 = v3;
  v4 = *(a2 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 48);
  v18 = *(a2 + OBJC_IVAR___SNKShotFeaturizationResult_impl + 32);
  v19 = v4;
  v5 = objc_opt_self();
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  sub_1C97BB3E4(&v16, v14);
  sub_1C97BB3E4(&v16, v14);
  v6 = sub_1C9A93BB8();
  *&v15[0] = 0;
  v7 = [v5 dataWithJSONObject:v6 options:0 error:v15];
  swift_unknownObjectRelease();
  v8 = *&v15[0];
  if (v7)
  {
    v9 = sub_1C9A91618();
    v11 = v10;

    sub_1C9A91648();
    if (v2)
    {
      sub_1C97BB41C(&v16);
      return sub_1C97A5978(v9, v11);
    }

    sub_1C97A5978(v9, v11);
  }

  else
  {
    v13 = v8;
    sub_1C9A913C8();

    swift_willThrow();
  }

  return sub_1C97BB41C(&v16);
}

uint64_t sub_1C97B7904(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C9A934C8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

size_t sub_1C97B79BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1C97B84D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B79DC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B8684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B79FC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B8794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7B08(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B8988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7B28(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B8A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7B48(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B8B8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7B68(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B8C90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7B88(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B8D94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7BA8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B8EAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7BC8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B8FC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7BE8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B90D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C97B7C08(void *a1, int64_t a2, char a3)
{
  result = sub_1C97B91EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C97B7C28()
{
  sub_1C97BE1F4();
  sub_1C97BAD2C();
  *v0 = v1;
}

void *sub_1C97B7C5C(void *a1, int64_t a2, char a3)
{
  result = sub_1C97B9324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7C7C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B9434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7C9C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B954C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7CBC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B9664(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7CDC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B977C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7D40(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B98BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7D60(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B99CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7E68(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B9ADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7E88(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B9BEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C97B7EA8(void *a1, int64_t a2, char a3)
{
  result = sub_1C97B9CFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B7EC8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97B9E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C97B7EE8()
{
  sub_1C97BE1DC();
  sub_1C97BAD2C();
  *v0 = v1;
}

void sub_1C97B80BC()
{
  sub_1C97BE1C4();
  sub_1C97BAFB0();
  *v0 = v1;
}

uint64_t sub_1C97B80F8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BA0B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B8118(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BA1AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C97B8138(void *a1, int64_t a2, char a3)
{
  result = sub_1C97BA2B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B81E0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BA3C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B8200(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BA4DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B8220(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BA5EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B8240(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BA704(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B8260(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BA81C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B8280(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BA92C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B82A0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BAA44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B8358(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BAC1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B8400(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BAE98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C97B846C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C97BB088(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C97B84D0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C97A2CEC(&qword_1EC3C6D40);
  v10 = *(type metadata accessor for KShotSegment(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for KShotSegment(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1C97E6F8C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1C97B8684(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6CB0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_1C97E6FA4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6CB8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B8794(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&unk_1EC3C6A60);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C979AFE4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C97B8898(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_1C97BDFD4();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_1C97A2CEC(&unk_1EC3C69D0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 24);
      if (a1)
      {
LABEL_12:
        sub_1C979AFE4((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy((v11 + 32), (a4 + 32), 24 * v9);
    goto LABEL_15;
  }

  sub_1C97BE12C();
  if (!v7)
  {
    sub_1C97BDFC4();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C97B8988(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6CA0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C978D31C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B8A88(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C69C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1C97E6FC4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 48 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B8B8C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C69C8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 52);
      if (v5)
      {
LABEL_13:
        sub_1C97E6FEC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 52 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B8C90(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C76D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 28);
      if (v5)
      {
LABEL_13:
        sub_1C97E7018((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 28 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B8D94(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C69E8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1C97E6FC4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C69F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B8EAC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6968);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C97E84F4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6970);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B8FC4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6948);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C979B00C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6950);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B90D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6958);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C979B02C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6960);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C97B91EC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6C68);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C97E8430(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6C70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C97B9324(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6C58);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C97E8430(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6C60);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B9434(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6990);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C97E84F4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6998);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B954C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&unk_1EC3C69A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C97E84F4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&unk_1EC3C7B30);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B9664(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6980);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C979AFE4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6988);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B977C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&unk_1EC3C6C90);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C97E84F8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C7920);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B98BC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&unk_1EC3C6A50);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C97E8434((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&unk_1EC3CBA10);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B99CC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6928);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C979B00C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6930);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B9ADC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&unk_1EC3C68D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C97E8434((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&unk_1EC3C7580);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B9BEC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6908);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C97E8434((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6910);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C97B9CFC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&unk_1EC3C6918);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C97E842C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6330);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97B9E0C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6C28);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C97E84F4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&qword_1EC3C6C30);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C97B9F24()
{
  sub_1C97BE054();
  if ((v4 & 1) == 0 || (sub_1C97BDFD4(), v5 == v6))
  {
LABEL_6:
    sub_1C97BE044();
    if (v3)
    {
      sub_1C97BE398(v7, v8, v9, v10, v11);
      v12 = sub_1C97BE490();
      sub_1C97BE624(v12);
      sub_1C97BE10C(v13);
      if (v2)
      {
LABEL_8:
        v14 = sub_1C97BE064();
        v1(v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v15 = sub_1C97BE380();
    memcpy(v15, v16, v17);
    goto LABEL_11;
  }

  sub_1C97BE12C();
  if (!v5)
  {
    sub_1C97BDFC4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C97B9FD4()
{
  sub_1C97BE054();
  if ((v4 & 1) == 0 || (sub_1C97BDFD4(), v5 == v6))
  {
LABEL_6:
    sub_1C97BE044();
    if (v3)
    {
      sub_1C97BE398(v7, v8, v9, v10, v11);
      v12 = sub_1C97BE490();
      sub_1C97BE624(v12);
      sub_1C97BE10C(v13);
      if (v2)
      {
LABEL_8:
        v14 = sub_1C97BE064();
        v1(v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v15 = sub_1C97BE380();
    memcpy(v15, v16, v17);
    goto LABEL_11;
  }

  sub_1C97BE12C();
  if (!v5)
  {
    sub_1C97BDFC4();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C97BA0B4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6978);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 2);
      if (v5)
      {
LABEL_13:
        sub_1C97E7094((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 2 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97BA1AC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6A80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1C97E70B4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C97BA2B4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&qword_1EC3C6A78);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C97E842C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&unk_1EC3CE7E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97BA3C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1C97A2CEC(&unk_1EC3C69B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C979AFE4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1C97A2CEC(&unk_1EC3C76C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}