void sub_1C993C8A4()
{
  sub_1C97AEB94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEA4C();
  (*(v3 + 16))(v5, v3);
  (*(v1 + 40))(v9, v7, AssociatedTypeWitness, v1);
  v12 = sub_1C97AEB30();
  v13(v12);
  sub_1C97AEB5C();
}

void sub_1C993C9CC()
{
  sub_1C9946068();
  sub_1C984C948();
  sub_1C984C99C();
  sub_1C984C9F0();
  sub_1C994607C();
  sub_1C9831D34(v1, v2, v3, v4, v5);
  WitnessTable = swift_getWitnessTable();
  sub_1C98316F0(v13, v0, WitnessTable, v7, v8, v9, v10, v11, v12, 0, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9]);
}

void sub_1C993CA90()
{
  swift_getWitnessTable();
  _s21ServerEnvironmentImplVMa();
  swift_getWitnessTable();
  sub_1C993C8A4();
}

uint64_t sub_1C993CB40()
{
  sub_1C99460E4();
  if (qword_1EC3C5E00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  memcpy(v5, &unk_1EC3D3360, 0x41uLL);
  v6 = v1;
  v7 = v0;
  sub_1C97E2DB0(__dst, v4);
  v2 = sub_1C985F310();
  sub_1C97AE434(v5, &qword_1EC3C76A0);
  return v2;
}

uint64_t sub_1C993CD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4F65707954646162 && a2 == 0xED0000657269576ELL;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F726566667562 && a2 == 0xEE00776F6C667265;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x52646570706F7264 && a2 == 0xED0000746C757365;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C9AD9ED0 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000021 && 0x80000001C9AD9EF0 == a2)
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

unint64_t sub_1C993CF1C(char a1)
{
  result = 0x4F65707954646162;
  switch(a1)
  {
    case 1:
      result = 0x764F726566667562;
      break;
    case 2:
      result = 0x52646570706F7264;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x726F707075736E75;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C993D008()
{
  sub_1C97AEB94();
  v24 = v2;
  sub_1C97A2CEC(&qword_1EC3CD878);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CD880);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CD888);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  sub_1C99460D8(v6);
  sub_1C97A2CEC(&qword_1EC3CD890);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  sub_1C994609C(v8);
  sub_1C97A2CEC(&qword_1EC3CD898);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C9945F4C();
  v10 = sub_1C97A2CEC(&qword_1EC3CD8A0);
  sub_1C97AE9C8();
  v23 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AEA4C();
  v13 = sub_1C97A2CEC(&qword_1EC3CD8A8);
  sub_1C97AE9C8();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2D8();
  v17 = sub_1C99460A8();
  sub_1C97A5A8C(v17, v18);
  sub_1C9943FE4();
  sub_1C9A93DD8();
  v19 = (v15 + 8);
  switch(v24)
  {
    case 1:
      sub_1C9944188();
      sub_1C9887C98();
      goto LABEL_8;
    case 2:
      sub_1C9944134();
      sub_1C9887C98();
      goto LABEL_8;
    case 3:
      sub_1C99440E0();
      sub_1C9887C98();
      goto LABEL_8;
    case 4:
      sub_1C994408C();
      sub_1C9887C98();
      goto LABEL_8;
    case 5:
      sub_1C9946090();
      sub_1C9944038();
      sub_1C9887C98();
LABEL_8:
      v20 = sub_1C9945F04();
      v22(v20, v21);
      break;
    default:
      sub_1C99441DC();
      sub_1C989950C();
      (*(v23 + 8))(v0, v10);
      break;
  }

  (*v19)(v1, v13);
  sub_1C97AEB5C();
}

