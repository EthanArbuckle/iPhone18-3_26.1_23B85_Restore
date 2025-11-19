uint64_t CredentialSession.performTransaction(using:over:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  sub_23B969514();
  sub_23B9669FC();
  v6 = sub_23B969584();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_23B96639C, v6, v5);
}

uint64_t sub_23B96639C()
{
  v1 = v0[6];
  type metadata accessor for SESCAMPrivateUIScene();
  v2 = swift_dynamicCastClass();
  v0[11] = v2;
  if (v2)
  {
    v0[12] = OBJC_IVAR____TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene_magicString;
    sub_23B9695A4();
    v3 = v1;
    v0[13] = sub_23B969594();
    v4 = sub_23B969584();
    v6 = v5;
    v7 = sub_23B9664A0;
  }

  else
  {
    v0[16] = sub_23B9695A4();
    v0[17] = sub_23B969594();
    v4 = sub_23B969584();
    v6 = v8;
    v7 = sub_23B966604;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_23B9664A0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = (v3 + v2);
  swift_beginAccess();
  v0[14] = *v4;
  v0[15] = v4[1];
  v5 = v0[9];
  v6 = v0[10];

  return MEMORY[0x2822009F8](sub_23B966548, v5, v6);
}

uint64_t sub_23B966548()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 168) = v2;
  v3 = *(MEMORY[0x277CDBC98] + 4);
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_23B966860;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);

  return MEMORY[0x28212AE48](v7, v1, v2, v5);
}

uint64_t sub_23B966604()
{
  v1 = v0[17];
  v2 = v0[6];

  v0[18] = [v2 session];
  v3 = v0[9];
  v4 = v0[10];

  return MEMORY[0x2822009F8](sub_23B966688, v3, v4);
}

uint64_t sub_23B966688()
{
  v1 = *(v0 + 128);
  *(v0 + 152) = sub_23B969594();
  v3 = sub_23B969584();

  return MEMORY[0x2822009F8](sub_23B966714, v3, v2);
}

uint64_t sub_23B966714()
{
  v2 = v0[18];
  v1 = v0[19];

  v0[20] = [v2 persistentIdentifier];

  v3 = v0[9];
  v4 = v0[10];

  return MEMORY[0x2822009F8](sub_23B966798, v3, v4);
}

uint64_t sub_23B966798()
{
  v1 = v0[20];
  v2 = sub_23B969574();
  v4 = v3;

  v0[21] = v4;
  v5 = *(MEMORY[0x277CDBC98] + 4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_23B966860;
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[5];

  return MEMORY[0x28212AE48](v9, v2, v4, v7);
}

uint64_t sub_23B966860()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[9];
    v5 = v3[10];

    return MEMORY[0x2822009F8](sub_23B966998, v4, v5);
  }

  else
  {
    v6 = v3[21];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_23B966998()
{
  v1 = v0[21];

  v2 = v0[1];
  v3 = v0[23];

  return v2();
}

unint64_t sub_23B9669FC()
{
  result = qword_27E196130;
  if (!qword_27E196130)
  {
    sub_23B969514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E196130);
  }

  return result;
}

uint64_t CredentialSession.endCardEmulation()()
{
  v1 = *(MEMORY[0x277CDBCA0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_23B966B08;

  return MEMORY[0x28212AE50]();
}

uint64_t sub_23B966B08()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t CredentialSession.performCardEmulationTransactionWithCurrentCredential(over:options:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_23B969514();
  sub_23B9669FC();
  v5 = sub_23B969584();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x2822009F8](sub_23B966C88, v5, v4);
}

uint64_t sub_23B966C88()
{
  v1 = v0[5];
  type metadata accessor for SESCAMPrivateUIScene();
  v2 = swift_dynamicCastClass();
  v0[10] = v2;
  if (v2)
  {
    v0[11] = OBJC_IVAR____TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene_magicString;
    sub_23B9695A4();
    v3 = v1;
    v0[12] = sub_23B969594();
    v4 = sub_23B969584();
    v6 = v5;
    v7 = sub_23B966D8C;
  }

  else
  {
    v0[15] = sub_23B9695A4();
    v0[16] = sub_23B969594();
    v4 = sub_23B969584();
    v6 = v8;
    v7 = sub_23B966EE8;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_23B966D8C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = (v3 + v2);
  swift_beginAccess();
  v0[13] = *v4;
  v0[14] = v4[1];
  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x2822009F8](sub_23B966E34, v5, v6);
}

uint64_t sub_23B966E34()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  *(v0 + 160) = v2;
  v3 = *(MEMORY[0x277CDBC88] + 4);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_23B96713C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return MEMORY[0x28212AE30](v1, v2, v5);
}

