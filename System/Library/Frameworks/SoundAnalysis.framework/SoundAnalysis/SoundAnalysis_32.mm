unint64_t sub_1C9A44FAC()
{
  result = qword_1EC3D2EB8;
  if (!qword_1EC3D2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2EB8);
  }

  return result;
}

unint64_t sub_1C9A45004()
{
  result = qword_1EC3D2EC0;
  if (!qword_1EC3D2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2EC0);
  }

  return result;
}

unint64_t sub_1C9A4505C()
{
  result = qword_1EC3D2EC8;
  if (!qword_1EC3D2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2EC8);
  }

  return result;
}

unint64_t sub_1C9A450B4()
{
  result = qword_1EC3D2ED0;
  if (!qword_1EC3D2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2ED0);
  }

  return result;
}

unint64_t sub_1C9A4510C()
{
  result = qword_1EC3D2ED8;
  if (!qword_1EC3D2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2ED8);
  }

  return result;
}

unint64_t sub_1C9A45164()
{
  result = qword_1EC3D2EE0;
  if (!qword_1EC3D2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2EE0);
  }

  return result;
}

unint64_t sub_1C9A451BC()
{
  result = qword_1EC3D2EE8;
  if (!qword_1EC3D2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2EE8);
  }

  return result;
}

unint64_t sub_1C9A45214()
{
  result = qword_1EC3D2EF0;
  if (!qword_1EC3D2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2EF0);
  }

  return result;
}

unint64_t sub_1C9A4526C()
{
  result = qword_1EC3D2EF8;
  if (!qword_1EC3D2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2EF8);
  }

  return result;
}

unint64_t sub_1C9A452C0()
{
  result = qword_1EC3D2F08;
  if (!qword_1EC3D2F08)
  {
    sub_1C97AA4F0(&qword_1EC3CC760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2F08);
  }

  return result;
}

uint64_t sub_1C9A453D0()
{
  result = sub_1C9A453F0();
  qword_1EC3D34E0 = result;
  return result;
}

uint64_t sub_1C9A453F0()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1C97B8240(0, 14, 0);
  v0 = 0;
  v1 = v9;
  do
  {
    v2 = byte_1F492AB78[v0 + 32];
    v3 = 0xE500000000000000;
    v4 = 0x6B63696C63;
    switch(v2)
    {
      case 1:
        v4 = 0x6B63756C63;
        break;
      case 2:
        v3 = 0xE200000000000000;
        v4 = 25957;
        break;
      case 3:
        v3 = 0xE200000000000000;
        v4 = 26725;
        break;
      case 4:
        v3 = 0xE200000000000000;
        v4 = 27499;
        break;
      case 5:
        v3 = 0xE200000000000000;
        v4 = 24940;
        break;
      case 6:
        v3 = 0xE300000000000000;
        v4 = 6845805;
        break;
      case 7:
        v3 = 0xE200000000000000;
        v4 = 28527;
        break;
      case 8:
        v3 = 0xE300000000000000;
        v4 = 7368560;
        break;
      case 9:
        v3 = 0xE200000000000000;
        v4 = 28784;
        break;
      case 10:
        v3 = 0xE200000000000000;
        v4 = 26739;
        break;
      case 11:
        v3 = 0xE200000000000000;
        v4 = 29555;
        break;
      case 12:
        v3 = 0xE200000000000000;
        v4 = 29812;
        break;
      case 13:
        v3 = 0xE200000000000000;
        v4 = 26741;
        break;
      default:
        break;
    }

    v10 = v1;
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_1C97B8240(v5 > 1, v6 + 1, 1);
      v1 = v10;
    }

    ++v0;
    *(v1 + 16) = v6 + 1;
    v7 = v1 + 24 * v6;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
  }

  while (v0 != 14);

  return sub_1C992C348(v1);
}

uint64_t sub_1C9A455A8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      sub_1C97A2CEC(&unk_1EC3CA040);
      if (swift_dynamicCast())
      {
        return v3 | 0x40u;
      }

      else
      {
        return 64;
      }
    }

    else
    {
      return 128;
    }
  }

  return result;
}

uint64_t sub_1C9A45628(uint64_t result)
{
  if (!(result >> 6))
  {
    return result;
  }

  if (result >> 6 != 1)
  {
    return 0;
  }

  v1 = result & 0x3F;
  sub_1C985E2B4();
  result = swift_allocError();
  *v2 = v1;
  return result;
}

uint64_t sub_1C9A4568C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C9A455A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1C9A456C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C9A45628(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C9A456F0@<X0>(uint64_t a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 resourceURL];
  if (v4)
  {
    v5 = v4;
    sub_1C9A914F8();

    v6 = 0;
    v3 = v5;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1C9A91558();

  return sub_1C97ACC50(a1, v6, 1, v7);
}

uint64_t sub_1C9A457AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C9A45CB4();
  if (!v3)
  {
    v7 = sub_1C9A91438();
    sub_1C9A45D9C(v7, a2, a3);

    v8 = objc_opt_self();
    v9 = sub_1C9A92768();

    v10 = [v8 pathWithComponents_];

    sub_1C9A924A8();
    sub_1C9A91468();
  }

  return result;
}

uint64_t sub_1C9A458A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v8 = [objc_opt_self() dataWithJSONObject:a2 options:a3 error:v15];
  v9 = v15[0];
  if (v8)
  {
    v10 = sub_1C9A91618();
    v12 = v11;

    sub_1C9A45EE4(a1, a4 & 1, a5 & 1, v10, v12);
    return sub_1C97A5978(v10, v12);
  }

  else
  {
    v14 = v9;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

uint64_t sub_1C9A459C0()
{
  v29[1] = *MEMORY[0x1E69E9840];
  result = sub_1C9A45CB4();
  if (!v0)
  {
    sub_1C9A91518();
    sub_1C9A92508();

    v2 = sub_1C9A91BD8();

    if (v2 < 0)
    {
      v10 = 0xE000000000000000;
      sub_1C9A935B8();

      sub_1C999CAD8();
      v28 = v11;
      LODWORD(v29[0]) = MEMORY[0x1CCA8F890]();
      v12 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v12);

      v13 = MEMORY[0x1CCA90230](10272, 0xE200000000000000);
      v14 = MEMORY[0x1CCA8F890](v13);
      if (strerror(v14))
      {
        v15 = sub_1C9A92598();
        v10 = v16;
      }

      else
      {
        v15 = 0;
      }

      type metadata accessor for SNError();
      MEMORY[0x1CCA90230](v15, v10);

      MEMORY[0x1CCA90230](41, 0xE100000000000000);
      v22 = sub_1C97FB260();
      sub_1C9929478(v22, v23, v24, v25, v26, v28);

      return swift_willThrow();
    }

    else
    {
      v29[0] = qword_1EC3D30F8 | qword_1EC3D30F0;
      if (ffsctl(v2, dword_1EC3D3100, v29, 0))
      {
        v3 = 0xE000000000000000;
        sub_1C9A935B8();

        sub_1C999CAD8();
        v27 = v4;
        MEMORY[0x1CCA8F890]();
        v5 = sub_1C9A93A98();
        MEMORY[0x1CCA90230](v5);

        v6 = MEMORY[0x1CCA90230](10272, 0xE200000000000000);
        v7 = MEMORY[0x1CCA8F890](v6);
        if (strerror(v7))
        {
          v8 = sub_1C9A92598();
          v3 = v9;
        }

        else
        {
          v8 = 0;
        }

        type metadata accessor for SNError();
        MEMORY[0x1CCA90230](v8, v3);

        MEMORY[0x1CCA90230](41, 0xE100000000000000);
        v17 = sub_1C97FB260();
        sub_1C9929478(v17, v18, v19, v20, v21, v27);

        swift_willThrow();
      }

      return close(v2);
    }
  }

  return result;
}

uint64_t sub_1C9A45CB4()
{
  result = sub_1C9A913E8();
  if ((result & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v8 = v1;
    sub_1C9A91558();
    sub_1C985D764();
    v2 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v2);

    v3 = sub_1C97FB260();
    sub_1C9929478(v3, v4, v5, v6, v7, v8);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A45D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000024, 0x80000001C9ADF510);
    swift_willThrow();
    return v4;
  }

  v4 = a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C97E73FC();
    v4 = v15;
  }

  v8 = *(v4 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8 - 1;
  v10 = v4 + 16 * v9;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  *(v4 + 16) = v9;
  MEMORY[0x1CCA90230](v11, v12);

  v5 = a2;
  v6 = a3;
  v7 = *(v4 + 16);
  v3 = v7 + 1;
  if (v7 >= *(v4 + 24) >> 1)
  {
LABEL_10:
    sub_1C97E6574();
    v4 = v16;
  }

  *(v4 + 16) = v3;
  v13 = v4 + 16 * v7;
  *(v13 + 32) = v5;
  *(v13 + 40) = v6;
  return v4;
}

uint64_t sub_1C9A45EE4(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = sub_1C9A91558();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C9A45CB4();
  if (!v5)
  {
    if (a2)
    {
      v32[1] = a4;
      v32[2] = a5;
      sub_1C9A914D8();
      v15 = [objc_opt_self() defaultManager];
      v16 = sub_1C9A91488();
      v33 = 0;
      v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v33];

      if (!v17)
      {
        v31 = v33;
        sub_1C9A913C8();

        swift_willThrow();
        return (*(v11 + 8))(v13, v10);
      }

      v18 = *(v11 + 8);
      v19 = v33;
      v18(v13, v10);
    }

    if (a3)
    {
      return sub_1C9A91648();
    }

    v20 = [objc_opt_self() defaultManager];
    sub_1C9A91518();
    v21 = sub_1C9A92478();

    v22 = [v20 fileExistsAtPath_];

    if (!v22)
    {
      return sub_1C9A91648();
    }

    else
    {
      type metadata accessor for SNError();
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_1C9A935B8();

      sub_1C999CAD8();
      v33 = 0xD000000000000029;
      v34 = v23;
      sub_1C985D764();
      v24 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v24);

      v25 = v34;
      v26 = sub_1C97FB260();
      sub_1C9929478(v26, v27, v28, v29, v30, v25);

      return swift_willThrow();
    }
  }

  return result;
}

id sub_1C9A4634C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNFileUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1C9A463A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNFileUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C9A463FC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C9A93B18() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for FileCopyingResult(0);

  return sub_1C9A914E8();
}

uint64_t sub_1C9A46488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4C52556D657469 && a2 == 0xE700000000000000)
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

uint64_t sub_1C9A465A0(char a1)
{
  if (!a1)
  {
    return 0x656D616E656C6966;
  }

  if (a1 == 1)
  {
    return 0x657A6953656C6966;
  }

  return 0x4C52556D657469;
}

uint64_t sub_1C9A465F8(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3D2F40);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A471F4();
  sub_1C9A93DD8();
  v12[15] = 0;
  sub_1C9A939C8();
  if (!v1)
  {
    v12[14] = 1;
    sub_1C9A93A38();
    type metadata accessor for FileCopyingResult(0);
    v12[13] = 2;
    sub_1C9A91558();
    sub_1C9A47474();
    sub_1C9A47248(v9, v10);
    sub_1C9A93A18();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C9A467BC()
{
  sub_1C9A92528();
  MEMORY[0x1CCA919B0](*(v0 + 16));
  type metadata accessor for FileCopyingResult(0);
  sub_1C9A91558();
  sub_1C9A47474();
  sub_1C9A47248(v1, v2);
  return sub_1C9A92398();
}

uint64_t sub_1C9A4684C()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  MEMORY[0x1CCA919B0](*(v0 + 16));
  type metadata accessor for FileCopyingResult(0);
  sub_1C9A91558();
  sub_1C9A47474();
  sub_1C9A47248(v1, v2);
  sub_1C9A92398();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A468F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1C9A91558();
  sub_1C97AE9C8();
  v22 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C97A2CEC(&qword_1EC3D2F28);
  sub_1C97AE9C8();
  v24 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for FileCopyingResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A471F4();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  v21 = a1;
  v13 = v25;
  v29 = 0;
  *v12 = sub_1C9A938A8();
  v12[1] = v14;
  v20[1] = v14;
  v28 = 1;
  v12[2] = sub_1C9A93918();
  v27 = 2;
  sub_1C9A47474();
  sub_1C9A47248(v15, v16);
  sub_1C9A938F8();
  v17 = sub_1C9A4748C();
  v18(v17);
  (*(v22 + 32))(v12 + *(v10 + 24), v7, v13);
  sub_1C9A215CC(v12, v23);
  sub_1C97A592C(v21);
  return sub_1C9A21630(v12);
}

uint64_t sub_1C9A46C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A46488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A46C38(uint64_t a1)
{
  v2 = sub_1C9A471F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A46C74(uint64_t a1)
{
  v2 = sub_1C9A471F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A46CE8()
{
  sub_1C9A93CC8();
  sub_1C9A467BC();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A46D74()
{
  v1 = *(v0 + OBJC_IVAR___SNFileCopyingResult_impl);

  return v1;
}

uint64_t sub_1C9A46ECC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___SNFileCopyingResult_impl;
  v4 = *(type metadata accessor for FileCopyingResult(0) + 24);
  v5 = sub_1C9A91558();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id SNFileCopyingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNFileCopyingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNFileCopyingResult(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C9A47038()
{
  result = type metadata accessor for FileCopyingResult(319);
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

uint64_t sub_1C9A47128()
{
  result = sub_1C9A91558();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C9A471F4()
{
  result = qword_1EC3D2F30;
  if (!qword_1EC3D2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2F30);
  }

  return result;
}

uint64_t sub_1C9A47248(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FileCopyingResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9A47370()
{
  result = qword_1EC3D2F48;
  if (!qword_1EC3D2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2F48);
  }

  return result;
}

unint64_t sub_1C9A473C8()
{
  result = qword_1EC3D2F50;
  if (!qword_1EC3D2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2F50);
  }

  return result;
}

unint64_t sub_1C9A47420()
{
  result = qword_1EC3D2F58;
  if (!qword_1EC3D2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2F58);
  }

  return result;
}

id sub_1C9A4749C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13SoundAnalysis21AnyCancellableWrapper_wrapped] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1C9A474FC()
{

  sub_1C9A91DD8();
}

uint64_t sub_1C9A47600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9A474EC();
  *a1 = result;
  return result;
}

id sub_1C9A4762C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C9A4749C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C9A47658(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1C97B8078();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v18;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v16 = a3 + v9;
      a1(&v17, &v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = v17;
      v18 = v6;
      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        v13 = v17;
        sub_1C97B8078();
        v11 = v13;
        v6 = v18;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + v12 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_1C9A477C4(void (*a1)(int *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1C97B7F1C();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v17;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v15 = a3 + v9;
      a1(&v16, &v15);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = v16;
      v17 = v6;
      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        sub_1C97B7F1C();
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 4 * v12 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

void sub_1C9A47930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_1C97AEB94();
  v14 = sub_1C9A92258();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C97AEAD8();
  v15 = sub_1C9A92278();
  sub_1C97AE9C8();
  v27 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C98435A0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C9A4D728();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C9A4D59C();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  sub_1C9A92298();
  if (v11)
  {
    type metadata accessor for TransportError(0);
    sub_1C9A4D4F4();
    sub_1C9A4B29C(v23, 255, v24);
    sub_1C98BBB74();
    *v25 = a11;
  }

  else
  {
    (*(v27 + 32))(v13, v22, v15);
    sub_1C9A92268();
    sub_1C9A92238();
    sub_1C9A92248();
    sub_1C9A922A8();
    (*(v27 + 8))(v12, v15);
  }

  sub_1C97AEB5C();
}

void sub_1C9A47B4C()
{
  sub_1C97AEB94();
  sub_1C9A921F8();
  sub_1C97AE9C8();
  v33 = v5;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  v9 = sub_1C9A92258();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C97AEAD8();
  sub_1C9A92278();
  sub_1C97AE9C8();
  v35 = v10;
  v36 = v11;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98435A0();
  sub_1C9A4D648();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C9A4D5EC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C9A4D59C();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = *(v0 + 16);
  sub_1C9A92298();
  if (v1)
  {
    sub_1C9A4D75C();
    sub_1C9A4D4F4();
    sub_1C9A4B29C(v22, 255, v23);
    sub_1C98BBB74();
    *v24 = v17;
  }

  else
  {
    v32 = v8;
    v18 = *(v36 + 32);
    v19 = v16;
    v20 = v35;
    v36 += 32;
    v21 = v18;
    v18(v3, v19, v35);
    sub_1C9A92268();
    sub_1C9A92238();
    sub_1C9A92248();
    sub_1C9A922A8();
    v21(v3, v2, v20);
    v25 = v32;
    sub_1C9A921E8();
    v27 = sub_1C9A4993C();
    v29 = v33;
    v28 = v34;
    if (v26)
    {
      sub_1C985E2B4();
      swift_willThrowTypedImpl();
      sub_1C97A7A80();
      *v30 = v27;
      (*(v29 + 8))(v25, v28);
    }

    else
    {
      (*(v33 + 8))(v25, v34);
    }
  }

  sub_1C97AEB5C();
}

void sub_1C9A47EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_1C97AEB94();
  LODWORD(v53) = v15;
  sub_1C9A921F8();
  sub_1C97AE9C8();
  v48 = v17;
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AEAD8();
  v47 = v19 - v18;
  sub_1C98BBB00();
  v20 = sub_1C9A92258();
  sub_1C97AE9C8();
  v50 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AEAD8();
  v52 = v24 - v23;
  sub_1C98BBB00();
  v25 = sub_1C9A92278();
  sub_1C97AE9C8();
  v51 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C98435A0();
  sub_1C9A4D5FC();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v44 - v30;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C9A4D648();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C9A4D678();
  sub_1C9A4D708();
  sub_1C9A92298();
  if (v11)
  {
    type metadata accessor for TransportError(0);
    sub_1C9A4D4F4();
    sub_1C9A4B29C(v33, 255, v34);
    sub_1C98BBB74();
    *v35 = a11;
  }

  else
  {
    v44 = v12;
    v45 = v31;
    v46 = v20;
    v36 = *(v51 + 32);
    v36(v14, v13, v25);
    sub_1C9A92268();
    sub_1C9A92238();
    sub_1C9A4BA38();
    v53 = v36;
    sub_1C9A92248();
    v37 = v45;
    sub_1C9A922A8();
    v53(v14, v37, v25);
    v38 = v47;
    sub_1C9A921E8();
    v40 = sub_1C9A49A40();
    v42 = v48;
    v41 = v49;
    if (v39)
    {
      sub_1C985E2B4();
      swift_willThrowTypedImpl();
      sub_1C97A7A80();
      *v43 = v40;
      (*(v42 + 8))(v38, v41);
    }

    else
    {
      (*(v48 + 8))(v38, v49);
    }
  }

  sub_1C97AEB5C();
}

void sub_1C9A482F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_1C97AEB94();
  v16 = v15;
  sub_1C9A921F8();
  sub_1C97AE9C8();
  v36 = v18;
  v37 = v17;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AEAD8();
  v35 = v20 - v19;
  sub_1C98BBB00();
  sub_1C9A92258();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AEAD8();
  v22 = sub_1C9A4D6B4();
  sub_1C97AE9C8();
  v38 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C98435A0();
  sub_1C9A4D688();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C9A4D5EC();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C9A4D59C();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C9A4D678();
  memcpy(v39, v16, 0x80uLL);
  if (__OFADD__(sub_1C9A4C75C(v39), 8))
  {
    __break(1u);
  }

  else
  {
    sub_1C9A4D708();
    sub_1C9A92298();
    if (v11)
    {
      type metadata accessor for TransportError(0);
      sub_1C9A4D4F4();
      sub_1C9A4B29C(v28, 255, v29);
      sub_1C98BBB74();
      *v30 = a11;
    }

    else
    {
      v31 = *(v38 + 32);
      v31(v14, v12, v22);
      sub_1C9A92268();
      sub_1C9A92238();
      sub_1C9A4BAE4(v39);
      sub_1C9A92248();
      sub_1C9A922A8();
      v31(v14, v13, v22);
      sub_1C9A921E8();
      v33 = sub_1C9A49B44();
      if (v32)
      {
        sub_1C985E2B4();
        swift_willThrowTypedImpl();
        sub_1C97A7A80();
        *v34 = v33;
        (*(v36 + 8))(v35);
      }

      else
      {
        (*(v36 + 8))(v35, v37);
      }
    }

    sub_1C97AEB5C();
  }
}

void sub_1C9A48768()
{
  sub_1C97AEB94();
  v6 = v5;
  sub_1C9A92258();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  sub_1C9A92278();
  sub_1C97AE9C8();
  v17 = v8;
  v18 = v9;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98435A0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C9A4D5EC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C9A4D688();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C9A4D678();
  if (__OFADD__(sub_1C9A497D0(v6), 8))
  {
    __break(1u);
  }

  else
  {
    v13 = *(v1 + 16);
    sub_1C9A4D708();
    sub_1C9A92298();
    if (v2)
    {
      sub_1C9A4D75C();
      sub_1C9A4D4F4();
      sub_1C9A4B29C(v14, 255, v15);
      sub_1C98BBB74();
      *v16 = v13;
    }

    else
    {
      (*(v18 + 32))(v0, v3, v17);
      sub_1C9A92268();
      sub_1C9A92238();
      sub_1C9A49C48(v6);
      sub_1C9A92248();
      sub_1C9A922A8();
      (*(v18 + 8))(v4, v17);
    }

    sub_1C97AEB5C();
  }
}

void sub_1C9A48A44()
{
  sub_1C97AEB94();
  v4 = v3;
  v5 = sub_1C9A921F8();
  sub_1C97AE9C8();
  v28[2] = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v28[1] = v9 - v8;
  sub_1C98BBB00();
  sub_1C9A92258();
  sub_1C97AE9C8();
  v30 = v11;
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  sub_1C9A4D6B4();
  sub_1C97AE9C8();
  v32 = v13;
  v33 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C98435A0();
  sub_1C9A4D5FC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C98435C8();
  v29 = v15;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C9A4D688();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v28 - v18;
  if (__OFADD__(sub_1C9A497D0(v4), 8))
  {
    __break(1u);
  }

  else
  {
    v28[0] = v5;
    v20 = *(v1 + 16);
    sub_1C9A4D668();
    sub_1C9A92298();
    if (v2)
    {
      sub_1C9A4D75C();
      sub_1C9A4D4F4();
      sub_1C9A4B29C(v21, 255, v22);
      sub_1C98BBB74();
      *v23 = v20;
    }

    else
    {
      v32 = *(v32 + 32);
      (v32)(v0, v19, v33);
      sub_1C9A92268();
      sub_1C9A92238();
      sub_1C9A49C48(v4);
      v24 = v32;
      sub_1C9A92248();
      v25 = v29;
      sub_1C9A922A8();
      v24(v0, v25, v33);
      sub_1C9A921E8();
      if (sub_1C9A921B8() == 1)
      {
        sub_1C9A49D70();
      }

      v26 = sub_1C9A4D73C();
      v27(v26);
    }

    sub_1C97AEB5C();
  }
}

void sub_1C9A48E58()
{
  sub_1C97AEB94();
  v34 = v3;
  v5 = v4;
  v6 = sub_1C9A921F8();
  sub_1C97AE9C8();
  v29[3] = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v29[2] = v10 - v9;
  sub_1C98BBB00();
  sub_1C9A92258();
  sub_1C97AE9C8();
  v31 = v12;
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v35 = sub_1C9A4D6B4();
  sub_1C97AE9C8();
  v33 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C98435A0();
  sub_1C9A4D5EC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98435C8();
  v30 = v16;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C9A4D5FC();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v29 - v19;
  if (__OFADD__(sub_1C9A497D0(v5), 8))
  {
    __break(1u);
  }

  else
  {
    v29[1] = v6;
    v21 = *(v0 + 16);
    sub_1C9A4D668();
    sub_1C9A92298();
    if (v1)
    {
      sub_1C9A4D75C();
      sub_1C9A4D4F4();
      sub_1C9A4B29C(v22, 255, v23);
      sub_1C98BBB74();
      *v24 = v21;
    }

    else
    {
      v33 = *(v33 + 32);
      (v33)(v2, v20, v35);
      sub_1C9A92268();
      sub_1C9A92238();
      sub_1C9A49C48(v5);
      v25 = v33;
      sub_1C9A92248();
      v26 = v30;
      sub_1C9A922A8();
      v25(v2, v26, v35);
      sub_1C9A921E8();
      if (sub_1C9A921B8() == 1)
      {
        sub_1C9A49EC8();
      }

      v27 = sub_1C9A4D714();
      v28(v27);
    }

    sub_1C97AEB5C();
  }
}

uint64_t sub_1C9A4921C(uint64_t a1)
{
  switch(a1)
  {
    case 0xA05B56AEEEB622AALL:
      return 11;
    case 0xA7999863D4BD6434:
      return 16;
    case 0xA80C09E1359627FELL:
      return 3;
    case 0xB4AA481BE1FDE43ALL:
      return 12;
    case 0xB85A2ACE36B59E0CLL:
      return 4;
    case 0xC1061158A6EF645BLL:
      return 1;
    case 0xC5B924663006A428:
      return 0;
    case 0xC6E760DD47B2C80FLL:
      return 10;
    case 0xEC86CD7F9908C763:
      return 8;
    case 0xF7B74B2F7799A98BLL:
      return 9;
    case 0x2845DB5F511B4BDLL:
      return 13;
    case 0x667A44265312B161:
      return 7;
    case 0xB7557F369368E5ALL:
      return 5;
    case 0x200EC452214DB258:
      return 14;
    case 0x2DD4073BB2F83286:
      return 15;
    case 0x54EC16DA33AB016CLL:
      return 6;
    case 0x76F1521F8653CE2:
      return 2;
  }

  return 17;
}

uint64_t sub_1C9A49444(uint64_t a1)
{
  switch(a1)
  {
    case 0x80126D949929C654:
      return 9;
    case 0x9094EC1D31E278F3:
      return 4;
    case 0xA50962D2B59FB697:
      return 7;
    case 0x7F7B2594F1CDFC26:
      return 3;
    case 0xFE267728FDFA9246:
      return 11;
    case 0x2D787BC6DE9B341:
      return 12;
    case 0x1B795E774E951A5DLL:
      return 10;
    case 0x3B780FAB693D8BD9:
      return 6;
    case 0x5542283F2D7D9659:
      return 8;
    case 0x57E29905DCBE3961:
      return 5;
    case 0x678009F229B2CCD0:
      return 0;
    case 0x6B447290CD5047BALL:
      return 13;
    case 0x7B90A92065B64AACLL:
      return 1;
    case 0xA686EEC936C06A86:
      return 2;
  }

  return 14;
}

uint64_t sub_1C9A4960C(uint64_t a1)
{
  switch(a1)
  {
    case 0x9F4F88E3E848C0D6:
      return 9;
    case 0xA4C369110A5245FFLL:
      return 7;
    case 0xB6438CFD4F02BBE8:
      return 3;
    case 0xCB1950A52A9C8BD6:
      return 4;
    case 0xC3B126BD3C7C0BCLL:
      return 0;
    case 0x286E0B96332FA124:
      return 1;
    case 0x7973C1DC54C48923:
      return 5;
    case 0x43B6383B7310EDE6:
      return 8;
    case 0x46BD4B3D40F57A48:
      return 6;
    case 0x301B8A18FA2DFB16:
      return 2;
  }

  return 10;
}

uint64_t sub_1C9A49784(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

unint64_t sub_1C9A497D0(uint64_t a1)
{
  v1 = 0;
  while (v1 != 16)
  {
    v2 = *(a1 + 16);
    v3 = v1 >= v2;
    if (v1 == v2)
    {
      break;
    }

    ++v1;
    if (v3)
    {
      __break(1u);
      return v1;
    }
  }

  return v1;
}

uint64_t sub_1C9A497FC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C9A4983C(a1);
  return v2;
}

uint64_t sub_1C9A4983C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C9A92288();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  (*(v6 + 16))(v9 - v8, a1, v4);
  sub_1C9A922C8();
  swift_allocObject();
  sub_1C97FB318();
  v10 = sub_1C9A922B8();
  (*(v6 + 8))(a1, v4);
  *(v2 + 16) = v10;
  return v2;
}

uint64_t sub_1C9A4993C()
{
  v2 = sub_1C9A921B8();
  if (v2 == 1)
  {
    LODWORD(result) = sub_1C9A4B4DC();
    if (v1)
    {
      return result;
    }

    else
    {
      return result;
    }
  }

  else if (v2)
  {
    result = sub_1C9A93778();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    v4[2] = v0;
    return sub_1C9A47658(sub_1C9A4D4BC, v4, 0, 16);
  }

  return result;
}

uint64_t sub_1C9A49A40()
{
  v2 = sub_1C9A921B8();
  if (v2 == 1)
  {
    LODWORD(result) = sub_1C9A4B4DC();
    if (v1)
    {
      return result;
    }

    else
    {
      return result;
    }
  }

  else if (v2)
  {
    result = sub_1C9A93778();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    v4[2] = v0;
    return sub_1C9A47658(sub_1C9A4BA70, v4, 0, 16);
  }

  return result;
}

uint64_t sub_1C9A49B44()
{
  v2 = sub_1C9A921B8();
  if (v2 == 1)
  {
    LODWORD(result) = sub_1C9A4B4DC();
    if (v1)
    {
      return result;
    }

    else
    {
      return result;
    }
  }

  else if (v2)
  {
    result = sub_1C9A93778();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    v4[2] = v0;
    return sub_1C9A47658(sub_1C9A4D4BC, v4, 0, 16);
  }

  return result;
}

uint64_t sub_1C9A49C48(uint64_t a1)
{
  if (*(a1 + 16) == 16)
  {
    v1 = 0;
    do
    {
      v2 = v1 + 1;
      result = sub_1C9A92228();
      v1 = v2;
    }

    while (v2 != 16);
  }

  else
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000037, 0x80000001C9ADF6E0);
    v4 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v4);

    result = sub_1C9A93778();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9A49D70()
{
  v1 = sub_1C9A921C8();
  switch(v1)
  {
    case 0xCAFC1CD77EB0E6EDLL:
      result = sub_1C9A4B4DC();
      if (!v0)
      {
        LOBYTE(result) = result | 0x40;
        return result;
      }

      break;
    case 0x385465D0567AF133:
      LOBYTE(result) = 0x80;
      return result;
    case 0xD4E65CB265808313:
      result = sub_1C9A4B62C();
      if (!v0)
      {
        return result;
      }

      break;
    default:
      sub_1C9A935B8();

      v3 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v3);

      result = sub_1C9A93778();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C9A49EC8()
{
  v1 = sub_1C9A921C8();
  switch(v1)
  {
    case 0x7CDFD625139CCB69:
      result = sub_1C9A4B4DC();
      if (!v0)
      {
        return result | 0x40u;
      }

      break;
    case 0x36378DC0B5CDF907:
      return 128;
    case 0xD6F3B8EF6B967A21:
      result = sub_1C9A4B3CC();
      if (!v0)
      {
        return result & 1;
      }

      break;
    default:
      sub_1C9A935B8();

      v3 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v3);

      result = sub_1C9A93778();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C9A4A024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9A497FC(a1);
  *a2 = result;
  return result;
}

void sub_1C9A4A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, unsigned __int8 a12, int a13)
{
  sub_1C97AEB94();
  v120 = v20;
  v121 = v19;
  v123 = v14;
  v21 = v13;
  v23 = v22;
  v24 = sub_1C97A2CEC(&qword_1EC3D2F78);
  MEMORY[0x1EEE9AC00](v24 - 8);
  sub_1C98435A0();
  v119 = v25 - v26;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C98435C8();
  v118 = v28;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C98435C8();
  v117 = v30;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C9A4D648();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v114 - v34;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C9A4D5FC();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C98435C8();
  v116 = v37;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C98435C8();
  v115 = v39;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C9A4D59C();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C9A4D728();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v114 - v43;
  v45 = sub_1C9A92258();
  v122 = v44;
  v124 = v45;
  sub_1C97ACC50(v44, 1, 1, v45);
  v125 = v23;
  switch(sub_1C9A4ACB0())
  {
    case 1u:
      v79 = sub_1C9A4D6EC();
      v17 = &v114;
      MEMORY[0x1EEE9AC00](v79);
      sub_1C9A4D568();
      *(v80 - 16) = v125;
      sub_1C9A4D5B0(v81, v82);
      (*(v35 + 5))();

      sub_1C980478C();
      sub_1C9A921D8();
      if (v14)
      {
        goto LABEL_35;
      }

      sub_1C9A4D50C(v15);
      if (!v48)
      {
        sub_1C9A4CB48(&v114);
      }

      v49 = v15;
      goto LABEL_31;
    case 2u:
      v62 = sub_1C9A4D578();
      MEMORY[0x1EEE9AC00](v62);
      sub_1C9A4D568();
      *(v63 - 16) = v125;
      sub_1C9A4D5B0(v64, v65);
      sub_1C9A4D60C();
      sub_1C9871998();
      v66();

      sub_1C980478C();
      sub_1C9A921D8();
      if (v35)
      {
        goto LABEL_35;
      }

      v67 = v124;
      sub_1C97ACC50(v18, 0, 1, v124);
      v17 = v122;
      if (sub_1C97ABF20(v122, 1, v67) != 1)
      {
        sub_1C9A4CB48(v17);
      }

      sub_1C9A4CBB0(v18, v17);
      v68 = v120;
      goto LABEL_70;
    case 3u:
      v69 = sub_1C9A4D578();
      v17 = &v114;
      MEMORY[0x1EEE9AC00](v69);
      sub_1C9A4D568();
      *(v70 - 16) = v125;
      sub_1C9A4D5B0(v71, v72);
      sub_1C9871998();
      v73();

      sub_1C980478C();
      sub_1C9A921D8();
      if (v14)
      {
        goto LABEL_35;
      }

      sub_1C9A4D50C(v35);
      if (!v48)
      {
        sub_1C9A4CB48(&v114);
      }

      v49 = v35;
      goto LABEL_31;
    case 4u:
      v50 = sub_1C9A4D578();
      v17 = &v114;
      MEMORY[0x1EEE9AC00](v50);
      sub_1C9A4D568();
      *(v51 - 16) = v125;
      sub_1C9A4D5B0(v52, v53);
      sub_1C9871998();
      v54();
      sub_1C9A4D698();
      v55 = v117;
      sub_1C9A921D8();
      if (v14)
      {
        goto LABEL_35;
      }

      sub_1C9A4D50C(v55);
      if (!v48)
      {
        sub_1C9A4CB48(&v114);
      }

      sub_1C9A4CBB0(v55, &v114);
      v56 = sub_1C9A4D5D0();
      if (v15 > 0xEFu)
      {
        goto LABEL_45;
      }

      if (!v56)
      {
        sub_1C9A92228();
      }

      if (sub_1C9A4D5D0())
      {
        goto LABEL_69;
      }

      sub_1C9A4AE60(v15);
      goto LABEL_53;
    case 5u:
      v83 = sub_1C9A4D578();
      MEMORY[0x1EEE9AC00](v83);
      sub_1C9A4D568();
      v17 = v125;
      *(v84 - 16) = v125;
      sub_1C9A4D5B0(v85, v86);
      sub_1C9A4D60C();
      sub_1C9871998();
      v87();
      sub_1C9A4D698();
      v88 = v119;
      goto LABEL_34;
    case 6u:
      v89 = sub_1C9A4D578();
      MEMORY[0x1EEE9AC00](v89);
      sub_1C9A4D568();
      v17 = v125;
      *(v90 - 16) = v125;
      sub_1C9A4D5B0(v91, v92);
      sub_1C9A4D60C();
      sub_1C9871998();
      v93();
      sub_1C9A4D698();
      v88 = v118;
LABEL_34:
      sub_1C9A921D8();
      if (v35)
      {
        goto LABEL_35;
      }

      sub_1C9A4D50C(v88);
      if (!v48)
      {
        sub_1C9A4CB48(v17);
      }

      sub_1C9A4CBB0(v88, v17);
      v56 = sub_1C9A4D5D0();
      if (v15 > 0xFBu)
      {
LABEL_45:
        if (!v56)
        {
          sub_1C9A92228();
        }

        goto LABEL_69;
      }

      if (!v56)
      {
        sub_1C9A92228();
      }

      if (sub_1C9A4D5D0())
      {
        goto LABEL_69;
      }

      sub_1C9A4AF68(v15);
LABEL_53:
      v68 = v120;
      goto LABEL_70;
    case 7u:
      v74 = v21[6];
      v75 = v21[7];
      sub_1C97A5A8C(v21 + 3, v74);
      v76 = v123;
      v77 = (*(v75 + 16))(v74, v75);
      if (v76)
      {
        v126 = v76;
        v78 = v76;
        sub_1C97A2CEC(&unk_1EC3CA040);
        if (!sub_1C9A4D6D0())
        {
          goto LABEL_78;
        }

        v103 = a12;
      }

      else
      {
        v103 = v77;

        sub_1C9A4D620(v100);
        if (v105)
        {
          __break(1u);
          goto LABEL_77;
        }
      }

      v101 = v124;
      sub_1C9A921D8();
      sub_1C97ACC50(v17, 0, 1, v101);
      v102 = v122;
      sub_1C9A4D548(v122);
      if (!v48)
      {
        sub_1C9A4CB48(v102);
      }

      sub_1C9A4CBB0(v17, v102);
      v17 = v102;
      if (!sub_1C97ABF20(v102, 1, v101))
      {
        goto LABEL_66;
      }

      goto LABEL_68;
    case 8u:
      v57 = v125;
      v96 = v123;
      sub_1C9A4B718(v127);
      if (v96)
      {
        LODWORD(v59) = a13;
LABEL_39:
        v97 = sub_1C9A4D658();
        if (sub_1C97ABF20(v97, v98, v124) != 1)
        {
          sub_1C9A4CB48(v15);
        }

        v99 = sub_1C9A921F8();
        (*(*(v99 - 8) + 8))(v57, v99);
        goto LABEL_67;
      }

      memcpy(v128, v127, 0x80uLL);
      sub_1C9A4D6EC();
      v106 = (*(v35 + 4))(v128, v16, v35);
      v17 = v122;
      v61 = v124;
LABEL_62:
      v103 = v106;
      sub_1C996FC24(v127);

      sub_1C9A4D620(v108);
      v107 = v116;
      if (v105)
      {
LABEL_77:
        __break(1u);
LABEL_78:

        sub_1C9A93778();
        __break(1u);
        return;
      }

LABEL_63:
      sub_1C9A4D668();
      sub_1C9A921D8();
      sub_1C97ACC50(v107, 0, 1, v61);
      sub_1C9A4D548(v17);
      if (!v48)
      {
        sub_1C9A4CB48(v17);
      }

      sub_1C9A4CBB0(v107, v17);
      if (!sub_1C9A4D5D0())
      {
LABEL_66:
        sub_1C9A4D750();
        sub_1C9A4AD90(v103, v109);
      }

LABEL_68:
      sub_1C9A4D750();
      sub_1C979B1DC(v103, v110);
      goto LABEL_69;
    case 9u:
      v57 = v125;
      v58 = v123;
      v59 = sub_1C9A4B2E0();
      if (v58)
      {
        goto LABEL_39;
      }

      sub_1C9A4D6EC();
      v60 = (*(v35 + 3))(v59, v16, v35);
      v17 = v122;
      v61 = v124;
      v103 = v60;

      v106 = sub_1C9A4D620(v104);
      v107 = v115;
      if (!v105)
      {
        goto LABEL_63;
      }

      __break(1u);
      goto LABEL_62;
    default:
      v15 = v21[6];
      v46 = v21[7];
      sub_1C97A5A8C(v21 + 3, v15);
      (*(v46 + 8))(v15, v46);
      sub_1C9A4D708();
      sub_1C980478C();
      v47 = v123;
      sub_1C9A921D8();
      if (v47)
      {
LABEL_35:
        LODWORD(v59) = a13;
        v94 = sub_1C9A4D658();
        if (sub_1C97ABF20(v94, v95, v124) != 1)
        {
          sub_1C9A4CB48(v15);
        }

LABEL_67:
        *v121 = v59;
      }

      else
      {
        sub_1C9A4D50C(v16);
        if (!v48)
        {
          sub_1C9A4CB48(v17);
        }

        v49 = v16;
LABEL_31:
        sub_1C9A4CBB0(v49, v17);
LABEL_69:
        v68 = v120;
LABEL_70:
        v111 = sub_1C9A4D5D0();
        v112 = v111;
        if (v111 != 1)
        {
          if (v111)
          {
            sub_1C9A4CB48(v17);
            v112 = 1;
          }

          else
          {
            sub_1C9A92248();
            v112 = 0;
          }
        }

        v113 = sub_1C9A92278();
        sub_1C97ACC50(v68, v112, 1, v113);
      }

      sub_1C97AEB5C();
      return;
  }
}

uint64_t sub_1C9A4ACB0()
{
  v0 = sub_1C9A921C8();
  result = sub_1C9A4960C(v0);
  if (result == 10)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000033, 0x80000001C9ADFBB0);
    v2 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v2);

    result = sub_1C9A93778();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9A4AD90(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1C9A92228();
    return sub_1C9A92238();
  }

  else
  {
    sub_1C9A92228();
    LODWORD(result) = sub_1C9A49C48(a1);
    if (v2)
    {
      return result;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_1C9A4AE60(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      sub_1C9A92238();
    }

    return sub_1C9A92238();
  }

  else
  {
    sub_1C9A92238();
    LODWORD(result) = sub_1C9A4BAAC();
    if (v1)
    {
      return result;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_1C9A4AF68(unsigned __int8 a1)
{
  if (!(a1 >> 6) || a1 >> 6 == 1)
  {
    sub_1C9A92238();
  }

  return sub_1C9A92238();
}

uint64_t sub_1C9A4B01C()
{

  sub_1C97A592C(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1C9A4B05C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C9A4A04C(a1, &v12, a3, a4, a5, a6, a7, a8, v10, v11, SBYTE2(v11), HIBYTE(v11), v12);
  if (v8)
  {
    *a2 = v12;
  }
}

_BYTE *sub_1C9A4B124(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9A4B200()
{
  result = qword_1EC3D2F68;
  if (!qword_1EC3D2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2F68);
  }

  return result;
}

uint64_t sub_1C9A4B29C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9A4B2E0()
{
  v0 = sub_1C9A921C8();
  result = sub_1C9A4921C(v0);
  if (result == 17)
  {
    sub_1C9A935B8();

    v2 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v2);

    result = sub_1C9A93778();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9A4B3CC()
{
  v0 = sub_1C9A921C8();
  if (v0 == 0xCA52B494267CED00)
  {
    return 1;
  }

  if (v0 == 0xA600ADF28585EF58)
  {
    return 0;
  }

  sub_1C9A935B8();

  v2 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v2);

  result = sub_1C9A93778();
  __break(1u);
  return result;
}

uint64_t sub_1C9A4B4DC()
{
  v0 = sub_1C9A921C8();
  switch(v0)
  {
    case 0xB801F3AC3EEF488FLL:
      return 0;
    case 0xC5F65F31FE2D91DALL:
      return 3;
    case 0x7C2C4EAC2EADFF1FLL:
      return 1;
    case 0xEB9E83B99489DAF3:
      return 2;
  }

  sub_1C9A935B8();

  v2 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v2);

  result = sub_1C9A93778();
  __break(1u);
  return result;
}

uint64_t sub_1C9A4B62C()
{
  v0 = sub_1C9A921C8();
  result = sub_1C9A49444(v0);
  if (result == 14)
  {
    sub_1C9A935B8();

    v2 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v2);

    result = sub_1C9A93778();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9A4B718@<X0>(uint64_t a1@<X8>)
{
  v48 = sub_1C9A921A8();
  v47 = v1;
  v17 = sub_1C9A477C4(sub_1C9A4D4D4, v46, 0, 512);
  v45 = v1;
  v16 = sub_1C9A477C4(sub_1C9A4CC20, v44, 0, 10240);
  v43 = v1;
  v15 = sub_1C9A477C4(sub_1C9A4D4D4, v42, 0, 10);
  v41 = v1;
  v14 = sub_1C9A477C4(sub_1C9A4D4D4, v40, 0, 200);
  v39 = v1;
  v13 = sub_1C9A477C4(sub_1C9A4D4D4, v38, 0, 4);
  v37 = v1;
  v12 = sub_1C9A477C4(sub_1C9A4D4D4, v36, 0, 160);
  v35 = v1;
  v11 = sub_1C9A477C4(sub_1C9A4D4D4, v34, 0, 8);
  v33 = v1;
  v3 = sub_1C9A477C4(sub_1C9A4D4D4, v32, 0, 320);
  v31 = v1;
  v4 = sub_1C9A477C4(sub_1C9A4D4D4, v30, 0, 8);
  v29 = v1;
  v5 = sub_1C9A477C4(sub_1C9A4D4D4, v28, 0, 320);
  v27 = v1;
  v6 = sub_1C9A477C4(sub_1C9A4D4D4, v26, 0, 8);
  v25 = v1;
  v7 = sub_1C9A477C4(sub_1C9A4D4D4, v24, 0, 256);
  v23 = v1;
  v8 = sub_1C9A477C4(sub_1C9A4D4D4, v22, 0, 32);
  v21 = v1;
  v9 = sub_1C9A477C4(sub_1C9A4D4D4, v20, 0, 64);
  v19 = v1;
  result = sub_1C9A477C4(sub_1C9A4D4D4, v18, 0, 2);
  *a1 = v48;
  *(a1 + 8) = v17;
  *(a1 + 16) = v16;
  *(a1 + 24) = v15;
  *(a1 + 32) = v14;
  *(a1 + 40) = v13;
  *(a1 + 48) = v12;
  *(a1 + 56) = v11;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 112) = v9;
  *(a1 + 120) = result;
  return result;
}

uint64_t sub_1C9A4BA70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9A921B8();
  *a1 = result;
  return result;
}

uint64_t sub_1C9A4BAE4(void *a1)
{
  sub_1C9A92218();
  if (*(a1[1] + 16) != 512)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000038, 0x80000001C9ADF7D0);
    v18 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v18);

LABEL_62:
    result = sub_1C9A93778();
    __break(1u);
    return result;
  }

  for (i = 0; i != 2048; i += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[2] + 16) != 10240)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD00000000000003ALL, 0x80000001C9ADF810);
    v19 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v19);

    goto LABEL_62;
  }

  for (j = 0; j != 40960; j += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[3] + 16) != 10)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000037, 0x80000001C9ADF850);
    v20 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v20);

    goto LABEL_62;
  }

  for (k = 0; k != 40; k += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[4] + 16) != 200)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000038, 0x80000001C9ADF890);
    v21 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v21);

    goto LABEL_62;
  }

  for (m = 32; m != 832; m += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[5] + 16) != 4)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000036, 0x80000001C9ADF8D0);
    v22 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v22);

    goto LABEL_62;
  }

  for (n = 0; n != 16; n += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[6] + 16) != 160)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000038, 0x80000001C9ADF910);
    v23 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v23);

    goto LABEL_62;
  }

  for (ii = 32; ii != 672; ii += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[7] + 16) != 8)
  {
    goto LABEL_57;
  }

  for (jj = 0; jj != 32; jj += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[8] + 16) != 320)
  {
    goto LABEL_54;
  }

  for (kk = 32; kk != 1312; kk += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[9] + 16) != 8)
  {
    goto LABEL_57;
  }

  for (mm = 0; mm != 32; mm += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[10] + 16) != 320)
  {
LABEL_54:
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000038, 0x80000001C9ADF990);
    v24 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v24);

    goto LABEL_62;
  }

  for (nn = 32; nn != 1312; nn += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[11] + 16) != 8)
  {
LABEL_57:
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000036, 0x80000001C9ADF950);
    v25 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v25);

    goto LABEL_62;
  }

  for (i1 = 0; i1 != 32; i1 += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[12] + 16) != 256)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000038, 0x80000001C9ADF9D0);
    v26 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v26);

    goto LABEL_62;
  }

  for (i2 = 0; i2 != 1024; i2 += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[13] + 16) != 32)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000037, 0x80000001C9ADFA10);
    v27 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v27);

    goto LABEL_62;
  }

  for (i3 = 0; i3 != 128; i3 += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[14] + 16) != 64)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000037, 0x80000001C9ADFA50);
    v28 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v28);

    goto LABEL_62;
  }

  for (i4 = 0; i4 != 256; i4 += 4)
  {
    sub_1C9A92208();
  }

  if (*(a1[15] + 16) != 2)
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x1CCA90230](0xD000000000000036, 0x80000001C9ADFA90);
    v29 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v29);

    goto LABEL_62;
  }

  for (i5 = 0; i5 != 8; i5 += 4)
  {
    result = sub_1C9A92208();
  }

  return result;
}

void *sub_1C9A4C75C(void *result)
{
  v1 = 0;
  v2 = 0;
  while (v1 != 512)
  {
    v3 = *(result[1] + 16);
    if (v1 == v3)
    {
      goto LABEL_7;
    }

    if (v1 >= v3)
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
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
      goto LABEL_120;
    }

    v2 += 4;
    ++v1;
  }

  v2 = 2048;
LABEL_7:
  v4 = __OFADD__(v2, 4);
  v5 = v2 + 4;
  if (v4)
  {
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
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = 0;
  while (v6 != 10240)
  {
    v8 = *(result[2] + 16);
    if (v6 == v8)
    {
      goto LABEL_14;
    }

    if (v6 >= v8)
    {
      goto LABEL_107;
    }

    v7 += 4;
    ++v6;
  }

  v7 = 40960;
LABEL_14:
  v4 = __OFADD__(v5, v7);
  v9 = v5 + v7;
  if (v4)
  {
    goto LABEL_121;
  }

  v10 = 0;
  v11 = 0;
  while (v10 != 10)
  {
    v12 = *(result[3] + 16);
    if (v10 == v12)
    {
      goto LABEL_21;
    }

    if (v10 >= v12)
    {
      goto LABEL_108;
    }

    v11 += 4;
    ++v10;
  }

  v11 = 40;
LABEL_21:
  v4 = __OFADD__(v9, v11);
  v13 = v9 + v11;
  if (v4)
  {
    goto LABEL_122;
  }

  v14 = 0;
  v15 = 0;
  while (v14 != 200)
  {
    v16 = *(result[4] + 16);
    if (v14 == v16)
    {
      goto LABEL_28;
    }

    if (v14 >= v16)
    {
      goto LABEL_109;
    }

    v15 += 4;
    ++v14;
  }

  v15 = 800;
LABEL_28:
  v4 = __OFADD__(v13, v15);
  v17 = v13 + v15;
  if (v4)
  {
    goto LABEL_123;
  }

  v18 = 0;
  v19 = 0;
  while (v18 != 4)
  {
    v20 = *(result[5] + 16);
    if (v18 == v20)
    {
      goto LABEL_35;
    }

    if (v18 >= v20)
    {
      goto LABEL_110;
    }

    v19 += 4;
    ++v18;
  }

  v19 = 16;
LABEL_35:
  v4 = __OFADD__(v17, v19);
  v21 = v17 + v19;
  if (v4)
  {
    goto LABEL_124;
  }

  v22 = 0;
  v23 = 0;
  while (v22 != 160)
  {
    v24 = *(result[6] + 16);
    if (v22 == v24)
    {
      goto LABEL_42;
    }

    if (v22 >= v24)
    {
      goto LABEL_111;
    }

    v23 += 4;
    ++v22;
  }

  v23 = 640;
LABEL_42:
  v4 = __OFADD__(v21, v23);
  v25 = v21 + v23;
  if (v4)
  {
    goto LABEL_125;
  }

  v26 = 0;
  v27 = 0;
  while (v26 != 8)
  {
    v28 = *(result[7] + 16);
    if (v26 == v28)
    {
      goto LABEL_49;
    }

    if (v26 >= v28)
    {
      goto LABEL_112;
    }

    v27 += 4;
    ++v26;
  }

  v27 = 32;
LABEL_49:
  v4 = __OFADD__(v25, v27);
  v29 = v25 + v27;
  if (v4)
  {
    goto LABEL_126;
  }

  v30 = 0;
  v31 = 0;
  while (v30 != 320)
  {
    v32 = *(result[8] + 16);
    if (v30 == v32)
    {
      goto LABEL_56;
    }

    if (v30 >= v32)
    {
      goto LABEL_113;
    }

    v31 += 4;
    ++v30;
  }

  v31 = 1280;
LABEL_56:
  v4 = __OFADD__(v29, v31);
  v33 = v29 + v31;
  if (v4)
  {
    goto LABEL_127;
  }

  v34 = 0;
  v35 = 0;
  while (v34 != 8)
  {
    v36 = *(result[9] + 16);
    if (v34 == v36)
    {
      goto LABEL_63;
    }

    if (v34 >= v36)
    {
      goto LABEL_114;
    }

    v35 += 4;
    ++v34;
  }

  v35 = 32;
LABEL_63:
  v4 = __OFADD__(v33, v35);
  v37 = v33 + v35;
  if (v4)
  {
    goto LABEL_128;
  }

  v38 = 0;
  v39 = 0;
  while (v38 != 320)
  {
    v40 = *(result[10] + 16);
    if (v38 == v40)
    {
      goto LABEL_70;
    }

    if (v38 >= v40)
    {
      goto LABEL_115;
    }

    v39 += 4;
    ++v38;
  }

  v39 = 1280;
LABEL_70:
  v4 = __OFADD__(v37, v39);
  v41 = v37 + v39;
  if (v4)
  {
    goto LABEL_129;
  }

  v42 = 0;
  v43 = 0;
  while (v42 != 8)
  {
    v44 = *(result[11] + 16);
    if (v42 == v44)
    {
      goto LABEL_77;
    }

    if (v42 >= v44)
    {
      goto LABEL_116;
    }

    v43 += 4;
    ++v42;
  }

  v43 = 32;
LABEL_77:
  v4 = __OFADD__(v41, v43);
  v45 = v41 + v43;
  if (v4)
  {
    goto LABEL_130;
  }

  v46 = 0;
  v47 = 0;
  while (v46 != 256)
  {
    v48 = *(result[12] + 16);
    if (v46 == v48)
    {
      goto LABEL_84;
    }

    if (v46 >= v48)
    {
      goto LABEL_117;
    }

    v47 += 4;
    ++v46;
  }

  v47 = 1024;
LABEL_84:
  v4 = __OFADD__(v45, v47);
  v49 = v45 + v47;
  if (v4)
  {
    goto LABEL_131;
  }

  v50 = 0;
  v51 = 0;
  while (v50 != 32)
  {
    v52 = *(result[13] + 16);
    if (v50 == v52)
    {
      goto LABEL_91;
    }

    if (v50 >= v52)
    {
      goto LABEL_118;
    }

    v51 += 4;
    ++v50;
  }

  v51 = 128;
LABEL_91:
  v4 = __OFADD__(v49, v51);
  v53 = v49 + v51;
  if (v4)
  {
    goto LABEL_132;
  }

  v54 = 0;
  v55 = 0;
  while (v54 != 64)
  {
    v56 = *(result[14] + 16);
    if (v54 == v56)
    {
      goto LABEL_98;
    }

    if (v54 >= v56)
    {
      goto LABEL_119;
    }

    v55 += 4;
    ++v54;
  }

  v55 = 256;
LABEL_98:
  v4 = __OFADD__(v53, v55);
  v57 = v53 + v55;
  if (v4)
  {
    goto LABEL_133;
  }

  v58 = *(result[15] + 16);
  v59 = 8;
  if (v58 == 1)
  {
    v59 = 4;
  }

  if (v58)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  result = (v57 + v60);
  if (__OFADD__(v57, v60))
  {
    goto LABEL_134;
  }

  return result;
}

uint64_t sub_1C9A4CB48(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3D2F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9A4CBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3D2F78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9A4CC20@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1C9A92198();
  *a1 = v3;
  return result;
}

uint64_t sub_1C9A4CC64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1C9A4CCA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C9A4CD10(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9A4CDE8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3E)
  {
    if (a2 + 194 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 194) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 195;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_1C9A4CE7C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9A4CF54(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_1C9A4CF70(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 3 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 3 ^ 0x82;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C9A4CFB4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0xE)
  {
    if (a2 + 242 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 242) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 243;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v5 >= 0xD)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_1C9A4D04C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD)
  {
    v6 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
          *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9A4D124(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 0xFu) + 2;
  }
}

_BYTE *sub_1C9A4D140(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xF | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 14) & 0xF | 0x80;
  }

  *result = v2;
  return result;
}

_BYTE *sub_1C9A4D178(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          result = sub_1C97BE280(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9A4D24C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C9A4D2D4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1C97BE280(result, a2 + 16);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9A4D3AC()
{
  result = qword_1EC3D2F80;
  if (!qword_1EC3D2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2F80);
  }

  return result;
}

unint64_t sub_1C9A4D404()
{
  result = qword_1EC3D2F88;
  if (!qword_1EC3D2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2F88);
  }

  return result;
}

unint64_t sub_1C9A4D45C()
{
  result = qword_1EC3D2F90;
  if (!qword_1EC3D2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2F90);
  }

  return result;
}

uint64_t sub_1C9A4D50C(uint64_t a1)
{
  v2 = *(v1 + 80);
  sub_1C97ACC50(a1, 0, 1, v2);
  return sub_1C97ABF20(*(v1 + 64), 1, v2);
}

uint64_t sub_1C9A4D5B0(uint64_t a1, uint64_t a2)
{

  return sub_1C9A47658(v2, a2, 0, 16);
}

uint64_t sub_1C9A4D5D0()
{

  return sub_1C97ABF20(v0, 1, v1);
}

unint64_t sub_1C9A4D620(uint64_t a1)
{
  v2 = sub_1C9A497D0(a1);
  sub_1C979B1DC(v1, 0);
  return v2 + 1;
}

uint64_t sub_1C9A4D698()
{
}

uint64_t sub_1C9A4D6B4()
{

  return sub_1C9A92278();
}

uint64_t sub_1C9A4D6D0()
{

  return swift_dynamicCast();
}

void *sub_1C9A4D6EC()
{
  v2 = *(v0 + 48);

  return sub_1C97A5A8C((v0 + 24), v2);
}

void sub_1C9A4D75C()
{

  type metadata accessor for TransportError(0);
}

uint64_t sub_1C9A4D778(uint64_t a1, int a2, float a3)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  v9 = 0;
  v8 = 0;
  *v5 = a3;
  v5[1] = dword_1EC3D2F98;
  v5[2] = dword_1EC3D2FA0;
  v5[3] = dword_1EC3D2FA4;
  v6 = 0x3C23D70A00000002;
  v7 = 0;
  v10 = 160;
  v11 = a2;
  v12 = 0;
  v13 = dword_1EC3D2F9C;
  v14 = 0;
  *a1 = sub_1C9A6936C(v5);
  return a1;
}

uint64_t *sub_1C9A4D810(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    sub_1C9A69248(*a1);
    free(v2);
  }

  return a1;
}

uint64_t sub_1C9A4D860(uint64_t a1, void *a2)
{
  v3 = a2;
  DSPGraph::Box::Box(a1);
  *a1 = &unk_1F4951060;
  *(a1 + 776) = v3;
  *(a1 + 784) = 0u;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = v3;
  v6 = dispatch_queue_create("com.apple.SoundAnalysis.EARAudioProcessor", v4);
  v7 = *(a1 + 792);
  *(a1 + 792) = v6;

  return a1;
}

void sub_1C9A4D91C(uint64_t a1, int a2)
{
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    sub_1C9A4DF14(v14, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v13, "in");
    v10 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v10 = *v10;
    }

    goto LABEL_11;
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(a1 + 64);
  if (*(a1 + 72) == v7)
  {
    sub_1C9A4DF14(v14, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v13, "in");
    v10 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v10 = *v10;
    }

LABEL_11:
    DSPGraph::strprintf(v12, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v9, v10, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    DSPGraph::ThrowException();
    __break(1u);
    return;
  }

  v11 = [MEMORY[0x1E695DEF0] dataWithBytes:*(*(*((*(*v7 + 40))(v7) + 56) + 80) + 16) length:(*(*(v6 + 120) + 24) * a2)];
  v8 = objc_autoreleasePoolPush();
  [*(a1 + 784) addAudio:v11];
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C9A4DB5C(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  if (*(v3 + 8) == v2)
  {
    sub_1C9A4DF14(v14, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v13, "in");
    v10 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v10 = *v10;
    }

    goto LABEL_21;
  }

  if (**((*(*v2 + 40))(v2) + 120) != 16000.0)
  {
    __assert_rtn("initialize", "DSPGraph_EARAudioProcessorBox.mm", 40, "in(0).format().mSampleRate == 16000");
  }

  v4 = *(a1 + 64);
  if (*(a1 + 72) == v4)
  {
    sub_1C9A4DF14(v14, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v13, "in");
    v10 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v10 = *v10;
    }

    goto LABEL_21;
  }

  if (*(*((*(*v4 + 40))(v4) + 120) + 28) != 1)
  {
    __assert_rtn("initialize", "DSPGraph_EARAudioProcessorBox.mm", 41, "in(0).format().mChannelsPerFrame == 1");
  }

  v5 = *(a1 + 64);
  if (*(a1 + 72) == v5)
  {
    sub_1C9A4DF14(v14, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v13, "in");
    v10 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v10 = *v10;
    }

LABEL_21:
    DSPGraph::strprintf(v12, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v9, v10, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    v8 = DSPGraph::ThrowException();
LABEL_24:
    __break(1u);
    return MEMORY[0x1EEE66B58](v8, sel_resetForNewRequest);
  }

  if (*(*((*(*v5 + 40))(v5) + 120) + 24) != 2)
  {
    __assert_rtn("initialize", "DSPGraph_EARAudioProcessorBox.mm", 42, "in(0).format().mBytesPerFrame == 2");
  }

  v6 = [objc_alloc(MEMORY[0x1E699B9C0]) initWithConfigFile:*(a1 + 776) configRoot:@"config" sampleRate:16000 delegate:0 queue:*(a1 + 792)];
  v7 = *(a1 + 784);
  *(a1 + 784) = v6;

  v8 = *(a1 + 784);
  if (!v8)
  {
    sub_1C9A4DF14(v14, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_EARAudioProcessorBox.mm");
    sub_1C9A4DF14(v13, "initialize");
    sub_1C9A4DF14(v12, "inputs must be 16kHz");
    v8 = DSPGraph::ThrowException();
    goto LABEL_24;
  }

  return MEMORY[0x1EEE66B58](v8, sel_resetForNewRequest);
}

void sub_1C9A4DEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1C9A4DF14(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1C9A4E0DC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_1C9A4DFD0(id *a1)
{
  sub_1C9A4E184(a1);

  JUMPOUT(0x1CCA92400);
}

double sub_1C9A4E048@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  result = *"xfuapraexoba";
  *a1 = *"xfuapraexoba";
  return result;
}

void sub_1C9A4E0F4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1C9A4E150(exception, a1);
  __cxa_throw(exception, &unk_1F4951308, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1C9A4E150(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1C9A4E184(id *a1)
{

  DSPGraph::Box::~Box(a1);
}

void sub_1C9A4E384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  _Block_object_dispose(&a17, 8);
  if (a24)
  {
    sub_1C9A4E570(a24);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1C9A4E3CC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void sub_1C9A4E3DC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_1C9A4E570(v1);
  }
}

void sub_1C9A4E3EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  operator new();
}

void sub_1C9A4E508(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_1C9A4E570(v3);
  }

  if (v1)
  {
    sub_1C9A4E570(v1);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1C9A4E570(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1C9A4E5FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4951330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA92400);
}

void sub_1C9A4E65C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_1C9A4E570(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    sub_1C9A4E570(v3);
  }
}

void sub_1C9A4E6AC(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 16;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a1 + 16;
  *a1 = &unk_1F4951368;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v3 = *a2;
  v4 = a2[2];
  *(a1 + 80) = a2[1];
  *(a1 + 96) = v4;
  *(a1 + 64) = v3;
  v5 = *a3;
  v6 = a3[2];
  *(a1 + 128) = a3[1];
  *(a1 + 144) = v6;
  *(a1 + 112) = v5;
  if (*(a2 + 10) == 1)
  {
    if (*(a3 + 10) == 1)
    {
      sub_1C9A4E7B8();
    }

    v7 = "downstreamFormat.blockSize == 1";
    v8 = 20;
  }

  else
  {
    v7 = "upstreamFormat.blockSize == 1";
    v8 = 19;
  }

  __assert_rtn("FormatMatchingNode", "SoundAnalysis_FormatMatchingNode.cpp", v8, v7);
}

void sub_1C9A4E77C(_Unwind_Exception *a1)
{
  v4 = v1[7];
  if (v4)
  {
    sub_1C9A4E570(v4);
  }

  *v1 = &unk_1F49513A8;
  sub_1C9A4ED08(v2);
  _Unwind_Resume(a1);
}

void sub_1C9A4EB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9A4EC28(_OWORD *a1, __int128 *a2)
{
  if (*(a2 + 10) == 1)
  {
    v3 = *a2;
    v4 = a2[2];
    a1[5] = a2[1];
    a1[6] = v4;
    a1[4] = v3;

    sub_1C9A4E7B8();
  }

  __assert_rtn("setUpstreamFormat", "SoundAnalysis_FormatMatchingNode.cpp", 25, "upstreamFormat.blockSize == 1");
}

uint64_t sub_1C9A4EC88@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 sub_1C9A4ECA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *a2 = *(a1 + 64);
  *(a2 + 16) = v2;
  result = *(a1 + 96);
  *(a2 + 32) = result;
  return result;
}

__n128 sub_1C9A4ECB8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 128);
  *a2 = *(a1 + 112);
  *(a2 + 16) = v2;
  result = *(a1 + 144);
  *(a2 + 32) = result;
  return result;
}

void sub_1C9A4ECD0(void *a1)
{
  sub_1C9A4EF18(a1);

  JUMPOUT(0x1CCA92400);
}

void *sub_1C9A4ED08(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_1C9A4ED6C(uint64_t a1)
{
  *a1 = MEMORY[0x1E698D890] + 16;
  DSPGraph::RingBuffer::~RingBuffer((a1 + 808));

  DSPGraph::Box::~Box(a1);
}

void *sub_1C9A4EE20(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F49513D8;
  MEMORY[0x1CCA92190](a1 + 3);
  return a1;
}

void sub_1C9A4EE9C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F49513D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA92400);
}

void *sub_1C9A4EF18(void *a1)
{
  *a1 = &unk_1F4951368;
  v2 = a1[7];
  if (v2)
  {
    sub_1C9A4E570(v2);
  }

  *a1 = &unk_1F49513A8;
  sub_1C9A4ED08(a1 + 2);
  return a1;
}

void sub_1C9A4F130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  _Block_object_dispose(&a16, 8);
  v25 = a22;
  a22 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A4F190(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1C9A4F1A0(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1C9A4F1D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 8);
    v4 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  operator new();
}

void sub_1C9A4F2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  MEMORY[0x1CCA92400](v10, 0xE1C40E9FAB1CALL);
  if (a10)
  {
    sub_1C9A4E570(a10);
  }

  _Unwind_Resume(a1);
}

double sub_1C9A4F678(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 40;
  *(a1 + 48) = a1 + 40;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 64;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 88;
  *(a1 + 96) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1 + 128;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = a1 + 128;
  *(a1 + 112) = &unk_1F4951428;
  result = 0.0;
  *(a1 + 188) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 256) = 0x4000;
  return result;
}

__n128 sub_1C9A4F6F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *a2 = *(a1 + 96);
  *(a2 + 16) = v2;
  result = *(a1 + 128);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1C9A4F70C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  v12 = *(a1 + 160);
  *v13 = v4;
  *&v13[16] = *(a1 + 192);
  if (*a2 != *&v12 || *(a2 + 8) != DWORD2(v12) || *(a2 + 16) != *v13 || *(a2 + 28) != *&v13[12] || (result = sub_1C9A53458(a2, &v12, 0, 0), !result) || *(a2 + 40) != *&v13[24])
  {
    v6 = *a2;
    v7 = *(a2 + 32);
    *(a1 + 176) = *(a2 + 16);
    *(a1 + 192) = v7;
    *(a1 + 160) = v6;
    v8 = *a2;
    v9 = *(a2 + 32);
    *(a1 + 224) = *(a2 + 16);
    *(a1 + 240) = v9;
    *(a1 + 208) = v8;
    v10 = *(a1 + 48);
    if (v10 != a1 + 40)
    {
      v11 = *(a2 + 16);
      v12 = *a2;
      *v13 = v11;
      *&v13[16] = *(a2 + 32);
      sub_1C9A4EC28((v10 + 16), &v12);
    }

    sub_1C9A4F848();
  }

  return result;
}

__n128 sub_1C9A4F834@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v2;
  result = *(a1 + 80);
  *(a2 + 32) = result;
  return result;
}

void sub_1C9A4F9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    sub_1C9A4E570(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A4FA2C(uint64_t a1, double *a2)
{
  v4 = *a2;
  *(a1 + 296) = a2[1];
  DSPGraph::Graph::preflight();
  if (*a2 != v4)
  {
    __assert_rtn("processBuffer", "SoundAnalysis_ProcessingTree.cpp", 66, "inputBuffer.mNumFrames == expectedNumberOfFrames");
  }

  result = DSPGraph::Graph::processMultiple();
  *(a1 + 296) += *a2;
  return result;
}

void sub_1C9A4FAF0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("buildTreeGraphRecursively", "SoundAnalysis_ProcessingTree.cpp", 89, "node");
  }

  v4[0] = v4;
  v4[1] = v4;
  v4[2] = 0;
  if (a2[3] != a2 + 2)
  {
    operator new();
  }

  sub_1C9A4ED08(v4);
  if (!a2[4])
  {
    if (!(**a2)(a2))
    {
      goto LABEL_9;
    }

    (*(*a2 + 8))(__p, a2);
    v3 = DSPGraph::Graph::numOutputs(__p[0]);
    if (__p[1])
    {
      sub_1C9A4E570(__p[1]);
    }

    if (v3)
    {
LABEL_9:
      operator new();
    }
  }
}

void sub_1C9A51004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *__p, std::__shared_weak_count *a39, int a40, __int16 a41, char a42, char a43)
{
  if (a39)
  {
    sub_1C9A4E570(a39);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A51448(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = *(a1 + 72);
  if (v3 != a1 + 64)
  {
    while (1)
    {
      (*(*(v3 + 16) + 8))(&v9);
      v6 = *(a2 + 64);
      v5 = *(a2 + 72);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = v9;
        sub_1C9A4E570(v5);
      }

      else
      {
        v7 = v9;
      }

      if (v10)
      {
        sub_1C9A4E570(v10);
      }

      if (v7 == v6)
      {
        break;
      }

      v3 = *(v3 + 8);
      if (v3 == v2)
      {
        v3 = v2;
        break;
      }
    }
  }

  if (v3 == v2)
  {
    return 0;
  }

  else
  {
    return v3 + 16;
  }
}

uint64_t sub_1C9A51510(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = *(a1 + 48);
  if (v3 == a1 + 40)
  {
    goto LABEL_78;
  }

  do
  {
    (*(*(v3 + 16) + 24))(&v36);
    (*(*a2 + 16))(&v27, a2);
    if (v36 != v27 || v37 != v28 || v39 != v30 || v40 != v31 || v42 != v33 || v43 != v34)
    {
      goto LABEL_76;
    }

    v5 = v38;
    if (v37 != 1819304813)
    {
      v9 = v29;
      goto LABEL_74;
    }

    v6 = v38 & 0x7FFFFFFF;
    if ((v38 & 0x7FFFFFFF) == 0)
    {
      v6 = v38;
    }

    if (v41)
    {
      if ((v38 & 0x20) != 0)
      {
        v7 = 1;
      }

      else
      {
        v7 = v42;
      }

      if (v7)
      {
        v7 = 8 * (v41 / v7);
        v8 = v7 == v43;
        goto LABEL_20;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v43 == 0;
LABEL_20:
    v10 = v8;
    v11 = v6 & 0xFFFFFFBF;
    if (v10)
    {
      v12 = v11 | 8;
    }

    else
    {
      v12 = v11;
    }

    v13 = v43 & 7;
    v14 = v7 == v43 && v13 == 0;
    v5 = v12 & 0xFFFFFFAF;
    if (!v14)
    {
      v5 = v12;
    }

    if (v5)
    {
      v5 &= 0xFFFFFFBB;
    }

    if ((v5 & 8) != 0 && v43 <= 8)
    {
      v5 &= 2u;
    }

    if (v42 == 1)
    {
      v5 &= ~0x20u;
    }

    if (!v5)
    {
      v5 = 0x80000000;
    }

    v16 = v32;
    v17 = v29 & 0x7FFFFFFF;
    if ((v29 & 0x7FFFFFFF) == 0)
    {
      v17 = v29;
    }

    if (!v32)
    {
      goto LABEL_51;
    }

    if ((v29 & 0x20) != 0)
    {
      v18 = 1;
    }

    else
    {
      v18 = v42;
    }

    if (!v18)
    {
      v16 = 0;
LABEL_51:
      v19 = v43 == 0;
      goto LABEL_52;
    }

    v16 = 8 * (v32 / v18);
    v19 = v16 == v43;
LABEL_52:
    v20 = v19;
    v21 = v17 & 0xFFFFFFBF;
    if (v20)
    {
      v21 |= 8u;
    }

    v22 = v16 == v43 && v13 == 0;
    v23 = v21 & 0xFFFFFFAF;
    if (!v22)
    {
      v23 = v21;
    }

    if (v23)
    {
      v23 &= 0xFFFFFFBB;
    }

    v24 = (v23 & 8) == 0 || v43 > 8;
    v25 = v23 & 2;
    if (v24)
    {
      v25 = v23;
    }

    if (v42 == 1)
    {
      v9 = v25 & 0xFFFFFFDF;
    }

    else
    {
      v9 = v25;
    }

    if (!v9)
    {
      v9 = 0x80000000;
    }

LABEL_74:
    if (v5 == v9 && v44 == v35)
    {
      goto LABEL_78;
    }

LABEL_76:
    v3 = *(v3 + 8);
  }

  while (v3 != v2);
  v3 = v2;
LABEL_78:
  if (v3 == v2)
  {
    return 0;
  }

  else
  {
    return v3 + 16;
  }
}

void *sub_1C9A51790(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  sub_1C9A56FF8(v5, v6, 1);
  sub_1C9A6DC78(a1, v5);
  result = sub_1C9A4ED08(v5);
  *(a2 + 8) = a1;
  return result;
}

void sub_1C9A51814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1C9A4ED08(va);
  _Unwind_Resume(a1);
}

void sub_1C9A51830(uint64_t a1, void *a2)
{
  if (!*(a1 + 248))
  {
    __assert_rtn("setProcessingContexts", "SoundAnalysis_ProcessingTree.cpp", 256, "format().blockSize > 0");
  }

  v29[0] = v29;
  v29[1] = v29;
  v29[2] = 0;
  v4 = (a1 + 16);
  v5 = a2[1];
  v32[0] = *(a1 + 24);
  v31[0] = v5;
  v30[0] = 0;
  while (v5 != a2)
  {
    v6 = v32[0];
    v32[0] = sub_1C9A56C1C(v32[0], v4, v5 + 2);
    sub_1C9A56DD0(v32[0] == v6, v32, v31, v29, v30);
    if (v32[0] == v4)
    {
      break;
    }

    v7 = v31[0];
    v31[0] = sub_1C9A56C1C(v31[0], a2, v32[0] + 2);
    sub_1C9A56DD0(v31[0] == v7, v32, v31, v29, v30);
    v5 = v31[0];
  }

  sub_1C9A57110(&v27, v4);
  sub_1C9A57110(&v26, a2);
  v8 = v28;
  if (v28 == &v27)
  {
LABEL_43:
    sub_1C9A4F848();
  }

  while (1)
  {
    v9 = v8[2];
    v10 = v8[3];
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v8[4];
    v12 = v8[5];
    v25 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    for (i = *(a1 + 96); ; i = i[1])
    {
      if (i == (a1 + 88))
      {
        __assert_rtn("removeProcessingContext", "SoundAnalysis_ProcessingTree.cpp", 335, "requestProcessingNode");
      }

      if (i[8] == v9 && i[10] == v11)
      {
        break;
      }
    }

    v32[0] = v32;
    v32[1] = v32;
    v33 = 0;
    v14 = *(a1 + 24);
    if (v14 != v4)
    {
      break;
    }

LABEL_38:
    sub_1C9A56E78(v32);
    sub_1C9A52010(a1, (i + 2));
    if (v25)
    {
      sub_1C9A4E570(v25);
    }

    if (v24)
    {
      sub_1C9A4E570(v24);
    }

    v8 = v8[1];
    if (v8 == &v27)
    {
      goto LABEL_43;
    }
  }

  v15 = 0;
  while (1)
  {
    if (v14[2] == v9)
    {
      v16 = v14[1];
      if (v14[4] != v11)
      {
        goto LABEL_37;
      }

      while (v16 != v4)
      {
        if (v16[2] != v9 || v16[4] != v11)
        {
          v17 = 0;
          goto LABEL_29;
        }

        v16 = v16[1];
      }

      v17 = 1;
LABEL_29:
      if (v14 != v16)
      {
        v18 = *v16;
        if (v32 != v4)
        {
          v19 = 1;
          if (v18 != v14)
          {
            v20 = v14;
            do
            {
              v20 = v20[1];
              ++v19;
            }

            while (v20 != v18);
          }

          *(a1 + 32) -= v19;
          v15 += v19;
          v33 = v15;
        }

        v21 = v18[1];
        v22 = *v14;
        *(v22 + 8) = v21;
        *v21 = v22;
        v23 = v32[0];
        v32[0][1] = v14;
        *v14 = v23;
        v32[0] = v18;
        v18[1] = v32;
      }

      if (v17)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v16 = v14;
    }

    v16 = v16[1];
LABEL_37:
    v14 = v16;
    if (v16 == v4)
    {
      goto LABEL_38;
    }
  }
}

void sub_1C9A51F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1C9A56E78(&a25);
  sub_1C9A56E78(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A51FD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_1C9A4E570(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1C9A4E570(v3);
  }

  return a1;
}

void sub_1C9A52010(uint64_t *a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __assert_rtn("removeNodeRecursively", "SoundAnalysis_ProcessingTree.cpp", 296, "node");
  }

  v4 = *(a2 + 8);
  v5 = (**a2)(a2);
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      v17 = a1 + 8;
      v40 = &v40;
      v41 = &v40;
      v42 = 0;
      v18 = a1[9];
      if (v18 != a1 + 8)
      {
        v19 = 0;
        do
        {
          v20 = v18[1];
          if (v18 + 2 == a2)
          {
            while (v20 != v17 && v18 == v20)
            {
              v20 = v20[1];
            }

            if (v18 != v20)
            {
              v22 = *v20;
              if (&v40 != v17)
              {
                v23 = 1;
                if (v22 != v18)
                {
                  v24 = v18;
                  do
                  {
                    v24 = v24[1];
                    ++v23;
                  }

                  while (v24 != v22);
                }

                a1[10] -= v23;
                v19 += v23;
                v42 = v19;
              }

              v25 = *(v22 + 8);
              v26 = *v18;
              *(v26 + 8) = v25;
              *v25 = v26;
              v27 = v40;
              *(v40 + 8) = v18;
              *v18 = v27;
              v40 = v22;
              *(v22 + 8) = &v40;
            }

            if (v20 != v17)
            {
              v20 = v20[1];
            }
          }

          v18 = v20;
        }

        while (v20 != v17);
      }

      sub_1C9A57238(&v40);
    }

    else if (v5 == 3)
    {
      v6 = a1 + 11;
      v40 = &v40;
      v41 = &v40;
      v42 = 0;
      v7 = a1[12];
      if (v7 != a1 + 11)
      {
        v8 = 0;
        do
        {
          v9 = v7[1];
          if (v7 + 2 == a2)
          {
            while (v9 != v6 && v7 == v9)
            {
              v9 = v9[1];
            }

            if (v7 != v9)
            {
              v11 = *v9;
              if (&v40 != v6)
              {
                v12 = 1;
                if (v11 != v7)
                {
                  v13 = v7;
                  do
                  {
                    v13 = v13[1];
                    ++v12;
                  }

                  while (v13 != v11);
                }

                a1[13] -= v12;
                v8 += v12;
                v42 = v8;
              }

              v14 = *(v11 + 8);
              v15 = *v7;
              *(v15 + 8) = v14;
              *v14 = v15;
              v16 = v40;
              *(v40 + 8) = v7;
              *v7 = v16;
              v40 = v11;
              *(v11 + 8) = &v40;
            }

            if (v9 != v6)
            {
              v9 = v9[1];
            }
          }

          v7 = v9;
        }

        while (v9 != v6);
      }

      sub_1C9A571A4(&v40);
      if (!v4)
      {
        return;
      }

LABEL_47:
      v40 = a2;
      sub_1C9A56FF8(v39, &v40, 1);
      sub_1C9A6DF88(v4, v39);
      sub_1C9A4ED08(v39);
      if (!*(v4 + 32))
      {
        sub_1C9A52010(a1, v4);
      }

      return;
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_47;
  }

  v28 = a1 + 5;
  v40 = &v40;
  v41 = &v40;
  v42 = 0;
  v29 = a1[6];
  if (v29 != a1 + 5)
  {
    v30 = 0;
    do
    {
      v31 = v29[1];
      if (v29 + 2 == a2)
      {
        while (v31 != v28 && v29 == v31)
        {
          v31 = v31[1];
        }

        if (v29 != v31)
        {
          v33 = *v31;
          if (&v40 != v28)
          {
            v34 = 1;
            if (v33 != v29)
            {
              v35 = v29;
              do
              {
                v35 = v35[1];
                ++v34;
              }

              while (v35 != v33);
            }

            a1[7] -= v34;
            v30 += v34;
            v42 = v30;
          }

          v36 = *(v33 + 8);
          v37 = *v29;
          *(v37 + 8) = v36;
          *v36 = v37;
          v38 = v40;
          *(v40 + 8) = v29;
          *v29 = v38;
          v40 = v33;
          *(v33 + 8) = &v40;
        }

        if (v31 != v28)
        {
          v31 = v31[1];
        }
      }

      v29 = v31;
    }

    while (v31 != v28);
  }

  sub_1C9A572CC(&v40);
  if (v4)
  {
    goto LABEL_47;
  }
}

void sub_1C9A52394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1C9A4ED08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A523B0(void *a1, uint64_t a2, DSPGraph::Box *a3)
{
  if (!a3)
  {
    __assert_rtn("convertSampleTimeToRootSampleTime", "SoundAnalysis_ProcessingTree.cpp", 433, "box");
  }

  v6 = *(a3 + 2);
  v7 = sub_1C9A5296C(*(v6 + 288));
  v8 = *(v6 + 256);
  v9 = sub_1C9A5296C(*(v6 + 304));
  v10 = (*(*a3 + 72))(a3);
  v11 = DSPGraph::Box::upstreamLatencyInTicks(a3);
  if (!*a1)
  {
    __assert_rtn("findGraphBoxContainingBox", "SoundAnalysis_ProcessingTree.cpp", 389, "treeGraph");
  }

  v57 = v11;
  v58 = v7;
  v59 = a2;
  v12 = *(*a1 + 24);
  if (!v12)
  {
LABEL_55:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Couldn't find GraphBox containing graph");
    __cxa_throw(exception, &unk_1F4951400, MEMORY[0x1E69E5288]);
  }

  while (1)
  {
    v13 = (*(*v12[2] + 16))(v12[2]);
    sub_1C9A4DF14(&v60, v13);
    if (v63 < 0)
    {
      if (v61 == 17)
      {
        v18 = *v60 != 0x74615269746C754DLL || *(v60 + 1) != 0x6F42687061724765 || *(v60 + 16) != 120;
        operator delete(v60);
        if (!v18)
        {
LABEL_26:
          v19 = (*(*v12[2] + 728))(v12[2]);
          goto LABEL_51;
        }
      }

      else
      {
        operator delete(v60);
      }
    }

    else if (v63 == 17)
    {
      v14 = v60 == 0x74615269746C754DLL && v61 == 0x6F42687061724765;
      if (v14 && v62 == 120)
      {
        goto LABEL_26;
      }
    }

    v20 = (*(*v12[2] + 16))(v12[2]);
    sub_1C9A4DF14(&v60, v20);
    if (v63 < 0)
    {
      if (v61 != 18)
      {
        operator delete(v60);
        goto LABEL_54;
      }

      v25 = *v60 != 0x6152656C676E6953 || *(v60 + 1) != 0x4268706172476574 || *(v60 + 8) != 30831;
      operator delete(v60);
      if (v25)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v63 != 18)
      {
        goto LABEL_54;
      }

      v21 = v60 == 0x6152656C676E6953 && v61 == 0x4268706172476574;
      if (!v21 || v62 != 30831)
      {
        goto LABEL_54;
      }
    }

    v19 = (*(*v12[2] + 664))(v12[2]);
LABEL_51:
    v26 = v19;
    v27 = *(a3 + 1);
    if (v26 == v27)
    {
      break;
    }

LABEL_54:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_55;
    }
  }

  v29 = v12[2];
  if (!v29)
  {
    goto LABEL_55;
  }

  v30 = DSPGraph::Graph::in(v27);
  v31 = *(*(v30 + 8) + 704);
  if ((*(*v29 + 2))(v29) == "MultiRateGraphBox")
  {
    v32 = 1020;
  }

  else
  {
    if ((*(*v29 + 2))(v29) != "SingleRateGraphBox")
    {
      __assert_rtn("getCurrentInputSampleFromGraphBox", "SoundAnalysis_ProcessingTree.cpp", 428, "false");
    }

    v32 = 908;
  }

  v33 = *(v29 + v32);
  v34 = sub_1C9A5296C(v31);
  v35 = sub_1C9A5296C(*(*(v30 + 16) + 304));
  v36 = sub_1C9A529D8(v58 + (v59 - v8) * v9 - (v10 + v57), v34, v33, v35);
  v37 = v29[2];
  v38 = sub_1C9A5296C(*(v37 + 36));
  v39 = *(v37 + 32);
  v40 = sub_1C9A5296C(*(v37 + 38));
  v41 = DSPGraph::Box::upstreamLatencyInTicks(v29);
  v42 = a1[3];
  if (v42 != a1 + 2)
  {
    v43 = *(a3 + 1);
    do
    {
      if (v42[2] == v43)
      {
        for (i = a1[12]; i != a1 + 11; i = i[1])
        {
          if (i[8] == v43)
          {
            v45 = v42[4];
            if (v45 == i[10])
            {
              v46 = (i + 2);
              if (v45)
              {
                v47 = sub_1C9A51448(a1, (i + 2));
                if (v47)
                {
                  v46 = v47;
                }
              }

              v48 = sub_1C9A51510(a1, v46);
              if (v48)
              {
                (*(*v48 + 8))(&v60);
                v49 = DSPGraph::Graph::out(v60);
                v50 = DSPGraph::Box::upstreamLatencyInTicks(v49);
                if (v61)
                {
                  sub_1C9A4E570(v61);
                }

                v41 -= v50;
              }

              goto LABEL_78;
            }
          }
        }
      }

      v42 = v42[1];
    }

    while (v42 != a1 + 2);
  }

LABEL_78:
  v51 = v38 + (v36 - v39) * v40 - v41;
  v52 = DSPGraph::Graph::in(v29[1]);
  v53 = a1[37];
  v54 = sub_1C9A5296C(*(v29[1] + 88));
  v55 = sub_1C9A5296C(*(*(v52 + 16) + 304));
  return sub_1C9A529D8(v51, v54, v53, v55);
}

void sub_1C9A52944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_1C9A4E570(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A5296C(uint64_t result)
{
  if (result < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1C9A56EEC(exception, "numerical cast overflow: could not retain value in conversion type");
    __cxa_throw(exception, &unk_1F4951A60, MEMORY[0x1E69E5290]);
  }

  return result;
}

uint64_t sub_1C9A529D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 - a2 >= 0x80000000)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Tick delta too large");
    __cxa_throw(exception, &unk_1F4951400, MEMORY[0x1E69E5288]);
  }

  return (a1 - a2) / a4 + a3;
}

void sub_1C9A52A58(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Processing tree graph is null");
    __cxa_throw(exception, &unk_1F49512F0, MEMORY[0x1E69E5260]);
  }

  v5 = (v2 + 408);
  if (*(v2 + 431) < 0)
  {
    v5 = *v5;
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(v5);
  v8 = &v80;
  sub_1C9A56F20(&v80, v6 + v7);
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v80.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v6);
  }

  v10 = v8 + v6;
  if (v7)
  {
    memmove(v10, v5, v7);
  }

  v10[v7] = 0;
  v11 = std::string::append(&v80, ".dot", 4uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v74 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  v13 = (*a1 + 408);
  if (*(*a1 + 431) < 0)
  {
    v13 = *v13;
  }

  if (v74 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  DSPGraph::Graph::writeDotFile(*a1, v13, v14);
  for (i = a1[6]; i != a1 + 5; i = i[1])
  {
    v16 = (*a1 + 408);
    if (*(*a1 + 431) < 0)
    {
      v16 = *v16;
    }

    if (*(a2 + 23) >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = a2[1];
    }

    v18 = strlen(v16);
    sub_1C9A56F20(&v77, v17 + v18);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v77;
    }

    else
    {
      v19 = v77.__r_.__value_.__r.__words[0];
    }

    if (v17)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      memmove(v19, v20, v17);
    }

    v21 = v19 + v17;
    if (v18)
    {
      memmove(v21, v16, v18);
    }

    v21[v18] = 0;
    v22 = std::string::append(&v77, "_", 1uLL);
    v23 = i + 2;
    v24 = *&v22->__r_.__value_.__l.__data_;
    v78.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v78.__r_.__value_.__l.__data_ = v24;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    (*(i[2] + 8))(&v75, i + 2);
    v25 = (v75 + 408);
    if (*(v75 + 431) < 0)
    {
      v25 = *v25;
    }

    v26 = strlen(v25);
    v27 = std::string::append(&v78, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v79, ".dot", 4uLL);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v80.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v80.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (v76)
    {
      sub_1C9A4E570(v76);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    (*(*v23 + 8))(&v79, i + 2);
    v31 = v79.__r_.__value_.__r.__words[0];
    (*(*v23 + 8))(&v78, i + 2);
    v32 = (v78.__r_.__value_.__r.__words[0] + 408);
    if (*(v78.__r_.__value_.__r.__words[0] + 431) < 0)
    {
      v32 = *v32;
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v80;
    }

    else
    {
      v33 = v80.__r_.__value_.__r.__words[0];
    }

    DSPGraph::Graph::writeDotFile(v31, v32, v33);
    if (v78.__r_.__value_.__l.__size_)
    {
      sub_1C9A4E570(v78.__r_.__value_.__l.__size_);
    }

    if (v79.__r_.__value_.__l.__size_)
    {
      sub_1C9A4E570(v79.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  for (j = a1[9]; j != a1 + 8; j = j[1])
  {
    v35 = (*a1 + 408);
    if (*(*a1 + 431) < 0)
    {
      v35 = *v35;
    }

    if (*(a2 + 23) >= 0)
    {
      v36 = *(a2 + 23);
    }

    else
    {
      v36 = a2[1];
    }

    v37 = strlen(v35);
    sub_1C9A56F20(&v77, v36 + v37);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v77;
    }

    else
    {
      v38 = v77.__r_.__value_.__r.__words[0];
    }

    if (v36)
    {
      if (*(a2 + 23) >= 0)
      {
        v39 = a2;
      }

      else
      {
        v39 = *a2;
      }

      memmove(v38, v39, v36);
    }

    v40 = v38 + v36;
    if (v37)
    {
      memmove(v40, v35, v37);
    }

    v40[v37] = 0;
    v41 = std::string::append(&v77, "_", 1uLL);
    v42 = j + 2;
    v43 = *&v41->__r_.__value_.__l.__data_;
    v78.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v78.__r_.__value_.__l.__data_ = v43;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    (*(j[2] + 8))(&v75, j + 2);
    v44 = (v75 + 408);
    if (*(v75 + 431) < 0)
    {
      v44 = *v44;
    }

    v45 = strlen(v44);
    v46 = std::string::append(&v78, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v79, ".dot", 4uLL);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v80.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v80.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (v76)
    {
      sub_1C9A4E570(v76);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    (*(*v42 + 8))(&v79, j + 2);
    v50 = v79.__r_.__value_.__r.__words[0];
    (*(*v42 + 8))(&v78, j + 2);
    v51 = (v78.__r_.__value_.__r.__words[0] + 408);
    if (*(v78.__r_.__value_.__r.__words[0] + 431) < 0)
    {
      v51 = *v51;
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &v80;
    }

    else
    {
      v52 = v80.__r_.__value_.__r.__words[0];
    }

    DSPGraph::Graph::writeDotFile(v50, v51, v52);
    if (v78.__r_.__value_.__l.__size_)
    {
      sub_1C9A4E570(v78.__r_.__value_.__l.__size_);
    }

    if (v79.__r_.__value_.__l.__size_)
    {
      sub_1C9A4E570(v79.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  for (k = a1[12]; k != a1 + 11; k = k[1])
  {
    v54 = (*a1 + 408);
    if (*(*a1 + 431) < 0)
    {
      v54 = *v54;
    }

    if (*(a2 + 23) >= 0)
    {
      v55 = *(a2 + 23);
    }

    else
    {
      v55 = a2[1];
    }

    v56 = strlen(v54);
    sub_1C9A56F20(&v77, v55 + v56);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v77;
    }

    else
    {
      v57 = v77.__r_.__value_.__r.__words[0];
    }

    if (v55)
    {
      if (*(a2 + 23) >= 0)
      {
        v58 = a2;
      }

      else
      {
        v58 = *a2;
      }

      memmove(v57, v58, v55);
    }

    v59 = v57 + v55;
    if (v56)
    {
      memmove(v59, v54, v56);
    }

    v59[v56] = 0;
    v60 = std::string::append(&v77, "_", 1uLL);
    v61 = k + 2;
    v62 = *&v60->__r_.__value_.__l.__data_;
    v78.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
    *&v78.__r_.__value_.__l.__data_ = v62;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    (*(k[2] + 8))(&v75, k + 2);
    v63 = (v75 + 408);
    if (*(v75 + 431) < 0)
    {
      v63 = *v63;
    }

    v64 = strlen(v63);
    v65 = std::string::append(&v78, v63, v64);
    v66 = *&v65->__r_.__value_.__l.__data_;
    v79.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
    *&v79.__r_.__value_.__l.__data_ = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    v67 = std::string::append(&v79, ".dot", 4uLL);
    v68 = *&v67->__r_.__value_.__l.__data_;
    v80.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
    *&v80.__r_.__value_.__l.__data_ = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (v76)
    {
      sub_1C9A4E570(v76);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    (*(*v61 + 8))(&v79, k + 2);
    v69 = v79.__r_.__value_.__r.__words[0];
    (*(*v61 + 8))(&v78, k + 2);
    v70 = (v78.__r_.__value_.__r.__words[0] + 408);
    if (*(v78.__r_.__value_.__r.__words[0] + 431) < 0)
    {
      v70 = *v70;
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v80;
    }

    else
    {
      v71 = v80.__r_.__value_.__r.__words[0];
    }

    DSPGraph::Graph::writeDotFile(v69, v70, v71);
    if (v78.__r_.__value_.__l.__size_)
    {
      sub_1C9A4E570(v78.__r_.__value_.__l.__size_);
    }

    if (v79.__r_.__value_.__l.__size_)
    {
      sub_1C9A4E570(v79.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1C9A53458(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    v4.i64[0] = *(a1 + 8);
    v4.i64[1] = *(a2 + 8);
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(v4))))
    {
      return 1;
    }
  }

  v6 = *(a1 + 12);
  if (*(a1 + 8) != 1819304813)
  {
    return v6 == *(a2 + 12);
  }

  v7 = v6 & 0x7FFFFFFF;
  if ((v6 & 0x7FFFFFFF) == 0)
  {
    v7 = *(a1 + 12);
  }

  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 & 0xFFFFFFBF;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 28);
    if ((v6 & 0x20) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(a1 + 28);
    }

    if (v11)
    {
      v9 = 8 * (v9 / v11);
      v12 = *(a1 + 32);
      v13 = v8 | 8;
      v14 = v9 == v12;
      goto LABEL_20;
    }

    v9 = 0;
    v12 = *(a1 + 32);
    v13 = v8 | 8;
  }

  else
  {
    v13 = v8 | 8;
    v10 = *(a1 + 28);
    v12 = *(a1 + 32);
  }

  v14 = v12 == 0;
LABEL_20:
  if (v14)
  {
    v8 = v13;
  }

  v16 = (v12 & 7) == 0 && v9 == v12;
  v17 = v8 & 0xFFFFFFEF;
  if (!v16)
  {
    v17 = v8;
  }

  if (v17)
  {
    v17 &= ~4u;
  }

  v18 = (v17 & 8) == 0 || v12 > 8;
  v19 = v17 & 2;
  if (v18)
  {
    v19 = v17;
  }

  if (v10 == 1)
  {
    v20 = v19 & 0xFFFFFFDF;
  }

  else
  {
    v20 = v19;
  }

  if (!v20)
  {
    v20 = 0x80000000;
  }

  v21 = *(a2 + 12);
  if (*(a2 + 8) != 1819304813)
  {
    return v20 == v21;
  }

  v22 = v21 & 0x7FFFFFFF;
  if ((v21 & 0x7FFFFFFF) == 0)
  {
    v22 = *(a2 + 12);
  }

  if (a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 & 0xFFFFFFBF;
  }

  v24 = *(a2 + 24);
  if (!v24)
  {
    v28 = v23 | 8;
    v25 = *(a2 + 28);
    v27 = *(a2 + 32);
LABEL_53:
    v29 = v27 == 0;
    goto LABEL_54;
  }

  v25 = *(a2 + 28);
  if ((v21 & 0x20) != 0)
  {
    v26 = 1;
  }

  else
  {
    v26 = *(a2 + 28);
  }

  if (!v26)
  {
    v24 = 0;
    v27 = *(a2 + 32);
    v28 = v23 | 8;
    goto LABEL_53;
  }

  v24 = 8 * (v24 / v26);
  v27 = *(a2 + 32);
  v28 = v23 | 8;
  v29 = v24 == v27;
LABEL_54:
  if (v29)
  {
    v23 = v28;
  }

  v30 = (v27 & 7) == 0 && v24 == v27;
  v31 = v23 & 0xFFFFFFEF;
  if (!v30)
  {
    v31 = v23;
  }

  if (v31)
  {
    v31 &= ~4u;
  }

  v32 = (v31 & 8) == 0 || v27 > 8;
  v33 = v31 & 2;
  if (v32)
  {
    v33 = v31;
  }

  if (v25 == 1)
  {
    v34 = v33 & 0xFFFFFFDF;
  }

  else
  {
    v34 = v33;
  }

  if (v34)
  {
    v21 = v34;
  }

  else
  {
    v21 = 0x80000000;
  }

  return v20 == v21;
}

void sub_1C9A53618()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_1F4951460, MEMORY[0x1E69E52A8]);
}

uint64_t sub_1C9A5364C(DSPGraph::Graph *a1)
{
  v1 = DSPGraph::Graph::in(a1);
  v2 = *(v1 + 88);
  if (*(v1 + 96) != v2)
  {
    return *(*((*(*v2 + 40))(v2) + 120) + 40);
  }

  sub_1C9A4DF14(v8, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(v7, "out");
  v5 = (v1 + 32);
  if (*(v1 + 55) < 0)
  {
    v5 = *v5;
  }

  DSPGraph::strprintf(v6, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v4, v5, (*(v1 + 96) - *(v1 + 88)) >> 5, 0);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A53724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A53770(DSPGraph::Graph *a1)
{
  v1 = DSPGraph::Graph::out(a1);
  v2 = *(v1 + 64);
  if (*(v1 + 72) != v2)
  {
    return *(*((*(*v2 + 40))(v2) + 120) + 40);
  }

  sub_1C9A4DF14(v8, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(v7, "in");
  v5 = (v1 + 32);
  if (*(v1 + 55) < 0)
  {
    v5 = *v5;
  }

  DSPGraph::strprintf(v6, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v4, v5, (*(v1 + 72) - *(v1 + 64)) >> 5, 0);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A53848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9A53898(uint64_t a1)
{
  sub_1C9A54DB4(a1);

  JUMPOUT(0x1CCA92400);
}

uint64_t sub_1C9A538DC(uint64_t a1, uint64_t a2, int a3)
{
  result = DSPGraph::Box::print();
  if (a3 >= 2)
  {
    DSPGraph::printi();
    v6 = *(**(a1 + 896) + 24);

    return v6();
  }

  return result;
}

unint64_t sub_1C9A539C0(uint64_t a1)
{
  if (DSPGraph::Graph::numOutputs(*(a1 + 896)))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = DSPGraph::Graph::out(*(a1 + 896));
      v5 = DSPGraph::Box::totalLatencyInTicks(v4);
      if (v3 <= v5)
      {
        v3 = v5;
      }

      ++v2;
    }

    while (v2 < DSPGraph::Graph::numOutputs(*(a1 + 896)));
  }

  else
  {
    v3 = 0;
  }

  return *(*(a1 + 8) + 696) * v3 / *(*(a1 + 896) + 696);
}

uint64_t sub_1C9A53A48(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 | a3)
  {
    sub_1C9A4DF14(v8, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_GraphBox.h");
    sub_1C9A4DF14(v7, "setParameter");
    sub_1C9A4DF14(v6, "DSPGraph parameters must have global scope and master element.");
    result = DSPGraph::ThrowException();
    __break(1u);
  }

  else
  {
    v4 = *(**(a1 + 896) + 40);

    return v4();
  }

  return result;
}

void sub_1C9A53AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A53B44(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 | a3)
  {
    sub_1C9A4DF14(v8, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_GraphBox.h");
    sub_1C9A4DF14(v7, "getParameter");
    sub_1C9A4DF14(v6, "DSPGraph parameters must have global scope and master element.");
    result = DSPGraph::ThrowException();
    __break(1u);
  }

  else
  {
    v4 = *(**(a1 + 896) + 48);

    return v4();
  }

  return result;
}

void sub_1C9A53BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A53C40@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (!a2)
  {
    return MEMORY[0x1EEDEF788](*(result + 896));
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

double sub_1C9A53C58@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 104) = 1;
  return result;
}

uint64_t sub_1C9A53C78(DSPGraph::Graph **a1, int a2)
{
  result = a1[112];
  if (*(result + 688) != a2)
  {
    v4 = *(result + 762);
    if (v4 == 1)
    {
      DSPGraph::Graph::uninitialize(result);
      result = a1[112];
    }

    DSPGraph::Graph::unconfigure(result);
    v5 = DSPGraph::Graph::in(a1[112]);
    DSPGraph::Box::sampleRate(v5);
    (*(*a1 + 16))(a1);
    DSPGraph::Graph::setSliceDuration();
    result = DSPGraph::Graph::configure(a1[112]);
    if (v4)
    {
      v6 = a1[112];

      return DSPGraph::Graph::initialize(v6);
    }
  }

  return result;
}

unsigned __int8 *sub_1C9A53D54(uint64_t a1, int a2)
{
  result = *(a1 + 896);
  if (result[760] == a2)
  {
    v4 = result[762];
    if (v4 == 1)
    {
      DSPGraph::Graph::uninitialize(result);
      result = *(a1 + 896);
    }

    DSPGraph::Graph::unconfigure(result);
    v5 = DSPGraph::Graph::in(*(a1 + 896));
    DSPGraph::Box::sampleRate(v5);
    DSPGraph::Graph::setSliceDuration();
    result = DSPGraph::Graph::configure(*(a1 + 896));
    if (v4)
    {
      v6 = *(a1 + 896);

      return DSPGraph::Graph::initialize(v6);
    }
  }

  return result;
}

double sub_1C9A53E18@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  result = *"xfuapraexoba";
  *a1 = *"xfuapraexoba";
  return result;
}

uint64_t sub_1C9A53E34(uint64_t a1)
{
  v1 = a1;
  if (!DSPGraph::Graph::numOutputs(*(a1 + 896)))
  {
    return 0;
  }

  v2 = DSPGraph::Graph::in(*(v1 + 896));
  v3 = DSPGraph::Box::sampleRate(v2);
  v4 = DSPGraph::Graph::out(*(v1 + 896));
  if (v3 != DSPGraph::Box::sampleRate(v4))
  {
    return v1;
  }

  v5 = DSPGraph::Graph::in(*(v1 + 896));
  v6 = *(v5 + 88);
  if (*(v5 + 96) == v6)
  {
    sub_1C9A4DF14(v17, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v16, "out");
    v12 = (v5 + 32);
    if (*(v5 + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf(v15, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, v12, (*(v5 + 96) - *(v5 + 88)) >> 5, 0);
    result = DSPGraph::ThrowException();
  }

  else
  {
    v7 = *(*((*(*v6 + 40))(v6) + 120) + 40);
    v8 = DSPGraph::Graph::out(*(v1 + 896));
    v9 = *(v8 + 64);
    if (*(v8 + 72) != v9)
    {
      if (v7 == *(*((*(*v9 + 40))(v9) + 120) + 40))
      {
        return 0;
      }

      return v1;
    }

    sub_1C9A4DF14(v17, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v16, "in");
    v14 = (v8 + 32);
    if (*(v8 + 55) < 0)
    {
      v14 = *v14;
    }

    DSPGraph::strprintf(v15, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v13, v14, (*(v8 + 72) - *(v8 + 64)) >> 5, 0);
    result = DSPGraph::ThrowException();
  }

  __break(1u);
  return result;
}

void sub_1C9A54024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A5407C(uint64_t a1)
{
  v1 = a1;
  if (!DSPGraph::Graph::numOutputs(*(a1 + 896)))
  {
    return 0;
  }

  v2 = DSPGraph::Graph::in(*(v1 + 896));
  v3 = DSPGraph::Box::sampleRate(v2);
  v4 = DSPGraph::Graph::out(*(v1 + 896));
  if (v3 == DSPGraph::Box::sampleRate(v4))
  {
    return 0;
  }

  return v1;
}

uint64_t sub_1C9A540F4(uint64_t result, int a2)
{
  if (a2)
  {
    v3 = result;
    if ((*(*result + 64))(result))
    {
      v4 = *(v3 + 64);
      if (*(v3 + 72) == v4)
      {
        sub_1C9A4DF14(v26, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        sub_1C9A4DF14(v25, "in");
        v20 = (v3 + 32);
        if (*(v3 + 55) < 0)
        {
          v20 = *v20;
        }

        DSPGraph::strprintf(v24, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v19, v20, (*(v3 + 72) - *(v3 + 64)) >> 5, 0);
        result = DSPGraph::ThrowException();
        goto LABEL_31;
      }

      v5 = (*(*v4 + 40))(v4);
      v6 = *(v3 + 88);
      if (*(v3 + 96) == v6)
      {
        sub_1C9A4DF14(v26, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        sub_1C9A4DF14(v25, "out");
        v22 = (v3 + 32);
        if (*(v3 + 55) < 0)
        {
          v22 = *v22;
        }

        DSPGraph::strprintf(v24, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v21, v22, (*(v3 + 96) - *(v3 + 88)) >> 5, 0);
        result = DSPGraph::ThrowException();
        goto LABEL_31;
      }

      v7 = *(v5 + 56);
      v8 = (*(*v6 + 40))(v6);
      if (*(v8 + 56) != v7)
      {
        DSPGraph::Buffer::copyFrom(*(v8 + 56), v7);
        DSPGraph::Buffer::copyTimeFrom();
      }

      sub_1C9A54EC4(v3, a2);
      v9 = *(v3 + 912);
      if (*(v3 + 920) == v9)
      {
        goto LABEL_29;
      }

      *(v3 + 1020) = *(v9 + 8);
      if (*(v3 + 944) == *(v3 + 936))
      {
        goto LABEL_29;
      }

      result = DSPGraph::Graph::processInPlace();
    }

    else
    {
      sub_1C9A54EC4(v3, a2);
      v10 = *(v3 + 912);
      if (*(v3 + 920) == v10)
      {
        goto LABEL_29;
      }

      *(v3 + 1020) = *(v10 + 8);
      result = DSPGraph::Graph::processMultiple();
    }

    *(v3 + 1020) += a2;
    if (*(v3 + 944) == *(v3 + 936))
    {
      return result;
    }

    DSPGraph::SimpleABL::SimpleABL(v23, (*(v3 + 960) + 16));
    v12 = *(v3 + 936);
    if (*(v3 + 944) == v12)
    {
      sub_1C9A556A4();
    }

    v13 = *(v3 + 88);
    if (*(v3 + 96) != v13)
    {
      LODWORD(v11) = *v12;
      v14 = v11;
      LODWORD(v15) = *(*((*(*v13 + 40))(v13) + 120) + 20);
      if (vabdd_f64(floor(v14 / v15), v14 / v15) >= 0.001)
      {
        __assert_rtn("process", "DSPGraph_GraphBox.h", 348, "isIntegral(numPacketsToWrite)");
      }

      DSPGraph::RingBuffer::write();
      DSPGraph::SimpleABL::~SimpleABL(v23);
      v16 = *(v3 + 936);
      if (*(v3 + 944) != v16)
      {
        return DSPGraph::Box::propagateFlagsAndTimeStamp(v3, *(v16 + 4), (v16 + 8));
      }

LABEL_29:
      sub_1C9A556A4();
    }

    sub_1C9A4DF14(v26, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v25, "out");
    v18 = (v3 + 32);
    if (*(v3 + 55) < 0)
    {
      v18 = *v18;
    }

    DSPGraph::strprintf(v24, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v17, v18, (*(v3 + 96) - *(v3 + 88)) >> 5, 0);
    result = DSPGraph::ThrowException();
LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_1C9A544C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  DSPGraph::SimpleABL::~SimpleABL(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A54570(uint64_t a1)
{
  DSPGraph::RingBufferBox::initialize(a1);
  if (!DSPGraph::Graph::numOutputs(*(a1 + 896)))
  {
    return DSPGraph::Graph::initialize(*(a1 + 896));
  }

  v2 = DSPGraph::Graph::out(*(a1 + 896));
  v3 = *(v2 + 64);
  if (*(v2 + 72) == v3)
  {
    sub_1C9A4DF14(&v24, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v29, "in");
    v21 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v21 = *v21;
    }

    DSPGraph::strprintf(v28, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v20, v21, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
    result = DSPGraph::ThrowException();
  }

  else
  {
    v4 = *((*(*v3 + 40))(v3) + 120);
    v5 = *(v4 + 4);
    v6 = v4[1];
    v24 = *v4;
    v25 = v6;
    v26 = v5;
    v7 = sub_1C9A5574C(&v24);
    v29[0] = 0;
    v8 = *(a1 + 960);
    *(a1 + 960) = v7;
    if (v8)
    {
      sub_1C9A54D5C(a1 + 960, v8);
      v9 = v29[0];
      v29[0] = 0;
      if (v9)
      {
        sub_1C9A54D5C(v29, v9);
      }
    }

    v10 = DSPGraph::Graph::out(*(a1 + 896));
    v11 = *(v10 + 64);
    if (*(v10 + 72) == v11)
    {
      sub_1C9A4DF14(v29, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v28, "in");
      v23 = (v10 + 32);
      if (*(v10 + 55) < 0)
      {
        v23 = *v23;
      }
    }

    else
    {
      v12 = *((*(*v11 + 40))(v11) + 120);
      v13 = *(v12 + 8);
      v14 = v13 == 1718773105 || v13 == 1819304813;
      if (!v14 && *(v12 + 16))
      {
        v17 = v25;
        goto LABEL_16;
      }

      v10 = DSPGraph::Graph::out(*(a1 + 896));
      v15 = *(v10 + 64);
      if (*(v10 + 72) != v15)
      {
        v16 = (*(*v15 + 40))(v15);
        v17 = DWORD2(v25) * *(*(v16 + 120) + 40);
LABEL_16:
        v18 = DSPGraph::Graph::out(*(a1 + 896));
        sub_1C9A5978C(*(a1 + 960), *(*(v18 + 16) + 276) * v17);
        return DSPGraph::Graph::initialize(*(a1 + 896));
      }

      sub_1C9A4DF14(v29, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v28, "in");
      v23 = (v10 + 32);
      if (*(v10 + 55) < 0)
      {
        v23 = *v23;
      }
    }

    DSPGraph::strprintf(v27, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v22, v23, (*(v10 + 72) - *(v10 + 64)) >> 5, 0);
    result = DSPGraph::ThrowException();
  }

  __break(1u);
  return result;
}

void sub_1C9A5487C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A54918(uint64_t a1)
{
  result = DSPGraph::RingBufferBox::uninitialize(a1);
  if ((*(a1 + 1016) & 1) == 0)
  {
    v3 = *(a1 + 896);

    return DSPGraph::Graph::uninitialize(v3);
  }

  return result;
}

uint64_t sub_1C9A54964(DSPGraph::RingBufferBox *a1)
{
  DSPGraph::RingBufferBox::reset(a1);
  v2 = *(a1 + 112);

  return DSPGraph::Graph::reset(v2);
}

uint64_t sub_1C9A549A4(uint64_t a1)
{
  v3 = a1 + 88;
  v2 = *(a1 + 88);
  if (*(v3 + 8) != v2)
  {
    return *(*((*(*v2 + 40))(v2) + 120) + 28);
  }

  sub_1C9A4DF14(v9, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(v8, "out");
  v6 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v6 = *v6;
  }

  DSPGraph::strprintf(v7, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A54A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A54AC4(uint64_t a1)
{
  v3 = a1 + 88;
  v2 = *(a1 + 88);
  if (*(v3 + 8) != v2)
  {
    return *(*((*(*v2 + 40))(v2) + 120) + 16);
  }

  sub_1C9A4DF14(v9, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(v8, "out");
  v6 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v6 = *v6;
  }

  DSPGraph::strprintf(v7, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A54B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A54C04(uint64_t a1)
{
  v1 = *(a1 + 896);
  result = v1 + 408;
  if (*(v1 + 431) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_1C9A54C30(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

void sub_1C9A54CBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9A54CD8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        DSPGraph::SimpleABL::~SimpleABL((v4 - 16));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1C9A54D5C(int a1, void *__p)
{
  if (__p)
  {
    if (*__p)
    {
      MEMORY[0x1CCA923E0](*__p, 0x1000C8077774924);
    }

    operator delete(__p);
  }
}

void sub_1C9A54DB4(uint64_t a1)
{
  *a1 = &unk_1F4951488;
  *(a1 + 888) = &unk_1F4951778;
  if ((*(a1 + 1016) & 1) == 0)
  {
    DSPGraph::Graph::uninitialize(*(a1 + 896));
  }

  v2 = *(a1 + 992);
  if (v2)
  {
    *(a1 + 1000) = v2;
    operator delete(v2);
  }

  v7 = (a1 + 968);
  sub_1C9A54CD8(&v7);
  v3 = *(a1 + 960);
  *(a1 + 960) = 0;
  if (v3)
  {
    sub_1C9A54D5C(a1 + 960, v3);
  }

  v4 = *(a1 + 936);
  if (v4)
  {
    *(a1 + 944) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 912);
  if (v5)
  {
    *(a1 + 920) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 904);
  if (v6)
  {
    sub_1C9A4E570(v6);
  }

  *a1 = MEMORY[0x1E698D890] + 16;
  DSPGraph::RingBuffer::~RingBuffer((a1 + 808));

  DSPGraph::Box::~Box(a1);
}

uint64_t sub_1C9A54EC4(uint64_t a1, int a2)
{
  if (DSPGraph::Graph::numInputs(*(a1 + 896)))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 64);
      if (v6 >= (*(a1 + 72) - v7) >> 5)
      {
        break;
      }

      v8 = *((*(*(v7 + v5) + 40))() + 56);
      v9 = *(v8 + 80);
      *(v8 + 8) = *(*(a1 + 16) + 256);
      v10 = *(v8 + 72);
      v45 = *(v8 + 8);
      v46 = *(v8 + 24);
      v47 = *(v8 + 40);
      v48 = *(v8 + 56);
      v11 = *(a1 + 912);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 920) - v11) >> 4) <= v6)
      {
        goto LABEL_56;
      }

      v12 = v11 + v4;
      *v12 = a2;
      *(v12 + 4) = v10;
      *(v12 + 8) = v45;
      *(v12 + 24) = v46;
      *(v12 + 40) = v47;
      *(v12 + 56) = v48;
      *(v12 + 72) = v9;
      ++v6;
      v5 += 32;
      v4 += 80;
      if (v6 >= DSPGraph::Graph::numInputs(*(a1 + 896)))
      {
        goto LABEL_6;
      }
    }

    sub_1C9A4DF14(&v45, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v50, "in");
    v44 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf(v49, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v43, v44, (*(a1 + 72) - *(a1 + 64)) >> 5, v6);
    DSPGraph::ThrowException();
    goto LABEL_54;
  }

LABEL_6:
  v13 = DSPGraph::Graph::in(*(a1 + 896));
  DSPGraph::Box::sampleRate(v13);
  DSPGraph::Graph::preflight();
  v14 = *(a1 + 912);
  if (*(a1 + 920) == v14)
  {
LABEL_56:
    sub_1C9A556A4();
  }

  if (*v14 != a2)
  {
LABEL_55:
    __assert_rtn("prepareGraphIOData", "DSPGraph_GraphBox.h", 279, "mGraphIODataIn.at(0).mNumFrames == inNumFrames");
  }

  result = DSPGraph::Graph::numOutputs(*(a1 + 896));
  if (result)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(a1 + 88);
      if (v16 >= ((*(a1 + 96) - v17) >> 5))
      {
        sub_1C9A4DF14(&v45, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        sub_1C9A4DF14(v50, "out");
        v42 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v42 = *v42;
        }

        goto LABEL_53;
      }

      v18 = *(*((*(*(v17 + 32 * v16) + 40))(v17 + 32 * v16) + 56) + 80);
      if (*v18)
      {
        break;
      }

LABEL_31:
      v40 = *(a1 + 936);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 944) - v40) >> 4) <= v16)
      {
        goto LABEL_56;
      }

      *(v40 + 80 * v16++ + 72) = *(a1 + 960) + 16;
      result = DSPGraph::Graph::numOutputs(*(a1 + 896));
      if (v16 >= result)
      {
        return result;
      }
    }

    v19 = 0;
    v20 = 28;
    while (1)
    {
      v21 = *(a1 + 88);
      if (v16 >= ((*(a1 + 96) - v21) >> 5))
      {
        break;
      }

      v22 = *((*(*(v21 + 32 * v16) + 40))(v21 + 32 * v16) + 120);
      v24 = *(v22 + 8);
      v25 = v24 == 1718773105 || v24 == 1819304813;
      if (v25 || !*(v22 + 16))
      {
        v26 = *(a1 + 88);
        if (v16 >= ((*(a1 + 96) - v26) >> 5))
        {
          sub_1C9A4DF14(&v45, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v50, "out");
          v42 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v42 = *v42;
          }

          goto LABEL_53;
        }

        v27 = (*(*(v26 + 32 * v16) + 40))(v26 + 32 * v16);
        v28 = *(a1 + 936);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 944) - v28) >> 4) <= v16)
        {
          goto LABEL_56;
        }

        v29 = *(v28 + 80 * v16) * *(*(v27 + 120) + 24);
        v30 = *(a1 + 960);
        if (v29 > *(v30 + 8))
        {
          __assert_rtn("prepareGraphIOData", "DSPGraph_GraphBox.h", 305, "outNumBytes <= mOutBufferList->GetCapacityBytes()");
        }
      }

      else
      {
        v31 = *(a1 + 936);
        if (*(a1 + 944) == v31)
        {
          goto LABEL_56;
        }

        v32 = *(a1 + 88);
        if (v16 >= ((*(a1 + 96) - v32) >> 5))
        {
          sub_1C9A4DF14(&v45, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v50, "out");
          v42 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v42 = *v42;
          }

          goto LABEL_53;
        }

        LODWORD(v23) = *v31;
        v33 = v23;
        LODWORD(v34) = *(*((*(*(v32 + 32 * v16) + 40))(v32 + 32 * v16) + 120) + 20);
        v35 = v33 / v34;
        if (vabdd_f64(floor(v35), v35) >= 0.001)
        {
          __assert_rtn("prepareGraphIOData", "DSPGraph_GraphBox.h", 288, "isIntegral(numPacketsOut)");
        }

        v36 = *(a1 + 88);
        if (v16 >= ((*(a1 + 96) - v36) >> 5))
        {
          sub_1C9A4DF14(&v45, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v50, "out");
          v42 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v42 = *v42;
          }

          goto LABEL_53;
        }

        LODWORD(v37) = *(*((*(*(v36 + 32 * v16) + 40))(v36 + 32 * v16) + 120) + 16);
        v38 = v35 * v37;
        v30 = *(a1 + 960);
        LODWORD(v39) = *(v30 + 8);
        if (v38 > v39)
        {
          __assert_rtn("prepareGraphIOData", "DSPGraph_GraphBox.h", 294, "outNumBytes <= mOutBufferList->GetCapacityBytes()");
        }

        v29 = v38;
      }

      *(v30 + v20) = v29;
      ++v19;
      v20 += 16;
      if (v19 >= *v18)
      {
        goto LABEL_31;
      }
    }

    sub_1C9A4DF14(&v45, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v50, "out");
    v42 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v42 = *v42;
    }

LABEL_53:
    DSPGraph::strprintf(v49, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v41, v42, (*(a1 + 96) - *(a1 + 88)) >> 5, v16);
    DSPGraph::ThrowException();
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  return result;
}

void sub_1C9A5561C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9A556BC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1C9A55718(exception, a1);
  __cxa_throw(exception, &unk_1F4951780, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_1C9A55718(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

_DWORD *sub_1C9A5574C(uint64_t a1)
{
  v1 = *(a1 + 12);
  if ((v1 & 0x20) != 0)
  {
    v2 = *(a1 + 28);
  }

  else
  {
    v2 = 1;
  }

  if ((v1 & 0x20) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 28);
  }

  result = operator new(16 * v2 + 24);
  *result = 0;
  result[2] = 0;
  result[4] = v2;
  if (v2)
  {
    v5 = (result + 6);
    do
    {
      *v5 = v3;
      *(v5 + 1) = 0;
      *(v5 + 1) = 0;
      v5 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1C9A557B4(uint64_t a1)
{
  sub_1C9A563BC(a1);

  JUMPOUT(0x1CCA92400);
}

uint64_t sub_1C9A557F8(uint64_t a1, uint64_t a2, int a3)
{
  result = DSPGraph::Box::print();
  if (a3 >= 2)
  {
    DSPGraph::printi();
    v6 = *(**(a1 + 784) + 24);

    return v6();
  }

  return result;
}

unint64_t sub_1C9A558B0(uint64_t a1)
{
  if (DSPGraph::Graph::numOutputs(*(a1 + 784)))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = DSPGraph::Graph::out(*(a1 + 784));
      v5 = DSPGraph::Box::totalLatencyInTicks(v4);
      if (v3 <= v5)
      {
        v3 = v5;
      }

      ++v2;
    }

    while (v2 < DSPGraph::Graph::numOutputs(*(a1 + 784)));
  }

  else
  {
    v3 = 0;
  }

  return *(*(a1 + 8) + 696) * v3 / *(*(a1 + 784) + 696);
}

uint64_t sub_1C9A55938(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 | a3)
  {
    sub_1C9A4DF14(v8, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_GraphBox.h");
    sub_1C9A4DF14(v7, "setParameter");
    sub_1C9A4DF14(v6, "DSPGraph parameters must have global scope and master element.");
    result = DSPGraph::ThrowException();
    __break(1u);
  }

  else
  {
    v4 = *(**(a1 + 784) + 40);

    return v4();
  }

  return result;
}

void sub_1C9A559E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A55A34(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 | a3)
  {
    sub_1C9A4DF14(v8, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_GraphBox.h");
    sub_1C9A4DF14(v7, "getParameter");
    sub_1C9A4DF14(v6, "DSPGraph parameters must have global scope and master element.");
    result = DSPGraph::ThrowException();
    __break(1u);
  }

  else
  {
    v4 = *(**(a1 + 784) + 48);

    return v4();
  }

  return result;
}

void sub_1C9A55AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A55B30@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (!a2)
  {
    return MEMORY[0x1EEDEF788](*(result + 784));
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

double sub_1C9A55B48@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 104) = 1;
  return result;
}

uint64_t sub_1C9A55B68(DSPGraph::Graph **a1, int a2)
{
  result = a1[98];
  if (*(result + 688) != a2)
  {
    v4 = *(result + 762);
    if (v4 == 1)
    {
      DSPGraph::Graph::uninitialize(result);
      result = a1[98];
    }

    DSPGraph::Graph::unconfigure(result);
    v5 = DSPGraph::Graph::in(a1[98]);
    DSPGraph::Box::sampleRate(v5);
    (*(*a1 + 16))(a1);
    DSPGraph::Graph::setSliceDuration();
    result = DSPGraph::Graph::configure(a1[98]);
    if (v4)
    {
      v6 = a1[98];

      return DSPGraph::Graph::initialize(v6);
    }
  }

  return result;
}

unsigned __int8 *sub_1C9A55C44(uint64_t a1, int a2)
{
  result = *(a1 + 784);
  if (result[760] == a2)
  {
    v4 = result[762];
    if (v4 == 1)
    {
      DSPGraph::Graph::uninitialize(result);
      result = *(a1 + 784);
    }

    DSPGraph::Graph::unconfigure(result);
    v5 = DSPGraph::Graph::in(*(a1 + 784));
    DSPGraph::Box::sampleRate(v5);
    DSPGraph::Graph::setSliceDuration();
    result = DSPGraph::Graph::configure(*(a1 + 784));
    if (v4)
    {
      v6 = *(a1 + 784);

      return DSPGraph::Graph::initialize(v6);
    }
  }

  return result;
}

double sub_1C9A55D08@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  result = *"xfuapraexoba";
  *a1 = *"xfuapraexoba";
  return result;
}

uint64_t sub_1C9A55D20(uint64_t a1)
{
  v1 = a1;
  if (!DSPGraph::Graph::numOutputs(*(a1 + 784)))
  {
    return 0;
  }

  v2 = DSPGraph::Graph::in(*(v1 + 784));
  v3 = DSPGraph::Box::sampleRate(v2);
  v4 = DSPGraph::Graph::out(*(v1 + 784));
  if (v3 != DSPGraph::Box::sampleRate(v4))
  {
    return v1;
  }

  v5 = DSPGraph::Graph::in(*(v1 + 784));
  v6 = *(v5 + 88);
  if (*(v5 + 96) == v6)
  {
    sub_1C9A4DF14(v17, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v16, "out");
    v12 = (v5 + 32);
    if (*(v5 + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf(v15, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, v12, (*(v5 + 96) - *(v5 + 88)) >> 5, 0);
    result = DSPGraph::ThrowException();
  }

  else
  {
    v7 = *(*((*(*v6 + 40))(v6) + 120) + 40);
    v8 = DSPGraph::Graph::out(*(v1 + 784));
    v9 = *(v8 + 64);
    if (*(v8 + 72) != v9)
    {
      if (v7 == *(*((*(*v9 + 40))(v9) + 120) + 40))
      {
        return 0;
      }

      return v1;
    }

    sub_1C9A4DF14(v17, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v16, "in");
    v14 = (v8 + 32);
    if (*(v8 + 55) < 0)
    {
      v14 = *v14;
    }

    DSPGraph::strprintf(v15, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v13, v14, (*(v8 + 72) - *(v8 + 64)) >> 5, 0);
    result = DSPGraph::ThrowException();
  }

  __break(1u);
  return result;
}

void sub_1C9A55F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A55F68(uint64_t a1)
{
  v1 = a1;
  if (!DSPGraph::Graph::numOutputs(*(a1 + 784)))
  {
    return 0;
  }

  v2 = DSPGraph::Graph::in(*(v1 + 784));
  v3 = DSPGraph::Box::sampleRate(v2);
  v4 = DSPGraph::Graph::out(*(v1 + 784));
  if (v3 == DSPGraph::Box::sampleRate(v4))
  {
    return 0;
  }

  return v1;
}

uint64_t sub_1C9A55FD0(uint64_t result, int a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  if ((*(*result + 64))(result))
  {
    v4 = *(v3 + 64);
    if (*(v3 + 72) == v4)
    {
      sub_1C9A4DF14(v19, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v18, "in");
      v14 = (v3 + 32);
      if (*(v3 + 55) < 0)
      {
        v14 = *v14;
      }

      DSPGraph::strprintf(v17, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v13, v14, (*(v3 + 72) - *(v3 + 64)) >> 5, 0);
      DSPGraph::ThrowException();
    }

    else
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = *(v3 + 88);
      if (*(v3 + 96) != v6)
      {
        v7 = *(v5 + 56);
        v8 = (*(*v6 + 40))(v6);
        if (*(v8 + 56) != v7)
        {
          DSPGraph::Buffer::copyFrom(*(v8 + 56), v7);
          DSPGraph::Buffer::copyTimeFrom();
        }

        sub_1C9A564A8(v3, a2);
        v9 = *(v3 + 800);
        if (*(v3 + 808) != v9)
        {
          *(v3 + 908) = *(v9 + 8);
          if (*(v3 + 832) != *(v3 + 824))
          {
            result = DSPGraph::Graph::processInPlace();
            goto LABEL_12;
          }
        }

LABEL_24:
        sub_1C9A556A4();
      }

      sub_1C9A4DF14(v19, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v18, "out");
      v16 = (v3 + 32);
      if (*(v3 + 55) < 0)
      {
        v16 = *v16;
      }

      DSPGraph::strprintf(v17, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v15, v16, (*(v3 + 96) - *(v3 + 88)) >> 5, 0);
      DSPGraph::ThrowException();
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_1C9A564A8(v3, a2);
  v10 = *(v3 + 800);
  if (*(v3 + 808) == v10)
  {
    goto LABEL_24;
  }

  *(v3 + 908) = *(v10 + 8);
  result = DSPGraph::Graph::processMultiple();
LABEL_12:
  *(v3 + 908) += a2;
  v11 = *(v3 + 824);
  if (*(v3 + 832) != v11)
  {
    v12 = *(v11 + 4);

    return DSPGraph::Box::propagateFlagsAndTimeStamp(v3, v12, (v11 + 8));
  }

  return result;
}

void sub_1C9A5626C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A562C4(DSPGraph::Box *a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 98);

  return DSPGraph::Graph::initialize(v2);
}

uint64_t sub_1C9A56300(uint64_t a1)
{
  result = DSPGraph::Box::uninitialize(a1);
  if ((*(a1 + 904) & 1) == 0)
  {
    v3 = *(a1 + 784);

    return DSPGraph::Graph::uninitialize(v3);
  }

  return result;
}

uint64_t sub_1C9A5634C(DSPGraph::Box *a1)
{
  DSPGraph::Box::reset(a1);
  v2 = *(a1 + 98);

  return DSPGraph::Graph::reset(v2);
}

uint64_t sub_1C9A56390(uint64_t a1)
{
  v1 = *(a1 + 784);
  result = v1 + 408;
  if (*(v1 + 431) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1C9A563BC(uint64_t a1)
{
  *a1 = &unk_1F49517A8;
  *(a1 + 776) = &unk_1F4951A58;
  if ((*(a1 + 904) & 1) == 0)
  {
    DSPGraph::Graph::uninitialize(*(a1 + 784));
  }

  v2 = *(a1 + 880);
  if (v2)
  {
    *(a1 + 888) = v2;
    operator delete(v2);
  }

  v7 = (a1 + 856);
  sub_1C9A54CD8(&v7);
  v3 = *(a1 + 848);
  *(a1 + 848) = 0;
  if (v3)
  {
    sub_1C9A54D5C(a1 + 848, v3);
  }

  v4 = *(a1 + 824);
  if (v4)
  {
    *(a1 + 832) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 800);
  if (v5)
  {
    *(a1 + 808) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 792);
  if (v6)
  {
    sub_1C9A4E570(v6);
  }

  DSPGraph::Box::~Box(a1);
}

uint64_t sub_1C9A564A8(uint64_t a1, int a2)
{
  if (DSPGraph::Graph::numInputs(*(a1 + 784)))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 64);
      if (v6 >= (*(a1 + 72) - v7) >> 5)
      {
        break;
      }

      v8 = *((*(*(v7 + v5) + 40))() + 56);
      v9 = *(v8 + 80);
      *(v8 + 8) = *(*(a1 + 16) + 256);
      v10 = *(v8 + 72);
      v42 = *(v8 + 8);
      v43 = *(v8 + 24);
      v44 = *(v8 + 40);
      v45 = *(v8 + 56);
      v11 = *(a1 + 800);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 808) - v11) >> 4) <= v6)
      {
        goto LABEL_53;
      }

      v12 = v11 + v4;
      *v12 = a2;
      *(v12 + 4) = v10;
      *(v12 + 8) = v42;
      *(v12 + 24) = v43;
      *(v12 + 40) = v44;
      *(v12 + 56) = v45;
      *(v12 + 72) = v9;
      ++v6;
      v5 += 32;
      v4 += 80;
      if (v6 >= DSPGraph::Graph::numInputs(*(a1 + 784)))
      {
        goto LABEL_6;
      }
    }

    sub_1C9A4DF14(&v42, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v47, "in");
    v41 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v41 = *v41;
    }

    DSPGraph::strprintf(v46, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v40, v41, (*(a1 + 72) - *(a1 + 64)) >> 5, v6);
    DSPGraph::ThrowException();
    goto LABEL_51;
  }

LABEL_6:
  v13 = DSPGraph::Graph::in(*(a1 + 784));
  DSPGraph::Box::sampleRate(v13);
  DSPGraph::Graph::preflight();
  v14 = *(a1 + 800);
  if (*(a1 + 808) == v14)
  {
LABEL_53:
    sub_1C9A556A4();
  }

  if (*v14 != a2)
  {
LABEL_52:
    __assert_rtn("prepareGraphIOData", "DSPGraph_GraphBox.h", 279, "mGraphIODataIn.at(0).mNumFrames == inNumFrames");
  }

  result = DSPGraph::Graph::numOutputs(*(a1 + 784));
  if (result)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(a1 + 88);
      if (v16 >= ((*(a1 + 96) - v17) >> 5))
      {
        sub_1C9A4DF14(&v42, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        sub_1C9A4DF14(v47, "out");
        v39 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v39 = *v39;
        }

        goto LABEL_50;
      }

      v18 = *(*((*(*(v17 + 32 * v16) + 40))(v17 + 32 * v16) + 56) + 80);
      if (*v18)
      {
        break;
      }

LABEL_29:
      v37 = *(a1 + 824);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 832) - v37) >> 4) <= v16)
      {
        goto LABEL_53;
      }

      *(v37 + 80 * v16++ + 72) = v18;
      result = DSPGraph::Graph::numOutputs(*(a1 + 784));
      if (v16 >= result)
      {
        return result;
      }
    }

    v19 = 0;
    v20 = 3;
    while (1)
    {
      v21 = *(a1 + 88);
      if (v16 >= ((*(a1 + 96) - v21) >> 5))
      {
        break;
      }

      v22 = *((*(*(v21 + 32 * v16) + 40))(v21 + 32 * v16) + 120);
      v24 = *(v22 + 8);
      v25 = v24 == 1718773105 || v24 == 1819304813;
      if (v25 || !*(v22 + 16))
      {
        v26 = *(a1 + 88);
        if (v16 >= ((*(a1 + 96) - v26) >> 5))
        {
          sub_1C9A4DF14(&v42, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v47, "out");
          v39 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v39 = *v39;
          }

          goto LABEL_50;
        }

        v27 = (*(*(v26 + 32 * v16) + 40))(v26 + 32 * v16);
        v28 = *(a1 + 824);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 832) - v28) >> 4) <= v16)
        {
          goto LABEL_53;
        }

        v29 = *(v28 + 80 * v16) * *(*(v27 + 120) + 24);
      }

      else
      {
        v30 = *(a1 + 824);
        if (*(a1 + 832) == v30)
        {
          goto LABEL_53;
        }

        v31 = *(a1 + 88);
        if (v16 >= ((*(a1 + 96) - v31) >> 5))
        {
          sub_1C9A4DF14(&v42, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v47, "out");
          v39 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v39 = *v39;
          }

          goto LABEL_50;
        }

        LODWORD(v23) = *v30;
        v32 = v23;
        LODWORD(v33) = *(*((*(*(v31 + 32 * v16) + 40))(v31 + 32 * v16) + 120) + 20);
        v34 = v32 / v33;
        if (vabdd_f64(floor(v34), v34) >= 0.001)
        {
          __assert_rtn("prepareGraphIOData", "DSPGraph_GraphBox.h", 288, "isIntegral(numPacketsOut)");
        }

        v35 = *(a1 + 88);
        if (v16 >= ((*(a1 + 96) - v35) >> 5))
        {
          sub_1C9A4DF14(&v42, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v47, "out");
          v39 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v39 = *v39;
          }

          goto LABEL_50;
        }

        LODWORD(v36) = *(*((*(*(v35 + 32 * v16) + 40))(v35 + 32 * v16) + 120) + 16);
        v29 = (v34 * v36);
      }

      v18[v20] = v29;
      ++v19;
      v20 += 4;
      if (v19 >= *v18)
      {
        goto LABEL_29;
      }
    }

    sub_1C9A4DF14(&v42, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v47, "out");
    v39 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v39 = *v39;
    }

LABEL_50:
    DSPGraph::strprintf(v46, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v38, v39, (*(a1 + 96) - *(a1 + 88)) >> 5, v16);
    DSPGraph::ThrowException();
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  return result;
}

void sub_1C9A56B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1C9A56C1C(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v3 = (a1 + 2);
    v4 = *a3;
    if (*a3 == a1[2])
    {
      v5 = a3[2];
      if (v3 >= a3 || v5 == a1[4])
      {
        return a1;
      }
    }

    else
    {
      if (v3 >= a3)
      {
        return a1;
      }

      v5 = a3[2];
    }

    v6 = 1;
LABEL_8:
    if (v6)
    {
      v7 = 0;
      v8 = a1;
      while (v8 != a2)
      {
        v8 = v8[1];
        if (v6 == ++v7)
        {
          v9 = v6;
          v7 = v6;
          goto LABEL_21;
        }
      }

      v9 = v6;
    }

    else
    {
      v9 = 0;
      v7 = 0;
      v8 = a1;
    }

LABEL_21:
    while (v8 != a2)
    {
      v11 = v8 + 2;
      if (v4 == v8[2])
      {
        if (v11 >= a3 || v5 == v8[4])
        {
          goto LABEL_30;
        }
      }

      else if (v11 >= a3)
      {
        goto LABEL_30;
      }

      v6 *= 2;
      a1 = v8;
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

      v7 = 0;
      v9 = -v6;
      if (-v6 > 1)
      {
        v10 = -v6;
      }

      else
      {
        v10 = 1;
      }

      while (v8 != a2)
      {
        v8 = *v8;
        if (v10 == ++v7)
        {
          v7 = v10;
          goto LABEL_21;
        }
      }
    }

    v8 = a2;
LABEL_30:
    v12 = v7 - v9 + v6;
    if (v12)
    {
      if (v12 == 1)
      {
        return v8;
      }

      do
      {
        v13 = v12 >> 1;
        v14 = a1;
        if (v12 != 1)
        {
          v15 = v13 + 1;
          v14 = a1;
          do
          {
            v14 = v14[1];
            --v15;
          }

          while (v15 > 1);
        }

        v16 = v14 + 2;
        if (v4 == v14[2])
        {
          if (v16 >= a3 || v5 == v14[4])
          {
            goto LABEL_42;
          }
        }

        else if (v16 >= a3)
        {
          goto LABEL_42;
        }

        a1 = v14[1];
        v13 = v12 + ~v13;
LABEL_42:
        v12 = v13;
      }

      while (v13);
    }

    return a1;
  }

  return a2;
}

uint64_t sub_1C9A56DD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      sub_1C9A57094();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a5 = v5;
  return result;
}

void sub_1C9A56E78(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1C9A4E65C((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

std::runtime_error *sub_1C9A56EEC(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C0] + 16);
  return result;
}

uint64_t sub_1C9A56F20(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1C9A4E0DC();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void sub_1C9A56FAC()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, &unk_1F4951A78, MEMORY[0x1E69E52E8]);
}

void *sub_1C9A56FF8(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void *sub_1C9A57110(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1C9A57094();
  }

  return result;
}

void sub_1C9A571A4(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        (*(v2[2] + 32))();
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_1C9A57238(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        (*(v2[2] + 32))();
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_1C9A572CC(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        (*(v2[2] + 32))();
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

__n128 sub_1C9A57360@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1C9A573A4(*(a1 + 48));
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_1C9A573A4(DSPGraph::Graph *a1)
{
  v1 = DSPGraph::Graph::in(a1);
  v2 = *(v1 + 88);
  if (*(v1 + 96) != v2)
  {
    return *((*(*v2 + 40))(v2) + 120);
  }

  sub_1C9A4DF14(v8, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(v7, "out");
  v5 = (v1 + 32);
  if (*(v1 + 55) < 0)
  {
    v5 = *v5;
  }

  DSPGraph::strprintf(v6, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v4, v5, (*(v1 + 96) - *(v1 + 88)) >> 5, 0);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A57478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1C9A574C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 64) == 1)
  {
    v4 = sub_1C9A53770(*(a1 + 48));
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1C9A57534(*(a1 + 48));
  result = *v5;
  v7 = *(v5 + 16);
  *a2 = *v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = *(v5 + 32);
  *(a2 + 40) = v4;
  return result;
}

uint64_t sub_1C9A57534(DSPGraph::Graph *a1)
{
  v1 = DSPGraph::Graph::out(a1);
  v2 = *(v1 + 64);
  if (*(v1 + 72) != v2)
  {
    return *((*(*v2 + 40))(v2) + 120);
  }

  sub_1C9A4DF14(v8, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(v7, "in");
  v5 = (v1 + 32);
  if (*(v1 + 55) < 0)
  {
    v5 = *v5;
  }

  DSPGraph::strprintf(v6, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v4, v5, (*(v1 + 72) - *(v1 + 64)) >> 5, 0);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A57608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A5765C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1C9A5767C(void *a1)
{
  sub_1C9A576B4(a1);

  JUMPOUT(0x1CCA92400);
}

void *sub_1C9A576B4(void *a1)
{
  *a1 = &unk_1F4951AA0;
  v2 = a1[7];
  if (v2)
  {
    sub_1C9A4E570(v2);
  }

  *a1 = &unk_1F49513A8;
  sub_1C9A4ED08(a1 + 2);
  return a1;
}

uint64_t sub_1C9A57724(uint64_t a1, int a2, int a3, double a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = DSPGraph::Box::Box(a1);
  *v8 = &unk_1F4951AE0;
  *(v8 + 776) = 0u;
  *(a1 + 792) = [MEMORY[0x1E695DF70] array];
  *(a1 + 800) = [MEMORY[0x1E695DF70] array];
  v9 = sub_1C9A779E4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218496;
    v12 = a4;
    v13 = 1024;
    v14 = a2;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_1C9788000, v9, OS_LOG_TYPE_DEBUG, "Constructing ShazamBox(ringBufferDuration = %f, saveWavFile = %d, channelCount = %d)", &v11, 0x18u);
  }

  *(a1 + 808) = a4;
  *(a1 + 816) = a2;
  *(a1 + 832) = a3;
  return a1;
}

uint64_t sub_1C9A578AC(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A779E4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9788000, v2, OS_LOG_TYPE_DEBUG, "Initializing ShazamBox", buf, 2u);
  }

  v3 = *(a1 + 64);
  if (*(a1 + 72) == v3)
  {
    sub_1C9A4DF14(buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v34, "in");
    v26 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v26 = *v26;
    }

LABEL_56:
    DSPGraph::strprintf(v32, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v25, v26, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    DSPGraph::ThrowException();
    __break(1u);
  }

  if (**((*(*v3 + 40))(v3) + 120) == 16000.0)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 64);
  if (*(a1 + 72) == v4)
  {
    sub_1C9A4DF14(buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v34, "in");
    v26 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v26 = *v26;
    }

    goto LABEL_56;
  }

  if (**((*(*v4 + 40))(v4) + 120) == 24000.0)
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 64);
  if (*(a1 + 72) == v5)
  {
    sub_1C9A4DF14(buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v34, "in");
    v26 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v26 = *v26;
    }

    goto LABEL_56;
  }

  if (**((*(*v5 + 40))(v5) + 120) == 32000.0)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 64);
  if (*(a1 + 72) == v6)
  {
    sub_1C9A4DF14(buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v34, "in");
    v26 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v26 = *v26;
    }

    goto LABEL_56;
  }

  if (**((*(*v6 + 40))(v6) + 120) != 48000.0)
  {
    __assert_rtn("initialize", "DSPGraph_ShazamBox.mm", 45, "in(0).format().mSampleRate == 16000 || in(0).format().mSampleRate == 24000 || in(0).format().mSampleRate == 32000 || in(0).format().mSampleRate == 48000");
  }

LABEL_11:
  v7 = *(a1 + 64);
  if (*(a1 + 72) == v7)
  {
    sub_1C9A4DF14(buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v34, "in");
    v26 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v26 = *v26;
    }

    goto LABEL_56;
  }

  if (*(*((*(*v7 + 40))(v7) + 120) + 28) != *(a1 + 832))
  {
    __assert_rtn("initialize", "DSPGraph_ShazamBox.mm", 46, "in(0).format().mChannelsPerFrame == mChannelCount");
  }

  v8 = *(a1 + 64);
  if (*(a1 + 72) == v8)
  {
    sub_1C9A4DF14(buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v34, "in");
    v26 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v26 = *v26;
    }

    goto LABEL_56;
  }

  v9 = *((*(*v8 + 40))(v8) + 120);
  v10 = *v9;
  LODWORD(v9) = *(v9 + 7);
  *buf = v10;
  v28 = xmmword_1C9AD38A0;
  v29 = 4;
  v30 = v9;
  v31 = 32;
  v11 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:buf];
  v12 = *(a1 + 776);
  *(a1 + 776) = v11;

  v13 = sub_1C9A779E4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [*(a1 + 776) debugDescription];
    *v34 = 138412290;
    *&v34[4] = v14;
    _os_log_impl(&dword_1C9788000, v13, OS_LOG_TYPE_DEBUG, "Shazam DSPGraph ABL AudioFormat: %@", v34, 0xCu);
  }

  memset(v34, 0, 20);
  +[SNGenerateShazamSignatureRequest shazamChannelsMixingInfo];
  v15 = sub_1C9A779E4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 0;
    _os_log_impl(&dword_1C9788000, v15, OS_LOG_TYPE_DEBUG, "ShazamChannelsMixingInfo: ", v32, 2u);
  }

  v16 = sub_1C9A779E4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 67109120;
    LODWORD(v33) = *v34;
    _os_log_impl(&dword_1C9788000, v16, OS_LOG_TYPE_DEBUG, "  Playback Channel:   %d ", v32, 8u);
  }

  v17 = sub_1C9A779E4();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 67109120;
    LODWORD(v33) = *&v34[8];
    _os_log_impl(&dword_1C9788000, v17, OS_LOG_TYPE_DEBUG, "  Microphone Channel: %d ", v32, 8u);
  }

  v18 = sub_1C9A779E4();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134217984;
    v33 = *&v34[4];
    _os_log_impl(&dword_1C9788000, v18, OS_LOG_TYPE_DEBUG, "  Playback Scale:     %.2f ", v32, 0xCu);
  }

  v19 = sub_1C9A779E4();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134217984;
    v33 = *&v34[12];
    _os_log_impl(&dword_1C9788000, v19, OS_LOG_TYPE_DEBUG, "  Micrphone Scale:    %.2f ", v32, 0xCu);
  }

  v20 = sub_1C9A779E4();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134217984;
    v33 = *&v34[16];
    _os_log_impl(&dword_1C9788000, v20, OS_LOG_TYPE_DEBUG, "  Mixer Scale:        %.2f ", v32, 0xCu);
  }

  *(a1 + 820) = *&v34[4];
  *(a1 + 824) = *&v34[12];
  if (*(a1 + 832) >= 2u)
  {
    v21 = sub_1C9A779E4();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *v32 = 0;
      _os_log_impl(&dword_1C9788000, v21, OS_LOG_TYPE_DEBUG, "Testing ShazamChannels Scaling Assertions", v32, 2u);
    }

    if (*(a1 + 820) == 0.0)
    {
      __assert_rtn("initialize", "DSPGraph_ShazamBox.mm", 68, "playbackScale != 0.0");
    }

    if (*(a1 + 824) == 0.0)
    {
      __assert_rtn("initialize", "DSPGraph_ShazamBox.mm", 69, "micScale != 0.0");
    }

    if (*(a1 + 828) == 0.0)
    {
      __assert_rtn("initialize", "DSPGraph_ShazamBox.mm", 70, "mixerScale != 0.0");
    }
  }

  v22 = objc_alloc_init(MEMORY[0x1E697B7E8]);
  v23 = *(a1 + 784);
  *(a1 + 784) = v22;

  [*(a1 + 792) removeAllObjects];
  return [*(a1 + 800) removeAllObjects];
}

uint64_t sub_1C9A58254(uint64_t a1)
{
  v2 = sub_1C9A779E4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C9788000, v2, OS_LOG_TYPE_DEBUG, "Uninitializing ShazamBox", v6, 2u);
  }

  v3 = *(a1 + 776);
  *(a1 + 776) = 0;

  v4 = *(a1 + 784);
  *(a1 + 784) = 0;

  [*(a1 + 792) removeAllObjects];
  return [*(a1 + 800) removeAllObjects];
}

void sub_1C9A582E8(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  if (*(v3 + 8) == v2)
  {
    sub_1C9A4DF14(v34, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v33, "in");
    v30 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v30 = *v30;
    }

    goto LABEL_27;
  }

  v4 = MEMORY[0x1E69584A0];
  v5 = *(*((*(*v2 + 40))(v2) + 56) + 8);
  [*(a1 + 776) sampleRate];
  v31 = [v4 timeWithSampleTime:v5 atRate:?];
  if (*(a1 + 832) >= 2u)
  {
    v6 = objc_alloc(MEMORY[0x1E6958440]);
    v7 = *(a1 + 64);
    if (*(a1 + 72) == v7)
    {
      sub_1C9A4DF14(v34, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v33, "in");
      v30 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v30 = *v30;
      }
    }

    else
    {
      v8 = [v6 initWithPCMFormat:*(a1 + 776) bufferListNoCopy:*(*((*(*v7 + 40))(v7) + 56) + 80) deallocator:0];
      v9 = [v8 frameLength];
      v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * v9];
      v11 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * v9];
      if ([*(a1 + 776) isInterleaved])
      {
        MEMORY[0x1CCA934E0](*([v8 audioBufferList] + 16), *(a1 + 832), a1 + 820, objc_msgSend(v11, "mutableBytes"), 1, v9);
        MEMORY[0x1CCA934E0](*([v8 audioBufferList] + 16) + 4, *(a1 + 832), a1 + 824, objc_msgSend(v10, "mutableBytes"), 1, v9);
      }

      else
      {
        MEMORY[0x1CCA934E0](*([v8 audioBufferList] + 16), 1, a1 + 820, objc_msgSend(v11, "mutableBytes"), 1, v9);
        MEMORY[0x1CCA934E0](*([v8 audioBufferList] + 32), 1, a1 + 824, objc_msgSend(v10, "mutableBytes"), 1, v9);
      }

      MEMORY[0x1CCA93490]([v10 mutableBytes], 1, objc_msgSend(v11, "mutableBytes"), 1, objc_msgSend(v10, "mutableBytes"), 1, v9);
      MEMORY[0x1CCA934E0]([v10 mutableBytes], 1, a1 + 828, objc_msgSend(v10, "mutableBytes"), 1, v9);
      v17 = objc_alloc(MEMORY[0x1E6958418]);
      v18 = *(a1 + 64);
      if (*(a1 + 72) != v18)
      {
        v19 = [v17 initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:**((*(*v18 + 40))(v18) + 120)];
        v14 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v19 frameCapacity:v9];
        [v14 setFrameLength:v9];
        memcpy(*([v14 audioBufferList] + 16), objc_msgSend(v10, "mutableBytes"), 4 * v9);

        v20 = *(a1 + 792);
        v21 = [v14 mutableCopy];
        [v20 insertObject:v21 atIndex:{objc_msgSend(*(a1 + 792), "count")}];

        [*(a1 + 800) insertObject:v31 atIndex:{objc_msgSend(*(a1 + 800), "count")}];
        goto LABEL_11;
      }

      sub_1C9A4DF14(v34, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v33, "in");
      v30 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v30 = *v30;
      }
    }

LABEL_27:
    DSPGraph::strprintf(v32, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v29, v30, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    DSPGraph::ThrowException();
    __break(1u);
    return;
  }

  v12 = objc_alloc(MEMORY[0x1E6958440]);
  v13 = *(a1 + 64);
  if (*(a1 + 72) == v13)
  {
    sub_1C9A4DF14(v34, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v33, "in");
    v30 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v30 = *v30;
    }

    goto LABEL_27;
  }

  v14 = [v12 initWithPCMFormat:*(a1 + 776) bufferListNoCopy:*(*((*(*v13 + 40))(v13) + 56) + 80) deallocator:0];
  v15 = *(a1 + 792);
  v16 = [v14 mutableCopy];
  [v15 insertObject:v16 atIndex:{objc_msgSend(*(a1 + 792), "count")}];

  [*(a1 + 800) insertObject:v31 atIndex:{objc_msgSend(*(a1 + 800), "count")}];
LABEL_11:

  v22 = [*(a1 + 800) lastObject];
  v23 = [v22 sampleTime];
  v24 = [*(a1 + 800) firstObject];
  v25 = [v24 sampleTime];
  v26 = *(a1 + 808);
  [*(a1 + 776) sampleRate];
  v28 = v26 * v27;

  if (v28 <= (v23 - v25))
  {
    [*(a1 + 792) removeObjectAtIndex:0];
    [*(a1 + 800) removeObjectAtIndex:0];
  }
}

id sub_1C9A58B10(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  if (*(a1 + 816) != 1 || ![*(a1 + 792) count])
  {
    goto LABEL_43;
  }

  v2 = MEMORY[0x1E695DFF8];
  v3 = NSHomeDirectory();
  v4 = [v2 URLWithString:v3];
  v5 = [v4 URLByAppendingPathComponent:@"/Library/Caches/com.apple.soundanalysisd/CoAudibility/"];

  v60 = [MEMORY[0x1E696AC08] defaultManager];
  v70 = 0;
  v6 = [v5 absoluteString];
  [v60 fileExistsAtPath:v6 isDirectory:&v70];

  if (a2 == 1)
  {
    if (v70 == 1)
    {
      v7 = [v5 absoluteString];
      v65[0] = 0;
      v8 = [v60 removeItemAtPath:v7 error:v65];
      v62 = v65[0];

      if (v8)
      {
        v9 = sub_1C9A779E4();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = [v5 absoluteString];
          *buf = 138412290;
          v72 = v10;
          _os_log_impl(&dword_1C9788000, v9, OS_LOG_TYPE_DEBUG, "Deleted directory at: %@", buf, 0xCu);
        }

        v70 = 0;
      }

      else
      {
        v57 = sub_1C9A779E4();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = [v5 absoluteString];
          v59 = [v62 localizedDescription];
          *buf = 138412546;
          v72 = v58;
          v73 = 2112;
          v74 = v59;
          _os_log_impl(&dword_1C9788000, v57, OS_LOG_TYPE_ERROR, "Error in deleting directory at: %@, Error %@", buf, 0x16u);
        }
      }

      goto LABEL_13;
    }

    v11 = sub_1C9A779E4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9788000, v11, OS_LOG_TYPE_DEBUG, "CoAudibility directory doesn't exist", buf, 2u);
    }
  }

  v62 = 0;
LABEL_13:
  if ((v70 & 1) == 0)
  {
    v12 = [v5 absoluteString];
    v64[0] = v62;
    v13 = [v60 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:v64];
    v14 = v64[0];

    if (v13)
    {
      v15 = sub_1C9A779E4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v5 absoluteString];
        *buf = 138412290;
        v72 = v16;
        _os_log_impl(&dword_1C9788000, v15, OS_LOG_TYPE_DEBUG, "Created directory at: %@", buf, 0xCu);
      }
    }

    else
    {
      v15 = sub_1C9A779E4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = [v5 absoluteString];
        v18 = [v14 localizedDescription];
        *buf = 138412546;
        v72 = v17;
        v73 = 2112;
        v74 = v18;
        _os_log_impl(&dword_1C9788000, v15, OS_LOG_TYPE_ERROR, "Error in creating directory at: %@, Error %@", buf, 0x16u);
      }
    }

    v62 = v14;
  }

  v19 = 0;
  v20 = 0;
  while (v19 < [*(a1 + 792) count])
  {
    v21 = [*(a1 + 792) objectAtIndex:v19];
    if (v19 || v20)
    {
      goto LABEL_28;
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoADebuggingWav_%llu.wav", a2];
    v23 = [v5 URLByAppendingPathComponent:v22];

    v24 = objc_alloc(MEMORY[0x1E6958408]);
    v25 = [v21 format];
    v26 = [v25 settings];
    v27 = [v21 format];
    v28 = [v27 commonFormat];
    v29 = [v21 format];
    v30 = [v29 isInterleaved];
    v69 = v62;
    v20 = [v24 initForWriting:v23 settings:v26 commonFormat:v28 interleaved:v30 error:&v69];
    v31 = v69;

    if (v31)
    {
      v32 = sub_1C9A779E4();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [v31 localizedDescription];
        *buf = 138412290;
        v72 = v33;
        _os_log_impl(&dword_1C9788000, v32, OS_LOG_TYPE_ERROR, "Error in creating Audio File: %@", buf, 0xCu);
      }

      v5 = v23;
      v62 = v31;
LABEL_28:
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    v62 = 0;
    v5 = v23;
    if (!v20)
    {
LABEL_34:
      v35 = v62;
      goto LABEL_35;
    }

LABEL_29:
    v68 = v62;
    v34 = [v20 writeFromBuffer:v21 error:&v68];
    v35 = v68;

    if ((v34 & 1) == 0)
    {
      v36 = sub_1C9A779E4();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = [v35 localizedDescription];
        *buf = 138412290;
        v72 = v37;
        _os_log_impl(&dword_1C9788000, v36, OS_LOG_TYPE_ERROR, "Error in writing PCMBuffer to wav file: %@", buf, 0xCu);
      }
    }

LABEL_35:

    ++v19;
    v62 = v35;
  }

  v38 = sub_1C9A779E4();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = [v5 absoluteString];
    *buf = 138412290;
    v72 = v39;
    _os_log_impl(&dword_1C9788000, v38, OS_LOG_TYPE_DEBUG, "Written WavFile at %@", buf, 0xCu);
  }

  v40 = MEMORY[0x1E695DFF8];
  v41 = [v5 absoluteString];
  v42 = [v40 fileURLWithPath:v41];

  v67 = v62;
  LOBYTE(v41) = [SNFileUtils addPurgeablePropertyToURL:v42 error:&v67];
  v43 = v67;

  if ((v41 & 1) == 0)
  {
    v44 = sub_1C9A779E4();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [v5 absoluteString];
      v46 = [v43 localizedDescription];
      *buf = 138412546;
      v72 = v45;
      v73 = 2112;
      v74 = v46;
      _os_log_impl(&dword_1C9788000, v44, OS_LOG_TYPE_ERROR, "Error adding purgeable property to the file: %@, Error: %@", buf, 0x16u);
    }
  }

LABEL_43:
  v47 = sub_1C9A779E4();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9788000, v47, OS_LOG_TYPE_DEBUG, "Generate Shazam Signature", buf, 2u);
  }

  if ([*(a1 + 792) count])
  {
    v48 = 0;
    do
    {
      v49 = *(a1 + 784);
      v50 = [*(a1 + 792) objectAtIndexedSubscript:v48];
      v51 = [v50 mutableCopy];
      v52 = [*(a1 + 800) objectAtIndexedSubscript:v48];
      v66 = 0;
      v53 = [v49 appendBuffer:v51 atTime:v52 error:&v66];
      v54 = v66;

      if ((v53 & 1) == 0)
      {
        sub_1C9A4DF14(buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_ShazamBox.mm");
        sub_1C9A4DF14(v65, "generateSignature");
        sub_1C9A4DF14(v64, "Error appending buffer to Shazam signature generator");
        DSPGraph::ThrowException();
        __break(1u);
      }

      ++v48;
    }

    while (v48 < [*(a1 + 792) count]);
  }

  v55 = [*(a1 + 784) signature];

  return v55;
}

void sub_1C9A59654(uint64_t a1)
{
  v2 = sub_1C9A779E4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C9788000, v2, OS_LOG_TYPE_DEBUG, "Reset Shazam Signature", v5, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x1E697B7E8]);
  v4 = *(a1 + 784);
  *(a1 + 784) = v3;
}

void sub_1C9A596DC(id *a1)
{
  sub_1C9A59738(a1);

  JUMPOUT(0x1CCA92400);
}

double sub_1C9A59720@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  result = *"xfuamzhsxoba";
  *a1 = *"xfuamzhsxoba";
  return result;
}

void sub_1C9A59738(id *a1)
{

  DSPGraph::Box::~Box(a1);
}

uint64_t sub_1C9A5978C(uint64_t result, unsigned int a2)
{
  if (*(result + 28) < a2)
  {
    operator new[]();
  }

  return result;
}

uint64_t sub_1C9A59898(void *a1, size_t *a2, int a3)
{
  if ((a3 & 7) != 0)
  {
    return 0;
  }

  v6 = 16 * a3 + 28;
  v7 = *a2;
  if (v7 < v6)
  {
    return 0;
  }

  bzero(a1, v7);
  *a2 = v6;
  *(((a1 + 15) & 0xFFFFFFFFFFFFFFF0) + 4 * ((4 * a3) | 2)) = -1;
  return 1;
}

BOOL sub_1C9A5991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, float a8)
{
  if ((a5 & 7) == 0)
  {
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a8;
    *(a1 + 28) = a5;
    *(a1 + 32) = a6;
    *(a1 + 36) = a7;
    v8 = (a7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = (4 * a5) | 2;
    v10 = *(v8 + 4 * v9);
    if (v10 < 0)
    {
      v10 += a6 + a6 * (v10 / a6);
    }

    *(v8 + 4 * v9) = v10 % a6;
  }

  return (a5 & 7) == 0;
}

uint64_t sub_1C9A5999C(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = (*(a1 + 36) + 15) & 0xFFFFFFFFFFFFFFF0;
  *a5 = (*(v5 + 16 * *(a1 + 28) + 8) + a4) / *(a1 + 32);
  v6 = *(a1 + 28);
  if (v6 >= 1)
  {
    v8 = 0;
    v179 = v5 + 8 * v6;
    v9 = v5 + 16 * v6;
    v10 = (4 * v6) | 2;
    v11 = *(v5 + 4 * v10);
    v12 = *v9;
    v13 = a4 & 7;
    v166 = a4;
    v14 = v11 + 1;
    v177 = vdupq_n_s32(0xBD67B6D6);
    v178 = vdupq_n_s32(0x24E69595u);
    v175 = vdupq_n_s32(0xBFBC278B);
    v176 = vdupq_n_s32(0x3EE4F4B8u);
    v173 = vdupq_n_s32(0xBFDEF31A);
    v174 = vdupq_n_s32(0x40348E95u);
    v165 = a3 + 64;
    v15.i64[0] = 0x7F0000007FLL;
    v15.i64[1] = 0x7F0000007FLL;
    v171 = vnegq_f32(v15);
    v172 = vdupq_n_s32(0x3F317218u);
    v170 = a4;
    v169 = a3;
    v168 = v13;
    v167 = *v9;
    do
    {
      v16 = v6 - v8;
      *(v5 + 4 * v10) = v11;
      *v9 = v12;
      v17 = *(a1 + 28);
      if (!v13 && v17 == 32 && v16 == 32)
      {
        v18 = *(a1 + 32);
        v19 = v11 + 1;
        if (v11 <= -2)
        {
          v19 = v18 + v18 * (v14 / v18) + v14;
        }

        v20 = (a3 + 4 * v8);
        v21 = *a5;
        v22 = sub_1C978ABFC((v19 % v18), a2, v20, a4, v9, (v5 + 4 * v8), (v179 + 4 * v8), (a1 + 24), v18, (*a1 + 32 * v8), (*(a1 + 8) + 32 * v8), (*(a1 + 16) + 32 * v8));
        v23 = v22 - 1;
        if (v22 <= 0)
        {
          v23 += v18 + v18 * (v23 / v18);
        }

        *(v5 + 4 * v10) = v23 % v18;
        a4 = v170;
        a3 = v169;
        v13 = v168;
        if (v21 >= 1)
        {
          do
          {
            v24 = vaddq_f32(*v20, v178);
            v25 = vaddq_f32(v20[1], v178);
            v26 = vdivq_f32(v24, vandq_s8(v24, v171));
            v27 = vdivq_f32(v25, vandq_s8(v25, v171));
            v28.i64[0] = 0x7E0000007ELL;
            v28.i64[1] = 0x7E0000007ELL;
            v29 = vsraq_n_s32(v28, v25, 0x17uLL);
            v25.i64[0] = 0x7E0000007ELL;
            v25.i64[1] = 0x7E0000007ELL;
            *v20 = vmlaq_f32(vmlaq_f32(v173, v26, vmlaq_f32(v174, v26, vmlaq_f32(v175, v26, vmlaq_f32(v176, v177, v26)))), v172, vcvtq_f32_s32(vsraq_n_s32(v25, v24, 0x17uLL)));
            v20[1] = vmlaq_f32(vmlaq_f32(v173, v27, vmlaq_f32(v174, v27, vmlaq_f32(v175, v27, vmlaq_f32(v176, v177, v27)))), v172, vcvtq_f32_s32(v29));
            v30 = vaddq_f32(v20[2], v178);
            v31 = vaddq_f32(v20[3], v178);
            v32 = vdivq_f32(v30, vandq_s8(v30, v171));
            v33 = vdivq_f32(v31, vandq_s8(v31, v171));
            v29.i64[0] = 0x7E0000007ELL;
            v29.i64[1] = 0x7E0000007ELL;
            v34 = vsraq_n_s32(v29, v31, 0x17uLL);
            v31.i64[0] = 0x7E0000007ELL;
            v31.i64[1] = 0x7E0000007ELL;
            v20[2] = vmlaq_f32(vmlaq_f32(v173, v32, vmlaq_f32(v174, v32, vmlaq_f32(v175, v32, vmlaq_f32(v176, v177, v32)))), v172, vcvtq_f32_s32(vsraq_n_s32(v31, v30, 0x17uLL)));
            v20[3] = vmlaq_f32(vmlaq_f32(v173, v33, vmlaq_f32(v174, v33, vmlaq_f32(v175, v33, vmlaq_f32(v176, v177, v33)))), v172, vcvtq_f32_s32(v34));
            v35 = vaddq_f32(v20[4], v178);
            v36 = vaddq_f32(v20[5], v178);
            v37 = vdivq_f32(v35, vandq_s8(v35, v171));
            v38 = vdivq_f32(v36, vandq_s8(v36, v171));
            v34.i64[0] = 0x7E0000007ELL;
            v34.i64[1] = 0x7E0000007ELL;
            v39 = vsraq_n_s32(v34, v36, 0x17uLL);
            v36.i64[0] = 0x7E0000007ELL;
            v36.i64[1] = 0x7E0000007ELL;
            v20[4] = vmlaq_f32(vmlaq_f32(v173, v37, vmlaq_f32(v174, v37, vmlaq_f32(v175, v37, vmlaq_f32(v176, v177, v37)))), v172, vcvtq_f32_s32(vsraq_n_s32(v36, v35, 0x17uLL)));
            v20[5] = vmlaq_f32(vmlaq_f32(v173, v38, vmlaq_f32(v174, v38, vmlaq_f32(v175, v38, vmlaq_f32(v176, v177, v38)))), v172, vcvtq_f32_s32(v39));
            v40 = vaddq_f32(v20[6], v178);
            v41 = vaddq_f32(v20[7], v178);
            v42 = vdivq_f32(v40, vandq_s8(v40, v171));
            v43 = vdivq_f32(v41, vandq_s8(v41, v171));
            v39.i64[0] = 0x7E0000007ELL;
            v39.i64[1] = 0x7E0000007ELL;
            v44 = vsraq_n_s32(v39, v41, 0x17uLL);
            v41.i64[0] = 0x7E0000007ELL;
            v41.i64[1] = 0x7E0000007ELL;
            v20[6] = vmlaq_f32(vmlaq_f32(v173, v42, vmlaq_f32(v174, v42, vmlaq_f32(v175, v42, vmlaq_f32(v176, v177, v42)))), v172, vcvtq_f32_s32(vsraq_n_s32(v41, v40, 0x17uLL)));
            v20[7] = vmlaq_f32(vmlaq_f32(v173, v43, vmlaq_f32(v174, v43, vmlaq_f32(v175, v43, vmlaq_f32(v176, v177, v43)))), v172, vcvtq_f32_s32(v44));
            v20 += 8;
            --v21;
          }

          while (v21);
        }
      }

      else
      {
        if (!v13 && v17 == 16 && v16 == 16)
        {
          v46 = *(a1 + 32);
          v47 = v11 + 1;
          if (v11 <= -2)
          {
            v47 = v46 + v46 * (v14 / v46) + v14;
          }

          v48 = (a3 + 4 * v8);
          v49 = *a5;
          v50 = sub_1C978A4E8((v47 % v46), a2, v48, a4, v9, (v5 + 4 * v8), (v179 + 4 * v8), (a1 + 24), v46, (*a1 + 32 * v8), (*(a1 + 8) + 32 * v8), (*(a1 + 16) + 32 * v8));
          v51 = v50 - 1;
          if (v50 <= 0)
          {
            v51 += v46 + v46 * (v51 / v46);
          }

          *(v5 + 4 * v10) = v51 % v46;
          a4 = v170;
          a3 = v169;
          v13 = v168;
          if (v49 >= 1)
          {
            do
            {
              v52 = vaddq_f32(*v48, v178);
              v53 = vaddq_f32(v48[1], v178);
              v54 = vdivq_f32(v52, vandq_s8(v52, v171));
              v55 = vdivq_f32(v53, vandq_s8(v53, v171));
              v56.i64[0] = 0x7E0000007ELL;
              v56.i64[1] = 0x7E0000007ELL;
              v57 = vsraq_n_s32(v56, v53, 0x17uLL);
              v53.i64[0] = 0x7E0000007ELL;
              v53.i64[1] = 0x7E0000007ELL;
              *v48 = vmlaq_f32(vmlaq_f32(v173, v54, vmlaq_f32(v174, v54, vmlaq_f32(v175, v54, vmlaq_f32(v176, v177, v54)))), v172, vcvtq_f32_s32(vsraq_n_s32(v53, v52, 0x17uLL)));
              v48[1] = vmlaq_f32(vmlaq_f32(v173, v55, vmlaq_f32(v174, v55, vmlaq_f32(v175, v55, vmlaq_f32(v176, v177, v55)))), v172, vcvtq_f32_s32(v57));
              v58 = vaddq_f32(v48[2], v178);
              v59 = vaddq_f32(v48[3], v178);
              v60 = vdivq_f32(v58, vandq_s8(v58, v171));
              v61 = vdivq_f32(v59, vandq_s8(v59, v171));
              v57.i64[0] = 0x7E0000007ELL;
              v57.i64[1] = 0x7E0000007ELL;
              v62 = vsraq_n_s32(v57, v59, 0x17uLL);
              v59.i64[0] = 0x7E0000007ELL;
              v59.i64[1] = 0x7E0000007ELL;
              v48[2] = vmlaq_f32(vmlaq_f32(v173, v60, vmlaq_f32(v174, v60, vmlaq_f32(v175, v60, vmlaq_f32(v176, v177, v60)))), v172, vcvtq_f32_s32(vsraq_n_s32(v59, v58, 0x17uLL)));
              v48[3] = vmlaq_f32(vmlaq_f32(v173, v61, vmlaq_f32(v174, v61, vmlaq_f32(v175, v61, vmlaq_f32(v176, v177, v61)))), v172, vcvtq_f32_s32(v62));
              v48 += 4;
              --v49;
            }

            while (v49);
          }

          v63 = 16;
          goto LABEL_37;
        }

        result = 0;
        if (v16 < 32 || (v17 & 7) != 0)
        {
          return result;
        }

        v65 = *a5;
        v66 = v17 >> 3;
        v67 = v11;
        v68 = (a3 + 4 * v8);
        if (a4 >= 1)
        {
          v69 = (v5 + 4 * v8);
          v70 = (*a1 + 32 * v8);
          v183 = *v70;
          v184 = v70[1];
          v71 = (v179 + 4 * v8);
          v72 = v70[2];
          v182 = v70[3];
          v73 = (*(a1 + 8) + 32 * v8);
          v75 = v70[4];
          v74 = v70[5];
          v76 = (*(a1 + 16) + 32 * v8);
          v77 = (a1 + 24);
          v79 = v70[6];
          v78 = v70[7];
          v81 = *v73;
          v80 = v73[1];
          v83 = v73[2];
          v82 = v73[3];
          v85 = v73[4];
          v84 = v73[5];
          v87 = v73[6];
          v86 = v73[7];
          v89 = *v76;
          v88 = v76[1];
          v91 = v76[2];
          v90 = v76[3];
          v93 = v76[4];
          v92 = v76[5];
          v95 = v76[6];
          v94 = v76[7];
          v96 = a2;
          v97 = vld1q_dup_f32(v77);
          v98 = v166;
          v67 = v11;
          v99 = (a3 + 4 * v8);
          v100 = *(a1 + 32);
          do
          {
            v101 = *v96 - *(v9 + 4);
            *(v9 + 4) = *v9;
            *v9 = *v96;
            v102 = vmlaq_n_f32(v69[1], v184, v101);
            v103 = vmlaq_n_f32(*v69, v183, v101);
            v104 = vmlaq_n_f32(v69[3], v182, v101);
            v105 = vmlaq_n_f32(v69[2], v72, v101);
            v106 = vmlaq_n_f32(v69[5], v74, v101);
            v107 = vmlaq_n_f32(v69[4], v75, v101);
            v108 = vmlaq_n_f32(v69[7], v78, v101);
            v109 = vmlaq_n_f32(v69[6], v79, v101);
            v110 = vmlaq_f32(v69[9], v102, v80);
            *v69 = vmlaq_f32(v69[8], v103, v81);
            v69[1] = v110;
            v111 = vmlaq_f32(v69[11], v104, v82);
            v69[2] = vmlaq_f32(v69[10], v105, v83);
            v69[3] = v111;
            v112 = vmlaq_f32(v69[13], v106, v84);
            v69[4] = vmlaq_f32(v69[12], v107, v85);
            v69[5] = v112;
            v113 = vmlaq_f32(v69[15], v108, v86);
            v69[6] = vmlaq_f32(v69[14], v109, v87);
            v69[7] = v113;
            v69[8] = vmulq_f32(v89, v103);
            v69[9] = vmulq_f32(v88, v102);
            v69[10] = vmulq_f32(v91, v105);
            v69[11] = vmulq_f32(v90, v104);
            v69[12] = vmulq_f32(v93, v107);
            v69[13] = vmulq_f32(v92, v106);
            v69[14] = vmulq_f32(v95, v109);
            v69[15] = vmulq_f32(v94, v108);
            v114 = vmulq_f32(v102, v102);
            v115 = vmulq_f32(v103, v103);
            v116 = vmulq_f32(v104, v104);
            v117 = vmulq_f32(v105, v105);
            v118 = vmulq_f32(v106, v106);
            v119 = vmulq_f32(v107, v107);
            v120 = vmulq_f32(v108, v108);
            v121 = vmulq_f32(v109, v109);
            v122 = vmlaq_f32(v114, v97, vsubq_f32(v71[1], v114));
            v123 = vmlaq_f32(v115, v97, vsubq_f32(*v71, v115));
            v124 = vmlaq_f32(v116, v97, vsubq_f32(v71[3], v116));
            v125 = vmlaq_f32(v117, v97, vsubq_f32(v71[2], v117));
            v126 = vmlaq_f32(v118, v97, vsubq_f32(v71[5], v118));
            v127 = vmlaq_f32(v119, v97, vsubq_f32(v71[4], v119));
            v128 = vsubq_f32(v71[6], v121);
            v129 = vsubq_f32(v71[7], v120);
            *v71 = v123;
            v71[1] = v122;
            v71[2] = v125;
            v71[3] = v124;
            v130 = vmlaq_f32(v120, v97, v129);
            v131 = vmlaq_f32(v121, v97, v128);
            v132 = vmlaq_f32(v122, v97, vsubq_f32(v71[9], v122));
            v133 = vmlaq_f32(v123, v97, vsubq_f32(v71[8], v123));
            v134 = vmlaq_f32(v124, v97, vsubq_f32(v71[11], v124));
            v135 = vmlaq_f32(v125, v97, vsubq_f32(v71[10], v125));
            v71[4] = v127;
            v71[5] = v126;
            v71[10] = v135;
            v71[11] = v134;
            v136 = vmlaq_f32(v126, v97, vsubq_f32(v71[13], v126));
            v137 = vmlaq_f32(v127, v97, vsubq_f32(v71[12], v127));
            v71[6] = v131;
            v71[7] = v130;
            v71[12] = v137;
            v71[13] = v136;
            v138 = vmlaq_f32(v130, v97, vsubq_f32(v71[15], v130));
            v71[14] = vmlaq_f32(v131, v97, vsubq_f32(v71[14], v131));
            v71[15] = v138;
            v71[8] = v133;
            v71[9] = v132;
            if (++v67 >= v100)
            {
              v67 = 0;
              *v99 = v133;
              v99[1] = v132;
              v139 = v71[11];
              v99[2] = v71[10];
              v99[3] = v139;
              v140 = v71[13];
              v99[4] = v71[12];
              v99[5] = v140;
              v141 = v71[15];
              v99[6] = v71[14];
              v99[7] = v141;
              v99 += 2 * v66;
            }

            ++v96;
            --v98;
          }

          while (v98);
        }

        *(v5 + 4 * v10) = v67;
        if (v65 < 1)
        {
          v63 = 32;
          v12 = v167;
          goto LABEL_37;
        }

        v142 = 32 * v66;
        v143 = (v165 + 4 * v8);
        v12 = v167;
        do
        {
          v144 = vaddq_f32(v68[1], v178);
          v145 = vaddq_f32(*v68, v178);
          v146 = vdivq_f32(v144, vandq_s8(v144, v171));
          v147 = vdivq_f32(v145, vandq_s8(v145, v171));
          v148.i64[0] = 0x7E0000007ELL;
          v148.i64[1] = 0x7E0000007ELL;
          v149 = vsraq_n_s32(v148, v145, 0x17uLL);
          v145.i64[0] = 0x7E0000007ELL;
          v145.i64[1] = 0x7E0000007ELL;
          v143[-4] = vmlaq_f32(vmlaq_f32(v173, v147, vmlaq_f32(v174, v147, vmlaq_f32(v175, v147, vmlaq_f32(v176, v177, v147)))), v172, vcvtq_f32_s32(v149));
          v143[-3] = vmlaq_f32(vmlaq_f32(v173, v146, vmlaq_f32(v174, v146, vmlaq_f32(v175, v146, vmlaq_f32(v176, v177, v146)))), v172, vcvtq_f32_s32(vsraq_n_s32(v145, v144, 0x17uLL)));
          v150 = vaddq_f32(v68[3], v178);
          v151 = vaddq_f32(v68[2], v178);
          v152 = vdivq_f32(v150, vandq_s8(v150, v171));
          v153 = vdivq_f32(v151, vandq_s8(v151, v171));
          v149.i64[0] = 0x7E0000007ELL;
          v149.i64[1] = 0x7E0000007ELL;
          v154 = vsraq_n_s32(v149, v151, 0x17uLL);
          v151.i64[0] = 0x7E0000007ELL;
          v151.i64[1] = 0x7E0000007ELL;
          v143[-2] = vmlaq_f32(vmlaq_f32(v173, v153, vmlaq_f32(v174, v153, vmlaq_f32(v175, v153, vmlaq_f32(v176, v177, v153)))), v172, vcvtq_f32_s32(v154));
          v143[-1] = vmlaq_f32(vmlaq_f32(v173, v152, vmlaq_f32(v174, v152, vmlaq_f32(v175, v152, vmlaq_f32(v176, v177, v152)))), v172, vcvtq_f32_s32(vsraq_n_s32(v151, v150, 0x17uLL)));
          v155 = vaddq_f32(v68[5], v178);
          v156 = vaddq_f32(v68[4], v178);
          v157 = vdivq_f32(v155, vandq_s8(v155, v171));
          v158 = vdivq_f32(v156, vandq_s8(v156, v171));
          v154.i64[0] = 0x7E0000007ELL;
          v154.i64[1] = 0x7E0000007ELL;
          v159 = vsraq_n_s32(v154, v156, 0x17uLL);
          v156.i64[0] = 0x7E0000007ELL;
          v156.i64[1] = 0x7E0000007ELL;
          *v143 = vmlaq_f32(vmlaq_f32(v173, v158, vmlaq_f32(v174, v158, vmlaq_f32(v175, v158, vmlaq_f32(v176, v177, v158)))), v172, vcvtq_f32_s32(v159));
          v143[1] = vmlaq_f32(vmlaq_f32(v173, v157, vmlaq_f32(v174, v157, vmlaq_f32(v175, v157, vmlaq_f32(v176, v177, v157)))), v172, vcvtq_f32_s32(vsraq_n_s32(v156, v155, 0x17uLL)));
          v160 = vaddq_f32(v68[7], v178);
          v161 = vaddq_f32(v68[6], v178);
          v162 = vdivq_f32(v160, vandq_s8(v160, v171));
          v163 = vdivq_f32(v161, vandq_s8(v161, v171));
          v159.i64[0] = 0x7E0000007ELL;
          v159.i64[1] = 0x7E0000007ELL;
          v164 = vsraq_n_s32(v159, v161, 0x17uLL);
          v161.i64[0] = 0x7E0000007ELL;
          v161.i64[1] = 0x7E0000007ELL;
          v143[2] = vmlaq_f32(vmlaq_f32(v173, v163, vmlaq_f32(v174, v163, vmlaq_f32(v175, v163, vmlaq_f32(v176, v177, v163)))), v172, vcvtq_f32_s32(v164));
          v143[3] = vmlaq_f32(vmlaq_f32(v173, v162, vmlaq_f32(v174, v162, vmlaq_f32(v175, v162, vmlaq_f32(v176, v177, v162)))), v172, vcvtq_f32_s32(vsraq_n_s32(v161, v160, 0x17uLL)));
          v143 = (v143 + v142);
          v68 += 8;
          --v65;
        }

        while (v65);
      }

      v63 = 32;
LABEL_37:
      v8 += v63;
      LODWORD(v6) = *(a1 + 28);
    }

    while (v8 < v6);
  }

  return 1;
}

id sub_1C9A5A4EC(uint64_t a1, void *a2, int *a3, int a4, int *a5, int a6, uint64_t a7)
{
  v139[1] = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = objc_alloc(MEMORY[0x1E695FED0]);
  v13 = 0x1E696A000uLL;
  v126 = a1;
  v14 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v139[0] = v14;
  v15 = 0x1E695D000uLL;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:1];
  v17 = [v12 initWithShape:v16 dataType:65568 error:a7];

  if (v17)
  {
    __B = [v17 dataPointer];
    v18 = objc_alloc(MEMORY[0x1E695FED0]);
    v133 = a6;
    v19 = (a6 + a4);
    v20 = [MEMORY[0x1E696AD98] numberWithInt:v19];
    v138 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v138 count:1];
    v117 = a7;
    v22 = [v18 initWithShape:v21 dataType:65568 error:a7];

    if (v22)
    {
      v134 = v11;
      __C = [v22 dataPointer];
      v23 = objc_alloc(MEMORY[0x1E695FED0]);
      v24 = [MEMORY[0x1E696AD98] numberWithInt:v19];
      v137 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
      v26 = [v23 initWithShape:v25 dataType:65568 error:v117];

      if (v26)
      {
        v122 = a4;
        v120 = [v26 dataPointer];
        v27 = objc_alloc(MEMORY[0x1E695FED0]);
        v28 = v126;
        v29 = [MEMORY[0x1E696AD98] numberWithInt:v126];
        v136[0] = v29;
        v115 = v19;
        v30 = [MEMORY[0x1E696AD98] numberWithInt:v19];
        v136[1] = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:2];
        v32 = [v27 initWithShape:v31 dataType:65568 error:v117];

        if (v32)
        {
          v111 = v26;
          v112 = v22;
          v33 = [v32 dataPointer];
          [v32 strides];
          v35 = v34 = v32;
          v36 = [v35 objectAtIndexedSubscript:0];
          v37 = [v36 intValue];

          v110 = v34;
          v38 = [v34 strides];
          v39 = [v38 objectAtIndexedSubscript:1];
          v40 = [v39 intValue];

          v113 = v17;
          __A = v33;
          if (v126 <= 0)
          {
            v68 = v122;
            v70 = v122;
            v69 = v37;
            v132 = v122;
            v129 = v126;
            v131 = v133;
            v67 = v134;
          }

          else
          {
            v41 = 0;
            v108 = v40;
            v109 = v37;
            v129 = v126;
            v123 = (4 * v37);
            v42 = 4 * v40;
            v43 = v33;
            v44 = v122;
            v132 = v122;
            do
            {
              v45 = a3;
              v130 = v43;
              v46 = v122;
              if (v44 >= 1)
              {
                do
                {
                  v47 = MEMORY[0x1E695DEC8];
                  v48 = [MEMORY[0x1E696AD98] numberWithInteger:0];
                  v49 = *v45++;
                  v50 = [MEMORY[0x1E696AD98] numberWithInteger:v49];
                  v51 = [MEMORY[0x1E696AD98] numberWithInteger:v41];
                  v52 = [v47 arrayWithObjects:{v48, v50, v51, 0}];
                  v53 = [v134 objectForKeyedSubscript:v52];
                  [v53 floatValue];
                  *v43 = v54;

                  v15 = 0x1E695D000uLL;
                  v13 = 0x1E696A000uLL;

                  v43 = (v43 + v42);
                  --v46;
                }

                while (v46);
              }

              ++v41;
              v44 = v122;
              v43 = (v123 + v130);
            }

            while (v41 != v126);
            v55 = 0;
            v131 = v133;
            v56 = &__A[v108 * v122];
            do
            {
              v57 = a5;
              v124 = v56;
              v58 = v133;
              if (v133 >= 1)
              {
                do
                {
                  v59 = *(v15 + 3784);
                  v60 = [*(v13 + 3480) numberWithInteger:0];
                  v61 = *v57++;
                  v62 = [*(v13 + 3480) numberWithInteger:v61];
                  v63 = [*(v13 + 3480) numberWithInteger:v55];
                  v64 = [v59 arrayWithObjects:{v60, v62, v63, 0}];
                  v65 = [v134 objectForKeyedSubscript:v64];
                  [v65 floatValue];
                  *v56 = v66;

                  v15 = 0x1E695D000;
                  v13 = 0x1E696A000;

                  v56 += v108;
                  --v58;
                }

                while (v58);
              }

              ++v55;
              v56 = &v124[v109];
            }

            while (v55 != v126);
            bzero(__B, 4 * v126);
            v67 = v134;
            v68 = v122;
            v28 = v126;
            v70 = v122;
            v69 = v109;
          }

          v72 = [v67 dataPointer];
          v73 = 0;
          v74 = v28;
          v75 = v115;
          v76 = -0.03 / v115;
          v125 = &__C[v70];
          v116 = &v120[v70];
          v77 = 4 * v69;
          while (1)
          {
            v119 = v73;
            v78 = a3;
            v79 = __C;
            v80 = v132;
            if (v68 >= 1)
            {
              do
              {
                v81 = *v78++;
                vDSP_dotpr((v72 + 4 * v81 * v126), 1, __B, 1, v79++, v74);
                --v80;
              }

              while (v80);
            }

            v82 = a5;
            v83 = v125;
            v84 = v131;
            if (v133 >= 1)
            {
              do
              {
                v85 = *v82++;
                vDSP_dotpr((v72 + 4 * v85 * v126), 1, __B, 1, v83++, v74);
                --v84;
              }

              while (v84);
            }

            v87 = v120;
            v86 = __C;
            v88 = v132;
            if (v68 >= 1)
            {
              do
              {
                v89 = *v86++;
                v90 = 1.0 / (exp(-v89) + 1.0) + -1.0;
                *v87++ = v90;
                --v88;
              }

              while (v88);
            }

            v91 = v125;
            v92 = v116;
            v93 = v131;
            if (v133 >= 1)
            {
              do
              {
                v94 = *v91++;
                v95 = 1.0 / (exp(-v94) + 1.0);
                *v92++ = v95;
                --v93;
              }

              while (v93);
            }

            v96 = objc_alloc(MEMORY[0x1E695FED0]);
            v97 = [MEMORY[0x1E696AD98] numberWithInt:v126];
            v135 = v97;
            v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
            v99 = [v96 initWithShape:v98 dataType:65568 error:v117];

            if (!v99)
            {
              break;
            }

            v100 = [v99 dataPointer];
            if (v126 >= 1)
            {
              v101 = v100;
              v102 = __A;
              v103 = __B;
              v104 = v129;
              do
              {
                vDSP_dotpr(v102, 1, v120, 1, v101, v75);
                v105 = *v101++;
                v106 = *v103 + v76 * v105;
                *v103++ = v106;
                v102 = (v102 + v77);
                --v104;
              }

              while (v104);
            }

            v73 = v119 + 1;
            v68 = v122;
            if (v119 == 1499)
            {
              v17 = v113;
              v71 = v113;
              goto LABEL_36;
            }
          }

          v71 = 0;
          v17 = v113;
LABEL_36:
          v26 = v111;
          v22 = v112;
          v32 = v110;
        }

        else
        {
          v71 = 0;
        }
      }

      else
      {
        v71 = 0;
      }

      v11 = v134;
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    v71 = 0;
  }

  return v71;
}

id sub_1C9A5AE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E695FED0]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v23[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v9 = [v6 initWithShape:v8 dataType:65568 error:a3];

  if (v9)
  {
    v10 = [v9 dataPointer];
    v11 = objc_alloc(MEMORY[0x1E695FED0]);
    v12 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v22 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v14 = [v11 initWithShape:v13 dataType:65568 error:a3];

    if (v14)
    {
      v15 = [v14 dataPointer];
      *v15 = 0;
      if (a2 >= 2)
      {
        v16 = (v15 + 1);
        v17 = 1;
        do
        {
          v18 = *(v16 - 1) + *(a1 + 4 * v17);
          *v16 = v18;
          v19 = 0.0;
          if (v17 >= 0x14)
          {
            v19 = (v18 - *(v16 - 20)) / 20.0;
          }

          *v10++ = v19;
          ++v17;
          ++v16;
        }

        while (a2 != v17);
      }

      v20 = v9;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id sub_1C9A5B040(float *a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E695FED0]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [v6 initWithShape:v8 dataType:131104 error:a3];

  if (v9)
  {
    v10 = [v9 dataPointer];
    if (a2 >= 1)
    {
      v11 = a2;
      do
      {
        *v10 = 0;
        if (*a1 > 0.8)
        {
          *v10 = 1;
        }

        ++a1;
        ++v10;
        --v11;
      }

      while (v11);
    }

    v12 = v9;
  }

  return v9;
}

id sub_1C9A5B180(uint64_t a1, int a2, int a3, int a4, int32_t a5, void *a6, uint64_t a7, float a8)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v15 = a6;
  v16 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:&unk_1F4965578 dataType:131104 error:a7];
  v17 = v16;
  if (v16)
  {
    v60 = v16;
    v18 = [v16 dataPointer];
    v19 = v18;
    if (a2 < 2)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      v21 = (a2 - 1);
      v22 = (a1 + 4);
      v23 = -20;
      do
      {
        if (*(v22 - 1) != *v22)
        {
          *(v18 + 4 * v20++) = v23 & ~(v23 >> 31);
        }

        ++v22;
        ++v23;
        --v21;
      }

      while (v21);
    }

    v25 = objc_alloc(MEMORY[0x1E695FED0]);
    v26 = [MEMORY[0x1E696AD98] numberWithInt:(v20 + 1)];
    v65[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
    v28 = [v25 initWithShape:v27 dataType:131104 error:a7];

    if (v28)
    {
      v29 = [v28 dataPointer];
      v30 = v29;
      v59 = v28;
      if (v20 < 1)
      {
        v32 = 0;
        v17 = v60;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 1;
        v35 = v20;
        v17 = v60;
        do
        {
          v36 = *v19;
          if (v34)
          {
            if (v33)
            {
              if (v36 - v31 > a3)
              {
                *(v29 + 4 * v32) = v31;
                *(v29 + 4 + 4 * v32) = *v19;
                v32 = (v32 + 2);
              }

              v33 = 1;
            }

            else
            {
              v33 = 0;
              *(v29 + 4 * v32) = v36;
              v32 = (v32 + 1);
            }
          }

          else
          {
            v33 = 1;
            v31 = *v19;
          }

          v34 ^= 1u;
          ++v19;
          --v35;
        }

        while (v35);
        if (v32 > 0)
        {
          v37 = (v29 + 4 * v32);
          if (v31 != *(v37 - 1))
          {
            *v37 = v31;
            v32 = (v32 + 1);
          }
        }
      }

      v38 = objc_alloc(MEMORY[0x1E695FED0]);
      v39 = [MEMORY[0x1E696AD98] numberWithInt:v32];
      v64 = v39;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      v41 = [v38 initWithShape:v40 dataType:131104 error:a7];

      if (v41)
      {
        v42 = [v41 dataPointer];
        v43 = v42;
        if (v32 < 2)
        {
          v44 = 0;
        }

        else
        {
          v44 = 0;
          v45 = v32 >> 1;
          v46 = (v30 + 4);
          do
          {
            v47 = *(v46 - 1);
            if (*v46 - v47 + 1 > a4)
            {
              v48 = (v42 + 4 * v44);
              *v48 = v47;
              v48[1] = *v46 + 1;
              v44 += 2;
            }

            v46 += 2;
            --v45;
          }

          while (v45);
        }

        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
        if (v44 >= 2)
        {
          v49 = v44 >> 1;
          v50 = (v43 + 4);
          do
          {
            v51 = objc_alloc_init(SNKShotSegment);
            [(SNKShotSegment *)v51 setUrl:v15];
            v52 = v15;
            v53 = *v50 * a5 / 100 + (a5 * a8);
            v54 = v53 - 10 * a5;
            v55 = 1374389535 * *(v50 - 1) * a5;
            v56 = (v55 >> 63) + (SHIDWORD(v55) >> 5);
            if (v54 <= v56)
            {
              v54 = v56;
            }

            CMTimeMake(start, v54, a5);
            v57 = v53;
            v15 = v52;
            CMTimeMake(&end, v57, a5);
            CMTimeRangeFromTimeToTime(&v63, start, &end);
            *&start[0].value = v63;
            [(SNKShotSegment *)v51 setTimeRange:start];
            [v24 addObject:v51];

            v50 += 2;
            --v49;
          }

          while (v49);
          v17 = v60;
        }
      }

      else
      {
        v24 = 0;
      }

      v28 = v59;
    }

    else
    {
      v24 = 0;
      v17 = v60;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

SNKShotSegment *sub_1C9A5B5FC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(SNKShotSegment);
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v6 = [v4 url];
  v25 = 0;
  [SNAudioFileUtils getTimeRangeEncompassingEntireAudioFileAtURL:v6 error:&v25];
  v7 = v25;

  v8 = [v4 url];
  [(SNKShotSegment *)v5 setUrl:v8];

  if (v4)
  {
    [v4 timeRange];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
  }

  v18[0] = v26;
  v18[1] = v27;
  v18[2] = v28;
  [SNTimeUtils clipTimeRange:&v19 toBounds:v18];
  v19 = v22;
  v20 = v23;
  v21 = v24;
  [(SNKShotSegment *)v5 setTimeRange:&v19];
  if (v5)
  {
    [(SNKShotSegment *)v5 timeRange];
    if (BYTE12(v15))
    {
      [(SNKShotSegment *)v5 timeRange];
      if (v14)
      {
        if (v7)
        {
          goto LABEL_8;
        }

LABEL_12:
        v10 = v5;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
  }

  v13 = v7;
  [SNError populateClientError:&v13 withCode:1 underlyingError:v7 message:@"Failed to clip segment to file."];
  v11 = v13;

  v7 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (a3)
  {
    v9 = v7;
    v10 = 0;
    *a3 = v7;
  }

  else
  {
    v10 = 0;
  }

LABEL_14:

  return v10;
}

SNKShotSegment *sub_1C9A5B7FC(uint64_t a1, __int128 *a2, void *a3, SNKShotSegment **a4)
{
  v6 = a3;
  objc_opt_self();
  v7 = v6;
  v8 = v7;
  if (v7)
  {
    [(SNKShotSegment *)v7 timeRange];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
    v20 = 0u;
  }

  *&time1.start.value = *(v21 + 8);
  time1.start.epoch = *(&v21[1] + 1);
  *time2 = *a2;
  *&time2[16] = *(a2 + 2);
  v9 = v8;
  if (CMTimeCompare(&time1.start, time2) == -1 && ((v18 = *a2, v19 = *(a2 + 2), v10 = v8, objc_opt_self(), v9 = objc_alloc_init(SNKShotSegment), [(SNKShotSegment *)v10 url], v11 = objc_claimAutoreleasedReturnValue(), [(SNKShotSegment *)v9 setUrl:v11], v11, !v8) ? (v12 = 0, v28 = 0u, memset(time2, 0, sizeof(time2)), memset(&start, 0, 24), v23 = 0u, v24 = 0u, v25 = 0u) : ([(SNKShotSegment *)v10 timeRange], *&start.start.value = *time2, start.start.epoch = *&time2[16], [(SNKShotSegment *)v10 timeRange], v12 = v25), (*&time1.start.value = v18, time1.start.epoch = v19, CMTimeConvertScale(&duration, &time1.start, v12, kCMTimeRoundingMethod_RoundAwayFromZero), CMTimeRangeMake(&time1, &start.start, &duration), start = time1, [(SNKShotSegment *)v9 setTimeRange:&start], v10, v10, !v9) && (v17 = 0, [SNError populateClientError:&v17 withCode:1 underlyingError:0 message:@"Failed resize segment."], v15 = v17, (v9 = v15) != 0)))
  {
    if (a4)
    {
      v16 = v15;
      v13 = 0;
      *a4 = v9;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = v9;
    v9 = 0;
  }

  return v13;
}

id sub_1C9A5BA38(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  objc_opt_self();
  v12 = [[SNCreateFeaturePrintRequest alloc] initWithFeaturePrintType:a2];
  if (v12)
  {
    if (v11)
    {
      [v11 CMTimeValue];
      v41 = v38;
      *&v42 = v39;
      [(SNCreateFeaturePrintRequest *)v12 setWindowDuration:&v41];
    }

    if (!a5)
    {
      [0 doubleValue];
      *&v13 = v13;
      [(SNCreateFeaturePrintRequest *)v12 setOverlapFactor:v13];
    }
  }

  else
  {
    v40 = 0;
    [SNError populateClientError:&v40 withCode:1 underlyingError:0 message:@"Failed to allocate resources."];
    v14 = v40;
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      goto LABEL_21;
    }
  }

  v17 = v12;
  v18 = v10;
  objc_opt_self();
  v19 = objc_alloc_init(SNResultsCollector);
  if (!v19)
  {
    v48 = 0;
    [SNError populateClientError:&v48 withCode:1 underlyingError:0 message:@"Failed to allocate resources."];
    v24 = v48;
    if (v24)
    {
      v23 = v24;
      v22 = 0;
      goto LABEL_18;
    }
  }

  v20 = [SNAudioFileAnalyzer alloc];
  v21 = [v18 url];
  v47 = 0;
  v22 = [(SNAudioFileAnalyzer *)v20 initWithURL:v21 error:&v47];
  v23 = v47;

  if (v22)
  {
    if (v23)
    {
LABEL_18:
      v28 = v23;
      v16 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v46 = v23;
    [SNError populateClientError:&v46 withCode:1 underlyingError:v23 message:@"Failed to initialize analyzer."];
    v25 = v46;

    v23 = v25;
    if (v25)
    {
      goto LABEL_18;
    }
  }

  v45 = 0;
  v26 = [(SNAudioFileAnalyzer *)v22 addRequest:v17 withObserver:v19 error:&v45];
  v23 = v45;
  if (!v26)
  {
    v44 = v23;
    [SNError populateClientError:&v44 withCode:1 underlyingError:v23 message:@"Failed to register request."];
    v27 = v44;

    v23 = v27;
  }

  if (v23)
  {
    goto LABEL_18;
  }

  if (v18)
  {
    [v18 timeRange];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
  }

  [(SNAudioFileAnalyzer *)v22 analyzeInRange:&v41];
  v34 = [(SNResultsCollector *)v19 errors];
  v35 = [v34 count];

  if (v35)
  {
    v36 = [(SNResultsCollector *)v19 errors];
    v23 = [v36 objectAtIndexedSubscript:0];

    if (v23)
    {
      goto LABEL_18;
    }
  }

  v16 = [(SNResultsCollector *)v19 results];
  v23 = 0;
LABEL_19:

  v29 = v23;
  v15 = v29;
  if (v16)
  {
    if (v29)
    {
      goto LABEL_21;
    }

LABEL_24:
    v16 = v16;
    v31 = v16;
    goto LABEL_26;
  }

  v37 = v29;
  [SNError populateClientError:&v37 withCode:1 underlyingError:v29 message:@"Failed to perform request."];
  v32 = v37;

  v15 = v32;
  if (!v32)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (a6)
  {
    v30 = v15;
    v31 = 0;
    *a6 = v15;
  }

  else
  {
    v31 = 0;
  }

LABEL_26:

  return v31;
}

id sub_1C9A5BDF8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v18 = 0;
  v9 = sub_1C9A5BA38(v8, 5, v7, v6, 0, &v18);

  v10 = v18;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = v10;
    [SNError populateClientError:&v17 withCode:1 underlyingError:v10 message:@"Failed to generate feature prints."];
    v12 = v17;

    v11 = v12;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  if ([v9 count] || (v16 = 0, +[SNError populateClientError:withCode:underlyingError:message:](SNError, "populateClientError:withCode:underlyingError:message:", &v16, 1, 0, @"No feature prints generated."), (v11 = v16) == 0))
  {
    v13 = [v9 objectAtIndexedSubscript:0];
    v11 = 0;
    goto LABEL_11;
  }

LABEL_8:
  if (a4)
  {
    v14 = v11;
    v13 = 0;
    *a4 = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

void sub_1C9A5C1C4(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 label];
  v4 = [v3 type];
  v5 = &unk_1F4965560;
  if (!v4)
  {
    v5 = &unk_1F4965548;
  }

  v6 = v5;

  v7 = [v12 datasetType];
  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_8;
    }

    v8 = 56;
    v9 = 48;
  }

  else
  {
    v8 = 40;
    v9 = 32;
  }

  v10 = *(a1 + v9);
  v11 = [v12 data];
  [v10 addObject:v11];

  [*(a1 + v8) addObject:v6];
LABEL_8:
}

void sub_1C9A5C2A8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(SNKShotFeaturizationResult);
  [(SNKShotFeaturizationResult *)v7 setTrainingDataEmbeddings:a1[4]];
  [(SNKShotFeaturizationResult *)v7 setTrainingDataLabels:a1[5]];
  [(SNKShotFeaturizationResult *)v7 setValidationDataEmbeddings:a1[6]];
  [(SNKShotFeaturizationResult *)v7 setValidationDataLabels:a1[7]];
  if (v5)
  {
    [v5 inferenceWindowSize];
  }

  else
  {
    v11 = 0uLL;
    v12 = 0;
  }

  v9 = v11;
  v10 = v12;
  [(SNKShotFeaturizationResult *)v7 setInferenceWindowSize:&v9];
  v8 = [v5 exemplar];
  [(SNKShotFeaturizationResult *)v7 setExemplar:v8];

  (*(a1[8] + 16))();
}

void sub_1C9A5C50C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[9];
  v4 = a1[4];
  v5 = [v3 defaultRandomNumberGenerator];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v11 = 0;
  v9 = sub_1C9A5C5C4(v3, v4, v5, v6, v7, v8, &v11);
  v10 = v11;

  objc_autoreleasePoolPop(v2);
  (*(a1[8] + 16))();
}

SNKShotFeaturizationStreamCompletion *sub_1C9A5C5C4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v96 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v46 = a3;
  v47 = a4;
  v13 = a5;
  v48 = a6;
  v14 = objc_opt_self();
  v15 = sub_1C9A779E4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v12 count];
    _os_log_impl(&dword_1C9788000, v15, OS_LOG_TYPE_DEFAULT, "[Custom Sound Recognition Model Training] Beginning Featurization on file count: %llu", &buf, 0xCu);
  }

  v16 = objc_alloc_init(SNKShotSegmentationRequest);
  [(SNKShotSegmentationRequest *)v16 setFileURLs:v12];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v92 = 0x3032000000;
  v93 = sub_1C9A611B8;
  v94 = sub_1C9A611C8;
  v95 = 0;
  v17 = objc_autoreleasePoolPush();
  v18 = *(&buf + 1);
  v90 = *(*(&buf + 1) + 40);
  v19 = [SNKShotFeaturizerImpl performSegmentationRequest:v16 error:&v90];
  objc_storeStrong((v18 + 40), v90);
  objc_autoreleasePoolPop(v17);
  if (!v19)
  {
    v22 = [*(*(&buf + 1) + 40) localizedDescription];
    [SNError populateClientError:a7 withCode:1 underlyingError:0 message:v22];
LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  v20 = [v19 segments];
  v21 = [v19 exemplarIndex];
  v22 = [v20 objectAtIndexedSubscript:{objc_msgSend(v21, "intValue")}];

  if (v22)
  {
    [v22 timeRange];
    v23 = DWORD2(v87);
  }

  else
  {
    v23 = 0;
    v88 = 0u;
    v89 = 0u;
    v87 = 0u;
  }

  if ([v13 isCancelled])
  {
    if (a7)
    {
      v24 = 0;
      *a7 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v25 = [v19 segments];
  v26 = [v25 count];

  if (v26 <= 2)
  {
    [SNError populateClientError:a7 withCode:1 underlyingError:0 message:@"Not enough audio segments found to continue."];
    goto LABEL_13;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1C9A611D0;
  aBlock[3] = &unk_1E8346DE8;
  v86 = v48;
  v43 = _Block_copy(aBlock);
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_1C9A611B8;
  v83 = sub_1C9A611C8;
  v84 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = sub_1C9A612BC;
  v64[3] = &unk_1E8346E60;
  v65 = v47;
  p_buf = &buf;
  v73 = v14;
  v74 = v26;
  v75 = 80;
  v28 = v22;
  v76 = 1065353216;
  v77 = v23;
  v45 = v28;
  v66 = v28;
  v72 = &v79;
  v44 = v43;
  v69 = v44;
  v67 = v19;
  v78 = 0x100000028;
  v70 = v46;
  v29 = v13;
  v68 = v29;
  v30 = _Block_copy(v64);
  if ((v30[2]() & 1) == 0)
  {
    if (a7)
    {
      v24 = 0;
      *a7 = *(*(&buf + 1) + 40);
      goto LABEL_42;
    }

LABEL_23:
    v24 = 0;
    goto LABEL_42;
  }

  if (![v29 isCancelled])
  {
    memset(&v63, 0, sizeof(v63));
    [v80[5] floatValue];
    CMTimeMake(&v63, vcvts_n_s32_f32(v31 * 160.0, 5uLL), 16000);
    memset(&v62, 0, sizeof(v62));
    if (v22)
    {
      [v45 timeRange];
    }

    else
    {
      memset(v61, 0, sizeof(v61));
      v60 = 0u;
    }

    *&rhs.start.value = *&v61[1];
    rhs.start.epoch = v61[3];
    lhs = v63;
    CMTimeSubtract(&v62, &lhs, &rhs.start);
    v62.value /= 2;
    v42 = objc_alloc_init(SNKShotSegment);
    v32 = [v45 url];
    [(SNKShotSegment *)v42 setUrl:v32];

    if (v22)
    {
      [v45 timeRange];
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
    }

    *&lhs.value = v55;
    lhs.epoch = v56;
    v54 = v62;
    CMTimeSubtract(&rhs.start, &lhs, &v54);
    lhs = v63;
    CMTimeRangeMake(&v58, &rhs.start, &lhs);
    rhs = v58;
    [(SNKShotSegment *)v42 setTimeRange:&rhs];
    v52 = 0;
    v41 = sub_1C9A5B5FC(v14, v42, &v52);
    v33 = v52;
    if (v42)
    {
      v34 = MEMORY[0x1E696B098];
      if (v41)
      {
        [v41 timeRange];
      }

      else
      {
        memset(v51, 0, sizeof(v51));
        v50 = 0u;
      }

      *&rhs.start.value = *(v51 + 8);
      rhs.start.epoch = *(&v51[1] + 1);
      v35 = [v34 valueWithCMTime:&rhs];
      v49 = v33;
      v36 = sub_1C9A5BDF8(SNKShotFeaturizerImpl, v41, v35, &v49);
      v40 = v49;

      v37 = v36;
      if (v36)
      {
        v24 = objc_alloc_init(SNKShotFeaturizationStreamCompletion);
        rhs.start = v63;
        [(SNKShotFeaturizationStreamCompletion *)v24 setInferenceWindowSize:&rhs];
        v38 = [v36 featureVector];
        [(SNKShotFeaturizationStreamCompletion *)v24 setExemplar:v38];

        v39 = sub_1C9A779E4();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(rhs.start.value) = 0;
          _os_log_impl(&dword_1C9788000, v39, OS_LOG_TYPE_DEFAULT, "[Custom Sound Recognition Model Training] Successfully completed Featurization", &rhs, 2u);
        }
      }

      else
      {
        [SNError populateClientError:a7 withCode:1 underlyingError:v40 message:@"Error computing SoundPrint."];
        v24 = 0;
        v37 = 0;
      }

      v33 = v40;
    }

    else
    {
      [SNError populateClientError:a7 withCode:1 underlyingError:v33 message:@"Failed to fit segment to file."];
      v24 = 0;
    }

    goto LABEL_42;
  }

  if (!a7)
  {
    goto LABEL_23;
  }

  v24 = 0;
  *a7 = 0;
LABEL_42:

  _Block_object_dispose(&v79, 8);
  v22 = v45;
LABEL_14:

  _Block_object_dispose(&buf, 8);

  return v24;
}

void sub_1C9A5CE3C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_1C9A5E35C(uint64_t a1)
{
  v196[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E6958408]);
  v3 = *(a1 + 32);
  v189 = 0;
  v4 = [v2 initForReading:v3 commonFormat:1 interleaved:0 error:&v189];
  v5 = v189;
  if (v4)
  {
    v6 = [[SNCreateFeaturePrintRequest alloc] initWithFeaturePrintType:2];
    LODWORD(v7) = 1014763457;
    [(SNCreateFeaturePrintRequest *)v6 setOverlapFactor:v7];
    v8 = objc_alloc_init(SNResultsCollector);
    v9 = [SNAudioFileAnalyzer alloc];
    v10 = *(a1 + 32);
    v188 = v5;
    v11 = [(SNAudioFileAnalyzer *)v9 initWithURL:v10 error:&v188];
    v12 = v188;

    if (v11)
    {
      v187 = v12;
      v13 = [(SNAudioFileAnalyzer *)v11 addRequest:v6 withObserver:v8 error:&v187];
      v14 = v187;

      if (v13)
      {
        v169 = v11;
        v170 = v6;
        v168 = v4;
        [(SNAudioFileAnalyzer *)v11 analyze];
        v175 = v8;
        v15 = [(SNResultsCollector *)v8 results];
        v16 = [v15 count];

        v174 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
        v176 = a1;
        if (v16 < 1)
        {
LABEL_11:
          v29 = MEMORY[0x1E695FED0];
          v30 = [v174 objectAtIndexedSubscript:0];
          v31 = [v29 multiArrayByConcatenatingMultiArrays:v174 alongAxis:1 dataType:{objc_msgSend(v30, "dataType")}];

          LODWORD(v30) = *(a1 + 60);
          v32 = [(SNResultsCollector *)v175 results];
          v33 = v30 * [v32 count];

          v34 = objc_alloc(MEMORY[0x1E695FED0]);
          v35 = [MEMORY[0x1E696AD98] numberWithInt:v33];
          v193 = v35;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v193 count:1];
          v185[1] = v14;
          v37 = [v34 initWithShape:v36 dataType:? error:?];
          v38 = v14;

          if (v37)
          {
            v165 = v38;
            v167 = v37;
            v39 = [v37 dataPointer];
            v172 = v33;
            if (v33 >= 1)
            {
              v40 = 0;
              LODWORD(v41) = *(a1 + 64);
              do
              {
                *(v39 + 4 * v40) = -998637568;
                if (v41 >= 1)
                {
                  v42 = 0;
                  do
                  {
                    v43 = *(v39 + 4 * v40);
                    v44 = MEMORY[0x1E695DEC8];
                    v45 = [MEMORY[0x1E696AD98] numberWithInteger:0];
                    v46 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
                    v47 = [MEMORY[0x1E696AD98] numberWithInteger:v42];
                    v48 = [v44 arrayWithObjects:{v45, v46, v47, 0}];
                    v49 = [v31 objectForKeyedSubscript:v48];
                    [v49 floatValue];
                    v51 = v50;

                    if (v43 < v51)
                    {
                      v52 = MEMORY[0x1E695DEC8];
                      v53 = [MEMORY[0x1E696AD98] numberWithInteger:0];
                      v54 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
                      v55 = [MEMORY[0x1E696AD98] numberWithInteger:v42];
                      v56 = [v52 arrayWithObjects:{v53, v54, v55, 0}];
                      v57 = [v31 objectForKeyedSubscript:v56];
                      [v57 floatValue];
                      *(v39 + 4 * v40) = v58;
                    }

                    ++v42;
                    a1 = v176;
                    v41 = *(v176 + 64);
                  }

                  while (v42 < v41);
                  v33 = v172;
                }

                ++v40;
              }

              while (v40 != v33);
            }

            [*(a1 + 40) backgroundEnergyPercentile];
            v60 = ((v59 * v33) / 100.0);
            v185[0] = v165;
            v61 = objc_alloc(MEMORY[0x1E695FED0]);
            v62 = [MEMORY[0x1E696AD98] numberWithInt:v60];
            v196[0] = v62;
            v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:1];
            v64 = [v61 initWithShape:v63 dataType:131104 error:v185];

            if (v64)
            {
              v65 = [v64 dataPointer];
              if (v60 < 1)
              {
                v67 = 0;
              }

              else
              {
                v66 = 0;
                v67 = 0;
                do
                {
                  *(v65 + 4 * v66) = v66;
                  if (*(v39 + 4 * v66) >= *(v39 + 4 * v67))
                  {
                    v67 = v66;
                  }

                  ++v66;
                }

                while (v60 != v66);
              }

              if (v33 > v60)
              {
                v69 = v60;
                do
                {
                  if (*(v39 + 4 * v69) <= *(v39 + 4 * *(v65 + 4 * v67)))
                  {
                    *(v65 + 4 * v67) = v69;
                    if (v60 >= 1)
                    {
                      for (i = 0; i != v60; ++i)
                      {
                        if (*(v39 + 4 * *(v65 + 4 * i)) >= *(v39 + 4 * *(v65 + 4 * v67)))
                        {
                          v67 = i;
                        }
                      }
                    }
                  }

                  ++v69;
                }

                while (v69 != v33);
              }

              v71 = v64;
            }

            v72 = v185[0];
            if (v64)
            {
              v73 = [v64 dataPointer];
              v74 = v73;
              v163 = v64;
              if (v60 <= 0)
              {
                v79 = 0;
                v80 = 0.0 / v60;
              }

              else
              {
                v75 = 0.0;
                v76 = v73;
                v77 = v60;
                do
                {
                  v78 = *v76++;
                  v75 = v75 + *(v39 + 4 * v78);
                  --v77;
                }

                while (v77);
                LODWORD(v79) = 0;
                v80 = v75 / v60;
                v81 = v73;
                v82 = v60;
                do
                {
                  v83 = *v81++;
                  if (*(v39 + 4 * v83) > v80)
                  {
                    v79 = v79;
                  }

                  else
                  {
                    v79 = (v79 + 1);
                  }

                  --v82;
                }

                while (v82);
              }

              v84 = objc_alloc(MEMORY[0x1E695FED0]);
              v85 = [MEMORY[0x1E696AD98] numberWithInt:v79];
              v192 = v85;
              v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v192 count:1];
              v184 = v72;
              v87 = [v84 initWithShape:v86 dataType:131104 error:&v184];
              v88 = v184;
              v89 = v72;
              v72 = v88;

              v90 = v87;
              if (v87)
              {
                v91 = [v87 dataPointer];
                if (v60 >= 1)
                {
                  v92 = 0;
                  do
                  {
                    v94 = *v74++;
                    v93 = v94;
                    if (*(v39 + 4 * v94) <= v80)
                    {
                      *(v91 + 4 * v92++) = v93;
                    }

                    --v60;
                  }

                  while (v60);
                }

                v166 = v87;
                v161 = v91;
                [*(v176 + 40) foregroundEnergyPercentile];
                v96 = ((100.0 - v95) * v172 / 100.0);
                v183 = v72;
                v97 = objc_alloc(MEMORY[0x1E695FED0]);
                v98 = [MEMORY[0x1E696AD98] numberWithInt:v96];
                v196[0] = v98;
                v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:1];
                v100 = [v97 initWithShape:v99 dataType:131104 error:&v183];

                if (v100)
                {
                  v101 = [v100 dataPointer];
                  if (v96 < 1)
                  {
                    v103 = 0;
                  }

                  else
                  {
                    v102 = 0;
                    v103 = 0;
                    do
                    {
                      *(v101 + 4 * v102) = v102;
                      if (*(v39 + 4 * v102) <= *(v39 + 4 * v103))
                      {
                        v103 = v102;
                      }

                      ++v102;
                    }

                    while (v96 != v102);
                  }

                  if (v172 > v96)
                  {
                    v104 = v96;
                    do
                    {
                      if (*(v39 + 4 * v104) >= *(v39 + 4 * *(v101 + 4 * v103)))
                      {
                        *(v101 + 4 * v103) = v104;
                        if (v96 >= 1)
                        {
                          for (j = 0; j != v96; ++j)
                          {
                            if (*(v39 + 4 * *(v101 + 4 * j)) <= *(v39 + 4 * *(v101 + 4 * v103)))
                            {
                              v103 = j;
                            }
                          }
                        }
                      }

                      ++v104;
                    }

                    while (v104 != v172);
                  }

                  v106 = v100;
                }

                v107 = v183;
                if (v100)
                {
                  v159 = v107;
                  v108 = [v100 dataPointer];
                  v109 = v108;
                  v156 = v100;
                  if (v96 <= 0)
                  {
                    v114 = 0;
                    v115 = 0.0 / v96;
                  }

                  else
                  {
                    v110 = 0.0;
                    v111 = v108;
                    v112 = v96;
                    do
                    {
                      v113 = *v111++;
                      v110 = v110 + *(v39 + 4 * v113);
                      --v112;
                    }

                    while (v112);
                    LODWORD(v114) = 0;
                    v115 = v110 / v96;
                    v116 = v108;
                    v117 = v96;
                    do
                    {
                      v118 = *v116++;
                      if (*(v39 + 4 * v118) < v115)
                      {
                        v114 = v114;
                      }

                      else
                      {
                        v114 = (v114 + 1);
                      }

                      --v117;
                    }

                    while (v117);
                  }

                  v119 = objc_alloc(MEMORY[0x1E695FED0]);
                  v158 = [MEMORY[0x1E696AD98] numberWithInt:v114];
                  v191 = v158;
                  v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v191 count:1];
                  v182 = v159;
                  v121 = [v119 initWithShape:v120 dataType:131104 error:&v182];
                  v157 = v182;

                  v122 = v121;
                  if (v121)
                  {
                    v123 = [v121 dataPointer];
                    v124 = v123;
                    if (v96 >= 1)
                    {
                      v125 = 0;
                      do
                      {
                        v127 = *v109++;
                        v126 = v127;
                        if (*(v39 + 4 * v127) >= v115)
                        {
                          *(v123 + 4 * v125++) = v126;
                        }

                        --v96;
                      }

                      while (v96);
                    }

                    v128 = *(v176 + 64);
                    v181 = v157;
                    v129 = sub_1C9A5A4EC(v128, v31, v124, v114, v161, v79, &v181);
                    v107 = v181;

                    if (v129)
                    {
                      v162 = v121;
                      v130 = [v129 dataPointer];
                      v131 = objc_alloc(MEMORY[0x1E695FED0]);
                      v132 = [MEMORY[0x1E696AD98] numberWithInt:v172];
                      v190 = v132;
                      v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v190 count:1];
                      v180 = v107;
                      v134 = [v131 initWithShape:v133 dataType:65568 error:&v180];
                      v135 = v180;

                      v164 = v134;
                      if (v134)
                      {
                        v136 = [v134 dataPointer];
                        v137 = [v31 dataPointer];
                        v160 = v172 - 1;
                        if (v172 >= 1)
                        {
                          v138 = v137;
                          v139 = 0;
                          v140 = v136;
                          v141 = v172;
                          do
                          {
                            vDSP_dotpr((v138 + 4 * *(v176 + 64) * v139), 1, v130, 1, v140, *(v176 + 64));
                            v142 = 1.0 / (exp(-*v140) + 1.0);
                            *v140++ = v142;
                            ++v139;
                            --v141;
                          }

                          while (v141);
                        }

                        v179 = v135;
                        v143 = sub_1C9A5AE48(v136, v172, &v179);
                        v144 = v179;

                        if (v143)
                        {
                          v178 = v144;
                          v145 = sub_1C9A5B040([v143 dataPointer], v160, &v178);
                          v146 = v178;

                          v4 = v168;
                          if (v145)
                          {
                            v173 = v145;
                            v147 = [v145 dataPointer];
                            v148 = *(v176 + 68);
                            v149 = *(v176 + 72);
                            v150 = [v168 fileFormat];
                            [v150 sampleRate];
                            v152 = v151;
                            v153 = *(v176 + 32);
                            LODWORD(v151) = *(v176 + 76);
                            v177 = v146;
                            v154 = sub_1C9A5B180(v147, v160, v148, v149, v152, v153, &v177, *&v151);
                            v144 = v177;

                            if (v154)
                            {
                              [*(v176 + 48) addObjectsFromArray:v154];
                              v68 = 0;
                            }

                            else
                            {
                              v68 = [SNError errorWithCode:1 underlyingError:v144 message:@"error getting segments"];
                            }

                            v64 = v163;

                            v145 = v173;
                          }

                          else
                          {
                            v68 = [SNError errorWithCode:1 underlyingError:v146 message:@"error rounding"];
                            v144 = v146;
                            v64 = v163;
                          }
                        }

                        else
                        {
                          v68 = [SNError errorWithCode:1 underlyingError:v144 message:@"error smoothing"];
                          v4 = v168;
                          v64 = v163;
                        }

                        v122 = v162;

                        v135 = v144;
                      }

                      else
                      {
                        v68 = [SNError errorWithCode:1 underlyingError:v135 message:@"error allocating"];
                        v122 = v162;
                        v64 = v163;
                      }

                      v107 = v135;
                    }

                    else
                    {
                      v68 = [SNError errorWithCode:1 underlyingError:v107 message:@"error in logistic regression"];
                      v64 = v163;
                    }

                    v100 = v156;
                  }

                  else
                  {
                    v107 = v157;
                    v68 = [SNError errorWithCode:1 underlyingError:v157 message:@"error allocating."];
                    v64 = v163;
                    v100 = v156;
                  }

                  v37 = v167;
                }

                else
                {
                  v68 = [SNError errorWithCode:1 underlyingError:v107 message:@"error getting top indices."];
                  v37 = v167;
                  v64 = v163;
                }

                v72 = v107;
                v90 = v166;
              }

              else
              {
                v68 = [SNError errorWithCode:1 underlyingError:v72 message:@"error allocating."];
                v37 = v167;
                v64 = v163;
              }
            }

            else
            {
              v68 = [SNError errorWithCode:1 underlyingError:v72 message:@"error getting bottom indices."];
              v37 = v167;
            }

            v14 = v72;
          }

          else
          {
            v68 = [SNError errorWithCode:1 underlyingError:v38 message:@"allocation error."];
            v14 = v38;
          }
        }

        else
        {
          v17 = 0;
          v18 = v16 & 0x7FFFFFFF;
          while (1)
          {
            v19 = v14;
            v20 = [(SNResultsCollector *)v175 results];
            v21 = [v20 objectAtIndexedSubscript:v17];
            v22 = [v21 featureVector];

            v195[0] = &unk_1F4965548;
            v195[1] = &unk_1F4965548;
            v23 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
            v195[2] = v23;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:3];

            v194[0] = &unk_1F4965560;
            v25 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 60)];
            v194[1] = v25;
            v26 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
            v194[2] = v26;
            v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:3];

            v186 = v19;
            v28 = [v22 sliceAtOrigin:v24 shape:v27 squeeze:0 error:&v186];
            v14 = v186;

            if (v28)
            {
              [v174 addObject:v28];
            }

            else
            {
              v171 = [SNError errorWithCode:1 underlyingError:v14 message:@"error making slice."];
            }

            if (!v28)
            {
              break;
            }

            ++v17;
            a1 = v176;
            if (v18 == v17)
            {
              goto LABEL_11;
            }
          }

          v68 = v171;
        }

        v12 = v14;
        v11 = v169;
        v6 = v170;
        v8 = v175;
      }

      else
      {
        v68 = [SNError errorWithCode:1 underlyingError:v14 message:@"Error adding SN LogMel request."];
        v12 = v14;
      }
    }

    else
    {
      v68 = [SNError errorWithCode:1 underlyingError:v12 message:@"Error creating SN analyzer."];
    }

    v5 = v12;
  }

  else
  {
    v68 = [SNError errorWithCode:1 underlyingError:v5 message:@"Error loading audio files."];
  }

  return v68;
}

id sub_1C9A5F390(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v19 = 0;
  v4 = sub_1C9A5B5FC(v2, v3, &v19);
  v5 = v19;
  if (v4)
  {
    v6 = MEMORY[0x1E696B098];
    [v4 timeRange];
    v17 = v15;
    v18 = v16;
    v7 = [v6 valueWithCMTime:&v17];
    v14 = v5;
    v8 = sub_1C9A5BDF8(SNKShotFeaturizerImpl, v4, v7, &v14);
    v9 = v14;

    if (v8)
    {
      v10 = a1[5];
      v11 = [v8 featureVector];
      [v10 addObject:v11];

      v12 = 0;
    }

    else
    {
      v12 = [SNError errorWithCode:1 underlyingError:v9 message:@"Error computing SoundPrint."];
    }
  }

  else
  {
    v12 = [SNError errorWithCode:1 underlyingError:v5 message:@"Failed to fit segment to file."];
    v9 = v5;
  }

  return v12;
}

BOOL sub_1C9A5F508(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  if (v6)
  {
    [v6 timeRange];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v12 = 0u;
  }

  time1 = *(v13 + 8);
  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  time2 = *&v10[1];
  v8 = CMTimeCompare(&time1, &time2) > 0;

  return v8;
}

id sub_1C9A5F5E0(uint64_t a1)
{
  v148[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E6958408]);
  v3 = [*(a1 + 32) url];
  v145 = 0;
  v4 = [v2 initForReading:v3 commonFormat:1 interleaved:0 error:&v145];
  v5 = v145;

  if (!v4)
  {
    v7 = [SNError errorWithCode:1 underlyingError:v5 message:@"Error loading audio files."];
    goto LABEL_38;
  }

  if (*(a1 + 80) == *(a1 + 84))
  {
    [*(a1 + 40) addObject:*(a1 + 32)];
    v144 = **&MEMORY[0x1E6960C70];
    v6 = *(a1 + 32);
    if (v6)
    {
      [v6 timeRange];
    }

    else
    {
      memset(v143, 0, sizeof(v143));
      v142 = 0u;
    }

    *&v136.start.value = *(v143 + 8);
    v136.start.epoch = *(&v143[1] + 1);
    CMTimeMake(&v141, 10, 1);
    if (CMTimeCompare(&v136.start, &v141) >= 1)
    {
      v26 = *(a1 + 32);
      if (v26)
      {
        [v26 timeRange];
      }

      else
      {
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
      }

      *&v136.start.value = v137;
      v136.start.epoch = v138;
      v27 = [v4 fileFormat];
      [v27 sampleRate];
      v29 = (v28 * 10.0);
      v30 = [v4 fileFormat];
      [v30 sampleRate];
      CMTimeMake(&v141, v29, v31);
      CMTimeRangeMake(&v140, &v136.start, &v141);
      v32 = *(a1 + 32);
      v136 = v140;
      [v32 setTimeRange:&v136];
    }

    v33 = *(a1 + 32);
    if (v33)
    {
      [v33 timeRange];
      v34 = v133;
    }

    else
    {
      v34 = 0;
      v134 = 0u;
      v135 = 0u;
      v133 = 0u;
    }

    v35 = *(a1 + 56) + v34;
    if (v35 <= [v4 length] - 1)
    {
      v37 = *(a1 + 32);
      if (v37)
      {
        [v37 timeRange];
        v38 = v130;
      }

      else
      {
        v38 = 0;
        v131 = 0u;
        v132 = 0u;
        v130 = 0u;
      }

      v36 = *(a1 + 56) + v38;
    }

    else
    {
      v36 = [v4 length] - 1;
    }

    v39 = [v4 fileFormat];
    [v39 sampleRate];
    CMTimeMake(&v144, v36, v40);

    v41 = *(a1 + 32);
    if (v41)
    {
      [v41 timeRange];
    }

    else
    {
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
    }

    *&v136.start.value = v126;
    v136.start.epoch = v127;
    v141 = v144;
    CMTimeRangeFromTimeToTime(&v129, &v136.start, &v141);
    v42 = *(a1 + 32);
    v136 = v129;
    [v42 setTimeRange:&v136];
LABEL_37:
    v7 = 0;
    goto LABEL_38;
  }

  v8 = *(a1 + 64);
  CMTimeMake(&v136.start, 1, 1);
  v9 = *(a1 + 32);
  v125 = v5;
  v10 = sub_1C9A5B7FC(v8, &v136.start.value, v9, &v125);
  v11 = v125;

  if (!v10)
  {
    v7 = [SNError errorWithCode:1 underlyingError:v11 message:@"Error ensuring segment length."];
    v5 = v11;
    goto LABEL_38;
  }

  v12 = *(a1 + 64);
  v124 = v11;
  v13 = sub_1C9A5BA38(v12, 2, v10, 0, &unk_1F49659B0, &v124);
  v5 = v124;

  if (!v13)
  {
    v7 = [SNError errorWithCode:1 underlyingError:v5 message:@"Error collecting LogMel."];

    goto LABEL_38;
  }

  v104 = v10;
  v105 = v4;
  v14 = [v13 count];
  v107 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  if (v14 < 1)
  {
LABEL_41:
    v44 = v5;
    v45 = MEMORY[0x1E695FED0];
    v46 = [v107 objectAtIndexedSubscript:0];
    v47 = [v45 multiArrayByConcatenatingMultiArrays:v107 alongAxis:1 dataType:{objc_msgSend(v46, "dataType")}];

    v103 = [v47 dataPointer];
    LODWORD(v45) = *(a1 + 92);
    v48 = v45 * [v13 count] - *(a1 + 100);
    v49 = objc_alloc(MEMORY[0x1E695FED0]);
    v101 = (v48 + 1);
    v50 = [MEMORY[0x1E696AD98] numberWithInt:v101];
    v146 = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
    v122 = v44;
    v52 = [v49 initWithShape:v51 dataType:65568 error:&v122];
    v5 = v122;

    v102 = v52;
    if (v52)
    {
      v108 = [v52 dataPointer];
      v4 = v105;
      v98 = v47;
      v99 = v13;
      v97 = v48;
      if (v48 < 0)
      {
LABEL_51:
        v68 = *(a1 + 32);
        if (v68)
        {
          [v68 timeRange];
          value = *&v119[0];
        }

        else
        {
          value = 0;
          memset(v119, 0, sizeof(v119));
        }

        v120 = *(v119 + 8);
        if (v97 < 1)
        {
          v81 = 0;
        }

        else
        {
          v71 = 0;
          v72 = (v97 + 1);
          v73 = 1;
          do
          {
            if (*(v108 + 4 * v73) > *(v108 + 4 * v71))
            {
              v74 = *(a1 + 32);
              if (v74)
              {
                [v74 timeRange];
                v75 = v116;
              }

              else
              {
                v117 = 0u;
                v118 = 0u;
                v75 = 0.0;
                v116 = 0u;
              }

              v76 = [v4 fileFormat];
              [v76 sampleRate];
              v78 = (v75 + v77 * v73 / 100.0);
              v79 = [v4 fileFormat];
              [v79 sampleRate];
              CMTimeMake(&v136.start, v78, v80);
              value = v136.start.value;
              v120 = *&v136.start.timescale;

              v71 = v73;
            }

            ++v73;
          }

          while (v72 != v73);
          v81 = v71;
        }

        v144 = **&MEMORY[0x1E6960C70];
        v82 = *(a1 + 32);
        if (v82)
        {
          [v82 timeRange];
        }

        else
        {
          memset(v115, 0, sizeof(v115));
          v114 = 0u;
        }

        v83 = v5;
        *&v136.start.value = *&v115[1];
        v136.start.epoch = v115[3];
        CMTimeMake(&v141, 10, 1);
        if (CMTimeCompare(&v136.start, &v141) >= 1)
        {
          v84 = *(a1 + 32);
          if (v84)
          {
            [v84 timeRange];
          }

          else
          {
            v111 = 0u;
            v112 = 0u;
            v110 = 0u;
          }

          *&v136.start.value = v110;
          v136.start.epoch = v111;
          v85 = [v4 fileFormat];
          [v85 sampleRate];
          v87 = (v86 * 10.0);
          v88 = [v4 fileFormat];
          [v88 sampleRate];
          CMTimeMake(&v141, v87, v89);
          CMTimeRangeMake(&v113, &v136.start, &v141);
          v90 = *(a1 + 32);
          v136 = v113;
          [v90 setTimeRange:&v136];
        }

        v91 = *(a1 + 56) + value;
        if (v91 <= [v4 length] - 1)
        {
          v92 = *(a1 + 56) + value;
        }

        else
        {
          v92 = [v4 length] - 1;
        }

        v5 = v83;
        v93 = [v4 fileFormat];
        [v93 sampleRate];
        CMTimeMake(&v144, v92, v94);

        v136.start.value = value;
        *&v136.start.timescale = v120;
        v141 = v144;
        CMTimeRangeFromTimeToTime(&v109, &v136.start, &v141);
        v95 = *(a1 + 32);
        v136 = v109;
        [v95 setTimeRange:&v136];
        if (*(v108 + 4 * v81) <= 0.5)
        {
          v70 = v104;
          v47 = v98;
          v13 = v99;
          v7 = v106;
          if (*(a1 + 80) < *(a1 + 84))
          {
            --*(*(*(a1 + 48) + 8) + 24);
          }
        }

        else
        {
          [*(a1 + 40) addObject:*(a1 + 32)];
          v70 = v104;
          v47 = v98;
          v13 = v99;
          v7 = v106;
        }

        LODWORD(v52) = 1;
      }

      else
      {
        v53 = 0;
        while (1)
        {
          v54 = *(a1 + 100);
          v55 = &v96[-((4 * v54 * *(a1 + 96) + 15) & 0xFFFFFFFFFFFFFFF0)];
          vDSP_mtrans((v103 + 4 * *(a1 + 96) * v53), 1, v55, 1, *(a1 + 96), *(a1 + 100));
          LODWORD(v56) = *(a1 + 96);
          if (v56 >= 1)
          {
            break;
          }

          v66 = 0.0;
LABEL_50:
          v67 = v66 / v56;
          *(v108 + 4 * v53++) = v67;
          if (v53 == v101)
          {
            goto LABEL_51;
          }
        }

        v100 = v96;
        v57 = 0;
        v58 = 0;
        v59 = 4 * v54;
        v60 = 0.0;
        while (1)
        {
          v61 = v5;
          v62 = *(a1 + 72);
          v63 = *(a1 + 100);
          v121 = v5;
          v64 = [SNFeaturePrint cosineSimilarityBetweenOneFloat32Array:v62 + v57 andAnotherFloat32Array:v55 length:v63 error:&v121];
          v5 = v121;

          if (!v64)
          {
            break;
          }

          [v64 floatValue];
          v60 = v60 + v65;

          ++v58;
          v56 = *(a1 + 96);
          v55 = (v55 + v59);
          v57 += 4;
          if (v58 >= v56)
          {
            v66 = v60;
            v4 = v105;
            goto LABEL_50;
          }
        }

        v7 = [SNError errorWithCode:1 underlyingError:v5 message:@"error getting similarity"];
        v13 = v99;
        LODWORD(v52) = 0;
        v70 = v104;
        v4 = v105;
        v47 = v98;
      }
    }

    else
    {
      v5 = v5;
      v7 = v5;
      v70 = v104;
      v4 = v105;
    }

    if (v52)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v15 = 0;
    v108 = v14 & 0x7FFFFFFF;
    while (1)
    {
      v16 = v5;
      v17 = v13;
      v18 = [v13 objectAtIndexedSubscript:v15];
      v19 = [v18 featureVector];

      v148[0] = &unk_1F4965548;
      v148[1] = &unk_1F4965548;
      v20 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 88)];
      v148[2] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:3];

      v147[0] = &unk_1F4965560;
      v22 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 92)];
      v147[1] = v22;
      v23 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 96)];
      v147[2] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:3];

      v123 = v16;
      v25 = [v19 sliceAtOrigin:v21 shape:v24 squeeze:0 error:&v123];
      v5 = v123;

      if (v25)
      {
        [v107 addObject:v25];
      }

      else
      {
        v106 = [SNError errorWithCode:1 underlyingError:v5 message:@"error getting slice"];
      }

      if (!v25)
      {
        break;
      }

      ++v15;
      v13 = v17;
      if (v108 == v15)
      {
        goto LABEL_41;
      }
    }

    v4 = v105;
    v7 = v106;
  }

LABEL_38:

  return v7;
}

uint64_t sub_1C9A601B8(uint64_t a1, void *a2, int a3, int32_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v128 = *MEMORY[0x1E69E9840];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a2;
  objc_opt_self();
  CMTimeMake(&v95, a3, a4);
  v78 = v18;
  v74 = v17;
  v75 = v16;
  v90 = v15;
  v20 = v19;
  v91 = objc_opt_self();
  memset(&v100, 0, sizeof(v100));
  time = v95;
  CMTimeConvertScale(&v100, &time, 16000, kCMTimeRoundingMethod_RoundTowardZero);
  v21 = v20;
  objc_opt_self();
  v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v108 = 0u;
  v107 = 0u;
  end_16 = 0u;
  end = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&end objects:&time count:16];
  if (v22)
  {
    v23 = *end_16;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*end_16 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&end + 1) + 8 * i);
        objc_opt_self();
        v26 = objc_alloc_init(SNKShotSegment);
        v27 = [v25 url];
        [(SNKShotSegment *)v26 setUrl:v27];

        if (v25)
        {
          [v25 timeRange];
        }

        else
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        [SNTimeUtils convertScaleForTimeRange:&lhs toValue:16000 preferShrinkingWhenRounding:1];
        lhs = v119;
        [(SNKShotSegment *)v26 setTimeRange:&lhs];

        [v94 addObject:v26];
      }

      v22 = [obj countByEnumeratingWithState:&end objects:&time count:16];
    }

    while (v22);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1C9A63464;
  aBlock[3] = &unk_1E8346FC8;
  v99 = v90;
  v72 = v90;
  v70 = _Block_copy(aBlock);
  v76 = [v91 readNumRepetitionsPerTimeShiftFromHallucinator:v78 error:?];
  if (!v76 || ([v91 readNumTimeShiftsPerSegmentFromHallucinator:v78 error:a9], (v73 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v73 = 0;
    goto LABEL_49;
  }

  value = v100.value;
  *&v119.start.value = *&v100.timescale;
  v29 = v94;
  v30 = objc_opt_self();
  *&end = 0;
  *(&end + 1) = &end;
  end_16 = 0x2020000000uLL;
  time.value = MEMORY[0x1E69E9820];
  *&time.timescale = 3221225472;
  time.epoch = sub_1C9A625B4;
  v121 = &unk_1E8346F28;
  v124 = v30;
  v125 = value;
  v126 = *&v119.start.value;
  LODWORD(v127) = 0x2000;
  p_end = &end;
  v31 = v29;
  v122 = v31;
  v32 = _Block_copy(&time);
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 1;
  do
  {
    v35 = v34;
    [v33 addObject:&unk_1F4965560];
    v34 = 0;
  }

  while ((v35 & 1) != 0);
  v36 = [MEMORY[0x1E696AD98] numberWithLongLong:value];
  [v33 addObject:v36];

  v37 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:v33 dataType:65568 error:a9];
  if (v37)
  {
    v38 = v37;
    if (+[SNUtils flushBytesFromStreamSource:toBuffer:ofSizeInBytes:error:](SNUtils, "flushBytesFromStreamSource:toBuffer:ofSizeInBytes:error:", v32, [v37 dataPointer], 4 * objc_msgSend(v37, "count"), a9))
    {
      goto LABEL_19;
    }
  }

  v37 = 0;
LABEL_19:

  _Block_object_dispose(&end, 8);
  if (!v37)
  {
LABEL_49:
    v69 = 0;
    goto LABEL_50;
  }

  v39 = [v76 integerValue];
  v40 = v78;
  v41 = v37;
  v42 = v70;
  v43 = objc_opt_self();
  *&end = 0;
  *(&end + 1) = &end;
  *&end_16 = 0x3032000000;
  *(&end_16 + 1) = sub_1C9A611B8;
  *&v107 = sub_1C9A611C8;
  *(&v107 + 1) = 0;
  v119.start.value = MEMORY[0x1E69E9820];
  *&v119.start.timescale = 3221225472;
  v119.start.epoch = sub_1C9A62BB0;
  v119.duration.value = &unk_1E8346F50;
  *&v119.duration.timescale = &end;
  v44 = _Block_copy(&v119);
  time.value = MEMORY[0x1E69E9820];
  *&time.timescale = 3221225472;
  time.epoch = sub_1C9A62BC0;
  v121 = &unk_1E8346FA0;
  *&v126 = &end;
  *(&v126 + 1) = v43;
  v124 = v42;
  v125 = v44;
  v122 = v40;
  p_end = v41;
  v127 = v39;
  v69 = v41;
  v45 = v44;
  v46 = v40;
  v47 = v42;
  v48 = _Block_copy(&time);

  _Block_object_dispose(&end, 8);
  if (!v48)
  {
LABEL_50:
    v68 = 0;
    goto LABEL_51;
  }

  CMTimeMake(&time, -16000, 16000);
  CMTimeMake(&end, 16000, 16000);
  CMTimeRangeFromTimeToTime(&v97, &time, &end);
  v86 = [v73 integerValue];
  v96 = v100;
  v49 = v31;
  v80 = v75;
  v79 = v74;
  v82 = v48;
  objc_opt_self();
  v108 = 0u;
  v107 = 0u;
  end_16 = 0u;
  end = 0u;
  v71 = v49;
  v81 = [v71 countByEnumeratingWithState:&end objects:&time count:16];
  if (v81)
  {
    v77 = *end_16;
    do
    {
      v50 = 0;
      do
      {
        if (*end_16 != v77)
        {
          v51 = v50;
          objc_enumerationMutation(v71);
          v50 = v51;
        }

        v83 = v50;
        v52 = *(*(&end + 1) + 8 * v50);
        v103 = *&v97.start.value;
        v85 = v97.duration.value;
        epoch = v97.start.epoch;
        v102 = *&v97.duration.timescale;
        v101 = v96;
        v92 = v52;
        v87 = v80;
        v89 = v79;
        v88 = v82;
        objc_opt_self();
        if (v86)
        {
          v84 = 0;
          v53 = 1;
          v54 = v86;
          do
          {
            v55 = v92;
            objc_opt_self();
            v56 = objc_alloc_init(SNKShotSegment);
            v57 = [v55 url];
            [(SNKShotSegment *)v56 setUrl:v57];

            if (v92)
            {
              [v55 timeRange];
            }

            else
            {
              memset(&lhs, 0, sizeof(lhs));
            }

            *&start.start.value = *&lhs.start.value;
            start.start.epoch = lhs.start.epoch;
            duration = v101;
            CMTimeRangeMake(&v119, &start.start, &duration);
            start = v119;
            [(SNKShotSegment *)v56 setTimeRange:&start];

            memset(&duration, 0, sizeof(duration));
            v58 = v87;
            objc_opt_self();
            v59 = v58;
            objc_opt_self();
            *&lhs.start.value = v103;
            lhs.start.epoch = epoch;
            lhs.duration.value = v85;
            *&lhs.duration.timescale = v102;
            [SNTimeUtils standardizeTimeRange:&lhs directionShouldBePositive:1 negativeShouldResideInTimescale:0];
            v60 = v119.duration.value;
            memset(&v119, 0, 24);
            LODWORD(v58) = (*(v80 + 2))(v59, LODWORD(v119.duration.value));

            CMTimeMake(&v119.start, v58, v60);
            *&lhs.start.value = v103;
            lhs.start.epoch = epoch;
            *&start.start.value = *&v119.start.value;
            start.start.epoch = v119.start.epoch;
            CMTimeAdd(&duration, &lhs.start, &start.start);
            memset(&lhs, 0, 24);
            if (v92)
            {
              [v55 timeRange];
              v61 = v115;
            }

            else
            {
              v61 = 0;
              v114 = 0u;
              v115 = 0u;
              v113 = 0u;
            }

            v119.start = duration;
            CMTimeConvertScale(&lhs.start, &v119.start, v61, kCMTimeRoundingMethod_RoundTowardZero);
            if (v56)
            {
              [(SNKShotSegment *)v56 timeRange];
            }

            else
            {
              memset(&v119, 0, sizeof(v119));
            }

            *&start.start.value = *&lhs.start.value;
            start.start.epoch = lhs.start.epoch;
            [SNTimeUtils addOffset:&start toTimeRange:&v119];
            v119 = v112;
            [(SNKShotSegment *)v56 setTimeRange:&v119];
            v62 = MEMORY[0x1E696AD98];
            if (v92)
            {
              [v55 timeRange];
              v63 = *(&v110 + 1);
            }

            else
            {
              v63 = 0;
              v111 = 0u;
              v110 = 0u;
              v109 = 0u;
            }

            v64 = [v62 numberWithLongLong:{v63, v69}];
            v65 = [MEMORY[0x1E696AD98] numberWithLongLong:lhs.start.value];
            v66 = (*(v82 + 2))(v88, v56, v64, v65, v89, a9);

            if ((v66 & 1) == 0)
            {
              break;
            }

            v84 = v53++ >= v86;
            --v54;
          }

          while (v54);

          if (!v84)
          {
            v68 = 0;
            goto LABEL_52;
          }
        }

        else
        {
        }

        v50 = v83 + 1;
      }

      while (v83 + 1 != v81);
      v81 = [v71 countByEnumeratingWithState:&end objects:&time count:16];
    }

    while (v81);
  }

  v68 = 1;
LABEL_52:

LABEL_51:
  return v68;
}

void sub_1C9A610D4(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 label];
  v4 = [v3 type];
  v5 = &unk_1F4965560;
  if (!v4)
  {
    v5 = &unk_1F4965548;
  }

  v6 = v5;

  v7 = [v12 datasetType];
  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_8;
    }

    v8 = 56;
    v9 = 48;
  }

  else
  {
    v8 = 40;
    v9 = 32;
  }

  v10 = *(a1 + v9);
  v11 = [v12 data];
  [v10 addObject:v11];

  [*(a1 + v8) addObject:v6];
LABEL_8:
}

uint64_t sub_1C9A611B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9A611D0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v12 = objc_alloc_init(SNKShotFeaturizationStreamResult);
  [(SNKShotFeaturizationStreamResult *)v12 setDatasetType:a4];
  [(SNKShotFeaturizationStreamResult *)v12 setData:v7];

  LODWORD(a4) = [v8 isEqual:&unk_1F4965548];
  v9 = [SNKShotLabel alloc];
  if (a4)
  {
    v10 = [(SNKShotLabel *)v9 initAsNegativeLabel];
  }

  else
  {
    v10 = [(SNKShotLabel *)v9 initAsPositiveLabel];
  }

  v11 = v10;
  [(SNKShotFeaturizationStreamResult *)v12 setLabel:v10];

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1C9A612BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 80) + 8);
  v55[0] = *(v4 + 40);
  v5 = [SNUtils loadModelAtURL:v3 withTimeout:v55 error:5.0];
  objc_storeStrong((v4 + 40), v55[0]);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v6 = *(a1 + 96);
  v7 = *(*(a1 + 80) + 8);
  v54 = *(v7 + 40);
  v8 = [v6 recognizeHallucinatorModel:v5 error:&v54];
  objc_storeStrong((v7 + 40), v54);
  if (!v8)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_19;
  }

  v9 = 1374389535 * *(a1 + 108) * *(a1 + 104);
  v10 = ((v9 >> 37) + (v9 >> 63));
  v11 = *(a1 + 40);
  v39 = v2;
  if (v11)
  {
    [v11 timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&v52, &range);
  value = v52.value;
  v14 = *(a1 + 40);
  if (v14)
  {
    [v14 timeRange];
    v15 = v49;
  }

  else
  {
    v15 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
  }

  v16 = (*(a1 + 112) * *(a1 + 116));
  v17 = value - v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1C9A616F8;
  aBlock[3] = &unk_1E8346E10;
  v48 = *(a1 + 88);
  v47 = *(a1 + 64);
  v18 = _Block_copy(aBlock);
  v19 = [*(a1 + 48) segments];
  v20 = [v19 subarrayWithRange:{0, v10}];
  v21 = *(a1 + 116);
  v22 = *(a1 + 72);
  v23 = *(*(a1 + 80) + 8);
  obj = *(v23 + 40);
  v38 = v18;
  v24 = sub_1C9A601B8(SNKShotFeaturizerImpl, v20, v17 + v16, v21, v5, &unk_1F4965548, v22, v18, &obj);
  objc_storeStrong((v23 + 40), obj);

  if (v24)
  {
    if ([*(a1 + 56) isCancelled])
    {
      v8 = 0;
      v25 = *(*(a1 + 80) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = 0;
      v12 = 1;
    }

    else
    {
      v28 = *(a1 + 104) - v10;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_1C9A617B0;
      v42[3] = &unk_1E8346E38;
      v43 = *(a1 + 64);
      v29 = _Block_copy(v42);
      v30 = [*(a1 + 48) segments];
      v31 = [v30 subarrayWithRange:{v10, v28}];
      v32 = *(a1 + 116);
      v33 = *(a1 + 72);
      v34 = *(*(a1 + 80) + 8);
      v41 = *(v34 + 40);
      v8 = sub_1C9A601B8(SNKShotFeaturizerImpl, v31, v17 + v16, v32, v5, &unk_1F4965560, v33, v29, &v41);
      objc_storeStrong((v34 + 40), v41);

      if ((v8 & 1) == 0)
      {
        v35 = *(*(a1 + 80) + 8);
        v40 = *(v35 + 40);
        v36 = [v40 localizedDescription];
        [SNError populateClientError:&v40 withCode:1 underlyingError:v40 message:v36];
        objc_storeStrong((v35 + 40), v40);
      }

      v12 = 0;
      v26 = v43;
    }
  }

  else
  {
    v27 = *(*(a1 + 80) + 8);
    v44 = *(v27 + 40);
    v26 = [v44 localizedDescription];
    [SNError populateClientError:&v44 withCode:1 underlyingError:v44 message:v26];
    objc_storeStrong((v27 + 40), v44);
    v8 = 0;
    v12 = 0;
  }

  v2 = v39;

LABEL_19:
  objc_autoreleasePoolPop(v2);
  return v8 | v12;
}

void sub_1C9A616F8(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [v5 shape];
    v8 = [v7 lastObject];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1C9A62148(void *a1, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[5];
  v10 = a1[4];
  v11 = *(a1[7] + 8);
  v18 = *(v11 + 40);
  v12 = *(v9 + 16);
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v17[2] = a2[2];
  v14 = a4[1];
  v16[0] = *a4;
  v16[1] = v14;
  v16[2] = a4[2];
  v15 = v12(v9, v10, v17, v16, &v18, a6, a7, a8);
  objc_storeStrong((v11 + 40), v18);
  *(*(a1[6] + 8) + 24) = v15;
}

uint64_t sub_1C9A621E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v53 count:16];
  if (v8)
  {
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = v7;
        objc_opt_self();
        v51 = 0u;
        v52 = 0u;
        v50 = 0u;
        v13 = [v11 url];
        [SNAudioFileUtils getTimeRangeEncompassingEntireAudioFileAtURL:v13 error:a4];

        if ((BYTE12(v50) & 1) == 0 || (BYTE4(v52) & 1) == 0)
        {

LABEL_22:
          v18 = 0;
          goto LABEL_24;
        }

        v46 = 0;
        v47 = &v46;
        v48 = 0x2020000000;
        v49 = 1;
        v40 = 0;
        v41 = &v40;
        v42 = 0x3032000000;
        v43 = sub_1C9A611B8;
        v44 = sub_1C9A611C8;
        v45 = 0;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        if (v11)
        {
          [v11 timeRange];
          v14 = v36;
        }

        else
        {
          v14 = 0;
          v35 = 0uLL;
          v36 = 0uLL;
          v34 = 0uLL;
        }

        v31 = v50;
        v32 = v51;
        v33 = v52;
        [SNTimeUtils convertScaleForTimeRange:&v31 toValue:v14 preferShrinkingWhenRounding:1];
        if (v11)
        {
          [v11 timeRange];
        }

        else
        {
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
        }

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = sub_1C9A62148;
        v26[3] = &unk_1E8346E88;
        v29 = &v46;
        v15 = v12;
        v28 = v15;
        v16 = v11;
        v27 = v16;
        v30 = &v40;
        v25[0] = v37;
        v25[1] = v38;
        v25[2] = v39;
        [SNTimeUtils clipTimeRange:v25 toBounds:&v31 handler:v26];
        v17 = *(v47 + 24);
        if (a4 && (v47[3] & 1) == 0)
        {
          *a4 = v41[5];
          v17 = *(v47 + 24);
        }

        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(&v46, 8);

        if ((v17 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v53 count:16];
      v18 = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 1;
  }

LABEL_24:

  return v18;
}

void sub_1C9A62588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A625B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1C9A6278C;
  aBlock[3] = &unk_1E8346EB0;
  v22 = *(a1 + 56);
  v23 = *(a1 + 72);
  v21 = *(a1 + 40);
  v24 = *(a1 + 80);
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1C9A628CC;
  v17[3] = &unk_1E8346ED8;
  v8 = v7;
  v18 = v8;
  v9 = _Block_copy(v17);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1C9A629DC;
  v14[3] = &unk_1E8346F00;
  v16 = *(a1 + 48);
  v10 = v9;
  v15 = v10;
  v11 = _Block_copy(v14);
  if (sub_1C9A621E8(*(a1 + 48), *(a1 + 32), v11, a3))
  {
    v12 = sub_1C9A621E8(*(a1 + 48), *(a1 + 32), v10, a3);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL sub_1C9A6278C(uint64_t a1, void *a2, CMTime *a3, uint64_t a4)
{
  v7 = a2;
  if (a3[1].value >= *(a1 + 48) - *(*(*(a1 + 40) + 8) + 24))
  {
    value = *(a1 + 48) - *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    value = a3[1].value;
  }

  memset(&v17, 0, sizeof(v17));
  CMTimeMake(&duration.start, value, a3[1].timescale);
  start = *a3;
  CMTimeRangeMake(&v17, &start, &duration.start);
  *(*(*(a1 + 40) + 8) + 24) += value;
  if (value)
  {
    v9 = *(a1 + 72);
    v10 = +[SNUtils zeroBufferPopulator];
    v11 = +[SNUtils zeroBufferPopulator];
    v12 = *(a1 + 32);
    duration = v17;
    v13 = [SNUtils flushBytesFromPreciseTimeRangeInAudioFile:v7 timeRange:&duration maxFramesPerBuffer:v9 recycleBuffers:1 prefixBufferPopulator:v10 suffixBufferPopulator:v11 intoSink:v12 error:a4];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t sub_1C9A628CC(uint64_t a1, void *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v9 = MEMORY[0x1E6958408];
  v10 = a2;
  v11 = [v9 alloc];
  v12 = [v10 url];

  v13 = [v11 initForReading:v12 commonFormat:1 interleaved:0 error:a5];
  if (v13 && (v16 = *(a1 + 32), v17 = *(v16 + 16), v18 = a3[1], v26 = *a3, v27 = v18, v28 = a3[2], v17(v16, v13, &v26, a5, v14, v15)))
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    v23 = a4[1];
    v26 = *a4;
    v27 = v23;
    v28 = a4[2];
    v24 = v22(v21, v13, &v26, a5, v19, v20);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t sub_1C9A629DC(uint64_t a1, void *a2, __int128 *a3, _OWORD *a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  v15 = *a3;
  v16 = a3[1];
  v8 = a4[1];
  *&range.start.value = *a4;
  *&range.start.epoch = v8;
  *&range.duration.timescale = a4[2];
  v9 = v7;
  v10 = a2;
  objc_opt_self();
  memset(&v24, 0, sizeof(v24));
  CMTimeRangeGetEnd(&v24, &range);
  memset(&v22, 0, sizeof(v22));
  CMTimeMake(&v22, 1, 1);
  memset(&v21, 0, sizeof(v21));
  range.start = v24;
  rhs.start = v22;
  CMTimeSubtract(&v21, &range.start, &rhs.start);
  memset(&v20, 0, sizeof(v20));
  range.start = v21;
  v14 = *MEMORY[0x1E6960CC0];
  *&rhs.start.value = *MEMORY[0x1E6960CC0];
  v11 = *(MEMORY[0x1E6960CC0] + 16);
  rhs.start.epoch = v11;
  if (CMTimeCompare(&range.start, &rhs.start) == -1)
  {
    CMTimeMake(&v20, 0, v21.timescale);
  }

  else
  {
    v20 = v21;
  }

  *&rhs.start.value = v15;
  rhs.start.epoch = v16;
  *&duration.value = v14;
  duration.epoch = v11;
  CMTimeRangeMake(&range, &rhs.start, &duration);
  duration = v20;
  end = v24;
  CMTimeRangeFromTimeToTime(&rhs, &duration, &end);
  v12 = v9[2](v9, v10, &range, &rhs, a5);

  return v12;
}

uint64_t sub_1C9A62BC0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v98 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1C9A633C8;
  aBlock[3] = &unk_1E8346F78;
  v93 = *(a1 + 64);
  v92 = *(a1 + 48);
  v14 = _Block_copy(aBlock);
  context = objc_autoreleasePoolPush();
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 80);
  v90 = 0;
  v19 = v10;
  v83 = v16;
  v84 = v15;
  v82 = v17;
  v20 = v13;
  v21 = v19;
  v22 = v20;
  v23 = v12;
  v88 = v11;
  v24 = v14;
  objc_opt_self();
  v25 = objc_alloc(MEMORY[0x1E6958408]);
  v26 = [v19 url];
  v27 = [v25 initForReading:v26 commonFormat:1 interleaved:0 error:&v90];

  v78 = v21;
  v76 = v27;
  if (!v27)
  {

    goto LABEL_43;
  }

  if (v21)
  {
    [v21 timeRange];
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
  }

  v28 = +[SNUtils zeroBufferPopulator];
  v29 = +[SNUtils zeroBufferPopulator];
  v30 = [SNUtils createMultiArrayContainingPreciseTimeRangeOfAudioFile:v27 timeRange:&v95 maxFramesPerBuffer:0x2000 recycleBuffers:1 prefixBufferPopulator:v28 suffixBufferPopulator:v29 numDimensions:3 error:&v90];

  v89 = v30;
  if (!v30)
  {
    v27 = 0;

    goto LABEL_43;
  }

  if (!v18)
  {
    v27 = 1;
    goto LABEL_42;
  }

  v31 = 0;
  v71 = v24 + 2;
  v72 = v24;
  v70 = v18 - 1;
  v73 = v30;
  v74 = v23;
  v75 = v22;
  while (1)
  {
    v80 = v31;
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v31];
    v33 = v84[2]();
    v85 = v83;
    v81 = v24;
    v34 = v33;
    v35 = v88;
    v36 = v23;
    v37 = v22;
    v38 = v32;
    v39 = v82;
    v40 = v73;
    objc_opt_self();
    v89 = v40;
    v41 = v39;
    v42 = v37;
    v43 = v36;
    v44 = v35;
    v86 = v34;
    v45 = v38;
    objc_opt_self();
    v46 = [SNUtils toMLMultiArrayConvertFromFloatScalar:v45 error:&v90];
    v87 = v45;

    if (!v46)
    {
      v53 = 0;
      v48 = 0;
      v47 = 0;
LABEL_20:
      v50 = 0;
LABEL_21:
      v54 = 0;
      goto LABEL_22;
    }

    v47 = [SNUtils toMLMultiArrayConvertFromFloatScalar:v44 error:&v90];
    if (!v47)
    {
      v53 = 0;
      v48 = 0;
      goto LABEL_20;
    }

    v48 = [SNUtils toMLMultiArrayConvertFromFloatScalar:v42 error:&v90];
    if (!v48)
    {
      v53 = 0;
      goto LABEL_20;
    }

    v49 = [SNUtils toMLMultiArrayConvertFromFloatScalar:v43 error:&v90];
    v50 = v49;
    if (!v49)
    {
      v53 = 0;
      goto LABEL_21;
    }

    v51 = MEMORY[0x1E695DF90];
    v94[0] = @"foreground";
    v94[1] = @"background";
    *&v95 = v89;
    *(&v95 + 1) = v41;
    v94[2] = @"shiftIteration";
    v94[3] = @"set";
    *&v96 = v46;
    *(&v96 + 1) = v48;
    v94[4] = @"shiftedSamples";
    v94[5] = @"segmentLength";
    *&v97 = v49;
    *(&v97 + 1) = v47;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:v94 count:6];
    v53 = [v51 dictionaryWithDictionary:v52];

    if (!v53)
    {
      goto LABEL_21;
    }

    if (v86)
    {
      [v53 setObject:v86 forKey:@"stateIn"];
    }

    v54 = [objc_alloc(MEMORY[0x1E695FE48]) initWithDictionary:v53 error:&v90];
LABEL_22:

    v55 = v86;
    v23 = v74;
    v22 = v75;
    if (!v54)
    {
      goto LABEL_40;
    }

    v56 = [v85 predictionFromFeatures:v54 error:&v90];
    if (!v56)
    {
      goto LABEL_40;
    }

    v57 = v56;
    v58 = v81;
    objc_opt_self();
    v59 = [v57 featureValueForName:@"embedding"];
    v60 = [v59 multiArrayValue];
    if (!v60)
    {
      [SNError populateClientError:&v90 withCode:1 underlyingError:0 message:@"Expected multiarray embedding output."];
      goto LABEL_39;
    }

    v61 = [v57 featureValueForName:@"label"];

    v62 = [v61 multiArrayValue];

    if (!v62)
    {
      [SNError populateClientError:&v90 withCode:1 underlyingError:0 message:@"Expected multiarray label output."];
      v59 = v61;
      goto LABEL_39;
    }

    v63 = [v61 multiArrayValue];
    v64 = [SNUtils toFloatScalarConvertFromMLMultiArray:v63 error:&v90];

    if (!v64)
    {
      v59 = v61;
      goto LABEL_38;
    }

    v59 = [v57 featureValueForName:@"stateOut"];

    v65 = [v59 multiArrayValue];
    if (!v65)
    {
      break;
    }

    v66 = v65;
    v27 = (*v71)(v58, v60, v64, v65, &v90);

    if (!v27)
    {
      goto LABEL_41;
    }

    v31 = v80 + 1;
    v24 = v72;
    if (v70 == v80)
    {
      goto LABEL_42;
    }
  }

  [SNError populateClientError:&v90 withCode:1 underlyingError:0 message:@"Expected multiarray state output."];

LABEL_38:
  v55 = v86;
LABEL_39:

LABEL_40:
  v27 = 0;
LABEL_41:
  v24 = v72;
LABEL_42:

LABEL_43:
  v67 = v90;
  objc_autoreleasePoolPop(context);
  if (a6)
  {
    v68 = v67;
    *a6 = v67;
  }

  return v27;
}

uint64_t sub_1C9A633C8(uint64_t a1, void *a2, void *a3, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v8 = obj;
  v9 = a3;
  v10 = a2;
  v11 = (*(*(a1 + 32) + 16))();

  return v11;
}

void *sub_1C9A63934(void *result, void *a2, void *a3)
{
  v3 = a2[1];
  *result = *a2;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  result[2] = *a3;
  result[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "analyzerProcessingGraph should be non-null");
    __cxa_throw(exception, &unk_1F49512F0, MEMORY[0x1E69E5260]);
  }

  if (*(*a2 + 761) != 1)
  {
    v5 = "requestProcessingGraph->configured()";
    v6 = 21;
    goto LABEL_12;
  }

  if (*a3 && (*(*a3 + 761) & 1) == 0)
  {
    v5 = "sharedProcessingGraph->configured()";
    v6 = 22;
LABEL_12:
    __assert_rtn("ProcessingContext", "SoundAnalysis_ProcessingContext.cpp", v6, v5);
  }

  return result;
}

void sub_1C9A63A24(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_1C9A4E570(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    sub_1C9A4E570(v5);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1C9A63A58@<Q0>(DSPGraph::Graph **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  if (v4 && (v5 = sub_1C9A53770(v4), v5 == sub_1C9A5364C(*a1)))
  {
    v6 = *a1;

    sub_1C9A63AFC(v6, a2);
  }

  else
  {
    v8 = sub_1C9A573A4(*a1);
    v9 = *(v8 + 32);
    result = *(v8 + 16);
    *a2 = *v8;
    *(a2 + 16) = result;
    *(a2 + 32) = v9;
    *(a2 + 40) = 1;
  }

  return result;
}

uint64_t sub_1C9A63AFC@<X0>(DSPGraph::Graph *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = DSPGraph::Graph::in(a1);
  v4 = *(v3 + 88);
  if (*(v3 + 96) == v4)
  {
    sub_1C9A4DF14(v13, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v12, "out");
    v10 = (v3 + 32);
    if (*(v3 + 55) < 0)
    {
      v10 = *v10;
    }

    DSPGraph::strprintf(v11, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v9, v10, (*(v3 + 96) - *(v3 + 88)) >> 5, 0);
    result = DSPGraph::ThrowException();
    __break(1u);
  }

  else
  {
    result = (*(*v4 + 40))(v4);
    v6 = *(result + 120);
    v7 = *(v6 + 16);
    *a2 = *v6;
    *(a2 + 16) = v7;
    v8 = *(v6 + 32);
    LODWORD(v6) = *(v6 + 40);
    *(a2 + 32) = v8;
    *(a2 + 40) = 0;
    *(a2 + 40) = v6;
  }

  return result;
}

void sub_1C9A63BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A63C38@<X0>(DSPGraph::Graph **a1@<X0>, uint64_t a2@<X8>)
{
  result = DSPGraph::Graph::numOutputs(*a1);
  if (result)
  {
    v5 = DSPGraph::Graph::out(*a1);
    v6 = *(v5 + 64);
    if (*(v5 + 72) == v6)
    {
      sub_1C9A4DF14(v17, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v16, "in");
      v14 = (v5 + 32);
      if (*(v5 + 55) < 0)
      {
        v14 = *v14;
      }

      DSPGraph::strprintf(v15, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v13, v14, (*(v5 + 72) - *(v5 + 64)) >> 5, 0);
      result = DSPGraph::ThrowException();
      __break(1u);
    }

    else
    {
      v7 = *((*(*v6 + 40))(v6) + 120);
      v8 = *(v7 + 8);
      v10 = v8 != 1718773105 && v8 != 1819304813 && *(v7 + 16) != 0;
      v11 = sub_1C9A57534(*a1);
      v12 = *(v11 + 16);
      *a2 = *v11;
      *(a2 + 16) = v12;
      *(a2 + 32) = *(v11 + 32);
      if (v10)
      {
        result = sub_1C9A53770(*a1);
      }

      else
      {
        result = 1;
      }

      *(a2 + 40) = result;
    }
  }

  else
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

void sub_1C9A63DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void *sub_1C9A644FC(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    return 0;
  }

  v12.receiver = a1;
  v12.super_class = SNDSPGraphBox;
  v5 = objc_msgSendSuper2(&v12, sel_init);
  if (v5)
  {
    if (!a2)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel_initWithBox_fromGraph_ object:v5 file:@"SNDSPGraphBox.mm" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"box"}];
    }

    if (!*a3)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel_initWithBox_fromGraph_ object:v5 file:@"SNDSPGraphBox.mm" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"graph"}];
    }

    v5[1] = a2;
    v7 = *a3;
    v6 = a3[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v5[3];
    v5[2] = v7;
    v5[3] = v6;
    if (v8)
    {
      sub_1C9A4E570(v8);
    }
  }

  return v5;
}

uint64_t sub_1C9A64668(uint64_t a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3[0] = &unk_1F4951E40;
  v3[1] = 0;
  v3[3] = v3;
  v1 = ((*(*(a1 + 8) + 96) - *(*(a1 + 8) + 88)) >> 5);
  sub_1C9A67B00(v3);
  return v1;
}

BOOL sub_1C9A64704(uint64_t a1, uint64_t a2, int *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v8 = &unk_1F4951E88;
  v9 = 0;
  v10 = &v8;
  v7 = *a3;
  v4 = (*(**(a1 + 8) + 304))();
  *a3 = v7;
  v5 = v4 == 0;
  sub_1C9A67A80(&v8);
  return v5;
}

void sub_1C9A64810(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf, int *a16, __int128 a17, int a18, int a19)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v20 = __cxa_begin_catch(a1);
      v21 = *(v20 + 2);
      a10 = v21;
      v22 = sub_1C9A779E4();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = v20 + 72;
        if (v20[95] < 0)
        {
          v23 = *v23;
        }

        v24 = v20 + 16;
        if (v20[39] < 0)
        {
          v24 = *v24;
        }

        v25 = *(v20 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v21;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a16 = &a10;
        LOWORD(a17) = 2080;
        *(&a17 + 2) = v23;
        WORD5(a17) = 2080;
        *(&a17 + 12) = v24;
        LOWORD(a19) = 1024;
        *(&a19 + 2) = v25;
        _os_log_impl(&dword_1C9788000, v22, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v26 = __cxa_begin_catch(a1);
      v22 = sub_1C9A779E4();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v27 = (*(*v26 + 16))(v26);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v27;
        _os_log_impl(&dword_1C9788000, v22, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v28 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v29 = *v28;
        a10 = *v28;
        v22 = sub_1C9A779E4();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v29;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a16 = &a10;
          _os_log_impl(&dword_1C9788000, v22, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v22 = sub_1C9A779E4();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v22, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a14)
    {
      (*(*a14 + 48))(a14);
      JUMPOUT(0x1C9A647CCLL);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

BOOL sub_1C9A64AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v8 = &unk_1F4951ED0;
  v9 = 0;
  v10 = &v8;
  v6 = (*(**(a1 + 8) + 312))(*(a1 + 8), a4, a5, a6, a3, a2) == 0;
  sub_1C9A67A80(&v8);
  return v6;
}

void sub_1C9A64BD0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v21 = __cxa_begin_catch(a1);
      v22 = *(v21 + 2);
      a11 = v22;
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = v21 + 72;
        if (v21[95] < 0)
        {
          v24 = *v24;
        }

        v25 = v21 + 16;
        if (v21[39] < 0)
        {
          v25 = *v25;
        }

        v26 = *(v21 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v22;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v24;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v25;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v26;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = (*(*v27 + 16))(v27);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v28;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v29 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v30 = *v29;
        a11 = *v29;
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v30;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A64B8CLL);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A64EA4(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v7 = &unk_1F4951F18;
  v8 = 0;
  v9 = &v7;
  *a2 = (*(**(a1 + 8) + 88))(*(a1 + 8), a3, a4, a5);
  v5 = 1;
  sub_1C9A67A80(&v7);
  return v5;
}

void sub_1C9A64F7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v21 = __cxa_begin_catch(a1);
      v22 = *(v21 + 2);
      a11 = v22;
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = v21 + 72;
        if (v21[95] < 0)
        {
          v24 = *v24;
        }

        v25 = v21 + 16;
        if (v21[39] < 0)
        {
          v25 = *v25;
        }

        v26 = *(v21 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v22;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v24;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v25;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v26;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = (*(*v27 + 16))(v27);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v28;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v29 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v30 = *v29;
        a11 = *v29;
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v30;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A64F38);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A65250(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3 = &unk_1F4951F60;
  v4 = 0;
  v5 = &v3;
  (*(**(a1 + 8) + 80))(*(a1 + 8));
  v1 = 1;
  sub_1C9A67A80(&v3);
  return v1;
}

void sub_1C9A65314(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v21 = __cxa_begin_catch(a1);
      v22 = *(v21 + 2);
      a11 = v22;
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = v21 + 72;
        if (v21[95] < 0)
        {
          v24 = *v24;
        }

        v25 = v21 + 16;
        if (v21[39] < 0)
        {
          v25 = *v25;
        }

        v26 = *(v21 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v22;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v24;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v25;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v26;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = (*(*v27 + 16))(v27);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v28;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v29 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v30 = *v29;
        a11 = *v29;
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v30;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A652D0);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A655E8(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v11 = &unk_1F4951FA8;
  v12 = 0;
  v13 = &v11;
  v3 = *(a1 + 8);
  v4 = *(v3 + 64);
  if (a2 < ((*(v3 + 72) - v4) >> 5))
  {
    v5 = *(*((*(*(v4 + 32 * a2) + 40))(v4 + 32 * a2) + 120) + 40);
    sub_1C9A67F80(&v11);
    return v5;
  }

  sub_1C9A4DF14(&v10, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(buf, "in");
  v8 = (v3 + 32);
  if (*(v3 + 55) < 0)
  {
    v8 = *v8;
  }

  DSPGraph::strprintf(&__p, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v7, v8, (*(v3 + 72) - *(v3 + 64)) >> 5, a2);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A65A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_end_catch();
  sub_1C9A67F80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A65A74(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9[0] = &unk_1F4951FF0;
    v9[1] = 0;
    v9[3] = v9;
    v3 = *(result + 8);
    v4 = *(v3 + 64);
    if (a2 >= ((*(v3 + 72) - v4) >> 5))
    {
      sub_1C9A4DF14(&v8, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(buf, "in");
      v6 = (v3 + 32);
      if (*(v3 + 55) < 0)
      {
        v6 = *v6;
      }

      DSPGraph::strprintf(&__p, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, v6, (*(v3 + 72) - *(v3 + 64)) >> 5, a2);
      result = DSPGraph::ThrowException();
      __break(1u);
    }

    else
    {
      (*(*(v4 + 32 * a2) + 40))(v4 + 32 * a2);
      return sub_1C9A680A4(v9);
    }
  }

  return result;
}

void sub_1C9A65EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_end_catch();
  sub_1C9A680A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A65F04(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v11 = &unk_1F4952038;
  v12 = 0;
  v13 = &v11;
  v3 = *(a1 + 8);
  v4 = *(v3 + 64);
  if (a2 < ((*(v3 + 72) - v4) >> 5))
  {
    v5 = *(*((*(*(v4 + 32 * a2) + 40))(v4 + 32 * a2) + 120) + 28);
    sub_1C9A67F80(&v11);
    return v5;
  }

  sub_1C9A4DF14(&v10, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(buf, "in");
  v8 = (v3 + 32);
  if (*(v3 + 55) < 0)
  {
    v8 = *v8;
  }

  DSPGraph::strprintf(&__p, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v7, v8, (*(v3 + 72) - *(v3 + 64)) >> 5, a2);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A66334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_end_catch();
  sub_1C9A67F80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A66390(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v11 = &unk_1F4952080;
  v12 = 0;
  v13 = &v11;
  v3 = *(a1 + 8);
  v4 = *(v3 + 88);
  if (a2 < ((*(v3 + 96) - v4) >> 5))
  {
    v5 = *(*((*(*(v4 + 32 * a2) + 40))(v4 + 32 * a2) + 120) + 40);
    sub_1C9A67F80(&v11);
    return v5;
  }

  sub_1C9A4DF14(&v10, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(buf, "out");
  v8 = (v3 + 32);
  if (*(v3 + 55) < 0)
  {
    v8 = *v8;
  }

  DSPGraph::strprintf(&__p, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v7, v8, (*(v3 + 96) - *(v3 + 88)) >> 5, a2);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A667C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_end_catch();
  sub_1C9A67F80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A6681C(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9[0] = &unk_1F49520C8;
    v9[1] = 0;
    v9[3] = v9;
    v3 = *(result + 8);
    v4 = *(v3 + 88);
    if (a2 >= ((*(v3 + 96) - v4) >> 5))
    {
      sub_1C9A4DF14(&v8, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(buf, "out");
      v6 = (v3 + 32);
      if (*(v3 + 55) < 0)
      {
        v6 = *v6;
      }

      DSPGraph::strprintf(&__p, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(v3 + 96) - *(v3 + 88)) >> 5, a2);
      result = DSPGraph::ThrowException();
      __break(1u);
    }

    else
    {
      (*(*(v4 + 32 * a2) + 40))(v4 + 32 * a2);
      return sub_1C9A680A4(v9);
    }
  }

  return result;
}

void sub_1C9A66C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_end_catch();
  sub_1C9A680A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A66CAC(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v11 = &unk_1F4952110;
  v12 = 0;
  v13 = &v11;
  v3 = *(a1 + 8);
  v4 = *(v3 + 88);
  if (a2 < ((*(v3 + 96) - v4) >> 5))
  {
    v5 = *(*((*(*(v4 + 32 * a2) + 40))(v4 + 32 * a2) + 120) + 28);
    sub_1C9A67F80(&v11);
    return v5;
  }

  sub_1C9A4DF14(&v10, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
  sub_1C9A4DF14(buf, "out");
  v8 = (v3 + 32);
  if (*(v3 + 55) < 0)
  {
    v8 = *v8;
  }

  DSPGraph::strprintf(&__p, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v7, v8, (*(v3 + 96) - *(v3 + 88)) >> 5, a2);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A670DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_end_catch();
  sub_1C9A67F80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A67138(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3 = &unk_1F4952158;
  v4 = 0;
  v5 = &v3;
  v1 = DSPGraph::Box::sampleRate(*(a1 + 8));
  sub_1C9A67F80(&v3);
  return v1;
}

void sub_1C9A671DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v21 = __cxa_begin_catch(a1);
      v22 = *(v21 + 2);
      a11 = v22;
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = v21 + 72;
        if (v21[95] < 0)
        {
          v24 = *v24;
        }

        v25 = v21 + 16;
        if (v21[39] < 0)
        {
          v25 = *v25;
        }

        v26 = *(v21 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v22;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v24;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v25;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v26;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = (*(*v27 + 16))(v27);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v28;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v29 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v30 = *v29;
        a11 = *v29;
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v30;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A67194);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A674AC(uint64_t result, char a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = result;
  v3 = a2;
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3321888768;
    v2[2] = sub_1C9A675A4;
    v2[3] = &unk_1F4951DA0;
    v2[4] = &v4;
    v2[5] = &v3;
    v5[0] = &unk_1F4951DF8;
    v5[3] = v5;
    sub_1C9A67600(v2);
    return sub_1C9A67A00(v5);
  }

  return result;
}

uint64_t sub_1C9A675A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(**(a1 + 32) + 8);
  return (*(*v2 + 56))(v2, *v1);
}

__n128 sub_1C9A675D8(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void sub_1C9A67600(void *a1)
{
  v1 = a1;
  v1[2]();
}

void sub_1C9A6767C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, __int128 buf, int *a13, __int128 a14, int a15, int a16)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v18 = __cxa_begin_catch(a1);
      v19 = *(v18 + 2);
      a11 = v19;
      v20 = sub_1C9A779E4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v18 + 72;
        if (v18[95] < 0)
        {
          v21 = *v21;
        }

        v22 = v18 + 16;
        if (v18[39] < 0)
        {
          v22 = *v22;
        }

        v23 = *(v18 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v19;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a13 = &a11;
        LOWORD(a14) = 2080;
        *(&a14 + 2) = v21;
        WORD5(a14) = 2080;
        *(&a14 + 12) = v22;
        LOWORD(a16) = 1024;
        *(&a16 + 2) = v23;
        _os_log_impl(&dword_1C9788000, v20, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v24 = __cxa_begin_catch(a1);
      v20 = sub_1C9A779E4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = (*(*v24 + 16))(v24);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1C9788000, v20, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v26 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v27 = *v26;
        a11 = *v26;
        v20 = sub_1C9A779E4();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v27;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a13 = &a11;
          _os_log_impl(&dword_1C9788000, v20, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v20 = sub_1C9A779E4();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v20, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    sub_1C9A6792C(v16);
    JUMPOUT(0x1C9A67644);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A6792C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1C9A56FAC();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1C9A67A00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1C9A67A80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1C9A67B00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1C9A67BF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4951E40;
  a2[1] = v2;
  return result;
}

uint64_t sub_1C9A67C98(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4951E88;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A67D44(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4951ED0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A67DF0(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4951F18;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A67E9C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4951F60;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A67F48(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4951FA8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A67F80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1C9A68070(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4951FF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1C9A680A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1C9A68198(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952038;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A68244(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952080;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A682EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F49520C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1C9A68394(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952110;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A68440(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952158;
  *(a2 + 8) = *(result + 8);
  return result;
}

float sub_1C9A68478(float a1)
{
  v1 = a1;
  if (a1 <= 1000.0)
  {
    return v1 / 66.6666667;
  }

  else
  {
    return log(v1 / 1000.0) / 0.0687517774 + 15.0;
  }
}

float sub_1C9A68560(float a1)
{
  v1 = a1;
  if (v1 <= 15.0)
  {
    return v1 * 66.6666667 + 0.0;
  }

  else
  {
    return exp((v1 + -15.0) * 0.0687517774) * 1000.0;
  }
}

uint64_t sub_1C9A6864C(unsigned int a1, _DWORD *a2)
{
  v2 = a2[9] + a2[8];
  v3 = a1 >= v2;
  v4 = a1 - v2;
  if (v3)
  {
    return v4 / a2[7] + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9A68674(unsigned int a1, _DWORD *a2)
{
  v2 = a2[2] + a2[3];
  v3 = a1 >= v2;
  v4 = a1 - v2;
  if (v3)
  {
    return v4 / a2[1] + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9A6869C(uint64_t a1, int a2, int a3, unsigned int a4, DSPComplex *__C)
{
  if (*(a1 + 48) < 4 * (2 * a4) || 4 * a4 < 4 * a4)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  v8 = (*a1 + 4 * (v6 * a2));
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a4 >> 1;
  v13 = (v12 + 1);
  v14 = &v11[a4];
  __Z.realp = v14;
  __Z.imagp = &v14[v12];
  vDSP_ctoz(__C, 2, &__Z, 1, v12);
  vDSP_DFT_Execute(v9, __Z.realp, __Z.imagp, __Z.realp, __Z.imagp);
  v15 = *__Z.imagp;
  *__Z.imagp = 0.0;
  v23 = v12 + 1;
  v16 = v15 * v15;
  vDSP_zvmags(&__Z, 1, v11, 1, v12);
  v11[v13 - 1] = v16;
  vvsqrtf(v14, v11, &v23);
  v21 = 1056964608;
  MEMORY[0x1CCA934E0](v14, 1, &v21, v11, 1, v23);
  if (v6)
  {
    v17 = 0;
    v18 = v8;
    v19 = v6;
    do
    {
      LODWORD(__Z.realp) = 0;
      vDSP_dotpr(v11, 1, (v7 + 4 * v17), 1, &__Z, v13);
      *v18++ = *&__Z.realp;
      v17 += v13;
      --v19;
    }

    while (v19);
  }

  else
  {
    v6 = 0;
  }

  v21 = v10;
  v5 = 1;
  MEMORY[0x1CCA934D0](v8, 1, &v21, v8, 1, v6);
  LODWORD(__Z.realp) = 1065353216;
  vDSP_vdbcon(v8, 1, &__Z, v8, 1, v6, 1u);
  v23 = 1038862563;
  MEMORY[0x1CCA934E0](v8, 1, &v23, v8, 1, v6);
  return v5;
}

uint64_t sub_1C9A68890(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, float a9, uint64_t a10, int a11, int a12, unsigned int a13, DSPComplex *a14, unsigned int a15)
{
  if (a3 >= a12 + a11)
  {
    v16 = (a3 - (a12 + a11)) / a13 + 1;
  }

  else
  {
    v16 = 0;
  }

  v33[0] = a1;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a8;
  v33[4] = LODWORD(a9);
  v33[5] = a14;
  v30 = 4 * a6;
  v33[6] = a15;
  if (v30 > a15)
  {
    return 0;
  }

  if (!v16)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = -a7;
  v22 = v16 - 1;
  v23 = a7 + a6;
  do
  {
    if (v19 >= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v19;
    }

    v25 = v24 + v23;
    if (a3 < v25)
    {
      v25 = a3;
    }

    v26 = v25 + v18;
    bzero(a14, v30);
    v27 = v21 - v19;
    if (v21 < v19)
    {
      v27 = 0;
    }

    memcpy(a14 + 4 * v27, (a2 + 4 * v19), 4 * v26);
    MEMORY[0x1CCA934C0](a14, 1, a10, 1, a14, 1, a6);
    result = sub_1C9A6869C(v33, v20, v28, a6, a14);
    if (!result)
    {
      break;
    }

    v19 += a13;
    v23 += a13;
    v18 -= a13;
  }

  while (v22 != v20++);
  return result;
}

uint64_t sub_1C9A68A68(uint64_t result, uint64_t a2, unsigned int a3, float *a4, int a5)
{
  v5 = (a5 - 2);
  if (a5 != 2)
  {
    v9 = result;
    v10 = 0;
    v11 = 2;
    v12 = a4;
    v13 = a3;
    do
    {
      v14 = *v12++;
      v15 = 2.0 / (a4[v11] - v14);
      result = MEMORY[0x1CCA934E0](a2 + 4 * v10, 1, &v15, v9 + 4 * v10, 1, v13);
      ++v11;
      v10 += a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *sub_1C9A68B20(void *result, const void *a2, unsigned int a3, uint64_t a4, int a5)
{
  if (result != a2)
  {
    return memcpy(result, a2, 4 * a3 * (a5 - 2));
  }

  return result;
}

uint64_t sub_1C9A68B3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  v5 = *(a2 + 40);
  v6 = (v5 >> 1) + 1;
  v7 = v4 + v6;
  v8 = *(a2 + 32);
  v9 = 4 * v7 + 8;
  if (4 * v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = (4 * v8);
  }

  v11 = (8 * v5);
  v12 = *(a2 + 16);
  if (v12 > 2)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = off_1F4952190[v12];
    v14 = off_1F49521A8[v12];
  }

  v15 = *(a2 + 48);
  if (v15 == 1)
  {
    v16 = sub_1C9A68A68;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = sub_1C9A68B20;
  }

  v107 = v17;
  v18 = *(a2 + 44);
  v19 = v8 - v18;
  if (-v18 < v5)
  {
    v20 = -v18;
  }

  else
  {
    v20 = v5;
  }

  if (v19 >= v5)
  {
    v19 = v5;
  }

  v106 = v19;
  Setup = vDSP_DFT_zrop_CreateSetup(0, v5, vDSP_DFT_FORWARD);
  v22 = malloc_type_malloc(v10, 0xFE851514uLL);
  if (!v22 || (v23 = malloc_type_malloc(v11, 0xE94AAF88uLL)) == 0)
  {
    v28 = 0;
    v29 = 0;
    v24 = 0;
    v30 = 0;
    goto LABEL_81;
  }

  v105 = v23;
  v24 = malloc_type_malloc(4 * v6 * *(a2 + 4), 0x100004052888210uLL);
  if (v24)
  {
    v104 = Setup;
    v26 = *(a2 + 40);
    v27 = (v26 >> 1) + 1;
    v103 = (*(a2 + 4) + 2);
    if (v10 < 4 * (v103 + v27))
    {
      v28 = 0;
      v29 = 0;
LABEL_79:
      Setup = v104;
      goto LABEL_80;
    }

    v32 = *(a2 + 8);
    v31 = *(a2 + 12);
    v33 = &v22[v27];
    *v25.i32 = *a2 / v26;
    v34 = ((v26 >> 1) + 4) & 0x1FFFFFFFCLL;
    v35 = vdupq_n_s64(*(a2 + 40) >> 1);
    v36 = vdupq_lane_s32(v25, 0);
    v102 = v11;
    v98 = v20;
    v97 = *(a2 + 40);
    v100 = *(a2 + 24);
    v101 = *(a2 + 4);
    v37 = 0;
    v38 = xmmword_1C9A9FB70;
    v39 = xmmword_1C9A9FB80;
    v40 = v22 + 2;
    v41 = vdupq_n_s64(4uLL);
    if (v100)
    {
      do
      {
        v42 = vmovn_s64(vcgeq_u64(v35, v39));
        v43.i32[0] = v37;
        v43.i32[1] = v37 + 1;
        v43.u64[1] = vorr_s8(vdup_n_s32(v37), 0x300000002);
        v44 = vmlaq_f32(0, vcvtq_f32_u32(v43), v36);
        if (vuzp1_s16(v42, *v35.i8).u8[0])
        {
          *(v40 - 2) = v44.i32[0];
        }

        if (vuzp1_s16(v42, *&v35).i8[2])
        {
          *(v40 - 1) = v44.i32[1];
        }

        if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, *&v38))).i32[1])
        {
          *v40 = v44.i64[1];
        }

        v37 += 4;
        v38 = vaddq_s64(v38, v41);
        v39 = vaddq_s64(v39, v41);
        v40 += 2;
      }

      while (v34 != v37);
    }

    else
    {
      do
      {
        v45 = vmovn_s64(vcgeq_u64(v35, v39));
        v46.i32[0] = v37;
        v46.i32[1] = v37 + 1;
        v46.u64[1] = vorr_s8(vdup_n_s32(v37), 0x300000002);
        v47 = vmlaq_f32(0, vcvtq_f32_u32(v46), v36);
        if (vuzp1_s16(v45, *v35.i8).u8[0])
        {
          *(v40 - 2) = v47.i32[0];
        }

        if (vuzp1_s16(v45, *&v35).i8[2])
        {
          *(v40 - 1) = v47.i32[1];
        }

        if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, *&v38))).i32[1])
        {
          *v40 = v47.i64[1];
        }

        v37 += 4;
        v38 = vaddq_s64(v38, v41);
        v39 = vaddq_s64(v39, v41);
        v40 += 2;
      }

      while (v34 != v37);
      v48 = v22;
      v49 = (v26 >> 1) + 1;
      do
      {
        *v48 = v13(*v48);
        ++v48;
        --v49;
      }

      while (v49);
    }

    v99 = COERCE_INT32X2_T((v13)(v32));
    v50 = v13(v31);
    v52 = (v101 + 1);
    *v53.i32 = (v50 - *v99.i32) / v52;
    if (v100)
    {
      v54 = v103;
      if (!v103)
      {
        goto LABEL_66;
      }

      v55 = 0;
      v56 = vdupq_n_s64(v103 - 1);
      v57 = xmmword_1C9A9FB70;
      v58 = xmmword_1C9A9FB80;
      v51.n128_u64[0] = 0x300000002;
      v59 = vdupq_n_s64(4uLL);
      v60 = vdupq_lane_s32(v53, 0);
      v61 = vdupq_lane_s32(v99, 0);
      v62 = v22 + ((2 * v97) & 0x1FFFFFFFCLL) + 8;
      do
      {
        v63 = vmovn_s64(vcgeq_u64(v56, v58));
        v64.i32[0] = v55;
        v64.i32[1] = v55 + 1;
        v64.u64[1] = vorr_s8(vdup_n_s32(v55), 0x300000002);
        v65 = vmlaq_f32(v61, vcvtq_f32_u32(v64), v60);
        if (vuzp1_s16(v63, *v56.i8).u8[0])
        {
          *(v62 - 4) = v65.i32[0];
        }

        if (vuzp1_s16(v63, *&v56).i8[2])
        {
          *v62 = v65.i32[1];
        }

        if (vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v57))).i32[1])
        {
          *(v62 + 4) = v65.i64[1];
        }

        v55 += 4;
        v57 = vaddq_s64(v57, v59);
        v58 = vaddq_s64(v58, v59);
        v62 += 16;
      }

      while (((v103 + 3) & 0x1FFFFFFFCLL) != v55);
      v66 = &v22[v27];
      v67 = v103;
      do
      {
        *v66 = v14(*v66, v57, v58, v51);
        ++v66;
        --v67;
      }

      while (v67);
    }

    else
    {
      v54 = v103;
      if (!v103)
      {
        goto LABEL_66;
      }

      v68 = 0;
      v69 = vdupq_n_s64(v103 - 1);
      v70 = xmmword_1C9A9FB70;
      v71 = xmmword_1C9A9FB80;
      v72 = vdupq_n_s64(4uLL);
      v73 = vdupq_lane_s32(v53, 0);
      v74 = vdupq_lane_s32(v99, 0);
      v75 = v22 + ((2 * v97) & 0x1FFFFFFFCLL) + 8;
      do
      {
        v76 = vmovn_s64(vcgeq_u64(v69, v71));
        v77.i32[0] = v68;
        v77.i32[1] = v68 + 1;
        v77.u64[1] = vorr_s8(vdup_n_s32(v68), 0x300000002);
        v78 = vmlaq_f32(v74, vcvtq_f32_u32(v77), v73);
        if (vuzp1_s16(v76, *v69.i8).u8[0])
        {
          *(v75 - 4) = v78.i32[0];
        }

        if (vuzp1_s16(v76, *&v69).i8[2])
        {
          *v75 = v78.i32[1];
        }

        if (vuzp1_s16(*&v69, vmovn_s64(vcgeq_u64(v69, *&v70))).i32[1])
        {
          *(v75 + 4) = v78.i64[1];
        }

        v68 += 4;
        v70 = vaddq_s64(v70, v72);
        v71 = vaddq_s64(v71, v72);
        v75 += 16;
      }

      while (((v103 + 3) & 0x1FFFFFFFCLL) != v68);
    }

    v54 = v103;
    if (v52 < 2)
    {
LABEL_75:
      v107(v24, v24, v27, &v22[v27], v54);
      vDSP_hann_window(v22, *(a2 + 32), 0);
      v92 = malloc_type_malloc(4 * *(a2 + 40), 0x100004052888210uLL);
      v29 = v92;
      if (v92)
      {
        bzero(v92, 4 * *(a2 + 40));
        memcpy(&v29[4 * v98], v22, 4 * (v106 - v98));
        v28 = 1;
      }

      else
      {
        v28 = 0;
      }

      LODWORD(v11) = v102;
      goto LABEL_79;
    }

LABEL_66:
    v79 = 0;
    v80 = 1;
    do
    {
      v81 = &v24[4 * v79];
      v82 = &v33[v80];
      v83 = *(v82 - 1);
      v84 = *v82;
      v85 = v33[++v80];
      v86 = v85 - *v82;
      v87 = *v82 - v83;
      v88 = v22;
      v89 = v27;
      do
      {
        v90 = *v88;
        v91 = 0.0;
        if (*v88 > v83)
        {
          if (v90 >= v84)
          {
            if (v90 < v85)
            {
              v91 = (v85 - v90) / v86;
            }
          }

          else
          {
            v91 = (v90 - v83) / v87;
          }
        }

        *v81++ = v91;
        ++v88;
        --v89;
      }

      while (v89);
      v79 += v27;
    }

    while (v80 != v52);
    goto LABEL_75;
  }

  v28 = 0;
  v29 = 0;
LABEL_80:
  v30 = v105;
LABEL_81:
  v93 = *(a2 + 20);
  v94 = *(a2 + 28);
  v95 = *(a2 + 44) + v94.i32[2];
  *a1 = *(a2 + 4);
  *(a1 + 4) = vuzp1q_s32(v94, vrev64q_s32(v94));
  *(a1 + 20) = v95;
  *(a1 + 24) = Setup;
  *(a1 + 32) = v24;
  *(a1 + 40) = v29;
  *(a1 + 48) = v93;
  *(a1 + 56) = v30;
  *(a1 + 64) = v11;
  if ((v28 & 1) == 0)
  {
    sub_1C9A69248(a1);
  }

  if (v22)
  {
    free(v22);
  }

  return v28;
}

void sub_1C9A69248(uint64_t a1)
{
  vDSP_DFT_DestroySetup(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {
    free(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    free(v3);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_1C9A692A0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *v16 = 0;
  *v14 = 0u;
  *v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v7;
  v10[2] = *(a4 + 32);
  v11 = *(a4 + 48);
  if (sub_1C9A68B3C(&v12, v10))
  {
    v8 = sub_1C9A68890(a1, a2, a3, v14[0], v12, v13, SDWORD1(v13), *(&v13 + 1), *v15, v14[1], SHIDWORD(v12), SDWORD2(v12), DWORD1(v12), v15[1], v16[0]);
  }

  else
  {
    v8 = 0;
  }

  sub_1C9A69248(&v12);
  return v8;
}

void *sub_1C9A6936C(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x10A0040C3289421uLL);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  if ((sub_1C9A68B3C(v2, v5) & 1) == 0)
  {
    free(v2);
    return 0;
  }

  return v2;
}

void sub_1C9A693E4(void *a1)
{
  sub_1C9A69248(a1);

  free(a1);
}

id sub_1C9A694C0(void *a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = SNDSPGraph;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  if (v3)
  {
    v4 = *a2;
    if (!*a2)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_initWithDSPGraph_ object:v3 file:@"SNDSPGraph.mm" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"graph"}];

      v4 = *a2;
    }

    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(v3 + 2);
    *(v3 + 1) = v4;
    *(v3 + 2) = v5;
    if (v6)
    {
      sub_1C9A4E570(v6);
    }
  }

  return v3;
}

uint64_t sub_1C9A695C8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = &unk_1F4952310;
  v5 = 0;
  v6 = &v4;
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DSPGraph::Graph::setSliceDuration();
  if (v1)
  {
    sub_1C9A4E570(v1);
  }

  v2 = 1;
  sub_1C9A67A80(&v4);
  return v2;
}

void sub_1C9A69690(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (v20)
    {
      sub_1C9A4E570(v20);
    }

    if (a2 == 4)
    {
      v23 = __cxa_begin_catch(a1);
      v24 = *(v23 + 2);
      a11 = v24;
      v25 = sub_1C9A779E4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = v23 + 72;
        if (v23[95] < 0)
        {
          v26 = *v26;
        }

        v27 = v23 + 16;
        if (v23[39] < 0)
        {
          v27 = *v27;
        }

        v28 = *(v23 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v24;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v26;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v27;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v28;
        _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v29 = __cxa_begin_catch(a1);
      v25 = sub_1C9A779E4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = (*(*v29 + 16))(v29);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v31 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v32 = *v31;
        a11 = *v31;
        v25 = sub_1C9A779E4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v32;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v25 = sub_1C9A779E4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A6964CLL);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A69970(uint64_t a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v5[0] = &unk_1F4952358;
  v5[1] = 0;
  v5[3] = v5;
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    LODWORD(v3) = *(v2 + 688);
    sub_1C9A4E570(v1);
  }

  else
  {
    LODWORD(v3) = *(v2 + 688);
  }

  v3 = v3;
  sub_1C9A67B00(v5);
  return v3;
}

uint64_t sub_1C9A69A24(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = &unk_1F49523A0;
    v6 = 0;
    v7 = &v5;
    v2 = *(a1 + 8);
    v1 = *(a1 + 16);
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      v3 = *(v2 + 761);
      sub_1C9A4E570(v1);
    }

    else
    {
      v3 = *(v2 + 761);
    }

    sub_1C9A67A80(&v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C9A69AD8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = &unk_1F49523E8;
    v6 = 0;
    v7 = &v5;
    v2 = *(a1 + 8);
    v1 = *(a1 + 16);
    if (v1)
    {
      atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
      v3 = *(v2 + 762);
      sub_1C9A4E570(v1);
    }

    else
    {
      v3 = *(v2 + 762);
    }

    sub_1C9A67A80(&v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C9A69B8C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = &unk_1F4952430;
  v7 = 0;
  v8 = &v6;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DSPGraph::Graph::configure(v2);
  if (v3)
  {
    sub_1C9A4E570(v3);
  }

  v4 = 1;
  sub_1C9A67A80(&v6);
  return v4;
}

void sub_1C9A69C54(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (v20)
    {
      sub_1C9A4E570(v20);
    }

    if (a2 == 4)
    {
      v23 = __cxa_begin_catch(a1);
      v24 = *(v23 + 2);
      a11 = v24;
      v25 = sub_1C9A779E4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = v23 + 72;
        if (v23[95] < 0)
        {
          v26 = *v26;
        }

        v27 = v23 + 16;
        if (v23[39] < 0)
        {
          v27 = *v27;
        }

        v28 = *(v23 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v24;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v26;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v27;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v28;
        _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v29 = __cxa_begin_catch(a1);
      v25 = sub_1C9A779E4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = (*(*v29 + 16))(v29);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v31 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v32 = *v31;
        a11 = *v31;
        v25 = sub_1C9A779E4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v32;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v25 = sub_1C9A779E4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A69C10);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A69F34(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = &unk_1F4952478;
  v7 = 0;
  v8 = &v6;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DSPGraph::Graph::initialize(v2);
  if (v3)
  {
    sub_1C9A4E570(v3);
  }

  v4 = 1;
  sub_1C9A67A80(&v6);
  return v4;
}

void sub_1C9A6A000(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (v20)
    {
      sub_1C9A4E570(v20);
    }

    if (a2 == 4)
    {
      v23 = __cxa_begin_catch(a1);
      v24 = *(v23 + 2);
      a11 = v24;
      v25 = sub_1C9A779E4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = v23 + 72;
        if (v23[95] < 0)
        {
          v26 = *v26;
        }

        v27 = v23 + 16;
        if (v23[39] < 0)
        {
          v27 = *v27;
        }

        v28 = *(v23 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v24;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v26;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v27;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v28;
        _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v29 = __cxa_begin_catch(a1);
      v25 = sub_1C9A779E4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = (*(*v29 + 16))(v29);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v31 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v32 = *v31;
        a11 = *v31;
        v25 = sub_1C9A779E4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v32;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v25 = sub_1C9A779E4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A69FBCLL);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A6A2E0(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v9 = &unk_1F49524C0;
      v10 = 0;
      v11 = &v9;
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      DSPGraph::Graph::setAUStrip(v5, v4);
      if (v6)
      {
        sub_1C9A4E570(v6);
      }

      a1 = 1;
      sub_1C9A67A80(&v9);
    }

    else
    {
      v7 = sub_1C9A779E4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9788000, v7, OS_LOG_TYPE_ERROR, "AUStrip is nil", buf, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_1C9A6A6E8(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      v11 = &unk_1F4952508;
      v12 = 0;
      v13 = &v11;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      DSPGraph::Graph::setPropertyStrip(v7, v5, v6);
      if (v8)
      {
        sub_1C9A4E570(v8);
      }

      a1 = 1;
      sub_1C9A67A80(&v11);
    }

    else
    {
      v9 = sub_1C9A779E4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9788000, v9, OS_LOG_TYPE_ERROR, "PropertyStrip is nil", buf, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_1C9A6AB10(uint64_t a1, float *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v8 = &unk_1F4952550;
  v9 = 0;
  v10 = &v8;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = (*(*v4 + 48))(v4, a3);
  if (v5)
  {
    sub_1C9A4E570(v5);
  }

  v6 = 1;
  sub_1C9A67A80(&v8);
  return v6;
}

void sub_1C9A6AC04(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (v20)
    {
      sub_1C9A4E570(v20);
    }

    if (a2 == 4)
    {
      v23 = __cxa_begin_catch(a1);
      v24 = *(v23 + 2);
      a11 = v24;
      v25 = sub_1C9A779E4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = v23 + 72;
        if (v23[95] < 0)
        {
          v26 = *v26;
        }

        v27 = v23 + 16;
        if (v23[39] < 0)
        {
          v27 = *v27;
        }

        v28 = *(v23 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v24;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v26;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v27;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v28;
        _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v29 = __cxa_begin_catch(a1);
      v25 = sub_1C9A779E4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = (*(*v29 + 16))(v29);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v31 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v32 = *v31;
        a11 = *v31;
        v25 = sub_1C9A779E4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v32;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v25 = sub_1C9A779E4();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v25, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A6ABC0);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

id sub_1C9A6AEE4(void *a1, void *a2)
{
  v2 = a1;
  v8[4] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v3 = a2;
  v6 = v3;
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = sub_1C9A6B018;
    v5[3] = &unk_1F49521C0;
    v5[4] = &v7;
    v5[5] = &v6;
    v8[0] = &unk_1F4952290;
    v8[1] = 0;
    v8[3] = v8;
    v2 = sub_1C9A6CAC8(v5);
    sub_1C9A6CFD0(v8);
    v3 = v6;
  }

  return v2;
}

void sub_1C9A6AFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_1C9A6CFD0(v16 - 56);

  _Unwind_Resume(a1);
}

void *sub_1C9A6B018(uint64_t a1)
{
  v2 = [**(a1 + 40) UTF8String];
  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1C9A4E0DC();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v15 = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  *(&__dst + v4) = 0;
  v5 = DSPGraph::Graph::box();
  v6 = v5;
  if (v15 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  v7 = [SNDSPGraphBox alloc];
  v8 = **(a1 + 32);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  __dst = v10;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = sub_1C9A644FC(v7, v6, &__dst);
  if (v14)
  {
    sub_1C9A4E570(v14);
  }

LABEL_15:

  return v11;
}

void sub_1C9A6B178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1C9A6B1B0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

id sub_1C9A6B1C0(uint64_t a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3321888768;
    v3[2] = sub_1C9A6B2D4;
    v3[3] = &unk_1F49521F0;
    v3[4] = &v4;
    v5[0] = &unk_1F4952290;
    v5[1] = 0;
    v5[3] = v5;
    v1 = sub_1C9A6CAC8(v3);
    sub_1C9A6CFD0(v5);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1C9A6B2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1C9A6CFD0(va);
  _Unwind_Resume(a1);
}

id sub_1C9A6B2D4(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  for (i = *(*(**(a1 + 32) + 8) + 24); i; i = *i)
  {
    v4 = [SNDSPGraphBox alloc];
    v5 = i[2];
    v6 = **(a1 + 32);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_1C9A644FC(v4, v5, &v11);
    if (v12)
    {
      sub_1C9A4E570(v12);
    }

    [v2 addObject:{v9, v11}];
  }

  return v2;
}

id sub_1C9A6B3E4(uint64_t a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3321888768;
    v3[2] = sub_1C9A6B4F8;
    v3[3] = &unk_1F4952220;
    v3[4] = &v4;
    v5[0] = &unk_1F4952290;
    v5[1] = 0;
    v5[3] = v5;
    v1 = sub_1C9A6CAC8(v3);
    sub_1C9A6CFD0(v5);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1C9A6B4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1C9A6CFD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A6B4F8(uint64_t a1)
{
  v1 = *(**(a1 + 32) + 8);
  v2 = (v1 + 408);
  if (*(v1 + 431) < 0)
  {
    v2 = *v2;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
}

void sub_1C9A6B534(uint64_t a1, void *a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3321888768;
    v4[2] = sub_1C9A6B64C;
    v4[3] = &unk_1F4952250;
    v4[4] = &v6;
    v4[5] = &v5;
    v7[0] = &unk_1F4951DF8;
    v7[3] = v7;
    sub_1C9A67600(v4);
    sub_1C9A67A00(v7);
    v3 = v5;
  }
}

void sub_1C9A6B628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_1C9A67A00(v16 - 56);

  _Unwind_Resume(a1);
}

std::string *sub_1C9A6B64C(uint64_t a1)
{
  v1 = *(**(a1 + 32) + 8);
  v2 = [**(a1 + 40) UTF8String];

  return sub_1C9A6D10C(v1 + 17, v2);
}

__n128 sub_1C9A6B698(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

uint64_t sub_1C9A6B6A4(uint64_t a1)
{
  v3[11] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3[0] = &unk_1F4952598;
  v3[1] = 0;
  v3[3] = v3;
  v1 = DSPGraph::Graph::numInputs(*(a1 + 8));
  sub_1C9A67B00(v3);
  return v1;
}

void sub_1C9A6B744(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v21 = __cxa_begin_catch(a1);
      v22 = *(v21 + 2);
      a11 = v22;
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = v21 + 72;
        if (v21[95] < 0)
        {
          v24 = *v24;
        }

        v25 = v21 + 16;
        if (v21[39] < 0)
        {
          v25 = *v25;
        }

        v26 = *(v21 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v22;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v24;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v25;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v26;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = (*(*v27 + 16))(v27);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v28;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v29 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v30 = *v29;
        a11 = *v29;
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v30;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A6B700);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A6BA18(uint64_t a1)
{
  v3[11] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3[0] = &unk_1F49525E0;
  v3[1] = 0;
  v3[3] = v3;
  v1 = DSPGraph::Graph::numOutputs(*(a1 + 8));
  sub_1C9A67B00(v3);
  return v1;
}

void sub_1C9A6BAB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 buf, int *a17, __int128 a18, int a19, int a20)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v21 = __cxa_begin_catch(a1);
      v22 = *(v21 + 2);
      a11 = v22;
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = v21 + 72;
        if (v21[95] < 0)
        {
          v24 = *v24;
        }

        v25 = v21 + 16;
        if (v21[39] < 0)
        {
          v25 = *v25;
        }

        v26 = *(v21 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v22;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a17 = &a11;
        LOWORD(a18) = 2080;
        *(&a18 + 2) = v24;
        WORD5(a18) = 2080;
        *(&a18 + 12) = v25;
        LOWORD(a20) = 1024;
        *(&a20 + 2) = v26;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v27 = __cxa_begin_catch(a1);
      v23 = sub_1C9A779E4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = (*(*v27 + 16))(v27);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v28;
        _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v29 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v30 = *v29;
        a11 = *v29;
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v30;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a17 = &a11;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v23 = sub_1C9A779E4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v23, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a15)
    {
      (*(*a15 + 48))(a15);
      JUMPOUT(0x1C9A6BA74);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

void *sub_1C9A6BD8C(void *a1)
{
  v1 = a1;
  v8[11] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8[0] = &unk_1F4952628;
    v8[1] = 0;
    v8[3] = v8;
    v2 = [SNDSPGraphBox alloc];
    v3 = DSPGraph::Graph::in(v1[1]);
    v4 = v1[2];
    v6 = v1[1];
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v1 = sub_1C9A644FC(v2, v3, &v6);
    if (v7)
    {
      sub_1C9A4E570(v7);
    }

    sub_1C9A6DA84(v8);
  }

  return v1;
}

void sub_1C9A6BE84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 buf, int *a19, __int128 a20, int a21, int a22)
{
  if (a2)
  {
    if (a13)
    {
      sub_1C9A4E570(a13);
    }

    if (a2 == 4)
    {
      v24 = __cxa_begin_catch(a1);
      v25 = *(v24 + 2);
      a11 = v25;
      v26 = sub_1C9A779E4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = v24 + 72;
        if (v24[95] < 0)
        {
          v27 = *v27;
        }

        v28 = v24 + 16;
        if (v24[39] < 0)
        {
          v28 = *v28;
        }

        v29 = *(v24 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v25;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a19 = &a11;
        LOWORD(a20) = 2080;
        *(&a20 + 2) = v27;
        WORD5(a20) = 2080;
        *(&a20 + 12) = v28;
        LOWORD(a22) = 1024;
        *(&a22 + 2) = v29;
        _os_log_impl(&dword_1C9788000, v26, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v30 = __cxa_begin_catch(a1);
      v26 = sub_1C9A779E4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v31 = (*(*v30 + 16))(v30);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_1C9788000, v26, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v32 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v33 = *v32;
        a11 = *v32;
        v26 = sub_1C9A779E4();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v33;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a19 = &a11;
          _os_log_impl(&dword_1C9788000, v26, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v26 = sub_1C9A779E4();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v26, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a17)
    {
      (*(*a17 + 48))(a17);
      objc_claimAutoreleasedReturnValue();
      JUMPOUT(0x1C9A6BE38);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

void *sub_1C9A6C178(void *a1)
{
  v1 = a1;
  v8[11] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8[0] = &unk_1F4952670;
    v8[1] = 0;
    v8[3] = v8;
    v2 = [SNDSPGraphBox alloc];
    v3 = DSPGraph::Graph::out(v1[1]);
    v4 = v1[2];
    v6 = v1[1];
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v1 = sub_1C9A644FC(v2, v3, &v6);
    if (v7)
    {
      sub_1C9A4E570(v7);
    }

    sub_1C9A6DA84(v8);
  }

  return v1;
}

void sub_1C9A6C270(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 buf, int *a19, __int128 a20, int a21, int a22)
{
  if (a2)
  {
    if (a13)
    {
      sub_1C9A4E570(a13);
    }

    if (a2 == 4)
    {
      v24 = __cxa_begin_catch(a1);
      v25 = *(v24 + 2);
      a11 = v25;
      v26 = sub_1C9A779E4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = v24 + 72;
        if (v24[95] < 0)
        {
          v27 = *v27;
        }

        v28 = v24 + 16;
        if (v24[39] < 0)
        {
          v28 = *v28;
        }

        v29 = *(v24 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v25;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a19 = &a11;
        LOWORD(a20) = 2080;
        *(&a20 + 2) = v27;
        WORD5(a20) = 2080;
        *(&a20 + 12) = v28;
        LOWORD(a22) = 1024;
        *(&a22 + 2) = v29;
        _os_log_impl(&dword_1C9788000, v26, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v30 = __cxa_begin_catch(a1);
      v26 = sub_1C9A779E4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v31 = (*(*v30 + 16))(v30);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_1C9788000, v26, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v32 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v33 = *v32;
        a11 = *v32;
        v26 = sub_1C9A779E4();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v33;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a19 = &a11;
          _os_log_impl(&dword_1C9788000, v26, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v26 = sub_1C9A779E4();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v26, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a17)
    {
      (*(*a17 + 48))(a17);
      objc_claimAutoreleasedReturnValue();
      JUMPOUT(0x1C9A6C224);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A6C564(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](result, sel_preflight_outputFrameCount_error_);
  }

  return result;
}

void sub_1C9A6C680(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 buf)
{
  __cxa_begin_catch(a1);
  v21 = sub_1C9A779E4();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    buf = 0;
    _os_log_impl(&dword_1C9788000, v21, OS_LOG_TYPE_ERROR, "Failed to preflight DSPGraph", &buf, 2u);
  }

  if (v20)
  {
    *v20 = [SNError errorWithCode:2 underlyingError:0 message:@"Failed to preflight DSPGraph"];
  }

  *v19 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1C9A6C60CLL);
}

void *sub_1C9A6C71C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    return [result processInputBufferList:a2 inputFrameCount:a3 atSourcePosition:a4 to:a5 outputFrameCapacity:a6 outputFrameCount:a7 atDestinationPosition:a8 error:0];
  }

  return result;
}

void sub_1C9A6C910(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2)
  {
    v22 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v23 = v22;
      v24 = sub_1C9A779E4();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = v23 + 72;
        if (v23[95] < 0)
        {
          v25 = *v25;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1C9788000, v24, OS_LOG_TYPE_ERROR, "Caught DSPGraph Exception: %s", &buf, 0xCu);
      }

      if (v20)
      {
        v26 = v23 + 72;
        if (v23[95] < 0)
        {
          v26 = *v26;
        }

        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
        *v20 = [SNError errorWithCode:2 underlyingError:0 message:v27];
      }

      *v19 = 0;
      __cxa_end_catch();
    }

    else
    {
      v28 = sub_1C9A779E4();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9788000, v28, OS_LOG_TYPE_ERROR, "Failed to process DSPGraph", &buf, 2u);
      }

      if (v20)
      {
        *v20 = [SNError errorWithCode:2 underlyingError:0 message:@"Failed to process DSPGraph"];
      }

      *v19 = 0;
      __cxa_end_catch();
    }

    JUMPOUT(0x1C9A6C850);
  }

  _Unwind_Resume(a1);
}

id sub_1C9A6CAC8(void *a1)
{
  v1 = a1;
  v2 = v1[2]();

  return v2;
}

void sub_1C9A6CB60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, __int128 buf, int *a13, __int128 a14, int a15, int a16)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v18 = __cxa_begin_catch(a1);
      v19 = *(v18 + 2);
      a11 = v19;
      v20 = sub_1C9A779E4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v18 + 72;
        if (v18[95] < 0)
        {
          v21 = *v21;
        }

        v22 = v18 + 16;
        if (v18[39] < 0)
        {
          v22 = *v22;
        }

        v23 = *(v18 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v19;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a13 = &a11;
        LOWORD(a14) = 2080;
        *(&a14 + 2) = v21;
        WORD5(a14) = 2080;
        *(&a14 + 12) = v22;
        LOWORD(a16) = 1024;
        *(&a16 + 2) = v23;
        _os_log_impl(&dword_1C9788000, v20, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v24 = __cxa_begin_catch(a1);
      v20 = sub_1C9A779E4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = (*(*v24 + 16))(v24);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1C9788000, v20, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v26 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v27 = *v26;
        a11 = *v26;
        v20 = sub_1C9A779E4();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v27;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a13 = &a11;
          _os_log_impl(&dword_1C9788000, v20, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v20 = sub_1C9A779E4();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v20, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    sub_1C9A6CE14(v16);
    objc_claimAutoreleasedReturnValue();
    JUMPOUT(0x1C9A6CB10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A6CE14(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1C9A56FAC();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1C9A6CE88(uint64_t a1)
{

  JUMPOUT(0x1CCA92400);
}

id sub_1C9A6CF3C(uint64_t a1, void *a2)
{
  *a2 = &unk_1F4952290;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1C9A6CF8C(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1C9A6CFD0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

std::string *sub_1C9A6D050(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_1C9A6D10C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1C9A6D050(a1, __s, v4);
}

void sub_1C9A6D158(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA92400);
}

uint64_t sub_1C9A6D190(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1C9A6D238(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952310;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A6D2E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4952358;
  a2[1] = v2;
  return result;
}

uint64_t sub_1C9A6D388(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F49523A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A6D434(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F49523E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A6D4E0(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952430;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A6D58C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952478;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A6D638(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F49524C0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A6D6E4(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952508;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A6D790(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952550;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A6D838(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F4952598;
  a2[1] = v2;
  return result;
}

uint64_t sub_1C9A6D8DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F49525E0;
  a2[1] = v2;
  return result;
}

void sub_1C9A6D93C(uint64_t a1)
{

  JUMPOUT(0x1CCA92400);
}

id sub_1C9A6D9F0(uint64_t a1, void *a2)
{
  *a2 = &unk_1F4952628;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1C9A6DA40(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1C9A6DA84(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1C9A6DB30(uint64_t a1)
{

  JUMPOUT(0x1CCA92400);
}

id sub_1C9A6DBE4(uint64_t a1, void *a2)
{
  *a2 = &unk_1F4952670;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1C9A6DC34(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1C9A6DC78(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v3 = result;
    v4 = result + 16;
    v5 = *(result + 24);
    v6 = *(v2 + 16);
    while (1)
    {
      if (v5 == v4)
      {
        goto LABEL_7;
      }

      if (*(v5 + 16) == v6)
      {
        break;
      }

      v5 = *(v5 + 8);
    }

    if (v5 != v4)
    {
      __assert_rtn("addDownstreamNodes", "SoundAnalysis_ProcessingNode.cpp", 27, "!elementFoundInList(node, mDownstreamNodes)");
    }

LABEL_7:
    (*(*v6 + 16))(&v36);
    (*(*v3 + 24))(&v28, v3);
    if (v36 != v28 || v37 != v29 || v39 != v31 || v40 != v32 || v42 != v34 || v43 != v35)
    {
LABEL_82:
      __assert_rtn("addDownstreamNodes", "SoundAnalysis_ProcessingNode.cpp", 31, "CA::StreamDescription::IsEquivalent(node->upstreamFB().format, downstreamFB().format)");
    }

    v7 = v38;
    if (v37 != 1819304813)
    {
      v11 = v30;
LABEL_79:
      if (v7 == v11)
      {
        operator new();
      }

      goto LABEL_82;
    }

    v8 = v38 & 0x7FFFFFFF;
    if ((v38 & 0x7FFFFFFF) == 0)
    {
      v8 = v38;
    }

    if (v41)
    {
      if ((v38 & 0x20) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = v42;
      }

      if (v9)
      {
        v9 = 8 * (v41 / v9);
        v10 = v9 == v43;
        goto LABEL_25;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v43 == 0;
LABEL_25:
    v12 = v10;
    v13 = v8 & 0xFFFFFFBF;
    if (v12)
    {
      v14 = v13 | 8;
    }

    else
    {
      v14 = v13;
    }

    v15 = v43 & 7;
    v16 = v9 == v43 && v15 == 0;
    v7 = v14 & 0xFFFFFFAF;
    if (!v16)
    {
      v7 = v14;
    }

    if (v7)
    {
      v7 &= 0xFFFFFFBB;
    }

    if ((v7 & 8) != 0 && v43 <= 8)
    {
      v7 &= 2u;
    }

    if (v42 == 1)
    {
      v7 &= ~0x20u;
    }

    if (!v7)
    {
      v7 = 0x80000000;
    }

    v18 = v33;
    v19 = v30 & 0x7FFFFFFF;
    if ((v30 & 0x7FFFFFFF) == 0)
    {
      v19 = v30;
    }

    if (v33)
    {
      if ((v30 & 0x20) != 0)
      {
        v20 = 1;
      }

      else
      {
        v20 = v42;
      }

      if (v20)
      {
        v18 = 8 * (v33 / v20);
        v21 = v18 == v43;
LABEL_57:
        v22 = v21;
        v23 = v19 & 0xFFFFFFBF;
        if (v22)
        {
          v23 |= 8u;
        }

        v24 = v18 == v43 && v15 == 0;
        v25 = v23 & 0xFFFFFFAF;
        if (!v24)
        {
          v25 = v23;
        }

        if (v25)
        {
          v25 &= 0xFFFFFFBB;
        }

        v26 = (v25 & 8) == 0 || v43 > 8;
        v27 = v25 & 2;
        if (v26)
        {
          v27 = v25;
        }

        if (v42 == 1)
        {
          v11 = v27 & 0xFFFFFFDF;
        }

        else
        {
          v11 = v27;
        }

        if (!v11)
        {
          v11 = 0x80000000;
        }

        goto LABEL_79;
      }

      v18 = 0;
    }

    v21 = v43 == 0;
    goto LABEL_57;
  }

  return result;
}

uint64_t sub_1C9A6DF88(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v4 = result;
    v5 = result + 16;
    do
    {
      v6 = *(v4 + 24);
      if (v6 == v5)
      {
        goto LABEL_10;
      }

      while (*(v6 + 16) != *(v2 + 16))
      {
        v6 = *(v6 + 8);
        if (v6 == v5)
        {
          goto LABEL_10;
        }
      }

      if (v6 == v5)
      {
LABEL_10:
        __assert_rtn("removeDownstreamNodes", "SoundAnalysis_ProcessingNode.cpp", 38, "elementFoundInList(node, mDownstreamNodes)");
      }

      result = sub_1C9A6E030(v5, (v2 + 16));
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_1C9A6E030(uint64_t a1, void *a2)
{
  v11[0] = v11;
  v11[1] = v11;
  v12 = 0;
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_1C9A6E10C(v11, v11, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
    v9 = v12;
  }

  sub_1C9A4ED08(v11);
  return v9;
}

void sub_1C9A6E0F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1C9A4ED08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A6E10C(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

void sub_1C9A6E2A8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_1C9A6E314(uint64_t a1)
{
  *DSPGraph::Box::Box(a1) = &unk_1F49526B8;
  *(a1 + 776) = objc_alloc_init(DSPGCoreMLInfo);
  *(a1 + 784) = 0u;
  *(a1 + 797) = 0;
  return a1;
}

void sub_1C9A6E394(DSPGraph::Box *a1)
{
  v6 = a1;
  v82 = *MEMORY[0x1E69E9840];
  DSPGraph::Box::initialize(a1);
  v7 = *(v6 + 8);
  v8 = *(v6 + 9);
  if (((v8 - v7) & 0x1FFFFFFFE0) != 0x20 || ((*(v6 + 12) - *(v6 + 11)) & 0x1FFFFFFFE0) != 0x20)
  {
    sub_1C9A4DF14(buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
    sub_1C9A4DF14(&v77, "initialize");
    sub_1C9A4DF14(v76, "only supports 1 bus in 1 bus out");
    DSPGraph::ThrowException();
    goto LABEL_100;
  }

  if (v8 == v7)
  {
    sub_1C9A4DF14(buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(&v77, "in");
    v66 = (v6 + 32);
    if (*(v6 + 55) < 0)
    {
      v66 = *v66;
    }

    DSPGraph::strprintf(v76, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v65, v66, (*(v6 + 9) - *(v6 + 8)) >> 5, 0);
    DSPGraph::ThrowException();
    goto LABEL_100;
  }

  v9 = (*(*v7 + 40))(v7);
  v10 = *(v6 + 11);
  if (*(v6 + 12) == v10)
  {
    sub_1C9A4DF14(buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(&v77, "out");
    v68 = (v6 + 32);
    if (*(v6 + 55) < 0)
    {
      v68 = *v68;
    }

    DSPGraph::strprintf(v76, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v67, v68, (*(v6 + 12) - *(v6 + 11)) >> 5, 0);
    DSPGraph::ThrowException();
    goto LABEL_100;
  }

  v5 = *(v9 + 120);
  v11 = *((*(*v10 + 40))(v10) + 120);
  v73 = *(v5 + 28);
  if (v73 >= 2 && (*(v5 + 12) & 0x20) == 0)
  {
    sub_1C9A4DF14(buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
    sub_1C9A4DF14(&v77, "initialize");
    sub_1C9A4DF14(v76, "input format must be deinterleaved");
    DSPGraph::ThrowException();
    goto LABEL_100;
  }

  if (*(v11 + 28) != 1)
  {
    sub_1C9A4DF14(buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
    sub_1C9A4DF14(&v77, "initialize");
    sub_1C9A4DF14(v76, "output must be single channel");
    DSPGraph::ThrowException();
    goto LABEL_100;
  }

  v12 = *v5;
  if (*v5 != *v11)
  {
    sub_1C9A4DF14(buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
    sub_1C9A4DF14(&v77, "initialize");
    sub_1C9A4DF14(v76, "input and output sample rates must match");
    DSPGraph::ThrowException();
    goto LABEL_100;
  }

  if (*(v5 + 8) == 1819304813)
  {
    v13 = *(v6 + 200) * *(v5 + 24);
  }

  else
  {
    v13 = *(v5 + 16);
  }

  *(v6 + 198) = v13;
  if (*(v11 + 8) == 1819304813)
  {
    v14 = *(v6 + 200) * *(v11 + 24);
  }

  else
  {
    v14 = *(v11 + 16);
  }

  *(v6 + 199) = v14;
  v15 = *(v6 + 98);
  if (v15)
  {
    v76[0] = 0;
    v16 = [MEMORY[0x1E695FE90] compileModelAtURL:v15 error:{v76, v12}];
    v3 = v76[0];
    if (v16)
    {
      v78 = v3;
      v2 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v16 error:&v78];
      v75 = v78;

      if (v2)
      {
        v3 = sub_1C9A779E4();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9788000, v3, OS_LOG_TYPE_DEFAULT, "MLModel successfully loaded!", buf, 2u);
        }
      }

      sub_1C9A6E2A8(*(v6 + 97), v2);
    }

    else
    {
      v2 = sub_1C9A779E4();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v6 + 98);
        *buf = 138412546;
        *v80 = v17;
        *&v80[8] = 2112;
        v81 = v3;
        _os_log_impl(&dword_1C9788000, v2, OS_LOG_TYPE_ERROR, "Unable to compile model at %@ with error %@", buf, 0x16u);
      }

      v75 = v3;
    }
  }

  else
  {
    v75 = 0;
  }

  v18 = *(v6 + 97);
  if (!v18 || (v19 = *(v18 + 8)) == 0)
  {
    v37 = sub_1C9A779E4();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v80 = v75;
      _os_log_impl(&dword_1C9788000, v37, OS_LOG_TYPE_ERROR, "No CoreML model set: %@", buf, 0xCu);
    }

    goto LABEL_79;
  }

  v20 = v19;
  v21 = [v20 modelDescription];
  v1 = [v21 inputDescriptionsByName];

  v22 = *(v6 + 97);
  if (v22)
  {
    v23 = *(v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = [v23 modelDescription];
  v2 = [v24 outputDescriptionsByName];

  if (![v1 count] || !-[NSObject count](v2, "count"))
  {
    v3 = sub_1C9A779E4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9788000, v3, OS_LOG_TYPE_ERROR, "MLModel must have at least one feature in and one feature out", buf, 2u);
    }

    goto LABEL_79;
  }

  v25 = *(v6 + 97);
  if (v25)
  {
    v25 = v25[1];
  }

  v26 = v25;
  v27 = [v26 modelDescription];
  v3 = [SNUtils userSuppliedInputFeatureNames:v27];

  if ([v3 count]!= 1)
  {
    v4 = sub_1C9A779E4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v80 = v3;
      _os_log_impl(&dword_1C9788000, v4, OS_LOG_TYPE_ERROR, "MLModel must have only one user defined input. Has %@", buf, 0xCu);
    }

    goto LABEL_78;
  }

  v28 = [v3 firstObject];
  v4 = [v1 objectForKeyedSubscript:v28];

  v29 = [v4 multiArrayConstraint];
  v30 = [SNUtils multiArrayConstraintLastDimensionIsFlexible:v29];

  v72 = v13 >> 2;
  if (!v30)
  {
    v38 = [v4 multiArrayConstraint];
    v39 = [v38 shape];
    v40 = [SNUtils numberOfElements:v39];

    if (v72 * v73 != (v40 & ~(v40 >> 31)))
    {
      v35 = sub_1C9A779E4();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *v80 = v40 & ~(v40 >> 31);
        *&v80[4] = 1024;
        *&v80[6] = v13 >> 2;
        LOWORD(v81) = 1024;
        *(&v81 + 2) = v73;
        v51 = "MLModel input requires %d total elements. CoreMLBox wire block size is %d, with %d channels";
        v52 = v35;
        v53 = 20;
LABEL_76:
        _os_log_impl(&dword_1C9788000, v52, OS_LOG_TYPE_ERROR, v51, buf, v53);
      }

      goto LABEL_77;
    }

LABEL_50:
    v41 = [DSPGMLInputProvider alloc];
    v42 = [v1 allKeys];
    v71 = v4;
    v70 = v42;
    if (!v41)
    {
      goto LABEL_101;
    }

    v77.receiver = v41;
    v77.super_class = DSPGMLInputProvider;
    v43 = [(DSPGraph::Box *)&v77 init];
    if (!v43)
    {
      goto LABEL_69;
    }

    if ([v71 type]== 5)
    {
      objc_storeStrong(&v43[1].isa, v4);
      v44 = [MEMORY[0x1E695DF90] dictionary];
      isa = v43[2].isa;
      v43[2].isa = v44;

      objc_storeStrong(&v43[3].isa, v42);
      v46 = [v71 multiArrayConstraint];
      objc_opt_self();
      if ([SNUtils multiArrayConstraintLastDimensionIsFlexible:v46])
      {
        v47 = [v46 shape];
        v69 = [v47 count];

        v48 = [v46 shape];
        v49 = [v48 mutableCopy];

        v50 = [MEMORY[0x1E696AD98] numberWithInt:v72];
        [v49 setObject:v50 atIndexedSubscript:v69 - 1];
      }

      else
      {
        v49 = [v46 shape];
      }

      v54 = [SNUtils modelBlockSize:v49 channelCount:v73];
      if (v54 == v72)
      {
        v55 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:v49 dataType:65568 error:0];
        v56 = v43[4].isa;
        v43[4].isa = v55;

        if (v43[4].isa)
        {
LABEL_68:

          goto LABEL_69;
        }

        v57 = sub_1C9A779E4();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9788000, v57, OS_LOG_TYPE_ERROR, "Error allocating MLMultiArray", buf, 2u);
        }
      }

      else
      {
        v57 = sub_1C9A779E4();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v72];
          v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v54];
          *buf = 138412546;
          *v80 = v74;
          *&v80[8] = 2112;
          v81 = v58;
          _os_log_impl(&dword_1C9788000, v57, OS_LOG_TYPE_ERROR, "CoreMLBox configured to receive %@ elements. CoreMLModel input expects %@ total elements", buf, 0x16u);
        }
      }
    }

    else
    {
      v49 = sub_1C9A779E4();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9788000, v49, OS_LOG_TYPE_ERROR, "Model must have MLMultiArray features", buf, 2u);
      }
    }

    v49 = v43;
    v43 = 0;
    goto LABEL_68;
  }

  v31 = [v4 multiArrayConstraint];
  v32 = [SNUtils lastDimensionSizeRange:v31];
  v34 = v33;

  if (v72 >= v32 && v72 - v32 < v34)
  {
    goto LABEL_50;
  }

  v35 = sub_1C9A779E4();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = [MEMORY[0x1E696B098] valueWithRange:{v32, v34}];
    *buf = 138412546;
    *v80 = v36;
    *&v80[8] = 1024;
    LODWORD(v81) = v72;
    _os_log_impl(&dword_1C9788000, v35, OS_LOG_TYPE_ERROR, "MLModel supports block sizes in range %@. CoreMLBox block size is %d.", buf, 0x12u);
  }

LABEL_77:

LABEL_78:
LABEL_79:
  v61 = sub_1C9A779E4();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9788000, v61, OS_LOG_TYPE_ERROR, "No CoreML model prepared. Bypassing.", buf, 2u);
  }

  while (1)
  {
    v62 = *(v6 + 97);
    if (v62)
    {
      v63 = v62[3];
      v64 = v63;
      v62 = v63 ? *(v63 + 4) : 0;
    }

    else
    {
      v64 = 0;
    }

    v1 = v62;
    v6 = (*(v5 + 28) * *(v6 + 198) == 4 * sub_1C9A6F334([v1 count]));

    if (v6)
    {
      break;
    }

    sub_1C9A4DF14(buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
    sub_1C9A4DF14(&v77, "initialize");
    sub_1C9A4DF14(v76, "MLModel input doesn't match CoreMLBox upstream block size");
    DSPGraph::ThrowException();
LABEL_100:
    __break(1u);
LABEL_101:
    v43 = 0;
LABEL_69:

    v59 = *(v6 + 97);
    if (v59)
    {
      objc_storeStrong((v59 + 24), v43);
    }

    v60 = *(v6 + 97);
    if (!v60 || !*(v60 + 24))
    {
      v35 = sub_1C9A779E4();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      *buf = 0;
      v51 = "Error creating input provider";
      v52 = v35;
      v53 = 2;
      goto LABEL_76;
    }
  }
}

uint64_t sub_1C9A6F334(uint64_t result)
{
  if (result < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1C9A56EEC(exception, "numerical cast overflow: could not retain value in conversion type");
    __cxa_throw(exception, &unk_1F4951A60, MEMORY[0x1E69E5290]);
  }

  return result;
}

uint64_t sub_1C9A6F3AC(uint64_t a1)
{
  v117 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 776);
  if (!v3 || !*(v3 + 8))
  {
    v66 = sub_1C9A779E4();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1C9788000, v66, OS_LOG_TYPE_DEFAULT, "No MLModel, bypassing this process call", &buf, 2u);
    }

    v4 = a1;
    v67 = *(a1 + 88);
    if (*(a1 + 96) == v67)
    {
      sub_1C9A4DF14(&buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(&__p, "out");
      v85 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v85 = *v85;
      }
    }

    else
    {
      v68 = (*(*v67 + 40))(v67);
      bzero(*(*(*(v68 + 56) + 80) + 16), *(a1 + 796));
      v69 = *(a1 + 88);
      if (*(a1 + 96) != v69)
      {
        v70 = *(a1 + 796);
        result = (*(*v69 + 40))(v69);
        *(*(*(result + 56) + 80) + 12) = v70;
        return result;
      }

      sub_1C9A4DF14(&buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(&__p, "out");
      v85 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v85 = *v85;
      }
    }

LABEL_106:
    DSPGraph::strprintf(&v113, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v84, v85, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
    DSPGraph::ThrowException();
    goto LABEL_173;
  }

  v4 = a1;
  v5 = *(a1 + 64);
  if (*(a1 + 72) == v5)
  {
    sub_1C9A4DF14(&buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(&__p, "in");
    v83 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v83 = *v83;
    }

    goto LABEL_85;
  }

  v6 = (*(*v5 + 40))(v5);
  v7 = *(a1 + 88);
  if (*(a1 + 96) == v7)
  {
    sub_1C9A4DF14(&buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(&__p, "out");
    v85 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v85 = *v85;
    }

    goto LABEL_106;
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*v7 + 40))(v7);
  if (!v8)
  {
    __assert_rtn("process", "DSPGraph_CoreMLBox.mm", 231, "inABL");
  }

  v10 = *(v9 + 56);
  i = *(v10 + 80);
  if (!i)
  {
    __assert_rtn("process", "DSPGraph_CoreMLBox.mm", 232, "outABL");
  }

  v11 = *(v8 + 12);
  v4 = a1;
  if (v11 != *(a1 + 792))
  {
    __assert_rtn("process", "DSPGraph_CoreMLBox.mm", 235, "inABL->mBuffers[0].mDataByteSize == mInputNumBytes");
  }

  v12 = *(a1 + 64);
  if (*(a1 + 72) == v12)
  {
    sub_1C9A4DF14(&buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(&__p, "in");
    v83 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v83 = *v83;
    }

LABEL_85:
    DSPGraph::strprintf(&v113, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v82, v83, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    DSPGraph::ThrowException();
    goto LABEL_173;
  }

  v2 = *(*((*(*v12 + 40))(v12) + 120) + 28);
  v13 = *(a1 + 776);
  if (v13)
  {
    isa = *(v13 + 24);
    v4 = isa;
    if (isa)
    {
      isa = isa[4].isa;
    }
  }

  else
  {
    v4 = 0;
    isa = 0;
  }

  v15 = [isa dataType];

  if (v15 != 65568)
  {
    sub_1C9A4DF14(&buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
    sub_1C9A4DF14(&__p, "process");
    sub_1C9A4DF14(&v113, "input data must be Float32");
    DSPGraph::ThrowException();
    goto LABEL_173;
  }

  v16 = *(a1 + 776);
  v102 = v10;
  if (v16)
  {
    v17 = v16[3];
    v4 = v17;
    if (!v17)
    {
      goto LABEL_174;
    }

    v16 = *(v17 + 4);
  }

  else
  {
    v4 = 0;
  }

  while (1)
  {
    v18 = v16;
    v19 = [v18 count];
    sub_1C9A6F334(v19);
    v20 = (*(a1 + 792) * v2);

    if (v20 != 4 * v19)
    {
      v86 = *(a1 + 776);
      if (v86)
      {
        v87 = v86[3];
        v4 = v87;
        if (v87)
        {
          v86 = *(v87 + 4);
        }

        else
        {
          v86 = 0;
        }
      }

      else
      {
        v4 = 0;
      }

      v88 = v86;
      std::to_string(&v111, [v88 count]);
      sub_1C9A70A80(&v112, "Error: Model input size (", &v111);
      sub_1C9A70A20(&v113, &v112, " bytes) doesn't match audio input size (");
      i = &v110;
      std::to_string(&v110, *(a1 + 792));
      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = &v110;
      }

      else
      {
        v89 = v110.__r_.__value_.__r.__words[0];
      }

      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v110.__r_.__value_.__l.__size_;
      }

      v91 = std::string::append(&v113, v89, size);
      v92 = *&v91->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v92;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      v91->__r_.__value_.__r.__words[0] = 0;
      sub_1C9A70A20(&buf, &__p, " bytes)");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v113.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v112.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      sub_1C9A4DF14(&__p, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
      sub_1C9A4DF14(&v113, "process");
      DSPGraph::ThrowException();
      goto LABEL_173;
    }

    HIDWORD(i->__r_.__value_.__r.__words[1]) = *(a1 + 796);
    if (v2)
    {
      i = 0;
      v21 = 16;
      while (1)
      {
        v22 = *(a1 + 64);
        if (*(a1 + 72) == v22)
        {
          break;
        }

        v4 = *(*(*((*(*v22 + 40))(v22) + 56) + 80) + v21);
        v23 = *(a1 + 792);
        v24 = *(a1 + 776);
        if (v24)
        {
          v25 = v24[3];
          v26 = v25;
          if (v25)
          {
            v24 = v25[4];
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v26 = 0;
        }

        v27 = v24;
        v28 = [v27 dataPointer];
        v29 = *(a1 + 792);

        if (v23)
        {
          memmove((v28 + (v29 * i)), v4, v23);
        }

        i = (i + 1);
        v21 += 16;
        if (v2 == i)
        {
          goto LABEL_29;
        }
      }

      sub_1C9A4DF14(&buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(&__p, "in");
      v81 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v81 = *v81;
      }

      goto LABEL_100;
    }

LABEL_29:
    v30 = a1;
    if ((*(a1 + 804) & 1) == 0)
    {
      context = objc_autoreleasePoolPush();
      v31 = *(a1 + 776);
      if (v31)
      {
        v31 = v31[1];
      }

      v32 = v31;
      v33 = *(a1 + 776);
      if (v33)
      {
        v33 = v33[3];
      }

      v34 = v33;
      v35 = objc_alloc_init(MEMORY[0x1E695FF08]);
      v109 = 0;
      v4 = [v32 predictionFromFeatures:v34 options:v35 error:&v109];
      v103 = v109;
      v36 = *(a1 + 776);
      if (v36)
      {
        objc_storeStrong((v36 + 32), v4);
      }

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v37 = *(a1 + 776);
      if (v37)
      {
        v37 = v37[2];
      }

      v38 = v37;
      v39 = [v38 countByEnumeratingWithState:&v105 objects:v115 count:16];
      if (v39)
      {
        v40 = *v106;
        do
        {
          for (i = 0; i != v39; i = (i + 1))
          {
            if (*v106 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v41 = *(a1 + 776);
            if (v41)
            {
              v41 = v41[3];
            }

            v42 = *(*(&v105 + 1) + 8 * i);
            v43 = v41;
            v44 = *(a1 + 776);
            if (v44)
            {
              v44 = v44[4];
            }

            v2 = v44;
            v45 = [v42 sourceFeatureName];
            v46 = [v2 featureValueForName:v45];
            v47 = [v42 destinationFeatureName];
            v48 = v46;
            v4 = v47;
            if (v43)
            {
              [v43[2] setObject:v48 forKeyedSubscript:v4];
            }
          }

          v39 = [v38 countByEnumeratingWithState:&v105 objects:v115 count:16];
        }

        while (v39);
      }

      objc_autoreleasePoolPop(context);
      v49 = *(a1 + 776);
      if (v49)
      {
        v49 = v49[4];
      }

      v50 = v49;
      v51 = v50;
      if (!v50 || v103)
      {
        if (v103)
        {
          v4 = sub_1C9A779E4();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
            *(buf.__r_.__value_.__r.__words + 4) = v103;
            _os_log_impl(&dword_1C9788000, v4, OS_LOG_TYPE_ERROR, "CoreML prediction failed with %@", &buf, 0xCu);
          }
        }

        sub_1C9A4DF14(&buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
        sub_1C9A4DF14(&__p, "process");
        sub_1C9A4DF14(&v113, "prediction failed");
        DSPGraph::ThrowException();
        goto LABEL_173;
      }

      v4 = [v50 featureNames];
      i = ([v4 count]== 0);

      if (i)
      {
        sub_1C9A4DF14(&buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
        sub_1C9A4DF14(&__p, "process");
        sub_1C9A4DF14(&v113, "MLModel output must have only one feature (MLMultiArray)");
        DSPGraph::ThrowException();
        goto LABEL_173;
      }

      v52 = *(a1 + 776);
      if (v52)
      {
        v53 = *(v52 + 8);
      }

      else
      {
        v53 = 0;
      }

      v54 = [v53 modelDescription];
      v55 = [v54 predictedProbabilitiesName];

      v56 = [v51 featureNames];
      v57 = [v56 allObjects];
      v58 = [v57 firstObject];

      v4 = 0;
      if (v55 && v58)
      {
        v4 = [v55 isEqual:v58];
      }

      v59 = [v51 featureNames];
      i = ([v59 count] != 1);

      if (((i | v4) & 1) == 0)
      {
        v2 = [v51 featureNames];
        v60 = [v2 allObjects];
        v4 = [v60 firstObject];
        v61 = [v51 featureValueForName:v4];

        if ([v61 type] != 5)
        {
          sub_1C9A4DF14(&buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
          sub_1C9A4DF14(&__p, "process");
          sub_1C9A4DF14(&v113, "MLModel output must be an MLMultiArray");
          DSPGraph::ThrowException();
          goto LABEL_173;
        }

        v2 = [v61 multiArrayValue];
        v62 = *(*(v102 + 80) + 16);
        v63 = [v2 dataType];
        if (v63 == 65568)
        {
          if (*(a1 + 796) != 4 * sub_1C9A6F334([v2 count]))
          {
            std::to_string(&v111, [v2 count]);
            sub_1C9A70A80(&v112, "Error: Model output size (", &v111);
            sub_1C9A70A20(&v113, &v112, " bytes) doesn't match audio input size (");
            v4 = &v110;
            std::to_string(&v110, *(a1 + 796));
            if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v97 = &v110;
            }

            else
            {
              v97 = v110.__r_.__value_.__r.__words[0];
            }

            if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v98 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v98 = v110.__r_.__value_.__l.__size_;
            }

            v99 = std::string::append(&v113, v97, v98);
            v100 = *&v99->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v100;
            v99->__r_.__value_.__l.__size_ = 0;
            v99->__r_.__value_.__r.__words[2] = 0;
            v99->__r_.__value_.__r.__words[0] = 0;
            sub_1C9A70A20(&buf, &__p, " bytes)");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v110.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v113.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v111.__r_.__value_.__l.__data_);
            }

            goto LABEL_172;
          }

          v72 = v2;
          v73 = [v2 dataPointer];
          v74 = *(a1 + 796);
          if (v74)
          {
            memmove(v62, v73, v74);
          }
        }

        else
        {
          if (v63 != 65600)
          {
            sub_1C9A4DF14(&buf, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
            sub_1C9A4DF14(&__p, "process");
            sub_1C9A4DF14(&v113, "unsupported CoreML data type");
            DSPGraph::ThrowException();
            goto LABEL_173;
          }

          if (*(a1 + 796) != 4 * sub_1C9A6F334([v2 count]))
          {
            std::to_string(&v111, [v2 count]);
            sub_1C9A70A80(&v112, "Error: Model output size (", &v111);
            sub_1C9A70A20(&v113, &v112, " bytes) doesn't match audio input size (");
            v4 = &v110;
            std::to_string(&v110, *(a1 + 796));
            if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = &v110;
            }

            else
            {
              v93 = v110.__r_.__value_.__r.__words[0];
            }

            if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v94 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v94 = v110.__r_.__value_.__l.__size_;
            }

            v95 = std::string::append(&v113, v93, v94);
            v96 = *&v95->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v96;
            v95->__r_.__value_.__l.__size_ = 0;
            v95->__r_.__value_.__r.__words[2] = 0;
            v95->__r_.__value_.__r.__words[0] = 0;
            sub_1C9A70A20(&buf, &__p, " bytes)");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v110.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v113.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v111.__r_.__value_.__l.__data_);
            }

LABEL_172:
            sub_1C9A4DF14(&__p, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_CoreMLBox.mm");
            sub_1C9A4DF14(&v113, "process");
            DSPGraph::ThrowException();
            goto LABEL_173;
          }

          v64 = v2;
          v4 = [v2 dataPointer];
          v65 = [v2 count];
          sub_1C9A6F334(v65);
          vDSP_vdpsp(v4, 1, v62, 1, v65);
        }
      }

      v30 = a1;
    }

    v75 = *(v30 + 8);
    if (*(v30 + 9) == v75)
    {
      sub_1C9A4DF14(&buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(&__p, "in");
      v81 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v81 = *v81;
      }

      goto LABEL_100;
    }

    v76 = (*(*v75 + 40))(v75);
    v77 = *(v30 + 8);
    if (*(v30 + 9) != v77)
    {
      break;
    }

    sub_1C9A4DF14(&buf, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(&__p, "in");
    v81 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v81 = *v81;
    }

LABEL_100:
    DSPGraph::strprintf(&v113, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v80, v81, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    DSPGraph::ThrowException();
LABEL_173:
    __break(1u);
LABEL_174:
    v16 = 0;
  }

  v78 = *(*(v76 + 56) + 72);
  v79 = (*(*v77 + 40))(v77);
  return DSPGraph::Box::propagateFlagsAndTimeStamp(v30, v78, (*(v79 + 56) + 8));
}

void sub_1C9A705D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (*(v61 - 105) < 0)
  {
    operator delete(*(v61 - 128));
  }

  _Unwind_Resume(a1);
}

__n128 sub_1C9A70A20(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_1C9A70A80(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_1C9A70AEC(uint64_t a1, void *a2)
{
  v8 = a2;
  sub_1C9A6E2A8(*(a1 + 776), v8);
  v3 = [v8 modelDescription];
  v4 = [MEMORY[0x1E695DFD8] set];
  v5 = [SNModelMetadataUtils validatedFeedbackConnectionsFromModelDescription:v3 orDefault:v4];
  v6 = *(a1 + 776);
  if (v6)
  {
    objc_storeStrong((v6 + 16), v5);
  }

  v7 = *(a1 + 784);
  *(a1 + 784) = 0;
}

uint64_t sub_1C9A70BE0(uint64_t *a1, int a2, int a3, uint64_t a4, int a5, id *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 != 10000)
  {
    return 4294956417;
  }

  if (a5 != 8)
  {
    return 561211770;
  }

  if (a3)
  {
    return 4294956430;
  }

  if (!a6)
  {
    return 4294956445;
  }

  if (DSPGraph::Box::initialized(a1))
  {
    v9 = sub_1C9A779E4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1C9788000, v9, OS_LOG_TYPE_DEFAULT, "Audio is already running. Model will be loaded next time audio is restarted", &v15, 2u);
    }
  }

  v10 = *a6;
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
  v12 = a1[98];
  a1[98] = v11;

  if (a1[98])
  {
    v13 = sub_1C9A779E4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1C9788000, v13, OS_LOG_TYPE_DEFAULT, "Set CoreMLModel URL at path %@", &v15, 0xCu);
    }

    sub_1C9A6E2A8(a1[97], 0);
  }

  else
  {
    v14 = sub_1C9A779E4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1C9788000, v14, OS_LOG_TYPE_ERROR, "Error creating URL from path: %@", &v15, 0xCu);
    }
  }

  return 0;
}

void sub_1C9A70DE8(id *a1)
{
  sub_1C9A70E54(a1);

  JUMPOUT(0x1CCA92400);
}

double sub_1C9A70E3C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  result = *"xfualmrcxoba";
  *a1 = *"xfualmrcxoba";
  return result;
}

void sub_1C9A70E54(id *a1)
{

  DSPGraph::Box::~Box(a1);
}

uint64_t sub_1C9A7132C(uint64_t a1)
{
  DSPGraph::RingBufferBox::initialize(a1);
  MEMORY[0x1CCA91F00](a1 + 808);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (((v3 - v2) & 0x1FFFFFFFE0) == 0)
  {
    sub_1C9A4DF14(v60, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_ContextBox.cpp");
    sub_1C9A4DF14(v59, "initialize");
    sub_1C9A4DF14(v58, "ContextBox has no inputs");
    v49 = DSPGraph::ThrowException();
    goto LABEL_64;
  }

  if (v3 == v2)
  {
    sub_1C9A4DF14(v60, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v59, "in");
    v53 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v53 = *v53;
    }

    goto LABEL_55;
  }

  v4 = (*(*v2 + 40))(v2);
  v5 = *(a1 + 88);
  if (*(a1 + 96) == v5)
  {
    sub_1C9A4DF14(v60, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v59, "out");
    v55 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v55 = *v55;
    }

    goto LABEL_58;
  }

  v6 = *(v4 + 120);
  v7 = *(v6 + 28);
  v8 = *(v6 + 40);
  v9 = *((*(*v5 + 40))(v5) + 120);
  if (v8 == 1 && *(v9 + 40) == 1)
  {
    sub_1C9A4DF14(v60, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_ContextBox.cpp");
    sub_1C9A4DF14(v59, "validateFormats");
    sub_1C9A4DF14(v58, "Context box can't produce variable output frames.");
    v49 = DSPGraph::ThrowException();
    goto LABEL_64;
  }

  if (v7 != *(v9 + 28))
  {
    sub_1C9A4DF14(v60, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_ContextBox.cpp");
    sub_1C9A4DF14(v59, "validateFormats");
    sub_1C9A4DF14(v58, "input and output channel counts don't match");
    v49 = DSPGraph::ThrowException();
    goto LABEL_64;
  }

  if (*(a1 + 936) <= 1u)
  {
    __assert_rtn("initialize", "DSPGraph_ContextBox.cpp", 67, "mMaxFrames > 1");
  }

  v11 = *(a1 + 64);
  if (*(a1 + 72) == v11)
  {
    sub_1C9A4DF14(v60, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v59, "in");
    v53 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v53 = *v53;
    }

    goto LABEL_55;
  }

  v12 = (*(*v11 + 40))(v11);
  v13 = *(a1 + 88);
  if (*(a1 + 96) == v13)
  {
    sub_1C9A4DF14(v60, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v59, "out");
    v55 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v55 = *v55;
    }

    goto LABEL_58;
  }

  v14 = *(v12 + 120);
  v16 = v14[3];
  v15 = v14[4];
  v17 = v14[6];
  v57 = v14[7];
  v18 = (*(*v13 + 40))(v13);
  v19 = *(a1 + 64);
  if (*(a1 + 72) == v19)
  {
    sub_1C9A4DF14(v60, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v59, "in");
    v53 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v53 = *v53;
    }

LABEL_55:
    DSPGraph::strprintf(v58, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v52, v53, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    v49 = DSPGraph::ThrowException();
LABEL_64:
    __break(1u);
    return MEMORY[0x1EEDEF540](v49, v50, v51);
  }

  v20 = *(v18 + 120);
  v22 = v20[3];
  v21 = v20[4];
  v24 = v20[6];
  v23 = v20[7];
  v25 = DSPGraph::FCBox::upstreamBlockSize(a1);
  v26 = *((*(*v19 + 40))(v19) + 120);
  v27 = *(v26 + 8);
  v28 = v27 == 1718773105 || v27 == 1819304813;
  if (v28 || !*(v26 + 16))
  {
    v15 = v25 * v17;
    if ((v16 & 0x20) == 0)
    {
      v15 /= v57;
    }
  }

  v29 = *(a1 + 88);
  if (*(a1 + 96) == v29)
  {
    sub_1C9A4DF14(v60, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v59, "out");
    v55 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v55 = *v55;
    }

LABEL_58:
    DSPGraph::strprintf(v58, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v54, v55, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
    v49 = DSPGraph::ThrowException();
    goto LABEL_64;
  }

  v30 = DSPGraph::FCBox::upstreamBlockSize(a1);
  v31 = *((*(*v29 + 40))(v29) + 120);
  v32 = *(v31 + 8);
  v33 = v32 == 1718773105 || v32 == 1819304813;
  if (v33 || !*(v31 + 16))
  {
    v21 = v30 * v24;
    if ((v22 & 0x20) == 0)
    {
      v21 /= v23;
    }
  }

  *(a1 + 968) = v15 >> 2;
  *(a1 + 972) = v21 >> 2;
  if (v21 >> 2 < v15 >> 2)
  {
    sub_1C9A4DF14(v60, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_ContextBox.cpp");
    sub_1C9A4DF14(v59, "initialize");
    sub_1C9A4DF14(v58, "number of context frames must be greater than block size");
    v49 = DSPGraph::ThrowException();
    goto LABEL_64;
  }

  v34 = DSPGraph::FCBox::downstreamBlockSize(a1);
  LODWORD(v35) = *(a1 + 968);
  v36 = v34 * v35 / DSPGraph::FCBox::upstreamBlockSize(a1);
  *(a1 + 944) = v36;
  if (vabdd_f64(floor(v36), v36) >= 0.001)
  {
    __assert_rtn("initialize", "DSPGraph_ContextBox.cpp", 96, "isIntegral(mOutputHopSize)");
  }

  v37 = *(a1 + 968);
  *(a1 + 952) = v37;
  v38 = *(a1 + 848);
  *(a1 + 960) = *(v38 + 268);
  v39 = *(v38 + 276);
  v40 = *(a1 + 972);
  v41 = *(v38 + 296);
  if (v41)
  {
    v42 = *(*(a1 + 856) + 296);
    v43 = v41;
    do
    {
      v44 = v43;
      v43 = v42 % v43;
      v42 = v44;
    }

    while (v43);
  }

  else
  {
    v44 = *(*(a1 + 856) + 296);
  }

  v45 = (v40 + v39 * v37);
  v46 = (*(*(a1 + 856) + 296) - v44) * v37 / v41;
  v47 = *(a1 + 968) * DSPGraph::FCBox::downstreamBlockSize(a1);
  v48 = DSPGraph::FCBox::upstreamBlockSize(a1);
  *(a1 + 976) = (v46 + v40 - v47 / v48) & ~((v46 + v40 - v47 / v48) >> 63);
  v49 = a1 + 888;
  v50 = v57;
  v51 = v45;

  return MEMORY[0x1EEDEF540](v49, v50, v51);
}

void sub_1C9A71AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A71BAC(uint64_t a1, int a2, int a3)
{
  *(a1 + 928) = a2;
  *(a1 + 932) = a3;
  return MEMORY[0x1EEDEF590](a1, 0, 0);
}

uint64_t sub_1C9A71BC0(DSPGraph::RingBufferBox *a1)
{
  MEMORY[0x1CCA91F00](a1 + 888);

  return DSPGraph::RingBufferBox::uninitialize(a1);
}

uint64_t sub_1C9A71C08(uint64_t a1, unsigned int a2)
{
  v4 = DSPGraph::FCBox::upstreamBlockSize(a1);
  v5 = *(a1 + 936);
  if (v4 == 1)
  {
    if (v5 < a2)
    {
      __assert_rtn("process", "DSPGraph_ContextBox.cpp", 152, "inNumFrames <= mMaxFrames");
    }

    v6 = *(a1 + 64);
    if (*(a1 + 72) == v6)
    {
      sub_1C9A4DF14(v19, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v18, "in");
      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      goto LABEL_32;
    }

    (*(*v6 + 40))(v6);
    DSPGraph::RingBuffer::write();
    v7 = *(a1 + 64);
    if (*(a1 + 72) == v7)
    {
      sub_1C9A4DF14(v19, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v18, "in");
      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      goto LABEL_32;
    }

    v8 = (*(*v7 + 40))(v7);
    v9 = *(a1 + 64);
    if (*(a1 + 72) == v9)
    {
      sub_1C9A4DF14(v19, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v18, "in");
      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

LABEL_32:
      DSPGraph::strprintf(v17, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v10, v11, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
      result = DSPGraph::ThrowException();
      __break(1u);
      return result;
    }
  }

  else
  {
    if (v5 != a2)
    {
      __assert_rtn("process", "DSPGraph_ContextBox.cpp", 158, "inNumFrames == mMaxFrames");
    }

    v12 = *(a1 + 64);
    if (*(a1 + 72) == v12)
    {
      sub_1C9A4DF14(v19, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v18, "in");
      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      goto LABEL_32;
    }

    (*(*v12 + 40))(v12);
    DSPGraph::RingBuffer::write();
    v13 = *(a1 + 64);
    if (*(a1 + 72) == v13)
    {
      sub_1C9A4DF14(v19, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v18, "in");
      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      goto LABEL_32;
    }

    v8 = (*(*v13 + 40))(v13);
    v9 = *(a1 + 64);
    if (*(a1 + 72) == v9)
    {
      sub_1C9A4DF14(v19, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v18, "in");
      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      goto LABEL_32;
    }
  }

  v14 = *(*(v8 + 56) + 72);
  v15 = (*((*(*v9 + 40))(v9) + 56) + 8);

  return DSPGraph::Box::propagateFlagsAndTimeStamp(a1, v14, v15);
}

void sub_1C9A720AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A72134(uint64_t a1)
{
  v3 = a1 + 88;
  v2 = *(a1 + 88);
  if (*(v3 + 8) == v2)
  {
    sub_1C9A4DF14(v14, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v13, "out");
    v11 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v11 = *v11;
    }
  }

  else
  {
    v4 = (*(*v2 + 40))(v2);
    DSPGraph::Buffer::restoreSizeToCapacity(*(v4 + 56));
    v5 = *(a1 + 88);
    if (*(a1 + 96) == v5)
    {
      sub_1C9A4DF14(v14, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v13, "out");
      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }
    }

    else
    {
      (*(*v5 + 40))(v5);
      DSPGraph::RingBuffer::read();
      v6 = *(a1 + 88);
      if (*(a1 + 96) != v6)
      {
        v7 = *((*(*v6 + 40))(v6) + 56);
        *(v7 + 64) = 1;
        result = DSPGraph::FCBox::downstreamSampleTime(a1);
        *(v7 + 8) = v9;
        return result;
      }

      sub_1C9A4DF14(v14, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v13, "out");
      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }
    }
  }

  DSPGraph::strprintf(v12, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v10, v11, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_1C9A72394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A723F8(uint64_t a1)
{
  if (*(a1 + 936) <= 1u)
  {
    __assert_rtn("selfLatencyInTicks", "DSPGraph_ContextBox.cpp", 183, "mMaxFrames > 1");
  }

  v2 = *(a1 + 976);
  v3 = *(a1 + 960);
  v4 = sub_1C9A5296C(*(*(a1 + 8) + 696));
  v5 = *(a1 + 64);
  if (*(a1 + 72) == v5)
  {
    sub_1C9A4DF14(v12, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v11, "in");
    v8 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf(v10, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v7, v8, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    DSPGraph::ThrowException();
    __break(1u);
LABEL_9:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1C9A56EEC(exception, "numerical cast overflow: could not retain value in conversion type");
    __cxa_throw(exception, &unk_1F4951A60, MEMORY[0x1E69E5290]);
  }

  result = v3 * v2 * v4 / (*(a1 + 952) * **((*(*v5 + 40))(v5) + 120));
  if (result < 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_1C9A725C8(uint64_t a1)
{
  *a1 = &unk_1F4952958;
  DSPGraph::RingBuffer::~RingBuffer((a1 + 888));
  *a1 = MEMORY[0x1E698D890] + 16;
  DSPGraph::RingBuffer::~RingBuffer((a1 + 808));

  DSPGraph::Box::~Box(a1);
}

void sub_1C9A72644(uint64_t a1)
{
  *a1 = &unk_1F4952958;
  DSPGraph::RingBuffer::~RingBuffer((a1 + 888));
  *a1 = MEMORY[0x1E698D890] + 16;
  DSPGraph::RingBuffer::~RingBuffer((a1 + 808));
  DSPGraph::Box::~Box(a1);

  JUMPOUT(0x1CCA92400);
}

double sub_1C9A726F8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  result = *"xfuaxtncxoba";
  *a1 = *"xfuaxtncxoba";
  return result;
}

uint64_t sub_1C9A72724(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v19 = a2;
  objc_opt_self();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = sub_1C9A6B1C0(v19);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v3)
  {
    obj = v2;
    v22 = *v26;
LABEL_3:
    v4 = 0;
    v21 = v3;
    while (1)
    {
      if (*v26 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v25 + 1) + 8 * v4);
      v23 = v5;
      objc_opt_self();
      v6 = v5 ? *(v5 + 1) : 0;
      (*(*v6 + 208))(&v29);
      objc_opt_self();
      v34 = v29;
      LODWORD(v35) = v30;
      objc_opt_self();
      v24 = [MEMORY[0x1E696B098] value:&v34 withObjCType:{"{AudioComponentDescription=IIIII}", v19}];
      objc_opt_self();
      LODWORD(v35) = 0;
      v34 = *"xfualmrcxoba";
      objc_opt_self();
      v7 = [MEMORY[0x1E696B098] value:&v34 withObjCType:"{AudioComponentDescription=IIIII}"];
      *&v34 = v7;
      v31 = *"xfuaftmlxoba";
      v32 = 0;
      objc_opt_self();
      v8 = [MEMORY[0x1E696B098] value:&v31 withObjCType:"{AudioComponentDescription=IIIII}"];
      *(&v34 + 1) = v8;
      v31 = *"xfuaxtncxoba";
      v32 = 0;
      objc_opt_self();
      v9 = [MEMORY[0x1E696B098] value:&v31 withObjCType:"{AudioComponentDescription=IIIII}"];
      v35 = v9;
      v31 = *"xfuapraexoba";
      v32 = 0;
      objc_opt_self();
      v10 = [MEMORY[0x1E696B098] value:&v31 withObjCType:"{AudioComponentDescription=IIIII}"];
      v36 = v10;
      v31 = *"xfuadgisxoba";
      v32 = 0;
      objc_opt_self();
      v11 = [MEMORY[0x1E696B098] value:&v31 withObjCType:"{AudioComponentDescription=IIIII}"];
      v37 = v11;
      v31 = *"xfuapcxexoba";
      v32 = 0;
      objc_opt_self();
      v12 = [MEMORY[0x1E696B098] value:&v31 withObjCType:"{AudioComponentDescription=IIIII}"];
      v38 = v12;
      v31 = *"xfuapraexoba";
      v32 = 0;
      objc_opt_self();
      v13 = [MEMORY[0x1E696B098] value:&v31 withObjCType:"{AudioComponentDescription=IIIII}"];
      v39 = v13;
      v31 = *"xfuamzhsxoba";
      v32 = 0;
      objc_opt_self();
      v14 = [MEMORY[0x1E696B098] value:&v31 withObjCType:"{AudioComponentDescription=IIIII}"];
      v40 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:8];

      v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];

      LOBYTE(v14) = [v16 containsObject:v24];
      if (v14)
      {
        break;
      }

      if (v21 == ++v4)
      {
        v3 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (!v3)
        {
          v17 = 0;
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    v17 = 1;
LABEL_15:
    v2 = obj;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_1C9A72C60(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1C9A72D54;
  v8[3] = &unk_1E8346FF8;
  v5 = v4;
  v9 = v5;
  v6 = sub_1C9A72EA0(SNDSPGraphUtilities, v8, a3);

  return v6;
}

uint64_t sub_1C9A72D54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_10;
  }

  for (i = *(v1 + 8); ; i = 0)
  {
    v3 = *(i + 64);
    if (*(i + 72) != v3)
    {
      break;
    }

    sub_1C9A4DF14(v11, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v10, "in");
    v8 = (i + 32);
    if (*(i + 55) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf(v9, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v7, v8, (*(i + 72) - *(i + 64)) >> 5, 0);
    DSPGraph::ThrowException();
    __break(1u);
LABEL_10:
    ;
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = *(*((*(*v3 + 40))(v3) + 56) + 8);

  return [v4 numberWithDouble:v5];
}

void sub_1C9A72E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A72EA0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1C9A76CC8;
  v13 = &unk_1E8347270;
  v6 = v4;
  v14 = v6;
  v15 = v5;
  v7 = _Block_copy(&v10);
  v8 = [v5 actCatchingExceptions:v7 error:{a3, v10, v11, v12, v13}];

  return v8;
}

id sub_1C9A72FAC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A730D8;
  v12[3] = &unk_1E8347020;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = sub_1C9A72EA0(SNDSPGraphUtilities, v12, a4);

  return v10;
}

void *sub_1C9A730D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_1C9A4DF14(&__p, [*(a1 + 40) UTF8String]);
  v4 = DSPGraph::Graph::addInput();
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    sub_1C9A4E570(v3);
  }

  v5 = [SNDSPGraphBox alloc];
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v9 = sub_1C9A644FC(v5, v4, &v11);
  if (v12)
  {
    sub_1C9A4E570(v12);
  }

  return v9;
}

void sub_1C9A731D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A73214(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A73340;
  v12[3] = &unk_1E8347020;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = sub_1C9A72EA0(SNDSPGraphUtilities, v12, a4);

  return v10;
}

void *sub_1C9A73340(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_1C9A4DF14(&__p, [*(a1 + 40) UTF8String]);
  v4 = DSPGraph::Graph::addOutput();
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    sub_1C9A4E570(v3);
  }

  v5 = [SNDSPGraphBox alloc];
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v9 = sub_1C9A644FC(v5, v4, &v11);
  if (v12)
  {
    sub_1C9A4E570(v12);
  }

  return v9;
}

void sub_1C9A73440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A7347C(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  objc_opt_self();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1C9A735B0;
  v14[3] = &unk_1E8347048;
  v17 = a4;
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v12 = sub_1C9A72EA0(SNDSPGraphUtilities, v14, a5);

  return v12;
}

void sub_1C9A736F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A7374C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  objc_opt_self();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1C9A73880;
  v14[3] = &unk_1E8347070;
  v17 = a4;
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v12 = sub_1C9A72EA0(SNDSPGraphUtilities, v14, a5);

  return v12;
}

void sub_1C9A739D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A73A24(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  objc_opt_self();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1C9A73B58;
  v14[3] = &unk_1E8347048;
  v17 = a4;
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v12 = sub_1C9A72EA0(SNDSPGraphUtilities, v14, a5);

  return v12;
}

void sub_1C9A73C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A73CD4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A73E00;
  v12[3] = &unk_1E8347020;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = sub_1C9A72EA0(SNDSPGraphUtilities, v12, a4);

  return v10;
}

void sub_1C9A73F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A73FA0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_self();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1C9A74104;
  v16[3] = &unk_1E8347098;
  v11 = v10;
  v17 = v11;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v14 = sub_1C9A72EA0(SNDSPGraphUtilities, v16, a5);

  return v14;
}

void sub_1C9A7422C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A74280(float a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  objc_opt_self();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C9A74370;
  v10[3] = &unk_1E83470C0;
  v7 = v6;
  v11 = v7;
  v12 = a1;
  v8 = sub_1C9A74388(SNDSPGraphUtilities, v10, a4);

  return v8;
}

uint64_t sub_1C9A74388(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C9A76EB4;
  v10[3] = &unk_1E8347298;
  v6 = v4;
  v11 = v6;
  v7 = sub_1C9A72EA0(v5, v10, a3);
  v8 = [v7 BOOLValue];

  return v8;
}

id sub_1C9A74480(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1C9A74574;
  v8[3] = &unk_1E83470E8;
  v5 = v4;
  v9 = v5;
  v6 = sub_1C9A72EA0(SNDSPGraphUtilities, v8, a3);

  return v6;
}

id sub_1C9A74574(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_1C9A7EA40(&v13, *(v1 + 800), *(v1 + 808), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 808) - *(v1 + 800)) >> 3));
  v12 = [MEMORY[0x1E695DF70] array];
  v2 = v13;
  for (i = v14; v2 != i; v2 += 3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    [v12 addObject:v3];
    v4 = *v2;
    v5 = v2[1];
    while (v4 != v5)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      [v3 addObject:v6];
      v7 = *v4;
      v8 = v4[1];
      while (v7 != v8)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:*v7];
        [v6 addObject:v9];

        v7 += 2;
      }

      v4 += 3;
    }
  }

  v16 = &v13;
  sub_1C9A776C4(&v16);

  return v12;
}

void sub_1C9A746D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_1C9A776C4(&a14);
  _Unwind_Resume(a1);
}

id sub_1C9A7472C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1C9A74820;
  v8[3] = &unk_1E83470E8;
  v5 = v4;
  v9 = v5;
  v6 = sub_1C9A72EA0(SNDSPGraphUtilities, v8, a3);

  return v6;
}

id sub_1C9A74820(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_1C9A7EA40(&v13, *(v1 + 800), *(v1 + 808), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 808) - *(v1 + 800)) >> 3));
  v12 = [MEMORY[0x1E695DF70] array];
  v2 = v13;
  for (i = v14; v2 != i; v2 += 3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    [v12 addObject:v3];
    v4 = *v2;
    v5 = v2[1];
    while (v4 != v5)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      [v3 addObject:v6];
      v7 = *v4;
      v8 = v4[1];
      while (v7 != v8)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:*(v7 + 4)];
        [v6 addObject:v9];

        v7 += 8;
      }

      v4 += 3;
    }
  }

  v16 = &v13;
  sub_1C9A776C4(&v16);

  return v12;
}

void sub_1C9A74980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_1C9A776C4(&a14);
  _Unwind_Resume(a1);
}

id sub_1C9A749D8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1C9A74ADC;
  v8[3] = &unk_1E8347110;
  v3 = v2;
  v9 = v3;
  v7 = 0;
  v4 = sub_1C9A72EA0(SNDSPGraphUtilities, v8, &v7);
  v5 = v7;

  return v4;
}

id sub_1C9A74AEC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v10 = a2;
  v11 = a3;
  objc_opt_self();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1C9A74C2C;
  v16[3] = &unk_1E8347138;
  v19 = *a6;
  v20 = *(a6 + 4);
  v12 = v10;
  v17 = v12;
  v13 = v11;
  v18 = v13;
  v14 = sub_1C9A72EA0(SNDSPGraphUtilities, v16, a7);

  return v14;
}

void sub_1C9A74D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A74DF0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A74F1C;
  v12[3] = &unk_1E8347020;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = sub_1C9A72EA0(SNDSPGraphUtilities, v12, a4);

  return v10;
}

void sub_1C9A750D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A7514C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A75278;
  v12[3] = &unk_1E8347020;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = sub_1C9A72EA0(SNDSPGraphUtilities, v12, a4);

  return v10;
}

void sub_1C9A753D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A75428(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A75554;
  v12[3] = &unk_1E8347020;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = sub_1C9A72EA0(SNDSPGraphUtilities, v12, a4);

  return v10;
}

void sub_1C9A75678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A756CC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A757E4;
  v12[3] = &unk_1E8347160;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = sub_1C9A74388(SNDSPGraphUtilities, v12, a4);

  return v10;
}

void sub_1C9A75830(float a1, uint64_t a2, void *a3, void *a4)
{
  a3;
  v6 = a4;
  objc_opt_self();
  v7 = [v6 format];
  v8 = [v7 streamDescription];
  v9 = *v8;
  v10 = *(v8 + 16);
  v28 = *(v8 + 32);
  v26 = v9;
  v27 = v10;

  LODWORD(v7) = [v6 frameLength];
  v25 = (v7 - (a1 * [v6 frameLength]));
  v24 = [v6 frameLength];
  v11 = [v6 audioBufferList];
  v21[0] = v26;
  v21[1] = v27;
  v22 = v28;
  __p = sub_1C9A5574C(v21);
  sub_1C9A5978C(__p, 4 * [v6 frameLength]);
  if (*v11)
  {
    v12 = 0;
    v13 = __p;
    v14 = (v11 + 4);
    v15 = (__p + 32);
    do
    {
      v16 = v13[2];
      v17 = *(v14 - 1);
      if (v16)
      {
        v18 = v17 > v16;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        __assert_rtn("CopyDataFrom", "CABufferList.h", 68, "mBufferCapacity == 0 || other.mBuffers[i].mDataByteSize <= mBufferCapacity");
      }

      v19 = *v15;
      v20 = *v14;
      v14 += 2;
      *(v15 - 1) = v17;
      memcpy(v19, v20, v17);
      ++v12;
      v15 += 2;
    }

    while (v12 < *v11);
  }

  operator new();
}

void sub_1C9A75BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  v18 = __p;
  __p = 0;
  if (v18)
  {
    sub_1C9A54D5C(&__p, v18);
  }

  _Unwind_Resume(a1);
}

id sub_1C9A75C44(double a1, uint64_t a2, void *a3, void *a4, char a5, int a6, uint64_t a7)
{
  v12 = a3;
  v13 = a4;
  objc_opt_self();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1C9A75D90;
  v18[3] = &unk_1E8347188;
  v21 = a1;
  v23 = a5;
  v22 = a6;
  v14 = v12;
  v19 = v14;
  v15 = v13;
  v20 = v15;
  v16 = sub_1C9A72EA0(SNDSPGraphUtilities, v18, a7);

  return v16;
}

void sub_1C9A75EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1C9A75F14(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C9A7601C;
  v10[3] = &unk_1E83471B0;
  v5 = v4;
  v11 = v5;
  v12 = a3;
  v9 = 0;
  v6 = sub_1C9A72EA0(SNDSPGraphUtilities, v10, &v9);
  v7 = v9;

  return v6;
}

id sub_1C9A7601C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1C9A58B10(v2, *(a1 + 40));
  sub_1C9A59654(v2);

  return v3;
}

id sub_1C9A7608C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1C9A76180;
  v8[3] = &unk_1E83471D8;
  v5 = v4;
  v9 = v5;
  v6 = sub_1C9A72EA0(SNDSPGraphUtilities, v8, a3);

  return v6;
}

void *sub_1C9A76180(uint64_t a1)
{
  v1 = (*(**(*(a1 + 32) + 8) + 648))(*(*(a1 + 32) + 8));
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id sub_1C9A761F8(uint64_t a1, uint64_t a2)
{
  objc_opt_self();

  return sub_1C9A72EA0(SNDSPGraphUtilities, &unk_1F4952C28, a2);
}

void sub_1C9A762CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1C9A4E570(a11);
  }

  if (a13)
  {
    sub_1C9A4E570(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A762F8(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, __int128 *a7, uint64_t a8)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  objc_opt_self();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v17 = a7[1];
  v27 = *a7;
  v23[2] = sub_1C9A76474;
  v23[3] = &unk_1E8347220;
  v28 = v17;
  v29 = a7[2];
  v18 = v14;
  v24 = v18;
  v19 = v15;
  v25 = v19;
  v20 = v16;
  v26 = v20;
  v30 = a5;
  v31 = a6;
  v21 = sub_1C9A74388(SNDSPGraphUtilities, v23, a8);

  return v21;
}

uint64_t sub_1C9A76474(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v2 = 0;
  }

  DSPGraph::Graph::connect();
  if (v2)
  {
    sub_1C9A4E570(v2);
  }

  return 1;
}

void sub_1C9A7653C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1C9A4E570(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1C9A76554@<D0>(unsigned int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  objc_opt_self();
  if (!a1 || !a2)
  {
    __assert_rtn("floatFormat", "SNDSPGraphUtils.mm", 45, "sampleRate > 0 && blockSize > 0");
  }

  *(a4 + 40) = 0;
  *a4 = a1;
  *(a4 + 8) = xmmword_1C9AD38A0;
  *(a4 + 24) = 4;
  *(a4 + 28) = a3;
  *&result = 32;
  *(a4 + 32) = 32;
  *(a4 + 40) = a2;
  return result;
}

double sub_1C9A765E4@<D0>(unsigned int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  objc_opt_self();
  *(a3 + 40) = 0;
  *a3 = a1;
  *(a3 + 8) = xmmword_1C9AD3B20;
  *&result = 0x100000002;
  *(a3 + 24) = xmmword_1C9AD3B30;
  *(a3 + 40) = a2;
  return result;
}

double sub_1C9A76640@<D0>(unsigned int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>)
{
  objc_opt_self();
  if (!a1 || !a2 || !a3 || !a4)
  {
    __assert_rtn("floatFormatWithContext", "SNDSPGraphUtils.mm", 30, "sampleRate > 0 && blockSize > 0 && contextSize > 0 && channelCount > 0");
  }

  result = a1;
  *a5 = a1;
  *(a5 + 8) = 0x2170636D63;
  *(a5 + 16) = 4 * a3;
  *(a5 + 20) = a2;
  *(a5 + 24) = 0;
  *(a5 + 28) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 40) = a2;
  return result;
}

void sub_1C9A766D8()
{
  v0 = objc_opt_self();
  v1 = DSPGraph::ABIVersion(v0);
  if (v1 != 4)
  {
    v2 = v1;
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AD98] numberWithInt:v2];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:4];
    [v5 handleFailureInMethod:sel_assertDSPGraphABIVersionMatchesExpectation object:v0 file:@"SNDSPGraphUtilities.mm" lineNumber:583 description:{@"DSPGraph ABI runtime/compile-time mismatch (Got: %@, Expected: %@)", v3, v4}];
  }
}

uint64_t sub_1C9A767E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  objc_opt_self();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C9A768D0;
  v10[3] = &unk_1E8347248;
  v7 = v6;
  v11 = v7;
  v12 = a3;
  v8 = sub_1C9A74388(SNDSPGraphUtilities, v10, a4);

  return v8;
}

uint64_t sub_1C9A768D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5 != v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "numerical cast overflow: could not retain value in conversion type");
    exception->__vftable = (MEMORY[0x1E69E55C0] + 16);
    __cxa_throw(exception, &unk_1F4951A60, MEMORY[0x1E69E5290]);
  }

  sub_1C9A7C94C(v3, v5);
  if (v4)
  {
    sub_1C9A4E570(v4);
  }

  return 1;
}

void sub_1C9A76998(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    sub_1C9A4E570(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1C9A76A20(void *a1)
{
  __cxa_begin_catch(a1);
  [SNError populateClientError:v1 withCode:2 underlyingError:0 message:@"caught exception"];
  __cxa_end_catch();
  JUMPOUT(0x1C9A769F8);
}

id sub_1C9A76CC8(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

uint64_t sub_1C9A76EB4(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    return MEMORY[0x1E695E118];
  }

  else
  {
    return 0;
  }
}

id sub_1C9A76EE8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1C9A76FDC;
  v8[3] = &unk_1E8346FF8;
  v5 = v4;
  v9 = v5;
  v6 = sub_1C9A72EA0(SNDSPGraphUtilities, v8, a3);

  return v6;
}

uint64_t sub_1C9A76FDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_10;
  }

  for (i = *(v1 + 8); ; i = 0)
  {
    v3 = *(i + 88);
    if (*(i + 96) != v3)
    {
      break;
    }

    sub_1C9A4DF14(v11, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v10, "out");
    v8 = (i + 32);
    if (*(i + 55) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf(v9, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v7, v8, (*(i + 96) - *(i + 88)) >> 5, 0);
    DSPGraph::ThrowException();
    __break(1u);
LABEL_10:
    ;
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = *(*((*(*v3 + 40))(v3) + 56) + 8);

  return [v4 numberWithDouble:v5];
}

void sub_1C9A770DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A77128(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A77220;
  v12[3] = &unk_1E83472C0;
  v14 = a4;
  v9 = v8;
  v13 = v9;
  v15 = a3;
  v10 = sub_1C9A74388(SNDSPGraphUtilities, v12, a5);

  return v10;
}

uint64_t sub_1C9A77220(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_8;
  }

  for (i = *(v2 + 8); ; i = 0)
  {
    v4 = *(a1 + 48);
    v5 = *(i + 88);
    if (v4 < (*(i + 96) - v5) >> 5)
    {
      break;
    }

    sub_1C9A4DF14(v16, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v15, "out");
    v13 = (i + 32);
    if (*(i + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf(v14, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v12, v13, (*(i + 96) - *(i + 88)) >> 5, v4);
    DSPGraph::ThrowException();
    __break(1u);
LABEL_8:
    ;
  }

  v6 = *((*(*(v5 + 32 * v4) + 40))(v5 + 32 * v4) + 56);
  v7 = *(a1 + 40);
  v8 = *(v6 + 8);
  v9 = *(v6 + 24);
  v10 = *(v6 + 56);
  v7[2] = *(v6 + 40);
  v7[3] = v10;
  *v7 = v8;
  v7[1] = v9;
  return 1;
}

void sub_1C9A77338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A77384(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C9A7749C;
  v12[3] = &unk_1E83472E8;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = sub_1C9A74388(SNDSPGraphUtilities, v12, a4);

  return v10;
}

uint64_t sub_1C9A7749C(uint64_t a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v1 = _Block_copy(*(a1 + 40));
  v3[0] = &unk_1F4952EE8;
  v3[1] = _Block_copy(v1);
  v3[3] = v3;

  DSPGraph::Box::addRenderCallback();
  sub_1C9A77964(v3);
  return 1;
}

void sub_1C9A77568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1C9A77964(va);
  _Unwind_Resume(a1);
}

void sub_1C9A77588(DSPGraph::Box *a1)
{
  DSPGraph::Box::~Box(a1);

  JUMPOUT(0x1CCA92400);
}

double sub_1C9A775CC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  result = *"xfuapcxexoba";
  *a1 = *"xfuapcxexoba";
  return result;
}

uint64_t sub_1C9A775E4(uint64_t result)
{
  if ((*(result + 772) & 2) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "ExceptionBox throws");
    __cxa_throw(exception, &unk_1F4951400, MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t sub_1C9A77654(uint64_t result)
{
  if (*(result + 772))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "ExceptionBox Initialize");
    __cxa_throw(exception, &unk_1F4951400, MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1C9A776C4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_1C9A77738(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1C9A77738(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1C9A7778C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1C9A7778C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_1C9A77810(uint64_t a1)
{

  JUMPOUT(0x1CCA92400);
}

void *sub_1C9A778C4(uint64_t a1, void *a2)
{
  *a2 = &unk_1F4952EE8;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1C9A77914(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1C9A77964(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

id sub_1C9A779E4()
{
  if (qword_1EC3D3528[0] != -1)
  {
    dispatch_once(qword_1EC3D3528, &unk_1F4952F20);
  }

  v1 = qword_1EC3D3520;

  return v1;
}

uint64_t sub_1C9A77A38()
{
  if (+[SNUtils isRunningInDaemon])
  {
    v0 = "soundanalysisd";
  }

  else
  {
    v0 = "";
  }

  qword_1EC3D3520 = os_log_create("com.apple.SoundAnalysis", v0);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1C9A77A98(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  aBlock[5] = MEMORY[0x1E69E9820];
  aBlock[6] = 3221225472;
  aBlock[7] = sub_1C9A77BC8;
  aBlock[8] = &unk_1E8347330;
  v13 = v4;
  v14 = v5;
  v6 = v5;
  v7 = v4;
  v8 = os_state_add_handler();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1C9A77EE0;
  aBlock[3] = &unk_1E8347350;
  aBlock[4] = v8;
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(v9);

  return v10;
}

char *sub_1C9A77BC8(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) == 3)
  {
    v3 = sub_1C9A779E4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&dword_1C9788000, v3, OS_LOG_TYPE_DEBUG, "Collecting state information (title: %@)", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    v20[1] = 0;
    v6 = (*(v5 + 16))();
    v7 = 0;
    v8 = v7;
    if (!v6)
    {
      v17 = sub_1C9A779E4();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&dword_1C9788000, v17, OS_LOG_TYPE_ERROR, "Error capturing state! %@", buf, 0xCu);
      }

      goto LABEL_18;
    }

    v9 = *(a1 + 32);
    v20[0] = v7;
    v10 = v9;
    v11 = v6;
    v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:v20];
    v13 = v12;
    if (v12)
    {
      v14 = malloc_type_calloc(1uLL, [v12 length] + 200, 0x1000040BEF03554uLL);
      if (v14)
      {
        v15 = v10;
        strlcpy(v14 + 136, [v10 UTF8String], 0x40uLL);
        *v14 = 1;
        *(v14 + 1) = [v13 length];
        v16 = v13;
        memcpy(v14 + 200, [v13 bytes], objc_msgSend(v13, "length"));
LABEL_13:

        v18 = v20[0];
        if (v14)
        {
          v8 = v18;
LABEL_19:

          return v14;
        }

        v17 = sub_1C9A779E4();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v18;
          _os_log_impl(&dword_1C9788000, v17, OS_LOG_TYPE_ERROR, "Error preparing captured state! %@", buf, 0xCu);
        }

        v8 = v18;
LABEL_18:

        v14 = 0;
        goto LABEL_19;
      }

      [SNError populateClientError:v20 withCode:1 underlyingError:0 message:@"could not allocate enough memory for serialized state"];
    }

    v14 = 0;
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1C9A77EE8(AT::RingBuffer *a1, void *a2, void *a3)
{
  AT::RingBuffer::GetTimeBounds(v6, a1);
  result = v6[0];
  if (v7 == 1)
  {
    *a2 = v6[0];
    *a3 = v6[1];
    return 0;
  }

  return result;
}

id sub_1C9A77F3C(uint64_t *a1, int a2, void *a3)
{
  LODWORD(v4) = a2;
  v14 = 0;
  v15 = 0;
  sub_1C9A77EE8(a1, &v15, &v14);
  if (v14 < v15)
  {
    __assert_rtn("copyRecentFramesOfAudioRingBufferToAVAudioBuffer", "SNAudioRingBuffer.mm", 38, "sourceBufferStartTime <= sourceBufferEndTime");
  }

  if (v14 - v15 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = (v14 - v15);
  }

  if (v4)
  {
    *a3 = v14 - v4;
    v6 = *(a1 + 1);
    v11 = *a1;
    v12 = v6;
    v13 = a1[4];
    v7 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:&v11];
    v8 = objc_alloc(MEMORY[0x1E6958440]);
    v9 = [v8 initWithPCMFormat:v7 frameCapacity:v4, v11, v12, v13];
    AT::RingBuffer::Fetch(a1, [v9 mutableAudioBufferList]);
    [v9 setFrameLength:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1C9A78074(AT::RingBuffer *a1, AT::RingBuffer *a2)
{
  v8 = 0;
  v9 = 0;
  sub_1C9A77EE8(a1, &v9, &v8);
  if (v8 < v9)
  {
    __assert_rtn("copyRecentFrames", "SNAudioRingBuffer.mm", 57, "sourceBufferStartTime <= sourceBufferEndTime");
  }

  if (*(a2 + 10) >= (v8 - v9))
  {
    v4 = v8 - v9;
  }

  else
  {
    v4 = *(a2 + 10);
  }

  v7 = 0;
  v6 = sub_1C9A77F3C(a1, v4, &v7);
  v5 = [v6 audioBufferList];
  [v6 frameLength];
  AT::RingBuffer::Store(a2, v5);
}

void sub_1C9A782D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  sub_1C9A78DD8((v10 + 48), 0);

  _Unwind_Resume(a1);
}

uint64_t sub_1C9A78310(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

id sub_1C9A7844C(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:*(*(a1 + 32) + 8)];

  return v1;
}

uint64_t sub_1C9A78568(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  if (*(*(v1 + 8) + 40) != v2)
  {
    [v3 streamDescription];
    operator new();
  }

  return 1;
}

void sub_1C9A7862C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1C9A78DD8(va, 0);

  _Unwind_Resume(a1);
}

id sub_1C9A787F4(uint64_t a1)
{
  if (sub_1C9A77EE8(*(*(a1 + 32) + 8), *(a1 + 40), *(a1 + 48)))
  {
    v1 = MEMORY[0x1E695E110];
  }

  else
  {
    v1 = MEMORY[0x1E695E118];
  }

  return v1;
}

id sub_1C9A78A84(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v15 = 0;
  sub_1C9A77EE8(v2, v1, &v15);
  v3 = *v1;
  v4 = v15;
  if (v15 < *v1)
  {
    __assert_rtn("copyAudioRingBufferToAVAudioBuffer", "SNAudioRingBuffer.mm", 25, "outSourceBufferStartTime <= sourceBufferEndTime");
  }

  v5 = *v2;
  v6 = *(v2 + 1);
  v14 = v2[4];
  v12 = v5;
  v13 = v6;
  v7 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:&v12];
  v8 = objc_alloc(MEMORY[0x1E6958440]);
  v9 = (v4 - v3);
  v10 = [v8 initWithPCMFormat:v7 frameCapacity:v9, v12, v13, v14];
  AT::RingBuffer::Fetch(v2, [v10 mutableAudioBufferList]);
  [v10 setFrameLength:v9];

  return v10;
}

uint64_t sub_1C9A78DD8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x1CCA91ED0]();

    JUMPOUT(0x1CCA92400);
  }

  return result;
}

void sub_1C9A78F60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 buf, int *a23, __int128 a24, int a25, __int16 a26)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v28 = __cxa_begin_catch(a1);
      v29 = *(v28 + 2);
      a17 = v29;
      v30 = sub_1C9A779E4();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = v28 + 72;
        if (v28[95] < 0)
        {
          v31 = *v31;
        }

        v32 = v28 + 16;
        if (v28[39] < 0)
        {
          v32 = *v32;
        }

        v33 = *(v28 + 10);
        LODWORD(buf) = 67110402;
        DWORD1(buf) = v29;
        WORD4(buf) = 1040;
        *(&buf + 10) = 4;
        HIWORD(buf) = 2080;
        a23 = &a17;
        LOWORD(a24) = 2080;
        *(&a24 + 2) = v31;
        WORD5(a24) = 2080;
        *(v26 + 36) = v32;
        a26 = 1024;
        *(v26 + 46) = v33;
        _os_log_impl(&dword_1C9788000, v30, OS_LOG_TYPE_ERROR, "Caught graph exception %d %4.4s %s in %s:%i", &buf, 0x32u);
      }
    }

    else if (a2 == 3)
    {
      v34 = __cxa_begin_catch(a1);
      v30 = sub_1C9A779E4();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v35 = (*(*v34 + 16))(v34);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v35;
        _os_log_impl(&dword_1C9788000, v30, OS_LOG_TYPE_ERROR, "std::exception caught: %s.", &buf, 0xCu);
      }
    }

    else
    {
      v36 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v37 = *v36;
        a17 = *v36;
        v30 = sub_1C9A779E4();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109634;
          DWORD1(buf) = v37;
          WORD4(buf) = 1040;
          *(&buf + 10) = 4;
          HIWORD(buf) = 2080;
          a23 = &a17;
          _os_log_impl(&dword_1C9788000, v30, OS_LOG_TYPE_ERROR, "Caught OSStatus exception %d %4.4s", &buf, 0x18u);
        }
      }

      else
      {
        v30 = sub_1C9A779E4();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9788000, v30, OS_LOG_TYPE_ERROR, "Unknown exception caught!", &buf, 2u);
        }
      }
    }

    __cxa_end_catch();
    if (a21)
    {
      (*(*a21 + 48))(a21);
      JUMPOUT(0x1C9A78EFCLL);
    }

    sub_1C9A56FAC();
  }

  _Unwind_Resume(a1);
}

void sub_1C9A7931C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1CCA92400](v2, 0x10A1C4088BA2E40);
  sub_1C9A7A82C(va);
  _Unwind_Resume(a1);
}

id sub_1C9A79350(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = objc_alloc_init(objc_opt_class());
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1C9A794F8;
  v18[3] = &unk_1E8347620;
  v19 = v9;
  v10 = v6;
  v20 = v10;
  v11 = v7;
  v21 = v11;
  v12 = v8;
  v22 = v12;
  v17 = 0;
  v13 = v9;
  v14 = sub_1C9A72EA0(SNDSPGraphUtilities, v18, &v17);
  v15 = v17;

  return v14;
}

id sub_1C9A794F8(uint64_t a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  if (v1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1C9A796B0;
    v9[3] = &unk_1E8347648;
    v9[4] = v1;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13[0] = &unk_1F4952290;
    v13[1] = 0;
    v13[3] = v13;
    v7 = sub_1C9A6CAC8(v9);
    sub_1C9A6CFD0(v13);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1C9A79670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, ...)
{
  va_start(va, a10);
  sub_1C9A6CFD0(va);

  _Unwind_Resume(a1);
}

id sub_1C9A796B0(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1[5] UTF8String];
  sub_1C9A79918(buf, SNDSPGraphInterpreter, a1[6]);
  sub_1C9A79FA0(v5, SNDSPGraphInterpreter, a1[7]);
  DSPGraph::Interpreter::compileFile();
  if (v6)
  {
    operator new();
  }

  v6 = 0;
  v7 = v5;
  sub_1C9A7AA74(&v7);
  sub_1C9A7AC28(buf);
  v3 = sub_1C9A779E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[5];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C9788000, v3, OS_LOG_TYPE_ERROR, "Graph %@ couldn't be compiled", buf, 0xCu);
  }

  return 0;
}

void sub_1C9A79880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    sub_1C9A4E570(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9A79918(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_self();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
          [v9 UTF8String];
          v12 = v10;
          [v10 UTF8String];
          operator new();
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void sub_1C9A79F24(_Unwind_Exception *a1)
{
  sub_1C9A7AC28(v2);

  _Unwind_Resume(a1);
}

void sub_1C9A79FA0(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_self();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v9 UTF8String];
          v13 = *(a1 + 8);
          v12 = *(a1 + 16);
          if (v13 >= v12)
          {
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
            v16 = v15 + 1;
            if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1C9A7AB00();
            }

            v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a1) >> 3);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v16;
            }

            v31 = a1;
            if (v18)
            {
              if (v18 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1C9A53618();
            }

            v27 = 0;
            v28 = 24 * v15;
            v29 = 24 * v15;
            v30 = 0;
            sub_1C9A4DF14((24 * v15), v11);
            v14 = v29 + 24;
            v19 = *(a1 + 8) - *a1;
            v20 = v28 - v19;
            memcpy((v28 - v19), *a1, v19);
            v21 = *a1;
            *a1 = v20;
            *(a1 + 8) = v14;
            v22 = *(a1 + 16);
            *(a1 + 16) = v30;
            v29 = v21;
            v30 = v22;
            v27 = v21;
            v28 = v21;
            sub_1C9A7AB18(&v27);
          }

          else
          {
            sub_1C9A4DF14(*(a1 + 8), v11);
            v14 = v13 + 24;
          }

          *(a1 + 8) = v14;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v6);
  }
}

void sub_1C9A7A20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1C9A7AA74(va);
  _Unwind_Resume(a1);
}

id sub_1C9A7A268(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = objc_alloc_init(objc_opt_class());
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1C9A7A410;
  v18[3] = &unk_1E8347620;
  v19 = v9;
  v10 = v6;
  v20 = v10;
  v11 = v7;
  v21 = v11;
  v12 = v8;
  v22 = v12;
  v17 = 0;
  v13 = v9;
  v14 = sub_1C9A72EA0(SNDSPGraphUtilities, v18, &v17);
  v15 = v17;

  return v14;
}

id sub_1C9A7A410(uint64_t a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  if (v1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1C9A7A5C8;
    v9[3] = &unk_1E8347648;
    v9[4] = v1;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13[0] = &unk_1F4952290;
    v13[1] = 0;
    v13[3] = v13;
    v7 = sub_1C9A6CAC8(v9);
    sub_1C9A6CFD0(v13);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1C9A7A588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, ...)
{
  va_start(va, a10);
  sub_1C9A6CFD0(va);

  _Unwind_Resume(a1);
}

id sub_1C9A7A5C8(id *a1)
{
  [a1[5] UTF8String];
  sub_1C9A79918(buf, SNDSPGraphInterpreter, a1[6]);
  sub_1C9A79FA0(v4, SNDSPGraphInterpreter, a1[7]);
  DSPGraph::Interpreter::compileText();
  if (v6)
  {
    operator new();
  }

  v6 = 0;
  v7 = v4;
  sub_1C9A7AA74(&v7);
  sub_1C9A7AC28(buf);
  v3 = sub_1C9A779E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9788000, v3, OS_LOG_TYPE_ERROR, "Graph couldn't be compiled from text", buf, 2u);
  }

  return 0;
}

void sub_1C9A7A75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_1C9A4E570(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A7A82C(uint64_t a1)
{
  *a1 = MEMORY[0x1E698D898] + 16;
  v2 = a1 + 8;
  v4 = (a1 + 88);
  sub_1C9A7A898(&v4);
  sub_1C9A7A924(a1 + 48);
  sub_1C9A7AA04(v2);
  return a1;
}

void sub_1C9A7A898(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 25);
        v4 -= 6;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1C9A7A924(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1C9A7A984((v2 + 5));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1C9A7A984(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1C9A7AA04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1C9A7A984((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1C9A7AA74(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1C9A7AB18(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1C9A7ABF0(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F4952F50;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1C9A7AC28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1C9A7AC88((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1C9A7AC88(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1C9A7ACE0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1C9A7AC88(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_1C9A7AD2C(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 8);
  v3 = v1 < 0;
  if (v1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (!v3)
  {
    v2 = *(a1 + 23);
  }

  if (v2 > 0x20)
  {
    if (v2 > 0x40)
    {
      v34 = 0x9DDFEA08EB382D69;
      v44 = *(v4 + v2 - 48);
      v43 = *(v4 + v2 - 40);
      v45 = *(v4 + v2 - 24);
      v46 = *(v4 + v2 - 56);
      v47 = *(v4 + v2 - 16);
      v48 = *(v4 + v2 - 8);
      v49 = v46 + v47;
      v50 = 0x9DDFEA08EB382D69 * (v45 ^ ((0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))));
      v51 = 0x9DDFEA08EB382D69 * (v50 ^ (v50 >> 47));
      v52 = *(v4 + v2 - 64) + v2;
      v53 = v44 + v46 + v52;
      v54 = __ROR8__(v53, 44) + v52;
      v55 = __ROR8__(v52 + v43 + v51, 21);
      v56 = v53 + v43;
      v57 = v54 + v55;
      v58 = v49 + *(v4 + v2 - 32) - 0x4B6D499041670D8DLL;
      v59 = v45 + v47 + v58;
      v60 = v59 + v48;
      v61 = __ROR8__(v59, 44) + v58 + __ROR8__(v58 + v43 + v48, 21);
      v63 = *v4;
      v62 = v4 + 4;
      v64 = v63 - 0x4B6D499041670D8DLL * v43;
      v65 = -((v2 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v66 = *(v62 - 3);
        v67 = v64 + v56 + v49 + v66;
        v68 = v62[2];
        v69 = v62[3];
        v70 = v62[1];
        v49 = v70 + v56 - 0x4B6D499041670D8DLL * __ROR8__(v49 + v57 + v68, 42);
        v71 = v51 + v60;
        v72 = *(v62 - 2);
        v73 = *(v62 - 1);
        v74 = *(v62 - 4) - 0x4B6D499041670D8DLL * v57;
        v75 = v74 + v60 + v73;
        v76 = v74 + v66 + v72;
        v56 = v76 + v73;
        v77 = __ROR8__(v76, 44) + v74;
        v78 = (0xB492B66FBE98F273 * __ROR8__(v67, 37)) ^ v61;
        v64 = 0xB492B66FBE98F273 * __ROR8__(v71, 33);
        v57 = v77 + __ROR8__(v75 + v78, 21);
        v79 = v64 + v61 + *v62;
        v60 = v70 + v68 + v79 + v69;
        v61 = __ROR8__(v70 + v68 + v79, 44) + v79 + __ROR8__(v49 + v72 + v79 + v69, 21);
        v62 += 8;
        v51 = v78;
        v65 += 64;
      }

      while (v65);
      v80 = 0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)));
      v81 = v64 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) >> 47));
      v82 = 0x9DDFEA08EB382D69 * (v81 ^ (v78 - 0x4B6D499041670D8DLL * (v49 ^ (v49 >> 47)) - 0x622015F714C7D297 * (v80 ^ (v80 >> 47))));
      v35 = 0x9DDFEA08EB382D69 * (v81 ^ (v82 >> 47) ^ v82);
    }

    else
    {
      v9 = v4 + v2;
      v10 = *(v4 + v2 - 16);
      v11 = *(v4 + v2 - 8);
      v12 = v4[1];
      v13 = *v4 - 0x3C5A37A36834CED9 * (v10 + v2);
      v16 = v4 + 2;
      v14 = v4[2];
      v15 = v16[1];
      v17 = __ROR8__(v13 + v15, 52);
      v18 = __ROR8__(v13, 37);
      v19 = v13 + v12;
      v20 = __ROR8__(v19, 7);
      v21 = v19 + v14;
      v22 = v20 + v18;
      v23 = *(v9 - 4) + v14;
      v24 = v11 + v15;
      v25 = __ROR8__(v24 + v23, 52);
      v26 = v22 + v17;
      v27 = __ROR8__(v23, 37);
      v28 = *(v9 - 3) + v23;
      v29 = __ROR8__(v28, 7);
      v30 = v26 + __ROR8__(v21, 31);
      v31 = v28 + v10;
      v32 = v31 + v24;
      v33 = v21 + v15 + v27 + v29 + v25 + __ROR8__(v31, 31);
      v34 = 0x9AE16A3B2F90404FLL;
      v35 = v30 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) ^ ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) >> 47));
    }

    return (v35 ^ (v35 >> 47)) * v34;
  }

  else
  {
    if (v2 > 0x10)
    {
      v36 = v4[1];
      v37 = 0xB492B66FBE98F273 * *v4;
      v38 = 0x9AE16A3B2F90404FLL * *(v4 + v2 - 8);
      v39 = __ROR8__(v38, 30) + __ROR8__(v37 - v36, 43);
      v40 = v37 + v2 + __ROR8__(v36 ^ 0xC949D7C7509E6557, 20) - v38;
      v41 = 0x9DDFEA08EB382D69 * ((v39 - 0x3C5A37A36834CED9 * *(v4 + v2 - 16)) ^ v40);
      v42 = v40 ^ (v41 >> 47) ^ v41;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    if (v2 >= 9)
    {
      v5 = *v4;
      v6 = *(v4 + v2 - 8);
      v7 = __ROR8__(v6 + v2, v2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) >> 47))) ^ v6;
    }

    if (v2 >= 4)
    {
      v83 = *v4;
      v84 = *(v4 + v2 - 4);
      v85 = 0x9DDFEA08EB382D69 * ((v2 + (8 * v83)) ^ v84);
      v42 = v84 ^ (v85 >> 47) ^ v85;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v2)
    {
      v86 = (0xC949D7C7509E6557 * (v2 | (4 * *(v4 + v2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v4 | (*(v4 + (v2 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v86 ^ (v86 >> 47));
    }
  }

  return result;
}

void sub_1C9A7BC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a15, 8);
  if (a22)
  {
    sub_1C9A4E570(a22);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1C9A7BCB8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void sub_1C9A7BCC8(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_1C9A4E570(v1);
  }
}

uint64_t sub_1C9A7BE54(uint64_t a1)
{
  *&v3[9] = [*(a1 + 32) audioBufferList];
  sub_1C9A4FA2C(*(*(a1 + 40) + 8), v3);
  return 1;
}

uint64_t sub_1C9A7C0F8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) UTF8String];
  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1C9A4E0DC();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v7 = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  *(&__dst + v4) = 0;
  sub_1C9A52A58(v1, &__dst);
  if (v7 < 0)
  {
    operator delete(__dst);
  }

  return 1;
}

void sub_1C9A7C1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9A7C2C4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = v6;
  v6[1] = v6;
  v6[2] = 0;
  memset(v5, 0, sizeof(v5));
  v2 = *(a1 + 32);
  if ([v2 countByEnumeratingWithState:v5 objects:v7 count:16])
  {
    [**(&v5[0] + 1) processingContext];
    operator new();
  }

  v3 = *(*(a1 + 40) + 8);
  sub_1C9A57110(v4, v6);
  sub_1C9A51830(v3, v4);
}

void sub_1C9A7C484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_1C9A56E78(va);
  sub_1C9A56E78(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A7C56C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  sub_1C9A4F70C(v1, v4);
  return 1;
}

uint64_t sub_1C9A7C69C(void *a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a1[5];
  v4 = *(a1[4] + 8);
  if (v3)
  {
    v5 = *(v3 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C9A523B0(v4, a1[6], v5);

  return [v2 numberWithLongLong:v6];
}

id sub_1C9A7C78C(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(*(a1 + 32) + 8) + 208)];

  return v1;
}

void sub_1C9A7C808(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4952F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA92400);
}

void sub_1C9A7C85C(uint64_t *a1)
{
  v2 = a1 + 36;
  v3 = a1[39];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[17] = &unk_1F49513A8;
  sub_1C9A4ED08(a1 + 19);
  sub_1C9A571A4(a1 + 14);
  sub_1C9A57238(a1 + 11);
  sub_1C9A572CC(a1 + 8);
  sub_1C9A56E78(a1 + 5);
  v4 = a1[4];
  if (v4)
  {

    sub_1C9A4E570(v4);
  }
}

void sub_1C9A7C94C(DSPGraph::Graph *a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    while (1)
    {
      v4 = *(a1 + 172);
      v5 = v4 >= v2 ? v2 : v4;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v41 = 1;
      v42 = 0;
      v31 = 0u;
      v35 = 1;
      v36 = 0;
      sub_1C9A7CE74(v5);
      v6 = DSPGraph::Graph::in(a1);
      v7 = *(v6 + 88);
      if (*(v6 + 96) == v7)
      {
        break;
      }

      (*(*v7 + 40))(v7);
      DSPGraph::Graph::preflight();
      if (DSPGraph::Graph::numInputs(a1))
      {
        v8 = DSPGraph::Graph::in(a1);
        v9 = *(v8 + 88);
        if (*(v8 + 96) == v9)
        {
          sub_1C9A4DF14(v48, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v47, "out");
          v26 = (v8 + 32);
          if (*(v8 + 55) < 0)
          {
            v26 = *v26;
          }

          DSPGraph::strprintf(v46, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v25, v26, (*(v8 + 96) - *(v8 + 88)) >> 5, 0);
          DSPGraph::ThrowException();
          goto LABEL_33;
        }

        v10 = *((*(*v9 + 40))(v9) + 120);
        v11 = *(v10 + 4);
        v12 = v10[1];
        v43 = *v10;
        v44 = v12;
        v45 = v11;
        v13 = sub_1C9A5574C(&v43);
        v30 = v13;
        sub_1C9A7CE74(v5);
        sub_1C9A5978C(v13, DWORD2(v44) * v5);
        if (v30)
        {
          v42 = v30 + 16;
        }
      }

      else
      {
        v30 = 0;
      }

      if (DSPGraph::Graph::numOutputs(a1))
      {
        v14 = DSPGraph::Graph::out(a1);
        v15 = *(v14 + 64);
        if (*(v14 + 72) == v15)
        {
          sub_1C9A4DF14(v48, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v47, "in");
          v28 = (v14 + 32);
          if (*(v14 + 55) < 0)
          {
            v28 = *v28;
          }

          DSPGraph::strprintf(v46, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v27, v28, (*(v14 + 72) - *(v14 + 64)) >> 5, 0);
          DSPGraph::ThrowException();
          goto LABEL_33;
        }

        v16 = *((*(*v15 + 40))(v15) + 120);
        v17 = *(v16 + 4);
        v18 = v16[1];
        v43 = *v16;
        v44 = v18;
        v45 = v17;
        v19 = sub_1C9A5574C(&v43);
        __p = v19;
        sub_1C9A7CE74(v5);
        sub_1C9A5978C(v19, DWORD2(v44) * v5);
        if (__p)
        {
          v36 = __p + 16;
        }
      }

      else
      {
        __p = 0;
      }

      DSPGraph::Graph::processMultiple();
      v20 = __p;
      __p = 0;
      if (v20)
      {
        sub_1C9A54D5C(&__p, v20);
      }

      v21 = v30;
      v30 = 0;
      if (v21)
      {
        sub_1C9A54D5C(&v30, v21);
      }

      v22 = __OFSUB__(v2, v5);
      v2 -= v5;
      if ((v2 < 0) ^ v22 | (v2 == 0))
      {
        return;
      }
    }

    sub_1C9A4DF14(&v43, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v48, "out");
    v24 = (v6 + 32);
    if (*(v6 + 55) < 0)
    {
      v24 = *v24;
    }

    DSPGraph::strprintf(v47, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v23, v24, (*(v6 + 96) - *(v6 + 88)) >> 5, 0);
    DSPGraph::ThrowException();
LABEL_33:
    __break(1u);
  }
}

void sub_1C9A7CD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *__p)
{
  v17 = a15;
  a15 = 0;
  if (v17)
  {
    sub_1C9A54D5C(&a15, v17);
  }

  v18 = __p;
  __p = 0;
  if (v18)
  {
    sub_1C9A54D5C(&__p, v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C9A7CE74(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1C9A56EEC(exception, "numerical cast overflow: could not retain value in conversion type");
    __cxa_throw(exception, &unk_1F4951A60, MEMORY[0x1E69E5290]);
  }

  return result;
}

DSPGraph::Box *sub_1C9A7CEE0(DSPGraph::Box *a1, unsigned int a2)
{
  v4 = DSPGraph::Box::Box(a1);
  *v4 = &unk_1F4952FD0;
  sub_1C9A7E770(v4 + 97, a2);
  *(a1 + 50) = 0u;
  *(a1 + 51) = 0u;
  return a1;
}

void sub_1C9A7CF54(uint64_t a1)
{
  v2 = *(a1 + 72) - *(a1 + 64);
  sub_1C9A7D800(a1 + 776, (v2 >> 5));
  v61 = (v2 >> 5);
  sub_1C9A7D9A4(a1 + 800, v61);
  if ((v2 & 0x1FFFFFFFE0) != 0)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 64);
      if (v3 >= (*(a1 + 72) - v4) >> 5)
      {
        break;
      }

      if (*(*((*(*(v4 + 32 * v3) + 40))(v4 + 32 * v3) + 120) + 8) != 1819304813)
      {
        sub_1C9A4DF14(v66, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_SignalDetectorBox.cpp");
        sub_1C9A4DF14(v65, "initialize");
        sub_1C9A4DF14(v64, "inputs must be LPCM");
        DSPGraph::ThrowException();
        goto LABEL_95;
      }

      v5 = *(a1 + 64);
      if (v3 >= (*(a1 + 72) - v5) >> 5)
      {
        sub_1C9A4DF14(v66, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        sub_1C9A4DF14(v65, "in");
        v60 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v60 = *v60;
        }

        goto LABEL_86;
      }

      v6 = (*(*(v5 + 32 * v3) + 40))(v5 + 32 * v3);
      v7 = *(a1 + 776);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 784) - v7) >> 3) <= v3)
      {
LABEL_90:
        sub_1C9A7E9E0();
      }

      v8 = *(*(v6 + 120) + 28);
      v9 = (v7 + 24 * v3);
      v10 = *v9;
      v11 = v9[1];
      v12 = 0xAAAAAAAAAAAAAAABLL * (&v11[-*v9] >> 3);
      v13 = v8 - v12;
      v62 = v3;
      if (v8 <= v12)
      {
        if (v8 < v12)
        {
          v18 = (v10 + 24 * v8);
          while (v11 != v18)
          {
            v20 = *(v11 - 3);
            v11 -= 24;
            v19 = v20;
            if (v20)
            {
              operator delete(v19);
            }
          }

          v9[1] = v18;
        }
      }

      else
      {
        v14 = v9[2];
        if (0xAAAAAAAAAAAAAAABLL * ((v14 - v11) >> 3) < v13)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v10) >> 3);
          v16 = 2 * v15;
          if (2 * v15 <= v8)
          {
            v16 = *(*(v6 + 120) + 28);
          }

          if (v15 >= 0x555555555555555)
          {
            v17 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v17 = v16;
          }

          if (v17 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

LABEL_96:
          sub_1C9A53618();
        }

        bzero(v11, 24 * ((24 * v13 - 24) / 0x18) + 24);
        v9[1] = &v11[24 * ((24 * v13 - 24) / 0x18) + 24];
      }

      v21 = *(a1 + 800);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 808) - v21) >> 3) <= v3)
      {
LABEL_91:
        sub_1C9A7E9E0();
      }

      v22 = v21 + 24 * v3;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v22) >> 3);
      v26 = v8 - v25;
      if (v8 <= v25)
      {
        if (v8 < v25)
        {
          v31 = v23 + 24 * v8;
          if (v24 != v31)
          {
            v32 = *(v22 + 8);
            do
            {
              v34 = *(v32 - 24);
              v32 -= 24;
              v33 = v34;
              if (v34)
              {
                *(v24 - 16) = v33;
                operator delete(v33);
              }

              v24 = v32;
            }

            while (v32 != v31);
          }

          *(v22 + 8) = v31;
        }
      }

      else
      {
        v27 = *(v22 + 16);
        if (0xAAAAAAAAAAAAAAABLL * ((v27 - v24) >> 3) < v26)
        {
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v23) >> 3);
          v29 = 2 * v28;
          if (2 * v28 <= v8)
          {
            v29 = v8;
          }

          if (v28 >= 0x555555555555555)
          {
            v30 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v30 = v29;
          }

          sub_1C9A7E878(v22, v30);
        }

        bzero(*(v22 + 8), 24 * ((24 * v26 - 24) / 0x18) + 24);
        *(v22 + 8) = v24 + 24 * ((24 * v26 - 24) / 0x18) + 24;
      }

      v35 = v62;
      if (v8)
      {
        v36 = 0;
        v37 = 0;
        v63 = 24 * v8;
        while (1)
        {
          v38 = *(a1 + 776);
          if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 784) - v38) >> 3) <= v35)
          {
            goto LABEL_90;
          }

          v40 = (v38 + 24 * v35);
          v39 = *v40;
          if (0xAAAAAAAAAAAAAAABLL * ((v40[1] - *v40) >> 3) <= v37)
          {
            sub_1C9A7E9E0();
          }

          v41 = (v39 + v36);
          v42 = *(a1 + 824);
          v43 = v41[1];
          v44 = v42 - v43;
          if (v42 > v43)
          {
            break;
          }

          v41[1] = v42;
LABEL_76:
          v56 = *(a1 + 800);
          if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 808) - v56) >> 3) <= v35)
          {
            goto LABEL_91;
          }

          v58 = (v56 + 24 * v35);
          v57 = *v58;
          if (0xAAAAAAAAAAAAAAABLL * ((v58[1] - *v58) >> 3) <= v37)
          {
            sub_1C9A7E9E0();
          }

          sub_1C9A7DB48((v57 + v36), *(a1 + 824));
          ++v37;
          v36 += 24;
          if (v63 == v36)
          {
            goto LABEL_82;
          }
        }

        v45 = v41[2];
        if (v45 << 6 >= v44 && v43 <= (v45 << 6) - v44)
        {
          v49 = *v41 + 8 * (v43 >> 6);
          v50 = v41[1] & 0x3F;
          v41[1] = v42;
          if (!v50)
          {
            goto LABEL_72;
          }

LABEL_68:
          if (64 - v50 >= v44)
          {
            v54 = v44;
          }

          else
          {
            v54 = 64 - v50;
          }

          *v49++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v50 - v54)) & (-1 << v50));
          v44 -= v54;
          goto LABEL_72;
        }

        if (v45 << 6 > 0x3FFFFFFFFFFFFFFEuLL)
        {
          goto LABEL_59;
        }

        v47 = v45 << 7;
        v48 = (v42 + 63) & 0x1FFFFFFC0;
        if (v47 > v48)
        {
          v48 = v47;
        }

        if (v48)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            sub_1C9A7E860();
          }

LABEL_59:
          operator new();
        }

        v51 = v43 + v44;
        v52 = *v41;
        v49 = 0;
        if (v43 < 1)
        {
          goto LABEL_65;
        }

        v53 = v43 >> 6;
        if (v43 >= 0x40)
        {
          memmove(0, v52, 8 * v53);
          v51 = v43 + v44;
        }

        v49 = (8 * v53);
        v50 = v43 & 0x3F;
        if (v50)
        {
          *(8 * v53) = *(8 * v53) & ~(0xFFFFFFFFFFFFFFFFLL >> -v50) | *(v52 + v53) & (0xFFFFFFFFFFFFFFFFLL >> -v50);
          *v41 = 0;
          v41[1] = v51;
          v41[2] = 0;
LABEL_67:
          operator delete(v52);
          v35 = v62;
          if (v50)
          {
            goto LABEL_68;
          }
        }

        else
        {
LABEL_65:
          *v41 = 0;
          v41[1] = v51;
          v41[2] = 0;
          if (v52)
          {
            v50 = 0;
            goto LABEL_67;
          }

          v35 = v62;
        }

LABEL_72:
        v55 = v44 >> 6;
        if (v44 >= 0x40)
        {
          bzero(v49, 8 * v55);
        }

        if ((v44 & 0x3F) != 0)
        {
          v49[v55] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v44 & 0x3F));
        }

        goto LABEL_76;
      }

LABEL_82:
      v3 = v35 + 1;
      if (v3 == v61)
      {
        return;
      }
    }

    sub_1C9A4DF14(v66, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v65, "in");
    v60 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v60 = *v60;
    }

LABEL_86:
    DSPGraph::strprintf(v64, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v59, v60, (*(a1 + 72) - *(a1 + 64)) >> 5, v3);
    DSPGraph::ThrowException();
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }
}

void sub_1C9A7D79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9A7D800(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 24 * a2);
      while (v4 != v11)
      {
        v4 -= 3;
        v13 = v4;
        sub_1C9A7E944(&v13);
      }

      *(a1 + 8) = v11;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        sub_1C9A7E878(a1, v10);
      }

      sub_1C9A7E860();
    }

    v12 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(*(a1 + 8), v12);
    *(a1 + 8) = v4 + v12;
  }
}

void sub_1C9A7D9A4(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 24 * a2);
      while (v4 != v11)
      {
        v4 -= 3;
        v13 = v4;
        sub_1C9A77738(&v13);
      }

      *(a1 + 8) = v11;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        sub_1C9A7E878(a1, v10);
      }

      sub_1C9A7E860();
    }

    v12 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(*(a1 + 8), v12);
    *(a1 + 8) = v4 + v12;
  }
}

void sub_1C9A7DB48(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1C9A7E9F8(v10);
      }

      sub_1C9A7E860();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void sub_1C9A7DC5C(uint64_t a1)
{
  sub_1C9A7D800(a1 + 776, ((*(a1 + 72) - *(a1 + 64)) >> 5));
  v2 = ((*(a1 + 72) - *(a1 + 64)) >> 5);

  sub_1C9A7D9A4(a1 + 800, v2);
}

uint64_t sub_1C9A7DCB0(uint64_t a1, unsigned int a2)
{
  v5 = a1 + 64;
  v3 = *(a1 + 64);
  v4 = *(v5 + 8);
  if (((v4 - v3) & 0x1FFFFFFFE0) != 0)
  {
    v6 = a2;
    v7 = 0;
    v8 = (v4 - v3) >> 5;
    v85 = a2;
    do
    {
      if (v8 <= v7)
      {
        sub_1C9A4DF14(v92, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        sub_1C9A4DF14(v91, "in");
        v79 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v79 = *v79;
        }

LABEL_87:
        DSPGraph::strprintf(v90, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v78, v79, (*(a1 + 72) - *(a1 + 64)) >> 5, v7);
        DSPGraph::ThrowException();
LABEL_99:
        __break(1u);
LABEL_100:
        sub_1C9A7E860();
      }

      v9 = (*(*(v3 + 32 * v7) + 40))(v3 + 32 * v7);
      v10 = *(a1 + 64);
      if (v7 >= (*(a1 + 72) - v10) >> 5)
      {
        sub_1C9A4DF14(v92, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        sub_1C9A4DF14(v91, "in");
        v79 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v79 = *v79;
        }

        goto LABEL_87;
      }

      v11 = *(*(v9 + 56) + 80);
      v12 = *((*(*(v10 + 32 * v7) + 40))(v10 + 32 * v7) + 120);
      v86 = *(v12 + 28);
      if (!v86)
      {
        goto LABEL_66;
      }

      v13 = 0;
      v84 = *(v12 + 12);
      v82 = (v11 + 16);
      v83 = v11 + 8;
      do
      {
        v14 = *(a1 + 800);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 808) - v14) >> 3) <= v7)
        {
          goto LABEL_91;
        }

        v16 = (v14 + 24 * v7);
        v15 = *v16;
        if (0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 3) <= v13)
        {
          goto LABEL_92;
        }

        sub_1C9A7DB48((v15 + 24 * v13), 0);
        v17 = *(a1 + 800);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 808) - v17) >> 3) <= v7)
        {
LABEL_91:
          sub_1C9A7E9E0();
        }

        v19 = (v17 + 24 * v7);
        v18 = *v19;
        if (0xAAAAAAAAAAAAAAABLL * ((v19[1] - *v19) >> 3) <= v13)
        {
          goto LABEL_92;
        }

        if (v85 > (*(v18 + 24 * v13 + 16) - *(v18 + 24 * v13)) >> 3)
        {
          __assert_rtn("process", "DSPGraph_SignalDetectorBox.cpp", 56, "mInputSignalRanges.at(busIdx).at(channelIdx).capacity() >= inNumFrames");
        }

        if (!v6)
        {
          goto LABEL_65;
        }

        v20 = 0;
        v21 = 0;
        if ((v84 & 0x20) != 0)
        {
          v22 = 1;
        }

        else
        {
          v22 = v13;
        }

        if ((v84 & 0x20) != 0)
        {
          v23 = (v83 + 16 * v13 + 8);
        }

        else
        {
          v23 = v82;
        }

        v88 = v22;
        v89 = 0;
        while (1)
        {
          v24 = *(a1 + 828);
          v25 = fabsf(*(*v23 + 4 * v21 * v22));
          v26 = v25 > v24;
          v27 = *(a1 + 776);
          if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 784) - v27) >> 3) <= v7)
          {
            sub_1C9A7E9E0();
          }

          v29 = (v27 + 24 * v7);
          v28 = *v29;
          if (0xAAAAAAAAAAAAAAABLL * ((v29[1] - *v29) >> 3) <= v13)
          {
            sub_1C9A7E9E0();
          }

          v30 = (v28 + 24 * v13);
          if (v30[1] <= v21)
          {
            sub_1C9A7E9E0();
          }

          v31 = *v30;
          v32 = v21 >> 6;
          v33 = 1 << v21;
          if (v25 > v24)
          {
            break;
          }

          *(v31 + 8 * v32) &= ~v33;
          v34 = v21 + 1;
          if (v20)
          {
            v35 = *(a1 + 64);
            if (v7 >= (*(a1 + 72) - v35) >> 5)
            {
              sub_1C9A4DF14(v92, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
              sub_1C9A4DF14(v91, "in");
              v79 = (a1 + 32);
              if (*(a1 + 55) < 0)
              {
                v79 = *v79;
              }

              goto LABEL_87;
            }

            v36 = (*(*(v35 + 32 * v7) + 40))(v35 + 32 * v7);
            v37 = *(a1 + 800);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 808) - v37) >> 3) <= v7)
            {
              goto LABEL_91;
            }

            v39 = (v37 + 24 * v7);
            v38 = *v39;
            if (0xAAAAAAAAAAAAAAABLL * ((v39[1] - *v39) >> 3) <= v13)
            {
              goto LABEL_92;
            }

            v40 = *(*(v36 + 56) + 8) + v21;
            v41 = v38 + 24 * v13;
            v42 = *(v41 + 8);
            v43 = *(v41 + 16);
            if (v42 >= v43)
            {
              v47 = *v41;
              v48 = v42 - *v41;
              v49 = v48 >> 3;
              v50 = (v48 >> 3) + 1;
              if (v50 >> 61)
              {
                goto LABEL_100;
              }

              v51 = v43 - v47;
              if (v51 >> 2 > v50)
              {
                v50 = v51 >> 2;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF8)
              {
                v52 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v52 = v50;
              }

              if (v52)
              {
                sub_1C9A7E9F8(v52);
              }

              v53 = (8 * v49);
              *v53 = v89;
              v53[1] = v40;
              v44 = 8 * v49 + 8;
              memcpy(0, v47, v48);
              v54 = *v41;
              *v41 = 0;
              *(v41 + 8) = v44;
              *(v41 + 16) = 0;
              if (v54)
              {
                operator delete(v54);
              }

              v6 = a2;
            }

            else
            {
              *v42 = v89;
              v42[1] = v40;
              v44 = (v42 + 2);
            }

            v22 = v88;
            *(v41 + 8) = v44;
          }

LABEL_47:
          v20 = v26;
          v21 = v34;
          if (v34 >= v6)
          {
            goto LABEL_65;
          }
        }

        *(v31 + 8 * v32) |= v33;
        v34 = v21 + 1;
        if (!v20)
        {
          v45 = *(a1 + 64);
          if (v7 >= (*(a1 + 72) - v45) >> 5)
          {
            sub_1C9A4DF14(v92, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
            sub_1C9A4DF14(v91, "in");
            v79 = (a1 + 32);
            if (*(a1 + 55) < 0)
            {
              v79 = *v79;
            }

            goto LABEL_87;
          }

          v46 = (*(*(v45 + 32 * v7) + 40))(v45 + 32 * v7);
          v22 = v88;
          v89 = (*(*(v46 + 56) + 8) + v21);
          goto LABEL_47;
        }

        if (v34 != v6)
        {
          goto LABEL_47;
        }

        v55 = *(a1 + 64);
        if (v7 >= (*(a1 + 72) - v55) >> 5)
        {
          sub_1C9A4DF14(v92, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v91, "in");
          v79 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v79 = *v79;
          }

          goto LABEL_87;
        }

        v56 = (*(*(v55 + 32 * v7) + 40))(v55 + 32 * v7);
        v57 = *(a1 + 800);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 808) - v57) >> 3) <= v7)
        {
          goto LABEL_91;
        }

        v59 = (v57 + 24 * v7);
        v58 = *v59;
        if (0xAAAAAAAAAAAAAAABLL * ((v59[1] - *v59) >> 3) <= v13)
        {
LABEL_92:
          sub_1C9A7E9E0();
        }

        v60 = *(*(v56 + 56) + 8) + v21 + 1.0;
        v61 = v58 + 24 * v13;
        v62 = *(v61 + 8);
        v63 = *(v61 + 16);
        if (v62 < v63)
        {
          *v62 = v89;
          v62[1] = v60;
          v64 = (v62 + 2);
          goto LABEL_64;
        }

        v65 = *v61;
        v66 = v62 - *v61;
        v67 = v66 >> 3;
        v68 = (v66 >> 3) + 1;
        if (v68 >> 61)
        {
          goto LABEL_100;
        }

        v69 = v63 - v65;
        if (v69 >> 2 > v68)
        {
          v68 = v69 >> 2;
        }

        if (v69 >= 0x7FFFFFFFFFFFFFF8)
        {
          v70 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v70 = v68;
        }

        if (v70)
        {
          sub_1C9A7E9F8(v70);
        }

        v71 = (8 * v67);
        *v71 = v89;
        v71[1] = v60;
        v64 = 8 * v67 + 8;
        memcpy(0, v65, v66);
        v72 = *v61;
        *v61 = 0;
        *(v61 + 8) = v64;
        *(v61 + 16) = 0;
        if (v72)
        {
          operator delete(v72);
        }

LABEL_64:
        *(v61 + 8) = v64;
LABEL_65:
        ++v13;
      }

      while (v13 != v86);
LABEL_66:
      ++v7;
      v3 = *(a1 + 64);
      v4 = *(a1 + 72);
      v8 = (v4 - v3) >> 5;
    }

    while (v7 < v8);
  }

  if (v4 == v3)
  {
    sub_1C9A4DF14(v92, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v91, "in");
    v81 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v81 = *v81;
    }

    goto LABEL_98;
  }

  v73 = (*(*v3 + 40))(v3);
  v74 = *(a1 + 64);
  if (*(a1 + 72) == v74)
  {
    sub_1C9A4DF14(v92, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v91, "in");
    v81 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v81 = *v81;
    }

LABEL_98:
    DSPGraph::strprintf(v90, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v80, v81, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    DSPGraph::ThrowException();
    goto LABEL_99;
  }

  v75 = *(*(v73 + 56) + 72);
  v76 = (*((*(*v74 + 40))(v74) + 56) + 8);

  return DSPGraph::Box::propagateFlagsAndTimeStamp(a1, v75, v76);
}

void sub_1C9A7E66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9A7E704(void **a1)
{
  sub_1C9A7EDFC(a1);

  JUMPOUT(0x1CCA92400);
}

double sub_1C9A7E750@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  result = *"xfuadgisxoba";
  *a1 = *"xfuadgisxoba";
  return result;
}

void *sub_1C9A7E770(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1C9A7E814(result, a2);
  }

  return result;
}

void sub_1C9A7E814(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1C9A7E878(a1, a2);
  }

  sub_1C9A7E860();
}

void sub_1C9A7E878(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1C9A53618();
}

void sub_1C9A7E8D0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_1C9A7E944(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1C9A7E944(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1C9A7E998(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1C9A7E998(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_1C9A7E9F8(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1C9A53618();
}

uint64_t sub_1C9A7EA40(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1C9A7E814(result, a4);
  }

  return result;
}

void sub_1C9A7EAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1C9A776C4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1C9A7EAC8(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_1C9A7EB88(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1C9A7ED78(v8);
  return v4;
}

uint64_t sub_1C9A7EB88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1C9A7E814(result, a4);
  }

  return result;
}

void sub_1C9A7EBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1C9A77738(&a9);
  _Unwind_Resume(a1);
}

void *sub_1C9A7EC10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v6 = v5[1];
      v7 = v6 - *v5;
      if (v6 != *v5)
      {
        if (!((v7 >> 3) >> 61))
        {
          sub_1C9A7E9F8(v7 >> 3);
        }

        sub_1C9A7E860();
      }

      v5 += 3;
      v4 += 3;
      v12 = v4;
    }

    while (v5 != a3);
  }

  v10 = 1;
  sub_1C9A7ED10(v9);
  return v4;
}

void sub_1C9A7ECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_1C9A7ED10(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1C9A7ED10(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

uint64_t sub_1C9A7ED78(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1C9A7EDB0(a1);
  }

  return a1;
}

void sub_1C9A7EDB0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_1C9A77738(&v3);
  }
}

void sub_1C9A7EDFC(void **a1)
{
  *a1 = &unk_1F4952FD0;
  v2 = a1 + 100;
  sub_1C9A776C4(&v2);
  v2 = a1 + 97;
  sub_1C9A7E8D0(&v2);
  DSPGraph::Box::~Box(a1);
}

void sub_1C9A7EE68(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (((v3 - v2) & 0x1FFFFFFFE0) == 0x20 && ((*(a1 + 96) - *(a1 + 88)) & 0x1FFFFFFFE0) == 0x20)
  {
    if (v3 == v2)
    {
      sub_1C9A4DF14(v23, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      sub_1C9A4DF14(v22, "in");
      v18 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v18 = *v18;
      }

      goto LABEL_30;
    }

    v4 = *((*(*v2 + 40))(v2) + 120);
    if (*(v4 + 28) == 1)
    {
      v5 = *(a1 + 88);
      if (*(a1 + 96) == v5)
      {
        sub_1C9A4DF14(v23, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        sub_1C9A4DF14(v22, "out");
        v20 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v20 = *v20;
        }

        goto LABEL_33;
      }

      v6 = *((*(*v5 + 40))(v5) + 120);
      if (*(v6 + 28) == 1)
      {
        if (*v4 == *v6)
        {
          if (*(a1 + 808) <= 1u)
          {
            __assert_rtn("initialize", "DSPGraph_LogMelTransformBox.cpp", 46, "mMaxFrames > 1");
          }

          v7 = *(a1 + 64);
          if (*(a1 + 72) != v7)
          {
            v8 = *((*(*v7 + 40))(v7, *v4) + 120);
            v9 = *(v8 + 8);
            v10 = v9 == 1718773105 || v9 == 1819304813;
            if (v10 || !*(v8 + 16))
            {
              v11 = *(v4 + 24) * *(a1 + 808);
            }

            else
            {
              v11 = *(v4 + 16);
            }

            *(a1 + 812) = v11;
            v12 = *(a1 + 88);
            if (*(a1 + 96) != v12)
            {
              v13 = *((*(*v12 + 40))(v12) + 120);
              v14 = *(v13 + 8);
              v15 = v14 == 1718773105 || v14 == 1819304813;
              if (v15 || !*(v13 + 16))
              {
                v16 = *(v6 + 24) * *(a1 + 808);
              }

              else
              {
                v16 = *(v6 + 16);
              }

              *(a1 + 816) = v16;
              *(a1 + 820) = *(a1 + 812) >> 2;
              *(a1 + 824) = v16 >> 2;
              operator new();
            }

            sub_1C9A4DF14(v23, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
            sub_1C9A4DF14(v22, "out");
            v20 = (a1 + 32);
            if (*(a1 + 55) < 0)
            {
              v20 = *v20;
            }

LABEL_33:
            DSPGraph::strprintf(v21, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v19, v20, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
            DSPGraph::ThrowException();
            goto LABEL_45;
          }

          sub_1C9A4DF14(v23, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
          sub_1C9A4DF14(v22, "in");
          v18 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v18 = *v18;
          }

LABEL_30:
          DSPGraph::strprintf(v21, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v17, v18, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
          DSPGraph::ThrowException();
          goto LABEL_45;
        }

        sub_1C9A4DF14(v23, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_LogMelTransformBox.cpp");
        sub_1C9A4DF14(v22, "initialize");
        sub_1C9A4DF14(v21, "input and output sample rates must match");
        DSPGraph::ThrowException();
      }

      else
      {
        sub_1C9A4DF14(v23, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_LogMelTransformBox.cpp");
        sub_1C9A4DF14(v22, "initialize");
        sub_1C9A4DF14(v21, "output must be single channel");
        DSPGraph::ThrowException();
      }
    }

    else
    {
      sub_1C9A4DF14(v23, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_LogMelTransformBox.cpp");
      sub_1C9A4DF14(v22, "initialize");
      sub_1C9A4DF14(v21, "input must be single channel");
      DSPGraph::ThrowException();
    }
  }

  else
  {
    sub_1C9A4DF14(v23, "/Library/Caches/com.apple.xbs/Sources/Listen/Framework/Internal/Core/DSPGraph/Boxes/DSPGraph_LogMelTransformBox.cpp");
    sub_1C9A4DF14(v22, "initialize");
    sub_1C9A4DF14(v21, "only supports 1 bus in 1 bus out");
    DSPGraph::ThrowException();
  }

LABEL_45:
  __break(1u);
  sub_1C9A53618();
}

void sub_1C9A7F4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1C9A7F58C(uint64_t **a1)
{
  DSPGraph::Box::uninitialize(a1);

  return sub_1C9A7F5C8(a1 + 97, 0);
}

uint64_t *sub_1C9A7F5C8(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1C9A4D810(result);

    JUMPOUT(0x1CCA92400);
  }

  return result;
}

uint64_t sub_1C9A7F614(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  if (*(v3 + 8) == v2)
  {
    sub_1C9A4DF14(v34, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v33, "in");
    v29 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v29 = *v29;
    }

    goto LABEL_36;
  }

  v4 = (*(*v2 + 40))(v2);
  v5 = *(a1 + 88);
  if (*(a1 + 96) == v5)
  {
    sub_1C9A4DF14(v34, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v33, "out");
    v31 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v31 = *v31;
    }

    goto LABEL_27;
  }

  v6 = *(*(*(v4 + 56) + 80) + 16);
  v7 = *(*(*((*(*v5 + 40))(v5) + 56) + 80) + 16);
  v8 = *(a1 + 820);
  v9 = *(a1 + 784);
  if (v8)
  {
    memmove(v9, v6, 4 * v8);
    v9 = *(a1 + 784);
  }

  sub_1C9A68A10(v9, v9, *(*(a1 + 776) + 8), **(a1 + 776));
  v10 = *(a1 + 824);
  if (v10)
  {
    memmove(v7, *(a1 + 784), 4 * v10);
  }

  v11 = *(a1 + 88);
  if (*(a1 + 96) == v11)
  {
    sub_1C9A4DF14(v34, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v33, "out");
    v31 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v31 = *v31;
    }

LABEL_27:
    DSPGraph::strprintf(v32, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v30, v31, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
    result = DSPGraph::ThrowException();
LABEL_37:
    __break(1u);
    return result;
  }

  v12 = *(*((*(*v11 + 40))(v11) + 56) + 80);
  v13 = *v12;
  if (v13)
  {
    v14 = *(a1 + 816);
    v15 = (v13 + 3) & 0x1FFFFFFFCLL;
    v16 = vdupq_n_s64(v13 - 1);
    v17 = xmmword_1C9A9FB70;
    v18 = xmmword_1C9A9FB80;
    v19 = v12 + 11;
    v20 = vdupq_n_s64(4uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v16, v18));
      if (vuzp1_s16(v21, *v16.i8).u8[0])
      {
        *(v19 - 8) = v14;
      }

      if (vuzp1_s16(v21, *&v16).i8[2])
      {
        *(v19 - 4) = v14;
      }

      if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
      {
        *v19 = v14;
        v19[4] = v14;
      }

      v17 = vaddq_s64(v17, v20);
      v18 = vaddq_s64(v18, v20);
      v19 += 16;
      v15 -= 4;
    }

    while (v15);
  }

  v22 = *(a1 + 64);
  if (*(a1 + 72) == v22)
  {
    sub_1C9A4DF14(v34, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v33, "in");
    v29 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v29 = *v29;
    }

    goto LABEL_36;
  }

  v23 = (*(*v22 + 40))(v22);
  v24 = *(a1 + 64);
  if (*(a1 + 72) == v24)
  {
    sub_1C9A4DF14(v34, "/AppleInternal/Library/BuildRoots/4~CAoGugCS4Kkpd8stic_txIvXkiy0C4Kg7yNFrjc/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    sub_1C9A4DF14(v33, "in");
    v29 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v29 = *v29;
    }

LABEL_36:
    DSPGraph::strprintf(v32, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v28, v29, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
    result = DSPGraph::ThrowException();
    goto LABEL_37;
  }

  v25 = *(*(v23 + 56) + 72);
  v26 = (*((*(*v24 + 40))(v24) + 56) + 8);

  return DSPGraph::Box::propagateFlagsAndTimeStamp(a1, v25, v26);
}

void sub_1C9A7FAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9A7FB34(uint64_t a1)
{
  sub_1C9A7FBA0(a1);

  JUMPOUT(0x1CCA92400);
}

double sub_1C9A7FB88@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  result = *"xfuaftmlxoba";
  *a1 = *"xfuaftmlxoba";
  return result;
}

void sub_1C9A7FBA0(uint64_t a1)
{
  *a1 = &unk_1F4953260;
  v2 = *(a1 + 784);
  if (v2)
  {
    *(a1 + 792) = v2;
    operator delete(v2);
  }

  sub_1C9A7F5C8((a1 + 776), 0);

  DSPGraph::Box::~Box(a1);
}

uint64_t sub_1C9A7FC0C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_1C9A7FC40(void *a1)
{
  *a1 = &unk_1F49534F0;
  v2 = a1[9];
  if (v2)
  {
    sub_1C9A4E570(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_1C9A4E570(v3);
  }

  *a1 = &unk_1F49513A8;
  sub_1C9A4ED08(a1 + 2);
  return a1;
}

void sub_1C9A7FCBC(void *a1)
{
  *a1 = &unk_1F49534F0;
  v2 = a1[9];
  if (v2)
  {
    sub_1C9A4E570(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_1C9A4E570(v3);
  }

  *a1 = &unk_1F49513A8;
  sub_1C9A4ED08(a1 + 2);

  JUMPOUT(0x1CCA92400);
}

void sub_1C9A804A0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNLanguageAlignedAVFuserModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A80768(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNLanguageAlignedAVFuserModelOutput alloc];
    v7 = [v12 featureValueForName:@"fused_embedding"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNLanguageAlignedAVFuserModelOutput *)v6 initWithFused_embedding:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A80940(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNLanguageAlignedAVFuserModelOutput alloc];
    v7 = [v12 featureValueForName:@"fused_embedding"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNLanguageAlignedAVFuserModelOutput *)v6 initWithFused_embedding:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A81338(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNVGGishLaughterModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A81600(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishLaughterModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishLaughterModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A817D8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishLaughterModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishLaughterModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A821B4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNVGGishApplauseModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A8247C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishApplauseModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishApplauseModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A82654(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishApplauseModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishApplauseModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A83030(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNVGGishEmbeddingModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A832F8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishEmbeddingModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishEmbeddingModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A834D0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishEmbeddingModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishEmbeddingModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A83EAC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNSoundPrintAEmbeddingModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A84174(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNSoundPrintAEmbeddingModelOutput alloc];
    v7 = [v12 featureValueForName:@"637"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNSoundPrintAEmbeddingModelOutput *)v6 initWith_637:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A8434C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNSoundPrintAEmbeddingModelOutput alloc];
    v7 = [v12 featureValueForName:@"637"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNSoundPrintAEmbeddingModelOutput *)v6 initWith_637:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A8510C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNSoundPrintASmokeAlarmModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A854C0(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  if (v21)
  {
    v20 = a3;
    v5 = [SNSoundPrintASmokeAlarmModelOutput alloc];
    v19 = [v21 featureValueForName:@"input_1"];
    v6 = [v19 multiArrayValue];
    v7 = [v21 featureValueForName:@"Confidence"];
    v8 = [v7 multiArrayValue];
    v9 = [v21 featureValueForName:@"Detected"];
    v10 = [v9 multiArrayValue];
    v11 = [v21 featureValueForName:@"thresholdedHistoryOut"];
    v12 = [v11 multiArrayValue];
    [v21 featureValueForName:@"detectedHistoryOut"];
    v13 = v18 = a1;
    v14 = [v13 multiArrayValue];
    v15 = [(SNSoundPrintASmokeAlarmModelOutput *)v5 initWithInput_1:v6 Confidence:v8 Detected:v10 thresholdedHistoryOut:v12 detectedHistoryOut:v14];

    (*(*(v18 + 32) + 16))();
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    v15 = a3;
    v17(v16, 0, v15);
  }
}

void sub_1C9A85778(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  if (v21)
  {
    v20 = a3;
    v5 = [SNSoundPrintASmokeAlarmModelOutput alloc];
    v19 = [v21 featureValueForName:@"input_1"];
    v6 = [v19 multiArrayValue];
    v7 = [v21 featureValueForName:@"Confidence"];
    v8 = [v7 multiArrayValue];
    v9 = [v21 featureValueForName:@"Detected"];
    v10 = [v9 multiArrayValue];
    v11 = [v21 featureValueForName:@"thresholdedHistoryOut"];
    v12 = [v11 multiArrayValue];
    [v21 featureValueForName:@"detectedHistoryOut"];
    v13 = v18 = a1;
    v14 = [v13 multiArrayValue];
    v15 = [(SNSoundPrintASmokeAlarmModelOutput *)v5 initWithInput_1:v6 Confidence:v8 Detected:v10 thresholdedHistoryOut:v12 detectedHistoryOut:v14];

    (*(*(v18 + 32) + 16))();
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    v15 = a3;
    v17(v16, 0, v15);
  }
}

void sub_1C9A86414(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNSoundClassifierVersion1Model alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A86714(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [SNSoundClassifierVersion1ModelOutput alloc];
    v7 = [v14 featureValueForName:@"9"];
    v8 = [v7 dictionaryValue];
    v9 = [v14 featureValueForName:@"classLabel"];
    v10 = [v9 stringValue];
    v11 = [(SNSoundClassifierVersion1ModelOutput *)v6 initWith_9:v8 classLabel:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1C9A86924(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [SNSoundClassifierVersion1ModelOutput alloc];
    v7 = [v14 featureValueForName:@"9"];
    v8 = [v7 dictionaryValue];
    v9 = [v14 featureValueForName:@"classLabel"];
    v10 = [v9 stringValue];
    v11 = [(SNSoundClassifierVersion1ModelOutput *)v6 initWith_9:v8 classLabel:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1C9A87370(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNVGGishBabbleModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A87638(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishBabbleModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishBabbleModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A87810(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishBabbleModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishBabbleModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A884DC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNSoundPrintAShoutingModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A8884C(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  if (v18)
  {
    v17 = a3;
    v5 = [SNSoundPrintAShoutingModelOutput alloc];
    v6 = [v18 featureValueForName:@"input_1"];
    v7 = [v6 multiArrayValue];
    v8 = [v18 featureValueForName:@"Confidence"];
    v9 = [v8 multiArrayValue];
    v10 = [v18 featureValueForName:@"Detected"];
    v11 = [v10 multiArrayValue];
    v12 = [v18 featureValueForName:@"detectedHistoryOut"];
    v13 = [v12 multiArrayValue];
    v14 = [(SNSoundPrintAShoutingModelOutput *)v5 initWithInput_1:v7 Confidence:v9 Detected:v11 detectedHistoryOut:v13];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v14 = a3;
    v16(v15, 0, v14);
  }
}

void sub_1C9A88AC8(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  if (v18)
  {
    v17 = a3;
    v5 = [SNSoundPrintAShoutingModelOutput alloc];
    v6 = [v18 featureValueForName:@"input_1"];
    v7 = [v6 multiArrayValue];
    v8 = [v18 featureValueForName:@"Confidence"];
    v9 = [v8 multiArrayValue];
    v10 = [v18 featureValueForName:@"Detected"];
    v11 = [v10 multiArrayValue];
    v12 = [v18 featureValueForName:@"detectedHistoryOut"];
    v13 = [v12 multiArrayValue];
    v14 = [(SNSoundPrintAShoutingModelOutput *)v5 initWithInput_1:v7 Confidence:v9 Detected:v11 detectedHistoryOut:v13];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v14 = a3;
    v16(v15, 0, v14);
  }
}

void sub_1C9A89618(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNLanguageAlignedAudioEncoder alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A898E0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNLanguageAlignedAudioEncoderOutput alloc];
    v7 = [v12 featureValueForName:@"embedding"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNLanguageAlignedAudioEncoderOutput *)v6 initWithEmbedding:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A89AB8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNLanguageAlignedAudioEncoderOutput alloc];
    v7 = [v12 featureValueForName:@"embedding"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNLanguageAlignedAudioEncoderOutput *)v6 initWithEmbedding:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A8A784(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNSoundPrintASpeechModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A8AAF4(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  if (v18)
  {
    v17 = a3;
    v5 = [SNSoundPrintASpeechModelOutput alloc];
    v6 = [v18 featureValueForName:@"input_1"];
    v7 = [v6 multiArrayValue];
    v8 = [v18 featureValueForName:@"Confidence"];
    v9 = [v8 multiArrayValue];
    v10 = [v18 featureValueForName:@"Detected"];
    v11 = [v10 multiArrayValue];
    v12 = [v18 featureValueForName:@"detectedHistoryOut"];
    v13 = [v12 multiArrayValue];
    v14 = [(SNSoundPrintASpeechModelOutput *)v5 initWithInput_1:v7 Confidence:v9 Detected:v11 detectedHistoryOut:v13];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v14 = a3;
    v16(v15, 0, v14);
  }
}

void sub_1C9A8AD70(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  if (v18)
  {
    v17 = a3;
    v5 = [SNSoundPrintASpeechModelOutput alloc];
    v6 = [v18 featureValueForName:@"input_1"];
    v7 = [v6 multiArrayValue];
    v8 = [v18 featureValueForName:@"Confidence"];
    v9 = [v8 multiArrayValue];
    v10 = [v18 featureValueForName:@"Detected"];
    v11 = [v10 multiArrayValue];
    v12 = [v18 featureValueForName:@"detectedHistoryOut"];
    v13 = [v12 multiArrayValue];
    v14 = [(SNSoundPrintASpeechModelOutput *)v5 initWithInput_1:v7 Confidence:v9 Detected:v11 detectedHistoryOut:v13];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v14 = a3;
    v16(v15, 0, v14);
  }
}

void sub_1C9A8B8C0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNVGGishSpeechModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A8BB88(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishSpeechModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishSpeechModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A8BD60(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishSpeechModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishSpeechModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A8CA2C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNSoundPrintALaughterModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A8CD9C(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  if (v18)
  {
    v17 = a3;
    v5 = [SNSoundPrintALaughterModelOutput alloc];
    v6 = [v18 featureValueForName:@"input_1"];
    v7 = [v6 multiArrayValue];
    v8 = [v18 featureValueForName:@"Confidence"];
    v9 = [v8 multiArrayValue];
    v10 = [v18 featureValueForName:@"Detected"];
    v11 = [v10 multiArrayValue];
    v12 = [v18 featureValueForName:@"detectedHistoryOut"];
    v13 = [v12 multiArrayValue];
    v14 = [(SNSoundPrintALaughterModelOutput *)v5 initWithInput_1:v7 Confidence:v9 Detected:v11 detectedHistoryOut:v13];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v14 = a3;
    v16(v15, 0, v14);
  }
}

void sub_1C9A8D018(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  if (v18)
  {
    v17 = a3;
    v5 = [SNSoundPrintALaughterModelOutput alloc];
    v6 = [v18 featureValueForName:@"input_1"];
    v7 = [v6 multiArrayValue];
    v8 = [v18 featureValueForName:@"Confidence"];
    v9 = [v8 multiArrayValue];
    v10 = [v18 featureValueForName:@"Detected"];
    v11 = [v10 multiArrayValue];
    v12 = [v18 featureValueForName:@"detectedHistoryOut"];
    v13 = [v12 multiArrayValue];
    v14 = [(SNSoundPrintALaughterModelOutput *)v5 initWithInput_1:v7 Confidence:v9 Detected:v11 detectedHistoryOut:v13];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v14 = a3;
    v16(v15, 0, v14);
  }
}

void sub_1C9A8DC08(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNSoundPrintKEmbeddingModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A8DF08(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [SNSoundPrintKEmbeddingModelOutput alloc];
    v7 = [v14 featureValueForName:@"fixedLengthEmbedding"];
    v8 = [v7 multiArrayValue];
    v9 = [v14 featureValueForName:@"framewiseEmbedding"];
    v10 = [v9 multiArrayValue];
    v11 = [(SNSoundPrintKEmbeddingModelOutput *)v6 initWithFixedLengthEmbedding:v8 framewiseEmbedding:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1C9A8E118(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [SNSoundPrintKEmbeddingModelOutput alloc];
    v7 = [v14 featureValueForName:@"fixedLengthEmbedding"];
    v8 = [v7 multiArrayValue];
    v9 = [v14 featureValueForName:@"framewiseEmbedding"];
    v10 = [v9 multiArrayValue];
    v11 = [(SNSoundPrintKEmbeddingModelOutput *)v6 initWithFixedLengthEmbedding:v8 framewiseEmbedding:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1C9A8EB64(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNVGGishMusicModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A8EE2C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishMusicModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishMusicModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A8F004(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishMusicModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishMusicModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A8F9E0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNVGGishCheeringModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A8FCA8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishCheeringModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishCheeringModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A8FE80(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [SNVGGishCheeringModelOutput alloc];
    v7 = [v12 featureValueForName:@"output1"];
    v8 = [v7 multiArrayValue];
    v9 = [(SNVGGishCheeringModelOutput *)v6 initWithOutput1:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1C9A90914(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SNAudioQualityModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C9A90C14(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [SNAudioQualityModelOutput alloc];
    v7 = [v14 featureValueForName:@"final_output"];
    v8 = [v7 dictionaryValue];
    v9 = [v14 featureValueForName:@"classLabel"];
    v10 = [v9 stringValue];
    v11 = [(SNAudioQualityModelOutput *)v6 initWithFinal_output:v8 classLabel:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1C9A90E24(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [SNAudioQualityModelOutput alloc];
    v7 = [v14 featureValueForName:@"final_output"];
    v8 = [v7 dictionaryValue];
    v9 = [v14 featureValueForName:@"classLabel"];
    v10 = [v9 stringValue];
    v11 = [(SNAudioQualityModelOutput *)v6 initWithFinal_output:v8 classLabel:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

uint64_t DSPGraph::RingBuffer::write()
{
  return MEMORY[0x1EEDEF548]();
}

{
  return MEMORY[0x1EEDEF550]();
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x1EEE63A90](this, a2);
}

{
  return MEMORY[0x1EEE63AA0](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}