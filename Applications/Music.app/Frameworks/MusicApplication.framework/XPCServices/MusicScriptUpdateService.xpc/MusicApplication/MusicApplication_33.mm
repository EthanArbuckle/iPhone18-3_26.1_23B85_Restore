uint64_t sub_10034DDFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10034DE1C@<X0>(void *a1@<X8>)
{
  result = sub_1004B9074();
  *a1 = v3;
  return result;
}

uint64_t sub_10034DE80()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_100003ABC(&unk_100609E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004B8A24();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_100003ABC(&unk_10060D340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1004B8C94();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_100003ABC(&unk_100609E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1004B8AB4();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10034E114()
{
  result = qword_10060E0E8;
  if (!qword_10060E0E8)
  {
    sub_100003B68(&qword_10060E0D8);
    sub_1000206D4(&qword_10060E0F0, &qword_10060E0F8);
    sub_1000206D4(&qword_10060E100, &qword_10060E108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E0E8);
  }

  return result;
}

uint64_t sub_10034E1F8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034E274()
{
  result = qword_10060E118;
  if (!qword_10060E118)
  {
    sub_100003B68(&qword_10060E120);
    sub_10034E32C();
    sub_1000206D4(&qword_10060E138, &qword_10060E140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E118);
  }

  return result;
}

unint64_t sub_10034E32C()
{
  result = qword_10060E128;
  if (!qword_10060E128)
  {
    sub_100003B68(&qword_10060E130);
    sub_10034BAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E128);
  }

  return result;
}

unint64_t sub_10034E3B8()
{
  result = qword_10060E148;
  if (!qword_10060E148)
  {
    sub_100003B68(&qword_10060E0D0);
    sub_1000206D4(&qword_10060E150, &qword_10060E158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E148);
  }

  return result;
}

unint64_t sub_10034E468()
{
  result = qword_10060E160;
  if (!qword_10060E160)
  {
    sub_100003B68(&qword_10060E0C0);
    sub_100003B68(&qword_10060E0D8);
    sub_100003B68(&qword_10060E0E0);
    sub_10034E114();
    sub_10034E1F8(&qword_10060E110, &qword_10060E0E0, &unk_1004E17C8, sub_10034E274);
    swift_getOpaqueTypeConformance2();
    sub_10034E3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E160);
  }

  return result;
}

unint64_t sub_10034E5C8()
{
  result = qword_10060E1B0;
  if (!qword_10060E1B0)
  {
    sub_100003B68(&qword_10060E1A8);
    sub_10034A084(&qword_10060E1A0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E1B0);
  }

  return result;
}

unint64_t sub_10034E6B0()
{
  result = qword_10060E1F0;
  if (!qword_10060E1F0)
  {
    sub_100003B68(&qword_10060E1E8);
    sub_10034E768();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E1F0);
  }

  return result;
}

unint64_t sub_10034E768()
{
  result = qword_10060E1F8;
  if (!qword_10060E1F8)
  {
    sub_100003B68(&qword_10060E200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E1F8);
  }

  return result;
}

uint64_t sub_10034E81C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_100330034(a1, v4, v5, v6);
}

uint64_t sub_10034E8D8@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_10033C4AC(a1);
}

uint64_t sub_10034E94C()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  sub_100003ABC(&unk_100609E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1004B8A24();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_100003ABC(&unk_10060D340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1004B8C94();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_100003ABC(&unk_100609E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1004B8AB4();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10034EBB4(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10033C534(a1, v4, v5, v6);
}

uint64_t sub_10034EC30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_10032FC38(a1, v4, v5, v6, v7);
}

uint64_t sub_10034ECF4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_10033A7FC(a1);
}

uint64_t sub_10034ED64(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100309A2C(a1, a2, v2 + v6, v7);
}

uint64_t sub_10034EE30(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10033A690(a1, v4);
}

unint64_t sub_10034EEB0()
{
  result = qword_10060E300;
  if (!qword_10060E300)
  {
    sub_100003B68(&qword_10060E2D0);
    sub_10034EF68();
    sub_1000206D4(&qword_10060E318, &qword_10060E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E300);
  }

  return result;
}

unint64_t sub_10034EF68()
{
  result = qword_10060E308;
  if (!qword_10060E308)
  {
    sub_100003B68(&qword_10060E310);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E308);
  }

  return result;
}

uint64_t sub_10034F020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_100330594(a1, v4, v5, v6);
}

uint64_t sub_10034F130@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_100339920(a1);
}

unint64_t sub_10034F1A0()
{
  result = qword_10060E358;
  if (!qword_10060E358)
  {
    sub_100003B68(&qword_10060E340);
    sub_10034A084(&qword_10060E360, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    sub_1000206D4(&qword_10060E368, &qword_10060E370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E358);
  }

  return result;
}

unint64_t sub_10034F2B4()
{
  result = qword_10060E3B0;
  if (!qword_10060E3B0)
  {
    sub_100003B68(&qword_10060E388);
    sub_10034F340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E3B0);
  }

  return result;
}

unint64_t sub_10034F340()
{
  result = qword_10060E3B8;
  if (!qword_10060E3B8)
  {
    sub_100003B68(&qword_10060E3A8);
    sub_10034F3F8();
    sub_1000206D4(&qword_10060E100, &qword_10060E108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E3B8);
  }

  return result;
}

unint64_t sub_10034F3F8()
{
  result = qword_10060E3C0;
  if (!qword_10060E3C0)
  {
    sub_100003B68(&qword_10060E3A0);
    sub_1000206D4(&qword_10060E3C8, &qword_10060E3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E3C0);
  }

  return result;
}

uint64_t sub_10034F578(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_10034F5F4()
{
  result = qword_10060E440;
  if (!qword_10060E440)
  {
    sub_100003B68(&qword_10060E3E8);
    sub_1000206D4(&qword_10060DCB8, &unk_10060DCC0);
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E440);
  }

  return result;
}

unint64_t sub_10034F6D8()
{
  result = qword_10060E470;
  if (!qword_10060E470)
  {
    sub_100003B68(&qword_10060E3F0);
    sub_10034F790();
    sub_1000206D4(&qword_10060E4A8, &qword_10060E468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E470);
  }

  return result;
}

unint64_t sub_10034F790()
{
  result = qword_10060E478;
  if (!qword_10060E478)
  {
    sub_100003B68(&qword_10060E460);
    sub_10034F848();
    sub_1000206D4(&qword_10060E498, &qword_10060E4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E478);
  }

  return result;
}

unint64_t sub_10034F848()
{
  result = qword_10060E480;
  if (!qword_10060E480)
  {
    sub_100003B68(&qword_10060E458);
    sub_10034F8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E480);
  }

  return result;
}

unint64_t sub_10034F8D4()
{
  result = qword_10060E488;
  if (!qword_10060E488)
  {
    sub_100003B68(&qword_10060E450);
    sub_10034F960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E488);
  }

  return result;
}

unint64_t sub_10034F960()
{
  result = qword_10060E490;
  if (!qword_10060E490)
  {
    sub_100003B68(&qword_10060E448);
    sub_100003B68(&qword_10060E3E8);
    sub_10034F5F4();
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E490);
  }

  return result;
}

uint64_t sub_10034FAF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10034FB40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10034FB80()
{
  v1 = sub_1004BBA84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10034FC58(uint64_t a1)
{
  v4 = *(sub_1004BBA84() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_10032A90C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10034FD78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100009178(a1, a1[3]);
  result = sub_1004BB254();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10034FDC0()
{
  result = qword_10060E500;
  if (!qword_10060E500)
  {
    sub_100009130(255, &qword_10060E4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E500);
  }

  return result;
}

unint64_t sub_10034FE78()
{
  result = qword_10060E558;
  if (!qword_10060E558)
  {
    sub_100003B68(&qword_10060E560);
    sub_100003B68(&qword_10060DC58);
    sub_100003B68(&qword_10060DC50);
    sub_100003B68(&qword_10060DC48);
    sub_100003B68(&qword_10060DC70);
    sub_10034BB98();
    sub_10034E1F8(&unk_10060DCA0, &qword_10060DC70, &unk_1004E1168, sub_10034BC7C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10034A084(&qword_10060E568, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E558);
  }

  return result;
}

unint64_t sub_100350054()
{
  result = qword_10060E570;
  if (!qword_10060E570)
  {
    sub_100003B68(&qword_10060DE68);
    sub_10035010C();
    sub_1000206D4(&qword_10060E590, &qword_10060DE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E570);
  }

  return result;
}

unint64_t sub_10035010C()
{
  result = qword_10060E578;
  if (!qword_10060E578)
  {
    sub_100003B68(&qword_10060DE08);
    sub_1003501C4();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E578);
  }

  return result;
}

unint64_t sub_1003501C4()
{
  result = qword_10060E580;
  if (!qword_10060E580)
  {
    sub_100003B68(&qword_10060DE00);
    sub_1000206D4(&qword_10060E588, &qword_10060DDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E580);
  }

  return result;
}

unint64_t sub_10035029C()
{
  result = qword_10060E598;
  if (!qword_10060E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E598);
  }

  return result;
}

uint64_t sub_1003502F0()
{

  return swift_deallocObject();
}

unint64_t sub_100350340()
{
  result = qword_10060E5B8;
  if (!qword_10060E5B8)
  {
    sub_100003B68(&qword_10060E5B0);
    sub_1003503F8();
    sub_1000206D4(&unk_10060E5F0, &qword_10060EF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E5B8);
  }

  return result;
}

unint64_t sub_1003503F8()
{
  result = qword_10060E5C0;
  if (!qword_10060E5C0)
  {
    sub_100003B68(&qword_10060E5C8);
    sub_1003504B0();
    sub_1000206D4(&qword_10060E498, &qword_10060E4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E5C0);
  }

  return result;
}

unint64_t sub_1003504B0()
{
  result = qword_10060E5D0;
  if (!qword_10060E5D0)
  {
    sub_100003B68(&qword_10060E5D8);
    sub_10035053C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E5D0);
  }

  return result;
}

unint64_t sub_10035053C()
{
  result = qword_10060E5E0;
  if (!qword_10060E5E0)
  {
    sub_100003B68(&qword_10060E5E8);
    sub_10034C900();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E5E0);
  }

  return result;
}

unint64_t sub_10035068C()
{
  result = qword_10060E618;
  if (!qword_10060E618)
  {
    sub_100003B68(&qword_10060E608);
    sub_100003B68(&qword_10060E5A0);
    sub_1004B9594();
    sub_1000206D4(&qword_10060E600, &qword_10060E5A0);
    sub_10034A084(&qword_10060E1E0, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&unk_10060E620, &qword_10060E610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E618);
  }

  return result;
}