uint64_t sub_23B966EE8()
{
  v1 = v0[16];
  v2 = v0[5];

  v0[17] = [v2 session];
  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x2822009F8](sub_23B966F6C, v3, v4);
}

uint64_t sub_23B966F6C()
{
  v1 = *(v0 + 120);
  *(v0 + 144) = sub_23B969594();
  v3 = sub_23B969584();

  return MEMORY[0x2822009F8](sub_23B966FF8, v3, v2);
}

uint64_t sub_23B966FF8()
{
  v2 = v0[17];
  v1 = v0[18];

  v0[19] = [v2 persistentIdentifier];

  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x2822009F8](sub_23B96707C, v3, v4);
}

uint64_t sub_23B96707C()
{
  v1 = v0[19];
  v2 = sub_23B969574();
  v4 = v3;

  v0[20] = v4;
  v5 = *(MEMORY[0x277CDBC88] + 4);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_23B96713C;
  v7 = v0[6];
  v8 = v0[7];

  return MEMORY[0x28212AE30](v2, v4, v7);
}

uint64_t sub_23B96713C()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[8];
    v5 = v3[9];

    return MEMORY[0x2822009F8](sub_23B967274, v4, v5);
  }

  else
  {
    v6 = v3[20];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_23B967274()
{
  v1 = v0[20];

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t CredentialSession.performWiredTransaction(using:over:instanceAID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_23B969514();
  sub_23B9669FC();
  v7 = sub_23B969584();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_23B967368, v7, v6);
}

uint64_t sub_23B967368()
{
  v1 = v0[6];
  type metadata accessor for SESCAMPrivateUIScene();
  v2 = swift_dynamicCastClass();
  v0[12] = v2;
  if (v2)
  {
    v0[13] = OBJC_IVAR____TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene_magicString;
    sub_23B9695A4();
    v3 = v1;
    v0[14] = sub_23B969594();
    v4 = sub_23B969584();
    v6 = v5;
    v7 = sub_23B96746C;
  }

  else
  {
    v0[17] = sub_23B9695A4();
    v0[18] = sub_23B969594();
    v4 = sub_23B969584();
    v6 = v8;
    v7 = sub_23B9675D4;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_23B96746C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = (v3 + v2);
  swift_beginAccess();
  v0[15] = *v4;
  v0[16] = v4[1];
  v5 = v0[10];
  v6 = v0[11];

  return MEMORY[0x2822009F8](sub_23B967514, v5, v6);
}

uint64_t sub_23B967514()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  *(v0 + 176) = v2;
  v3 = *(MEMORY[0x277CDBCA8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_23B967834;
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);

  return MEMORY[0x28212AE58](v8, v1, v2, v7, v5);
}

uint64_t sub_23B9675D4()
{
  v1 = v0[18];
  v2 = v0[6];

  v0[19] = [v2 session];
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x2822009F8](sub_23B967658, v3, v4);
}

uint64_t sub_23B967658()
{
  v1 = *(v0 + 136);
  *(v0 + 160) = sub_23B969594();
  v3 = sub_23B969584();

  return MEMORY[0x2822009F8](sub_23B9676E4, v3, v2);
}

uint64_t sub_23B9676E4()
{
  v2 = v0[19];
  v1 = v0[20];

  v0[21] = [v2 persistentIdentifier];

  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x2822009F8](sub_23B967768, v3, v4);
}