void sub_1C993D4B0()
{
  sub_1C97AEB94();
  v77 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CD808);
  sub_1C97AE9C8();
  v70 = v5;
  v71 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v76 = v8;
  sub_1C97A2CEC(&qword_1EC3CD810);
  sub_1C97AE9C8();
  v68 = v9;
  v69 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AC02C();
  v75 = v12;
  sub_1C97A2CEC(&qword_1EC3CD818);
  sub_1C97AE9C8();
  v66 = v14;
  v67 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AC02C();
  v73 = v16;
  sub_1C97A2CEC(&qword_1EC3CD820);
  sub_1C97AE9C8();
  v64 = v18;
  v65 = v17;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97AC02C();
  v72 = v20;
  sub_1C97A2CEC(&qword_1EC3CD828);
  sub_1C97AE9C8();
  v62 = v22;
  v63 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97FB2D8();
  v24 = sub_1C97A2CEC(&qword_1EC3CD830);
  sub_1C97AE9C8();
  v61 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C9945F4C();
  v27 = sub_1C97A2CEC(&qword_1EC3CD838);
  sub_1C97AE9C8();
  v74 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v56 - v30;
  sub_1C97A5A8C(v4, v4[3]);
  sub_1C9943FE4();
  v32 = v77;
  sub_1C9A93DB8();
  if (v32)
  {
    goto LABEL_8;
  }

  v58 = v24;
  v59 = v0;
  v60 = v2;
  v77 = v4;
  v33 = sub_1C9A93958();
  sub_1C98EE524(v33, 0);
  if (v35 == v34 >> 1)
  {
LABEL_7:
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v52 = v51;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v52 = &type metadata for SoundRecognition.DomainError;
    sub_1C9A93868();
    sub_1C98994EC();
    sub_1C97AEB3C();
    (*(v53 + 104))(v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    v54 = sub_1C99460CC();
    v55(v54, v27);
    v4 = v77;
LABEL_8:
    sub_1C97A592C(v4);
LABEL_9:
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  v57 = v31;
  if (v39 < (v38 >> 1))
  {
    v40 = *(v37 + v36);
    v41 = sub_1C98EE520(v36 + 1);
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    v56[1] = v41;
    if (v43 == v45 >> 1)
    {
      v46 = v27;
      v47 = v74;
      switch(v40)
      {
        case 1:
          sub_1C9944188();
          sub_1C9945EC0();
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 2:
          sub_1C9944134();
          sub_1C9945EC0();
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 3:
          sub_1C99440E0();
          sub_1C9945EC0();
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 4:
          sub_1C994408C();
          sub_1C9945EC0();
          sub_1C9945F7C();
          swift_unknownObjectRelease();
LABEL_14:
          v48 = sub_1C9945F10();
          break;
        case 5:
          sub_1C9946090();
          sub_1C9944038();
          v41 = v57;
          sub_1C9A93858();
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          v48 = sub_1C99460C0();
          break;
        default:
          sub_1C99441DC();
          sub_1C9945EC0();
          sub_1C9945F7C();
          swift_unknownObjectRelease();
          v48 = sub_1C9945F10();
          v50 = v58;
          break;
      }

      v49(v48, v50);
      (*(v47 + 8))(v41, v46);
      sub_1C97A592C(v77);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C993DB84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463616E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
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

uint64_t sub_1C993DC48(char a1)
{
  if (a1)
  {
    return 0x657669746361;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

void sub_1C993DC7C()
{
  sub_1C97AEB94();
  v20 = v3;
  sub_1C97A2CEC(&qword_1EC3CD6F8);
  sub_1C97AE9C8();
  v18 = v5;
  v19 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2C8();
  v17 = sub_1C97A2CEC(&qword_1EC3CD700);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C9945F6C();
  v10 = sub_1C97A2CEC(&qword_1EC3CD708);
  sub_1C97AE9C8();
  v12 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97FB2D8();
  v14 = sub_1C99460A8();
  sub_1C97A5A8C(v14, v15);
  sub_1C9943914();
  sub_1C9A93DD8();
  v16 = (v12 + 8);
  if (v20)
  {
    sub_1C97FB3CC();
    sub_1C9943968();
    sub_1C989950C();
    (*(v18 + 8))(v0, v19);
  }

  else
  {
    sub_1C99439BC();
    sub_1C989950C();
    (*(v8 + 8))(v2, v17);
  }

  (*v16)(v1, v10);
  sub_1C97AEB5C();
}

void sub_1C993DEC0()
{
  sub_1C97AEB94();
  v3 = v2;
  v32 = sub_1C97A2CEC(&qword_1EC3CD728);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C9945F4C();
  v5 = sub_1C97A2CEC(&qword_1EC3CD730);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9945F6C();
  v7 = sub_1C97A2CEC(&unk_1EC3CD738);
  sub_1C97AE9C8();
  v31 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97FB2C8();
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9943914();
  sub_1C9A93DB8();
  if (v0)
  {
    goto LABEL_8;
  }

  v33 = v3;
  v10 = sub_1C9A93958();
  sub_1C98EE524(v10, 0);
  if (v12 == v11 >> 1)
  {
LABEL_7:
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v23 = v22;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v23 = &type metadata for SoundRecognition.Detection;
    sub_1C9A93868();
    sub_1C98994EC();
    sub_1C97AEB3C();
    (*(v24 + 104))(v23);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v31 + 8))(v1, v7);
    v3 = v33;
LABEL_8:
    sub_1C97A592C(v3);
LABEL_9:
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  if (v16 < (v15 >> 1))
  {
    v17 = *(v14 + v13);
    sub_1C98EE520(v13 + 1);
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    if (v19 == v21 >> 1)
    {
      if (v17)
      {
        sub_1C97FB3CC();
        sub_1C9943968();
        sub_1C988A520();
        swift_unknownObjectRelease();
        v25 = sub_1C99460CC();
        v26(v25, v32);
      }

      else
      {
        sub_1C99439BC();
        sub_1C988A520();
        swift_unknownObjectRelease();
        v29 = sub_1C9945F04();
        v30(v29, v5);
      }

      v27 = sub_1C988A4F0();
      v28(v27);
      sub_1C97A592C(v33);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C993E308()
{
  swift_getWitnessTable();
  type metadata accessor for AudioStreamAnalyzerEnvironmentImpl();
  swift_getWitnessTable();
  sub_1C993C8A4();
}

uint64_t sub_1C993E3B8(uint64_t a1)
{
  v2 = sub_1C99441DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E3F4(uint64_t a1)
{
  v2 = sub_1C99441DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E430(uint64_t a1)
{
  v2 = sub_1C9944188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E46C(uint64_t a1)
{
  v2 = sub_1C9944188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C993CD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C993E4F0(uint64_t a1)
{
  v2 = sub_1C9943FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E52C(uint64_t a1)
{
  v2 = sub_1C9943FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E568(uint64_t a1)
{
  v2 = sub_1C9944038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E5A4(uint64_t a1)
{
  v2 = sub_1C9944038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E5E0(uint64_t a1)
{
  v2 = sub_1C9944134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E61C(uint64_t a1)
{
  v2 = sub_1C9944134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E658(uint64_t a1)
{
  v2 = sub_1C99440E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E694(uint64_t a1)
{
  v2 = sub_1C99440E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E6D0(uint64_t a1)
{
  v2 = sub_1C994408C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E70C(uint64_t a1)
{
  v2 = sub_1C994408C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C993E748(_BYTE *a1@<X8>)
{
  sub_1C993D4B0();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C993E7A8(uint64_t a1)
{
  v2 = sub_1C9943968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E7E4(uint64_t a1)
{
  v2 = sub_1C9943968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C993DB84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C993E868(uint64_t a1)
{
  v2 = sub_1C9943914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E8A4(uint64_t a1)
{
  v2 = sub_1C9943914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993E8E0(uint64_t a1)
{
  v2 = sub_1C99439BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C993E91C(uint64_t a1)
{
  v2 = sub_1C99439BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C993E958(_BYTE *a1@<X8>)
{
  sub_1C993DEC0();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_1C993E9BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

void sub_1C993EA08()
{
  sub_1C97AEB94();
  v84 = v4;
  v6 = v5;
  v8 = v7;
  v81 = v9;
  v82 = v10;
  v79 = v11;
  sub_1C97A2CEC(&unk_1EC3CD650);
  sub_1C97AE9C8();
  v73 = v13;
  v74 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AC02C();
  v68 = v15;
  v72 = sub_1C97A2CEC(&unk_1EC3CE340);
  sub_1C97AE9C8();
  v70 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v66 = v18;
  v69 = sub_1C97A2CEC(&unk_1EC3CD660);
  sub_1C97AE9C8();
  v67 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C9945F6C();
  v21 = sub_1C97A2CEC(&unk_1EC3CE350);
  sub_1C97AE9C8();
  v71 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97FB2D8();
  sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v77 = v25;
  v78 = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C9945F4C();
  sub_1C9A91C28();
  sub_1C97AE9C8();
  v75 = v28;
  v76 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C97A2CEC(&unk_1EC3CD670);
  sub_1C97AE9C8();
  v33 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  v80 = v35;
  v36 = *(v6 + 40);
  v37 = v82;
  v82 = v8;
  v83 = v6;
  v36(v81, v37, v84, v6);
  if (!v1)
  {
    v65 = v33;
    v81 = v31;
    v61[0] = v3;
    v61[1] = v2;
    v62 = v21;
    v64 = 0;
    v63 = sub_1C9832398();

    v39 = v75;
    v38 = v76;
    (*(v75 + 104))(v30, *MEMORY[0x1E695BD20], v76);
    *v0 = sub_1C993F164;
    v0[1] = 0;
    v41 = v77;
    v40 = v78;
    (*(v77 + 104))(v0, *MEMORY[0x1E695BD48], v78);
    sub_1C97A2CEC(&unk_1EC3CC280);
    sub_1C97AE9EC();
    sub_1C97AE67C(v42, &unk_1EC3CC280);
    v43 = v80;
    sub_1C9A92018();
    (*(v41 + 8))(v0, v40);
    (*(v39 + 8))(v30, v38);
    sub_1C9945F7C();

    MEMORY[0x1EEE9AC00](v44);
    v45 = v83;
    v61[-6] = v84;
    v61[-5] = v45;
    v46 = v82;
    v61[-4] = v79;
    v61[-3] = v46;
    v61[-2] = v43;
    v47 = v64;
    sub_1C993B6C4();
    if (v47)
    {
      v48 = sub_1C9945F10();
    }

    else
    {
      sub_1C97A2CEC(&unk_1EC3CC2B0);
      sub_1C97A2CEC(&qword_1EC3CD680);
      sub_1C97AE9EC();
      sub_1C97AE67C(v50, &unk_1EC3CC2B0);
      sub_1C9A92048();
      sub_1C97A2CEC(&qword_1EC3C9AA0);
      sub_1C9A91CA8();
      v51 = sub_1C97AEB30();
      v52(v51);
      v53 = v72;
      sub_1C9A91CA8();
      v54 = sub_1C9945F10();
      v55(v54, v53);
      sub_1C9A91CA8();
      v56 = sub_1C97AEB30();
      v57(v56);
      sub_1C97AE67C(&qword_1EC3CD688, &unk_1EC3CE350);
      v58 = v62;
      sub_1C9A91F28();

      v59 = sub_1C9945F10();
      v60(v59, v58);
      v48 = sub_1C99460C0();
    }

    v49(v48, v81);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C993F16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v21 = a2;
  v22 = a4;
  v24 = a1;
  v20 = a5;
  v7 = sub_1C97A2CEC(&unk_1EC3CE360);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v19 - v13;
  (*(v11 + 16))(a3, v11);
  sub_1C97A2CEC(&unk_1EC3CD670);
  sub_1C97AE67C(&qword_1EC3CD6A0, &unk_1EC3CD670);
  sub_1C9A91F68();
  sub_1C97AE67C(&unk_1EC3CE370, &unk_1EC3CE360);
  sub_1C9A91F28();
  (*(v8 + 8))(v10, v7);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v15 = v25;
  sub_1C99F4F74();
  if (v15)
  {
    (*(v23 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v18 = v16;
    (*(v23 + 8))(v14, AssociatedTypeWitness);

    *v20 = v18;
  }

  return result;
}

void *sub_1C993F4A4@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    result = sub_1C9A08564(a1, (a2 - a1) / 4);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a3 = result;
  return result;
}

uint64_t sub_1C993F4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97BD360(a1, v7);
  sub_1C97A2CEC(&qword_1EC3CD680);
  if (swift_dynamicCast())
  {
    return sub_1C979B054(v5, a2);
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_1C97AE434(v5, &unk_1EC3CD690);
  sub_1C99437EC();
  sub_1C97AA928();
  swift_allocError();
  *v4 = 0;
  return swift_willThrow();
}

void *sub_1C993F5BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1C97A5A8C(a1, v3);
  v5 = *(v4 + 8);
  v6 = sub_1C97A2CEC(&qword_1EC3C9AA0);
  result = v5(&v8, sub_1C993F4A4, 0, v6, v3, v4);
  *a2 = v8;
  return result;
}

uint64_t sub_1C993F668@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  if (*(*result + 16))
  {
    *a2 = *(*result + 32) > 0.5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C993F690()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&unk_1EC3CE320);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEA4C();
  sub_1C993EA08();
  if (!v0)
  {
    v2 = sub_1C99460A8();
    sub_1C97A2CEC(v2);
    sub_1C97AE9EC();
    sub_1C97AE67C(v3, &unk_1EC3C9AC0);
    sub_1C9943854();
    sub_1C9A920D8();

    sub_1C97AE67C(&unk_1EC3CE330, &unk_1EC3CE320);
    sub_1C9A91F28();
    v4 = sub_1C97AEB30();
    v5(v4);
  }

  sub_1C97AEB5C();
}

void sub_1C993F83C()
{
  sub_1C97AEB94();
  LODWORD(v72) = v1;
  v3 = v2;
  v86 = v4;
  sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v84 = v6;
  v85 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  sub_1C99460D8(v8);
  sub_1C9A91C28();
  sub_1C97AE9C8();
  v81 = v10;
  v82 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C994609C(&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1C97A2CEC(&qword_1EC3CB4F0);
  sub_1C97AE9C8();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v66 - v20;
  sub_1C97A2CEC(&qword_1EC3C7740);
  sub_1C97AE9C8();
  v73 = v23;
  v74 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AC02C();
  sub_1C97ABFB4(v25);
  sub_1C97A2CEC(&qword_1EC3CD5C0);
  sub_1C97AE9C8();
  v76 = v27;
  v77 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  v75 = v29;
  sub_1C97A2CEC(&qword_1EC3CD5C8);
  sub_1C97AE9C8();
  v78 = v31;
  v79 = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  sub_1C99460B4(v33);
  v35 = *(v3 + 24);
  v34 = *(v3 + 32);
  v36 = sub_1C9871794();
  sub_1C97A5A8C(v36, v37);
  (*(*(v34 + 8) + 8))(v35);
  if (!v0)
  {
    v71 = 0;
    v38 = sub_1C99CFB50();

    sub_1C98F9BA0(v3, &v87);
    v39 = swift_allocObject();
    *(v39 + 16) = v72;
    sub_1C98F9C04(&v87, (v39 + 24));
    sub_1C9A91738();
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    sub_1C9A93728();
    v68 = *(&v87 + 1);
    v72 = v87;
    *&v87 = v38;
    *(&v87 + 1) = sub_1C99400D8;
    v88 = 0;
    v89 = sub_1C99436E8;
    v90 = v39;
    v91 = 1;
    v70 = v38;

    v67 = v12;
    v69 = v39;

    sub_1C97A2CEC(&qword_1EC3CD5D0);
    sub_1C97AE67C(&qword_1EC3CE3F0, &qword_1EC3CD5D0);
    sub_1C9A91F68();

    v40 = v67;
    (*(v14 + 16))(v19, v21, v67);
    v41 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1C9945DA8;
    *(v42 + 24) = 0;
    (*(v14 + 32))(v42 + v41, v19, v40);
    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C97AE9EC();
    sub_1C97AE67C(v43, &unk_1EC3C9AC0);
    sub_1C9A91EF8();
    (*(v14 + 8))(v21, v40);
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C9946054();
    *&v87 = v45;
    *(&v87 + 1) = v44;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v46 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v46);

    MEMORY[0x1CCA90230](10272, 0xE200000000000000);
    MEMORY[0x1CCA90230](v72, v68);

    MEMORY[0x1CCA90230](2112041, 0xE300000000000000);
    sub_1C993AFD4();

    v47 = sub_1C99460C0();
    v48(v47);
    sub_1C9945DD0();
    sub_1C97AE67C(v49, v50);
    v51 = v77;
    v52 = sub_1C9A92008();
    v74 = sub_1C97A2CEC(&qword_1EC3CD5E0);
    sub_1C97AA878();
    swift_allocObject();
    v53 = sub_1C993C084(v52);
    v54 = sub_1C9945F10();
    v55(v54, v51);
    *&v87 = v53;
    v57 = v80;
    v56 = v81;
    v58 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x1E695BD20], v82);
    v60 = v83;
    v59 = v84;
    *v83 = sub_1C994043C;
    v60[1] = 0;
    v61 = v85;
    (*(v59 + 104))(v60, *MEMORY[0x1E695BD48], v85);
    sub_1C97AE67C(&qword_1EC3CD5E8, &qword_1EC3CD5E0);
    sub_1C9A92018();
    (*(v59 + 8))(v60, v61);
    (*(v56 + 8))(v57, v58);

    sub_1C97AE67C(&qword_1EC3CD5F0, &qword_1EC3CD5C8);
    v62 = v79;
    v63 = sub_1C9A91F28();

    v64 = sub_1C9945F10();
    v65(v64, v62);
    *(v86 + *(type metadata accessor for SoundRecognition.Session() + 20)) = v63;
  }

  sub_1C97AEB5C();
}

void sub_1C99400D8(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = sub_1C97A2CEC(&qword_1EC3CD610);
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v14 - v2;
  v3 = MEMORY[0x1E69E7CC0];
  v18 = xmmword_1C9A9EDD0;
  while (1)
  {
    v4 = sub_1C993B624();
    if (v1)
    {

      return;
    }

    v6 = v5;
    if (v5 == -1)
    {
      v19 = v3;
      sub_1C97A2CEC(&qword_1EC3CD618);
      sub_1C97AE67C(&unk_1EC3CD620, &qword_1EC3CD618);
      v12 = v14;
      sub_1C9A92658();

      sub_1C97A2CEC(&unk_1EC3CA040);
      v13 = v17;
      sub_1C9A91CE8();
      (*(v15 + 8))(v12, v13);
      return;
    }

    v7 = v4;
    sub_1C97A2CEC(&unk_1EC3C7750);
    inited = swift_initStackObject();
    *(inited + 16) = v18;
    *(inited + 32) = v7;
    *(inited + 40) = v6;
    v9 = *(v3 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || (v10 = *(v3 + 24) >> 1, v10 <= v9))
    {
      sub_1C97E69E4();
      v3 = v11;
      v10 = *(v11 + 24) >> 1;
    }

    if (v10 <= *(v3 + 16))
    {
      break;
    }

    sub_1C97A2CEC(&qword_1EC3C7B90);
    swift_arrayInitWithCopy();

    ++*(v3 + 16);
  }

  __break(1u);
}

uint64_t sub_1C994037C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[5];
  v8 = sub_1C97A5A8C(a2, v6);
  v12[3] = v6;
  v12[4] = v7;
  v9 = sub_1C981CDF0(v12);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  v10 = sub_1C9890AB8(a1, v12);
  result = sub_1C97A592C(v12);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1C9940444@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_1C99437EC();
  sub_1C97AA928();
  result = swift_allocError();
  *a2 = result;
  *v5 = a1;
  return result;
}

uint64_t sub_1C9940488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616C41656B6F6D73 && a2 == 0xEA00000000006D72;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7373657274736964 && a2 == 0xEE00796261426465;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1885693282 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72657A7A7562 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E726F48726163 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x776F654D746163 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6867756F63 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6C6542676E6964 && a2 == 0xE800000000000000;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6B726142676F64 && a2 == 0xE700000000000000;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C6C6542726F6F64 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x636F6E4B726F6F64 && a2 == 0xE90000000000006BLL;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x72616C4165726966 && a2 == 0xE90000000000006DLL;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6572427373616C67 && a2 == 0xED0000676E696B61;
                          if (v17 || (sub_1C9A93B18() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6857656C7474656BLL && a2 == 0xEF676E696C747369;
                            if (v18 || (sub_1C9A93B18() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x74756F6873 && a2 == 0xE500000000000000;
                              if (v19 || (sub_1C9A93B18() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x616C416E65726973 && a2 == 0xEA00000000006D72;
                                if (v20 || (sub_1C9A93B18() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x6E75527265746177 && a2 == 0xEC000000676E696ELL)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_1C9A93B18();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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

uint64_t sub_1C99409B4(char a1)
{
  result = 0x616C41656B6F6D73;
  switch(a1)
  {
    case 1:
      result = 0x7373657274736964;
      break;
    case 2:
      result = 1885693282;
      break;
    case 3:
      result = 0x72657A7A7562;
      break;
    case 4:
      result = 0x6E726F48726163;
      break;
    case 5:
      result = 0x776F654D746163;
      break;
    case 6:
      result = 0x6867756F63;
      break;
    case 7:
      v3 = 1735289188;
      goto LABEL_13;
    case 8:
      result = 0x6B726142676F64;
      break;
    case 9:
      v3 = 1919905636;
LABEL_13:
      result = v3 | 0x6C6C654200000000;
      break;
    case 10:
      result = 0x636F6E4B726F6F64;
      break;
    case 11:
      result = 0x72616C4165726966;
      break;
    case 12:
      result = 0x6572427373616C67;
      break;
    case 13:
      result = 0x6857656C7474656BLL;
      break;
    case 14:
      result = 0x74756F6873;
      break;
    case 15:
      result = 0x616C416E65726973;
      break;
    case 16:
      result = 0x6E75527265746177;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C9940B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v23;
  a20 = v24;
  v123 = v25;
  sub_1C97A2CEC(&qword_1EC3CD9D0);
  sub_1C97AE9C8();
  v122[0] = v27;
  v122[1] = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  v121[2] = v29;
  sub_1C97A2CEC(&qword_1EC3CD9D8);
  sub_1C97AE9C8();
  v121[0] = v31;
  v121[1] = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  sub_1C99460D8(v33);
  sub_1C97A2CEC(&qword_1EC3CD9E0);
  sub_1C97AE9C8();
  v120[0] = v35;
  v120[1] = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  sub_1C994609C(v37);
  sub_1C97A2CEC(&qword_1EC3CD9E8);
  sub_1C97AE9C8();
  v119[0] = v39;
  v119[1] = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  sub_1C99460B4(v41);
  sub_1C97A2CEC(&qword_1EC3CD9F0);
  sub_1C97AE9C8();
  v117 = v43;
  v118 = v42;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  v116 = v45;
  sub_1C97A2CEC(&qword_1EC3CD9F8);
  sub_1C97AE9C8();
  v114 = v47;
  v115 = v46;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C97AC02C();
  sub_1C97ABFB4(v49);
  v50 = sub_1C97A2CEC(&qword_1EC3CDA00);
  sub_1C97ABF78(v50, &a17);
  v113 = v51;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C97AC02C();
  sub_1C97ABFB4(v53);
  v54 = sub_1C97A2CEC(&qword_1EC3CDA08);
  sub_1C97ABF78(v54, &a14);
  v112 = v55;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C97AC02C();
  sub_1C97ABFB4(v57);
  v58 = sub_1C97A2CEC(&qword_1EC3CDA10);
  sub_1C97ABF78(v58, &a11);
  v111 = v59;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C97AC02C();
  sub_1C97ABFB4(v61);
  v62 = sub_1C97A2CEC(&qword_1EC3CDA18);
  sub_1C97ABF78(v62, &v126);
  v110 = v63;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C97AC02C();
  sub_1C97ABFB4(v65);
  v66 = sub_1C97A2CEC(&qword_1EC3CDA20);
  sub_1C97ABF78(v66, &v124);
  v109 = v67;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C97AC02C();
  sub_1C97ABFB4(v69);
  v70 = sub_1C97A2CEC(&qword_1EC3CDA28);
  sub_1C97ABF78(v70, v122);
  v108 = v71;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C97AC02C();
  sub_1C97ABFB4(v73);
  v74 = sub_1C97A2CEC(&qword_1EC3CDA30);
  sub_1C97ABF78(v74, v121);
  v107 = v75;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C97AC02C();
  sub_1C97ABFB4(v77);
  v78 = sub_1C97A2CEC(&qword_1EC3CDA38);
  sub_1C97ABF78(v78, v120);
  v106 = v79;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v80);
  sub_1C97AC02C();
  sub_1C97ABFB4(v81);
  v82 = sub_1C97A2CEC(&qword_1EC3CDA40);
  sub_1C97ABF78(v82, v119);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C97AC02C();
  sub_1C97ABFB4(v84);
  v85 = sub_1C97A2CEC(&qword_1EC3CDA48);
  sub_1C97AE9C8();
  v105 = v86;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C97FB2C8();
  v88 = sub_1C97A2CEC(&qword_1EC3CDA50);
  sub_1C97AE9C8();
  v104 = v89;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C97AEA4C();
  v125 = sub_1C97A2CEC(&qword_1EC3CDA58);
  sub_1C97AE9C8();
  v92 = v91;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v93);
  sub_1C9945F6C();
  v94 = sub_1C99460A8();
  v96 = sub_1C97A5A8C(v94, v95);
  sub_1C9944230();
  v124 = v22;
  sub_1C9A93DD8();
  v97 = (v92 + 8);
  switch(v123)
  {
    case 1:
      sub_1C97FB3CC();
      sub_1C9944770();
      v96 = v124;
      v20 = v125;
      sub_1C9A93988();
      (*(v105 + 8))(v21, v85);
      goto LABEL_22;
    case 2:
      sub_1C994471C();
      sub_1C9945E4C();
      v100 = sub_1C9945EB0();
      v102 = v119;
      goto LABEL_20;
    case 3:
      sub_1C99446C8();
      sub_1C9945E4C();
      v100 = sub_1C9945EB0();
      v102 = v120;
      goto LABEL_20;
    case 4:
      sub_1C9944674();
      sub_1C9945E4C();
      v100 = sub_1C9945EB0();
      v102 = v121;
      goto LABEL_20;
    case 5:
      sub_1C9946090();
      sub_1C9944620();
      sub_1C9945E4C();
      v100 = sub_1C9945EB0();
      v102 = v122;
      goto LABEL_20;
    case 6:
      sub_1C99445CC();
      sub_1C9945E4C();
      v100 = sub_1C9945EB0();
      v102 = &v124;
      goto LABEL_20;
    case 7:
      sub_1C9944578();
      sub_1C9945E4C();
      v100 = sub_1C9945EB0();
      v102 = &v126;
      goto LABEL_20;
    case 8:
      sub_1C9944524();
      sub_1C9945E4C();
      v100 = sub_1C9945EB0();
      v102 = &a11;
      goto LABEL_20;
    case 9:
      sub_1C99444D0();
      sub_1C9945E4C();
      v100 = sub_1C9945EB0();
      v102 = &a14;
      goto LABEL_20;
    case 10:
      sub_1C994447C();
      sub_1C9945E4C();
      v100 = sub_1C9945EB0();
      v102 = &a17;
LABEL_20:
      v103 = *(v102 - 32);
      goto LABEL_21;
    case 11:
      sub_1C9944428();
      sub_1C9945E4C();
      goto LABEL_16;
    case 12:
      sub_1C99443D4();
      sub_1C9945E90();
      goto LABEL_16;
    case 13:
      sub_1C9944380();
      sub_1C9945E90();
      goto LABEL_16;
    case 14:
      sub_1C994432C();
      sub_1C9945E90();
      goto LABEL_16;
    case 15:
      sub_1C99442D8();
      sub_1C9945E90();
      goto LABEL_16;
    case 16:
      sub_1C9944284();
      sub_1C9945E90();
LABEL_16:
      v100 = sub_1C9945F10();
LABEL_21:
      v101(v100, v103);
LABEL_22:
      (*v97)(v96, v20);
      break;
    default:
      sub_1C99447C4();
      v98 = v124;
      v99 = v125;
      sub_1C9A93988();
      (*(v104 + 8))(v20, v88);
      (*v97)(v98, v99);
      break;
  }

  sub_1C97AEB5C();
}

void sub_1C99417A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v22;
  a20 = v23;
  v159 = v21;
  v25 = v24;
  v156[0] = sub_1C97A2CEC(&qword_1EC3CD8B0);
  sub_1C97AE9C8();
  v150[2] = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v155[1] = v28;
  sub_1C97A2CEC(&qword_1EC3CD8B8);
  sub_1C97AE9C8();
  v150[0] = v30;
  v150[1] = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AC02C();
  v155[0] = v32;
  v33 = sub_1C97A2CEC(&qword_1EC3CD8C0);
  sub_1C97ABF78(v33, &a18);
  v149 = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v154[1] = v36;
  v37 = sub_1C97A2CEC(&qword_1EC3CD8C8);
  sub_1C97ABF78(v37, &a16);
  v148 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  sub_1C99460D8(v40);
  v41 = sub_1C97A2CEC(&qword_1EC3CD8D0);
  sub_1C97ABF78(v41, &a14);
  v147 = v42;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C97AC02C();
  v153[1] = v44;
  v45 = sub_1C97A2CEC(&qword_1EC3CD8D8);
  sub_1C97ABF78(v45, &a12);
  v146 = v46;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AC02C();
  v153[0] = v48;
  v49 = sub_1C97A2CEC(&qword_1EC3CD8E0);
  sub_1C97ABF78(v49, &a10);
  v145 = v50;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  sub_1C994609C(v52);
  v53 = sub_1C97A2CEC(&qword_1EC3CD8E8);
  sub_1C97ABF78(v53, &v160);
  v144 = v54;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C97AC02C();
  v152[0] = v56;
  v57 = sub_1C97A2CEC(&qword_1EC3CD8F0);
  sub_1C97ABF78(v57, &v158);
  v143 = v58;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C97AC02C();
  v150[4] = v60;
  v61 = sub_1C97A2CEC(&qword_1EC3CD8F8);
  sub_1C97ABF78(v61, v157);
  v142 = v62;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C97AC02C();
  v157[1] = v64;
  v65 = sub_1C97A2CEC(&qword_1EC3CD900);
  sub_1C97ABF78(v65, v156);
  v141 = v66;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C97AC02C();
  v157[0] = v68;
  v69 = sub_1C97A2CEC(&qword_1EC3CD908);
  sub_1C97ABF78(v69, v155);
  v140 = v70;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C97AC02C();
  v151[1] = v72;
  v73 = sub_1C97A2CEC(&qword_1EC3CD910);
  sub_1C97ABF78(v73, v154);
  v139 = v74;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C97AC02C();
  sub_1C99460B4(v76);
  v77 = sub_1C97A2CEC(&qword_1EC3CD918);
  sub_1C97ABF78(v77, v153);
  v138 = v78;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C97AC02C();
  v156[1] = v80;
  v81 = sub_1C97A2CEC(&qword_1EC3CD920);
  sub_1C97ABF78(v81, v152);
  v137 = v82;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C97AC02C();
  v150[3] = v84;
  v85 = sub_1C97A2CEC(&qword_1EC3CD928);
  sub_1C97ABF78(v85, v151);
  v136 = v86;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v128 - v88;
  v90 = sub_1C97A2CEC(&qword_1EC3CD930);
  sub_1C97AE9C8();
  v135 = v91;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v92);
  sub_1C9945F4C();
  v93 = sub_1C97A2CEC(&qword_1EC3CD938);
  sub_1C97AE9C8();
  v95 = v94;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C97AEA4C();
  v97 = v25[3];
  v158 = v25;
  sub_1C97A5A8C(v25, v97);
  sub_1C9944230();
  v98 = v159;
  sub_1C9A93DB8();
  if (v98)
  {
    goto LABEL_9;
  }

  v133 = v20;
  v132 = v90;
  v134 = v89;
  v159 = v95;
  v99 = sub_1C9A93958();
  sub_1C98EE524(v99, 0);
  if (v101 == v100 >> 1)
  {
LABEL_8:
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v119 = v118;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v119 = &type metadata for SoundRecognition.DetectorIdentifier;
    sub_1C9A93868();
    sub_1C98994EC();
    sub_1C97AEB3C();
    (*(v120 + 104))(v119);
    swift_willThrow();
    swift_unknownObjectRelease();
    v121 = sub_1C9945FE4();
    v122(v121, v93);
LABEL_9:
    sub_1C97A592C(v158);
LABEL_10:
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  v131 = v93;
  v129 = 0;
  if (v105 < (v104 >> 1))
  {
    v106 = *(v103 + v102);
    v107 = sub_1C98EE520(v102 + 1);
    v109 = v108;
    v111 = v110;
    swift_unknownObjectRelease();
    v130 = v107;
    if (v109 == v111 >> 1)
    {
      v112 = v129;
      v113 = v131;
      v114 = v156[0];
      switch(v106)
      {
        case 1:
          sub_1C97FB3CC();
          sub_1C9944770();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = v151;
          goto LABEL_30;
        case 2:
          HIBYTE(a10) = 2;
          sub_1C994471C();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = v152;
          goto LABEL_30;
        case 3:
          HIBYTE(a10) = 3;
          sub_1C99446C8();
          sub_1C9A93858();
          if (v112)
          {
            goto LABEL_29;
          }

          sub_1C9945F94();
          v115 = sub_1C99460CC();
          v117 = v153;
          goto LABEL_30;
        case 4:
          HIBYTE(a10) = 4;
          sub_1C9944674();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = v154;
          goto LABEL_30;
        case 5:
          sub_1C9946090();
          sub_1C9944620();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = v155;
          goto LABEL_30;
        case 6:
          HIBYTE(a10) = 6;
          sub_1C99445CC();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = v156;
          goto LABEL_30;
        case 7:
          HIBYTE(a10) = 7;
          sub_1C9944578();
          sub_1C9A93858();
          if (v112)
          {
LABEL_29:
            v124 = sub_1C9945FE4();
            v125(v124, v113);
            sub_1C9945F94();
            goto LABEL_9;
          }

          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = v157;
LABEL_30:
          v123 = *(v117 - 32);
LABEL_31:
          v116(v115, v123);
          v126 = sub_1C9945FE4();
          v127(v126, v113);
          sub_1C97A592C(v158);
          break;
        case 8:
          HIBYTE(a10) = 8;
          sub_1C9944524();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = &v158;
          goto LABEL_30;
        case 9:
          HIBYTE(a10) = 9;
          sub_1C99444D0();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = &v160;
          goto LABEL_30;
        case 10:
          HIBYTE(a10) = 10;
          sub_1C994447C();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = &a10;
          goto LABEL_30;
        case 11:
          HIBYTE(a10) = 11;
          sub_1C9944428();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = &a12;
          goto LABEL_30;
        case 12:
          HIBYTE(a10) = 12;
          sub_1C99443D4();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = &a14;
          goto LABEL_30;
        case 13:
          HIBYTE(a10) = 13;
          sub_1C9944380();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = &a16;
          goto LABEL_30;
        case 14:
          HIBYTE(a10) = 14;
          sub_1C994432C();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = &a18;
          goto LABEL_30;
        case 15:
          HIBYTE(a10) = 15;
          sub_1C99442D8();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945F04();
          goto LABEL_31;
        case 16:
          HIBYTE(a10) = 16;
          sub_1C9944284();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945F04();
          v123 = v114;
          goto LABEL_31;
        default:
          HIBYTE(a10) = 0;
          sub_1C99447C4();
          sub_1C9945E70();
          sub_1C9945F94();
          v115 = sub_1C9945E3C();
          v117 = v150;
          goto LABEL_30;
      }

      goto LABEL_10;
    }

    v93 = v131;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C9942688(uint64_t a1)
{
  v2 = sub_1C994471C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99426C4(uint64_t a1)
{
  v2 = sub_1C994471C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942700(uint64_t a1)
{
  v2 = sub_1C99446C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C994273C(uint64_t a1)
{
  v2 = sub_1C99446C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942778(uint64_t a1)
{
  v2 = sub_1C9944674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99427B4(uint64_t a1)
{
  v2 = sub_1C9944674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99427F0(uint64_t a1)
{
  v2 = sub_1C9944620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C994282C(uint64_t a1)
{
  v2 = sub_1C9944620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9940488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9942898@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C99409AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C99428C0(uint64_t a1)
{
  v2 = sub_1C9944230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99428FC(uint64_t a1)
{
  v2 = sub_1C9944230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942938(uint64_t a1)
{
  v2 = sub_1C99445CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942974(uint64_t a1)
{
  v2 = sub_1C99445CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99429B0(uint64_t a1)
{
  v2 = sub_1C9944578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99429EC(uint64_t a1)
{
  v2 = sub_1C9944578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942A28(uint64_t a1)
{
  v2 = sub_1C9944770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942A64(uint64_t a1)
{
  v2 = sub_1C9944770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942AA0(uint64_t a1)
{
  v2 = sub_1C9944524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942ADC(uint64_t a1)
{
  v2 = sub_1C9944524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942B18(uint64_t a1)
{
  v2 = sub_1C99444D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942B54(uint64_t a1)
{
  v2 = sub_1C99444D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942B90(uint64_t a1)
{
  v2 = sub_1C994447C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942BCC(uint64_t a1)
{
  v2 = sub_1C994447C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942C08(uint64_t a1)
{
  v2 = sub_1C9944428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942C44(uint64_t a1)
{
  v2 = sub_1C9944428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942C80(uint64_t a1)
{
  v2 = sub_1C99443D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942CBC(uint64_t a1)
{
  v2 = sub_1C99443D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942CF8(uint64_t a1)
{
  v2 = sub_1C9944380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942D34(uint64_t a1)
{
  v2 = sub_1C9944380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942D70(uint64_t a1)
{
  v2 = sub_1C994432C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942DAC(uint64_t a1)
{
  v2 = sub_1C994432C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942DE8(uint64_t a1)
{
  v2 = sub_1C99442D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942E24(uint64_t a1)
{
  v2 = sub_1C99442D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942E60(uint64_t a1)
{
  v2 = sub_1C99447C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942E9C(uint64_t a1)
{
  v2 = sub_1C99447C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942ED8(uint64_t a1)
{
  v2 = sub_1C9944284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9942F14(uint64_t a1)
{
  v2 = sub_1C9944284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9942FA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9943064(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v8 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v22 = a6;
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v16 = *(v8 + 16);
  v17 = v8;
  LOBYTE(v8) = v23;
  v16(a5, v17);
  v18 = v24;
  sub_1C9943008(v8);
  if (v18)
  {
    (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  else
  {
    v24 = v13;
    (*(v10 + 8))(v12, AssociatedTypeWitness);
    v13 = sub_1C99432FC();
    (*(v21 + 8))(v15, v24);
  }

  return v13;
}

uint64_t sub_1C99432FC()
{
  sub_1C993F690();
  if (!v1)
  {
    sub_1C97A2CEC(&unk_1EC3C9AC0);
    sub_1C97AE67C(&unk_1EC3CE310, &unk_1EC3C9AC0);
    v0 = sub_1C9A91F28();
  }

  return v0;
}

uint64_t sub_1C99433A8@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C99433E8(uint64_t a1)
{
  result = sub_1C98DD814();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9943410(uint64_t a1)
{
  result = sub_1C98DD7C0();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C9943438(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9943474(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_1C99434B0()
{
  v0 = sub_1C9A924A8();
  v2 = v1;
  v3 = sub_1C9A924A8();
  v5 = v4;
  v6 = MGGetProductType();
  sub_1C989B2F8(v6, v10);
  if (v10[6])
  {
    v7 = v10[0];

    sub_1C989ACF0(v7, v11);
    v8 = v13;
    v14 = v12;

    sub_1C97AE434(&v14, &qword_1EC3C7DB0);
  }

  else
  {
    v8 = 0;
  }

  qword_1EC3D32D0 = v0;
  *algn_1EC3D32D8 = v2;
  qword_1EC3D32E0 = v3;
  unk_1EC3D32E8 = v5;
  qword_1EC3D32F0 = 0;
  unk_1EC3D32F8 = v8;
  *&result = 16843008;
  dword_1EC3D3300 = 16843008;
  word_1EC3D3304 = 0;
  qword_1EC3D3308 = 0;
  byte_1EC3D3310 = 1;
  return result;
}

uint64_t sub_1C99435D0()
{
  if (qword_1EC3C5DF0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EC3D32D0, 0x41uLL);
  memcpy(&unk_1EC3D3318, &qword_1EC3D32D0, 0x41uLL);
  return sub_1C97A6264(__dst, &v1);
}

uint64_t sub_1C994365C()
{
  if (qword_1EC3C5DF8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EC3D3318, 0x41uLL);
  memcpy(&unk_1EC3D3360, &unk_1EC3D3318, 0x41uLL);
  return sub_1C97A6264(__dst, &v1);
}

uint64_t sub_1C994372C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CB4F0);
  result = sub_1C98BFDE4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for SoundRecognition.Session()
{
  result = qword_1EC3CD790;
  if (!qword_1EC3CD790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C99437EC()
{
  result = qword_1EC3CD5F8;
  if (!qword_1EC3CD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD5F8);
  }

  return result;
}

unint64_t sub_1C9943854()
{
  result = qword_1EC3CD640;
  if (!qword_1EC3CD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD640);
  }

  return result;
}

unint64_t sub_1C9943914()
{
  result = qword_1EC3CD710;
  if (!qword_1EC3CD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD710);
  }

  return result;
}

unint64_t sub_1C9943968()
{
  result = qword_1EC3CD718;
  if (!qword_1EC3CD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD718);
  }

  return result;
}

unint64_t sub_1C99439BC()
{
  result = qword_1EC3CD720;
  if (!qword_1EC3CD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD720);
  }

  return result;
}

void sub_1C9943AB0()
{
  sub_1C9A91748();
  if (v0 <= 0x3F)
  {
    sub_1C9943B34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C9943B34()
{
  if (!qword_1EC3CD7A0)
  {
    sub_1C97AA4F0(&unk_1EC3CA040);
    v0 = sub_1C9A91DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3CD7A0);
    }
  }
}

_BYTE *sub_1C9943BB8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9943C8C()
{
  result = qword_1EC3CD7B0;
  if (!qword_1EC3CD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7B0);
  }

  return result;
}

unint64_t sub_1C9943D28()
{
  result = qword_1EC3CD7C8;
  if (!qword_1EC3CD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7C8);
  }

  return result;
}

unint64_t sub_1C9943D80()
{
  result = qword_1EC3CD7D0;
  if (!qword_1EC3CD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7D0);
  }

  return result;
}

unint64_t sub_1C9943DD8()
{
  result = qword_1EC3CD7D8;
  if (!qword_1EC3CD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7D8);
  }

  return result;
}

unint64_t sub_1C9943E30()
{
  result = qword_1EC3CD7E0;
  if (!qword_1EC3CD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7E0);
  }

  return result;
}

unint64_t sub_1C9943E88()
{
  result = qword_1EC3CD7E8;
  if (!qword_1EC3CD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7E8);
  }

  return result;
}

unint64_t sub_1C9943EE0()
{
  result = qword_1EC3CD7F0;
  if (!qword_1EC3CD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7F0);
  }

  return result;
}

unint64_t sub_1C9943F38()
{
  result = qword_1EC3CD7F8;
  if (!qword_1EC3CD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD7F8);
  }

  return result;
}

unint64_t sub_1C9943F90()
{
  result = qword_1EC3CD800;
  if (!qword_1EC3CD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD800);
  }

  return result;
}

unint64_t sub_1C9943FE4()
{
  result = qword_1EC3CD840;
  if (!qword_1EC3CD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD840);
  }

  return result;
}

unint64_t sub_1C9944038()
{
  result = qword_1EC3CD848;
  if (!qword_1EC3CD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD848);
  }

  return result;
}

unint64_t sub_1C994408C()
{
  result = qword_1EC3CD850;
  if (!qword_1EC3CD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD850);
  }

  return result;
}

unint64_t sub_1C99440E0()
{
  result = qword_1EC3CD858;
  if (!qword_1EC3CD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD858);
  }

  return result;
}

unint64_t sub_1C9944134()
{
  result = qword_1EC3CD860;
  if (!qword_1EC3CD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD860);
  }

  return result;
}

unint64_t sub_1C9944188()
{
  result = qword_1EC3CD868;
  if (!qword_1EC3CD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD868);
  }

  return result;
}

unint64_t sub_1C99441DC()
{
  result = qword_1EC3CD870;
  if (!qword_1EC3CD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD870);
  }

  return result;
}

unint64_t sub_1C9944230()
{
  result = qword_1EC3CD940;
  if (!qword_1EC3CD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD940);
  }

  return result;
}

unint64_t sub_1C9944284()
{
  result = qword_1EC3CD948;
  if (!qword_1EC3CD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD948);
  }

  return result;
}

unint64_t sub_1C99442D8()
{
  result = qword_1EC3CD950;
  if (!qword_1EC3CD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD950);
  }

  return result;
}

unint64_t sub_1C994432C()
{
  result = qword_1EC3CD958;
  if (!qword_1EC3CD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD958);
  }

  return result;
}

unint64_t sub_1C9944380()
{
  result = qword_1EC3CD960;
  if (!qword_1EC3CD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD960);
  }

  return result;
}

unint64_t sub_1C99443D4()
{
  result = qword_1EC3CD968;
  if (!qword_1EC3CD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD968);
  }

  return result;
}

unint64_t sub_1C9944428()
{
  result = qword_1EC3CD970;
  if (!qword_1EC3CD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD970);
  }

  return result;
}

unint64_t sub_1C994447C()
{
  result = qword_1EC3CD978;
  if (!qword_1EC3CD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD978);
  }

  return result;
}

unint64_t sub_1C99444D0()
{
  result = qword_1EC3CD980;
  if (!qword_1EC3CD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD980);
  }

  return result;
}

unint64_t sub_1C9944524()
{
  result = qword_1EC3CD988;
  if (!qword_1EC3CD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD988);
  }

  return result;
}

unint64_t sub_1C9944578()
{
  result = qword_1EC3CD990;
  if (!qword_1EC3CD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD990);
  }

  return result;
}

unint64_t sub_1C99445CC()
{
  result = qword_1EC3CD998;
  if (!qword_1EC3CD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD998);
  }

  return result;
}

unint64_t sub_1C9944620()
{
  result = qword_1EC3CD9A0;
  if (!qword_1EC3CD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9A0);
  }

  return result;
}

unint64_t sub_1C9944674()
{
  result = qword_1EC3CD9A8;
  if (!qword_1EC3CD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9A8);
  }

  return result;
}

unint64_t sub_1C99446C8()
{
  result = qword_1EC3CD9B0;
  if (!qword_1EC3CD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9B0);
  }

  return result;
}

unint64_t sub_1C994471C()
{
  result = qword_1EC3CD9B8;
  if (!qword_1EC3CD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9B8);
  }

  return result;
}

unint64_t sub_1C9944770()
{
  result = qword_1EC3CD9C0;
  if (!qword_1EC3CD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9C0);
  }

  return result;
}

unint64_t sub_1C99447C4()
{
  result = qword_1EC3CD9C8;
  if (!qword_1EC3CD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD9C8);
  }

  return result;
}

uint64_t sub_1C9944818(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 17);
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

      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 17);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 17);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C97BE3EC(v8);
}

_BYTE *sub_1C994489C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 16);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9944A78(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9944BA8()
{
  result = qword_1EC3CDA60;
  if (!qword_1EC3CDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA60);
  }

  return result;
}

unint64_t sub_1C9944C00()
{
  result = qword_1EC3CDA68;
  if (!qword_1EC3CDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA68);
  }

  return result;
}

unint64_t sub_1C9944C58()
{
  result = qword_1EC3CDA70;
  if (!qword_1EC3CDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA70);
  }

  return result;
}

unint64_t sub_1C9944CB0()
{
  result = qword_1EC3CDA78;
  if (!qword_1EC3CDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA78);
  }

  return result;
}

unint64_t sub_1C9944D08()
{
  result = qword_1EC3CDA80;
  if (!qword_1EC3CDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA80);
  }

  return result;
}

unint64_t sub_1C9944D60()
{
  result = qword_1EC3CDA88;
  if (!qword_1EC3CDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA88);
  }

  return result;
}

unint64_t sub_1C9944DB8()
{
  result = qword_1EC3CDA90;
  if (!qword_1EC3CDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA90);
  }

  return result;
}

unint64_t sub_1C9944E10()
{
  result = qword_1EC3CDA98;
  if (!qword_1EC3CDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDA98);
  }

  return result;
}

unint64_t sub_1C9944E68()
{
  result = qword_1EC3CDAA0;
  if (!qword_1EC3CDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAA0);
  }

  return result;
}

unint64_t sub_1C9944EC0()
{
  result = qword_1EC3CDAA8;
  if (!qword_1EC3CDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAA8);
  }

  return result;
}

unint64_t sub_1C9944F18()
{
  result = qword_1EC3CDAB0;
  if (!qword_1EC3CDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAB0);
  }

  return result;
}

unint64_t sub_1C9944F70()
{
  result = qword_1EC3CDAB8;
  if (!qword_1EC3CDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAB8);
  }

  return result;
}

unint64_t sub_1C9944FC8()
{
  result = qword_1EC3CDAC0;
  if (!qword_1EC3CDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAC0);
  }

  return result;
}

unint64_t sub_1C9945020()
{
  result = qword_1EC3CDAC8;
  if (!qword_1EC3CDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAC8);
  }

  return result;
}

unint64_t sub_1C9945078()
{
  result = qword_1EC3CDAD0;
  if (!qword_1EC3CDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAD0);
  }

  return result;
}

unint64_t sub_1C99450D0()
{
  result = qword_1EC3CDAD8;
  if (!qword_1EC3CDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAD8);
  }

  return result;
}

unint64_t sub_1C9945128()
{
  result = qword_1EC3CDAE0;
  if (!qword_1EC3CDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAE0);
  }

  return result;
}

unint64_t sub_1C9945180()
{
  result = qword_1EC3CDAE8;
  if (!qword_1EC3CDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAE8);
  }

  return result;
}

unint64_t sub_1C99451D8()
{
  result = qword_1EC3CDAF0;
  if (!qword_1EC3CDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAF0);
  }

  return result;
}

unint64_t sub_1C9945230()
{
  result = qword_1EC3CDAF8;
  if (!qword_1EC3CDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDAF8);
  }

  return result;
}

unint64_t sub_1C9945288()
{
  result = qword_1EC3CDB00;
  if (!qword_1EC3CDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB00);
  }

  return result;
}

unint64_t sub_1C99452E0()
{
  result = qword_1EC3CDB08;
  if (!qword_1EC3CDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB08);
  }

  return result;
}

unint64_t sub_1C9945338()
{
  result = qword_1EC3CDB10;
  if (!qword_1EC3CDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB10);
  }

  return result;
}

unint64_t sub_1C9945390()
{
  result = qword_1EC3CDB18;
  if (!qword_1EC3CDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB18);
  }

  return result;
}

unint64_t sub_1C99453E8()
{
  result = qword_1EC3CDB20;
  if (!qword_1EC3CDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB20);
  }

  return result;
}

unint64_t sub_1C9945440()
{
  result = qword_1EC3CDB28;
  if (!qword_1EC3CDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB28);
  }

  return result;
}

unint64_t sub_1C9945498()
{
  result = qword_1EC3CDB30;
  if (!qword_1EC3CDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB30);
  }

  return result;
}

unint64_t sub_1C99454F0()
{
  result = qword_1EC3CDB38;
  if (!qword_1EC3CDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB38);
  }

  return result;
}

unint64_t sub_1C9945548()
{
  result = qword_1EC3CDB40;
  if (!qword_1EC3CDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB40);
  }

  return result;
}

unint64_t sub_1C99455A0()
{
  result = qword_1EC3CDB48;
  if (!qword_1EC3CDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB48);
  }

  return result;
}

unint64_t sub_1C99455F8()
{
  result = qword_1EC3CDB50;
  if (!qword_1EC3CDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB50);
  }

  return result;
}

unint64_t sub_1C9945650()
{
  result = qword_1EC3CDB58;
  if (!qword_1EC3CDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB58);
  }

  return result;
}

unint64_t sub_1C99456A8()
{
  result = qword_1EC3CDB60;
  if (!qword_1EC3CDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB60);
  }

  return result;
}

unint64_t sub_1C9945700()
{
  result = qword_1EC3CDB68;
  if (!qword_1EC3CDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB68);
  }

  return result;
}

unint64_t sub_1C9945758()
{
  result = qword_1EC3CDB70;
  if (!qword_1EC3CDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB70);
  }

  return result;
}