unint64_t sub_10035089C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_10060EB98);
    v2 = sub_1004BD6F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10003D034(*(a1 + 48) + 40 * v12, v33);
        sub_100004DE4(*(a1 + 56) + 32 * v12, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_10003D034(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_100007214(v30, &qword_10060EA38);

          goto LABEL_23;
        }

        v14 = v23[0];
        v13 = v23[1];
        sub_100004DE4(v31 + 8, v23);
        sub_100007214(v30, &qword_10060EA38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        result = sub_1003740CC(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          result = sub_10035FAC4(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          v17 = v2[7] + 40 * result;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v2[2] = v22;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_100007214(&v24, &qword_10060EBA0);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100350BC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_10060EA30);
    v2 = sub_1004BD6F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10003D034(*(a1 + 48) + 40 * v12, v27);
        sub_100004DE4(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_10003D034(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100004DE4(v25 + 8, v20);
        sub_100007214(v24, &qword_10060EA38);
        v21 = v18;
        sub_10003E13C(v20, v22);
        v13 = v21;
        sub_10003E13C(v22, v23);
        sub_10003E13C(v23, &v21);
        result = sub_1003740CC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100004C6C(v10);
          result = sub_10003E13C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_10003E13C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100007214(v24, &qword_10060EA38);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = sub_1004BB6C4();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_100350F88(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t sub_100350F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&unk_10060EBE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return sub_100350F88(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v33[0] = sub_1004BB7D4();
  v2 = *(v33[0] - 8);
  __chkstk_darwin(v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B6E64();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1004BBE14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10035DBFC(v1, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v2;
      v18 = *(v2 + 32);
      v19 = v33[0];
      v18(v4, v15, v33[0]);
      sub_1004BBDA4();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v20 = qword_100618C60;
      sub_1004B6DF4();
      sub_1004BBED4();
      (*(v7 + 8))(v12, v6);
      sub_100003ABC(&qword_10060E668);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1004C50A0;
      v22 = sub_1004BB774();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_10035C610();
      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v24)
      {
        v26 = v24;
      }

      *(v21 + 32) = v25;
      *(v21 + 40) = v26;
      v27 = sub_1004BBE34();

      (*(v17 + 8))(v4, v19);
    }

    else
    {
      sub_1004BBDA4();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v29 = qword_100618C60;
      sub_1004B6DF4();
      v27 = sub_1004BBED4();
      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v28 = *(sub_100003ABC(&qword_10060E678) + 48);
    sub_1004BBDA4();
    (*(v7 + 16))(v9, v12, v6);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v30 = qword_100618C60;
    sub_1004B6DF4();
    v27 = sub_1004BBED4();
    (*(v7 + 8))(v12, v6);
    v31 = sub_1004B6B04();
    (*(*(v31 - 8) + 8))(&v15[v28], v31);
    sub_100007214(v15, &qword_10060E680);
  }

  return v27;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v84 = hasProfileEdit;
  v2 = sub_1004BBDF4();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v83 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v79 - v7);
  v9 = sub_100003ABC(&qword_10060E688);
  __chkstk_darwin(v9 - 8);
  v11 = &v79 - v10;
  v12 = sub_100003ABC(&qword_10060E680);
  __chkstk_darwin(v12 - 8);
  v14 = &v79 - v13;
  v15 = sub_1004B6E64();
  __chkstk_darwin(v15 - 8);
  v86 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1004BBE14();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v79 - v19;
  v21 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10035DBFC(v1, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1004BBDA4();
      v25 = v85;
      v26 = v88;
      (*(v85 + 16))(v87, v20, v88);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v27 = qword_100618C60;
      sub_1004B6DF4();
      v28 = sub_1004BBED4();
      v30 = v29;
      (*(v25 + 8))(v20, v26);
      sub_10035C664(v23, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v39 = v85;
      v40 = (v85 + 16);
      v41 = v20;
      v42 = v87;
      v43 = v88;
      sub_1004BBDA4();
      (*v40)(v42, v41, v43);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v46 = qword_100618C60;
      sub_1004B6DF4();
      v28 = sub_1004BBED4();
      v30 = v47;
      (*(v39 + 8))(v41, v43);
    }

    goto LABEL_33;
  }

  v31 = sub_100003ABC(&qword_10060E678);
  v32 = *(v31 + 48);
  v33 = *(v31 + 64);
  v34 = v23;
  v35 = v23[v33];
  v81 = v32;
  v82 = v34;
  sub_100025B04(v34, v14, &qword_10060E680);
  v80 = v14;
  sub_10000F778(v14, v11, &qword_10060E680);
  if ((*(v83 + 48))(v11, 1, v3) == 1)
  {
    v36 = v85;
    v37 = (v85 + 16);
    v38 = v20;
    sub_1004BBDA4();
    v48 = v88;
    (*v37)(v87, v38, v88);
    v49 = v80;
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v50 = qword_100618C60;
    sub_1004B6DF4();
    v28 = sub_1004BBED4();
    v30 = v51;
    (*(v36 + 8))(v38, v48);
    sub_100007214(v49, &qword_10060E680);
    v52 = sub_1004B6B04();
    (*(*(v52 - 8) + 8))(v82 + v81, v52);
    goto LABEL_33;
  }

  v44 = v20;
  if (v35)
  {
    v45 = v8;
    sub_10035C6E4(v11, v8, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v84)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v8[1]._countAndFlagsBits;
    object = v8[1]._object;
    v61 = v82;
    if (object)
    {
      sub_1004BBDE4();
      v89._countAndFlagsBits = 0x100000000000002ELL;
      v89._object = 0x8000000100509500;
      sub_1004BBDD4(v89);
      sub_1004BBDC4(*v8);
      v90._countAndFlagsBits = 4204576;
      v90._object = 0xE300000000000000;
      sub_1004BBDD4(v90);
      v91._countAndFlagsBits = countAndFlagsBits;
      v91._object = object;
      sub_1004BBDC4(v91);
      v92._countAndFlagsBits = 0xD000000000000031;
      v92._object = 0x8000000100509530;
      sub_1004BBDD4(v92);
LABEL_26:
      sub_1004BBE04();
      v64 = v85;
      v65 = v88;
      (*(v85 + 16))(v87, v44, v88);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v66 = qword_100618C60;
      sub_1004B6DF4();
      v28 = sub_1004BBED4();
      v30 = v67;
      (*(v64 + 8))(v44, v65);
LABEL_32:
      sub_100007214(v80, &qword_10060E680);
      sub_10035C664(v45, type metadata accessor for Collaboration.Flow.Collaborator);
      v75 = sub_1004B6B04();
      (*(*(v75 - 8) + 8))(v61 + v81, v75);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v45 = v5;
  sub_10035C6E4(v11, v5, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v84)
  {
    v62 = v5[1]._countAndFlagsBits;
    v63 = v5[1]._object;
    v61 = v82;
    if (v63)
    {
      sub_1004BBDE4();
      v93._countAndFlagsBits = 0x100000000000002ALL;
      v93._object = 0x8000000100509410;
      sub_1004BBDD4(v93);
      sub_1004BBDC4(*v5);
      v94._countAndFlagsBits = 4204576;
      v94._object = 0xE300000000000000;
      sub_1004BBDD4(v94);
      v95._countAndFlagsBits = v62;
      v95._object = v63;
      sub_1004BBDC4(v95);
      v96._countAndFlagsBits = 0xD000000000000048;
      v96._object = 0x8000000100509440;
      sub_1004BBDD4(v96);
      goto LABEL_26;
    }

LABEL_29:
    sub_1004BBDA4();
    v68 = v85;
    v69 = v88;
    (*(v85 + 16))(v87, v44, v88);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v70 = qword_100618C60;
    sub_1004B6DF4();
    sub_1004BBED4();
    (*(v68 + 8))(v44, v69);
    sub_100003ABC(&qword_10060E668);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1004C50A0;
    v72 = v45->_countAndFlagsBits;
    v73 = v45->_object;
    *(v71 + 56) = &type metadata for String;
    *(v71 + 64) = sub_10035C610();
    *(v71 + 32) = v72;
    *(v71 + 40) = v73;

    v28 = sub_1004BBE34();
    v30 = v74;

    goto LABEL_32;
  }

LABEL_19:
  sub_1004BBDA4();
  v53 = v85;
  v54 = v88;
  (*(v85 + 16))(v87, v44, v88);
  v55 = v82;
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v56 = qword_100618C60;
  sub_1004B6DF4();
  v28 = sub_1004BBED4();
  v30 = v57;
  (*(v53 + 8))(v44, v54);
  sub_100007214(v80, &qword_10060E680);
  sub_10035C664(v45, type metadata accessor for Collaboration.Flow.Collaborator);
  v58 = sub_1004B6B04();
  (*(*(v58 - 8) + 8))(v55 + v81, v58);
LABEL_33:
  v76 = v28;
  v77 = v30;
  result._object = v77;
  result._countAndFlagsBits = v76;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  v10 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10035DBFC(v1, v12, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10035C664(v12, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      sub_1004BBDA4();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v16 = qword_100618C60;
      sub_1004B6DF4();
      v14 = sub_1004BBED4();
      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    v15 = *(sub_100003ABC(&qword_10060E678) + 48);
    sub_1004BBDA4();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v17 = qword_100618C60;
    sub_1004B6DF4();
    v14 = sub_1004BBED4();
    (*(v4 + 8))(v9, v3);
    v18 = sub_1004B6B04();
    (*(*(v18 - 8) + 8))(&v12[v15], v18);
    sub_100007214(v12, &qword_10060E680);
  }

  return v14;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B805SwiftD05StateVySbGvpfi_0();
  sub_1004BA414();
  *a9 = v25;
  *(a9 + 8) = v26;
  sub_1004BA414();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = sub_100359644;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  sub_10035C6E4(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = sub_1004BBA84();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1004B9344();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100003ABC(&qword_10060E690);
  return sub_1003529B4(v1, a1 + *(v3 + 44));
}

uint64_t sub_1003529B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v487 = a1;
  v461 = a2;
  v460 = sub_100003ABC(&qword_10060EA50);
  __chkstk_darwin(v460);
  v424 = &v396 - v2;
  v3 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v3 - 8);
  v399 = &v396 - v4;
  v400 = sub_1004BB634();
  v417 = *(v400 - 8);
  __chkstk_darwin(v400);
  v416 = &v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v6 - 8);
  v410 = &v396 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v409 = &v396 - v9;
  v10 = sub_1004B7D94();
  v418 = *(v10 - 8);
  v419 = v10;
  __chkstk_darwin(v10);
  v432 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v398 = &v396 - v13;
  __chkstk_darwin(v14);
  v415 = &v396 - v15;
  __chkstk_darwin(v16);
  v434 = &v396 - v17;
  v435 = sub_1004B7D04();
  v433 = *(v435 - 8);
  __chkstk_darwin(v435);
  v446 = &v396 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v19 - 8);
  v408 = &v396 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v407 = &v396 - v22;
  __chkstk_darwin(v23);
  v445 = (&v396 - v24);
  v412 = sub_100003ABC(&qword_10060EA58);
  __chkstk_darwin(v412);
  v414 = &v396 - v25;
  v413 = sub_100003ABC(&qword_10060EF40);
  __chkstk_darwin(v413);
  v423 = &v396 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v411 = &v396 - v28;
  __chkstk_darwin(v29);
  v455 = &v396 - v30;
  v468 = sub_1004BB7D4();
  v454 = *(v468 - 8);
  __chkstk_darwin(v468);
  v436 = v31;
  v437 = &v396 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v467 = &v396 - v33;
  v34 = sub_1004B6B04();
  v430 = *(v34 - 8);
  v431 = v34;
  __chkstk_darwin(v34);
  v405 = v35;
  v406 = &v396 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v429 = &v396 - v37;
  v457 = sub_100003ABC(&qword_10060EA60);
  __chkstk_darwin(v457);
  v459 = &v396 - v38;
  v439 = sub_100003ABC(&qword_10060EA68);
  __chkstk_darwin(v439);
  v441 = (&v396 - v39);
  v458 = sub_100003ABC(&qword_10060EA70);
  __chkstk_darwin(v458);
  v442 = &v396 - v40;
  v440 = sub_100003ABC(&qword_10060EA78);
  __chkstk_darwin(v440);
  v422 = &v396 - v41;
  v42 = type metadata accessor for Collaboration.Flow.View(0);
  v453 = *(v42 - 8);
  v43 = *(v453 + 64);
  __chkstk_darwin(v42);
  v469 = &v396 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_100003ABC(&qword_10060EA80);
  v465 = *(v449 - 1);
  __chkstk_darwin(v449);
  v421 = &v396 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v438 = &v396 - v46;
  v47 = sub_1004B6E64();
  __chkstk_darwin(v47 - 8);
  v450 = &v396 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = sub_1004BBE14();
  v466 = *(v452 - 8);
  __chkstk_darwin(v452);
  v448 = &v396 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v451 = &v396 - v51;
  v401 = sub_100003ABC(&qword_10060EA88);
  __chkstk_darwin(v401);
  v403 = &v396 - v52;
  v402 = sub_100003ABC(&qword_10060EA90);
  __chkstk_darwin(v402);
  v420 = &v396 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v404 = &v396 - v55;
  __chkstk_darwin(v56);
  v447 = (&v396 - v57);
  v58 = sub_100003ABC(&qword_10060EA98);
  __chkstk_darwin(v58 - 8);
  v485 = &v396 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v396 - v61;
  v63 = sub_100003ABC(&qword_10060EAA0);
  v443 = *(v63 - 8);
  v444 = v63;
  __chkstk_darwin(v63);
  v397 = (&v396 - v64);
  v65 = sub_100003ABC(&qword_10060EAA8);
  __chkstk_darwin(v65 - 8);
  v483 = &v396 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v490 = &v396 - v68;
  v478 = sub_100003ABC(&qword_10060EAB0);
  __chkstk_darwin(v478);
  v481 = &v396 - v69;
  v480 = sub_100003ABC(&qword_10060EAB8);
  __chkstk_darwin(v480);
  v484 = &v396 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v479 = &v396 - v72;
  __chkstk_darwin(v73);
  v488 = &v396 - v74;
  v75 = sub_100003ABC(&qword_10060EAC0);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v78 = &v396 - v77;
  v79 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v79);
  v464 = (&v396 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v81);
  v477 = &v396 - v82;
  __chkstk_darwin(v83);
  v85 = &v396 - v84;
  v86 = sub_100003ABC(&qword_10060EAC8);
  __chkstk_darwin(v86 - 8);
  v482 = &v396 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v90 = &v396 - v89;
  v462 = v42;
  v491 = *(v42 + 24);
  sub_10035DBFC(v487 + v491, v85, type metadata accessor for Collaboration.Flow);
  v470 = v79;
  LODWORD(v42) = swift_getEnumCaseMultiPayload();
  sub_10035C664(v85, type metadata accessor for Collaboration.Flow);
  v489 = v62;
  v486 = v90;
  if (v42 == 1)
  {
    v91 = 1;
  }

  else
  {
    if (qword_100609CE0 != -1)
    {
      swift_once();
    }

    v92 = qword_10060E658;
    *v499 = swift_getKeyPath();
    *&v499[8] = v92;

    v93 = sub_100003ABC(&qword_10060EAD0);
    v94 = sub_10035D968();
    sub_1004BA054();

    *v499 = v93;
    *&v499[8] = v94;
    swift_getOpaqueTypeConformance2();
    v90 = v486;
    sub_1004B9FE4();
    (*(v76 + 8))(v78, v75);
    v91 = 0;
  }

  v456 = v43;
  v95 = sub_100003ABC(&qword_10060EAE8);
  (*(*(v95 - 8) + 56))(v90, v91, 1, v95);
  v96 = v487;
  *v499 = Collaboration.Flow.title.getter();
  *&v499[8] = v97;
  v463 = sub_1002C4D1C();
  v98 = sub_1004B9D84();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  if (qword_100609CD8 != -1)
  {
    swift_once();
  }

  v105 = qword_10060E650;
  KeyPath = swift_getKeyPath();
  LOBYTE(v498[0]) = v102 & 1;
  *v499 = v98;
  *&v499[8] = v100;
  v499[16] = v102 & 1;
  *&v499[24] = v104;
  *&v499[32] = 256;
  *&v499[40] = KeyPath;
  *&v499[48] = v105;

  sub_100003ABC(&qword_10060EAF0);
  sub_10035DA74();
  v107 = v481;
  sub_1004BA054();
  v544[0] = *v499;
  v544[1] = *&v499[16];
  v544[2] = *&v499[32];
  v545 = *&v499[48];
  sub_100007214(v544, &qword_10060EAF0);
  v108 = swift_getKeyPath();
  v109 = v107 + *(v478 + 36);
  *v109 = v108;
  *(v109 + 8) = 1;
  v110 = sub_1004B9974();
  v111 = v477;
  sub_10035DBFC(v96 + v491, v477, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  sub_10035C664(v111, type metadata accessor for Collaboration.Flow);
  sub_1004B86C4();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v479;
  sub_100025B04(v107, v479, &qword_10060EAB0);
  v121 = v120 + *(v480 + 36);
  *v121 = v110;
  *(v121 + 8) = v113;
  *(v121 + 16) = v115;
  *(v121 + 24) = v117;
  *(v121 + 32) = v119;
  *(v121 + 40) = 0;
  sub_100025B04(v120, v488, &qword_10060EAB8);
  v122 = v462;
  v123 = v462[9];
  v124 = *(v96 + v123);
  *v499 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v96 + v123));
  v478 = sub_1004B9D84();
  v477 = v125;
  v127 = v126;
  v479 = v128;
  v480 = swift_getKeyPath();
  v474 = v127 & 1;
  v499[0] = v127 & 1;
  v129 = swift_getKeyPath();
  v481 = v105;

  v130 = sub_1004BA2E4();
  v131 = swift_getKeyPath();
  v471 = sub_1004B9974();
  sub_1004B86C4();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v499[0] = 0;
  v472 = sub_1004B9984();
  if (qword_100609CD0 != -1)
  {
    swift_once();
  }

  v473 = v131;
  sub_1004B86C4();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  if (v124)
  {
    v148 = v491;
    if (*(v96 + v122[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context();
      sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context);
      v149 = sub_1004B8834();
      v150 = _s4FlowO18ProfileEditingViewVMa(0);
      v151 = v397;
      sub_10035DBFC(v96 + v148, v397 + *(v150 + 20), type metadata accessor for Collaboration.Flow);
      *v151 = v149;
      LOBYTE(v149) = sub_1004B9984();
      sub_1004B86C4();
      v152 = v444;
      v153 = v151 + *(v444 + 36);
      *v153 = v149;
      *(v153 + 1) = v154;
      *(v153 + 2) = v155;
      *(v153 + 3) = v156;
      *(v153 + 4) = v157;
      v153[40] = 0;
      sub_100025B04(v151, v490, &qword_10060EAA0);
      v158 = v152;
      v159 = 0;
      goto LABEL_16;
    }

    v159 = 1;
  }

  else
  {
    v159 = 1;
    v148 = v491;
  }

  v158 = v444;
LABEL_16:
  (*(v443 + 56))(v490, v159, 1, v158);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context);
  sub_1004B8834();
  v160 = InlineProfileEditingView.Context.canValidate.getter();

  v161 = !v160;
  v162 = v464;
  sub_10035DBFC(v96 + v148, v464, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v476 = v129;
  v475 = v130;
  if (EnumCaseMultiPayload)
  {
    v427 = v143;
    v428 = v141;
    v425 = v147;
    v426 = v145;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v470) = v161;
      v198 = *(v96 + 8);
      LOBYTE(v498[0]) = *v96;
      v197 = v498[0];
      *(&v498[0] + 1) = v198;
      v199 = sub_100003ABC(&qword_10060C3C8);
      sub_1004BA444();
      v200 = v403;
      sub_1004BA544();
      v201 = sub_1004B9964();
      sub_1004B86C4();
      v203 = v202;
      v205 = v204;
      v207 = v206;
      v209 = v208;
      v210 = v200 + *(sub_100003ABC(&qword_10060EB60) + 36);
      *v210 = v201;
      *(v210 + 8) = v203;
      *(v210 + 16) = v205;
      *(v210 + 24) = v207;
      *(v210 + 32) = v209;
      *(v210 + 40) = 0;
      v211 = sub_1004B9964();
      *(v200 + *(sub_100003ABC(&qword_10060EB68) + 36)) = v211;
      v212 = (v200 + *(v401 + 36));
      v213 = *(sub_1004B8E74() + 20);
      v214 = enum case for RoundedCornerStyle.continuous(_:);
      v215 = sub_1004B92C4();
      (*(*(v215 - 8) + 104))(&v212[v213], v214, v215);
      __asm { FMOV            V0.2D, #16.0 }

      *v212 = _Q0;
      *&v212[*(sub_100003ABC(&unk_10060EC70) + 36)] = 256;
      sub_1004BA754();
      sub_1004B8E94();
      v221 = v404;
      sub_100025B04(v200, v404, &qword_10060EA88);
      v222 = (v221 + *(v402 + 36));
      v223 = v526;
      v222[4] = v525;
      v222[5] = v223;
      v222[6] = v527;
      v224 = v522;
      *v222 = v521;
      v222[1] = v224;
      v225 = v524;
      v222[2] = v523;
      v222[3] = v225;
      sub_100025B04(v221, v447, &qword_10060EA90);
      v499[0] = v197;
      *&v499[8] = v198;
      v455 = v199;
      sub_1004BA424();
      v226 = v466;
      v227 = (v466 + 16);
      v228 = v451;
      sub_1004BBDA4();
      v238 = v452;
      (*v227)(v448, v228, v452);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v239 = qword_100618C60;
      sub_1004B6DF4();
      v240 = sub_1004BBED4();
      v242 = v241;
      v462 = v139;
      v464 = v137;
      v467 = v135;
      v468 = v133;
      (*(v226 + 8))(v228, v238);
      *v499 = v240;
      *&v499[8] = v242;
      v466 = sub_1004B9D84();
      v463 = v243;
      LOBYTE(v240) = v244;
      v454 = v245;
      sub_1004BA764();
      sub_1004B8E94();
      *&v500[54] = v532;
      *&v500[70] = v533;
      *&v500[86] = v534;
      *&v500[102] = v535;
      *&v500[6] = v529;
      *&v500[22] = v530;
      v246 = v240 & 1;
      v501 = v240 & 1;
      *&v500[38] = v531;
      v452 = swift_getKeyPath();
      v247 = sub_1004B9654();
      v248 = sub_1004B9B44();
      v249 = swift_getKeyPath();
      v250 = sub_1004B9954();
      sub_1004B86C4();
      v252 = v251;
      v254 = v253;
      v256 = v255;
      v258 = v257;
      v502 = 0;
      v259 = sub_1004B9974();
      if (qword_100609CE8 != -1)
      {
        swift_once();
      }

      sub_1004B86C4();
      v261 = v260;
      v263 = v262;
      v265 = v264;
      v267 = v266;
      v503 = 0;
      v268 = sub_1004B9984();
      sub_1004B86C4();
      *&v493[98] = *&v500[64];
      *&v493[114] = *&v500[80];
      *&v493[130] = *&v500[96];
      *&v493[34] = *v500;
      *&v493[50] = *&v500[16];
      *&v493[66] = *&v500[32];
      v504 = 0;
      *v493 = v466;
      *&v493[8] = v463;
      v493[16] = v246;
      *&v493[24] = v454;
      *&v493[32] = 256;
      *&v493[82] = *&v500[48];
      *&v493[144] = *&v500[110];
      *&v493[152] = v452;
      v493[160] = 0;
      *&v493[164] = v247;
      *&v493[168] = v249;
      *&v493[176] = v248;
      v493[184] = v250;
      *&v493[192] = v252;
      *&v493[200] = v254;
      *&v493[208] = v256;
      *&v493[216] = v258;
      v493[224] = 0;
      v493[232] = v259;
      *&v493[240] = v261;
      *&v493[248] = v263;
      *&v493[256] = v265;
      *&v493[264] = v267;
      v493[272] = 0;
      *&v493[273] = v505;
      *&v493[276] = *(&v505 + 3);
      v493[280] = v268;
      *&v493[281] = v546;
      *&v493[284] = *(&v546 + 3);
      *&v493[288] = v269;
      *&v493[296] = v270;
      *&v493[304] = v271;
      *&v493[312] = v272;
      v493[320] = 0;
      v273 = v487;
      v274 = Collaboration.Flow.buttonActionTitle.getter();
      v276 = v275;
      v277 = v469;
      sub_10035DBFC(v273, v469, type metadata accessor for Collaboration.Flow.View);
      v278 = (*(v453 + 80) + 16) & ~*(v453 + 80);
      v279 = swift_allocObject();
      sub_10035C6E4(v277, v279 + v278, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v498[0]) = 0;
      sub_1004BA414();
      v280 = v499[0];
      v281 = *&v499[8];
      v282 = swift_getKeyPath();
      v494 = 0;
      v283 = swift_getKeyPath();
      v284 = swift_allocObject();
      *(v284 + 16) = v470 & 1;
      *v499 = v274;
      *&v499[8] = v276;
      v499[16] = 0;
      *&v499[17] = v497[0];
      *&v499[20] = *(v497 + 3);
      *&v499[24] = sub_10035E6A0;
      *&v499[32] = v279;
      v499[40] = v280;
      *&v499[41] = v496[0];
      *&v499[44] = *(v496 + 3);
      *&v499[48] = v281;
      *&v499[56] = v282;
      v499[64] = v494;
      *&v499[65] = *v495;
      *&v499[68] = *&v495[3];
      *&v499[72] = v283;
      *&v499[80] = sub_10035FDD8;
      *&v499[88] = v284;
      v285 = *(v273 + 24);
      LOBYTE(v492[0]) = *(v273 + 16);
      *(&v492[0] + 1) = v285;
      v286 = sub_1004BA444();
      v470 = &v396;
      LODWORD(v469) = LOBYTE(v498[1]);
      __chkstk_darwin(v286);
      v487 = sub_100003ABC(&qword_10060EB38);
      v491 = sub_10035E200();
      v287 = v438;
      sub_1004BA074();

      v515 = *&v499[32];
      v516 = *&v499[48];
      v517 = *&v499[64];
      v518 = *&v499[80];
      v513 = *v499;
      v514 = *&v499[16];
      sub_100007214(&v513, &qword_10060EB38);
      v288 = v420;
      sub_10000F778(v447, v420, &qword_10060EA90);
      memcpy(v492, v493, 0x141uLL);
      v289 = *(v465 + 16);
      v290 = v421;
      v289(v421, v287, v449);
      v291 = v422;
      sub_10000F778(v288, v422, &qword_10060EA90);
      v292 = sub_100003ABC(&qword_10060EB70);
      v293 = *(v292 + 48);
      memcpy(v498, v492, 0x141uLL);
      memcpy((v291 + v293), v492, 0x141uLL);
      v294 = v449;
      v289((v291 + *(v292 + 64)), v290, v449);
      sub_10000F778(v493, v499, &qword_10060EB78);
      sub_10000F778(v498, v499, &qword_10060EB78);
      v470 = *(v465 + 8);
      v465 += 8;
      (v470)(v290, v294);
      memcpy(v499, v492, sizeof(v499));
      sub_100007214(v499, &qword_10060EB78);
      sub_100007214(v288, &qword_10060EA90);
      sub_10000F778(v291, v441, &qword_10060EA78);
      swift_storeEnumTagMultiPayload();
      sub_1000206D4(&qword_10060EB28, &qword_10060EA78);
      v295 = v442;
      sub_1004B9514();
      sub_10000F778(v295, v459, &qword_10060EA70);
      swift_storeEnumTagMultiPayload();
      sub_10035E148();
      sub_1000206D4(&qword_10060EB48, &qword_10060EA50);
      sub_1004B9514();
      sub_100007214(v493, &qword_10060EB78);
      sub_100007214(v295, &qword_10060EA70);
      sub_100007214(v291, &qword_10060EA78);
      (v470)(v438, v449);
      sub_100007214(v447, &qword_10060EA90);
      v133 = v468;
      v135 = v467;
      v137 = v464;
      v139 = v462;
      goto LABEL_41;
    }

    v164 = *(v454 + 32);
    v491 = v454 + 32;
    v470 = v164;
    (v164)(v467, v162, v468);
    v165 = v445;
    sub_10033FAA0(v445);
    v166 = sub_1004BB774();
    v168 = v167;
    if (qword_100609CC8 != -1)
    {
      swift_once();
    }

    (*(v433 + 104))(v446, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v435);
    v169 = swift_allocObject();
    *(v169 + 16) = v166;
    *(v169 + 24) = v168;
    v170 = v407;
    sub_10000F778(v165, v407, &qword_10060EF20);
    v171 = type metadata accessor for ArtworkImage.ViewModel(0);
    v464 = *(*(v171 - 8) + 48);
    v172 = (v464)(v170, 1, v171);
    v173 = v417;
    v174 = v409;
    v465 = v169;
    if (v172 == 1)
    {
      sub_100007214(v170, &qword_10060EF20);
      v175 = sub_1004BB6C4();
      (*(*(v175 - 8) + 56))(v174, 1, 1, v175);
    }

    else
    {
      v229 = sub_1004BB6C4();
      v230 = *(v229 - 8);
      (*(v230 + 16))(v174, v170, v229);
      sub_10035C664(v170, type metadata accessor for ArtworkImage.ViewModel);
      (*(v230 + 56))(v174, 0, 1, v229);
    }

    sub_10000F778(v174, v410, &unk_10060EBE0);
    sub_1004B7D54();
    sub_100007214(v174, &unk_10060EBE0);
    sub_1004B7D34();
    v231 = v408;
    sub_10000F778(v445, v408, &qword_10060EF20);
    if ((v464)(v231, 1, v171) == 1)
    {
      sub_100007214(v231, &qword_10060EF20);
      v232 = v399;
      v233 = v400;
      (*(v173 + 56))(v399, 1, 1, v400);
      v234 = v398;
    }

    else
    {
      v232 = v399;
      sub_10000F778(v231 + *(v171 + 20), v399, &qword_10060DD10);
      sub_10035C664(v231, type metadata accessor for ArtworkImage.ViewModel);
      v233 = v400;
      v235 = (*(v173 + 48))(v232, 1, v400);
      v234 = v398;
      if (v235 != 1)
      {
        v237 = v416;
        (*(v173 + 32))(v416, v232, v233);
LABEL_38:
        v296 = v432;
        sub_1004B7D14();
        (*(v173 + 8))(v237, v233);
        v297 = v419;
        v298 = *(v418 + 8);
        v298(v296, v419);
        v299 = v415;
        sub_1004B7D44();
        v298(v234, v297);
        sub_100316C80();
        v300 = v414;
        sub_1004B7D24();

        v298(v299, v297);
        v298(v434, v297);
        (*(v433 + 8))(v446, v435);
        sub_100007214(v445, &qword_10060EF20);
        sub_1004BA754();
        sub_1004B8994();
        v301 = (v300 + *(sub_100003ABC(&unk_10060EF30) + 36));
        v302 = v547;
        *v301 = v546;
        v301[1] = v302;
        v301[2] = v548;
        *(v300 + *(v412 + 36)) = 256;
        LOBYTE(v296) = sub_1004B9974();
        sub_1004B86C4();
        v304 = v303;
        v306 = v305;
        v308 = v307;
        v310 = v309;
        v311 = v411;
        sub_100025B04(v300, v411, &qword_10060EA58);
        v312 = v311 + *(v413 + 36);
        *v312 = v296;
        *(v312 + 8) = v304;
        *(v312 + 16) = v306;
        *(v312 + 24) = v308;
        *(v312 + 32) = v310;
        *(v312 + 40) = 0;
        sub_100025B04(v311, v455, &qword_10060EF40);
        v313 = v451;
        sub_1004BBDA4();
        v314 = v466;
        v315 = *(v466 + 16);
        v316 = v452;
        v465 = v466 + 16;
        v464 = v315;
        v315();
        if (qword_100609A20 != -1)
        {
          swift_once();
        }

        v317 = qword_100618C60;
        v318 = qword_100618C60;
        v463 = v317;
        v319 = v318;
        sub_1004B6DF4();
        v320 = v319;
        v321 = sub_1004BBED4();
        v442 = v322;
        v443 = v321;
        v323 = *(v314 + 8);
        v466 = v314 + 8;
        v462 = v323;
        (v323)(v313, v316);
        v449 = type metadata accessor for Collaboration.Flow.View;
        v324 = v469;
        sub_10035DBFC(v96, v469, type metadata accessor for Collaboration.Flow.View);
        v325 = v454;
        v326 = *(v454 + 16);
        v446 = (v454 + 16);
        v447 = v326;
        v327 = v437;
        v328 = v468;
        v326(v437, v467, v468);
        v329 = *(v453 + 80);
        v330 = *(v325 + 80);
        v331 = (v329 + 16) & ~v329;
        v453 = v331;
        v332 = (v456 + v330 + v331) & ~v330;
        v456 = v329 | v330;
        v333 = v332;
        v444 = v332;
        v334 = swift_allocObject();
        v445 = type metadata accessor for Collaboration.Flow.View;
        sub_10035C6E4(v324, v334 + v331, type metadata accessor for Collaboration.Flow.View);
        (v470)(v334 + v333, v327, v328);
        LOBYTE(v498[0]) = 0;
        sub_1004BA414();
        LOBYTE(v327) = v499[0];
        v335 = *&v499[8];
        v336 = swift_getKeyPath();
        LOBYTE(v496[0]) = 0;
        v337 = sub_1004B9974();
        v338 = v448;
        v339 = v337;
        sub_1004B86C4();
        v493[0] = 0;
        *&v521 = v443;
        *(&v521 + 1) = v442;
        LOBYTE(v522) = 0;
        *(&v522 + 1) = sub_10035DC70;
        *&v523 = v334;
        BYTE8(v523) = v327;
        *&v524 = v335;
        *(&v524 + 1) = v336;
        LOBYTE(v525) = v496[0];
        *(&v525 + 1) = *v499;
        DWORD1(v525) = *&v499[3];
        BYTE8(v525) = v339;
        HIDWORD(v525) = *(v498 + 3);
        *(&v525 + 9) = v498[0];
        *&v526 = v340;
        *(&v526 + 1) = v341;
        *&v527 = v342;
        *(&v527 + 1) = v343;
        v528 = 0;
        v344 = v451;
        sub_1004BBDA4();
        v345 = v452;
        (v464)(v338, v344, v452);
        sub_1004B6DF4();
        v465 = sub_1004BBED4();
        v464 = v346;
        (v462)(v344, v345);
        v347 = v469;
        sub_10035DBFC(v487, v469, v449);
        v348 = v437;
        v349 = v468;
        v447(v437, v467, v468);
        v350 = v444;
        v351 = swift_allocObject();
        sub_10035C6E4(v347, v351 + v453, v445);
        (v470)(v351 + v350, v348, v349);
        LOBYTE(v498[0]) = 0;
        sub_1004BA414();
        LOBYTE(v348) = v499[0];
        v352 = *&v499[8];
        v353 = swift_getKeyPath();
        LOBYTE(v497[0]) = 0;
        LOBYTE(v347) = sub_1004B9974();
        sub_1004B86C4();
        v493[0] = 0;
        *&v529 = v465;
        *(&v529 + 1) = v464;
        LOBYTE(v530) = 1;
        *(&v530 + 1) = sub_10035E008;
        *&v531 = v351;
        BYTE8(v531) = v348;
        *&v532 = v352;
        *(&v532 + 1) = v353;
        LOBYTE(v533) = v497[0];
        *(&v533 + 1) = *v499;
        DWORD1(v533) = *&v499[3];
        BYTE8(v533) = v347;
        HIDWORD(v533) = *(v498 + 3);
        *(&v533 + 9) = v498[0];
        *&v534 = v354;
        *(&v534 + 1) = v355;
        *&v535 = v356;
        *(&v535 + 1) = v357;
        v536 = 0;
        v358 = v423;
        sub_10000F778(v455, v423, &qword_10060EF40);
        v517 = v525;
        v518 = v526;
        v519 = v527;
        v513 = v521;
        v514 = v522;
        v515 = v523;
        v516 = v524;
        v509 = v533;
        v510 = v534;
        v511 = v535;
        v505 = v529;
        v506 = v530;
        v507 = v531;
        v520 = v528;
        v512 = v536;
        v508 = v532;
        v359 = v424;
        sub_10000F778(v358, v424, &qword_10060EF40);
        v360 = sub_100003ABC(&qword_10060EB10);
        v361 = v359 + *(v360 + 48);
        v362 = v520;
        LOBYTE(v492[7]) = v520;
        v364 = v518;
        v492[4] = v517;
        v363 = v517;
        v492[5] = v518;
        v492[6] = v519;
        v365 = v519;
        v367 = v514;
        v492[0] = v513;
        v366 = v513;
        v492[1] = v514;
        v368 = v516;
        v492[2] = v515;
        v492[3] = v516;
        *(v361 + 32) = v515;
        *(v361 + 48) = v368;
        *v361 = v366;
        *(v361 + 16) = v367;
        *(v361 + 112) = v362;
        *(v361 + 80) = v364;
        *(v361 + 96) = v365;
        *(v361 + 64) = v363;
        v369 = v359 + *(v360 + 64);
        *&v493[32] = v507;
        *&v493[48] = v508;
        *v493 = v505;
        *&v493[16] = v506;
        *&v493[64] = v509;
        *&v493[80] = v510;
        *&v493[96] = v511;
        v493[112] = v512;
        v370 = v509;
        v371 = v510;
        *(v369 + 64) = v509;
        *(v369 + 80) = v371;
        v372 = v511;
        *(v369 + 96) = v511;
        v373 = v512;
        *(v369 + 112) = v512;
        v374 = v505;
        v375 = v506;
        *v369 = v505;
        *(v369 + 16) = v375;
        v376 = v507;
        v377 = v508;
        *(v369 + 32) = v507;
        *(v369 + 48) = v377;
        v498[0] = v374;
        v498[1] = v375;
        v498[2] = v376;
        v498[3] = v377;
        v498[4] = v370;
        v498[5] = v371;
        v498[6] = v372;
        LOBYTE(v498[7]) = v373;
        sub_10000F778(&v521, v499, &qword_10060EB18);
        sub_10000F778(&v529, v499, &qword_10060EB18);
        sub_10000F778(v492, v499, &qword_10060EB18);
        sub_10000F778(v493, v499, &qword_10060EB18);
        sub_100007214(v498, &qword_10060EB18);
        *&v499[64] = v517;
        *&v499[80] = v518;
        *&v499[96] = v519;
        v499[112] = v520;
        *v499 = v513;
        *&v499[16] = v514;
        *&v499[32] = v515;
        *&v499[48] = v516;
        sub_100007214(v499, &qword_10060EB18);
        sub_100007214(v358, &qword_10060EF40);
        sub_10000F778(v359, v459, &qword_10060EA50);
        swift_storeEnumTagMultiPayload();
        sub_10035E148();
        sub_1000206D4(&qword_10060EB48, &qword_10060EA50);
        sub_1004B9514();
        sub_100007214(&v529, &qword_10060EB18);
        sub_100007214(&v521, &qword_10060EB18);
        sub_100007214(v359, &qword_10060EA50);
        sub_100007214(v455, &qword_10060EF40);
        (*(v454 + 8))(v467, v468);
LABEL_41:
        v143 = v427;
        v141 = v428;
        v147 = v425;
        v145 = v426;
        goto LABEL_42;
      }
    }

    if (qword_100609C08 != -1)
    {
      swift_once();
    }

    v236 = sub_100007084(v233, static Artwork.CropStyle.fallback);
    v237 = v416;
    (*(v173 + 16))(v416, v236, v233);
    if ((*(v173 + 48))(v232, 1, v233) != 1)
    {
      sub_100007214(v232, &qword_10060DD10);
    }

    goto LABEL_38;
  }

  v176 = sub_100003ABC(&qword_10060E678);
  v177 = v429;
  v178 = v430;
  v179 = *(v430 + 32);
  v180 = v431;
  v179(v429, v162 + *(v176 + 48), v431);
  LODWORD(v470) = v161;
  v491 = Collaboration.Flow.buttonActionTitle.getter();
  v468 = v181;
  v182 = v469;
  sub_10035DBFC(v96, v469, type metadata accessor for Collaboration.Flow.View);
  v183 = v406;
  v184 = v180;
  (*(v178 + 16))(v406, v177, v180);
  v185 = (*(v453 + 80) + 16) & ~*(v453 + 80);
  v186 = (v456 + *(v178 + 80) + v185) & ~*(v178 + 80);
  v187 = swift_allocObject();
  sub_10035C6E4(v182, v187 + v185, type metadata accessor for Collaboration.Flow.View);
  v179((v187 + v186), v183, v184);
  LOBYTE(v498[0]) = 0;
  sub_1004BA414();
  LOBYTE(v185) = v499[0];
  v188 = *&v499[8];
  v189 = swift_getKeyPath();
  v493[0] = 0;
  v190 = swift_getKeyPath();
  v191 = swift_allocObject();
  *(v191 + 16) = v470 & 1;
  *v499 = v491;
  *&v499[8] = v468;
  v499[16] = 0;
  *&v499[24] = sub_10035E654;
  *&v499[32] = v187;
  v499[40] = v185;
  *&v499[48] = v188;
  *&v499[56] = v189;
  v499[64] = v493[0];
  *&v499[65] = v498[0];
  *&v499[68] = *(v498 + 3);
  *&v499[72] = v190;
  *&v499[80] = sub_10035FDD8;
  *&v499[88] = v191;
  v192 = *&v499[48];
  v193 = v441;
  v441[2] = *&v499[32];
  v193[3] = v192;
  v194 = *&v499[80];
  v193[4] = *&v499[64];
  v193[5] = v194;
  v195 = *&v499[16];
  *v193 = *v499;
  v193[1] = v195;
  swift_storeEnumTagMultiPayload();
  sub_10000F778(v499, v498, &qword_10060EB38);
  sub_100003ABC(&qword_10060EB38);
  sub_1000206D4(&qword_10060EB28, &qword_10060EA78);
  sub_10035E200();
  v196 = v442;
  sub_1004B9514();
  sub_10000F778(v196, v459, &qword_10060EA70);
  swift_storeEnumTagMultiPayload();
  sub_10035E148();
  sub_1000206D4(&qword_10060EB48, &qword_10060EA50);
  sub_1004B9514();
  sub_100007214(v499, &qword_10060EB38);
  sub_100007214(v196, &qword_10060EA70);
  (*(v430 + 8))(v429, v431);
  sub_100007214(v464, &qword_10060E680);
LABEL_42:
  v378 = v482;
  sub_10000F778(v486, v482, &qword_10060EAC8);
  v379 = v484;
  sub_10000F778(v488, v484, &qword_10060EAB8);
  sub_10000F778(v490, v483, &qword_10060EAA8);
  sub_10000F778(v489, v485, &qword_10060EA98);
  v380 = v378;
  v381 = v461;
  sub_10000F778(v380, v461, &qword_10060EAC8);
  v382 = sub_100003ABC(&qword_10060EB50);
  sub_10000F778(v379, v381 + v382[12], &qword_10060EAB8);
  v383 = v381 + v382[16];
  *&v498[0] = v478;
  *(&v498[0] + 1) = v477;
  LOBYTE(v498[1]) = v474;
  *(&v498[1] + 1) = *v541;
  DWORD1(v498[1]) = *&v541[3];
  *(&v498[1] + 1) = v479;
  LOWORD(v498[2]) = 256;
  *(&v498[2] + 2) = v539;
  WORD3(v498[2]) = v540;
  *(&v498[2] + 1) = v480;
  *&v498[3] = v481;
  *(&v498[3] + 1) = v476;
  LOBYTE(v498[4]) = 1;
  *(&v498[4] + 1) = *v538;
  DWORD1(v498[4]) = *&v538[3];
  *(&v498[4] + 1) = v473;
  *&v498[5] = v475;
  BYTE8(v498[5]) = v471;
  *(&v498[5] + 9) = *v537;
  HIDWORD(v498[5]) = *&v537[3];
  *&v498[6] = v133;
  *(&v498[6] + 1) = v135;
  *&v498[7] = v137;
  *(&v498[7] + 1) = v139;
  LOBYTE(v498[8]) = 0;
  DWORD1(v498[8]) = *&v543[3];
  *(&v498[8] + 1) = *v543;
  BYTE8(v498[8]) = v472;
  HIDWORD(v498[8]) = *&v542[3];
  *(&v498[8] + 9) = *v542;
  *&v498[9] = v141;
  *(&v498[9] + 1) = v143;
  *&v498[10] = v145;
  *(&v498[10] + 1) = v147;
  LOBYTE(v498[11]) = 0;
  v384 = v498[8];
  v385 = v498[9];
  v386 = v498[10];
  *(v383 + 176) = 0;
  *(v383 + 144) = v385;
  *(v383 + 160) = v386;
  v387 = v498[0];
  v388 = v498[1];
  v389 = v498[3];
  *(v383 + 32) = v498[2];
  *(v383 + 48) = v389;
  *v383 = v387;
  *(v383 + 16) = v388;
  v390 = v498[4];
  v391 = v498[5];
  v392 = v498[6];
  *(v383 + 112) = v498[7];
  *(v383 + 128) = v384;
  *(v383 + 80) = v391;
  *(v383 + 96) = v392;
  *(v383 + 64) = v390;
  v393 = v483;
  sub_10000F778(v483, v381 + v382[20], &qword_10060EAA8);
  v394 = v485;
  sub_10000F778(v485, v381 + v382[24], &qword_10060EA98);
  sub_10000F778(v498, v499, &qword_10060EB58);
  sub_100007214(v489, &qword_10060EA98);
  sub_100007214(v490, &qword_10060EAA8);
  sub_100007214(v488, &qword_10060EAB8);
  sub_100007214(v486, &qword_10060EAC8);
  sub_100007214(v394, &qword_10060EA98);
  sub_100007214(v393, &qword_10060EAA8);
  *v499 = v478;
  *&v499[8] = v477;
  v499[16] = v474;
  *&v499[17] = *v541;
  *&v499[20] = *&v541[3];
  *&v499[24] = v479;
  *&v499[32] = 256;
  *&v499[34] = v539;
  *&v499[38] = v540;
  *&v499[40] = v480;
  *&v499[48] = v481;
  *&v499[56] = v476;
  v499[64] = 1;
  *&v499[68] = *&v538[3];
  *&v499[65] = *v538;
  *&v499[72] = v473;
  *&v499[80] = v475;
  v499[88] = v471;
  *&v499[92] = *&v537[3];
  *&v499[89] = *v537;
  *&v499[96] = v133;
  *&v499[104] = v135;
  *&v499[112] = v137;
  *&v499[120] = v139;
  v499[128] = 0;
  *&v499[129] = *v543;
  *&v499[132] = *&v543[3];
  v499[136] = v472;
  *&v499[140] = *&v542[3];
  *&v499[137] = *v542;
  *&v499[144] = v141;
  *&v499[152] = v143;
  *&v499[160] = v145;
  *&v499[168] = v147;
  v499[176] = 0;
  sub_100007214(v499, &qword_10060EB58);
  sub_100007214(v484, &qword_10060EAB8);
  return sub_100007214(v482, &qword_10060EAC8);
}

uint64_t sub_100356024@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_1004BBDA4();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v10 = qword_100618C60;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_1002C4D1C();
  result = sub_1004B9D84();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100356234(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Collaboration.Flow.View(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1004BC4B4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10035DBFC(a2, v6, type metadata accessor for Collaboration.Flow.View);
  sub_1004BC474();
  v11 = sub_1004BC464();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10035C6E4(v6, v13 + v12, type metadata accessor for Collaboration.Flow.View);
  sub_1002E0EEC(0, 0, v9, &unk_1004E23B0, v13);
}

uint64_t sub_100356414()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002681F4;

  return sub_1003564C4(0);
}

uint64_t sub_1003564C4(char a1)
{
  v2[10] = v1;
  v2[11] = sub_100003ABC(&qword_10060EB80);
  v2[12] = swift_task_alloc();
  v4 = sub_1004BBA84();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = sub_1004BC474();
  v2[17] = sub_1004BC464();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_10035669C;

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = sub_100356A5C;

    return Playlist.hasUnsupportedContent.getter();
  }
}

uint64_t sub_10035669C()
{
  *(*v1 + 152) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_10035749C;
  }

  else
  {
    v4 = sub_1003567F4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1003567F4()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context);
    v4 = sub_1004B8834();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_100356FC8;

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    sub_100003ABC(&qword_10060C3C8);
    sub_1004BA424();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_10035720C;
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

uint64_t sub_100356A5C(char a1)
{
  *(*v1 + 35) = a1;

  v3 = sub_1004BC3E4();

  return _swift_task_switch(sub_100356BA0, v3, v2);
}

uint64_t sub_100356BA0()
{
  if (*(v0 + 35) == 1)
  {

    sub_10035EA78();
    v1 = swift_allocError();
    *v2 = xmmword_1004D9C10;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_10060F8C0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        sub_100003ABC(&qword_10060C3C8);
        sub_1004BA434();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      sub_10035EBBC(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    sub_100007214(v19, &qword_10060EB80);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context);
    v11 = sub_1004B8834();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_100356FC8;

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    sub_100003ABC(&qword_10060C3C8);
    sub_1004BA424();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_10035720C;
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

uint64_t sub_100356FC8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1004BC3E4();
    v4 = v3;
    v5 = sub_10035764C;
  }

  else
  {

    v2 = sub_1004BC3E4();
    v4 = v6;
    v5 = sub_100357118;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_100357118()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA424();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_10035720C;
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

uint64_t sub_10035720C()
{
  *(*v1 + 208) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_100357808;
  }

  else
  {
    v4 = sub_100357364;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100357364()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  sub_100007214(v5, &qword_10060EB80);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10035749C()
{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_10060F8C0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100003ABC(&qword_10060C3C8);
      sub_1004BA434();

      goto LABEL_8;
    }

    sub_10035EBBC(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_100007214(v7, &qword_10060EB80);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10035764C()
{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_10060F8C0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100003ABC(&qword_10060C3C8);
      sub_1004BA434();

      goto LABEL_8;
    }

    sub_10035EBBC(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_100007214(v7, &qword_10060EB80);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100357808()
{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_10060F8C0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100003ABC(&qword_10060C3C8);
      sub_1004BA434();

      goto LABEL_8;
    }

    sub_10035EBBC(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_100007214(v7, &qword_10060EB80);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003579B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v65 = a2;
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v61 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v62 = v3;
  v64 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BA214();
  __chkstk_darwin(v4 - 8);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v49 - v7;
  v8 = sub_1004B6E64();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1004BBE14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  sub_1004BBDA4();
  v52 = *(v10 + 16);
  v51 = v10 + 16;
  v52(v12, v15, v9);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v16 = qword_100618C60;
  v17 = qword_100618C60;
  v66 = v16;
  v18 = v17;
  sub_1004B6DF4();
  v19 = v18;
  v20 = sub_1004BBED4();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v50 = v23;
  v69 = v20;
  v70 = v22;
  v49 = sub_1002C4D1C();
  v24 = sub_1004B9D84();
  v59 = v25;
  v60 = v24;
  v57 = v26;
  v58 = v27;
  sub_1004BBDA4();
  v28 = v52;
  v52(v12, v15, v9);
  sub_1004B6DF4();
  v29 = sub_1004BBED4();
  v31 = v30;
  v23(v15, v9);
  v69 = v29;
  v70 = v31;
  v32 = sub_1004B9D84();
  v55 = v33;
  v56 = v32;
  v53 = v34 & 1;
  v54 = v35;
  sub_1004BBDA4();
  v28(v12, v15, v9);
  sub_1004B6DF4();
  v36 = sub_1004BBED4();
  v38 = v37;
  v50(v15, v9);
  v69 = v36;
  v70 = v38;
  v39 = sub_1004B9D84();
  v41 = v40;
  v43 = v42;
  v66 = type metadata accessor for Collaboration.Flow.View;
  v44 = v64;
  sub_10035DBFC(v68, v64, type metadata accessor for Collaboration.Flow.View);
  v45 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v46 = swift_allocObject();
  sub_10035C6E4(v44, v46 + v45, type metadata accessor for Collaboration.Flow.View);
  sub_1004BA204();
  sub_10002FA24(v39, v41, v43 & 1);

  sub_10035DBFC(v68, v44, v66);
  v47 = swift_allocObject();
  sub_10035C6E4(v44, v47 + v45, type metadata accessor for Collaboration.Flow.View);
  sub_1004BA1F4();

  return sub_1004BA1D4();
}

uint64_t sub_100357FAC(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1004BC4B4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10035DBFC(a1, v5, type metadata accessor for Collaboration.Flow.View);
  sub_1004BC474();
  v10 = sub_1004BC464();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10035C6E4(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  sub_1002E0EEC(0, 0, v8, &unk_1004E2390, v12);
}

uint64_t sub_10035818C()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100268008;

  return sub_1003564C4(1);
}

uint64_t sub_10035823C(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060EB80);
  __chkstk_darwin(v2);
  v4 = (&v9 - v3);
  v5 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  sub_10035EA78();
  v6 = swift_allocError();
  *v7 = xmmword_1004D9C10;
  *(v7 + 16) = 3;
  *v4 = v6;
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return sub_100007214(v4, &qword_10060EB80);
}

uint64_t sub_100358340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100003ABC(&qword_10060EB80);
  v5[5] = swift_task_alloc();
  sub_1004BC474();
  v5[6] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100358414, v7, v6);
}

uint64_t sub_100358414()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context);
    v4 = sub_1004B8834();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_10035863C;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_10035880C;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_10035863C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100358A44;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100358758;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100358758()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10035880C;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_10035880C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100358B28;
  }

  else
  {
    v5 = sub_100358948;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100358948()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = sub_1004BBA84();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_100007214(v2, &qword_10060EB80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100358A44()
{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_100007214(v3, &qword_10060EB80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100358B28()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_100007214(v3, &qword_10060EB80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100358C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100003ABC(&qword_10060EB80);
  v5[5] = swift_task_alloc();
  sub_1004BC474();
  v5[6] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100358CD8, v7, v6);
}

uint64_t sub_100358CD8()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100358D94;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_100358D94()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100358ED0;
  }

  else
  {
    v5 = sub_10035FDD4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100358ED0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_100007214(v3, &qword_10060EB80);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100358FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Collaboration.Flow.View(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_1004BC4B4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_10035DBFC(a2, v15, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  sub_1004BC474();
  v20 = sub_1004BC464();
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = &protocol witness table for MainActor;
  sub_10035C6E4(v15, v23 + v21, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v23 + v22, v11, v8);
  sub_1002E0EEC(0, 0, v18, v26, v23);
}

uint64_t sub_100359260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100003ABC(&qword_10060EB80);
  v5[5] = swift_task_alloc();
  sub_1004BC474();
  v5[6] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100359334, v7, v6);
}

uint64_t sub_100359334()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1003593F0;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_1003593F0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10035FDD0;
  }

  else
  {
    v5 = sub_10035FDD4;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  sub_10035FA30();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    sub_1004B69B4();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_100359644()
{
  type metadata accessor for InlineProfileEditingView.Context();
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_1003596A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100003ABC(&qword_10060E4B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_1004BA324();
  sub_1004B9374();
  v5 = sub_1004B9384();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_1004BA354();

  sub_100007214(v4, &qword_10060E4B8);
  v7 = sub_1004BA234();
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_1003597E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v140 = a1;
  v2 = sub_1004B9B04();
  v135 = *(v2 - 8);
  v136 = v2;
  __chkstk_darwin(v2);
  v134 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BBE14();
  v133 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v117 - v11;
  v120 = sub_100003ABC(&qword_10060E9E8);
  __chkstk_darwin(v120);
  v14 = &v117 - v13;
  v121 = sub_100003ABC(&qword_10060E9F0);
  __chkstk_darwin(v121);
  v124 = &v117 - v15;
  v16 = sub_100003ABC(&qword_10060E9F8);
  v131 = *(v16 - 8);
  v132 = v16;
  __chkstk_darwin(v16);
  v122 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v123 = &v117 - v19;
  v20 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v20);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100003ABC(&qword_10060EA00);
  __chkstk_darwin(v23 - 8);
  v138 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v117 - v26;
  v28 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v130 = v20;
  swift_storeEnumTagMultiPayload();
  v129 = v28;
  LOBYTE(v28) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v140 + v28, v22);
  sub_10035C664(v22, type metadata accessor for Collaboration.Flow);
  v137 = v27;
  v127 = v6;
  v128 = v7;
  v125 = v9;
  v126 = v12;
  if (v28)
  {
    v29 = 1;
    v30 = v132;
  }

  else
  {
    sub_1004BBDA4();
    v31 = v133;
    (*(v133 + 16))(v9, v12, v7);
    v32 = v31;
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v33 = qword_100618C60;
    sub_1004B6DF4();
    v34 = sub_1004BBED4();
    v36 = v35;
    (*(v32 + 8))(v12, v7);
    *&v163 = v34;
    *(&v163 + 1) = v36;
    sub_1002C4D1C();
    v37 = sub_1004B9D84();
    v118 = v38;
    v119 = v39;
    v41 = v40;
    v42 = &v14[*(sub_100003ABC(&qword_10060EA08) + 36)];
    v43 = *(sub_100003ABC(&qword_10060EA10) + 28);
    v44 = enum case for Text.Case.uppercase(_:);
    v45 = sub_1004B9CC4();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v42 + v43, v44, v45);
    (*(v46 + 56))(v42 + v43, 0, 1, v45);
    *v42 = swift_getKeyPath();
    v47 = v118;
    *v14 = v37;
    *(v14 + 1) = v47;
    v14[16] = v41 & 1;
    *(v14 + 3) = v119;
    v48 = sub_1004B9B44();
    KeyPath = swift_getKeyPath();
    v50 = &v14[*(sub_100003ABC(&qword_10060EA18) + 36)];
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = sub_1004BA2E4();
    v52 = swift_getKeyPath();
    v53 = &v14[*(v120 + 36)];
    *v53 = v52;
    v53[1] = v51;
    sub_1004BA764();
    sub_1004B8E94();
    v54 = v124;
    sub_100025B04(v14, v124, &qword_10060E9E8);
    v55 = (v54 + *(v121 + 36));
    v56 = v177;
    v55[4] = v176;
    v55[5] = v56;
    v55[6] = v178;
    v57 = v173;
    *v55 = v172;
    v55[1] = v57;
    v58 = v175;
    v55[2] = v174;
    v55[3] = v58;
    LOBYTE(v51) = sub_1004B9954();
    sub_1004B86C4();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v122;
    sub_100025B04(v54, v122, &qword_10060E9F0);
    v30 = v132;
    v68 = v67 + *(v132 + 36);
    *v68 = v51;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = v67;
    v70 = v123;
    sub_100025B04(v69, v123, &qword_10060E9F8);
    v27 = v137;
    sub_100025B04(v70, v137, &qword_10060E9F8);
    v29 = 0;
  }

  v72 = v135;
  v71 = v136;
  v73 = v134;
  (*(v131 + 56))(v27, v29, 1, v30);
  v74 = v140;

  sub_1003658D8(&v179);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v74) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v74 + v129, v22);
  sub_10035C664(v22, type metadata accessor for Collaboration.Flow);
  if (v74)
  {
    sub_10035D94C(&v163);
  }

  else
  {
    v75 = v126;
    sub_1004BBDA4();
    v76 = v133;
    v77 = v128;
    (*(v133 + 16))(v125, v75, v128);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v78 = qword_100618C60;
    sub_1004B6DF4();
    v79 = sub_1004BBED4();
    v81 = v80;
    (*(v76 + 8))(v75, v77);
    *&v163 = v79;
    *(&v163 + 1) = v81;
    sub_1002C4D1C();
    v140 = sub_1004B9D84();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = swift_getKeyPath();
    LOBYTE(v79) = v85 & 1;
    LOBYTE(v163) = v85 & 1;
    sub_1004B9B44();
    (*(v72 + 104))(v73, enum case for Font.Leading.tight(_:), v71);
    v89 = sub_1004B9B34();

    (*(v72 + 8))(v73, v71);
    v90 = swift_getKeyPath();
    v91 = sub_1004BA2E4();
    v92 = swift_getKeyPath();
    v93 = sub_1004B9954();
    sub_1004B86C4();
    LOBYTE(v163) = 0;
    *&v154 = v140;
    *(&v154 + 1) = v83;
    LOBYTE(v155) = v79;
    *(&v155 + 1) = v87;
    LOWORD(v156) = 256;
    *(&v156 + 1) = v88;
    LOBYTE(v157) = 1;
    *(&v157 + 1) = v90;
    *&v158 = v89;
    *(&v158 + 1) = v92;
    *&v159 = v91;
    BYTE8(v159) = v93;
    *&v160 = v94;
    *(&v160 + 1) = v95;
    *&v161 = v96;
    *(&v161 + 1) = v97;
    v162 = 0;
    v98.location = &v154;
    CFRange.init(_:)(v98);
    v169 = v160;
    v170 = v161;
    v171 = v162;
    v165 = v156;
    v166 = v157;
    v167 = v158;
    v168 = v159;
    v163 = v154;
    v164 = v155;
    v27 = v137;
  }

  v99 = v138;
  sub_10000F778(v27, v138, &qword_10060EA00);
  v147 = v169;
  v148 = v170;
  v149 = v171;
  v143 = v165;
  v144 = v166;
  v145 = v167;
  v146 = v168;
  v141 = v163;
  v142 = v164;
  v100 = v139;
  sub_10000F778(v99, v139, &qword_10060EA00);
  v101 = sub_100003ABC(&qword_10060EA20);
  v102 = (v100 + *(v101 + 48));
  v103 = v183;
  v104 = v182;
  v150[3] = v182;
  v150[4] = v183;
  v105 = v180;
  v106 = v179;
  v150[1] = v180;
  v150[2] = v181;
  v150[0] = v179;
  v102[2] = v181;
  v102[3] = v104;
  v102[4] = v103;
  *v102 = v106;
  v102[1] = v105;
  v107 = *(v101 + 64);
  v108 = v148;
  v151[6] = v147;
  v151[7] = v148;
  v110 = v145;
  v109 = v146;
  v151[4] = v145;
  v151[5] = v146;
  v111 = v143;
  v112 = v144;
  v151[2] = v143;
  v151[3] = v144;
  v114 = v141;
  v113 = v142;
  v151[0] = v141;
  v151[1] = v142;
  v115 = v100 + v107;
  *(v115 + 96) = v147;
  *(v115 + 112) = v108;
  v152 = v149;
  *(v115 + 128) = v149;
  *(v115 + 32) = v111;
  *(v115 + 48) = v112;
  *(v115 + 64) = v110;
  *(v115 + 80) = v109;
  *v115 = v114;
  *(v115 + 16) = v113;
  sub_10035D89C(v150, &v154);
  sub_10000F778(v151, &v154, &qword_10060EA28);
  sub_100007214(v27, &qword_10060EA00);
  v160 = v147;
  v161 = v148;
  v162 = v149;
  v156 = v143;
  v157 = v144;
  v158 = v145;
  v159 = v146;
  v154 = v141;
  v155 = v142;
  sub_100007214(&v154, &qword_10060EA28);
  v153[2] = v181;
  v153[3] = v182;
  v153[4] = v183;
  v153[0] = v179;
  v153[1] = v180;
  sub_10035D8F8(v153);
  return sub_100007214(v99, &qword_10060EA00);
}