uint64_t sub_23B967768()
{
  v1 = v0[21];
  v2 = sub_23B969574();
  v4 = v3;

  v0[22] = v4;
  v5 = *(MEMORY[0x277CDBCA8] + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_23B967834;
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[5];

  return MEMORY[0x28212AE58](v10, v2, v4, v9, v7);
}

uint64_t sub_23B967834()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {
    v4 = v3[10];
    v5 = v3[11];

    return MEMORY[0x2822009F8](sub_23B96796C, v4, v5);
  }

  else
  {
    v6 = v3[22];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_23B96796C()
{
  v1 = v0[22];

  v2 = v0[1];
  v3 = v0[24];

  return v2();
}

uint64_t SESCAMPrivateUIScene.magicString.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene_magicString);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SESCAMPrivateUIScene.magicString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene_magicString);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id SESCAMPrivateUIScene.__allocating_init(session:connectionOptions:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSession:a1 connectionOptions:a2];

  return v5;
}

id SESCAMPrivateUIScene.init(session:connectionOptions:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene_magicString];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithSession_connectionOptions_, a1, a2);

  return v7;
}

id SESCAMPrivateUIScene.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t CredentialSessionWindowSceneEvent.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_23B967E00()
{
  if (*v0)
  {
    result = 0x61746E6573657270;
  }

  else
  {
    result = 0x6544726564616572;
  }

  *v0;
  return result;
}