unint64_t sub_1C99457B0()
{
  result = qword_1EC3CDB78;
  if (!qword_1EC3CDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB78);
  }

  return result;
}

unint64_t sub_1C9945808()
{
  result = qword_1EC3CDB80;
  if (!qword_1EC3CDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB80);
  }

  return result;
}

unint64_t sub_1C9945860()
{
  result = qword_1EC3CDB88;
  if (!qword_1EC3CDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB88);
  }

  return result;
}

unint64_t sub_1C99458B8()
{
  result = qword_1EC3CDB90;
  if (!qword_1EC3CDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB90);
  }

  return result;
}

unint64_t sub_1C9945910()
{
  result = qword_1EC3CDB98;
  if (!qword_1EC3CDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDB98);
  }

  return result;
}

unint64_t sub_1C9945968()
{
  result = qword_1EC3CDBA0;
  if (!qword_1EC3CDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBA0);
  }

  return result;
}

unint64_t sub_1C99459C0()
{
  result = qword_1EC3CDBA8;
  if (!qword_1EC3CDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBA8);
  }

  return result;
}

unint64_t sub_1C9945A18()
{
  result = qword_1EC3CDBB0;
  if (!qword_1EC3CDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBB0);
  }

  return result;
}

unint64_t sub_1C9945A70()
{
  result = qword_1EC3CDBB8;
  if (!qword_1EC3CDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBB8);
  }

  return result;
}