uint64_t sub_10035A460@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  *a4 = sub_1004B9344();
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  sub_100003ABC(a2);
  return a3(v4);
}

uint64_t sub_10035A4CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = sub_1004B9184();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1004B8E74();
  __chkstk_darwin(v70);
  v75 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_100003ABC(&qword_10060E940);
  __chkstk_darwin(v74);
  v76 = &v64 - v6;
  v7 = sub_100003ABC(&qword_10060E948);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = sub_100003ABC(&qword_10060E950);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v68 = sub_100003ABC(&qword_10060E958);
  __chkstk_darwin(v68);
  v16 = &v64 - v15;
  v69 = sub_100003ABC(&qword_10060E960);
  __chkstk_darwin(v69);
  v18 = &v64 - v17;
  v19 = sub_100003ABC(&qword_10060E968);
  v72 = *(v19 - 8);
  v73 = v19;
  __chkstk_darwin(v19);
  v71 = &v64 - v20;
  v21 = swift_allocObject();
  v22 = *(v1 + 48);
  *(v21 + 48) = *(v1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v1 + 64);
  v23 = *(v1 + 16);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v23;
  v78 = v1;
  sub_10035D344(v1, v88);
  sub_100003ABC(&qword_10060E970);
  sub_10035D37C();
  sub_1004BA474();
  v91 = *(v1 + 40);
  v88[0] = *(v1 + 40);
  v64 = sub_100003ABC(&qword_10060C3C8);
  sub_1004BA424();
  v24 = v81;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = &v10[*(v8 + 44)];
  *v27 = KeyPath;
  v27[1] = sub_10035D574;
  v27[2] = v26;
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v10, v14, &qword_10060E948);
  v28 = &v14[*(v12 + 44)];
  v29 = v86;
  *(v28 + 4) = v85;
  *(v28 + 5) = v29;
  *(v28 + 6) = v87;
  v30 = v82;
  *v28 = v81;
  *(v28 + 1) = v30;
  v31 = v84;
  *(v28 + 2) = v83;
  *(v28 + 3) = v31;
  v32 = *(v2 + 16);
  if (v32)
  {
    v33 = sub_1004BA234();
  }

  else
  {
    v33 = sub_1004BA2B4();
  }

  v34 = v33;
  v35 = swift_getKeyPath();
  sub_100025B04(v14, v16, &qword_10060E950);
  v36 = &v16[*(v68 + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = v71;
  if (qword_100609CB8 != -1)
  {
    swift_once();
  }

  v38 = *&qword_10060E630;
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v16, v18, &qword_10060E958);
  v39 = &v18[*(v69 + 36)];
  v40 = v88[5];
  *(v39 + 4) = v88[4];
  *(v39 + 5) = v40;
  *(v39 + 6) = v88[6];
  v41 = v88[1];
  *v39 = v88[0];
  *(v39 + 1) = v41;
  v42 = v88[3];
  *(v39 + 2) = v88[2];
  *(v39 + 3) = v42;
  sub_10035D678(&qword_10060E990, &qword_10060E960, &unk_1004E2048, sub_10035D594);
  sub_1004BA054();
  sub_100007214(v18, &qword_10060E960);
  v43 = v38 * 0.5;
  v44 = *(v70 + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = sub_1004B92C4();
  v47 = v75;
  (*(*(v46 - 8) + 104))(v75 + v44, v45, v46);
  *v47 = v43;
  v47[1] = v43;
  v48 = *(v2 + 56);
  v89 = v48;
  v90 = *(v2 + 64);
  if (v90 == 1)
  {
    if (v48)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_1004BC994();
    v49 = sub_1004B9904();
    sub_1004B7F84();

    v50 = v65;
    sub_1004B9174();
    swift_getAtKeyPath();
    sub_100007214(&v89, &qword_10060E9C0);
    (*(v66 + 8))(v50, v67);
    if (v80)
    {
      goto LABEL_11;
    }
  }

  v80 = v91;
  sub_1004BA424();
  if (v79 != 1)
  {
    v52 = [objc_opt_self() systemFillColor];
    v51 = sub_1004BA304();
    goto LABEL_15;
  }

LABEL_11:
  if (v32)
  {
    v51 = sub_1004BA294();
  }

  else
  {
    v51 = sub_1004BA234();
  }

LABEL_15:
  v53 = v51;
  v54 = v76;
  sub_10035C6E4(v47, v76, &type metadata accessor for RoundedRectangle);
  v55 = v74;
  *(v54 + *(v74 + 52)) = v53;
  *(v54 + *(v55 + 56)) = 256;
  v56 = sub_1004BA754();
  v58 = v57;
  v59 = sub_100003ABC(&qword_10060E9C8);
  v60 = v77;
  v61 = v77 + *(v59 + 36);
  sub_100025B04(v54, v61, &qword_10060E940);
  v62 = (v61 + *(sub_100003ABC(&qword_10060E9D0) + 36));
  *v62 = v56;
  v62[1] = v58;
  return (*(v72 + 32))(v60, v37, v73);
}

uint64_t sub_10035ADD8(uint64_t a1)
{
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA434();
  return (*(a1 + 24))(a1);
}

uint64_t sub_10035AE44(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060E9D8);
  __chkstk_darwin(v2);
  v4 = v23 - v3;
  v5 = sub_100003ABC(&qword_10060E988);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  v23[0] = *(a1 + 40);
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA424();
  if (v24 == 1)
  {
    sub_1004B8904();
    v8 = sub_1004BA2B4();
    KeyPath = swift_getKeyPath();
    v10 = &v7[*(v5 + 36)];
    *v10 = KeyPath;
    v10[1] = v8;
    sub_10000F778(v7, v4, &qword_10060E988);
    swift_storeEnumTagMultiPayload();
    sub_100003ABC(&qword_10060E200);
    sub_10035D428();
    sub_10035DB4C(&qword_10060E1F8, &qword_10060E200);
    sub_1004B9514();
    return sub_100007214(v7, &qword_10060E988);
  }

  else
  {
    v12 = *(a1 + 8);
    *&v23[0] = *a1;
    *(&v23[0] + 1) = v12;
    sub_1002C4D1C();

    v13 = sub_1004B9D84();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_1004BA754();
    sub_1004B8E94();
    v24 = v17 & 1;
    *v4 = v13;
    *(v4 + 1) = v15;
    v4[16] = v17 & 1;
    *(v4 + 3) = v19;
    v20 = v23[5];
    *(v4 + 6) = v23[4];
    *(v4 + 7) = v20;
    *(v4 + 8) = v23[6];
    v21 = v23[1];
    *(v4 + 2) = v23[0];
    *(v4 + 3) = v21;
    v22 = v23[3];
    *(v4 + 4) = v23[2];
    *(v4 + 5) = v22;
    swift_storeEnumTagMultiPayload();
    sub_100003ABC(&qword_10060E200);
    sub_10035D428();
    sub_10035DB4C(&qword_10060E1F8, &qword_10060E200);
    return sub_1004B9514();
  }
}