uint64_t sub_23B967E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6544726564616572 && a2 == 0xEE00646574636574;
  if (v6 || (sub_23B969624() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B969624();

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

uint64_t sub_23B967F50(uint64_t a1)
{
  v2 = sub_23B96843C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B967F8C(uint64_t a1)
{
  v2 = sub_23B96843C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B967FD4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23B968010(uint64_t a1)
{
  v2 = sub_23B968490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B96804C(uint64_t a1)
{
  v2 = sub_23B968490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B968088(uint64_t a1)
{
  v2 = sub_23B9684E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B9680C4(uint64_t a1)
{
  v2 = sub_23B9684E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CredentialSessionWindowSceneEvent.encode(to:)(void *a1)
{
  v3 = sub_23B9683B0(&qword_27E196140, &qword_23B969920);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v20 - v5;
  v6 = sub_23B9683B0(&qword_27E196148, &qword_23B969928);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = sub_23B9683B0(&qword_27E196150, &qword_23B969930);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  sub_23B9683F8(a1, a1[3]);
  sub_23B96843C();
  sub_23B969674();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_23B968490();
    v18 = v22;
    sub_23B969614();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_23B9684E4();
    sub_23B969614();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t sub_23B9683B0(uint64_t *a1, uint64_t *a2)
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

void *sub_23B9683F8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B96843C()
{
  result = qword_27E196158;
  if (!qword_27E196158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E196158);
  }

  return result;
}

unint64_t sub_23B968490()
{
  result = qword_27E196160;
  if (!qword_27E196160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E196160);
  }

  return result;
}

unint64_t sub_23B9684E4()
{
  result = qword_27E196168;
  if (!qword_27E196168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E196168);
  }

  return result;
}

uint64_t CredentialSessionWindowSceneEvent.hashValue.getter()
{
  v1 = *v0;
  sub_23B969634();
  MEMORY[0x23EEB17F0](v1);
  return sub_23B969654();
}

uint64_t CredentialSessionWindowSceneEvent.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = sub_23B9683B0(&qword_27E196170, &qword_23B969938);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v30 - v6;
  v8 = sub_23B9683B0(&qword_27E196178, &qword_23B969940);
  v32 = *(v8 - 8);
  v9 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v30 - v10;
  v12 = sub_23B9683B0(&qword_27E196180, &qword_23B969948);
  v35 = *(v12 - 8);
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v30 - v14;
  v16 = a1[4];
  sub_23B9683F8(a1, a1[3]);
  sub_23B96843C();
  v17 = v37;
  sub_23B969664();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_23B969604();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_23B9695D4();
    swift_allocError();
    v25 = v24;
    v26 = *(sub_23B9683B0(&qword_27E196188, &qword_23B969950) + 48);
    *v25 = &type metadata for CredentialSessionWindowSceneEvent;
    sub_23B9695F4();
    sub_23B9695C4();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return sub_23B968A8C(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_23B968490();
    sub_23B9695E4();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_23B9684E4();
    sub_23B9695E4();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return sub_23B968A8C(v28);
}

uint64_t sub_23B968A00()
{
  v1 = *v0;
  sub_23B969634();
  MEMORY[0x23EEB17F0](v1);
  return sub_23B969654();
}

uint64_t sub_23B968A48()
{
  v1 = *v0;
  sub_23B969634();
  MEMORY[0x23EEB17F0](v1);
  return sub_23B969654();
}

uint64_t sub_23B968A8C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_23B968B08()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t UISceneConnectionOptions.credentialSessionEvent.getter()
{
  v0 = sub_23B968B94();

  return MEMORY[0x2821DDDF8](&type metadata for CredentialSessionEventSceneConnectionOptionDefinition, &type metadata for CredentialSessionEventSceneConnectionOptionDefinition, &type metadata for CredentialSessionWindowSceneEvent, v0);
}

unint64_t sub_23B968B94()
{
  result = qword_27E196190;
  if (!qword_27E196190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E196190);
  }

  return result;
}

uint64_t sub_23B968C04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_23B969350(a1, v5);
  v3 = swift_allocObject();
  sub_23B9693EC(v5, v3 + 16);
  result = swift_allocObject();
  *(result + 16) = sub_23B969404;
  *(result + 24) = v3;
  *a2 = sub_23B96947C;
  a2[1] = result;
  return result;
}

uint64_t sub_23B968C94(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_23B969554();
}

uint64_t CredentialSessionWindowSceneEvent.asBSAction()()
{
  v2 = *v0;
  sub_23B968B94();
  return sub_23B969524();
}

unint64_t sub_23B968DA0()
{
  result = qword_27E196198;
  if (!qword_27E196198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E196198);
  }

  return result;
}

uint64_t sub_23B968E40(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B968ED4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B968FCC()
{
  result = qword_27E1961A0;
  if (!qword_27E1961A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1961A0);
  }

  return result;
}

unint64_t sub_23B969024()
{
  result = qword_27E1961A8;
  if (!qword_27E1961A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1961A8);
  }

  return result;
}

unint64_t sub_23B96907C()
{
  result = qword_27E1961B0;
  if (!qword_27E1961B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1961B0);
  }

  return result;
}

unint64_t sub_23B9690D4()
{
  result = qword_27E1961B8;
  if (!qword_27E1961B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1961B8);
  }

  return result;
}

unint64_t sub_23B96912C()
{
  result = qword_27E1961C0;
  if (!qword_27E1961C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1961C0);
  }

  return result;
}

unint64_t sub_23B969184()
{
  result = qword_27E1961C8;
  if (!qword_27E1961C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1961C8);
  }

  return result;
}

unint64_t sub_23B9691DC()
{
  result = qword_27E1961D0;
  if (!qword_27E1961D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1961D0);
  }

  return result;
}

unint64_t sub_23B969234()
{
  result = qword_27E1961D8;
  if (!qword_27E1961D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1961D8);
  }

  return result;
}

unint64_t sub_23B96928C()
{
  result = qword_27E1961E0;
  if (!qword_27E1961E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1961E0);
  }

  return result;
}

uint64_t sub_23B9692E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B969318(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_23B969350(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B9693B4()
{
  sub_23B968A8C((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B9693EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23B969404(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = v2[5];
  v6 = v2[6];
  sub_23B9683F8(v2 + 2, v5);
  v8 = v4;
  return (*(v6 + 8))(a1, &v8, v5, v6);
}

uint64_t sub_23B96947C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}