unint64_t sub_1C9945AC8()
{
  result = qword_1EC3CDBC0;
  if (!qword_1EC3CDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBC0);
  }

  return result;
}

unint64_t sub_1C9945B20()
{
  result = qword_1EC3CDBC8;
  if (!qword_1EC3CDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBC8);
  }

  return result;
}

unint64_t sub_1C9945B78()
{
  result = qword_1EC3CDBD0;
  if (!qword_1EC3CDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBD0);
  }

  return result;
}

unint64_t sub_1C9945BD0()
{
  result = qword_1EC3CDBD8;
  if (!qword_1EC3CDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBD8);
  }

  return result;
}

unint64_t sub_1C9945C28()
{
  result = qword_1EC3CDBE0;
  if (!qword_1EC3CDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBE0);
  }

  return result;
}

unint64_t sub_1C9945C80()
{
  result = qword_1EC3CDBE8;
  if (!qword_1EC3CDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBE8);
  }

  return result;
}

unint64_t sub_1C9945CD8()
{
  result = qword_1EC3CDBF0;
  if (!qword_1EC3CDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBF0);
  }

  return result;
}

unint64_t sub_1C9945D30()
{
  result = qword_1EC3CDBF8;
  if (!qword_1EC3CDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDBF8);
  }

  return result;
}

uint64_t sub_1C9945DE8()
{

  return sub_1C9A91F48();
}

uint64_t sub_1C9945E4C()
{

  return sub_1C9A93988();
}

uint64_t sub_1C9945E70()
{

  return sub_1C9A93858();
}

uint64_t sub_1C9945E90()
{

  return sub_1C9A93988();
}

uint64_t sub_1C9945EC0()
{

  return sub_1C9A93858();
}

uint64_t sub_1C9945F3C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1C9945F94()
{

  return swift_unknownObjectRelease();
}

void sub_1C9945FAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1C9945FD8(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1C9945FF4()
{
}

uint64_t sub_1C994600C()
{
}

uint64_t sub_1C9946024(unint64_t *a1)
{

  return sub_1C97AE67C(a1, v1);
}

uint64_t sub_1C994603C()
{

  return sub_1C97A2CEC(v0);
}

void sub_1C99460F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1C9946110()
{
}

void sub_1C994612C(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C97E7380();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1C979AFE4((v3 + 24 * a1 + 56), v4 - 1 - a1, (v3 + 24 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_1C99461C0(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C97E7414();
    v5 = v8;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 + 160 * a1;
    memcpy(a2, (v7 + 32), 0xA0uLL);
    sub_1C97E71E8((v7 + 192), v6 - 1 - a1, (v7 + 32));
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

void sub_1C9946258(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C97E742C();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1C978D31C((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

uint64_t sub_1C99462E0(char a1, const void *a2)
{
  v3 = v2;
  v25 = sub_1C9A91748();
  sub_1C97AE9C8();
  v23 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v22 = v8 - v7;
  sub_1C9A93008();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEAD8();
  v10 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C97AEAD8();
  v20 = sub_1C9A93018();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  memcpy(__dst, a2, sizeof(__dst));
  v15 = v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_recordingCancellable;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer) = 0;
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession) = 0;
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning) = 0;
  sub_1C9921A0C();
  v19 = *MEMORY[0x1E69E8098];
  v21 = *(v11 + 104);
  v21(v14);
  sub_1C9A92148();
  sub_1C9949E98(&qword_1EC3C56C0, MEMORY[0x1E69E8030]);
  sub_1C97A2CEC(&unk_1EC3CDC60);
  sub_1C994A05C();
  sub_1C97AE67C(v16, v17);
  sub_1C994A0C8();
  sub_1C9A93428();
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue) = sub_1C994A0E4();
  (v21)(v14, v19, v20);
  sub_1C9A92148();
  sub_1C994A0C8();
  sub_1C9A93428();
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_analysisQueue) = sub_1C994A0E4();
  memcpy((v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration), __dst, 0x41uLL);
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_allowSuppressionOfMicrophoneUsageIndicator) = a1;
  sub_1C9A91738();
  (*(v23 + 32))(v3 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_id, v22, v25);
  return v3;
}

uint64_t sub_1C99466AC(void *a1, void *a2)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v4 = sub_1C9A91B58();
  sub_1C97BFF6C(v4, qword_1EC3D3108);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = sub_1C9A91B38();
  v6 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v7 = 136315650;
    sub_1C9A91748();
    sub_1C994A078();
    sub_1C9949E98(v8, v9);
    v10 = sub_1C9A93A98();
    v12 = sub_1C9849140(v10, v11, &v26);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = [a1 description];
    v14 = sub_1C9A924A8();
    v16 = v15;

    v17 = sub_1C9849140(v14, v16, &v26);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2080;
    v18 = [a2 description];
    v19 = sub_1C9A924A8();
    v21 = v20;

    v22 = sub_1C9849140(v19, v21, &v26);

    *(v7 + 24) = v22;
    _os_log_impl(&dword_1C9788000, v5, v6, "(SNSystemAudioAnalyzerLocal: %s) addRequest:%s withObserver:%s", v7, 0x20u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  MEMORY[0x1EEE9AC00](v23);
  return sub_1C9A93028();
}

void sub_1C9946988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  aBlock[15] = *MEMORY[0x1E69E9840];
  v6 = sub_1C9A92128();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1C9A92158();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
  swift_beginAccess();
  v11 = *&v2[v10];
  v12 = (v11 + 32);
  v13 = *(v11 + 16) + 1;
  while (--v13)
  {
    v14 = *v12;
    v12 += 2;
    if (v14 == a1)
    {
      sub_1C9947BB0(a1);
      break;
    }
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = nullsub_1;
  v18[3] = 0;
  v18[4] = sub_1C9949E18;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = sub_1C9949E10;
  v19[3] = v15;
  v19[4] = sub_1C9949E20;
  v19[5] = v17;
  v20 = objc_allocWithZone(type metadata accessor for SNResultsForwarder());
  swift_unknownObjectRetain();

  v21 = sub_1C9904090(sub_1C9949E74, v19, sub_1C9949E28, v18);

  v22 = *&v3[OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer];
  if (!v22)
  {
    goto LABEL_8;
  }

  aBlock[0] = 0;
  v23 = v22;
  if ([v23 addRequest:a1 withObserver:v21 error:aBlock])
  {
    v24 = aBlock[0];

LABEL_8:
    sub_1C97A2CEC(&qword_1EC3C76E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = a1;
    *(inited + 40) = v21;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v26 = v21;
    sub_1C98D06E8(inited);
    swift_endAccess();
    aBlock[4] = sub_1C994A034;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C98E5C5C;
    aBlock[3] = &unk_1F4942220;
    v27 = _Block_copy(aBlock);

    sub_1C9A92148();
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C9949E98(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60]);
    sub_1C97A2CEC(&unk_1EC3C8660);
    sub_1C97AE67C(&qword_1EC3C7AE0, &unk_1EC3C8660);
    v28 = v33;
    v29 = v35;
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v9, v28, v27);
    _Block_release(v27);

    (*(v34 + 8))(v28, v29);
    (*(v31 + 8))(v9, v32);

    return;
  }

  v30 = aBlock[0];
  sub_1C9A913C8();

  swift_willThrow();
}

void sub_1C9946F10()
{
  v1 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    if ((*(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning) & 1) == 0)
    {
      sub_1C9946F7C();
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning))
  {
    sub_1C9947B5C();
  }
}

void sub_1C9946F7C()
{
  v1 = v0;
  v84 = *MEMORY[0x1E69E9840];
  if (qword_1EC3C57B0 != -1)
  {
    swift_once();
  }

  v2 = byte_1EC3D3480;
  if (byte_1EC3D3480 == 1 && ((*(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration + 49) & 1) != 0 || *(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration + 48) == 1) && (*(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_allowSuppressionOfMicrophoneUsageIndicator) & 1) == 0)
  {
    type metadata accessor for SNError();
    v40 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000035, 0x80000001C9ADA0A0);
    swift_willThrow();
  }

  else
  {
    v3 = (v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration);
    memcpy(__dst, (v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration), 0x41uLL);
    memcpy(__src, v3, 0x41uLL);
    sub_1C97A6264(__dst, v80);
    sub_1C9A0B120(__src, v80);
    memcpy(v82, __src, 0x41uLL);
    sub_1C97E8084(v82);
    memcpy(v83, v80, 0x41uLL);
    memcpy(v80, v83, sizeof(v80));
    sub_1C9A0B2B4(__src, v80);
    v5 = v4;
    v7 = v6;
    v77 = __src[0].n128_u64[0];
    v8 = [objc_allocWithZone(SNAudioStreamAnalyzer) initWithFormat_];
    v9 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
    *(v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer) = v8;
    v10 = v8;

    v11 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession);
    *(v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession) = v5;
    v12 = v5;

    if (v3[48])
    {
LABEL_10:
      v71 = v7;
      v72 = v2;
      v73 = v12;
      v14 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
      swift_beginAccess();
      v75 = v1;
      v15 = *(*(v1 + v14) + 16);
      if (v15)
      {
        v16 = ( + 40);
        do
        {
          v18 = *(v16 - 1);
          v17 = *v16;
          *v80 = 0;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ([v10 addRequest:v18 withObserver:v17 error:v80])
          {
            v19 = *v80;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            v20 = v10;
            v21 = *v80;
            v22 = sub_1C9A913C8();

            swift_willThrow();
            if ([v17 respondsToSelector_])
            {
              swift_unknownObjectRetain();
              v23 = sub_1C9A913B8();
              [v17 request:v18 didFailWithError:v23];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            v10 = v20;
          }

          v16 += 2;
          --v15;
        }

        while (v15);
      }

      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v24 = sub_1C9A91B58();
      sub_1C97BFF6C(v24, qword_1EC3D3108);
      v25 = v71;
      sub_1C97A6264(v83, v80);
      v26 = sub_1C9A91B38();
      v27 = sub_1C9A92FC8();

      sub_1C97E8084(v83);
      v74 = v10;
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = v25;
        v30 = swift_slowAlloc();
        v78[0] = v30;
        *v28 = 136315394;
        v31 = [v29 description];
        v32 = sub_1C9A924A8();
        v34 = v33;

        v35 = sub_1C9849140(v32, v34, v78);

        *(v28 + 4) = v35;
        *(v28 + 12) = 2080;
        memcpy(v80, v83, sizeof(v80));
        v36 = sub_1C9A924F8();
        v38 = sub_1C9849140(v36, v37, v78);

        *(v28 + 14) = v38;
        _os_log_impl(&dword_1C9788000, v26, v27, "Starting audio input. %s, %s", v28, 0x16u);
        swift_arrayDestroy();
        v39 = v30;
        v25 = v29;
        MEMORY[0x1CCA93280](v39, -1, -1);
        MEMORY[0x1CCA93280](v28, -1, -1);
      }

      else
      {

        sub_1C97E8084(v83);
      }

      v41 = v75;
      v42 = swift_allocObject();
      swift_weakInit();
      if (qword_1EC3C57B8 != -1)
      {
        swift_once();
      }

      if ((v72 & byte_1EC3D3138) == 1)
      {
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        v44 = swift_allocObject();
        *(v44 + 16) = 0;
        v45 = swift_allocObject();
        v45[2] = sub_1C9948F08;
        v45[3] = 0;
        v45[4] = v43;
        v45[5] = v44;
        v45[6] = v25;
        v45[7] = sub_1C9949F50;
        v45[8] = v42;
        v76 = v25;
        v46 = v25;

        v47 = sub_1C9A91B38();
        v48 = sub_1C9A92FC8();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v80 = v50;
          *v49 = 136315138;
          sub_1C9A91748();
          sub_1C9949E98(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
          v51 = sub_1C9A93A98();
          v53 = sub_1C9849140(v51, v52, v80);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_1C9788000, v47, v48, "Analyzer capable of injection (%s).", v49, 0xCu);
          sub_1C97A592C(v50);
          MEMORY[0x1CCA93280](v50, -1, -1);
          MEMORY[0x1CCA93280](v49, -1, -1);
        }

        v54 = sub_1C9949F6C;
        v25 = v76;
      }

      else
      {
        swift_retain_n();
        v54 = sub_1C9949F50;
        v45 = v42;
      }

      *v80 = v77;
      swift_allocObject();
      swift_weakInit();
      v55 = swift_allocObject();
      swift_weakInit();
      v56 = swift_allocObject();
      v56[2] = v55;
      v56[3] = v54;
      v56[4] = v45;
      sub_1C97A2CEC(&qword_1EC3CDC70);
      sub_1C97AE67C(&unk_1EC3CDC78, &qword_1EC3CDC70);
      v57 = sub_1C9A91FB8();

      *&v80[24] = sub_1C9A91DE8();
      *&v80[32] = MEMORY[0x1E695BF08];

      *v80 = v57;

      v58 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_recordingCancellable;
      swift_beginAccess();
      sub_1C9949EE0(v80, v41 + v58);
      swift_endAccess();
      *(v41 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning) = 1;
      return;
    }

    *v80 = 0;
    if ([v12 setActive:1 error:v80])
    {
      v13 = *v80;
      goto LABEL_10;
    }

    v59 = *v80;
    sub_1C97E8084(v83);
    v60 = sub_1C9A913C8();

    swift_willThrow();
    type metadata accessor for SNError();
    v61 = sub_1C9A913B8();
    *v80 = 0;
    *&v80[8] = 0xE000000000000000;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD00000000000002DLL, 0x80000001C9ADA070);
    __src[0].n128_u64[0] = v60;
    sub_1C97A2CEC(&unk_1EC3CA040);
    sub_1C9A93728();
    v40 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, v61, *v80, *&v80[8]);

    swift_willThrow();
  }

  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v62 = sub_1C9A91B58();
  sub_1C97BFF6C(v62, qword_1EC3D3108);
  v63 = v40;
  v64 = sub_1C9A91B38();
  v65 = sub_1C9A92FA8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    v68 = v40;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 4) = v69;
    *v67 = v69;
    _os_log_impl(&dword_1C9788000, v64, v65, "failed to start audio with error %@", v66, 0xCu);
    sub_1C97DA1E0(v67, &unk_1EC3C86A0);
    MEMORY[0x1CCA93280](v67, -1, -1);
    MEMORY[0x1CCA93280](v66, -1, -1);
  }

  v70 = sub_1C9948C6C();
  sub_1C9948CD4(v70);
  sub_1C994896C();
}