void sub_10035B168()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == 6)
  {
    v2 = 44.0;
  }

  qword_10060E630 = *&v2;
}

void sub_10035B220()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_10060E638 = v1 == 6;
}

uint64_t sub_10035B284()
{
  if (qword_100609CC0 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_10060E638)
  {
    v0 = 140.0;
  }

  qword_10060E640 = *&v0;
  return result;
}

uint64_t sub_10035B2FC()
{
  if (qword_100609CC0 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_10060E638)
  {
    v0 = 16.0;
  }

  qword_10060E648 = *&v0;
  return result;
}

uint64_t sub_10035B364()
{
  v0 = sub_1004B9B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100609CC0 != -1)
  {
    swift_once();
  }

  if (byte_10060E638 == 1)
  {
    result = sub_1004B9A34();
    v5 = result;
  }

  else
  {
    sub_1004B9A44();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = sub_1004B9B34();

    result = (*(v1 + 8))(v3, v0);
  }

  qword_10060E650 = v5;
  return result;
}

uint64_t sub_10035B4C0()
{
  v0 = sub_100003ABC(&qword_10060DF60);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (qword_100609CC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B9A64();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1004B9AB4();
  result = sub_100007214(v2, &qword_10060DF60);
  qword_10060E658 = v4;
  return result;
}

uint64_t sub_10035B5FC()
{
  if (qword_100609CC0 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_10060E638)
  {
    v0 = 9.0;
  }

  qword_10060E660 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = sub_1004BB6C4();
  v11 = *(v10 - 8);
  v32 = *(v11 + 56);
  v33 = v10;
  v31[1] = v11 + 56;
  v32(v9, 1, 1);
  v12 = [v2 artworkInfo];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 responseDictionary];

    if (v14)
    {
      v15 = sub_1004BBC44();

      v16 = sub_100350BC8(v15);

      if (v16)
      {
        sub_1004BB644();
        sub_100007214(v9, &unk_10060EBE0);
        sub_100025B04(v6, v9, &unk_10060EBE0);
      }
    }
  }

  v17 = [v2 name];
  v18 = sub_1004BBE64();
  v20 = v19;

  v21 = [v2 handle];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1004BBE64();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_10000F778(v9, v6, &unk_10060EBE0);
  v26 = [v2 collaborationAllowed];
  sub_100007214(v9, &unk_10060EBE0);
  v27 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v28 = *(v27 + 24);
  (v32)(a1 + v28, 1, 1, v33);
  v29 = *(v27 + 28);
  *a1 = v18;
  a1[1] = v20;
  a1[2] = v23;
  a1[3] = v25;
  result = sub_100350F88(v6, a1 + v28);
  *(a1 + v29) = v26;
  return result;
}