void sub_1C9947B5C()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C9949408(v0);

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_1C9947BB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C9A92128();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C9A92158();
  v7 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
  swift_beginAccess();
  v11 = 0;
  v12 = *(v2 + v10);
  v13 = *(v12 + 16);
  v14 = (v12 + 32);
  while (v13 != v11)
  {
    if (*v14 == a1)
    {
      swift_beginAccess();
      sub_1C9946258(v11);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v15 = *(v2 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
      if (v15)
      {
        [v15 removeRequest_];
      }

      break;
    }

    ++v11;
    v14 += 2;
  }

  aBlock[4] = sub_1C994A034;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  aBlock[3] = &unk_1F4942450;
  v16 = _Block_copy(aBlock);

  sub_1C9A92148();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1C9949E98(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60]);
  sub_1C97A2CEC(&unk_1EC3C8660);
  sub_1C97AE67C(&qword_1EC3C7AE0, &unk_1EC3C8660);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v9, v6, v16);
  _Block_release(v16);
  (*(v19 + 8))(v6, v4);
  (*(v7 + 8))(v9, v18);
}

void sub_1C9947F20(void *a1, void *a2, void *a3)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v6 = sub_1C9A91B58();
  sub_1C97BFF6C(v6, qword_1EC3D3108);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = a2;
  oslog = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136315650;
    v12 = [a3 description];
    v13 = sub_1C9A924A8();
    v15 = v14;

    v16 = sub_1C9849140(v13, v15, &v26);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    v17 = [a1 description];
    v18 = sub_1C9A924A8();
    v20 = v19;

    v21 = sub_1C9849140(v18, v20, &v26);

    *(v9 + 14) = v21;
    *(v9 + 22) = 2112;
    if (a2)
    {
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    *(v9 + 24) = v23;
    *v10 = v24;
    _os_log_impl(&dword_1C9788000, oslog, v8, "Observer %s for request %s completed with error: %@", v9, 0x20u);
    sub_1C97DA1E0(v10, &unk_1EC3C86A0);
    MEMORY[0x1CCA93280](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1CCA93280](v11, -1, -1);
    MEMORY[0x1CCA93280](v9, -1, -1);
  }
}

uint64_t sub_1C99481B0(void *a1)
{
  v2 = v1;
  v4 = sub_1C9A92128();
  sub_1C97AE9C8();
  v41 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v39 = v8 - v7;
  v40 = sub_1C9A92158();
  sub_1C97AE9C8();
  v38 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  v13 = v12 - v11;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v14 = sub_1C9A91B58();
  sub_1C97BFF6C(v14, qword_1EC3D3108);

  swift_unknownObjectRetain();
  v15 = sub_1C9A91B38();
  v16 = sub_1C9A92FC8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v15, v16))
  {
    v37 = v4;
    v17 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v17 = 136315394;
    sub_1C9A91748();
    sub_1C994A078();
    sub_1C9949E98(v18, v19);
    v20 = sub_1C9A93A98();
    v22 = sub_1C9849140(v20, v21, aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = [a1 description];
    v24 = sub_1C9A924A8();
    v26 = v25;

    v27 = sub_1C9849140(v24, v26, aBlock);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1C9788000, v15, v16, "(SNSystemAudioAnalyzerLocal:%s) removeRequest:%s", v17, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v4 = v37;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  *(v28 + 24) = a1;
  aBlock[4] = sub_1C9949FE8;
  aBlock[5] = v28;
  sub_1C994A090();
  sub_1C97F083C(COERCE_DOUBLE(1107296256));
  aBlock[2] = v29;
  aBlock[3] = &unk_1F49424A0;
  v30 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1C9A92148();
  sub_1C994A0B0();
  sub_1C9949E98(v31, v32);
  sub_1C97A2CEC(&unk_1EC3C8660);
  sub_1C994A05C();
  sub_1C97AE67C(v33, v34);
  sub_1C9A93428();
  v35 = sub_1C994A108();
  MEMORY[0x1CCA90CE0](v35);
  _Block_release(v30);
  (*(v41 + 8))(v39, v4);
  (*(v38 + 8))(v13, v40);
}

uint64_t sub_1C99485E4()
{
  v1 = sub_1C9A92128();
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v7 = v6 - v5;
  sub_1C9A92158();
  sub_1C97AE9C8();
  v32 = v9;
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v12 = v11 - v10;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v13 = sub_1C9A91B58();
  sub_1C97BFF6C(v13, qword_1EC3D3108);

  v14 = sub_1C9A91B38();
  v15 = sub_1C9A92FC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v3;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    sub_1C9A91748();
    sub_1C994A078();
    sub_1C9949E98(v18, v19);
    v20 = sub_1C9A93A98();
    v22 = sub_1C9849140(v20, v21, aBlock);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1C9788000, v14, v15, "(SNSystemAudioAnalyzerLocal:%s) removeAllRequests", v16, 0xCu);
    sub_1C97A592C(v17);
    v3 = v31;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  aBlock[4] = sub_1C994A010;
  aBlock[5] = v0;
  sub_1C994A090();
  sub_1C97F083C(COERCE_DOUBLE(1107296256));
  aBlock[2] = v23;
  aBlock[3] = &unk_1F49424C8;
  v24 = _Block_copy(aBlock);

  sub_1C9A92148();
  sub_1C994A0B0();
  sub_1C9949E98(v25, v26);
  sub_1C97A2CEC(&unk_1EC3C8660);
  sub_1C994A05C();
  sub_1C97AE67C(v27, v28);
  sub_1C9A93428();
  v29 = sub_1C994A108();
  MEMORY[0x1CCA90CE0](v29);
  _Block_release(v24);
  (*(v3 + 8))(v7, v1);
  (*(v32 + 8))(v12, v33);
}

uint64_t sub_1C994896C()
{
  v1 = sub_1C9A92128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C9A92158();
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
  swift_beginAccess();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + v8) = MEMORY[0x1E69E7CC0];

  v10 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
  if (v10)
  {
    [v10 removeAllRequests];
  }

  v13 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue);
  aBlock[4] = sub_1C9949FE4;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  aBlock[3] = &unk_1F4942428;
  v11 = _Block_copy(aBlock);

  sub_1C9A92148();
  v15 = v9;
  sub_1C9949E98(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60]);
  sub_1C97A2CEC(&unk_1EC3C8660);
  sub_1C97AE67C(&qword_1EC3C7AE0, &unk_1EC3C8660);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v7, v4, v11);
  _Block_release(v11);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v14);
}

void sub_1C9948CD4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C97EDFB0();
    sub_1C97ED800(a1, v5, v6, v7, v8, v9, v10, v11, v5, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, vars0, vars8);
  }

  else
  {
    v12 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_requestsAndObservers;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = *(v13 + 16);

    v15 = 0;
    for (i = (v13 + 40); ; i += 2)
    {
      if (v14 == v15)
      {

        return;
      }

      if (v15 >= *(v13 + 16))
      {
        break;
      }

      v17 = *(i - 1);
      v18 = *i;
      if ([*i respondsToSelector_])
      {
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
        v19 = sub_1C9A913B8();
        [v18 request:v17 didFailWithError:v19];
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
      }

      ++v15;
    }

    __break(1u);
  }
}

void sub_1C9948E54(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
    if (v5)
    {
      v6 = v5;

      [v6 analyzeAudioBuffer:a1 atAudioFramePosition:{objc_msgSend(a2, sel_sampleTime)}];
    }

    else
    {
    }
  }
}

id sub_1C9948F08()
{
  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v1 = sub_1C99B5AFC();

  return v1;
}

uint64_t sub_1C9949000()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1C9949FD8;
    *(v3 + 24) = v1;
    aBlock[4] = sub_1C994A038;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C97ECC64;
    aBlock[3] = &unk_1F49423D8;
    v4 = _Block_copy(aBlock);

    dispatch_sync(v2, v4);

    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C994916C()
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  v1 = sub_1C9A91B38();
  v2 = sub_1C9A92FC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C9788000, v1, v2, "SNAudioRecordingQueue interrupted", v3, 2u);
    MEMORY[0x1CCA93280](v3, -1, -1);
  }

  return sub_1C99497A4();
}

uint64_t sub_1C9949258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue);
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = v7;
    v10[5] = v6;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C9949FA0;
    *(v11 + 24) = v10;
    aBlock[4] = sub_1C9949FD0;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C97ECC64;
    aBlock[3] = &unk_1F4942388;
    v12 = _Block_copy(aBlock);
    v13 = v7;
    v14 = v6;

    dispatch_sync(v9, v12);

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C9949408(uint64_t a1)
{
  v2 = v1;
  v25 = *MEMORY[0x1E69E9840];
  v4 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession;
  v5 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioSession);
  if (!v5)
  {
    goto LABEL_11;
  }

  if ((*(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioConfiguration + 48) & 1) == 0)
  {
    *&v21 = 0;
    v6 = v5;
    if (![v6 setActive:0 error:&v21])
    {
      v8 = v21;
      v2 = sub_1C9A913C8();

      swift_willThrow();
      if (qword_1EC3C5520 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

    v7 = v21;
  }

  while (1)
  {
    v17 = *(a1 + v4);
    *(a1 + v4) = 0;

LABEL_11:
    v18 = a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_recordingCancellable;
    swift_beginAccess();
    if (*(v18 + 24))
    {
      sub_1C97D9AF8(v18, &v21);
      sub_1C97A5A8C(&v21, *(&v22 + 1));
      sub_1C9A91D38();
      sub_1C97A592C(&v21);
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    swift_beginAccess();
    sub_1C9949EE0(&v21, v18);
    swift_endAccess();
    *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_audioIsRunning) = 0;
    v19 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_analysisQueue);
    v23 = j_nullsub_1;
    v24 = 0;
    *&v21 = MEMORY[0x1E69E9820];
    *(&v21 + 1) = 1107296256;
    *&v22 = sub_1C97ECC64;
    *(&v22 + 1) = &unk_1F4942248;
    v6 = _Block_copy(&v21);

    dispatch_sync(v19, v6);
    _Block_release(v6);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
LABEL_6:
    v9 = sub_1C9A91B58();
    sub_1C97BFF6C(v9, qword_1EC3D3108);
    v10 = v2;
    v11 = sub_1C9A91B38();
    v12 = sub_1C9A92FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1C9788000, v11, v12, "Failed to deactivate AVAudioSession with error %@", v13, 0xCu);
      sub_1C97DA1E0(v14, &unk_1EC3C86A0);
      MEMORY[0x1CCA93280](v14, -1, -1);
      MEMORY[0x1CCA93280](v13, -1, -1);
    }

    else
    {
    }

    v2 = 0;
  }

  v20 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer);
  *(a1 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_streamAnalyzer) = 0;
}

uint64_t sub_1C99497A4()
{
  v1 = sub_1C9A92128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C9A92158();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_dispatchQueue);
  aBlock[4] = sub_1C9949FDC;
  v14 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  aBlock[3] = &unk_1F4942400;
  v8 = _Block_copy(aBlock);

  sub_1C9A92148();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C9949E98(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60]);
  sub_1C97A2CEC(&unk_1EC3C8660);
  sub_1C97AE67C(&qword_1EC3C7AE0, &unk_1EC3C8660);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_1C9949A60()
{
  type metadata accessor for SNError();
  v0 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 6, 0, 0xD000000000000018, 0x80000001C9ADA100);
  sub_1C9948CD4(v0);
  sub_1C994896C();
}

uint64_t sub_1C9949AF8()
{
  v1 = OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_id;
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v2 + 8))(v0 + v1);

  sub_1C97DA1E0(v0 + OBJC_IVAR____TtC13SoundAnalysis26SNSystemAudioAnalyzerLocal_recordingCancellable, &qword_1EC3CC6D0);

  return v0;
}

uint64_t sub_1C9949BF4()
{
  sub_1C9949AF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SNSystemAudioAnalyzerLocal()
{
  result = qword_1EC3CDC50;
  if (!qword_1EC3CDC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9949CA0()
{
  result = sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9949E34()
{

  return swift_deallocObject();
}

uint64_t sub_1C9949E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C9949E98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C9949EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CC6D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C994A0E4()
{

  return sub_1C9A93048();
}

uint64_t sub_1C994A11C()
{
  v0 = sub_1C9A924A8();
  v2 = v1;
  if (v0 == sub_1C9A924A8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C994AF28();
  }

  return v5 & 1;
}

uint64_t sub_1C994A194(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "oefDecay";
  }

  else
  {
    v4 = "SNVGGishEmbeddingModel";
  }

  if (a2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (a2)
  {
    v6 = "SNVGGishEmbeddingModel";
  }

  else
  {
    v6 = "oefDecay";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C994AF28();
  }

  return v8 & 1;
}

uint64_t sub_1C994A22C(unsigned __int8 a1, char a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 7696483;
    }

    else
    {
      v4 = 0x4E41646E41757063;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE900000000000045;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7105633;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7696483;
    }

    else
    {
      v2 = 0x4E41646E41757063;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE900000000000045;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C994AF28();
  }

  return v8 & 1;
}

id sub_1C994A328(uint64_t a1, double a2)
{
  v4 = v2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  result = (*(v9 + 8))(a1, ObjectType, v9, a2);
  if (!v3)
  {
    if (qword_1EC3C57B8 != -1)
    {
      swift_once();
    }

    if (byte_1EC3D3138 == 1)
    {
      if (qword_1EC3C57B0 != -1)
      {
        swift_once();
      }

      if (byte_1EC3D3480 == 1)
      {
        v11 = *(v9 + 16);
        v12 = sub_1C994AF18();
        v13 = v11(v12, v9);
        v14 = objc_opt_self();
        v27 = sub_1C9A72724(v14, v13);

        if ((v27 & 1) == 0)
        {
          v22 = sub_1C994AF18();
          v23 = v11(v22, v9);
          v24 = objc_allocWithZone(SNTunableDSPGraphHost);
          v25 = sub_1C994AE00(v23);
          v26 = *(v4 + 72);
          *(v4 + 72) = v25;
        }
      }
    }

    v15 = sub_1C994AF18();
    v17 = v16(v15, v7);
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1C994ADE0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C994A9C4;
    aBlock[3] = &unk_1F49425C0;
    v20 = _Block_copy(aBlock);

    aBlock[0] = 0;
    LODWORD(v18) = sub_1C9A77384(v18, v17, v20, aBlock);
    _Block_release(v20);

    if (v18)
    {
      return aBlock[0];
    }

    else
    {
      v21 = aBlock[0];
      sub_1C9A913C8();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C994A644()
{
  if (!*(v0 + 80))
  {
    *(v0 + 80) = 1;
    return (*(v0 + 56))(0);
  }

  return result;
}

uint64_t sub_1C994A680()
{
  if (!*(v0 + 80))
  {
    *(v0 + 80) = 2;
    return (*(v0 + 56))();
  }

  return result;
}

unint64_t sub_1C994A6B8(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_1C994A6E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C994A6B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C994A70C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C994A6C8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C994A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a7;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 56) = a3;
  *(v7 + 80) = 0;
  *(v7 + 64) = a4;
  *(v7 + 72) = 0;
  return v7;
}

uint64_t sub_1C994A754(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C994A81C(sub_1C994AEC8, result, a1);
  }

  return result;
}

uint64_t sub_1C994A7CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

uint64_t sub_1C994A81C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 80) - 1 >= 2)
  {
    v5 = (result)();
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    v8 = (*(v6 + 16))(v5, a3, sub_1C994AEE4);
    result = sub_1C97BDEE0(v8);
    if (!result)
    {
LABEL_11:
    }

    v9 = result;
    if (result >= 1)
    {
      v10 = 0;
      v11 = *(v3 + 40);
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1CCA912B0](v10, v8);
        }

        else
        {
          v12 = *(v8 + 8 * v10 + 32);
          swift_unknownObjectRetain();
        }

        ++v10;
        v11(v12);
        swift_unknownObjectRelease();
      }

      while (v9 != v10);
      goto LABEL_11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C994A9C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1C994AA18(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C994AA44(a1, a2, a3, a4, *(a5 + 32));
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1C994AA44(uint64_t a1, int a2, int a3, uint64_t a4, id a5)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v6 = [a5 clientSampleTimeFromSampleTime:a1 fromBox:a4 error:v16];
  v7 = v16[0];
  if (v6)
  {
    v8 = v6;
    v9 = v16[0];
    [v8 longLongValue];

    v16[0] = 0;
    v10 = [a5 clientSampleRateWithError_];
    v7 = v16[0];
    if (v10)
    {
      v11 = v10;
      v12 = v16[0];
      v13 = [v11 longLongValue];

      if (v13 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v13 <= 0x7FFFFFFF)
      {
        return sub_1C9A93168();
      }

      __break(1u);
    }
  }

  v15 = v7;
  sub_1C9A913C8();

  return swift_willThrow();
}

uint64_t sub_1C994AB90()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 16))(ObjectType);
}

uint64_t sub_1C994ABE4()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C994AC24()
{
  sub_1C994ABE4();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for SNAnalyzerHost.SNAnalysisState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C994AD5C()
{
  result = qword_1EC3CDC88;
  if (!qword_1EC3CDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDC88);
  }

  return result;
}

uint64_t sub_1C994ADE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C994AE00(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v4 = [v2 initWithGraph:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1C994AF28()
{

  return sub_1C9A93B18();
}

uint64_t sub_1C994AF44()
{
  sub_1C97A8010();
  v3 = *v0;
  v2 = v0[1];
  sub_1C97AA878();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1C9AB98E8;
  *(v5 + 24) = v4;
  v17 = sub_1C97A2CEC(&qword_1EC3CDCA0);
  v18 = sub_1C994E218(&qword_1EC3CDCA8, &qword_1EC3CDCA0);
  v15 = &unk_1C9AB98F8;
  v16 = v5;

  sub_1C97A8954();
  if (v1)
  {
  }

  else
  {

    sub_1C97A592C(&v15);
    v6 = v0[2];
    v7 = v0[3];
    sub_1C97AA878();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1C97A2CEC(&qword_1EC3CDCB0);
    v17 = v9;
    v10 = sub_1C994E218(&qword_1EC3CDCB8, &qword_1EC3CDCB0);
    v18 = v10;
    v15 = &unk_1C9AB9908;
    v16 = v8;

    sub_1C97A8954();
    sub_1C97A592C(&v15);
    v12 = v0[4];
    v11 = v0[5];
    sub_1C97AA878();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    v17 = v9;
    v18 = v10;
    v15 = &unk_1C9AB9918;
    v16 = v13;

    sub_1C97A8954();
  }

  return sub_1C97A592C(&v15);
}

uint64_t sub_1C994B168(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97DA5D0;

  return v6(v3);
}

uint64_t sub_1C994B25C()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_1C994E5AC(v2);

  return sub_1C994B2F8();
}

uint64_t sub_1C994B2F8()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1C994B388;

  return sub_1C987B80C();
}

uint64_t sub_1C994B388()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C994B488()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  sub_1C994E580(v1);

  return sub_1C981BE90();
}

uint64_t sub_1C994B52C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[8] = v0;

  if (!v0)
  {
    v7[9] = v3;
    v7[10] = v5;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C994B63C()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v1[1] = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);

  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = &unk_1C9AB98B8;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  sub_1C994E580(v3);

  return sub_1C981BBA8();
}

uint64_t sub_1C994B72C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[13] = v0;

  if (!v0)
  {
    v7[14] = v3;
    v7[15] = v5;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C994B83C()
{
  sub_1C97AA884();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v0[8].i64[0] = v1;
  v1[1] = vextq_s8(v0[7], v0[7], 8uLL);
  v2 = swift_task_alloc();
  v0[8].i64[1] = v2;
  *v2 = v0;
  sub_1C994E580(v2);

  return sub_1C981BBA8();
}

uint64_t sub_1C994B8F4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[18] = v0;

  if (!v0)
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C994BA04()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C994BA74()
{
  sub_1C97DA934();
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  sub_1C97AA878();
  v4 = swift_allocObject();
  v4[1] = vextq_s8(*(v0 + 152), *(v0 + 152), 8uLL);

  *v3 = &unk_1C9AB98C8;
  v3[1] = v2;
  v3[2] = &unk_1C9AB98D0;
  v3[3] = v1;
  v3[4] = &unk_1C9AB98D8;
  v3[5] = v4;
  sub_1C97DA91C();

  return v5();
}

uint64_t sub_1C994BB54()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C994BBD0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C98DC58C;

  return v5(v2 + 16);
}

uint64_t sub_1C994BCC8()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_1C994E5AC(v2);

  return sub_1C994B25C();
}

uint64_t sub_1C994BD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  swift_defaultActor_initialize();
  sub_1C97D9AF8(a1, v3 + 112);
  v8 = sub_1C9A92988();
  sub_1C9855060();
  sub_1C97ACC50(v9, v10, v11, v8);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;

  sub_1C98B1058();
  sub_1C99A93C4();
  v14 = v13;
  *(v3 + 152) = v13;
  sub_1C9855060();
  sub_1C97ACC50(v15, v16, v17, v8);
  sub_1C97D9AF8(a1, v20);
  sub_1C97A7CF4();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v14;
  sub_1C979B054(v20, (v18 + 5));
  swift_retain_n();
  sub_1C98B1058();
  sub_1C99A9128();

  sub_1C97A592C(a1);
  return v3;
}

uint64_t sub_1C994BF1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1C994C008;

  return v7();
}

uint64_t sub_1C994C008()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C994C104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  v8 = sub_1C97A2CEC(&qword_1EC3C89D0);
  *v7 = v5;
  v7[1] = sub_1C994C1C0;

  return MEMORY[0x1EEE6DA40](v5 + 16, a4, v8);
}

uint64_t sub_1C994C1C0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C994C2A8()
{
  sub_1C97AA95C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);

    sub_1C97A5A8C(v2, v2[3]);
    sub_1C9A91D38();
  }

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C994C334()
{

  sub_1C97A2CEC(&qword_1EC3C89D0);
  sub_1C9A92A28();

  sub_1C97D9AF8(v0 + 112, v2);
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A91D38();
  sub_1C97A592C(v2);
  sub_1C97A592C(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C994C3F8()
{
  sub_1C994C334();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C994C448(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C991A5D4(sub_1C994C464, v1);
}

void *sub_1C994C464()
{
  sub_1C97AA95C();
  v1 = *(v0 + 16);
  result = sub_1C97A5A8C((*(v0 + 24) + 112), *(*(v0 + 24) + 136));
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C9A91DB8();
    sub_1C97DA91C();

    return v3();
  }

  return result;
}

uint64_t sub_1C994C50C()
{
  sub_1C97AA95C();
  sub_1C97A5A8C((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1C9A91D88();
  sub_1C9A91DB8();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C994C590()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C994C5C0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  type metadata accessor for AsyncDispatchQueue();
  swift_allocObject();
  *(v5 + 64) = sub_1C9928384();
  v11 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v11;
  *(v5 + 48) = a1[2];
  type metadata accessor for CombineSubscriptionFromXPCAdapter.AsyncState();
  v12 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *(v5 + 80) = v12;
  v13 = sub_1C9A92988();
  sub_1C9855060();
  sub_1C97ACC50(v14, v15, v16, v13);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  v17[5] = a3;

  sub_1C98B1058();
  sub_1C99A93C4();
  v19 = v18;
  *(v5 + 72) = v18;
  v20 = *(v5 + 80);
  sub_1C9855060();
  sub_1C97ACC50(v21, v22, v23, v13);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v19;
  v24[5] = v20;
  v24[6] = a4;
  v24[7] = a5;

  sub_1C98B1058();
  sub_1C99A9128();

  return v5;
}

uint64_t sub_1C994C7F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1C994C8E4;

  return v7();
}

uint64_t sub_1C994C8E4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C994C9D0()
{
  sub_1C97AA884();
  v1 = sub_1C9A92A48();
  v2 = *(v0 + 32);
  if (v1)
  {

    v2 = 0;
  }

  **(v0 + 16) = v2;
  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C994CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v9 = swift_task_alloc();
  v7[6] = v9;
  v10 = sub_1C97A2CEC(&qword_1EC3C89D0);
  *v9 = v7;
  v9[1] = sub_1C994CB00;

  return MEMORY[0x1EEE6DA40](v7 + 2, a4, v10);
}

uint64_t sub_1C994CB00()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C994CBE8()
{
  v1 = v0[2];
  v0[7] = v1;
  if (v1)
  {
    return sub_1C991A5D4(sub_1C994CC14, v0[3]);
  }

  else
  {
    return sub_1C982F8AC();
  }
}

uint64_t sub_1C994CC38()
{
  sub_1C97AA884();
  v1 = *(v0 + 56);
  if (*(v0 + 72))
  {

    sub_1C97DA91C();

    return v2();
  }

  else
  {
    v4 = *(v0 + 32);
    v5 = v1;
    v8 = (v4 + *v4);
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_1C994CD68;
    v7 = *(v0 + 56);

    return v8(v7);
  }
}

uint64_t sub_1C994CD68()
{
  sub_1C97AA95C();
  v2 = *v1;
  v3 = *v1;
  sub_1C97AA83C();
  *v4 = v3;

  v5 = *(v2 + 56);
  if (v0)
  {
  }

  sub_1C987D484();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C994CE9C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C994CEF4()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 56);
  v18 = *(v0 + 24);

  v17 = *(v0 + 40);

  sub_1C97A2CEC(&qword_1EC3C89D0);
  sub_1C9A92A28();

  sub_1C9A92988();
  sub_1C9855060();
  sub_1C97ACC50(v6, v7, v8, v9);
  sub_1C97A7CF4();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v4;
  v11 = v17;
  *(v10 + 40) = v18;
  *(v10 + 56) = v11;
  *(v10 + 72) = v5;
  v12 = sub_1C98B1058();
  sub_1C9A1E148(v12, v13, v3, v14, v15);

  return v0;
}

uint64_t sub_1C994D088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 32) + **(a4 + 32));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C97DA5D0;

  return v7();
}

uint64_t sub_1C994D170()
{
  sub_1C994CEF4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C994D1FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 56);
  sub_1C994E5C0();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = *(v1 + 40);
  *(v5 + 32) = *(v1 + 24);
  *(v5 + 48) = v6;
  *(v5 + 64) = v4;

  sub_1C9928254(&unk_1C9AB9858, v5);
}

uint64_t sub_1C994D2B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C994D2D8, 0, 0);
}

uint64_t sub_1C994D2D8()
{
  sub_1C97AA884();
  sub_1C9A91D88();
  result = sub_1C9A91D68();
  v2 = *(v0 + 16);
  if (result)
  {
    goto LABEL_7;
  }

  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  if (!v2)
  {
LABEL_7:
    sub_1C9A91D88();
    if (sub_1C9A91D68())
    {
      sub_1C994E528();
      v9 = v5;
      v6 = swift_task_alloc();
      *(v0 + 48) = v6;
      *v6 = v0;
      v6[1] = sub_1C994D5DC;

      return v9();
    }

    else
    {
      sub_1C97DA91C();

      return v7();
    }
  }

  else
  {
    v8 = (**(v0 + 24) + ***(v0 + 24));
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_1C994D4C8;
    v4 = *(v0 + 16);

    return v8(v4);
  }
}

uint64_t sub_1C994D4C8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C994D5DC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C994D6F0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 56);
  sub_1C994E5C0();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v6 = *(v0 + 40);
  *(v4 + 32) = *(v0 + 24);
  *(v4 + 48) = v6;
  *(v4 + 64) = v3;

  sub_1C9928254(&unk_1C9AB9868, v4);
}

uint64_t sub_1C994D7B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C994D7DC, a1, 0);
}

uint64_t sub_1C994D7DC()
{
  sub_1C97AA884();
  *(*(v0 + 16) + 112) = 1;
  sub_1C994E528();
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1C994D8A0;

  return v4();
}

uint64_t sub_1C994D8A0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C994D9B4()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C994DABC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CombineSubscriptionFromXPCAdapter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C994DAFC()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C994E574();

  return sub_1C994D2B8(v3, v4);
}

uint64_t sub_1C994DB88()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C994E574();

  return sub_1C994D7B8(v3, v4);
}

uint64_t sub_1C994DC14()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E5A0();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E514();
  sub_1C97DABB0();

  return sub_1C994BF1C(v3, v4, v5, v6);
}

uint64_t sub_1C994DCB0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E5A0();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E514();
  sub_1C97DABB0();

  return sub_1C994C104(v3, v4, v5, v6, v7);
}

uint64_t sub_1C994DD4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97D9C3C;

  return sub_1C9A21CD8();
}

uint64_t sub_1C994DDF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C9818728();
}

uint64_t sub_1C994DEA4()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C994DF38()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C994DFCC()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E574();

  return sub_1C9804578();
}

uint64_t sub_1C994E058()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C994E0EC()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E55C();
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C994E188()
{
  sub_1C97AA95C();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C994E55C();

  return sub_1C9804360();
}

uint64_t sub_1C994E218(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1C994E288()
{
  sub_1C97AA95C();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  sub_1C994E55C();

  return sub_1C9804360();
}

uint64_t sub_1C994E318()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E5A0();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  sub_1C994E514();
  sub_1C97DABB0();

  return sub_1C994C7F8(v3, v4, v5, v6);
}