uint64_t sub_10035B92C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9114();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10035B998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B9154();
  *a1 = result;
  return result;
}

uint64_t sub_10035B9F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9054();
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = sub_1004BB7D4();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v59 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100003ABC(&qword_10060E680);
  __chkstk_darwin(v6 - 8);
  v60 = (&v58 - v7);
  v66 = sub_100003ABC(&qword_10060EA40);
  __chkstk_darwin(v66);
  v9 = &v58 - v8;
  v10 = sub_1004B6B04();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = sub_100003ABC(&qword_10060EA48);
  __chkstk_darwin(v22 - 8);
  v24 = &v58 - v23;
  v26 = &v58 + *(v25 + 56) - v23;
  sub_10035DBFC(v68, &v58 - v23, type metadata accessor for Collaboration.Flow);
  sub_10035DBFC(v69, v26, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v66;
    v65 = v9;
    v68 = v12;
    v69 = v15;
    v35 = v10;
    sub_10035DBFC(v24, v21, type metadata accessor for Collaboration.Flow);
    v36 = sub_100003ABC(&qword_10060E678);
    v37 = *(v36 + 48);
    v38 = *(v36 + 64);
    v39 = v21[v38];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v67 + 8))(&v21[v37], v10);
      sub_100007214(v21, &qword_10060E680);
LABEL_10:
      sub_100007214(v24, &qword_10060EA48);
LABEL_11:
      v32 = 0;
      return v32 & 1;
    }

    LODWORD(v64) = v39;
    v41 = v26[v38];
    v42 = *(v67 + 32);
    v42(v69, &v21[v37], v35);
    v42(v68, &v26[v37], v35);
    v43 = *(v34 + 48);
    v44 = v65;
    sub_100025B04(v21, v65, &qword_10060E680);
    sub_100025B04(v26, v44 + v43, &qword_10060E680);
    v45 = v62;
    v46 = *(v61 + 48);
    if (v46(v44, 1, v62) == 1)
    {
      v47 = v46(v44 + v43, 1, v45);
      v48 = v67;
      v49 = v68;
      v50 = v69;
      if (v47 == 1)
      {
        sub_100007214(v44, &qword_10060E680);
        goto LABEL_21;
      }
    }

    else
    {
      v51 = v60;
      sub_10000F778(v44, v60, &qword_10060E680);
      if (v46(v44 + v43, 1, v45) != 1)
      {
        v53 = v59;
        sub_10035C6E4(v44 + v43, v59, type metadata accessor for Collaboration.Flow.Collaborator);
        v54 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v51, v53);
        sub_10035C664(v53, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_10035C664(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_100007214(v44, &qword_10060E680);
        v48 = v67;
        v49 = v68;
        v50 = v69;
        if (v54)
        {
LABEL_21:
          v55 = sub_1004B6A84();
          v56 = *(v48 + 8);
          v56(v49, v35);
          v56(v50, v35);
          if (v55)
          {
            v57 = v64 ^ v41;
            sub_10035C664(v24, type metadata accessor for Collaboration.Flow);
            v32 = v57 ^ 1;
            return v32 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v52 = *(v48 + 8);
        v52(v49, v35);
        v52(v50, v35);
LABEL_23:
        sub_10035C664(v24, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_10035C664(v51, type metadata accessor for Collaboration.Flow.Collaborator);
      v48 = v67;
      v49 = v68;
      v50 = v69;
    }

    sub_100007214(v44, &qword_10060EA40);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10035C664(v24, type metadata accessor for Collaboration.Flow);
      v32 = 1;
      return v32 & 1;
    }

    goto LABEL_10;
  }

  sub_10035DBFC(v24, v18, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v64 + 8))(v18, v65);
    goto LABEL_10;
  }

  v29 = v63;
  v28 = v64;
  v30 = v26;
  v31 = v65;
  (*(v64 + 32))(v63, v30, v65);
  v32 = sub_1004BB754();
  v33 = *(v28 + 8);
  v33(v29, v31);
  v33(v18, v31);
  sub_10035C664(v24, type metadata accessor for Collaboration.Flow);
  return v32 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = sub_1004BB6C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100003ABC(&qword_10060E048);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1004BD9C4() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_1004BD9C4() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v15)
  {
    goto LABEL_17;
  }

  v25 = v7;
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v16 = *(v26 + 24);
  v17 = *(v11 + 48);
  sub_10000F778(a1 + v16, v13, &unk_10060EBE0);
  sub_10000F778(a2 + v16, &v13[v17], &unk_10060EBE0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_100007214(v13, &unk_10060EBE0);
LABEL_20:
      v19 = *(a1 + *(v26 + 28)) ^ *(a2 + *(v26 + 28)) ^ 1;
      return v19 & 1;
    }

    goto LABEL_16;
  }

  sub_10000F778(v13, v10, &unk_10060EBE0);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_100007214(v13, &qword_10060E048);
    goto LABEL_17;
  }

  v21 = &v13[v17];
  v22 = v25;
  (*(v5 + 32))(v25, v21, v4);
  sub_10035FA7C(&qword_10060E050, &type metadata accessor for Artwork);
  v23 = sub_1004BBD84();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v10, v4);
  sub_100007214(v13, &unk_10060EBE0);
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_17:
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_10035C610()
{
  result = qword_10060E670;
  if (!qword_10060E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E670);
  }

  return result;
}

uint64_t sub_10035C664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10035C6E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10035C768()
{
  sub_10035C7DC();
  if (v0 <= 0x3F)
  {
    sub_1004BB7D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10035C7DC()
{
  if (!qword_10060E718)
  {
    sub_100003B68(&qword_10060E680);
    sub_1004B6B04();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10060E718);
    }
  }
}