uint64_t sub_1C994E3B4()
{
  sub_1C994E5A0();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = sub_1C97AA858(v5);
  *v6 = v7;
  v6[1] = sub_1C97DA5D0;
  v8 = sub_1C994E514();

  return sub_1C994CA40(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_1C994E470()
{
  sub_1C97AA95C();
  sub_1C994E5A0();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C994E514();

  return sub_1C994D088(v3, v4, v5, v6);
}

uint64_t sub_1C994E5CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 72);
  v5 = *(a1 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    if (v6 != *a2 || v7 != a2[1])
    {
      v4 += 48;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    sub_1C985DA88(v9, v10, v11);
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_10:
  result = sub_1C9951194(a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_1C994E6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 72);
  v5 = *(a1 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    if (v6 != *(a2 + 16) || v7 != *(a2 + 24))
    {
      v4 += 48;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    sub_1C985DA88(v9, v10, v11);
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_10:
  result = sub_1C9951194(a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_1C994E79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 72);
  v5 = *(a1 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    if (v6 != *(a2 + 32) || v7 != *(a2 + 40))
    {
      v4 += 48;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    sub_1C985DA88(v9, v10, v11);
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_10:
  result = sub_1C9951194(a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_1C994E884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 72);
  v5 = *(a1 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    if (v6 != *(a2 + 48) || v7 != *(a2 + 56))
    {
      v4 += 48;
      if ((sub_1C9A93B18() & 1) == 0)
      {
        continue;
      }
    }

    sub_1C985DA88(v9, v10, v11);
    goto LABEL_10;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_10:
  result = sub_1C9951194(a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

void sub_1C994E96C(uint64_t a1, unint64_t a2)
{
  v53 = sub_1C9A93228();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 44;
  v58 = 0xE100000000000000;
  v55 = &v57;

  v7 = sub_1C9951214(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C97F9828, v54, a1, a2);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v46 = v2;
  if (v8)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v51 = sub_1C97BD318(0, &qword_1EC3C8E98);
    v10 = 0;
    v50 = *MEMORY[0x1E696A028];
    v48 = (v5 + 8);
    v49 = (v5 + 104);
    v11 = (v7 + 56);
    v47 = v7;
    while (v10 < *(v7 + 16))
    {
      v13 = *(v11 - 3);
      v12 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;

      MEMORY[0x1CCA901C0](v13, v12, v14, v15);
      v16 = sub_1C98443D4();
      v17 = v52;
      v18 = v53;
      (*v49)(v52, v50, v53);
      v19 = sub_1C9A93218();
      v21 = v20;
      (*v48)(v17, v18);
      if ((v21 & 1) != 0 || ([v16 isAtEnd] & 1) == 0)
      {

LABEL_30:
        sub_1C97A8E8C();
        sub_1C97A7A80();
        *v45 = 0;
        swift_willThrow();

        return;
      }

      v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

      if (!v22)
      {

        goto LABEL_30;
      }

      ++v10;

      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v11 += 4;
      v7 = v47;
      if (v8 == v10)
      {

        v23 = v57;
        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v24 = sub_1C97BDEE0(v23);
  if (!v24)
  {
LABEL_24:

    return;
  }

  v25 = v24;
  v56 = v9;
  sub_1C97B7EE8();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v52 = v25;
    v53 = v23 & 0xC000000000000001;
    v27 = v56;
    v51 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v28 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v53)
      {
        v29 = MEMORY[0x1CCA912B0](v26, v23);
      }

      else
      {
        if (v26 >= *(v51 + 16))
        {
          goto LABEL_33;
        }

        v29 = *(v23 + 8 * v26 + 32);
      }

      v30 = v29;
      [v29 doubleValue];
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v33 = [v30 longLongValue];
      if (v33 != [v32 longLongValue] || (objc_msgSend(v30, sel_doubleValue), v35 = v34, objc_msgSend(v32, sel_doubleValue), v35 != v36))
      {

LABEL_28:

        type metadata accessor for SNError();
        v57 = 0;
        v58 = 0xE000000000000000;
        sub_1C9A935B8();

        v57 = 0xD000000000000015;
        v58 = 0x80000001C9AD57A0;
        v41 = [v30 description];
        v42 = sub_1C9A924A8();
        v44 = v43;

        MEMORY[0x1CCA90230](v42, v44);

        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, v57, v58);

        swift_willThrow();

        return;
      }

      v37 = [v30 isEqual_];

      if (!v37)
      {
        goto LABEL_28;
      }

      [v30 doubleValue];
      v39 = v38;

      v56 = v27;
      v40 = *(v27 + 16);
      if (v40 >= *(v27 + 24) >> 1)
      {
        sub_1C97B7EE8();
        v27 = v56;
      }

      *(v27 + 16) = v40 + 1;
      *(v27 + 8 * v40 + 32) = v39;
      ++v26;
      if (v28 == v52)
      {
        goto LABEL_24;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C994EF30(uint64_t a1, unint64_t a2)
{
  sub_1C994E96C(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1C97B7F1C();
      v2 = v12;
      v7 = *(v12 + 16);
      v8 = 32;
      do
      {
        v9 = *(v5 + v8);
        if (v7 >= *(v12 + 24) >> 1)
        {
          sub_1C97B7F1C();
        }

        v10 = v9;
        *(v12 + 16) = v7 + 1;
        *(v12 + 4 * v7 + 32) = v10;
        v8 += 8;
        ++v7;
        --v6;
      }

      while (v6);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

void sub_1C994F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 1:
      sub_1C995168C(a1, a2, a3, a4, a5);
      if (!sub_1C99515CC())
      {
        goto LABEL_14;
      }

      *(a1 + 16) = v29;
      *(a1 + 24) = v30;
      break;
    case 2:
      sub_1C995168C(a1, a2, a3, a4, a5);
      if (!sub_1C99515CC())
      {
        goto LABEL_14;
      }

      *(a1 + 32) = v29;
      *(a1 + 40) = v30;
      break;
    case 3:
      sub_1C995168C(a1, a2, a3, a4, a5);
      if (!sub_1C99515CC())
      {
        goto LABEL_14;
      }

      *(a1 + 48) = v29;
      *(a1 + 56) = v30;
      break;
    case 4:
      v7 = sub_1C9951628(a1, a2, a3);
      v8 = sub_1C98059FC(v7);
      if (!v5)
      {
        v9 = v8;
        sub_1C999C710();
        v10 = [v9 integerValue];

        *(a1 + 64) = v10;
      }

      break;
    case 5:
      v15 = sub_1C9951628(a1, a2, a3);
      v16 = sub_1C98059FC(v15);
      if (!v5)
      {
        v17 = v16;
        sub_1C999C604();
        [v17 doubleValue];
        v26 = v25;

        v27 = v26;
        *(a1 + 72) = v27;
      }

      break;
    case 6:
      v18 = sub_1C9951628(a1, a2, a3);
      v19 = sub_1C9805978(v18);
      if (!v5)
      {
        v21 = sub_1C994EF30(v19, v20);

        *(a1 + 80) = v21;
      }

      break;
    case 7:
      v11 = sub_1C9951628(a1, a2, a3);
      v12 = sub_1C9805978(v11);
      if (!v5)
      {
        v14 = sub_1C994EF30(v12, v13);

        *(a1 + 88) = v14;
      }

      break;
    case 8:
      v22 = sub_1C9951628(a1, a2, a3);
      v23 = sub_1C9805978(v22);
      if (!v5)
      {
        v28 = sub_1C994EF30(v23, v24);

        *(a1 + 96) = v28;
      }

      break;
    default:
      sub_1C995168C(a1, a2, a3, a4, a5);
      if (sub_1C99515CC())
      {

        *a1 = v29;
        *(a1 + 8) = v30;
      }

      else
      {
LABEL_14:
        sub_1C98066EC();
        sub_1C97A7A80();
        swift_willThrow();
      }

      break;
  }
}

uint64_t sub_1C994F2DC(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_1C97BD360(*(a2 + 56) + 32 * v13, v20);
      *&v21 = v16;
      *(&v21 + 1) = v15;
      sub_1C97A2D34(v20, &v22);

LABEL_10:
      v24 = v21;
      v25[0] = v22;
      v25[1] = v23;
      if (!*(&v21 + 1))
      {
      }

      sub_1C97A2D34(v25, &v21);
      v17 = sub_1C9A93848();

      if (v17 <= 8)
      {
        sub_1C994F038(v26, v17, &v21, v18, v19);
        if (v2)
        {
          sub_1C97A592C(&v21);
        }
      }

      result = sub_1C97A592C(&v21);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v7 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_10;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C994F48C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3C5DE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC3D3290;
  if (byte_1EC3D32B8)
  {
    v3 = qword_1EC3D3290;
    sub_1C97A2CEC(&unk_1EC3CA040);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v6 = qword_1EC3D3298;
    v5 = qword_1EC3D32A0;
    v7 = qword_1EC3D32A8;
    v8 = qword_1EC3D32B0;
    *a1 = 0x6F696475615F6E69;
    *(a1 + 8) = 0xE800000000000000;
    *(a1 + 16) = 0x65746174735F6E69;
    *(a1 + 24) = 0xE800000000000000;
    strcpy((a1 + 32), "out_features");
    *(a1 + 45) = 0;
    *(a1 + 46) = -5120;
    *(a1 + 48) = 0x746174735F74756FLL;
    *(a1 + 56) = 0xE900000000000065;
    *(a1 + 64) = v2;
    *(a1 + 72) = v6;
    *(a1 + 80) = v5;
    *(a1 + 88) = v7;
    *(a1 + 96) = v8;
  }
}

void *sub_1C994F5D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C994F48C(__src);
  if (!v2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C994F2DC(__dst, a1);
    return memcpy(a2, __dst, 0x68uLL);
  }

  return result;
}

uint64_t sub_1C994F674(uint64_t a1)
{
  if (*(a1 + 40) > 0xFDu)
  {
    goto LABEL_15;
  }

  if (*(a1 + 40) || *(a1 + 24) != 1)
  {
    goto LABEL_15;
  }

  v3 = *(a1 + 32);
  if (*(v3 + 16) != 2)
  {
    goto LABEL_15;
  }

  result = sub_1C99E26D8(v3, 0);
  if (v1)
  {
    return result;
  }

  if (result == v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (__OFSUB__(v5, 1))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (result != 1 || v5 != 2)
  {
LABEL_15:
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C9820900(v8, v7 + 43, v9);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C994F72C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) > 0xFDu)
  {
    goto LABEL_15;
  }

  if (*(a2 + 40) || *(a2 + 24) != 1)
  {
    goto LABEL_15;
  }

  v4 = *(a2 + 32);
  if (*(v4 + 16) != 3)
  {
    goto LABEL_15;
  }

  result = sub_1C99E26D8(*(a2 + 32), 0);
  if (v2)
  {
    return result;
  }

  if (result == v7)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (__OFSUB__(v7, 1))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != 1 || v7 != 2)
  {
    goto LABEL_15;
  }

  result = sub_1C99E26D8(v4, 1);
  if (result == v12)
  {
    goto LABEL_27;
  }

  if (__OFSUB__(v12, 1))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (result != a1 || v12 - 1 != a1)
  {
LABEL_15:
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C9820900(v10, v9 + 84, v11);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C994F834(uint64_t result, uint64_t a2)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = sub_1C9A5988C(result);
  result = sub_1C992B2CC(v4, 4);
  if (v2)
  {
    return result;
  }

  v5 = result;
  if (*(a2 + 40))
  {
    goto LABEL_5;
  }

  if (*(a2 + 24) != 1)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 32);
  if (*(v8 + 16) != 2)
  {
    goto LABEL_5;
  }

  result = sub_1C99E26D8(v8, 1);
  if (result == v9)
  {
    goto LABEL_26;
  }

  if (__OFSUB__(v9, 1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != v5 || v9 - 1 != v5)
  {
    goto LABEL_5;
  }

  result = sub_1C99E26D8(v8, 0);
  if (result == v11)
  {
    goto LABEL_28;
  }

  if (__OFSUB__(v11, 1))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (result != 1 || v11 != 2)
  {
LABEL_5:
    type metadata accessor for SNError();
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000043, 0x80000001C9ADA400);
    v6 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v6);

    MEMORY[0x1CCA90230](8236, 0xE200000000000000);
    v7 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v7);

    MEMORY[0x1CCA90230](93, 0xE100000000000000);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0, 0xE000000000000000);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C994FA68(void *a1, void *a2)
{
  result = sub_1C989687C(a2);
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    v8 = sub_1C992BBB4(*(a1[12] + 16), *(a1[10] + 16), *(a1[11] + 16));
    if (*(v6 + 16) == 2 && *(v7 + 16) == 2)
    {
      v9 = v8;
      sub_1C99511C4(a1, v153);
      sub_1C995164C();
      sub_1C994E5CC(v10, v11, v12);
      if (v155)
      {
        v14 = v157;
        v13 = v158;
        v15 = v159;
        v193[0] = v154;
        v193[1] = v155;
        v194 = v156 & 1;
        v195 = v157;
        v196 = v158;
        v197 = v159;
        sub_1C99511C4(a1, v153);
        sub_1C995164C();
        sub_1C994E6B4(v16, v17, v18);
        if (v161)
        {
          v152 = v14;
          v198 = v13;
          v25 = v163;
          v24 = v164;
          v188[0] = v160;
          v188[1] = v161;
          v189 = v162 & 1;
          v190 = v163;
          v191 = v164;
          LODWORD(v151) = v165;
          HIDWORD(v151) = v15;
          v192 = v165;
          v26 = v161;
          sub_1C99511C4(a1, v153);
          sub_1C995164C();
          sub_1C994E79C(v27, v28, v29);
          v144 = v26;
          v147 = v25;
          v150 = v24;
          v34 = v167;
          if (v167)
          {
            v36 = v169;
            v35 = v170;
            v183[0] = v166;
            v183[1] = v167;
            v184 = v168 & 1;
            v185 = v169;
            v186 = v170;
            HIDWORD(v141) = v171;
            v187 = v171;
            sub_1C99511C4(a1, v153);
            sub_1C995164C();
            sub_1C994E884(v37, v38, v39);
            v127 = v34;
            v133 = v36;
            v139 = v35;
            v59 = v173;
            if (v173)
            {
              v60 = v175;
              v61 = v176;
              HIDWORD(v120) = v174;
              v62 = v172;
              v63 = v177;

              v178[0] = v62;
              v178[1] = v59;
              v179 = BYTE4(v120) & 1;
              v180 = v60;
              v181 = v61;
              v182 = v63;
              sub_1C994F674(v193);

              v94 = sub_1C9951618(v86, v87, v88, v89, v90, v91, v92, v93, v120, v127, v133, v139, v141, v144, v147, v150, v151, v152);
              sub_1C99511FC(v94, v95, v96);
              sub_1C994F834(v9, v188);

              v105 = sub_1C9951640(v97, v98, v99, v100, v101, v102, v103, v104, v123, v129, v135, v140, v143, v146, v149);
              sub_1C99511FC(v105, v106, v107);
              sub_1C994F72C(v9, v183);

              v116 = sub_1C9951634(v108, v109, v110, v111, v112, v113, v114, v115, v124, v130, v136);
              sub_1C99511FC(v116, v117, v118);
              sub_1C994F834(v9, v178);

              v119 = sub_1C99515EC();
              return sub_1C99511FC(v119, v19, v20);
            }

            v72 = sub_1C9951634(v64, v65, v66, v67, v68, v69, v70, v71, v120, v127, v36);
            sub_1C99511FC(v72, v73, v74);

            v83 = sub_1C9951640(v75, v76, v77, v78, v79, v80, v81, v82, v122, v128, v134, v35, v141, v144, v147);
            sub_1C99511FC(v83, v84, v85);

            v30 = v152;
            v31 = v198;
            v32 = BYTE4(v151);
          }

          else
          {

            v48 = sub_1C9951640(v40, v41, v42, v43, v44, v45, v46, v47, v120, v125, v131, v137, v141, v144, v25);
            sub_1C99511FC(v48, v49, v50);

            v30 = sub_1C9951618(v51, v52, v53, v54, v55, v56, v57, v58, v121, v126, v132, v138, v142, v145, v148, v24, v151, v152);
          }
        }

        else
        {

          v30 = sub_1C97A7890();
          v32 = v15;
        }

        sub_1C99511FC(v30, v31, v32);
      }

      sub_1C97E78C8();
      sub_1C97A7A80();
      *v33 = 4;
      swift_willThrow();
    }

    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C9820900(v22, v21 + 21, v23);
    return swift_willThrow();
  }

  return result;
}

objc_class *sub_1C994FF7C(void *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for EBankCustomModelUtils();
  v4 = sub_1C98DE140();
  sub_1C994F5D8(v4, v5);
  if (v1)
  {
  }

  else
  {

    sub_1C994FA68(v8, a1);
    v6 = objc_allocWithZone(ObjectType);
    ObjectType = sub_1C9950124(v8);
  }

  swift_getObjectType();
  sub_1C995166C();
  return ObjectType;
}

id sub_1C9950124(void *a1)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____SNEBankCustomModel_configuration;
  memcpy(&v1[OBJC_IVAR____SNEBankCustomModel_configuration], a1, 0x68uLL);
  v7 = a1[10];
  v6 = a1[11];
  sub_1C99511C4(a1, __dst);
  v8 = sub_1C98DE140();
  v9 = sub_1C992BF30(v8);
  if (v2)
  {
    sub_1C9951194(a1);
    memcpy(__dst, &v1[v5], sizeof(__dst));
    sub_1C9951194(__dst);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v9;
    v11 = sub_1C992BF30(v7);
    v12 = sub_1C992BF30(v6);
    sub_1C9951194(a1);
    v14 = &v1[OBJC_IVAR____SNEBankCustomModel_coefAllocations];
    *v14 = v10;
    v14[1] = v11;
    v14[2] = v12;
    v15.receiver = v1;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, sel_init);
  }
}

void sub_1C9950274(void *a1)
{
  v3 = v1;
  v76 = *MEMORY[0x1E69E9840];
  v4 = v1 + OBJC_IVAR____SNEBankCustomModel_configuration;
  v5 = sub_1C98967EC(a1);
  if (!v2)
  {
    v6 = v5;
    v7 = [v5 multiArrayValue];
    if (!v7)
    {
      sub_1C97A8E8C();
      sub_1C97A7A80();
      *v11 = 0;
      swift_willThrow();

      return;
    }

    v8 = v7;

    v9 = sub_1C98DE140();
    v10 = sub_1C98967EC(v9);
    v12 = v10;
    v13 = [v10 multiArrayValue];
    if (!v13)
    {
      sub_1C97A8E8C();
      sub_1C97A7A80();
      *v20 = 0;
      swift_willThrow();

      return;
    }

    v14 = v13;

    sub_1C998D968(v8);
    v15 = sub_1C98DE140();
    sub_1C998D968(v15);
    v16 = sub_1C992BBB4(*(*(v4 + 96) + 16), *(*(v4 + 80) + 16), *(*(v4 + 88) + 16));
    v17 = v16;
    if (v16 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v16 <= 0x7FFFFFFF)
    {
      v18 = sub_1C9A5988C(v16);
      type metadata accessor for FixedAddressMutableRawBuffer();
      swift_allocObject();
      v19 = sub_1C99CCA8C(v18);
      sub_1C9A92F38();
      v21 = v3 + OBJC_IVAR____SNEBankCustomModel_coefAllocations;
      v22 = *(v3 + OBJC_IVAR____SNEBankCustomModel_coefAllocations);
      v23 = *(v3 + OBJC_IVAR____SNEBankCustomModel_coefAllocations + 8);
      v24 = v19;
      v25 = *(v21 + 16);
      v26 = *(v4 + 72);
      v71 = *(v4 + 64);

      sub_1C992BCD4(v22, v23, v25, v71, v24, __src, v26);

      memcpy(__dst, __src, sizeof(__dst));
      v27 = [v8 shape];
      sub_1C97BD318(0, &qword_1EC3C54B0);
      v28 = sub_1C9A92798();

      v29 = [v8 shape];
      v30 = sub_1C9A92798();

      v31 = sub_1C97BDEE0(v30);

      v32 = __OFSUB__(v31, 1);
      v33 = v31 - 1;
      if (v32)
      {
        __break(1u);
      }

      else
      {
        sub_1C97C4F68(v33, (v28 & 0xC000000000000001) == 0, v28);
        if ((v28 & 0xC000000000000001) == 0)
        {
          v34 = *(v28 + 8 * v33 + 32);
          goto LABEL_14;
        }
      }

      v34 = MEMORY[0x1CCA912B0](v33, v28);
LABEL_14:
      v35 = v34;

      v36 = [v35 integerValue];

      if (v36 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v36 <= 0x7FFFFFFF)
      {
        v37 = sub_1C9A59974(__dst, v36);
        v69 = v17 * v37;
        sub_1C97A2CEC(&qword_1EC3C7C70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C9A9EE60;
        *(inited + 32) = 1;
        *(inited + 40) = v17;
        *(inited + 48) = v37;
        v39 = swift_initStackObject();
        *(v39 + 16) = xmmword_1C9A9EE60;
        *(v39 + 32) = v69;
        *(v39 + 40) = 1;
        *(v39 + 48) = v17;
        v40 = sub_1C9A5988C(v17);
        v67 = sub_1C992B2CC(v40, 4);
        sub_1C998FD90(v39, inited);
        sub_1C9951658();
        if (!v42)
        {
          goto LABEL_29;
        }

        v43 = v41;
        v44 = swift_slowAlloc();
        v70 = v44 + 4 * v43;
        v45 = swift_allocObject();
        v45[2] = v44;
        v45[3] = v70;
        v68 = sub_1C998FFA8(v44, inited, 65568, v39, sub_1C9951110, v45);

        v46 = swift_initStackObject();
        v65 = xmmword_1C9AA3B60;
        *(v46 + 16) = xmmword_1C9AA3B60;
        *(v46 + 32) = 1;
        *(v46 + 40) = v67;
        v47 = swift_initStackObject();
        *(v47 + 16) = xmmword_1C9AA3B60;
        *(v47 + 32) = v67;
        *(v47 + 40) = 1;
        sub_1C998FD90(v47, v46);
        sub_1C9951658();
        if (!v42)
        {
          goto LABEL_30;
        }

        v49 = v48;
        v50 = swift_slowAlloc();
        v51 = swift_allocObject();
        v51[2] = v50;
        v51[3] = v50 + 4 * v49;
        v66 = sub_1C998FFA8(v50, v46, 65568, v47, sub_1C99515C8, v51);
        swift_setDeallocating();

        v52 = swift_setDeallocating();
        MEMORY[0x1EEE9AC00](v52);
        sub_1C97A2CEC(&unk_1EC3CC290);
        sub_1C9A92F38();
        sub_1C98BCA64(v72);
        v54 = v53;

        if (*(v54 + 16) >> 61)
        {
LABEL_31:
          __break(1u);
          return;
        }

        v56 = MEMORY[0x1EEE9AC00](v55);
        MEMORY[0x1EEE9AC00](v56);
        sub_1C9A92F48();

        v58 = MEMORY[0x1EEE9AC00](v57);
        MEMORY[0x1EEE9AC00](v58);
        sub_1C9A92F48();
LABEL_24:
        sub_1C97A2CEC(&qword_1EC3C6C28);
        v59 = swift_allocObject();
        *(v59 + 16) = v65;
        v60 = *(v4 + 40);
        *(v59 + 32) = *(v4 + 32);
        *(v59 + 40) = v60;
        v61 = objc_opt_self();

        v62 = [v61 featureValueWithMultiArray_];
        v64 = *(v4 + 48);
        v63 = *(v4 + 56);
        *(v59 + 48) = v62;
        *(v59 + 56) = v64;
        *(v59 + 64) = v63;

        *(v59 + 72) = [v61 featureValueWithMultiArray_];
        sub_1C97BD318(0, &qword_1EC3C54F8);
        sub_1C9A92348();
        sub_1C9878610();

        objc_allocWithZone(MEMORY[0x1E695FE48]);
        sub_1C98B6EC8();

        sub_1C99515FC();
        sub_1C99510BC(&v73);
        return;
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_24;
  }
}

uint64_t sub_1C9950D78@<X0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    v6 = (a2 - a1) / 4;
  }

  else
  {
    v6 = 0;
  }

  result = sub_1C99F530C(a1, v6, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void *sub_1C9950DBC(void *__dst, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 24);
  }

  else
  {
    v7 = 0;
  }

  return sub_1C99CC544(v6, v7, __dst, a2);
}

uint64_t sub_1C9950FF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C9951038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C99511FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
  }

  return result;
}

uint64_t sub_1C9951214(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1C9A92628();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_1C97E6AF4();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1C97E6AF4();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_1C9A92618();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_1C9A92548();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_1C9A92628();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C97E6AF4();
      v47 = v27;
    }

    v12 = *(v47 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v47 + 24) >> 1)
    {
      sub_1C97E6AF4();
      v47 = v28;
    }

    *(v47 + 16) = v11;
    v26 = (v47 + 32 * v12);
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_1C9A92548();
    if ((v22 & 1) == 0 && *(v47 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1C9A92628();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_1C97E6AF4();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99515CC()
{

  return swift_dynamicCast();
}

void *sub_1C99515FC()
{

  return memcpy((v0 + 176), (v1 - 256), 0x50uLL);
}

uint64_t sub_1C995166C()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C995168C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1C97BD360(a3, va);
}

uint64_t sub_1C99516A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v54 = MEMORY[0x1E69E7CC0];
  result = sub_1C97B8260(0, v7, 0);
  v9 = v54;
  v46 = v5;
  v47 = v6;
  v44 = a1;
  v45 = v7;
  v43 = a2;
  if (!v7)
  {
    v12 = a3;
LABEL_24:
    v27 = v9;
    v28 = v45;
    for (i = (v44 + 32 * v45 + 56); ; i += 4)
    {
      if (v46 == v28)
      {
        goto LABEL_45;
      }

      if (v28 >= v46)
      {
        goto LABEL_48;
      }

      if (__OFADD__(v28, 1))
      {
        goto LABEL_49;
      }

      if (v47 == v28)
      {
LABEL_45:

        return v27;
      }

      if (v28 >= v47)
      {
        goto LABEL_50;
      }

      v31 = *(i - 3);
      v30 = *(i - 2);
      v32 = *(i - 1);
      v33 = *i;
      v34 = *(v43 + 32 + 8 * v28);
      v35 = *(v12 + 16);

      if (v35)
      {

        v36 = sub_1C9A32230(v31, v30);
        v12 = a3;
        v37 = 0.0;
        if (v38)
        {
          v37 = *(*(a3 + 56) + 8 * v36);
        }
      }

      else
      {
        v37 = 0.0;
      }

      if (v32 >= v37)
      {
        if (v33 != 0.0)
        {

          v31 = 0;
          v30 = 0;
          v33 = 0.0;
          v37 = 0.0;
          goto LABEL_42;
        }
      }

      else
      {
        if (__OFADD__(v34, 1))
        {
          goto LABEL_52;
        }

        if (v34 + 1 != *&v33)
        {

          v31 = 0;
          v30 = 0;
          v37 = 0.0;
          *&v33 = v34 + 1;
        }
      }

      v12 = a3;
LABEL_42:
      v39 = v27;
      v41 = *(v27 + 16);
      v40 = *(v27 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_1C97B8260(v40 > 1, v41 + 1, 1);
        v12 = a3;
        v39 = v27;
      }

      *(v39 + 16) = v41 + 1;
      v27 = v39;
      v42 = v39 + 32 * v41;
      *(v42 + 32) = v31;
      *(v42 + 40) = v30;
      *(v42 + 48) = v37;
      *(v42 + 56) = v33;
      ++v28;
    }
  }

  v10 = (a2 + 32);
  v11 = (a1 + 56);
  v12 = a3;
  while (v5)
  {
    if (!v6)
    {
      goto LABEL_47;
    }

    v13 = v12;
    v14 = *(v11 - 3);
    v15 = *(v11 - 2);
    v16 = *(v11 - 1);
    v49 = v9;
    v51 = *v11;
    v48 = *v10;
    v17 = *(v13 + 16);

    if (v17)
    {

      v18 = v14;
      v19 = sub_1C9A32230(v14, v15);
      v12 = a3;
      v20 = 0.0;
      if (v21)
      {
        v20 = *(*(a3 + 56) + 8 * v19);
      }
    }

    else
    {
      v18 = v14;
      v20 = 0.0;
      v12 = v13;
    }

    v22 = v18;
    v23 = v51;
    if (v16 >= v20)
    {
      if (v51 != 0.0)
      {

        v22 = 0;
        v15 = 0;
        v23 = 0.0;
        v20 = 0.0;
      }
    }

    else
    {
      if (__OFADD__(v48, 1))
      {
        goto LABEL_51;
      }

      if (v48 + 1 != *&v51)
      {

        v22 = 0;
        v15 = 0;
        v20 = 0.0;
        *&v23 = v48 + 1;
      }
    }

    v9 = v49;
    v55 = v49;
    v25 = *(v49 + 16);
    v24 = *(v49 + 24);
    if (v25 >= v24 >> 1)
    {
      v50 = v22;
      v52 = v23;
      result = sub_1C97B8260(v24 > 1, v25 + 1, 1);
      v22 = v50;
      v23 = v52;
      v12 = a3;
      v9 = v55;
    }

    *(v9 + 16) = v25 + 1;
    v26 = v9 + 32 * v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = v15;
    --v6;
    *(v26 + 48) = v20;
    *(v26 + 56) = v23;
    --v5;
    ++v10;
    v11 += 4;
    if (!--v7)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

BOOL sub_1C9951A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a7 != a8)
    {
      return 0;
    }

    return a3 == a6;
  }

  v13 = sub_1C9A93B18();
  result = 0;
  if ((v13 & 1) != 0 && a7 == a8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1C9951AB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C9ADA4F0 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001C9ADA510 == a2)
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

uint64_t sub_1C9951BD0(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000011;
}

uint64_t sub_1C9951C2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v6 = sub_1C97A2CEC(&qword_1EC3CDD50);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99536FC();
  sub_1C9A93DD8();
  v16 = 0;
  sub_1C9953B28();
  sub_1C9A939C8();
  if (!v4)
  {
    v15 = 1;
    sub_1C9953B28();
    sub_1C9A939E8();
    v14 = 2;
    sub_1C9953B28();
    sub_1C9A93A08();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C9951DC0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C9A92528();
  v7 = 0.0;
  if (a1 != 0.0)
  {
    v7 = a1;
  }

  MEMORY[0x1CCA919B0](*&v7);
  return MEMORY[0x1CCA91980](a5);
}

uint64_t sub_1C9951E10(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1C9A93CC8();
  sub_1C9951DC0(a4, v9, a1, a2, a3);
  return sub_1C9A93D18();
}

double sub_1C9951E80(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CDD40);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99536FC();
  sub_1C9A93DB8();
  if (!v1)
  {
    sub_1C97C2CA4();
    sub_1C9A938A8();
    sub_1C97C2CA4();
    sub_1C9A938C8();
    v2 = v6;
    sub_1C97C2CA4();
    sub_1C9A938E8();
    v7 = sub_1C9953B18();
    v8(v7);
  }

  sub_1C97A592C(a1);
  return v2;
}

uint64_t sub_1C9952080(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C9ADA4D0 == a2)
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

uint64_t sub_1C9952150(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x736E6F69746361;
  }
}

uint64_t sub_1C995218C(void *a1, uint64_t a2)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CDD28);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9953588();
  sub_1C9A93DD8();
  v13 = a2;
  v12[15] = 0;
  sub_1C97A2CEC(&qword_1EC3CDD10);
  sub_1C9953630(&qword_1EC3CDD30, sub_1C99536A8);
  sub_1C9953B28();
  sub_1C9A93A18();
  if (!v2)
  {
    v12[14] = 1;
    sub_1C9953B28();
    sub_1C9A93A08();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C995236C(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C97C7F50();
  MEMORY[0x1CCA91980](a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C99523C4(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CDD00);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1C97A5A8C(a1, v9);
  sub_1C9953588();
  sub_1C9A93DB8();
  if (!v1)
  {
    sub_1C97A2CEC(&qword_1EC3CDD10);
    v11[7] = 0;
    sub_1C9953630(&qword_1EC3CDD18, sub_1C99535DC);
    sub_1C9A938F8();
    v9 = v12;
    v11[6] = 1;
    sub_1C9A938E8();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C99525C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9951AB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99525EC(uint64_t a1)
{
  v2 = sub_1C99536FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9952628(uint64_t a1)
{
  v2 = sub_1C99536FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9952684()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = v0[3];
  sub_1C9A93CC8();
  sub_1C9951DC0(v3, v6, v1, v2, v4);
  return sub_1C9A93D18();
}

void sub_1C99526EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1C9951E80(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6;
  }
}

uint64_t sub_1C9952770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9952080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9952798(uint64_t a1)
{
  v2 = sub_1C9953588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99527D4(uint64_t a1)
{
  v2 = sub_1C9953588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9952820()
{
  v1 = *(v0 + 8);
  sub_1C9A93CC8();
  sub_1C97C7F50();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9952878@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C99523C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_1C99528D4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = *a3;
  if (*(a1 + 16) == *(*a3 + 16))
  {

    v9 = sub_1C99516A4(a1, v5, a5);

    v10 = *(v9 + 16);
    if (v10)
    {
      v36 = MEMORY[0x1E69E7CC0];
      sub_1C97B7C28();
      v11 = v36;
      v12 = *(v36 + 16);
      v13 = (v9 + 56);
      do
      {
        v15 = *v13;
        v13 += 4;
        v14 = v15;
        if (v12 >= *(v36 + 24) >> 1)
        {
          sub_1C97B7C28();
        }

        *(v36 + 16) = v12 + 1;
        *(v36 + 8 * v12++ + 32) = v14;
        --v10;
      }

      while (v10);
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v16 = 0;
    *a3 = v11;
    v17 = *(v9 + 16);
    v18 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v19 = v9 + 32 * v16;
    while (v17 != v16)
    {
      if (v16 >= *(v9 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      ++v16;
      v20 = (v19 + 32);
      v21 = *(v19 + 40);
      v19 += 32;
      if (v21)
      {
        v22 = *v20;
        v23 = v20[2];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C97E6BC0();
          v18 = v26;
        }

        v24 = *(v18 + 16);
        if (v24 >= *(v18 + 24) >> 1)
        {
          sub_1C97E6BC0();
          v18 = v27;
        }

        *(v18 + 16) = v24 + 1;
        v25 = (v18 + 24 * v24);
        v25[4] = v22;
        v25[5] = v21;
        v25[6] = v23;
        goto LABEL_11;
      }
    }

    v28 = *(v18 + 16);
    if (!v28)
    {

      if (!__OFADD__(*a4, 1))
      {
        ++*a4;
        return;
      }

      goto LABEL_34;
    }

    v29 = *(v18 + 48);

    v30 = 1;
LABEL_22:
    v31 = 24 * v30;
    while (v28 != v30)
    {
      if (v30 >= *(v18 + 16))
      {
        goto LABEL_33;
      }

      ++v30;
      v32 = *(v18 + v31 + 48);
      v31 += 24;
      if (v29 <= v32)
      {

        v29 = v32;
        goto LABEL_22;
      }
    }

    v33 = *a4;
    if (*a4 >= a2)
    {
      *a4 = 0;
    }

    else
    {

      *a4 = v33 + 1;
    }
  }

  else
  {
    sub_1C9952C18();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_1C9952C18()
{
  result = qword_1EC3CDCD0;
  if (!qword_1EC3CDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDCD0);
  }

  return result;
}

uint64_t (*sub_1C9952C6C(uint64_t a1, uint64_t a2, uint64_t *a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28();
    v9 = v15;
    v10 = *(v15 + 16);
    do
    {
      if (v10 >= *(v15 + 24) >> 1)
      {
        sub_1C97B7C28();
      }

      *(v15 + 16) = v10 + 1;
      *(v15 + 8 * v10++ + 32) = 0;
      --v8;
    }

    while (v8);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v11;
  v13[5] = v12;
  v13[6] = v5;
  v13[7] = v6;
  v13[8] = v7;

  return sub_1C9953380;
}

uint64_t sub_1C9952DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v45 = *a2;
  v49 = *(a2 + 8);
  v47 = *(a2 + 12);
  v16 = *(a2 + 16);
  swift_beginAccess();
  swift_beginAccess();
  sub_1C99528D4(a3, a4, (a5 + 16), (a6 + 16), a1);
  if (v10)
  {
    swift_endAccess();
    return swift_endAccess();
  }

  v20 = v18;
  v44 = v16;
  if (!v18)
  {
    v21 = 0;
    v42 = 0;
    v38 = 0;
    v53 = 0;
    v48 = 0;
    v50 = 0;
    v39 = 0;
    v29 = 0;
    v41 = 0;
    v40 = 0;
    goto LABEL_17;
  }

  v21 = v17;
  v22 = 0;
  v23 = *(a3 + 16);
  v24 = (a3 + 40);
  v25 = a1;
  while (1)
  {
    if (v23 == v22)
    {
      goto LABEL_20;
    }

    if (*(v24 - 1) == v21 && v20 == *v24)
    {
      break;
    }

    v27 = sub_1C9A93B18();
    v25 = a1;
    if (v27)
    {
      break;
    }

    ++v22;
    v24 += 4;
  }

  v28 = *(a5 + 16);
  if (v22 >= *(v28 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v29 = *(v28 + 8 * v22 + 32);
  v30 = sub_1C9878464(v21, v20, v25);
  if (v31)
  {
    goto LABEL_20;
  }

  v43 = v30;
  v55 = a7;
  v56 = a8;
  v57 = a10;
  v32 = __OFSUB__(v29, 1);
  v33 = v29 - 1;
  LODWORD(v29) = v49;
  if (v32)
  {
LABEL_19:
    __break(1u);
    while (1)
    {
LABEL_20:
      sub_1C9A93778();
      __break(1u);
    }
  }

  sub_1C98B2718(&v55, v33, &v58);
  v55 = v45;
  v56 = __PAIR64__(v47, v49);
  v57 = v44;
  sub_1C98B2694();
  v34 = v58;
  v35 = v61;
  v37 = v59;
  v36 = v60;
  v54 = v47;
  sub_1C98B2620();
  v53 = v35;
  v50 = v37;
  v38 = v34;
  sub_1C98B2694();
  v48 = v45;
  v39 = v44;
  v29 = v29;
  v40 = v36 << 32;
  v41 = v54 << 32;
  v42 = v43;
LABEL_17:
  swift_endAccess();
  result = swift_endAccess();
  *a9 = v21;
  a9[1] = v20;
  a9[2] = v42;
  a9[3] = v38;
  a9[4] = v40 | v50;
  a9[5] = v53;
  a9[6] = v48;
  a9[7] = v41 | v29;
  a9[8] = v39;
  return result;
}

char *sub_1C9953118(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, void *), char *a4)
{
  v8 = sub_1C9805AC4();
  if (!v4)
  {
    v9 = *(a2 + 40);
    v24[0] = *a2;
    v24[1] = *(a2 + 8);
    v25 = *(a2 + 16);
    v26 = *(a2 + 32);
    v27 = v9;
    a3(__src, v8, v24);

    memcpy(__dst, __src, sizeof(__dst));
    v11 = __dst[1];
    if (__dst[1])
    {
      v20 = __dst[8];
      v13 = __dst[5];
      v12 = __dst[6];
      v14 = __dst[3];
      v15 = __dst[2];
      v16 = __dst[0];
      a4 = [objc_allocWithZone(type metadata accessor for SNSoundActionsResult()) init];
      v17 = &a4[OBJC_IVAR___SNSoundActionsResult_impl];
      v18 = __dst[7];
      v19 = __dst[4];
      *(v17 + 7) = v16;
      *(v17 + 8) = v11;
      memcpy(v22, __dst, sizeof(v22));
      sub_1C99532A8(v22, v21);
      *(v17 + 6) = v15;

      sub_1C9953318(__dst);
      v29[0] = v14;
      v29[1] = v19;
      v29[2] = v13;
      v29[3] = v12;
      v29[4] = v18;
      v29[5] = v20;
      SNSoundActionsResult.timeRange.setter(v29);
    }

    else
    {
      return 0;
    }
  }

  return a4;
}

uint64_t sub_1C99532A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CDCD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9953318(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CDCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1C99533D8(_BYTE *result, int a2, int a3)
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