uint64_t sub_10035C874(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&unk_10060EBE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10035C944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&unk_10060EBE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10035C9F4()
{
  sub_10035CE5C(319, &unk_10060E7B0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10035CAAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10035CAAC()
{
  if (!qword_10060D970)
  {
    sub_1004BB6C4();
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_10060D970);
    }
  }
}

uint64_t sub_10035CB18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1004BBA84();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10035CC34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_1004BBA84();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10035CD38()
{
  sub_10035CE5C(319, &unk_10060C188, &type metadata for Bool, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v1 <= 0x3F)
    {
      sub_1004BBA84();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v3 <= 0x3F)
        {
          sub_10032596C();
          if (v4 <= 0x3F)
          {
            sub_100316910();
            if (v5 <= 0x3F)
            {
              sub_10035CEAC();
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

void sub_10035CE5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10035CEAC()
{
  if (!qword_10060E850)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_10035FA7C(&qword_10060EC30, type metadata accessor for InlineProfileEditingView.Context);
    v0 = sub_1004B8844();
    if (!v1)
    {
      atomic_store(v0, &qword_10060E850);
    }
  }
}

__n128 sub_10035CF90(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10035CFB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10035CFFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10035D074(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Collaboration.Flow(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10035D134(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Collaboration.Flow(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10035D1F8()
{
  result = type metadata accessor for InlineProfileEditingView.Context();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10035D2E0()
{

  sub_10034C67C(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_10035D37C()
{
  result = qword_10060E978;
  if (!qword_10060E978)
  {
    sub_100003B68(&qword_10060E970);
    sub_10035D428();
    sub_10035DB4C(&qword_10060E1F8, &qword_10060E200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E978);
  }

  return result;
}

unint64_t sub_10035D428()
{
  result = qword_10060E980;
  if (!qword_10060E980)
  {
    sub_100003B68(&qword_10060E988);
    sub_1000206D4(&qword_10060DDC0, &qword_10060DDC8);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E980);
  }

  return result;
}

uint64_t sub_10035D50C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9114();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10035D594()
{
  result = qword_10060E998;
  if (!qword_10060E998)
  {
    sub_100003B68(&qword_10060E958);
    sub_10035D678(&qword_10060E9A0, &qword_10060E950, &unk_1004E2038, sub_10035D6FC);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E998);
  }

  return result;
}

uint64_t sub_10035D678(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10035D6FC()
{
  result = qword_10060E9A8;
  if (!qword_10060E9A8)
  {
    sub_100003B68(&qword_10060E948);
    sub_1000206D4(&qword_10060E9B0, &qword_10060E9B8);
    sub_1000206D4(&qword_10060E368, &qword_10060E370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E9A8);
  }

  return result;
}

uint64_t sub_10035D7E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B9154();
  *a1 = result;
  return result;
}

uint64_t sub_10035D848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9054();
  *a1 = result;
  return result;
}

double sub_10035D94C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_10035D968()
{
  result = qword_10060EAD8;
  if (!qword_10060EAD8)
  {
    sub_100003B68(&qword_10060EAD0);
    sub_10035DA20();
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EAD8);
  }

  return result;
}

unint64_t sub_10035DA20()
{
  result = qword_10060EAE0;
  if (!qword_10060EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EAE0);
  }

  return result;
}

unint64_t sub_10035DA74()
{
  result = qword_10060EAF8;
  if (!qword_10060EAF8)
  {
    sub_100003B68(&qword_10060EAF0);
    sub_10035DB4C(&qword_10060EB00, &qword_10060EB08);
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EAF8);
  }

  return result;
}

uint64_t sub_10035DB4C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10035DBBC()
{

  return swift_deallocObject();
}

uint64_t sub_10035DBFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10035DCC0()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004BB7D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004BB6C4();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(sub_100003ABC(&qword_10060E678) + 48);
    v16 = sub_1004B6B04();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1004BBA84();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_10035DC68();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10035E050(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_100358FAC(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_10035E148()
{
  result = qword_10060EB20;
  if (!qword_10060EB20)
  {
    sub_100003B68(&qword_10060EA70);
    sub_1000206D4(&qword_10060EB28, &qword_10060EA78);
    sub_10035E200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EB20);
  }

  return result;
}

unint64_t sub_10035E200()
{
  result = qword_10060EB30;
  if (!qword_10060EB30)
  {
    sub_100003B68(&qword_10060EB38);
    sub_10035E2B8();
    sub_1000206D4(&qword_10060E368, &qword_10060E370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EB30);
  }

  return result;
}

unint64_t sub_10035E2B8()
{
  result = qword_10060EB40;
  if (!qword_10060EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EB40);
  }

  return result;
}

uint64_t sub_10035E30C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_1004BB7D4();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004BB6C4();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = sub_100003ABC(&qword_10060E678);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1004BBA84();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_10035DC68();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10035E6A0(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100356234(a1, v4);
}

uint64_t sub_10035E718()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_1004BB7D4();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_1004BB6C4();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(sub_100003ABC(&qword_10060E678) + 48);
    v10 = sub_1004B6B04();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = sub_1004BBA84();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_10035DC68();

  return swift_deallocObject();
}

uint64_t sub_10035EA04(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10035EA78()
{
  result = qword_10060EB88;
  if (!qword_10060EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EB88);
  }

  return result;
}

uint64_t sub_10035EACC()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000136EC;

  return sub_10035818C();
}

uint64_t sub_10035EBBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10035EBE8()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_1004BB7D4();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_1004BB6C4();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(sub_100003ABC(&qword_10060E678) + 48);
    v11 = sub_1004B6B04();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = sub_1004BBA84();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_10035DC68();

  return swift_deallocObject();
}

uint64_t sub_10035EEAC()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_100356414();
}

uint64_t sub_10035EF9C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_1004BB7D4();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004BB6C4();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = sub_100003ABC(&qword_10060E678);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1004BBA84();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_10035DC68();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10035F2EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004B6B04() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001384C;

  return sub_100358340(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10035F440(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004BB7D4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001384C;

  return sub_100359260(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10035F590()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_1004BB7D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004BB6C4();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(sub_100003ABC(&qword_10060E678) + 48);
    v16 = sub_1004B6B04();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1004BBA84();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_10035DC68();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10035F8E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004BB7D4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001384C;

  return sub_100358C04(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_10035FA30()
{
  result = qword_10060EB90;
  if (!qword_10060EB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060EB90);
  }

  return result;
}

uint64_t sub_10035FA7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10035FB34()
{
  result = qword_10060EBA8;
  if (!qword_10060EBA8)
  {
    sub_100003B68(&qword_10060E9C8);
    sub_100003B68(&qword_10060E960);
    sub_10035D678(&qword_10060E990, &qword_10060E960, &unk_1004E2048, sub_10035D594);
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&qword_10060EBB0, &qword_10060E9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EBA8);
  }

  return result;
}

unint64_t sub_10035FCA4()
{
  result = qword_10060EBC8;
  if (!qword_10060EBC8)
  {
    sub_100003B68(&qword_10060EBD0);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EBC8);
  }

  return result;
}

unint64_t sub_10035FD60()
{
  result = qword_10060EBD8;
  if (!qword_10060EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EBD8);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a1@<X8>)
{
  sub_1003658D8(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10000F778(a1, &v9 - v6, &unk_10060EBE0);
  sub_10000F778(v7, v4, &unk_10060EBE0);
  sub_1004B8564();
  sub_100007214(a1, &unk_10060EBE0);
  return sub_100007214(v7, &unk_10060EBE0);
}

uint64_t sub_10035FF74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_100360038()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_1003600AC(void *a1)
{
  v3 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  v9 = a1;

  sub_1004B85B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v10 = v14;
  if (v14)
  {
    v11 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v11) = 0;
    v12 = sub_1004BB6C4();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000F778(v8, v5, &unk_10060EBE0);

    sub_1004B85B4();

    sub_100007214(v8, &unk_10060EBE0);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = sub_100003ABC(&qword_10060EBF0);
  v78 = *(v0 - 8);
  v79 = v0;
  __chkstk_darwin(v0);
  v77 = &v71 - v1;
  v76 = sub_100003ABC(&qword_10060EBF8);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v3 = &v71 - v2;
  v4 = sub_100003ABC(&qword_10060EC00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v71 - v6;
  v8 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v71 - v11;
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v19 = sub_1004BB6C4();
  v80 = *(v19 - 8);
  v81 = v19;
  (*(v80 + 56))(v17, 1, 1);
  sub_10000F778(v17, v14, &unk_10060EBE0);
  v71 = v14;
  sub_1004B8564();
  v20 = v17;
  sub_100007214(v17, &unk_10060EBE0);
  v21 = v75;
  (*(v5 + 32))(v75 + v18, v7, v4);
  v22 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_1004B8564();
  (*(v74 + 32))(v21 + v22, v3, v76);
  v23 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v83 = 0;
  sub_100003ABC(&qword_10060A770);
  v24 = v77;
  sub_1004B8564();
  (*(v78 + 32))(v21 + v23, v24, v79);
  *(v21 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v25 = [objc_opt_self() shared];
  v26 = [v25 activeUserState];

  v27 = [v26 music];
  v28 = [v27 userProfile];

  if (v28)
  {
    v29 = [v28 name];
    v30 = sub_1004BBE64();
    v32 = v31;

    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v30;
    v84 = v32;

    sub_1004B85B4();
    v33 = [v28 artworkInfo];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 responseDictionary];

      if (v35)
      {
        v36 = sub_1004BBC44();

        v37 = sub_100350BC8(v36);

        if (v37)
        {
          sub_1004BB644();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10000F778(v20, v71, &unk_10060EBE0);

          sub_1004B85B4();
          sub_100007214(v20, &unk_10060EBE0);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v39 = v83;
  v38 = v84;

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v80;
  v41 = v81;
  if (v40)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v73;
    sub_1004B85A4();

    if ((*(v42 + 48))(v43, 1, v41) != 1)
    {

LABEL_25:
      sub_100007214(v43, &unk_10060EBE0);
      return v21;
    }

    sub_100007214(v43, &unk_10060EBE0);
  }

  sub_100003ABC(&qword_10060EC20);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1004C4D40;
  *(v44 + 32) = CNContactThumbnailImageDataKey;
  v82 = v44;
  v45 = objc_opt_self();
  v46 = CNContactThumbnailImageDataKey;
  v47 = [v45 descriptorForRequiredKeysForStyle:0];
  sub_1004BC274();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  v48 = [objc_allocWithZone(CNContactStore) init];
  sub_100003ABC(&qword_10060EC28);
  isa = sub_1004BC284().super.isa;

  v83 = 0;
  v50 = [v48 _ios_meContactWithKeysToFetch:isa error:&v83];

  v51 = v83;
  if (!v50)
  {
    v69 = v83;
    sub_1004B69B4();

    swift_willThrow();

    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v51;
  sub_1004B85A4();

  v54 = v83;
  v53 = v84;

  v55 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v55 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
    v56 = [v45 stringFromContact:v50 style:0];
    if (v56)
    {
      v57 = v56;
      v58 = sub_1004BBE64();
      v60 = v59;

      swift_getKeyPath();
      swift_getKeyPath();
      v83 = v58;
      v84 = v60;

      sub_1004B85B4();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v72;
  sub_1004B85A4();

  if ((*(v42 + 48))(v43, 1, v41) != 1)
  {

    goto LABEL_25;
  }

  sub_100007214(v43, &unk_10060EBE0);
  v61 = [v50 thumbnailImageData];
  if (v61)
  {
    v62 = v61;
    v63 = sub_1004B6B74();
    v65 = v64;

    v66 = objc_allocWithZone(UIImage);
    sub_10003E428(v63, v65);
    v67 = sub_1004B6B64().super.isa;
    v68 = [v66 initWithData:v67];

    sub_100004D90(v63, v65);
    sub_1003600AC(v68);

    sub_100004D90(v63, v65);
  }

  else
  {
  }

  return v21;
}

BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100360FC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  v1 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v5 = sub_1004BB6C4();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_100007214(v3, &unk_10060EBE0);
  if (v6 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v8;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100003ABC(&qword_10060EC00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100003ABC(&qword_10060EBF8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100003ABC(&qword_10060EBF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100003ABC(&qword_10060EC00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100003ABC(&qword_10060EBF8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100003ABC(&qword_10060EBF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_10036140C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context();
  result = sub_1004B8534();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context()
{
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100365A78();

  return sub_1004B8B74();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_1004B6E64();
  __chkstk_darwin(v3 - 8);
  v83 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BBE14();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = v72 - v8;
  v9 = sub_100003ABC(&qword_10060EC38);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v72 - v11;
  v13 = sub_100003ABC(&qword_10060EC40);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v72 - v15;
  v17 = sub_100003ABC(&qword_10060EC48);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v72 - v19;
  v21 = sub_100003ABC(&qword_10060EC50);
  v72[2] = v21;
  __chkstk_darwin(v21);
  v85 = v72 - v22;
  v23 = sub_100003ABC(&qword_10060EC58);
  v77 = *(v23 - 8);
  v78 = v23;
  __chkstk_darwin(v23);
  v76 = v72 - v24;
  v86 = sub_100003ABC(&qword_10060EC60);
  __chkstk_darwin(v86);
  v87 = v72 - v25;
  *v12 = sub_1004B9204();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v26 = sub_100003ABC(&qword_10060EC68);
  sub_100361E30(v2, &v12[*(v26 + 44)]);
  v27 = [objc_opt_self() quaternarySystemFillColor];
  v28 = sub_1004BA304();
  v29 = sub_1004B9964();
  v30 = &v12[*(v10 + 44)];
  *v30 = v28;
  v30[8] = v29;
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v12, v16, &qword_10060EC38);
  v31 = &v16[*(v14 + 44)];
  v32 = v97;
  *(v31 + 4) = v96;
  *(v31 + 5) = v32;
  *(v31 + 6) = v98;
  v33 = v93;
  *v31 = v92;
  *(v31 + 1) = v33;
  v34 = v95;
  *(v31 + 2) = v94;
  *(v31 + 3) = v34;
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v16, v20, &qword_10060EC40);
  v35 = &v20[*(v18 + 44)];
  v36 = v104;
  *(v35 + 4) = v103;
  *(v35 + 5) = v36;
  *(v35 + 6) = v105;
  v37 = v100;
  *v35 = v99;
  *(v35 + 1) = v37;
  v38 = v102;
  *(v35 + 2) = v101;
  *(v35 + 3) = v38;
  v39 = *(v21 + 36);
  v40 = v85;
  v41 = &v85[v39];
  v42 = *(sub_1004B8E74() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_1004B92C4();
  (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
  __asm { FMOV            V0.2D, #16.0 }

  *v41 = _Q0;
  *&v41[*(sub_100003ABC(&unk_10060EC70) + 36)] = 256;
  sub_100025B04(v20, v40, &qword_10060EC48);
  v90 = 0;
  v91 = 0xE000000000000000;
  v50 = v73;
  v89 = *(v73 + 16);
  v74 = sub_100003ABC(&qword_10060C3C8);
  sub_1004BA444();
  v72[1] = v72;
  v88 = v50;
  sub_100003ABC(&qword_10060EC80);
  sub_100365AD8();
  v51 = sub_1002C4D1C();
  sub_1000206D4(&qword_10060ECB8, &qword_10060EC80);
  v75 = v51;
  v52 = v76;
  v53 = v85;
  sub_1004B9FB4();
  v54 = v79;
  v55 = v50;

  v56 = v80;

  v57 = v81;
  sub_100007214(v53, &qword_10060EC50);
  v58 = sub_1004BA754();
  v60 = v59;
  v61 = v87;
  v62 = &v87[*(v86 + 36)];
  sub_100364714(v55, v62);
  v63 = (v62 + *(sub_100003ABC(&qword_10060ECC0) + 36));
  *v63 = v58;
  v63[1] = v60;
  v64 = v82;
  (*(v77 + 32))(v61, v52, v78);
  sub_1004BBDA4();
  (*(v57 + 16))(v56, v54, v64);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v65 = qword_100618C60;
  sub_1004B6DF4();
  v66 = sub_1004BBED4();
  v68 = v67;
  (*(v57 + 8))(v54, v64);
  v90 = v66;
  v91 = v68;
  v89 = *(v55 + 48);
  v69 = sub_1004BA444();
  v85 = v72;
  __chkstk_darwin(v69);
  sub_100003ABC(&qword_10060ECC8);
  sub_100365D5C();
  sub_1000206D4(&qword_10060ECE0, &qword_10060ECC8);
  v70 = v87;
  sub_1004BA094();

  return sub_100007214(v70, &qword_10060EC60);
}

uint64_t sub_100361E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v255 = a2;
  v3 = sub_100003ABC(&qword_10060EEE8);
  v251 = *(v3 - 8);
  v252 = v3;
  __chkstk_darwin(v3);
  v232 = v208 - v4;
  v5 = sub_100003ABC(&unk_10060EEF0);
  __chkstk_darwin(v5 - 8);
  v254 = v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v253 = v208 - v8;
  v9 = sub_1004B6E64();
  __chkstk_darwin(v9 - 8);
  v247 = v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1004BBE14();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v259 = v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v260 = v208 - v13;
  v245 = sub_100003ABC(&qword_10060DCB0);
  __chkstk_darwin(v245);
  v228 = v208 - v14;
  v242 = sub_100003ABC(&qword_10060EF00);
  __chkstk_darwin(v242);
  v244 = (v208 - v15);
  v16 = sub_100003ABC(&qword_10060EF08);
  __chkstk_darwin(v16 - 8);
  v250 = v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v261 = v208 - v19;
  v20 = sub_1004BA334();
  v230 = *(v20 - 8);
  v231 = v20;
  __chkstk_darwin(v20);
  v229 = v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_100003ABC(&unk_10060EF10);
  __chkstk_darwin(v239);
  v240 = (v208 - v22);
  v256 = sub_1004BB634();
  v237 = *(v256 - 8);
  __chkstk_darwin(v256);
  v224 = v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004B7D94();
  v226 = *(v24 - 8);
  v227 = v24;
  __chkstk_darwin(v24);
  v233 = v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v223 = v208 - v27;
  __chkstk_darwin(v28);
  v225 = v208 - v29;
  __chkstk_darwin(v30);
  v235 = v208 - v31;
  v236 = sub_1004B7D04();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v258 = v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v33 - 8);
  v219 = v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v214 = v208 - v36;
  v37 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v37 - 8);
  v217 = v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v216 = v208 - v40;
  __chkstk_darwin(v41);
  v213 = v208 - v42;
  v43 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v43 - 8);
  v218 = v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v215 = v208 - v46;
  __chkstk_darwin(v47);
  v257 = v208 - v48;
  v49 = sub_100003ABC(&qword_10060EF28);
  v221 = *(v49 - 8);
  v222 = v49;
  __chkstk_darwin(v49);
  v220 = v208 - v50;
  v51 = sub_100003ABC(&unk_10060EF30);
  __chkstk_darwin(v51);
  v53 = v208 - v52;
  v54 = sub_100003ABC(&qword_10060EA58);
  __chkstk_darwin(v54);
  v56 = v208 - v55;
  v238 = sub_100003ABC(&qword_10060EF40);
  __chkstk_darwin(v238);
  v58 = v208 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = v208 - v60;
  v62 = sub_100003ABC(&qword_10060EF48);
  __chkstk_darwin(v62 - 8);
  v243 = v208 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v241 = v208 - v65;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v249 = a1;
  v66 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v262 = v66;
  if (v265._countAndFlagsBits)
  {
    v258 = v265._countAndFlagsBits;
    sub_1004BA314();
    v68 = v229;
    v67 = v230;
    v69 = v231;
    (*(v230 + 13))(v229, enum case for Image.ResizingMode.stretch(_:), v231);
    v257 = sub_1004BA384();

    (*(v67 + 8))(v68, v69);
    sub_1004BA754();
    sub_1004B8994();
    v70 = v273;
    v71 = v274;
    v72 = v275;
    v73 = v276;
    v75 = v277;
    v74 = v278;
    LOBYTE(v265._countAndFlagsBits) = v274;
    LOBYTE(v263[0]) = v276;
    LOBYTE(v67) = sub_1004B9964();
    sub_1004B86C4();
    v264 = 0;
    v265._countAndFlagsBits = v257;
    v265._object = v70;
    LOBYTE(v266._countAndFlagsBits) = v71;
    v266._object = v72;
    LOBYTE(v267._countAndFlagsBits) = v73;
    v267._object = v75;
    v268._countAndFlagsBits = v74;
    LOWORD(v268._object) = 256;
    *(&v268._object + 2) = v271;
    HIWORD(v268._object) = WORD2(v271);
    LOBYTE(v269._countAndFlagsBits) = v67;
    HIDWORD(v269._countAndFlagsBits) = *(v263 + 3);
    *(&v269._countAndFlagsBits + 1) = v263[0];
    v269._object = v76;
    *&v270[0] = v77;
    *(&v270[0] + 1) = v78;
    *&v270[1] = v79;
    BYTE8(v270[1]) = 0;
    v80 = v268;
    v81 = v270[0];
    v82 = v240;
    v240[4] = v269;
    v82[5] = v81;
    *(v82 + 89) = *(v270 + 9);
    v83 = v266;
    v84 = v267;
    *v82 = v265;
    v82[1] = v83;
    v82[2] = v84;
    v82[3] = v80;
    swift_storeEnumTagMultiPayload();
    sub_10000F778(&v265, v263, &qword_10060EF58);
    sub_100003ABC(&qword_10060EF58);
    sub_100366370();
    sub_10036655C();
    v85 = v241;
    sub_1004B9514();

    sub_100007214(&v265, &qword_10060EF58);
    v86 = v259;
    goto LABEL_18;
  }

  v210 = v54;
  v211 = v58;
  v212 = v51;
  v229 = v53;
  v230 = v56;
  v231 = v61;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v213;
  sub_1004B85A4();

  v88 = v214;
  v208[0] = *(v237 + 56);
  v208[1] = v237 + 56;
  (v208[0])(v214, 1, 1, v256);
  v89 = sub_1004BB6C4();
  v90 = *(v89 - 8);
  v91 = (*(v90 + 48))(v87, 1, v89);
  v209 = v89;
  if (v91 == 1)
  {
    sub_100007214(v88, &qword_10060DD10);
    sub_100007214(v87, &unk_10060EBE0);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    v93 = v257;
    (*(*(v92 - 8) + 56))(v257, 1, 1, v92);
  }

  else
  {
    v93 = v257;
    (*(v90 + 32))(v257, v87, v89);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100025B04(v88, v93 + *(v92 + 20), &qword_10060DD10);
    (*(*(v92 - 8) + 56))(v93, 0, 1, v92);
  }

  v94 = v258;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v95 = String.trim()();

  (*(v234 + 104))(v94, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v236);
  *(swift_allocObject() + 16) = v95;
  v96 = v215;
  sub_10000F778(v93, v215, &qword_10060EF20);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v97 = *(*(v92 - 8) + 48);
  if (v97(v96, 1, v92) == 1)
  {
    sub_100007214(v96, &qword_10060EF20);
    v98 = 1;
    v99 = v216;
    v100 = v217;
    v101 = v209;
  }

  else
  {
    v99 = v216;
    v101 = v209;
    (*(v90 + 16))(v216, v96, v209);
    sub_1003667E8(v96, type metadata accessor for ArtworkImage.ViewModel);
    v98 = 0;
    v100 = v217;
  }

  (*(v90 + 56))(v99, v98, 1, v101);
  sub_10000F778(v99, v100, &unk_10060EBE0);
  sub_1004B7D84();
  sub_100007214(v99, &unk_10060EBE0);
  sub_1004B7D34();
  v102 = v218;
  sub_10000F778(v257, v218, &qword_10060EF20);
  v103 = v97(v102, 1, v92);
  v104 = v227;
  if (v103 == 1)
  {
    sub_100007214(v102, &qword_10060EF20);
    v105 = v219;
    (v208[0])(v219, 1, 1, v256);
    v86 = v259;
    v106 = v226;
    v107 = v237;
LABEL_12:
    v110 = v224;
    if (qword_100609C08 != -1)
    {
      swift_once();
    }

    v108 = v256;
    v111 = sub_100007084(v256, static Artwork.CropStyle.fallback);
    (*(v107 + 16))(v110, v111, v108);
    v112 = (*(v107 + 48))(v105, 1, v108) == 1;
    v113 = v105;
    v114 = v110;
    v115 = v107;
    if (!v112)
    {
      sub_100007214(v113, &qword_10060DD10);
    }

    goto LABEL_17;
  }

  v105 = v219;
  sub_10000F778(v102 + *(v92 + 20), v219, &qword_10060DD10);
  sub_1003667E8(v102, type metadata accessor for ArtworkImage.ViewModel);
  v107 = v237;
  v108 = v256;
  v109 = (*(v237 + 48))(v105, 1, v256);
  v86 = v259;
  v106 = v226;
  if (v109 == 1)
  {
    goto LABEL_12;
  }

  v116 = v105;
  v114 = v224;
  (*(v107 + 32))(v224, v116, v108);
  v115 = v107;
LABEL_17:
  v117 = v223;
  v118 = v233;
  sub_1004B7D14();
  (*(v115 + 8))(v114, v108);
  v119 = *(v106 + 8);
  v119(v118, v104);
  v120 = v225;
  sub_1004B7D44();
  v119(v117, v104);
  sub_100316C80();
  v121 = v220;
  sub_1004B7D24();

  v119(v120, v104);
  v119(v235, v104);
  (*(v234 + 8))(v258, v236);
  sub_100007214(v257, &qword_10060EF20);
  sub_1004BA754();
  sub_1004B8994();
  v122 = v229;
  (*(v221 + 32))(v229, v121, v222);
  v123 = (v122 + *(v212 + 36));
  v124 = v263[1];
  *v123 = v263[0];
  v123[1] = v124;
  v123[2] = v263[2];
  v125 = v230;
  sub_100025B04(v122, v230, &unk_10060EF30);
  *(v125 + *(v210 + 36)) = 256;
  LOBYTE(v122) = sub_1004B9964();
  sub_1004B86C4();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v211;
  sub_100025B04(v125, v211, &qword_10060EA58);
  v135 = v134 + *(v238 + 36);
  *v135 = v122;
  *(v135 + 8) = v127;
  *(v135 + 16) = v129;
  *(v135 + 24) = v131;
  *(v135 + 32) = v133;
  *(v135 + 40) = 0;
  v136 = v231;
  sub_100025B04(v134, v231, &qword_10060EF40);
  sub_10000F778(v136, v240, &qword_10060EF40);
  swift_storeEnumTagMultiPayload();
  sub_100003ABC(&qword_10060EF58);
  sub_100366370();
  sub_10036655C();
  v85 = v241;
  sub_1004B9514();
  sub_100007214(v136, &qword_10060EF40);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v137 = String.trim()();

  v138 = (v137._object >> 56) & 0xF;
  if ((v137._object & 0x2000000000000000) == 0)
  {
    v138 = v137._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v139 = &static AccessibilityIdentifier.libraryGridCellArtwork;
  if (v138)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v140 = String.trim()();

    v265 = v140;
    sub_1002C4D1C();
    v141 = sub_1004B9D84();
    v143 = v142;
    v145 = v144;
    v146 = sub_1004B9CD4();
    v148 = v147;
    v149 = v85;
    v151 = v150;
    v153 = v152;
    sub_10002FA24(v141, v143, v145 & 1);

    v154 = v244;
    *v244 = v146;
    v154[1] = v148;
    v86 = v259;
    v155 = v151 & 1;
    v85 = v149;
    *(v154 + 16) = v155;
    v154[3] = v153;
    v139 = &static AccessibilityIdentifier.libraryGridCellArtwork;
    swift_storeEnumTagMultiPayload();
    sub_10034BC7C();
    sub_1004B9514();
    v156 = v248;
  }

  else
  {
    v157 = v260;
    sub_1004BBDA4();
    v158 = v246;
    v156 = v248;
    (*(v246 + 16))(v86, v157, v248);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v159 = qword_100618C60;
    sub_1004B6DF4();
    v160 = sub_1004BBED4();
    v162 = v161;
    (*(v158 + 8))(v260, v156);
    v271 = v160;
    v272 = v162;
    v163 = swift_allocObject();
    v164 = v249;
    v165 = v249[3];
    v163[3] = v249[2];
    v163[4] = v165;
    v163[5] = v164[4];
    v166 = v164[1];
    v163[1] = *v164;
    v163[2] = v166;
    sub_10035D89C(v164, &v265);
    sub_1002C4D1C();
    v167 = v228;
    sub_1004BA4A4();
    v168 = sub_1004BA2E4();
    KeyPath = swift_getKeyPath();
    v170 = v244;
    v171 = (v167 + *(v245 + 36));
    *v171 = KeyPath;
    v171[1] = v168;
    sub_10000F778(v167, v170, &qword_10060DCB0);
    swift_storeEnumTagMultiPayload();
    sub_10034BC7C();
    sub_1004B9514();
    sub_100007214(v167, &qword_10060DCB0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v172 = String.trim()();

  v173 = (v172._object >> 56) & 0xF;
  if ((v172._object & 0x2000000000000000) == 0)
  {
    v173 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v173)
  {
    v174 = v260;
    sub_1004BBDA4();
    v175 = v246;
    (*(v246 + 16))(v86, v174, v156);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v176 = v139[396];
    sub_1004B6DF4();
    v177 = sub_1004BBED4();
    v179 = v178;
    (*(v175 + 8))(v260, v156);
    v271 = v177;
    v272 = v179;
    v180 = swift_allocObject();
    v181 = v249;
    v182 = v249[3];
    v180[3] = v249[2];
    v180[4] = v182;
    v180[5] = v181[4];
    v183 = v181[1];
    v180[1] = *v181;
    v180[2] = v183;
    sub_10035D89C(v181, &v265);
    sub_1002C4D1C();
    v184 = v232;
    sub_1004BA4A4();
    LOBYTE(v180) = sub_1004B99B4();
    sub_1004B86C4();
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v193 = v184 + *(sub_100003ABC(&qword_10060EFD0) + 36);
    *v193 = v180;
    *(v193 + 8) = v186;
    *(v193 + 16) = v188;
    *(v193 + 24) = v190;
    *(v193 + 32) = v192;
    *(v193 + 40) = 0;
    v194 = swift_getKeyPath();
    v195 = v184 + *(sub_100003ABC(&qword_10060EFD8) + 36);
    *v195 = v194;
    *(v195 + 8) = 1;
    *(v195 + 16) = 0;
    v197 = v252;
    v196 = v253;
    *(v184 + *(v252 + 36)) = 0x3FF0000000000000;
    sub_100025B04(v184, v196, &qword_10060EEE8);
    v198 = 0;
  }

  else
  {
    v198 = 1;
    v197 = v252;
    v196 = v253;
  }

  (*(v251 + 56))(v196, v198, 1, v197);
  v199 = v243;
  v200 = v85;
  sub_10000F778(v85, v243, &qword_10060EF48);
  v201 = v261;
  v202 = v250;
  sub_10000F778(v261, v250, &qword_10060EF08);
  v203 = v254;
  sub_10000F778(v196, v254, &unk_10060EEF0);
  v204 = v255;
  sub_10000F778(v199, v255, &qword_10060EF48);
  v205 = sub_100003ABC(&unk_10060EFE0);
  sub_10000F778(v202, v204 + v205[12], &qword_10060EF08);
  v206 = v204 + v205[16];
  *v206 = 0;
  *(v206 + 8) = 1;
  sub_10000F778(v203, v204 + v205[20], &unk_10060EEF0);
  sub_100007214(v196, &unk_10060EEF0);
  sub_100007214(v201, &qword_10060EF08);
  sub_100007214(v200, &qword_10060EF48);
  sub_100007214(v203, &unk_10060EEF0);
  sub_100007214(v202, &qword_10060EF08);
  return sub_100007214(v199, &qword_10060EF48);
}

uint64_t sub_100363A84@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = sub_100003ABC(&qword_10060EED8);
  __chkstk_darwin(v3 - 8);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v81 - v6;
  v7 = sub_1004B6E64();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1004BBE14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v81 - v13;
  v91 = sub_100003ABC(&unk_10060DCC0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v81 - v17;
  __chkstk_darwin(v18);
  v94 = &v81 - v19;
  __chkstk_darwin(v20);
  v89 = &v81 - v21;
  __chkstk_darwin(v22);
  v97 = &v81 - v23;
  __chkstk_darwin(v24);
  v100 = &v81 - v25;
  sub_1004BBDA4();
  v98 = *(v9 + 16);
  v99 = v8;
  v96 = v9 + 16;
  v98(v11, v14, v8);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v26 = qword_100618C60;
  v27 = qword_100618C60;
  sub_1004B6DF4();
  v92 = v27;
  v28 = sub_1004BBED4();
  v93 = v11;
  v30 = v29;
  v31 = *(v9 + 8);
  v32 = v99;
  v31(v14, v99);
  v103 = v28;
  v104 = v30;
  v33 = swift_allocObject();
  v34 = v9 + 8;
  v35 = a1[3];
  v33[3] = a1[2];
  v33[4] = v35;
  v33[5] = a1[4];
  v36 = a1[1];
  v33[1] = *a1;
  v33[2] = v36;
  sub_10035D89C(a1, v102);
  v37 = sub_1002C4D1C();
  sub_1004BA4A4();
  sub_1004BBDA4();
  v98(v93, v14, v32);
  sub_1004B6DF4();
  v88 = v26;
  v38 = v31;
  v39 = sub_1004BBED4();
  v41 = v40;
  v87 = v34;
  v31(v14, v32);
  v103 = v39;
  v104 = v41;
  v42 = swift_allocObject();
  v43 = a1[3];
  v42[3] = a1[2];
  v42[4] = v43;
  v42[5] = a1[4];
  v44 = a1[1];
  v42[1] = *a1;
  v42[2] = v44;
  sub_10035D89C(a1, v102);
  v45 = v97;
  v86 = v37;
  v46 = v93;
  sub_1004BA4A4();
  v47 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v48 = v92;
    v82 = v38;
    v49 = v98;
    v50 = v99;
    v51 = [objc_opt_self() currentTraitCollection];
    v52 = [v51 userInterfaceIdiom];

    if (v52 == 6)
    {
      v47 = 1;
      v45 = v97;
      v38 = v82;
    }

    else
    {
      sub_1004BBDA4();
      v49(v46, v14, v50);
      v53 = v48;
      sub_1004B6DF4();
      v54 = sub_1004BBED4();
      v56 = v55;
      v38 = v82;
      v82(v14, v50);
      v103 = v54;
      v104 = v56;
      v57 = swift_allocObject();
      v58 = a1[3];
      v57[3] = a1[2];
      v57[4] = v58;
      v57[5] = a1[4];
      v59 = a1[1];
      v57[1] = *a1;
      v57[2] = v59;
      sub_10035D89C(a1, v102);
      v60 = v89;
      sub_1004BA4A4();
      (*(v90 + 32))(v101, v60, v91);
      v47 = 0;
      v45 = v97;
    }
  }

  v61 = v90;
  v62 = v91;
  (*(v90 + 56))(v101, v47, 1, v91);
  sub_1004BBDA4();
  v63 = v99;
  v98(v46, v14, v99);
  v64 = v92;
  sub_1004B6DF4();
  v65 = sub_1004BBED4();
  v67 = v66;
  v38(v14, v63);
  v103 = v65;
  v104 = v67;
  v68 = swift_allocObject();
  v69 = a1[3];
  v68[3] = a1[2];
  v68[4] = v69;
  v68[5] = a1[4];
  v70 = a1[1];
  v68[1] = *a1;
  v68[2] = v70;
  sub_10035D89C(a1, v102);
  v71 = v89;
  sub_1004BA4A4();
  v72 = *(v61 + 16);
  v73 = v94;
  v72(v94, v100, v62);
  v74 = v95;
  v72(v95, v45, v62);
  v75 = v85;
  sub_10000F778(v101, v85, &qword_10060EED8);
  v76 = v83;
  v72(v83, v71, v62);
  v77 = v84;
  v72(v84, v73, v62);
  v78 = sub_100003ABC(&qword_10060EEE0);
  v72(&v77[v78[12]], v74, v62);
  sub_10000F778(v75, &v77[v78[16]], &qword_10060EED8);
  v72(&v77[v78[20]], v76, v62);
  v79 = *(v61 + 8);
  v79(v71, v62);
  sub_100007214(v101, &qword_10060EED8);
  v79(v97, v62);
  v79(v100, v62);
  v79(v76, v62);
  sub_100007214(v75, &qword_10060EED8);
  v79(v95, v62);
  return (v79)(v94, v62);
}

uint64_t sub_100364500()
{
  sub_100003ABC(&unk_10060EEC0);
  sub_1004BA434();
  sub_100003ABC(&qword_10060C3C8);
  return sub_1004BA434();
}

uint64_t sub_10036458C(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  sub_1003600AC(0);
  v9 = sub_1004BB6C4();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000F778(v7, v4, &unk_10060EBE0);

  sub_1004B85B4();
  sub_100007214(v7, &unk_10060EBE0);
  v10 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v8 + v10) = 1;
  return result;
}

uint64_t sub_100364714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100365A78();
  sub_1004B8B84();
  swift_getKeyPath();
  sub_1004B8B94();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 64);
  sub_100003ABC(&unk_10060EEC0);
  sub_1004BA444();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 32);
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA444();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_100609CF0 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  sub_100003ABC(&unk_100609E80);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  sub_1004BA754();
  sub_1004B8994();
  v19 = v25;
  sub_100366288(v5, v25);
  v20 = (v19 + *(sub_100003ABC(&qword_10060EED0) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_1003667E8(v5, type metadata accessor for ImagePicker);
}

uint64_t sub_1003649B4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

uint64_t sub_100364A34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v3 = sub_100003ABC(&unk_10060EE90);
  __chkstk_darwin(v3 - 8);
  v88 = &v76 - v4;
  v5 = sub_100003ABC(&unk_10060DCC0);
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v76 - v8;
  __chkstk_darwin(v9);
  v85 = &v76 - v10;
  v84 = sub_100003ABC(&qword_10060EEA0);
  __chkstk_darwin(v84);
  v98 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v76 - v13;
  __chkstk_darwin(v14);
  v97 = &v76 - v15;
  v16 = sub_1004B6E64();
  __chkstk_darwin(v16 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004BBE14();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v87 = sub_100003ABC(&qword_10060EEA8);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v96 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v102 = &v76 - v28;
  v89 = a1;
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v29;
  sub_1004B85A4();

  v82 = v103;
  v81 = v104;
  sub_1004BBDA4();
  v30 = *(v20 + 16);
  v95 = v20 + 16;
  v94 = v30;
  v30(v22, v25, v19);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v31 = qword_100618C60;
  v32 = qword_100618C60;
  v76 = v18;
  sub_1004B6DF4();
  v33 = v32;
  v77 = v22;
  v79 = v31;
  v34 = sub_1004BBED4();
  v36 = v35;
  v93 = *(v20 + 8);
  v93(v25, v19);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100365A78();
  sub_1004B8B84();
  swift_getKeyPath();
  sub_1004B8B94();

  v105 = v34;
  v106 = v36;
  v80 = sub_1002C4D1C();
  sub_1004BA824();
  sub_1004BBDA4();
  v37 = v77;
  v78 = v19;
  v94(v77, v25, v19);
  sub_1004B6DF4();
  v38 = sub_1004BBED4();
  v40 = v39;
  v93(v25, v19);
  v103 = v38;
  v104 = v40;
  v41 = v85;
  sub_1004BA4A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v42 = String.trim()();

  v43 = (v42._object >> 56) & 0xF;
  if ((v42._object & 0x2000000000000000) == 0)
  {
    v43 = v42._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = v100;
  v48 = v83;
  (*(v100 + 32))(v83, v41, v101);
  v49 = (v48 + *(v84 + 36));
  *v49 = KeyPath;
  v49[1] = sub_10034F128;
  v49[2] = v46;
  v50 = v97;
  sub_100025B04(v48, v97, &qword_10060EEA0);
  sub_1004BBDA4();
  v51 = v78;
  v94(v37, v25, v78);
  sub_1004B6DF4();
  v52 = sub_1004BBED4();
  v54 = v53;
  v93(v25, v51);
  v105 = v52;
  v106 = v54;
  v55 = v88;
  sub_1004B86A4();
  v56 = sub_1004B86B4();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = swift_allocObject();
  v58 = v89;
  v59 = v89[3];
  *(v57 + 48) = v89[2];
  *(v57 + 64) = v59;
  *(v57 + 80) = v58[4];
  v60 = v58[1];
  *(v57 + 16) = *v58;
  *(v57 + 32) = v60;
  v61 = v81;
  *(v57 + 96) = v82;
  *(v57 + 104) = v61;
  sub_10035D89C(v58, &v103);
  v62 = v99;
  sub_1004BA494();
  v63 = v86;
  v64 = *(v86 + 16);
  v65 = v96;
  v66 = v87;
  v64(v96, v102, v87);
  sub_10000F778(v50, v98, &qword_10060EEA0);
  v67 = *(v47 + 16);
  v68 = v90;
  v69 = v101;
  v67(v90, v62, v101);
  v70 = v91;
  v64(v91, v65, v66);
  v71 = sub_100003ABC(&qword_10060EEB0);
  v72 = v98;
  sub_10000F778(v98, &v70[*(v71 + 48)], &qword_10060EEA0);
  v67(&v70[*(v71 + 64)], v68, v69);
  v73 = *(v100 + 8);
  v73(v99, v69);
  sub_100007214(v97, &qword_10060EEA0);
  v74 = *(v63 + 8);
  v74(v102, v66);
  v73(v68, v69);
  sub_100007214(v72, &qword_10060EEA0);
  return (v74)(v96, v66);
}

uint64_t sub_100365540@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1003655C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t sub_100365644(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_10000F778(&v7, v6, &qword_10060EEB8);

  return sub_1004B85B4();
}

uint64_t sub_10036572C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();
}

uint64_t sub_1003657A8(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10000F778(a1, &v9 - v6, &unk_10060EBE0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000F778(v7, v4, &unk_10060EBE0);

  sub_1004B85B4();
  return sub_100007214(v7, &unk_10060EBE0);
}

uint64_t sub_1003658D8@<X0>(uint64_t a1@<X8>)
{
  sub_1004BA414();
  sub_1004BA414();
  sub_1004BA414();
  sub_1004BA414();
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100365A78();
  result = sub_1004B8B74();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

void sub_1003659FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003600AC(v1);
}

uint64_t type metadata accessor for InlineProfileEditingView.Context()
{
  result = qword_10060ED10;
  if (!qword_10060ED10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100365A78()
{
  result = qword_10060EC30;
  if (!qword_10060EC30)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EC30);
  }

  return result;
}

unint64_t sub_100365AD8()
{
  result = qword_10060EC88;
  if (!qword_10060EC88)
  {
    sub_100003B68(&qword_10060EC50);
    sub_100365BEC(&qword_10060EC90, &qword_10060EC48, &unk_1004E25A8, sub_100365BBC);
    sub_1000206D4(&qword_10060B858, &unk_10060EC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EC88);
  }

  return result;
}

uint64_t sub_100365BEC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100365C70()
{
  result = qword_10060ECA0;
  if (!qword_10060ECA0)
  {
    sub_100003B68(&qword_10060EC38);
    sub_1000206D4(&qword_10060ECA8, &qword_10060ECB0);
    sub_1000206D4(&qword_10060E498, &qword_10060E4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060ECA0);
  }

  return result;
}

unint64_t sub_100365D5C()
{
  result = qword_10060ECD0;
  if (!qword_10060ECD0)
  {
    sub_100003B68(&qword_10060EC60);
    sub_100003B68(&qword_10060EC50);
    sub_100003B68(&qword_10060EC80);
    sub_100365AD8();
    sub_1002C4D1C();
    sub_1000206D4(&qword_10060ECB8, &qword_10060EC80);
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&qword_10060ECD8, &qword_10060ECC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060ECD0);
  }

  return result;
}

uint64_t sub_100365EE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100365F30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100365F9C()
{
  sub_100214418(319, &qword_10060ED20, &unk_10060EBE0);
  if (v0 <= 0x3F)
  {
    sub_1003660D8();
    if (v1 <= 0x3F)
    {
      sub_100214418(319, &unk_10060ED30, &qword_10060A770);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1003660D8()
{
  if (!qword_10060ED28)
  {
    v0 = sub_1004B85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_10060ED28);
    }
  }
}

uint64_t sub_100366128()
{
  sub_100003B68(&qword_10060EC60);
  sub_100003B68(&qword_10060ECC8);
  sub_100365D5C();
  sub_1002C4D1C();
  sub_1000206D4(&qword_10060ECE0, &qword_10060ECC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100366218()
{

  return swift_deallocObject();
}

uint64_t sub_100366288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100366338()
{

  return swift_deallocObject();
}

unint64_t sub_100366370()
{
  result = qword_10060EF60;
  if (!qword_10060EF60)
  {
    sub_100003B68(&qword_10060EF58);
    sub_100366428(&qword_10060EF68, &qword_10060EF70, &unk_1004E2818, sub_1003664D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EF60);
  }

  return result;
}

uint64_t sub_100366428(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2);
    a4();
    sub_1000206D4(&unk_10060E5F0, &qword_10060EF90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003664D8()
{
  result = qword_10060EF78;
  if (!qword_10060EF78)
  {
    sub_100003B68(&unk_10060EF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EF78);
  }

  return result;
}

unint64_t sub_10036655C()
{
  result = qword_10060EF98;
  if (!qword_10060EF98)
  {
    sub_100003B68(&qword_10060EF40);
    sub_100366428(&qword_10060EFA0, &qword_10060EA58, &unk_1004E2248, sub_100366614);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EF98);
  }

  return result;
}

unint64_t sub_100366614()
{
  result = qword_10060EFA8;
  if (!qword_10060EFA8)
  {
    sub_100003B68(&unk_10060EF30);
    sub_100316C80();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EFA8);
  }

  return result;
}

uint64_t sub_10036672C()
{

  return swift_deallocObject();
}

uint64_t sub_1003667E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  a3();
  v9 = type metadata accessor for HeightLimitedButtonTextView();
  result = a4(v9, v10, v11, v12);
  v14 = (a5 + *(v9 + 56));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_100003B68(&qword_10060EFF0);
  v33 = a1 + 5;
  v3 = a1[2];
  sub_1004B8D64();
  sub_1004B8D64();
  v31 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  v47 = &protocol witness table for _CompositingGroupEffect;
  v30 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v42 = sub_1004BA4B4();
  v43 = sub_1004B8E34();
  v44 = swift_getWitnessTable();
  v45 = sub_100366EBC();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  v26[3] = swift_getWitnessTable();
  v26[0] = sub_1004B8984();
  v29 = *(v26[0] - 8);
  __chkstk_darwin(v26[0]);
  v5 = v26 - v4;
  v6 = sub_1004B8D64();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v26[1] = swift_getWitnessTable();
  v26[2] = sub_1004B8EA4();
  v9 = sub_1004B8D64();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  v15 = a1[4];
  v16 = v32;
  sub_1004BA0C4();
  sub_1004B9934();
  *&v17 = v15;
  *(&v17 + 1) = *v33;
  *&v18 = v3;
  *(&v18 + 1) = v31;
  v35 = v18;
  v36 = v17;
  v37 = v16;
  sub_1004B8974();
  sub_1004BA754();
  v19 = sub_100367C90();
  v40 = v15;
  v41 = v19;
  v20 = swift_getWitnessTable();
  v21 = v26[0];
  sub_1004BA104();
  (*(v29 + 8))(v5, v21);
  (*(v28 + 8))(v8, v6);
  v22 = swift_getWitnessTable();
  v38 = v20;
  v39 = v22;
  v23 = swift_getWitnessTable();
  sub_100318364(v11, v9, v23);
  v24 = *(v27 + 8);
  v24(v11, v9);
  sub_100318364(v14, v9, v23);
  return (v24)(v14, v9);
}

unint64_t sub_100366EBC()
{
  result = qword_10060EFF8;
  if (!qword_10060EFF8)
  {
    sub_1004B8E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EFF8);
  }

  return result;
}

uint64_t sub_100366F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v70 = a3;
  v52 = a1;
  v74 = a6;
  v8 = sub_1004B8E34();
  v62 = v8;
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  v10 = sub_1004B8D64();
  WitnessTable = swift_getWitnessTable();
  v89 = &protocol witness table for _CompositingGroupEffect;
  v56 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v68 = v10;
  v67 = swift_getWitnessTable();
  v11 = sub_1004BA4B4();
  v63 = v11;
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v58 = &v50 - v12;
  v13 = swift_getWitnessTable();
  v61 = v13;
  v60 = sub_100366EBC();
  v84 = v11;
  v85 = v8;
  v86 = v13;
  v87 = v60;
  v64 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v50 - v16;
  sub_100003B68(&qword_10060EFF0);
  v51 = a2;
  v17 = sub_1004B8D64();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = sub_1004B8D64();
  v75 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  sub_1004BA194();
  v27 = sub_1003684AC();
  v83[4] = a4;
  v83[5] = v27;
  v28 = a4;
  v29 = swift_getWitnessTable();
  sub_1004BA184();
  (*(v18 + 8))(v20, v17);
  v83[2] = v29;
  v83[3] = &protocol witness table for _FixedSizeLayout;
  v54 = swift_getWitnessTable();
  v30 = v26;
  v53 = v23;
  sub_100318364(v23, v21, v54);
  v55 = *(v75 + 8);
  v56 = (v75 + 8);
  v55(v23, v21);
  v31 = v51;
  v32 = v70;
  v84 = v51;
  v85 = v70;
  v33 = v71;
  v86 = v28;
  v87 = v71;
  type metadata accessor for HeightLimitedButtonTextView();
  v76 = v31;
  v77 = v32;
  v78 = v28;
  v79 = v33;
  v80 = v52;

  v34 = v58;
  sub_1004BA474();
  v35 = v72;
  sub_1004B8E24();
  v36 = v57;
  v37 = v63;
  v38 = v62;
  v39 = v61;
  v40 = v60;
  sub_1004B9E14();
  (*(v73 + 8))(v35, v38);
  (*(v69 + 8))(v34, v37);
  v84 = v37;
  v85 = v38;
  v86 = v39;
  v87 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = OpaqueTypeMetadata2;
  sub_100318364(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v44 = v65;
  v45 = *(v65 + 8);
  v46 = v36;
  v45(v36, v43);
  v47 = v53;
  (*(v75 + 16))(v53, v30, v21);
  v84 = v47;
  (*(v44 + 16))(v46, v42, v43);
  v85 = v46;
  v83[0] = v21;
  v83[1] = v43;
  v81 = v54;
  v82 = OpaqueTypeConformance2;
  sub_100379EFC(&v84, 2uLL, v83);
  v45(v42, v43);
  v48 = v55;
  v55(v30, v21);
  v45(v46, v43);
  return v48(v47, v21);
}

uint64_t sub_100367744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v26 = a6;
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  v6 = sub_1004BA584();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_1004B8D64();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_1004B9364();
  sub_1004B91D4();
  v27 = v21;
  v28 = v22;
  v29 = v24;
  v30 = v25;
  v31 = v23;
  sub_1004BA574();
  WitnessTable = swift_getWitnessTable();
  sub_1004B9F24();
  (*(v7 + 8))(v9, v6);
  v32 = WitnessTable;
  v33 = &protocol witness table for _CompositingGroupEffect;
  v18 = swift_getWitnessTable();
  sub_100318364(v13, v10, v18);
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_100318364(v16, v10, v18);
  return (v19)(v16, v10);
}

uint64_t sub_100367A18@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a6;
  v10 = *(a3 - 1);
  __chkstk_darwin(a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v17 = *(v16 - 8);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v33 = v24;
  sub_100318364(v25, v26, v24);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v27 = v34;
  v42 = v34;
  v28 = type metadata accessor for HeightLimitedButtonTextView();
  sub_100318364(a1 + *(v28 + 52), a3, v27);
  (*(v17 + 16))(v20, v23, a2);
  v39 = v20;
  (*(v10 + 16))(v12, v15, a3);
  v40 = v12;
  v38[0] = a2;
  v38[1] = a3;
  v36 = v33;
  v37 = v27;
  sub_100379EFC(&v39, 2uLL, v38);
  v29 = *(v10 + 8);
  v29(v15, a3);
  v30 = *(v17 + 8);
  v30(v23, a2);
  v29(v12, a3);
  return (v30)(v20, a2);
}

unint64_t sub_100367C90()
{
  result = qword_10060F000[0];
  if (!qword_10060F000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10060F000);
  }

  return result;
}

unint64_t sub_100367D34()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_100316910();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100367DD8(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *sub_100367FA8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_10036820C()
{
  sub_1004B8D64();
  sub_100003B68(&qword_10060EFF0);
  sub_1004B8D64();
  sub_1004B8D64();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  sub_1004B8D64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004BA4B4();
  sub_1004B8E34();
  swift_getWitnessTable();
  sub_100366EBC();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004B8984();
  swift_getWitnessTable();
  sub_1004B8EA4();
  sub_1004B8D64();
  sub_100367C90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1003684AC()
{
  result = qword_10060F088;
  if (!qword_10060F088)
  {
    sub_100003B68(&qword_10060EFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F088);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100003ABC(&unk_100609F00);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel()
{
  result = qword_10060F148;
  if (!qword_10060F148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = sub_1004B9D54();
  v79 = *(v1 - 8);
  v80 = v1;
  __chkstk_darwin(v1);
  v78 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004B9184();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_10060EA08);
  v75 = v5;
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_100003ABC(&qword_10060F090);
  __chkstk_darwin(v8);
  v76 = &v70 - v9;
  Int.seconds.getter(44);
  sub_1004B9284();
  v10 = sub_1004B9D64();
  v12 = v11;
  v73 = v13;
  v74 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(sub_100003ABC(&qword_10060EA10) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = sub_1004B9CC4();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v76;
  v22 = v77;
  v7[16] = v73 & 1;
  *(v7 + 3) = v74;
  sub_1004B9AA4();
  sub_1003691FC();
  sub_1004B9DE4();
  sub_100007214(v7, &qword_10060EA08);
  v24 = sub_1004B9B44();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(sub_100003ABC(&qword_10060F0A8) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel() + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    v98 = v31 & 1;
  }

  else
  {

    sub_100369364(v31, 0);
    sub_1004BC994();
    v32 = sub_1004B9904();
    sub_1004B7F84();

    v33 = v70;
    sub_1004B9174();
    swift_getAtKeyPath();
    sub_10034C67C(v31, 0);
    (*(v71 + 8))(v33, v72);
  }

  v34 = v78;
  sub_1004B9D44();
  sub_100369370();
  v35 = v81;
  sub_1004BA1C4();
  (*(v79 + 8))(v34, v80);
  sub_10036951C(v23);
  v36 = sub_1004B9994();
  sub_1004B86C4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v35 + *(sub_100003ABC(&qword_10060F0C0) + 36);
  *v45 = v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  *(v45 + 32) = v44;
  *(v45 + 40) = 0;
  v46 = sub_1004B9974();
  sub_1004B86C4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v35 + *(sub_100003ABC(&qword_10060F0C8) + 36);
  *v55 = v46;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  v56 = sub_1004B9204();
  v90 = 0;
  sub_100368D38(&v83);
  v93 = v85;
  v94 = v86;
  v95 = v87;
  v96 = v88;
  v91 = v83;
  v92 = v84;
  v97[2] = v85;
  v97[3] = v86;
  v97[4] = v87;
  v97[5] = v88;
  v97[0] = v83;
  v97[1] = v84;
  sub_10000F778(&v91, &v82, &qword_10060F0D0);
  sub_100007214(v97, &qword_10060F0D0);
  *&v89[39] = v93;
  *&v89[55] = v94;
  *&v89[71] = v95;
  *&v89[87] = v96;
  *&v89[7] = v91;
  *&v89[23] = v92;
  v57 = v90;
  v58 = v35 + *(sub_100003ABC(&qword_10060F0D8) + 36);
  v59 = *(sub_100003ABC(&qword_10060F0E0) + 36);
  v60 = enum case for BlendMode.destinationOut(_:);
  v61 = sub_1004BA7E4();
  (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
  v62 = *&v89[32];
  *(v58 + 65) = *&v89[48];
  v63 = *&v89[80];
  *(v58 + 81) = *&v89[64];
  *(v58 + 97) = v63;
  v64 = *&v89[16];
  *(v58 + 17) = *v89;
  *(v58 + 33) = v64;
  *v58 = v56;
  *(v58 + 8) = 0;
  *(v58 + 16) = v57;
  *(v58 + 112) = *&v89[95];
  *(v58 + 49) = v62;
  v65 = sub_1004BA754();
  v67 = v66;
  result = sub_100003ABC(&qword_10060F0E8);
  v69 = (v58 + *(result + 36));
  *v69 = v65;
  v69[1] = v67;
  return result;
}

uint64_t sub_100368D38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B8D44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  type metadata accessor for MoreLabel();
  sub_100308A68(v8);
  (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
  v9 = sub_1004B8D34();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  sub_100003ABC(&qword_10060B4A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004C50C0;
  if (v9)
  {
    *(v11 + 32) = sub_1004BA284();
    v12 = sub_1004BA294();
  }

  else
  {
    *(v11 + 32) = sub_1004BA294();
    v12 = sub_1004BA284();
  }

  *(v11 + 40) = v12;
  sub_1004BA6F4();
  sub_1004BA8C4();
  sub_1004BA8D4();
  sub_1004B8B64();
  sub_1004BA754();
  sub_1004B8994();
  v13 = sub_1004BA284();
  v14 = v27;
  v20[2] = v26;
  v20[3] = v27;
  v15 = v28;
  v20[4] = v28;
  v16 = v29;
  v21 = v29;
  v17 = v24;
  v18 = v25;
  v20[0] = v24;
  v20[1] = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 80) = v16;
  *(a1 + 88) = v13;
  sub_10000F778(v20, v22, &qword_10060B960);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return sub_100007214(v22, &qword_10060B960);
}

uint64_t sub_100368FF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B90A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100369024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B90A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100369058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B90B4();
  *a1 = result;
  return result;
}

uint64_t sub_1003690B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B8FB4();
  *a1 = result;
  return result;
}

uint64_t sub_100369150(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060F1A8);
  __chkstk_darwin(v2 - 8);
  sub_10000F778(a1, &v5 - v3, &qword_10060F1A8);
  return sub_1004B9104();
}

unint64_t sub_1003691FC()
{
  result = qword_10060F098;
  if (!qword_10060F098)
  {
    sub_100003B68(&qword_10060EA08);
    sub_1000206D4(&qword_10060F0A0, &qword_10060EA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F098);
  }

  return result;
}

uint64_t sub_1003692B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B90B4();
  *a1 = result;
  return result;
}

uint64_t sub_10036930C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004B8FB4();
  *a1 = result;
  return result;
}

uint64_t sub_100369364(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100369370()
{
  result = qword_10060F0B0;
  if (!qword_10060F0B0)
  {
    sub_100003B68(&qword_10060F090);
    sub_100369428();
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F0B0);
  }

  return result;
}

unint64_t sub_100369428()
{
  result = qword_10060F0B8;
  if (!qword_10060F0B8)
  {
    sub_100003B68(&qword_10060F0A8);
    sub_100003B68(&qword_10060EA08);
    sub_1003691FC();
    swift_getOpaqueTypeConformance2();
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F0B8);
  }

  return result;
}

uint64_t sub_10036951C(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060F090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003695B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060C1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100369684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060C1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100369734()
{
  sub_1003697C8();
  if (v0 <= 0x3F)
  {
    sub_100369820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003697C8()
{
  if (!qword_10060C260)
  {
    sub_1004B8D44();
    v0 = sub_1004B8804();
    if (!v1)
    {
      atomic_store(v0, &qword_10060C260);
    }
  }
}

void sub_100369820()
{
  if (!qword_10060DBF0)
  {
    v0 = sub_1004B8804();
    if (!v1)
    {
      atomic_store(v0, &qword_10060DBF0);
    }
  }
}

unint64_t sub_100369874()
{
  result = qword_10060F188;
  if (!qword_10060F188)
  {
    sub_100003B68(&qword_10060F0D8);
    sub_10036992C();
    sub_1000206D4(&qword_10060F1A0, &qword_10060F0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F188);
  }

  return result;
}

unint64_t sub_10036992C()
{
  result = qword_10060F190;
  if (!qword_10060F190)
  {
    sub_100003B68(&qword_10060F0C8);
    sub_1003699B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F190);
  }

  return result;
}

unint64_t sub_1003699B8()
{
  result = qword_10060F198;
  if (!qword_10060F198)
  {
    sub_100003B68(&qword_10060F0C0);
    sub_100003B68(&qword_10060F090);
    sub_100369370();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F198);
  }

  return result;
}

double Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  *&v17 = a8;
  *(&v17 + 1) = a9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  *&v18[4] = a6;
  *&v18[5] = a7;
  *&v18[6] = a8;
  *&v18[7] = a9;
  sub_100369B0C(&v14, &v13);
  sub_100369B44(v18);
  v10 = v15;
  *a5 = v14;
  a5[1] = v10;
  result = *&v16;
  v12 = v17;
  a5[2] = v16;
  a5[3] = v12;
  return result;
}

id *sub_100369B74(void *a1)
{
  v2 = v1;
  [a1 setType:*v1];
  v4 = *(v1 + 2);
  if (v4)
  {
    sub_1002F18BC(v4);
    sub_100009130(0, &qword_10060CFF0);
    v5.super.isa = sub_1004BC284().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [a1 setLocations:v5.super.isa];

  isa = *(v2 + 3);
  if (isa)
  {
    sub_100009130(0, &qword_10060DF38);
    isa = sub_1004BC284().super.isa;
  }

  [a1 setInterpolations:isa];

  v7 = *(v2 + 1);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
    v8 = sub_1004BD6A4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_18:
    v7 = sub_1004BC284().super.isa;

LABEL_19:
    [a1 setColors:v7];

    [a1 setStartPoint:{v2[4], v2[5]}];
    return [a1 setEndPoint:{v2[6], v2[7]}];
  }

  v20 = _swiftEmptyArrayStorage;
  result = sub_1003BF7A8(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v20;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = sub_1004BD484();
      }

      else
      {
        v12 = *(v7 + v10 + 4);
      }

      v13 = v12;
      v14 = [v12 CGColor];
      _s3__C7CGColorCMa_0(0);
      v19 = v15;

      *&v18 = v14;
      v20 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_1003BF7A8((v16 > 1), v17 + 1, 1);
        v11 = v20;
      }

      ++v10;
      v11[2] = (v17 + 1);
      sub_10003E13C(&v18, &v11[4 * v17 + 4]);
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id Gradient.View.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_100369B0C(a1, v14);
  v13.receiver = v4;
  v13.super_class = v2;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_100369B74(v11);

  sub_100369B44(a1);
  return v9;
}

id Gradient.View.init(configuration:)(_OWORD *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v7;
  sub_100369B0C(a1, v13);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  sub_100369B74(v10);

  sub_100369B44(a1);
  return v8;
}

double Gradient.View.typedConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  sub_100369B0C(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t Gradient.View.typedConfiguration.setter(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v19[0] = *v3;
  v19[1] = v4;
  v5 = *(v3 + 3);
  v20 = *(v3 + 2);
  v21 = v5;
  v22[0] = v19[0];
  v22[1] = v4;
  v22[2] = v20;
  v22[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  sub_100369B0C(v19, v18);
  sub_100369B0C(a1, v18);
  sub_100369B44(v22);
  v8 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v8;
  v9 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v9;
  sub_100369B0C(v18, v17);
  v10 = _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);
  sub_100369B44(v18);
  if (v10)
  {
    sub_100369B44(v19);
  }

  else
  {
    v11 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v11;
    v12 = *(v3 + 3);
    v17[2] = *(v3 + 2);
    v17[3] = v12;
    sub_100369B0C(v17, v16);
    v13 = [v1 layer];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_100369B74(v14);
    sub_100369B44(v19);
    sub_100369B44(a1);

    a1 = v17;
  }

  return sub_100369B44(a1);
}

void (*Gradient.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_100369B0C(v4, (v4 + 16));
  return sub_10036A390;
}

void sub_10036A390(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    sub_100369B0C((v2 + 4), (v2 + 20));
    Gradient.View.typedConfiguration.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    sub_100369B44((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  free(v2);
}

id sub_10036A4B8(_OWORD *a1)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = objc_allocWithZone(v1);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  sub_100369B0C(v15, v14);
  v13.receiver = v5;
  v13.super_class = v1;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_100369B74(v11);

  sub_100369B44(v15);
  return v9;
}

uint64_t sub_10036A5B4@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_100369B0C(v9, v8);
}

uint64_t sub_10036A620(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return Gradient.View.typedConfiguration.setter(v4);
}

void (*sub_10036A654(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_100369B0C(v4, (v4 + 16));
  return sub_10036A390;
}

uint64_t sub_10036A710@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for Gradient;
  a1[4] = sub_10036B108();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  v7 = v4[3];
  v11 = v4[2];
  v6 = v11;
  v12 = v7;
  v3[1] = v10[0];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return sub_100369B0C(v10, v9);
}

uint64_t sub_10036A7B4(uint64_t a1)
{
  sub_10001342C(a1, v7);
  sub_100003ABC(&qword_10060A730);
  swift_dynamicCast();
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  Gradient.View.typedConfiguration.setter(v8);
  return sub_100004C6C(a1);
}

void (*sub_10036A848(void *a1))(_OWORD **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[50] = v1;
  v3[35] = &type metadata for Gradient;
  v3[36] = sub_10036B108();
  v5 = swift_allocObject();
  *(v4 + 256) = v5;
  v6 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v9;
  *v4 = v7;
  *(v4 + 16) = v8;
  v10 = v6[1];
  v5[1] = *v6;
  v5[2] = v10;
  v11 = v6[3];
  v5[3] = v6[2];
  v5[4] = v11;
  sub_100369B0C(v4, v4 + 192);
  return sub_10036A934;
}

void sub_10036A934(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10001342C((v2 + 16), v2 + 296);
    sub_10001342C(v2 + 296, (v2 + 21));
    sub_100003ABC(&qword_10060A730);
    swift_dynamicCast();
    v3 = v2[13];
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    Gradient.View.typedConfiguration.setter(v2 + 4);
    sub_100004C6C(v2 + 296);
  }

  else
  {
    sub_10001342C((v2 + 16), v2 + 296);
    sub_100003ABC(&qword_10060A730);
    swift_dynamicCast();
    v5 = v2[13];
    v2[8] = v2[12];
    v2[9] = v5;
    v6 = v2[15];
    v2[10] = v2[14];
    v2[11] = v6;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  sub_100004C6C((v2 + 16));

  free(v2);
}

id sub_10036AA40()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  v2 = v0[3];
  v17 = v0[2];
  v18 = v2;
  v3 = type metadata accessor for Gradient.View();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = v18;
  v8 = v15;
  v7 = v16;
  *(v5 + 2) = v17;
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_100369B0C(&v15, v14);
  sub_100369B0C(&v15, v14);
  v13.receiver = v4;
  v13.super_class = v3;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_100369B74(v11);

  sub_100369B44(&v15);
  sub_10036B044(&qword_10060F208);
  return v9;
}

uint64_t sub_10036AB6C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_100369B0C(v7, &v6);
}

BOOL sub_10036ABAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

double static Gradient.vertical(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_1004D9C20;
  v13 = xmmword_1004D9AE0;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = 0x3FE0000000000000;
  v15 = xmmword_1004D9C30;
  v16 = 0x3FF0000000000000;

  v5 = kCAGradientLayerAxial;

  sub_100369B0C(&v10, &v9);
  sub_100369B44(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

double static Gradient.horizontal(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_1004D9C30;
  v13 = xmmword_1004D9C40;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v15 = xmmword_1004D9C30;
  v16 = xmmword_1004D9C40;

  v5 = kCAGradientLayerAxial;

  sub_100369B0C(&v10, &v9);
  sub_100369B44(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

Swift::Void __swiftcall Gradient.flip()()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 48) = v1;
}

double Gradient.flipped()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = v1[2];
  v11 = v1[3];
  v12 = v4;
  sub_100369B0C(v1, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

BOOL _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BBE64();
  v6 = v5;
  if (v4 == sub_1004BBE64() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1004BD9C4();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_10032A078(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13)
  {
    if (!v14 || (sub_10032A08C(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 24);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = sub_10032A0E8(v15, v16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
}

unint64_t sub_10036AF54()
{
  result = qword_10060F1C0;
  if (!qword_10060F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F1C0);
  }

  return result;
}

uint64_t sub_10036AFA8(uint64_t a1)
{
  result = sub_10036B044(&qword_10060F208);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10036B044(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Gradient.View();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10036B084(uint64_t a1)
{
  *(a1 + 8) = sub_10036B0B4();
  result = sub_10036B108();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10036B0B4()
{
  result = qword_10060F240;
  if (!qword_10060F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F240);
  }

  return result;
}

unint64_t sub_10036B108()
{
  result = qword_10060F248;
  if (!qword_10060F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F248);
  }

  return result;
}

uint64_t sub_10036B16C()
{

  return swift_deallocObject();
}

uint64_t static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_100329778(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10036B224(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_100329778(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  sub_100025B04(a3, a5 + *(v8 + 20), &qword_10060EF20);
  return sub_10036E4A0(a4, a5 + *(v8 + 24), type metadata accessor for ArtworkImage.Placeholder);
}

uint64_t static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v80 = a3;
  v81 = a4;
  v75 = a2;
  v73 = a1;
  v79 = a8;
  v67 = *a7;
  v10 = *(a7 + 8);
  v11 = *(a7 + 16);
  v65 = a5;
  v66 = v11;
  v62 = *(a7 + 24);
  v63 = v10;
  v82 = *(a7 + 32);
  v61 = *(a7 + 40);
  v64 = *(a7 + 41);
  v12 = type metadata accessor for ArtworkImage.Placeholder(0);
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1004B7D04();
  v68 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003ABC(&unk_10060E030);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin(v18);
  v69 = &v60 - v19;
  v20 = sub_100003ABC(&qword_10060F278);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v60 - v22;
  v74 = sub_100003ABC(&qword_10060F280);
  __chkstk_darwin(v74);
  v78 = &v60 - v24;
  v77 = sub_100003ABC(&qword_10060F288);
  v25 = __chkstk_darwin(v77);
  v76 = &v60 - v26;
  (*(v15 + 104))(v17, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v14, v25);
  v27 = a6;
  v28 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10036E438(v27, v28, type metadata accessor for ArtworkImage.Placeholder);
  v29 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10036E4A0(v28, v31 + v29, type metadata accessor for ArtworkImage.Placeholder);
  v32 = (v31 + v30);
  v33 = *(a7 + 16);
  *v32 = *a7;
  v32[1] = v33;
  *(v32 + 26) = *(a7 + 26);
  v34 = v69;
  sub_100309EBC(v73, sub_10034C118, v31, a7, v17, v69);

  (*(v15 + 8))(v17, v68);
  v35 = v75;
  if (v75)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 1.0;
  }

  (*(v71 + 32))(v23, v34, v72);
  *&v23[*(v21 + 44)] = v36;
  v37 = sub_1004BA754();
  v39 = v35;
  if (v35)
  {
    LOBYTE(v90[0]) = v63 & 1;
    LOBYTE(v84) = v62 & 1;
    v83[0] = v61 & 1;
    v40 = v63 & 1;
    v41 = v62 & 1;
    v42 = v61 & 1 | (v64 << 8);
    v43 = v66;
    v35 = v65 & 1;
    v44 = v80;
    v45 = v81;
    v46 = v67;
    v47 = v82;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v47 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
  }

  v82 = v47;
  LODWORD(v71) = v42;
  *&v84 = v39;
  *(&v84 + 1) = v44;
  *&v85 = v45;
  *(&v85 + 1) = v35;
  *&v86 = v46;
  *(&v86 + 1) = v40;
  *&v87 = v43;
  *(&v87 + 1) = v41;
  *&v88 = v47;
  WORD4(v88) = v42;
  *&v89 = v37;
  *(&v89 + 1) = v38;
  v72 = v38;
  v73 = v37;
  v48 = v23;
  v49 = v78;
  v50 = v46;
  sub_100025B04(v48, v78, &qword_10060F278);
  v51 = (v49 + *(v74 + 36));
  v52 = v87;
  v51[2] = v86;
  v51[3] = v52;
  v53 = v89;
  v51[4] = v88;
  v51[5] = v53;
  v54 = v85;
  *v51 = v84;
  v51[1] = v54;
  v90[0] = v39;
  v90[1] = v44;
  v90[2] = v45;
  v90[3] = v35;
  v90[4] = v50;
  v90[5] = v40;
  v90[6] = v43;
  v90[7] = v41;
  v90[8] = v82;
  v91 = v71;
  v92 = v73;
  v93 = v72;

  sub_10000F778(&v84, v83, &qword_10060F290);
  sub_100007214(v90, &qword_10060F290);
  v55 = sub_1004BA7A4();
  v56 = v76;
  sub_100025B04(v49, v76, &qword_10060F280);
  v57 = (v56 + *(v77 + 36));
  *v57 = v55;
  v57[1] = v39;
  v58 = v81;
  v57[2] = v80;
  v57[3] = v58;
  sub_100025B04(v56, v79, &qword_10060F288);
}