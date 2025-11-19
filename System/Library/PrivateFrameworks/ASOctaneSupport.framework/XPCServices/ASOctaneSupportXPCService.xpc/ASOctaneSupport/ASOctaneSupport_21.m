unint64_t sub_1001947B8()
{
  result = qword_1002BAA50;
  if (!qword_1002BAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA50);
  }

  return result;
}

unint64_t sub_100194810()
{
  result = qword_1002BAA58;
  if (!qword_1002BAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA58);
  }

  return result;
}

unint64_t sub_100194868()
{
  result = qword_1002BAA60;
  if (!qword_1002BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA60);
  }

  return result;
}

void sub_1001948C4()
{
  *v0 = 3157553;
  v0[1] = 0xE300000000000000;
  v0[2] = 0x61502D6472696854;
  v0[3] = 0xEB00000000797472;
}

uint64_t sub_1001948F8()
{
  v1 = v0;
  v2 = sub_1001F60C8();
  sub_10001A278();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  sub_100023510();
  v9 = v8 - v7;
  v10 = *(v0 + 56);
  v11 = *(v10 + 176);
  v12 = *(v10 + 184);
  v13 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v13 setUnitsStyle:3];
  [v13 setAllowedUnits:4124];
  sub_1001EC818(v11, v12);
  isa = sub_1001F6098().super.isa;
  v44 = v2;
  v43 = *(v4 + 8);
  v43(v9, v2);
  v15 = [v13 stringFromDateComponents:isa];

  if (v15)
  {
    v47._countAndFlagsBits = sub_1001F6B58();
    v47._object = v16;
  }

  else
  {

    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
  }

  v17 = *(v1 + 32);
  v49 = *(v1 + 16);
  v50 = v17;
  v51 = *(v1 + 48);

  v19 = sub_1000E087C(v18);

  if (v19)
  {
    v20 = *(v19 + 40);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = *(v19 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v46 = *(v19 + 32);

      goto LABEL_11;
    }
  }

  v46 = sub_1001E8450();
  v20 = v22;
LABEL_11:
  memcpy(__dst, (v1 + 64), sizeof(__dst));

  v23 = sub_10004B628();
  v25 = v24;

  v26 = *(v1 + 8);
  if (sub_1000258F4(v10) == 2)
  {
    v27 = *(v26 + 176);
    v28 = *(v26 + 184);
    v29 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v29 setUnitsStyle:3];
    [v29 setAllowedUnits:4124];
    sub_1001EC818(v27, v28);
    v30 = sub_1001F6098().super.isa;
    v43(v9, v44);
    v31 = [v29 stringFromDateComponents:v30];

    if (v31)
    {
      v45 = sub_1001F6B58();
      v33 = v32;
    }

    else
    {

      v45 = 0;
      v33 = 0xE000000000000000;
    }

    v35 = sub_1000E087C(v34);

    v36 = v23;
    v37 = v25;
    if (v35)
    {
      v39 = *(v35 + 32);
      v38 = *(v35 + 40);
      v40 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v40 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {

LABEL_23:
        sub_1001F77B8(149);
        v59._countAndFlagsBits = 0xD00000000000001ALL;
        v59._object = 0x800000010022C550;
        sub_1001F6CA8(v59);
        v60._countAndFlagsBits = v46;
        v60._object = v20;
        sub_1001F6CA8(v60);

        v61._countAndFlagsBits = 0x20726F6620;
        v61._object = 0xE500000000000000;
        sub_1001F6CA8(v61);
        sub_1001F6CA8(v47);

        v62._countAndFlagsBits = 544497952;
        v62._object = 0xE400000000000000;
        sub_1001F6CA8(v62);
        v63._countAndFlagsBits = v36;
        v63._object = v37;
        sub_1001F6CA8(v63);

        v64._countAndFlagsBits = 0xD000000000000056;
        v64._object = 0x800000010022C570;
        sub_1001F6CA8(v64);
        v65._countAndFlagsBits = v45;
        v65._object = v33;
        sub_1001F6CA8(v65);

        sub_100181134();
        v66._countAndFlagsBits = 0xD000000000000011;
        sub_1001F6CA8(v66);
        v67._countAndFlagsBits = v39;
        v67._object = v38;
        sub_1001F6CA8(v67);
        goto LABEL_24;
      }
    }

    v39 = sub_1001E8450();
    v38 = v41;
    goto LABEL_23;
  }

  sub_1001F77B8(162);
  v52._countAndFlagsBits = 0xD00000000000002BLL;
  v52._object = 0x800000010022C4B0;
  sub_1001F6CA8(v52);
  v53._countAndFlagsBits = v46;
  v53._object = v20;
  sub_1001F6CA8(v53);

  v54._countAndFlagsBits = 0x20726F6620;
  v54._object = 0xE500000000000000;
  sub_1001F6CA8(v54);
  sub_1001F6CA8(v47);

  v55._countAndFlagsBits = 544497952;
  v55._object = 0xE400000000000000;
  sub_1001F6CA8(v55);
  v56._countAndFlagsBits = v23;
  v56._object = v25;
  sub_1001F6CA8(v56);

  sub_100181134();
  v57._countAndFlagsBits = 0x1000000000000065;
  sub_1001F6CA8(v57);
  v58._countAndFlagsBits = sub_100194E6C();
  sub_1001F6CA8(v58);
LABEL_24:

  v68._countAndFlagsBits = 46;
  v68._object = 0xE100000000000000;
  sub_1001F6CA8(v68);
  return 0;
}

uint64_t sub_100194E6C()
{
  v0 = sub_1001F6508();
  sub_10001A278();
  v2 = v1;
  __chkstk_darwin(v3, v4);
  sub_100023510();
  v7 = v6 - v5;
  sub_1000C5464(4);
  if (v8)
  {
    sub_1001F64F8();
  }

  else
  {
    sub_1001F6418();
  }

  if (qword_1002AC410 != -1)
  {
    swift_once();
  }

  v9 = qword_1002AE9E8;
  isa = sub_1001F6478().super.isa;
  v11 = [v9 stringFromDate:isa];

  v12 = sub_1001F6B58();
  (*(v2 + 8))(v7, v0);
  return v12;
}

unint64_t sub_100194FC4(char a1)
{
  v3 = sub_1001F60C8();
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  sub_100023510();
  v10 = v9 - v8;
  v11 = *(v1 + 8);
  if (sub_1000258F4(*(v1 + 56)) != 2)
  {
    sub_1001F77B8(78);
    v27._countAndFlagsBits = 0xD00000000000004BLL;
    v27._object = 0x800000010022C370;
    sub_1001F6CA8(v27);
    v28._countAndFlagsBits = sub_100194E6C();
    sub_1001F6CA8(v28);

    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    sub_1001F6CA8(v29);
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    sub_100181134();
    return 0xD000000000000064;
  }

  v12 = *(v11 + 176);
  v13 = *(v11 + 184);
  v14 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v14 setUnitsStyle:3];
  [v14 setAllowedUnits:4124];
  sub_1001EC818(v12, v13);
  isa = sub_1001F6098().super.isa;
  (*(v5 + 8))(v10, v3);
  v16 = [v14 stringFromDateComponents:isa];

  if (v16)
  {
    v17 = sub_1001F6B58();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v22 = sub_1000E087C(v21);

  if (!v22)
  {
    goto LABEL_14;
  }

  v24 = *(v22 + 32);
  v23 = *(v22 + 40);
  v25 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_14:
    v24 = sub_1001E8450();
    v23 = v26;
    goto LABEL_15;
  }

LABEL_15:
  sub_1001F77B8(106);
  v30._countAndFlagsBits = 0xD000000000000054;
  v30._object = 0x800000010022C430;
  sub_1001F6CA8(v30);
  v31._countAndFlagsBits = v17;
  v31._object = v19;
  sub_1001F6CA8(v31);

  sub_100181134();
  v32._countAndFlagsBits = 0xD000000000000011;
  sub_1001F6CA8(v32);
  v33._countAndFlagsBits = v24;
  v33._object = v23;
  sub_1001F6CA8(v33);

  v34._countAndFlagsBits = 46;
  v34._object = 0xE100000000000000;
  sub_1001F6CA8(v34);
  return 0;
}

uint64_t sub_1001952E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_100195324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100195398(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_1001F6288();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_100033EDC();
  v11 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v20[0] = *(i - 1);
    v20[1] = v13;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v11;
    v14 = v11[2];
    if (v14 >= v11[3] >> 1)
    {
      sub_100033EDC();
      v11 = v21;
    }

    v11[2] = v14 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100195564(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v14 = _swiftEmptyArrayStorage;
  sub_1000343AC(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 80)
  {
    a1(v13, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v14 = v6;
    v11 = v6[2];
    v10 = v6[3];
    if (v11 >= v10 >> 1)
    {
      sub_1000343AC((v10 > 1), v11 + 1, 1);
      v6 = v14;
    }

    v6[2] = v11 + 1;
    memcpy(&v6[10 * v11 + 4], v13, 0x50uLL);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t ChannelOptions.Storage.append<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v9 = *v4;
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a1;
  v19[5] = &v27;
  v19[6] = a2;
  v10 = sub_100195564(sub_1001961FC, v19, v9);

  *v4 = v10;
  if ((v27 & 1) == 0)
  {
    v25 = a3;
    v12 = sub_1000629FC(v24);
    (*(*(a3 - 8) + 16))(v12, a1, a3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v23 = AssociatedTypeWitness;
    v14 = sub_1000629FC(v22);
    (*(*(AssociatedTypeWitness - 8) + 16))(v14, a2, AssociatedTypeWitness);
    sub_10004794C();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    sub_10003708C(v24, v20);
    sub_10003708C(v22, v21);
    sub_10003708C(v20, __src);
    sub_10003708C(v21, &__src[2]);
    sub_10004794C();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100196240;
    *(v16 + 24) = v15;
    *&__src[4] = sub_1001581C0;
    *(&__src[4] + 1) = v16;
    sub_100032144();
    v17 = *(*v4 + 16);
    sub_1000322FC();
    v18 = *v4;
    *(v18 + 16) = v17 + 1;
    result = memcpy((v18 + 80 * v17 + 32), __src, 0x50uLL);
    *v4 = v18;
  }

  return result;
}

uint64_t ChannelOptions.Storage.applyAllChannelOptions(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_10019627C(a1, a3, ObjectType, a2);
}

ASOctaneSupportXPCService::ChannelOptions::Types::WriteBufferWaterMark __swiftcall ChannelOptions.Types.WriteBufferWaterMark.init(low:high:)(Swift::Int low, Swift::Int high)
{
  if (low < 1 || high < low)
  {
    __break(1u);
  }

  result.high = high;
  result.low = low;
  return result;
}

uint64_t (*ChannelOptions.Types.SocketOption.level.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_100195958;
}

_DWORD *(*ChannelOptions.Types.SocketOption.name.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_100195994;
}

uint64_t ChannelOptions.Storage._storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*sub_100195A38())(uint64_t a1, uint64_t a2)
{
  sub_100196E7C();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v0;
  v4[4] = v3;
  v4[5] = v2;
  swift_unknownObjectRetain();
  return sub_100196D64;
}

uint64_t sub_100195AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a2;
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness, v11);
  v14 = &v22 - v13;
  v15 = *(a5 - 8);
  __chkstk_darwin(v12, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  sub_10002F9B0(a1, v25);
  swift_dynamicCast();
  sub_10002F9B0(v22, v24);
  swift_dynamicCast();
  v20 = (*(v23 + 64))(v18, v14, a5, a6, ObjectType);
  (*(v10 + 8))(v14, AssociatedTypeWitness);
  (*(v15 + 8))(v18, a5);
  return v20;
}

double sub_100195CC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v33 = a2;
  *&v34 = a6;
  v31 = a3;
  v32 = a4;
  v35 = a7;
  v9 = sub_1001F74B8();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v30 - v13;
  v15 = *(a5 - 8);
  __chkstk_darwin(v12, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100196D70(a1, v44);
  sub_10003708C(v44, __src);
  sub_10003708C(v45, &__src[2]);
  v19 = swift_allocObject();
  *(v19 + 16) = v45[2];
  *&__src[4] = sub_1001581B8;
  *(&__src[4] + 1) = v19;
  sub_100196D70(__src, v41);

  sub_10003708C(v41, v42);
  sub_100019CCC(&v41[2]);
  sub_10002F9B0(v42, v41);
  if (swift_dynamicCast())
  {
    sub_100018460(v14, 0, 1, a5);
    (*(v15 + 32))(v18, v14, a5);
    v20 = v34;
    if (sub_1001F6B28())
    {
      *v31 = 1;
      v39 = a5;
      v21 = sub_1000629FC(&v38);
      (*(v15 + 16))(v21, v18, a5);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v37 = AssociatedTypeWitness;
      v23 = sub_1000629FC(&v36);
      (*(*(AssociatedTypeWitness - 8) + 16))(v23, v32, AssociatedTypeWitness);
      (*(v15 + 8))(v18, a5);
      sub_100019CCC(v42);
      sub_100196DE0(__src);
      v24 = swift_allocObject();
      *(v24 + 16) = a5;
      *(v24 + 24) = v20;
      sub_10003708C(&v38, v41);
      sub_10003708C(&v36, &v41[2]);
      v25 = v35;
      sub_10003708C(v41, v35);
      sub_10003708C(&v41[2], v25 + 2);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_100196E4C;
      *(v26 + 24) = v24;
      *(v25 + 8) = sub_100158A10;
      *(v25 + 9) = v26;
      return result;
    }

    (*(v15 + 8))(v18, a5);
    sub_100019CCC(v42);
  }

  else
  {
    sub_100018460(v14, 1, 1, a5);
    sub_100019CCC(v42);
    (*(v10 + 8))(v14, v9);
  }

  memcpy(v41, __src, sizeof(v41));
  v34 = v41[4];
  sub_10003708C(v41, &v38);
  sub_10003708C(&v41[2], v40);
  v28 = v35;
  sub_10003708C(&v38, v35);
  sub_10003708C(v40, v28 + 2);
  v29 = swift_allocObject();
  result = *&v34;
  *(v29 + 16) = v34;
  *(v28 + 8) = sub_100158A10;
  *(v28 + 9) = v29;
  return result;
}

uint64_t sub_100196138@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t (**a3)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = a2(*a1, a1[1]);
  v6 = v5;
  sub_10004794C();
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a3 = sub_100196D24;
  a3[1] = result;
  return result;
}

uint64_t sub_1001961A8()
{
  sub_100196E7C();
  ObjectType = swift_getObjectType();

  return sub_100196A8C(v3, v2, v1, ObjectType, v0);
}

uint64_t sub_100196248()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10019627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  (*(*(a4 + 8) + 80))(ObjectType);
  v10 = v9;
  v11 = swift_getObjectType();
  v12 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[8], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelOption.swift", 115, 2, 368, v11, &type metadata for ()[8], v10);
  swift_unknownObjectRelease();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = 0;

  sub_100196A8C(v13, v12, a1, a3, a4);

  return v12;
}

unint64_t sub_100196374(uint64_t a1)
{
  result = sub_10019639C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10019639C()
{
  result = qword_1002BAA80;
  if (!qword_1002BAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA80);
  }

  return result;
}

unint64_t sub_1001963F0(uint64_t a1)
{
  result = sub_100196418();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196418()
{
  result = qword_1002BAAA0;
  if (!qword_1002BAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAAA0);
  }

  return result;
}

unint64_t sub_10019646C(uint64_t a1)
{
  result = sub_100196494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196494()
{
  result = qword_1002BAAC0;
  if (!qword_1002BAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAAC0);
  }

  return result;
}

unint64_t sub_1001964E8(uint64_t a1)
{
  result = sub_100196510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196510()
{
  result = qword_1002BAAE0;
  if (!qword_1002BAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAAE0);
  }

  return result;
}

unint64_t sub_100196564(uint64_t a1)
{
  result = sub_10019658C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10019658C()
{
  result = qword_1002BAB00;
  if (!qword_1002BAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB00);
  }

  return result;
}

unint64_t sub_1001965E0(uint64_t a1)
{
  result = sub_100196608();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196608()
{
  result = qword_1002BAB20;
  if (!qword_1002BAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB20);
  }

  return result;
}

unint64_t sub_10019665C(uint64_t a1)
{
  result = sub_100196684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196684()
{
  result = qword_1002BAB40;
  if (!qword_1002BAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB40);
  }

  return result;
}

unint64_t sub_1001966D8(uint64_t a1)
{
  result = sub_100196700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196700()
{
  result = qword_1002BAB60;
  if (!qword_1002BAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB60);
  }

  return result;
}

unint64_t sub_100196754(uint64_t a1)
{
  result = sub_10019677C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10019677C()
{
  result = qword_1002BAB80;
  if (!qword_1002BAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB80);
  }

  return result;
}

unint64_t sub_1001967D0(uint64_t a1)
{
  result = sub_1001967F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001967F8()
{
  result = qword_1002BABA0;
  if (!qword_1002BABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BABA0);
  }

  return result;
}

unint64_t sub_10019684C(uint64_t a1)
{
  result = sub_100196874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196874()
{
  result = qword_1002BABC0;
  if (!qword_1002BABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BABC0);
  }

  return result;
}

unint64_t sub_1001968C8(uint64_t a1)
{
  result = sub_1001968F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001968F0()
{
  result = qword_1002BABE0;
  if (!qword_1002BABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BABE0);
  }

  return result;
}

unint64_t sub_100196944(uint64_t a1)
{
  result = sub_10019696C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10019696C()
{
  result = qword_1002BAC00;
  if (!qword_1002BAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC00);
  }

  return result;
}

uint64_t sub_100196A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(v10 + 16);
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
      __break(1u);
      return result;
    }

    sub_100196D70(v10 + 80 * v11 + 32, &v20);
    *(a1 + 24) = v11 + 1;
    if (v21)
    {
      sub_10003708C(&v20, v16);
      sub_10003708C(&v22, v17);
      v13 = v23;
      sub_10003708C(v16, v18);
      sub_10003708C(v17, v19);
      sub_10003708C(v18, v25);
      sub_10003708C(v19, v24);
      *&v20 = a3;
      *(&v20 + 1) = a5;
      v13(v18, &v20);

      (*&v18[0])(&v20, v25, v24);

      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a2;
      v14[4] = a3;
      v14[5] = a5;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100158108;
      *(v15 + 24) = v14;

      swift_unknownObjectRetain();
      sub_10019F6C8();

      sub_10002C6E0(a2);

      sub_100019CCC(v24);
      return sub_100019CCC(v25);
    }
  }

  return sub_1000A13B0();
}

uint64_t sub_100196CA8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100196CF0()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100196D2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100196D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADC78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100196DE0(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADC78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100196EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1001F10F8(0x6D614E6567616D69, 0xE900000000000065, *(a1 + 96));
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = sub_1001EA8E8();
    v8 = sub_1001F10F8(0x726F6C6F63, 0xE500000000000000, v7);
    if (v9)
    {
      v10 = sub_1000DFF80(v8, v9);
    }

    else
    {
      v10 = 9;
    }

    v17 = sub_1001F10F8(0x746867696577, 0xE600000000000000, v7);
    v19 = v18;

    if (!v19 || (v20 = sub_1000DFC4C(v17, v19), v20 == 4))
    {
      v20 = 0;
    }

    if (qword_1002AC428 != -1)
    {
      swift_once();
    }

    v21 = *(off_1002AF690 + 2);
    os_unfair_lock_lock(v21);
    sub_1001970AC(v5, v6, v20, v10, v22);
    os_unfair_lock_unlock(v21);

    result = v22[0];
    v15 = v22[1];
    v14 = v23;
    v13 = v24;
    v16 = v25;
    v12 = v26 | ((v27 | (v28 << 16)) << 32);
  }

  else
  {
    type metadata accessor for HTTPResponseHead._Storage();
    result = swift_allocObject();
    v12 = 0;
    v13 = 0uLL;
    *(result + 16) = 0u;
    *(result + 32) = 21;
    *(result + 40) = 65537;
    v14 = 2;
    v15 = _swiftEmptyArrayStorage;
    v16 = 0uLL;
  }

  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 40) = v16;
  *(a2 + 56) = v12;
  *(a2 + 62) = BYTE6(v12);
  *(a2 + 60) = WORD2(v12);
  return result;
}

__n128 sub_1001970AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = 0x4008000000000000;
  v23 = 3;
  v24 = a3;
  v25 = 0x4059000000000000;
  v26 = a4;
  v6 = sub_1000E0138();
  if (v7 >> 60 == 15)
  {
    v8 = 0;
    v14 = 0u;
    v15 = 0u;
    v9 = 25;
  }

  else
  {
    v10 = v6;
    v11 = v7;
    sub_100040C70(v6, v7);
    sub_1000B77D0(v10, v11, 0x76732F6567616D69, 0xED00006C6D782B67, v16);
    v14 = v16[1];
    v15 = v16[0];
    v8 = v17 | ((v18 | (v19 << 16)) << 32);
    sub_10003A36C(v10, v11);
    v9 = 3;
  }

  type metadata accessor for HTTPResponseHead._Storage();
  v12 = swift_allocObject();
  *(v12 + 32) = v9;
  *(v12 + 40) = 65537;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *a5 = v12;
  *(a5 + 8) = _swiftEmptyArrayStorage;
  *(a5 + 16) = 2;
  result = v15;
  *(a5 + 40) = v14;
  *(a5 + 24) = v15;
  *(a5 + 62) = BYTE6(v8);
  *(a5 + 60) = WORD2(v8);
  *(a5 + 56) = v8;
  return result;
}

double sub_100197204@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100196EBC(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v6[0];
  result = *(v6 + 15);
  *(a2 + 47) = *(v6 + 15);
  return result;
}

void *sub_10019724C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v5 = sub_1000183C4(&qword_1002AFA30);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v42 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[3];
  v52 = a1[2];
  v16 = type metadata accessor for PurchaseConfiguration();
  v17 = a1 + v16[7];
  v18 = v17[8];
  v51 = v15;
  if (v18)
  {

    v47 = 0;
    v48 = 0;
  }

  else
  {
    v57[0] = *v17;

    v19 = sub_1001F7E28();
    v47 = v20;
    v48 = v19;
  }

  if (*(a1 + v16[11]) == 1)
  {
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v21 = (a1 + v16[10]);
    v22 = *v21;
    v45 = v21[1];
    v46 = v22;
  }

  v50 = v13;
  sub_10005E32C(v13, v14, v12);
  v23 = sub_1001F6578();
  if (sub_10001C990(v12, 1, v23) == 1)
  {
    sub_1000374B8(v12, &qword_1002AFA30);
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v24 = sub_1001F6528();
    v43 = v25;
    v44 = v24;
    (*(*(v23 - 8) + 8))(v12, v23);
  }

  sub_10019BE80(a1 + v16[6], v8, &qword_1002AFA30);
  if (sub_10001C990(v8, 1, v23) == 1)
  {
    sub_1000374B8(v8, &qword_1002AFA30);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v26 = sub_1001F6528();
    v27 = v28;
    (*(*(v23 - 8) + 8))(v8, v23);
  }

  v29 = sub_10016A174(1u);
  v31 = v30;

  LOBYTE(v57[0]) = 1;
  v55 = 1;
  v54 = 1;
  v53 = 1;
  v56[0] = 0;
  LOBYTE(v56[1]) = 1;
  memset(&v56[2], 0, 24);
  LOBYTE(v56[5]) = 1;
  memset(&v56[6], 0, 128);
  LOWORD(v56[22]) = 257;
  memset(&v56[23], 0, 24);
  LOBYTE(v56[26]) = 1;
  memset(&v56[27], 0, 96);
  LOBYTE(v56[39]) = 1;
  debugOnly(_:)(v56, v32, v33, v34, v35, v36);
  memcpy(v57 + 7, v56, 0x139uLL);
  sub_10016C29C(a1);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = v50;
  *(a3 + 72) = v14;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  v37 = v51;
  *(a3 + 136) = v52;
  *(a3 + 144) = v37;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 2;
  *(a3 + 208) = 0u;
  v38 = v47;
  *(a3 + 224) = v48;
  *(a3 + 232) = v38;
  *(a3 + 240) = 0u;
  *(a3 + 256) = xmmword_100214E00;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  v39 = v45;
  *(a3 + 400) = v46;
  *(a3 + 408) = v39;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  v40 = v43;
  *(a3 + 496) = v44;
  *(a3 + 504) = v40;
  *(a3 + 512) = v26;
  *(a3 + 520) = v27;
  *(a3 + 528) = v29;
  *(a3 + 536) = v31;
  *(a3 + 544) = 2;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 2;
  return memcpy((a3 + 569), v57, 0x140uLL);
}

uint64_t sub_100197678()
{
  v1 = v0[50];
  if (v0[51])
  {
    if (v0[57] || v0[53] || v0[55] || v0[59])
    {
      return 0;
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1001976E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for PromotionalOfferData.SigningMethod(0);
  sub_100023520();
  __chkstk_darwin(v7, v8);
  sub_100023510();
  v72 = (v10 - v9);
  v11 = sub_1001F6B98();
  __chkstk_darwin(v11 - 8, v12);
  sub_100023510();
  type metadata accessor for PromotionalOfferData(0);
  sub_100023520();
  __chkstk_darwin(v13, v14);
  sub_100023510();
  v18 = (v17 - v16);
  v87[0] = *(v2 + 400);
  v19 = *(&v87[0] + 1);
  if (*(&v87[0] + 1))
  {
    v77 = v15;
    v20 = *(v2 + 456);
    if ((a1 & 1) != 0 && !v20)
    {
      if (!*(v2 + 424) && !*(v2 + 440) && !*(v2 + 472))
      {
        v32 = a2;
        v33 = 1;
        v15 = v77;
        return sub_100018460(v32, v33, 1, v15);
      }

      v20 = 0;
    }

    v73 = *(v2 + 416);
    v78 = *(v2 + 424);
    v21 = *(v2 + 472);
    v74 = *(v2 + 464);
    v75 = *(&v87[0] + 1);
    v22 = *(v2 + 440);
    v76 = *&v87[0];
    *v18 = *&v87[0];
    v18[1] = v19;
    if (v20)
    {
      v71 = v6;
      v69 = a2;
      v70 = v3;
      sub_10019C6F4();
      sub_10019C6F4();
      v23 = sub_10001C790();
      v66 = v78;

      v67 = v22;

      v68 = v21;

      v83 = sub_1001749C4();
      v84 = v24;
      v81 = 95;
      v82 = 0xE100000000000000;
      v79 = 47;
      v80 = 0xE100000000000000;
      v64 = v23;
      v65 = v23;
      v63[0] = &type metadata for String;
      v63[1] = v23;
      v25 = sub_1001749C4();
      v27 = v26;

      v85 = v25;
      v86 = v27;

      v28 = sub_1001F6C38();

      if (v28 % 4)
      {
        v89._countAndFlagsBits = 61;
        v89._object = 0xE100000000000000;
        v90._countAndFlagsBits = sub_1001F6D78(v89, 4 - v28 % 4);
        sub_1001F6CA8(v90);
      }

      v29 = sub_1001F6328();
      v31 = v30;
      sub_100040C5C(v29, v30);

      a2 = v69;
      if (v31 >> 60 != 15)
      {
        v35 = sub_1000D4D4C();
        sub_10003A36C(v35, v36);
        v37 = sub_1000D4D4C();
        sub_100040C70(v37, v38);
        sub_1001F6B88();
        sub_1000D4D4C();
        v39 = sub_1001F6B78();
        v41 = v70;
        if (v40)
        {
          v42 = v39;
          v43 = v40;
          v85 = 46;
          v86 = 0xE100000000000000;
          __chkstk_darwin(v39, v40);
          v64 = &v85;

          v44 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100072CF0, v63, v42, v43)[2];

          if (v44 == 3)
          {
            v45 = sub_1000D4D4C();
            sub_10003A36C(v45, v46);
            sub_1000374B8(v87, &qword_1002AEBE0);

            v47 = v72;
            sub_100198798(v42, v43, &v88, v72);
            if (v41)
            {
              v48 = v88;
              sub_1000B2894();
              swift_allocError();
              *v49 = v48;
              v50 = sub_1000D4D4C();
              sub_10003A36C(v50, v51);
              return sub_1000374B8(v87, &qword_1002AEBE0);
            }

            v61 = sub_1000D4D4C();
            sub_10003A36C(v61, v62);
            swift_storeEnumTagMultiPayload();
            v57 = v77;
            sub_10019BC50(v47, v18 + *(v77 + 20), type metadata accessor for PromotionalOfferData.SigningMethod);
            goto LABEL_23;
          }

          v55 = sub_1000D4D4C();
          sub_10003A36C(v55, v56);
        }

        else
        {
          v53 = sub_1000D4D4C();
          sub_10003A36C(v53, v54);
        }
      }

      v21 = v68;
      v22 = v67;
      v34 = v78;
    }

    else
    {
      sub_10019C6D4();
      sub_10019C6D4();

      v34 = v78;
      v29 = 0;
      v31 = 0xF000000000000000;
    }

    v57 = v77;
    v58 = v18 + *(v77 + 20);
    v59 = v75;
    *v58 = v76;
    *(v58 + 1) = v59;
    v60 = v74;
    *(v58 + 2) = v73;
    *(v58 + 24) = v34;
    *(v58 + 5) = v22;
    *(v58 + 6) = v29;
    *(v58 + 7) = v31;
    *(v58 + 8) = v60;
    *(v58 + 9) = v21;
    swift_storeEnumTagMultiPayload();
LABEL_23:
    sub_10019BC50(v18, a2, type metadata accessor for PromotionalOfferData);
    v32 = a2;
    v33 = 0;
    v15 = v57;
    return sub_100018460(v32, v33, 1, v15);
  }

  v32 = a2;
  v33 = 1;
  return sub_100018460(v32, v33, 1, v15);
}

uint64_t sub_100197CC4()
{
  v1 = sub_1001F8138();
  sub_10001A278();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  sub_100023510();
  v8 = v7 - v6;
  v36 = 0;
  v37 = 0xE000000000000000;
  *(&v32 + 1) = &type metadata for InAppBuyRequest;
  v31 = swift_allocObject();
  memcpy((v31 + 16), v0, 0x379uLL);
  sub_1000AC5F4(v0, &v34);
  sub_1001F80E8();
  sub_1001F8128();
  (*(v3 + 8))(v8, v1);
  sub_1001F7A18();

  while (1)
  {
    sub_1001F7B88();
    if (!v33)
    {
      break;
    }

    sub_10003708C(&v32, &v30);
    sub_10019C5E0();
    object = v34._object;
    if (v34._object)
    {
      countAndFlagsBits = v34._countAndFlagsBits;
      sub_100019CCC(v35);
      if (qword_1002AC4B8 != -1)
      {
        swift_once();
      }

      v11 = qword_1002E6150;
      if (*(qword_1002E6150 + 16))
      {
        v12 = sub_10011108C();
        if (v13)
        {
          v14 = (*(v11 + 56) + 16 * v12);
          countAndFlagsBits = *v14;
          v15 = v14[1];

          object = v15;
        }
      }

      if (qword_1002AC470 != -1)
      {
        swift_once();
      }

      v16 = qword_1002E60D0;
      if (*(qword_1002E60D0 + 16))
      {
        sub_1001F8068();
        sub_1001F6C28();
        v17 = sub_1001F80D8();
        v18 = ~(-1 << *(v16 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v16 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {
            goto LABEL_22;
          }

          v20 = (*(v16 + 48) + 16 * v19);
          if (*v20 == countAndFlagsBits && v20[1] == object)
          {
            break;
          }

          v22 = sub_1001F7EA8();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);
        sub_10019C5E0();

        if (swift_dynamicCast())
        {
          v23 = v29;
          sub_10019C640();
          v24._countAndFlagsBits = v28;
LABEL_37:
          v24._object = v23;
          sub_1001F6CA8(v24);

          v38._countAndFlagsBits = 38;
          v38._object = 0xE100000000000000;
          sub_1001F6CA8(v38);
          sub_1001F6CA8(v34);

          sub_10019C660();
          continue;
        }

        sub_10019C5E0();

        if (swift_dynamicCast())
        {
          sub_10019C640();
          if (v28)
          {
            v24._countAndFlagsBits = 0x4C4452445453;
          }

          else
          {
            v24._countAndFlagsBits = 1363432531;
          }

          if (v28)
          {
            v23 = 0xE600000000000000;
          }

          else
          {
            v23 = 0xE400000000000000;
          }

          goto LABEL_37;
        }

        sub_10019C5E0();

        if (swift_dynamicCast())
        {
          sub_10019C640();
          if (v28)
          {
            v24._countAndFlagsBits = 1702195828;
          }

          else
          {
            v24._countAndFlagsBits = 0x65736C6166;
          }

          if (v28)
          {
            v23 = 0xE400000000000000;
          }

          else
          {
            v23 = 0xE500000000000000;
          }

          goto LABEL_37;
        }

        sub_10019C660();
      }

      else
      {
LABEL_22:

        sub_10019C660();
      }
    }

    else
    {
      sub_10019C660();
      sub_100019CCC(v35);
    }
  }

  v25 = v36;
  v26 = sub_1001F6C38();
  if (v26 >= 1)
  {
    sub_1001D639C(v26);

    return v36;
  }

  return v25;
}

void sub_10019814C()
{
  v26 = *(v0 + 224);
  if (*(&v26 + 1))
  {
    sub_10019C6AC();
    if (v3)
    {
      if ((*(&v26 + 1) & 0x1000000000000000) != 0)
      {
        sub_10019BE80(&v26, v24, &qword_1002AEBE0);
        v22 = sub_10012F960();
        sub_1001ED558(v22, v23, 10);
        sub_1000374B8(&v26, &qword_1002AEBE0);
        return;
      }

      if ((*(&v26 + 1) & 0x2000000000000000) != 0)
      {
        v24[0] = v26;
        v24[1] = *(&v26 + 1) & 0xFFFFFFFFFFFFFFLL;
        if (v26 == 43)
        {
          if (v2)
          {
            if (v2 != 1)
            {
              sub_10019C600();
              while (1)
              {
                sub_100027240();
                if (!v7 & v6)
                {
                  break;
                }

                sub_10018EDCC();
                if (!v7 || __OFADD__(v16, v15))
                {
                  break;
                }

                sub_10002727C();
                if (v7)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }

LABEL_76:
          __break(1u);
          return;
        }

        if (v26 != 45)
        {
          if (v2)
          {
            while (1)
            {
              sub_100027240();
              if (!v7 & v6)
              {
                break;
              }

              sub_10018EDCC();
              if (!v7 || __OFADD__(v21, v20))
              {
                break;
              }

              sub_10002727C();
              if (v7)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

        if (v2)
        {
          if (v2 != 1)
          {
            sub_10019C600();
            while (1)
            {
              sub_100027240();
              if (!v7 & v6)
              {
                break;
              }

              sub_10018EDCC();
              if (!v7 || __OFSUB__(v12, v11))
              {
                break;
              }

              sub_10002727C();
              if (v7)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }
      }

      else
      {
        if ((v26 & 0x1000000000000000) != 0)
        {
          v4 = ((*(&v26 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_10012F960();
          v4 = sub_1001F7858();
        }

        v5 = *v4;
        if (v5 == 43)
        {
          if (v1 >= 1)
          {
            if (v1 != 1)
            {
              if (v4)
              {
                sub_10018EE30();
                while (1)
                {
                  sub_100027240();
                  if (!v7 & v6)
                  {
                    goto LABEL_68;
                  }

                  sub_10018EDCC();
                  if (!v7 || __OFADD__(v14, v13))
                  {
                    goto LABEL_68;
                  }

                  sub_10002727C();
                  if (v7)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_59;
            }

            goto LABEL_68;
          }

          goto LABEL_75;
        }

        if (v5 != 45)
        {
          if (v1)
          {
            v17 = 0;
            if (v4)
            {
              while (1)
              {
                v18 = *v4 - 48;
                if (v18 > 9)
                {
                  goto LABEL_68;
                }

                v19 = 10 * v17;
                if ((v17 * 10) >> 64 != (10 * v17) >> 63)
                {
                  goto LABEL_68;
                }

                v17 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  goto LABEL_68;
                }

                ++v4;
                if (!--v1)
                {
                  goto LABEL_59;
                }
              }
            }

            goto LABEL_59;
          }

LABEL_68:
          v10 = 1;
          goto LABEL_69;
        }

        if (v1 >= 1)
        {
          if (v1 != 1)
          {
            if (v4)
            {
              sub_10018EE30();
              while (1)
              {
                sub_100027240();
                if (!v7 & v6)
                {
                  goto LABEL_68;
                }

                sub_10018EDCC();
                if (!v7 || __OFSUB__(v9, v8))
                {
                  goto LABEL_68;
                }

                sub_10002727C();
                if (v7)
                {
                  goto LABEL_69;
                }
              }
            }

LABEL_59:
            v10 = 0;
LABEL_69:
            v25 = v10;
            return;
          }

          goto LABEL_68;
        }

        __break(1u);
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }
  }
}

void sub_1001983D4()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = *(v0 + 224);
    sub_10019C6AC();
    if (!v5)
    {

      goto LABEL_73;
    }

    if ((v1 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n();
      v20 = sub_10012F960();
      sub_1001EE478(v20, v21, 10);
      v23 = v22;

      if (v23)
      {
        goto LABEL_73;
      }

LABEL_76:

      return;
    }

    if ((v1 & 0x2000000000000000) != 0)
    {
      if (v2 == 43)
      {
        if (v4)
        {
          if (v4 != 1)
          {
            sub_10019C600();
            while (1)
            {
              sub_100027240();
              if (!v10 && v9)
              {
                break;
              }

              sub_10019C68C();
              if (!v10)
              {
                break;
              }

              sub_10019C67C();
              if (v9)
              {
                break;
              }

              sub_10002727C();
              if (v10)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v2 != 45)
      {
        if (v4)
        {
          while (1)
          {
            sub_100027240();
            if (!v10 && v9)
            {
              break;
            }

            sub_10019C68C();
            if (!v10)
            {
              break;
            }

            sub_10019C67C();
            if (v9)
            {
              break;
            }

            sub_10002727C();
            if (v10)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v4)
      {
        if (v4 != 1)
        {
          v13 = 0;
          sub_10019C600();
          while (1)
          {
            sub_100027240();
            if (!v10 && v9)
            {
              break;
            }

            sub_10019C68C();
            if (!v10)
            {
              break;
            }

            v9 = 10 * v13 >= v14;
            v13 = 10 * v13 - v14;
            if (!v9)
            {
              break;
            }

            sub_10002727C();
            if (v10)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v6 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        sub_10012F960();
        v6 = sub_1001F7858();
      }

      v7 = *v6;
      if (v7 == 43)
      {
        if (v3 >= 1)
        {
          if (v3 != 1)
          {
            if (v6)
            {
              sub_10018EE30();
              while (1)
              {
                sub_100027240();
                if (!v10 && v9)
                {
                  goto LABEL_71;
                }

                sub_10019C68C();
                if (!v10)
                {
                  goto LABEL_71;
                }

                sub_10019C67C();
                if (v9)
                {
                  goto LABEL_71;
                }

                sub_10002727C();
                if (v10)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        goto LABEL_80;
      }

      if (v7 != 45)
      {
        if (v3)
        {
          v15 = 0;
          if (v6)
          {
            while (1)
            {
              v16 = *v6 - 48;
              if (v16 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v15, 0xAuLL))
              {
                goto LABEL_71;
              }

              v9 = __CFADD__(10 * v15, v16);
              v15 = 10 * v15 + v16;
              if (v9)
              {
                goto LABEL_71;
              }

              ++v6;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_71:
        v12 = 1;
LABEL_72:
        v17 = v12;

        if (v17)
        {
LABEL_73:
          v18 = sub_10012F960();
          sub_1001EE474(v18, v19);
          return;
        }

        goto LABEL_76;
      }

      if (v3 >= 1)
      {
        if (v3 != 1)
        {
          v8 = 0;
          if (v6)
          {
            sub_10018EE30();
            while (1)
            {
              sub_100027240();
              if (!v10 && v9)
              {
                goto LABEL_71;
              }

              sub_10019C68C();
              if (!v10)
              {
                goto LABEL_71;
              }

              v9 = 10 * v8 >= v11;
              v8 = 10 * v8 - v11;
              if (!v9)
              {
                goto LABEL_71;
              }

              sub_10002727C();
              if (v10)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_62:
          v12 = 0;
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
  }
}

uint64_t sub_100198684@<X0>(char *a1@<X8>)
{
  v3 = v2;
  v5 = *(v1 + 488);
  if (v5)
  {
    v6 = *(v1 + 480);

    sub_100199180(v6, v5, &v12, a1);
    if (v3)
    {
      v7 = v12;
      sub_1000B2894();
      result = swift_allocError();
      *v9 = v7;
    }

    else
    {
      v11 = sub_1000183C4(&qword_1002B23C0);
      return sub_100018460(a1, 0, 1, v11);
    }
  }

  else
  {
    v10 = sub_1000183C4(&qword_1002B23C0);
    return sub_100018460(a1, 1, 1, v10);
  }

  return result;
}

uint64_t sub_10019876C(char a1)
{
  if (a1)
  {
    return 0x4C4452445453;
  }

  else
  {
    return 1363432531;
  }
}

uint64_t sub_100198798@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, char *a4@<X8>)
{
  v83 = a3;
  v73 = a4;
  v67 = type metadata accessor for PromotionalOfferData.JWTPayload(0);
  __chkstk_darwin(v67, v7);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1001F5E48();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72, v9);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src[0] = 46;
  __src[1] = 0xE100000000000000;
  v75 = __src;
  v11 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100072CF0, v74, a1, a2);
  v69 = v4;
  v12 = 0;
  v13 = v11[2];
  v14 = v11 + 7;
  v15 = _swiftEmptyArrayStorage;
  while (v13 != v12)
  {
    if (v12 >= v11[2])
    {
      __break(1u);
LABEL_36:
      swift_once();
LABEL_15:
      v33 = sub_1001F6688();
      sub_100019C94(v33, qword_1002E6180);
      v34 = sub_1001F6668();
      v35 = sub_1001F7298();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Invalid JWS header and/or payload components", v36, 2u);
      }

      LOBYTE(__src[0]) = 0;
      sub_1000B2894();
      result = swift_willThrowTypedImpl();
LABEL_18:
      *v83 = 0;
      return result;
    }

    v16 = sub_1001F6BE8();
    v18 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032370();
      v15 = v21;
    }

    v19 = v15[2];
    if (v19 >= v15[3] >> 1)
    {
      sub_100032370();
      v15 = v22;
    }

    v15[2] = v19 + 1;
    v20 = &v15[2 * v19];
    v20[4] = v16;
    v20[5] = v18;
    v14 += 4;
    ++v12;
  }

  if (v15[2] != 3)
  {
    goto LABEL_13;
  }

  v23 = v15[5];
  v81 = v15[4];
  v82 = v23;
  v79 = 45;
  v80 = 0xE100000000000000;
  v77 = 43;
  v78 = 0xE100000000000000;
  sub_10001C790();
  v24 = &type metadata for String;
  v81 = sub_1001F75F8();
  v82 = v25;
  v79 = 95;
  v80 = 0xE100000000000000;
  v77 = 47;
  v78 = 0xE100000000000000;
  v26 = sub_1001F75F8();
  v28 = v27;

  __src[0] = v26;
  __src[1] = v28;

  v29 = sub_1001F6C38();

  if (v29 % 4)
  {
    v84._countAndFlagsBits = 61;
    v84._object = 0xE100000000000000;
    v85._countAndFlagsBits = sub_1001F6D78(v84, 4 - v29 % 4);
    sub_1001F6CA8(v85);
  }

  v30 = sub_1001F6328();
  v32 = v31;
  sub_100040C5C(v30, v31);

  if (v32 >> 60 == 15)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_10003A36C(v30, v32);
  if (v15[2] < 2uLL)
  {
    __break(1u);
LABEL_38:
    swift_once();
LABEL_28:
    v53 = sub_1001F6688();
    sub_100019C94(v53, qword_1002E6180);
    swift_errorRetain();
    v54 = sub_1001F6668();
    v55 = sub_1001F7298();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v30;
      v58 = v57;
      *v56 = 138412290;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to decode JWS data: %@", v56, 0xCu);
      sub_1000374B8(v58, &unk_1002BA650);
      v30 = v72;
    }

    LOBYTE(__src[0]) = 0;
    sub_1000B2894();
    swift_willThrowTypedImpl();
    sub_10003A36C(v30, v32);
    sub_10003A36C(v66, v24);

    if (!v14)
    {
      memcpy(__src, v73, sizeof(__src));
      sub_1000374B8(__src, &qword_1002BAC58);
    }

    goto LABEL_18;
  }

  v38 = v15[7];
  v81 = v15[6];
  v82 = v38;
  v79 = 45;
  v80 = 0xE100000000000000;
  v77 = 43;
  v78 = 0xE100000000000000;
  v81 = sub_1001F75F8();
  v82 = v39;
  v79 = 95;
  v80 = 0xE100000000000000;
  v77 = 47;
  v78 = 0xE100000000000000;
  v40 = sub_1001F75F8();
  v42 = v41;

  __src[0] = v40;
  __src[1] = v42;

  v43 = sub_1001F6C38();

  if (v43 % 4)
  {
    v86._countAndFlagsBits = 61;
    v86._object = 0xE100000000000000;
    v87._countAndFlagsBits = sub_1001F6D78(v86, 4 - v43 % 4);
    sub_1001F6CA8(v87);
  }

  v44 = sub_1001F6328();
  v46 = v45;
  sub_100040C5C(v44, v45);

  v47 = v73;
  if (v46 >> 60 == 15)
  {

    sub_10003A36C(v30, v32);
LABEL_14:
    if (qword_1002AC510 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  sub_10003A36C(v44, v46);
  v48 = sub_1000183C4(&qword_1002B23B8);
  *&v47[*(v48 + 52)] = v15;
  sub_1001F5E88();
  swift_allocObject();
  v66 = v44;
  v65 = v46;

  sub_1001F5E78();
  (*(v71 + 104))(v70, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v72);
  sub_1001F5E58();
  sub_1000183C4(&qword_1002BAC58);
  v49 = v47;
  sub_10019BBB4(&qword_1002BAC60, &qword_1002BAC58);
  v50 = v69;
  sub_1001F5E68();
  v14 = v50;
  if (v50)
  {
    v24 = v65;

    if (qword_1002AC510 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  v72 = v48;
  memcpy(v49, __src, 0x48uLL);
  sub_10019BC08(&qword_1002BAC68, type metadata accessor for PromotionalOfferData.JWTPayload);
  v51 = v68;
  v52 = v65;
  sub_1001F5E68();

  v60 = v72;
  result = sub_10019BC50(v51, &v49[*(v72 + 44)], type metadata accessor for PromotionalOfferData.JWTPayload);
  if (v15[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v62 = v15[8];
    v61 = v15[9];

    sub_10003A36C(v30, v32);
    result = sub_10003A36C(v66, v52);
    v63 = &v49[*(v60 + 48)];
    *v63 = v62;
    *(v63 + 1) = v61;
  }

  return result;
}

uint64_t sub_100199180@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, char *a4@<X8>)
{
  v83 = a3;
  v73 = a4;
  v67 = type metadata accessor for IntroOfferEligibilityOverride();
  __chkstk_darwin(v67, v7);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1001F5E48();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72, v9);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src[0] = 46;
  __src[1] = 0xE100000000000000;
  v75 = __src;
  v11 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100048E80, v74, a1, a2);
  v69 = v4;
  v12 = 0;
  v13 = v11[2];
  v14 = v11 + 7;
  v15 = _swiftEmptyArrayStorage;
  while (v13 != v12)
  {
    if (v12 >= v11[2])
    {
      __break(1u);
LABEL_36:
      swift_once();
LABEL_15:
      v33 = sub_1001F6688();
      sub_100019C94(v33, qword_1002E6180);
      v34 = sub_1001F6668();
      v35 = sub_1001F7298();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Invalid JWS header and/or payload components", v36, 2u);
      }

      LOBYTE(__src[0]) = 0;
      sub_1000B2894();
      result = swift_willThrowTypedImpl();
LABEL_18:
      *v83 = 0;
      return result;
    }

    v16 = sub_1001F6BE8();
    v18 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032370();
      v15 = v21;
    }

    v19 = v15[2];
    if (v19 >= v15[3] >> 1)
    {
      sub_100032370();
      v15 = v22;
    }

    v15[2] = v19 + 1;
    v20 = &v15[2 * v19];
    v20[4] = v16;
    v20[5] = v18;
    v14 += 4;
    ++v12;
  }

  if (v15[2] != 3)
  {
    goto LABEL_13;
  }

  v23 = v15[5];
  v81 = v15[4];
  v82 = v23;
  v79 = 45;
  v80 = 0xE100000000000000;
  v77 = 43;
  v78 = 0xE100000000000000;
  sub_10001C790();
  v24 = &type metadata for String;
  v81 = sub_1001F75F8();
  v82 = v25;
  v79 = 95;
  v80 = 0xE100000000000000;
  v77 = 47;
  v78 = 0xE100000000000000;
  v26 = sub_1001F75F8();
  v28 = v27;

  __src[0] = v26;
  __src[1] = v28;

  v29 = sub_1001F6C38();

  if (v29 % 4)
  {
    v84._countAndFlagsBits = 61;
    v84._object = 0xE100000000000000;
    v85._countAndFlagsBits = sub_1001F6D78(v84, 4 - v29 % 4);
    sub_1001F6CA8(v85);
  }

  v30 = sub_1001F6328();
  v32 = v31;
  sub_100040C5C(v30, v31);

  if (v32 >> 60 == 15)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_10003A36C(v30, v32);
  if (v15[2] < 2uLL)
  {
    __break(1u);
LABEL_38:
    swift_once();
LABEL_28:
    v53 = sub_1001F6688();
    sub_100019C94(v53, qword_1002E6180);
    swift_errorRetain();
    v54 = sub_1001F6668();
    v55 = sub_1001F7298();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v30;
      v58 = v57;
      *v56 = 138412290;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to decode JWS data: %@", v56, 0xCu);
      sub_1000374B8(v58, &unk_1002BA650);
      v30 = v72;
    }

    LOBYTE(__src[0]) = 0;
    sub_1000B2894();
    swift_willThrowTypedImpl();
    sub_10003A36C(v30, v32);
    sub_10003A36C(v66, v24);

    if (!v14)
    {
      memcpy(__src, v73, sizeof(__src));
      sub_1000374B8(__src, &qword_1002BAC40);
    }

    goto LABEL_18;
  }

  v38 = v15[7];
  v81 = v15[6];
  v82 = v38;
  v79 = 45;
  v80 = 0xE100000000000000;
  v77 = 43;
  v78 = 0xE100000000000000;
  v81 = sub_1001F75F8();
  v82 = v39;
  v79 = 95;
  v80 = 0xE100000000000000;
  v77 = 47;
  v78 = 0xE100000000000000;
  v40 = sub_1001F75F8();
  v42 = v41;

  __src[0] = v40;
  __src[1] = v42;

  v43 = sub_1001F6C38();

  if (v43 % 4)
  {
    v86._countAndFlagsBits = 61;
    v86._object = 0xE100000000000000;
    v87._countAndFlagsBits = sub_1001F6D78(v86, 4 - v43 % 4);
    sub_1001F6CA8(v87);
  }

  v44 = sub_1001F6328();
  v46 = v45;
  sub_100040C5C(v44, v45);

  v47 = v73;
  if (v46 >> 60 == 15)
  {

    sub_10003A36C(v30, v32);
LABEL_14:
    if (qword_1002AC510 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  sub_10003A36C(v44, v46);
  v48 = sub_1000183C4(&qword_1002B23C0);
  *&v47[*(v48 + 52)] = v15;
  sub_1001F5E88();
  swift_allocObject();
  v66 = v44;
  v65 = v46;

  sub_1001F5E78();
  (*(v71 + 104))(v70, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v72);
  sub_1001F5E58();
  sub_1000183C4(&qword_1002BAC40);
  v49 = v47;
  sub_10019BBB4(&qword_1002BAC48, &qword_1002BAC40);
  v50 = v69;
  sub_1001F5E68();
  v14 = v50;
  if (v50)
  {
    v24 = v65;

    if (qword_1002AC510 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  v72 = v48;
  memcpy(v49, __src, 0x48uLL);
  sub_10019BC08(&qword_1002BAC50, type metadata accessor for IntroOfferEligibilityOverride);
  v51 = v68;
  v52 = v65;
  sub_1001F5E68();

  v60 = v72;
  result = sub_10019BC50(v51, &v49[*(v72 + 44)], type metadata accessor for IntroOfferEligibilityOverride);
  if (v15[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v62 = v15[8];
    v61 = v15[9];

    sub_10003A36C(v30, v32);
    result = sub_10003A36C(v66, v52);
    v63 = &v49[*(v60 + 48)];
    *v63 = v62;
    *(v63 + 1) = v61;
  }

  return result;
}

uint64_t sub_100199B68(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027CD58;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100199BE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100199B68(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100199C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10019876C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100199CEC()
{
  result = sub_1001F69B8();
  qword_1002E6150 = result;
  return result;
}

uint64_t sub_100199D28()
{
  v0 = sub_1001F7F58();

  if (v0 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100199D88(char a1)
{
  result = 1935959649;
  switch(a1)
  {
    case 1:
      result = 0x756F636341707061;
      break;
    case 2:
      result = 0x496D616441707061;
      break;
    case 3:
      result = 0x64697344707061;
      break;
    case 4:
      result = 0x7256747845707061;
      break;
    case 5:
    case 21:
      sub_10001E818();
      result = v5 | 2;
      break;
    case 6:
      result = 6580578;
      break;
    case 7:
      result = 1936881250;
      break;
    case 8:
    case 31:
      sub_10001E818();
      result = v6 + 1;
      break;
    case 9:
      sub_10001E818();
      result = v4 + 15;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 1684632935;
      break;
    case 12:
      result = 0x6E4F707041534F69;
      break;
    case 13:
      result = 0x636E7973626BLL;
      break;
    case 14:
      result = 0x6D614E726566666FLL;
      break;
    case 15:
      result = 0x646F43726566666FLL;
      break;
    case 16:
      result = 0x66664F636F486461;
      break;
    case 17:
      result = 0x79654B636F486461;
      break;
    case 18:
      result = 0x6E6F4E636F486461;
      break;
    case 19:
      result = 0x676953636F486461;
      break;
    case 20:
      result = 0x6D6954636F486461;
      break;
    case 22:
      sub_10001E818();
      result = v8 + 9;
      break;
    case 23:
      result = 26480;
      break;
    case 24:
      result = 0x6563697270;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 0x54746375646F7270;
      break;
    case 27:
      result = 0x797469746E617571;
      break;
    case 28:
      result = 0x7975626572;
      break;
    case 29:
      result = 0x41656C62616C6173;
      break;
    case 30:
      result = 0x754E6C6169726573;
      break;
    case 32:
      sub_10001E818();
      result = v7 + 3;
      break;
    case 33:
      result = 0x686F4365726F7473;
      break;
    case 34:
      sub_10001E818();
      result = v3 | 4;
      break;
    case 35:
      result = 0x704F626557736168;
      break;
    case 36:
      result = 1682534515;
      break;
    case 37:
      result = 6580598;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10019A244(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BAC28);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v13 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_10019BA10();
  sub_1001F8198();
  v15 = 0;
  sub_10019C5C0();
  sub_1001F7D18();
  if (!v2)
  {
    sub_10019C4D0(1);
    sub_1001F7D18();
    sub_10019C4D0(2);
    sub_1001F7D18();
    sub_10019C4D0(3);
    sub_1001F7D18();
    sub_10019C4D0(4);
    sub_1001F7D18();
    sub_10019C4D0(5);
    sub_1001F7D18();
    sub_10019C4D0(6);
    sub_1001F7D88();
    sub_10019C4D0(7);
    sub_1001F7D18();
    sub_10019C4D0(8);
    sub_1001F7D18();
    v15 = v3[544];
    v14 = 9;
    sub_10019BB0C();
    sub_10019C620();
    sub_10019C5C0();
    sub_1001F7D58();
    v15 = v3[96];
    v14 = 10;
    sub_10019C620();
    sub_10019C5C0();
    sub_1001F7D58();
    sub_10019C4D0(11);
    sub_1001F7D18();
    sub_10019C4D0(12);
    sub_1001F7D18();
    sub_10019C4D0(13);
    sub_1001F7D18();
    sub_10019C4D0(14);
    sub_1001F7D18();
    sub_10019C4D0(15);
    sub_1001F7D18();
    sub_10019C4D0(16);
    sub_1001F7D18();
    sub_10019C4D0(17);
    sub_1001F7D18();
    sub_10019C4D0(18);
    sub_1001F7D18();
    sub_10019C4D0(19);
    sub_1001F7D18();
    sub_10019C4D0(20);
    sub_1001F7D18();
    sub_10019C4D0(21);
    sub_1001F7D18();
    sub_10019C4D0(22);
    sub_1001F7D18();
    sub_10019C4D0(23);
    sub_1001F7D18();
    sub_10019C4D0(24);
    sub_1001F7D18();
    v15 = v3[200];
    v14 = 25;
    sub_10019BB60();
    sub_10019C620();
    sub_10019C5C0();
    sub_1001F7D58();
    sub_10019C4D0(26);
    sub_1001F7D18();
    sub_10019C4D0(27);
    sub_1001F7D18();
    sub_10019C4D0(28);
    sub_1001F7D18();
    sub_10019C4D0(29);
    sub_1001F7D18();
    sub_10019C4D0(30);
    sub_1001F7D18();
    sub_10019C4D0(31);
    sub_1001F7D18();
    sub_10019C4D0(32);
    sub_1001F7D18();
    sub_10019C4D0(33);
    sub_1001F7D18();
    v15 = v3[568];
    v14 = 34;
    sub_10019C620();
    sub_10019C5C0();
    sub_1001F7D58();
    sub_10019C4D0(35);
    sub_1001F7D18();
    sub_10019C4D0(36);
    sub_1001F7D18();
    sub_10019C4D0(37);
    sub_1001F7D18();
  }

  return (*(v7 + 8))(v11, v5);
}

void *sub_10019A760@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BAC08);
  sub_10001A278();
  __chkstk_darwin(v6, v7);
  sub_1000402A0(v130);
  memcpy(&v126[7], v130, 0x139uLL);
  sub_10001AE68(a1, a1[3]);
  sub_10019BA10();
  sub_1001F8178();
  if (v2)
  {
    sub_10019C58C();
    sub_10019C560();
    sub_10019C4A8();
    sub_10019C630();
    sub_100019CCC(a1);

    if (v5)
    {
    }

    if (v92)
    {
    }

    if (v90)
    {
    }

    memcpy(v119, &v126[7], 0x139uLL);
    return sub_1000374B8(v119, &qword_1002ADF78);
  }

  else
  {
    v8 = a2;
    LOBYTE(v119[0]) = 0;
    sub_10019C5B4();
    v9 = sub_1001F7C08();
    v86 = v10;
    sub_10019C4E8(1);
    v11 = sub_1001F7C08();
    v85 = v12;
    sub_10019C4E8(2);
    v93 = sub_1001F7C08();
    v84 = v13;
    sub_10019C4E8(3);
    v91 = sub_1001F7C08();
    v83 = v14;
    sub_10019C4E8(4);
    v81 = sub_1001F7C08();
    v82 = v15;
    sub_10019C4E8(5);
    v80 = sub_1001F7C08();
    v115 = v16;
    sub_10019C4E8(6);
    v79 = sub_1001F7C78();
    v89 = v17;
    sub_10019C4E8(7);
    v77 = sub_1001F7C08();
    v113 = v18;
    sub_10019C4E8(8);
    v78 = sub_1001F7C08();
    v76 = v11;
    v116 = v19;
    sub_10019BA64();
    sub_10019C5CC();
    sub_10019C5B4();
    sub_1001F7C48();
    sub_10019C5CC();
    sub_10019C5B4();
    sub_1001F7C48();
    sub_10019C4E8(11);
    v75 = sub_1001F7C08();
    v88 = v20;
    sub_10019C4E8(12);
    v74 = sub_1001F7C08();
    v87 = v21;
    sub_10019C4E8(13);
    v73 = sub_1001F7C08();
    v131 = v22;
    sub_10019C4E8(14);
    v72 = sub_1001F7C08();
    v117 = v23;
    sub_10019C4E8(15);
    v71 = sub_1001F7C08();
    v114 = v24;
    sub_10019C4E8(16);
    v70 = sub_1001F7C08();
    v112 = v25;
    sub_10019C4E8(17);
    v69 = sub_1001F7C08();
    v111 = v26;
    sub_10019C4E8(18);
    v68 = sub_1001F7C08();
    v110 = v27;
    sub_10019C4E8(19);
    v67 = sub_1001F7C08();
    v109 = v28;
    sub_10019C4E8(20);
    v66 = sub_1001F7C08();
    v108 = v29;
    sub_10019C4E8(21);
    v65 = sub_1001F7C08();
    v105 = v30;
    sub_10019C4E8(22);
    v64 = sub_1001F7C08();
    v107 = v31;
    sub_10019C4E8(23);
    v63 = sub_1001F7C08();
    v104 = v32;
    sub_10019C4E8(24);
    v62 = sub_1001F7C08();
    v102 = v33;
    sub_10019BAB8();
    sub_10019C5CC();
    sub_10019C5B4();
    sub_1001F7C48();
    sub_10019C4E8(26);
    v61 = sub_1001F7C08();
    v97 = v34;
    sub_10019C4E8(27);
    v60 = sub_1001F7C08();
    v96 = v35;
    sub_10019C4E8(28);
    v59 = sub_1001F7C08();
    v98 = v36;
    sub_10019C4E8(29);
    v58 = sub_1001F7C08();
    v99 = v37;
    sub_10019C4E8(30);
    v57 = sub_1001F7C08();
    v100 = v38;
    sub_10019C4E8(31);
    v56 = sub_1001F7C08();
    v101 = v39;
    sub_10019C4E8(32);
    v55 = sub_1001F7C08();
    v103 = v40;
    sub_10019C4E8(33);
    v54 = sub_1001F7C08();
    v95 = v41;
    LOBYTE(v118[0]) = 34;
    sub_10019C5CC();
    sub_10019C5B4();
    sub_1001F7C48();
    sub_10019C4E8(35);
    v42 = sub_1001F7C08();
    v94 = v43;
    v44 = v42;
    sub_10019C4E8(36);
    v53 = sub_1001F7C08();
    v106 = v45;
    v125[326] = 37;
    sub_10019C5B4();
    v46 = sub_1001F7C08();
    v51 = v47;
    v52 = v46;
    v48 = sub_10019C5A4();
    v49(v48);
    *(&v118[68] + 1) = *v127;
    *(&v118[12] + 1) = *v129;
    HIDWORD(v118[12]) = *&v129[3];
    HIDWORD(v118[25]) = *&v128[3];
    *(&v118[25] + 1) = *v128;
    HIDWORD(v118[68]) = *&v127[3];
    v118[0] = v9;
    v118[1] = v86;
    v118[2] = v93;
    v118[3] = v84;
    v118[4] = v91;
    v118[5] = v83;
    v118[6] = v81;
    v118[7] = v82;
    v118[8] = v79;
    v118[9] = v89;
    v118[10] = v77;
    v118[11] = v113;
    LOBYTE(v118[12]) = 0;
    v118[13] = v44;
    v118[14] = v94;
    v118[15] = v73;
    v118[16] = v131;
    v118[17] = v72;
    v118[18] = v117;
    v118[19] = v65;
    v118[20] = v105;
    v118[21] = v63;
    v118[22] = v104;
    v118[23] = v62;
    v118[24] = v102;
    LOBYTE(v118[25]) = 0;
    v118[26] = v61;
    v118[27] = v97;
    v118[28] = v60;
    v118[29] = v96;
    v118[30] = v54;
    v118[31] = v95;
    v118[32] = v59;
    v118[33] = v98;
    v118[34] = v58;
    v118[35] = v99;
    v118[36] = v57;
    v118[37] = v100;
    v118[38] = v56;
    v118[39] = v101;
    v118[40] = v55;
    v118[41] = v103;
    v118[42] = v80;
    v118[43] = v115;
    v118[44] = v75;
    v118[45] = v88;
    v118[46] = v74;
    v118[47] = v87;
    v118[48] = v52;
    v118[49] = v51;
    v118[50] = v70;
    v118[51] = v112;
    v118[52] = v69;
    v118[53] = v111;
    v118[54] = v68;
    v118[55] = v110;
    v118[56] = v67;
    v118[57] = v109;
    v118[58] = v66;
    v118[59] = v108;
    v118[60] = v64;
    v118[61] = v107;
    v118[62] = v78;
    v118[63] = v116;
    v118[64] = v76;
    v118[65] = v85;
    v118[66] = v71;
    v118[67] = v114;
    LOBYTE(v118[68]) = 0;
    v118[69] = v53;
    v118[70] = v106;
    LOBYTE(v118[71]) = 0;
    memcpy(&v118[71] + 1, v126, 0x140uLL);
    sub_1000AC5F4(v118, v119);
    sub_100019CCC(a1);
    v119[0] = v9;
    v119[1] = v86;
    v119[2] = v93;
    v119[3] = v84;
    v119[4] = v91;
    v119[5] = v83;
    v119[6] = v81;
    v119[7] = v82;
    v119[8] = v79;
    v119[9] = v89;
    v119[10] = v77;
    v119[11] = v113;
    LOBYTE(v119[12]) = 0;
    v119[13] = v44;
    v119[14] = v94;
    v119[15] = v73;
    v119[16] = v131;
    v119[17] = v72;
    v119[18] = v117;
    v119[19] = v65;
    v119[20] = v105;
    v119[21] = v63;
    v119[22] = v104;
    v119[23] = v62;
    v119[24] = v102;
    LOBYTE(v119[25]) = 0;
    v119[26] = v61;
    v119[27] = v97;
    v119[28] = v60;
    v119[29] = v96;
    v119[30] = v54;
    v119[31] = v95;
    v119[32] = v59;
    v119[33] = v98;
    v119[34] = v58;
    v119[35] = v99;
    v119[36] = v57;
    v119[37] = v100;
    v119[38] = v56;
    v119[39] = v101;
    v119[40] = v55;
    v119[41] = v103;
    v119[42] = v80;
    v119[43] = v115;
    *(&v119[12] + 1) = *v129;
    HIDWORD(v119[12]) = *&v129[3];
    HIDWORD(v119[25]) = *&v128[3];
    *(&v119[25] + 1) = *v128;
    v119[44] = v75;
    v119[45] = v88;
    v119[46] = v74;
    v119[47] = v87;
    v119[48] = v52;
    v119[49] = v51;
    v119[50] = v70;
    v119[51] = v112;
    v119[52] = v69;
    v119[53] = v111;
    v119[54] = v68;
    v119[55] = v110;
    v119[56] = v67;
    v119[57] = v109;
    v119[58] = v66;
    v119[59] = v108;
    v119[60] = v64;
    v119[61] = v107;
    v119[62] = v78;
    v119[63] = v116;
    v119[64] = v76;
    v119[65] = v85;
    v119[66] = v71;
    v119[67] = v114;
    v120 = 0;
    *v121 = *v127;
    *&v121[3] = *&v127[3];
    v122 = v53;
    v123 = v106;
    v124 = 0;
    memcpy(v125, v126, 0x140uLL);
    sub_1000ACE5C(v119);
    return memcpy(v8, v118, 0x379uLL);
  }
}

uint64_t sub_10019B878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100199D28();
  *a1 = result;
  return result;
}

uint64_t sub_10019B8A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100199D88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10019B8DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100199D7C();
  *a1 = result;
  return result;
}

uint64_t sub_10019B904@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100199D80();
  *a1 = result;
  return result;
}

uint64_t sub_10019B92C(uint64_t a1)
{
  v2 = sub_10019BA10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019B968(uint64_t a1)
{
  v2 = sub_10019BA10();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10019B9A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10019A760(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x379uLL);
  }

  return result;
}

unint64_t sub_10019BA10()
{
  result = qword_1002BAC10;
  if (!qword_1002BAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC10);
  }

  return result;
}

unint64_t sub_10019BA64()
{
  result = qword_1002BAC18;
  if (!qword_1002BAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC18);
  }

  return result;
}

unint64_t sub_10019BAB8()
{
  result = qword_1002BAC20;
  if (!qword_1002BAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC20);
  }

  return result;
}

unint64_t sub_10019BB0C()
{
  result = qword_1002BAC30;
  if (!qword_1002BAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC30);
  }

  return result;
}

unint64_t sub_10019BB60()
{
  result = qword_1002BAC38;
  if (!qword_1002BAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC38);
  }

  return result;
}

uint64_t sub_10019BBB4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019BC08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019BC50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100023520();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10019BCB0()
{

  if (*(v0 + 616) != 1)
  {
  }

  return _swift_deallocObject(v0, 905, 7);
}

uint64_t sub_10019BE80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000183C4(a3);
  sub_100023520();
  (*(v5 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PricingParameters(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10019BFACLL);
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

uint64_t getEnumTagSinglePayload for InAppBuyRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InAppBuyRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
        JUMPOUT(0x10019C138);
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10019C178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 889))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_10019C1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 888) = 0;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 889) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 889) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10019C2F8()
{
  result = qword_1002BAC70;
  if (!qword_1002BAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC70);
  }

  return result;
}

unint64_t sub_10019C350()
{
  result = qword_1002BAC78;
  if (!qword_1002BAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC78);
  }

  return result;
}

unint64_t sub_10019C3A8()
{
  result = qword_1002BAC80;
  if (!qword_1002BAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC80);
  }

  return result;
}

unint64_t sub_10019C400()
{
  result = qword_1002BAC88;
  if (!qword_1002BAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC88);
  }

  return result;
}

unint64_t sub_10019C454()
{
  result = qword_1002BAC90;
  if (!qword_1002BAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC90);
  }

  return result;
}

void sub_10019C4A8()
{
  v0[56] = 0;
  v0[57] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[52] = 0;
  v0[53] = 0;
  v0[49] = 0;
  v0[50] = 0;
  v0[51] = 0;
  v0[58] = 0;
  v0[59] = 0;
  v0[71] = 0;
  *(v1 - 72) = 0;
  v0[48] = 0;
}

void sub_10019C500()
{
  v0[56] = 0;
  v0[57] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[52] = 0;
  v0[53] = 0;
  v0[49] = 0;
  v0[50] = 0;
  v0[51] = 0;
  v0[58] = 0;
  v0[59] = 0;
  v0[71] = 0;
}

void sub_10019C520()
{
  v0[56] = 0;
  v0[57] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[52] = 0;
  v0[53] = 0;
  v0[49] = 0;
  v0[50] = 0;
  v0[51] = 0;
}

void sub_10019C538()
{
  *(v0 + 376) = 0;
  *(v0 + 368) = 0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0;
  *(v0 + 544) = 0;
  *(v0 + 560) = 0;
  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  *(v0 + 520) = 0;
  *(v0 + 528) = 0;
}

void sub_10019C560()
{
  v0[70] = 0;
  v0[62] = 0;
  v0[63] = 0;
  v0[64] = 0;
  v0[65] = 0;
  v0[66] = 0;
}

void sub_10019C578()
{
  v0[62] = 0;
  v0[63] = 0;
  v0[64] = 0;
  v0[65] = 0;
  v0[66] = 0;
}

void sub_10019C58C()
{
  *(v0 + 376) = 0;
  *(v0 + 368) = 0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0;
  *(v0 + 544) = 0;
}

uint64_t sub_10019C5E0()
{

  return sub_10019BE80(v0 + 16, v0 + 120, v1);
}

void sub_10019C610()
{
  v0[60] = 0;
  v0[57] = 0;
  v0[54] = 0;
  v0[55] = 0;
}

void sub_10019C640()
{
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;
  v4._countAndFlagsBits = 61;
  v4._object = 0xE100000000000000;

  sub_1001F6CA8(v4);
}

uint64_t sub_10019C660()
{

  return sub_1000374B8(v0 + 16, v1);
}

void sub_10019C698()
{
  v0[61] = 0;
  v0[62] = 0;
  v0[63] = 0;
  v0[64] = 0;
  v0[65] = 0;
  v0[66] = 0;
}

void sub_10019C6C0()
{
  *(v0 + 376) = 0;
  *(v0 + 368) = 0;
  *(v0 + 480) = 0;
  *(v0 + 544) = 0;
}

uint64_t sub_10019C6D4()
{

  return sub_10019BE80(v1 - 112, v1 - 128, v0);
}

uint64_t sub_10019C6F4()
{

  return sub_10019BE80(v1 - 112, v1 - 192, v0);
}

BOOL sub_10019C714(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D158;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  return v4 != 0;
}

uint64_t sub_10019C770(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D190;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10019C7BC(char a1)
{
  result = 0xD000000000000041;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000003BLL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
    case 7:
      result = 0xD000000000000030;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10019C8B4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10019C714(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10019C9D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10019C770(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10019CA04@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10019C7BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10019CAE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D270;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10019CB30(char a1)
{
  result = 0x6449676F6C616964;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x736E6F6974706FLL;
      break;
    case 3:
      result = 0x497463656A627573;
      break;
    case 4:
      result = 0x707954746E657665;
      break;
    case 5:
      result = 0x72556E6F69746361;
      break;
    case 6:
      result = 0x54746E657645746DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10019CC34(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BACB8);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v13 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_10019D4A0();
  sub_1001F8198();
  LOBYTE(v13) = *v3;
  v14 = 0;
  sub_10019D604();
  sub_10019DD3C();
  sub_1001F7D58();
  if (!v2)
  {
    sub_10019DCDC(1);
    v13 = *(v3 + 24);
    v14 = 2;
    sub_1000183C4(&qword_1002ACA10);
    sub_10001DE1C(&qword_1002ACB30);
    sub_10019DD3C();
    sub_1001F7D58();
    sub_10019DCDC(3);
    LOBYTE(v13) = *(v3 + 48);
    v14 = 4;
    sub_10019D658();
    sub_10019DD3C();
    sub_1001F7D58();
    sub_10019DCDC(5);
    sub_10019DCDC(6);
  }

  return (*(v7 + 8))(v11, v5);
}

void *sub_10019CE6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BAC98);
  sub_10001A278();
  __chkstk_darwin(v6, v7);
  v44 = 1;
  v8 = a1[3];
  v9 = a1[4];
  v28 = a1;
  sub_10001AE68(a1, v8);
  sub_10019D4A0();
  sub_1001F8178();
  if (v2)
  {
    v46 = v2;
    sub_10019DCC8();
    sub_100019CCC(a1);
    LOBYTE(v31) = 8;
    *(&v31 + 1) = *v45;
    HIDWORD(v31) = *&v45[3];
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = v8;
    v36 = v9;
    v37 = v44;
    *v38 = *v43;
    *&v38[3] = *&v43[3];
    v39 = a1;
    v40 = v2;
    v41 = 0;
    v42 = 0;
    return sub_10019D4F4(&v31);
  }

  else
  {
    sub_10019D524();
    sub_10019DD5C();
    v27 = v31;
    v25 = sub_10019DD00(1);
    v26 = v11;
    sub_1000183C4(&qword_1002ACA10);
    sub_10001DE1C(&qword_1002ACB50);
    sub_1001F7C48();
    v12 = v31;
    v13 = sub_10019DD00(3);
    v24 = v14;
    LOBYTE(__src[0]) = 4;
    sub_10019D578();
    sub_10019DD5C();
    v44 = v31;
    v15 = sub_10019DD00(5);
    v17 = v16;
    v30 = 6;
    v46 = 0;
    v18 = sub_1001F7C08();
    v19 = sub_10019DCB4();
    v21 = v20;
    v22(v19, v5);
    LOBYTE(__src[0]) = v27;
    __src[1] = v25;
    __src[2] = v26;
    __src[3] = v12;
    __src[4] = v13;
    __src[5] = v24;
    v23 = v44;
    LOBYTE(__src[6]) = v44;
    __src[7] = v15;
    __src[8] = v17;
    __src[9] = v18;
    __src[10] = v21;
    sub_10019D5CC(__src, &v31);
    sub_100019CCC(v28);
    LOBYTE(v31) = v27;
    v32 = v25;
    v33 = v26;
    v34 = v12;
    v35 = v13;
    v36 = v24;
    v37 = v23;
    v39 = v15;
    v40 = v17;
    v41 = v18;
    v42 = v21;
    sub_10019D4F4(&v31);
    return memcpy(a2, __src, 0x58uLL);
  }
}

uint64_t sub_10019D338@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10019CAE0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10019D368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10019CB30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10019D39C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10019CB2C();
  *a1 = result;
  return result;
}

uint64_t sub_10019D3C4(uint64_t a1)
{
  v2 = sub_10019D4A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019D400(uint64_t a1)
{
  v2 = sub_10019D4A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10019D43C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10019CE6C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x58uLL);
  }

  return result;
}

unint64_t sub_10019D4A0()
{
  result = qword_1002BACA0;
  if (!qword_1002BACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACA0);
  }

  return result;
}

unint64_t sub_10019D524()
{
  result = qword_1002BACA8;
  if (!qword_1002BACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACA8);
  }

  return result;
}

unint64_t sub_10019D578()
{
  result = qword_1002BACB0;
  if (!qword_1002BACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACB0);
  }

  return result;
}

unint64_t sub_10019D604()
{
  result = qword_1002BACC0;
  if (!qword_1002BACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACC0);
  }

  return result;
}

unint64_t sub_10019D658()
{
  result = qword_1002BACC8;
  if (!qword_1002BACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACC8);
  }

  return result;
}

_BYTE *sub_10019D6AC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x10019D748);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_10019D77C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x10019D848);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Metrics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x10019D948);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10019D988(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019D9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_10019DA54()
{
  result = qword_1002BACD0;
  if (!qword_1002BACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACD0);
  }

  return result;
}

unint64_t sub_10019DAAC()
{
  result = qword_1002BACD8;
  if (!qword_1002BACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACD8);
  }

  return result;
}

unint64_t sub_10019DB04()
{
  result = qword_1002BACE0;
  if (!qword_1002BACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACE0);
  }

  return result;
}

unint64_t sub_10019DB5C()
{
  result = qword_1002BACE8;
  if (!qword_1002BACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACE8);
  }

  return result;
}

unint64_t sub_10019DBB4()
{
  result = qword_1002BACF0;
  if (!qword_1002BACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACF0);
  }

  return result;
}

unint64_t sub_10019DC08()
{
  result = qword_1002BACF8;
  if (!qword_1002BACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACF8);
  }

  return result;
}

unint64_t sub_10019DC5C()
{
  result = qword_1002BAD00;
  if (!qword_1002BAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAD00);
  }

  return result;
}

uint64_t sub_10019DCDC@<X0>(char a1@<W8>)
{
  *(v1 - 80) = a1;

  return sub_1001F7D18();
}

uint64_t sub_10019DD00@<X0>(char a1@<W8>)
{
  *(v1 - 192) = a1;

  return sub_1001F7C08();
}

uint64_t sub_10019DD5C()
{

  return sub_1001F7C48();
}

void sub_10019DD84()
{
  sub_10019F5B8();
  sub_10019F598();
  sub_10019F478();
  do
  {
    sub_1001F66B8(v2, v1, v0);
    sub_10019F544();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v4 = v4 || v3 == 14;
  if (!v4)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F484(v5, 32);
    sub_10019F52C(v6, v7);
LABEL_10:
    sub_10019F58C();
    sub_10019F578();
    return;
  }

  __break(1u);
}

void sub_10019DE1C(int a1)
{
  if (close(a1) == -1 && sub_1001F66A8() != 4)
  {
    sub_10019F4B0();
    v2 = v2 || v1 == 14;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      sub_1000274C4();
      v3 = sub_1000276A0();
      *v4 = 0x65736F6C63;
      v4[1] = 0xE500000000000000;
      sub_10019F4BC(v3, v4);
    }
  }
}

void sub_10019DE98()
{
  sub_10019F5B8();
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v2;
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    sub_10019F4F8();
    sub_10019F478();
    do
    {
      if (writev(v1, v0, v4) != -1)
      {
        goto LABEL_13;
      }

      v5 = sub_1001F66A8();
    }

    while (v5 == 4);
    v6 = v5;
    if (v5 == 35)
    {
LABEL_13:
      sub_10019F578();
      return;
    }

    if (v5 != 9 && v5 != 14)
    {
      sub_1000274C4();
      sub_1000276A0();
      sub_10019F484(v8, 26);
      *(v9 + 16) = v6;
      swift_willThrow();
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_10019DF8C()
{
  sub_10019F5B8();
  sub_10019F490();
  sub_10019F478();
  do
  {
    v2 = sub_10012F2E8();
    read(v2, v3, v1);
    sub_10019F5AC();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v4)
  {
LABEL_11:
    sub_10019F578();
    return;
  }

  v4 = v0 == 9 || v0 == 14;
  if (!v4)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F438(v5, 30);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_10019E03C()
{
  sub_10019F5B8();
  sub_10019F490();
  sub_10019F478();
  do
  {
    v2 = sub_10012F2E8();
    write(v2, v3, v1);
    sub_10019F5AC();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v4)
  {
LABEL_11:
    sub_10019F578();
    return;
  }

  v4 = v0 == 9 || v0 == 14;
  if (!v4)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F438(v5, 31);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_10019E0EC()
{
  sub_10019F508();
  sub_10019F520();
  while (1)
  {
    v1 = sub_10019F564();
    if (pread(v1, v2, v3, v4) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4A4();
      if (!v5)
      {
        v5 = v0 == 9 || v0 == 14;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          sub_1000274C4();
          sub_1000276A0();
          sub_10019F458(v6, 38);
        }
      }

      return;
    }
  }
}

void sub_10019E1A4()
{
  sub_10019F4D4();
  do
  {
    v0 = sub_1000C9970();
    ftruncate(v0, v1);
    sub_10019F544();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v3 = v3 || v2 == 14;
  if (!v3)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F4E0(v4, 27);
    sub_10019F52C(v5, v6);
LABEL_10:
    sub_10019F58C();
    return;
  }

  __break(1u);
}

void sub_10019E23C()
{
  sub_10019F5B8();
  sub_10012F50C();
  sub_10019F478();
  do
  {
    v1 = sub_10012F2E8();
    if (lseek(v1, v2, v0) != -1)
    {
      goto LABEL_9;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v4 = v4 || v3 == 14;
  if (!v4)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F484(v5, 32);
    sub_10019F52C(v6, v7);
LABEL_9:
    sub_10019F578();
    return;
  }

  __break(1u);
}

void sub_10019E2DC()
{
  sub_10019F508();
  sub_10019F520();
  while (1)
  {
    v1 = sub_10019F564();
    if (pwrite(v1, v2, v3, v4) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4A4();
      if (!v5)
      {
        v5 = v0 == 9 || v0 == 14;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          sub_1000274C4();
          sub_1000276A0();
          sub_10019F458(v6, 39);
        }
      }

      return;
    }
  }
}

void sub_10019E394()
{
  sub_10019F5B8();
  sub_10019F490();
  sub_10019F478();
  do
  {
    v2 = sub_10012F2E8();
    if (accept(v2, v3, v1) != -1)
    {
      goto LABEL_10;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v4)
  {
LABEL_10:
    sub_10019F578();
    return;
  }

  v4 = v0 == 9 || v0 == 14;
  if (!v4)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F438(v5, 28);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_10019E458(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!HIDWORD(a3))
    {
      sub_10019F4F8();
      sub_10019F4D4();
      while (bind(v4, v3, v5) == -1)
      {
        v6 = sub_1001F66A8();
        if (v6 != 4)
        {
          v7 = v6;
          if (v6 != 9 && v6 != 14)
          {
            sub_1000274C4();
            sub_1000276A0();
            sub_10019F4E0(v9, 27);
            *(v10 + 16) = v7;
            swift_willThrow();
            return;
          }

          goto LABEL_14;
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_10019E514(uint64_t a1, uint64_t a2, socklen_t a3)
{
  sub_10019F4D4();
  while (1)
  {
    v4 = sub_1000C9970();
    if (connect(v4, v5, a3) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4EC();
      v7 = v7 || v6 == 14;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        sub_1000274C4();
        sub_1000276A0();
        sub_10019F4E0(v8, 30);
        sub_10019F52C(v9, v10);
        swift_errorRetain();
        sub_1000183C4(&qword_1002ACE88);
        if (swift_dynamicCast())
        {

          if (v14 == 36)
          {

            return;
          }

          sub_1000276A0();
          *v11 = v12;
          *(v11 + 8) = v13;
          *(v11 + 16) = v14;
          swift_willThrow();
        }
      }

      return;
    }
  }
}

void sub_10019E670()
{
  sub_10019F550();
  sub_10019F4D4();
  while (1)
  {
    v1 = sub_1000C9970();
    if (getpeername(v1, v2, v0) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v4 = v4 || v3 == 14;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        sub_1000274C4();
        sub_1000276A0();
        sub_10019F4E0(v5, 42);
        sub_10019F4BC(v6, v7);
      }

      return;
    }
  }
}

void sub_10019E704()
{
  sub_10019F550();
  sub_10019F4D4();
  while (1)
  {
    v1 = sub_1000C9970();
    if (getsockname(v1, v2, v0) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v4 = v4 || v3 == 14;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        sub_1000274C4();
        sub_1000276A0();
        sub_10019F4E0(v5, 42);
        sub_10019F4BC(v6, v7);
      }

      return;
    }
  }
}

void sub_10019E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, socklen_t *a5)
{
  sub_10018D958();
  sub_10019F520();
  while (1)
  {
    v6 = sub_1000C9318();
    if (getsockopt(v6, v7, v8, v9, a5) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v11 = v11 || v10 == 14;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        sub_1000274C4();
        sub_1000276A0();
        sub_10019F458(v12, 58);
      }

      return;
    }
  }
}

void sub_10019E838(int a1, int a2)
{
  while (listen(a1, a2) == -1)
  {
    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v5 = v5 || v4 == 14;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        sub_1000274C4();
        v6 = sub_1000276A0();
        *v7 = 0xD00000000000001BLL;
        v7[1] = 0x800000010022C8E0;
        sub_10019F4BC(v6, v7);
      }

      return;
    }
  }
}

void sub_10019E8DC()
{
  sub_10019F5B8();
  sub_10012F50C();
  sub_10019F478();
  do
  {
    v2 = sub_10012F2E8();
    recvmsg(v2, v3, v1);
    sub_10019F5AC();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v4)
  {
LABEL_11:
    sub_10019F578();
    return;
  }

  v4 = v0 == 9 || v0 == 14;
  if (!v4)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F438(v5, 33);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_10019E990()
{
  sub_10019F5B8();
  sub_10012F50C();
  sub_10019F478();
  do
  {
    v2 = sub_10012F2E8();
    sendmsg(v2, v3, v1);
    sub_10019F5AC();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v4)
  {
LABEL_11:
    sub_10019F578();
    return;
  }

  v4 = v0 == 9 || v0 == 14;
  if (!v4)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F438(v5, 33);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_10019EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, socklen_t a5)
{
  sub_10018D958();
  sub_10019F520();
  while (1)
  {
    v6 = sub_1000C9318();
    if (setsockopt(v6, v7, v8, v9, a5) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v11 = v11 || v10 == 14;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        sub_1000274C4();
        sub_1000276A0();
        sub_10019F458(v12, 58);
      }

      return;
    }
  }
}

void sub_10019EAE4(int a1, unsigned __int8 a2)
{
  while (shutdown(a1, a2) == -1)
  {
    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v5 = v5 || v4 == 14;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        sub_1000274C4();
        v6 = sub_1000276A0();
        *v7 = 0xD000000000000019;
        v7[1] = 0x800000010022C7F0;
        sub_10019F4BC(v6, v7);
      }

      return;
    }
  }
}

void sub_10019EB88()
{
  sub_10019F5B8();
  sub_10019F598();
  sub_10019F478();
  do
  {
    socket(v2, v1, v0);
    sub_10019F544();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v4 = v4 || v3 == 14;
  if (!v4)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F484(v5, 29);
    sub_10019F52C(v6, v7);
LABEL_10:
    sub_10019F58C();
    sub_10019F578();
    return;
  }

  __break(1u);
}

void sub_10019EC20(int a1, msghdr *a2, unsigned int a3, int a4)
{
  sub_10019F520();
  while (sub_10000B920(a1, a2, a3, a4) == -1)
  {
    if (sub_1001F66A8() != 4)
    {
      sub_10019F4A4();
      if (!v9)
      {
        v9 = v4 == 9 || v4 == 14;
        if (v9)
        {
          __break(1u);
        }

        else
        {
          sub_1000274C4();
          sub_1000276A0();
          sub_10019F458(v10, 35);
        }
      }

      return;
    }
  }
}

off_t sub_10019ECF4(int a1, int a2, off_t a3, off_t a4)
{
  while (1)
  {
    v19[0] = a4;
    v8 = sendfile(a2, a1, a3, v19, 0, 0);
    v9 = v19[0];
    if (v8 != -1)
    {
      break;
    }

    v10 = sub_1001F66A8();
    if (v10 != 4)
    {
      v11 = v10;
      if (v10 == 9 || v10 == 14)
      {
        __break(1u);
      }

      sub_1000274C4();
      v13 = sub_1000276A0();
      *v14 = 0xD000000000000025;
      *(v14 + 8) = 0x800000010022C810;
      *(v14 + 16) = v11;
      swift_willThrow();
      v21 = v13;
      swift_errorRetain();
      sub_1000183C4(&qword_1002ACE88);
      if (swift_dynamicCast())
      {

        v15 = v19[1];
        v16 = v20;
        if (v20 == 35)
        {

          return v9;
        }

        v9 = v19[0];
        sub_1000276A0();
        *v17 = v9;
        *(v17 + 8) = v15;
        *(v17 + 16) = v16;
        swift_willThrow();
      }

      return v9;
    }
  }

  return v9;
}

void sub_10019EEBC()
{
  sub_10019DD84();
  if (!v0)
  {
    sub_10019DD84();
  }
}

void sub_10019EFD0()
{
  sub_10019F5B8();
  v1 = v0;
  sub_10019F478();
  do
  {
    v2 = sub_1001F6BD8();
    v3 = stat((v2 + 32), v1);

    if (v3 != -1)
    {
      goto LABEL_9;
    }

    v4 = sub_1001F66A8();
  }

  while (v4 == 4);
  v5 = v4;
  if (v4 != 9 && v4 != 14)
  {
    sub_1000274C4();
    sub_1000276A0();
    sub_10019F484(v7, 23);
    *(v8 + 16) = v5;
    swift_willThrow();
LABEL_9:
    sub_10019F578();
    return;
  }

  __break(1u);
}

uint64_t sub_10019F098()
{
  sub_10019F4D4();
  while (1)
  {
    v0 = sub_1001F6BD8();
    v1 = unlink((v0 + 32));

    if (v1 != -1)
    {
      break;
    }

    result = sub_1001F66A8();
    if (result != 4)
    {
      v3 = result;
      if (result == 9 || result == 14)
      {
        __break(1u);
      }

      else
      {
        sub_1000274C4();
        sub_1000276A0();
        sub_10019F4E0(v5, 17);
        *(v6 + 16) = v3;
        return swift_willThrow();
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_10019F158(int kq, kevent *changelist, int nchanges, kevent *eventlist, int nevents, timespec *timeout)
{
  do
  {
    v12 = kevent(kq, changelist, nchanges, eventlist, nevents, timeout);
    if (v12 != -1)
    {
      return v12;
    }

    result = sub_1001F66A8();
  }

  while (result == 4);
  v14 = result;
  if (result != 9 && result != 14)
  {
    sub_1000274C4();
    sub_1000276A0();
    *v16 = 0xD000000000000039;
    *(v16 + 8) = 0x800000010022C700;
    *(v16 + 16) = v14;
    swift_willThrow();
    return v12;
  }

  __break(1u);
  return result;
}

void sub_10019F24C()
{
  do
  {
    kqueue();
    sub_10019F544();
    if (!v1)
    {
      goto LABEL_9;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v1 = v1 || v0 == 14;
  if (!v1)
  {
    sub_1000274C4();
    v2 = sub_1000276A0();
    *v3 = 0x292865756575716BLL;
    v3[1] = 0xE800000000000000;
    sub_10019F52C(v2, v3);
LABEL_9:
    sub_10019F58C();
    return;
  }

  __break(1u);
}

void sub_10019F2D4()
{
  sub_10019F4F8();
  while (fstat(v1, v0) == -1)
  {
    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v3 = v3 || v2 == 14;
      if (v3)
      {
        __break(1u);
      }

      else
      {
        sub_1000274C4();
        v4 = sub_1000276A0();
        *v5 = 0xD00000000000001ALL;
        v5[1] = 0x800000010022C900;
        sub_10019F4BC(v4, v5);
      }

      return;
    }
  }
}

uint64_t sub_10019F438@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_10019F458@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_10019F4BC(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_10019F52C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_10019F5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  sub_1000183C4(&qword_1002ADC18);
  v11 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v13 = sub_10012DA48(v9, 0, 255, a1, a2, a3, a4, v11, ObjectType, v10);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_10011F070();

  return v13;
}

uint64_t sub_10019F6C8()
{
  sub_10004794C();
  v0 = swift_allocObject();
  sub_10012F744(v0);

  sub_10011E218();
}

uint64_t sub_10019F760()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1000183C4(&qword_1002B4568);
  swift_allocObject();
  v3 = sub_10016E918(v1, v2, 0, 0, 255);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_10011FBFC();

  return v3;
}

uint64_t sub_10019F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1000183C4(&qword_1002ADD50) == &type metadata for ()[8])
  {

    sub_1000183C4(&qword_1002BAE80);
    sub_1000183C4(&qword_1002BAE88);
    swift_dynamicCast();
    sub_10004794C();
    *(swift_allocObject() + 16) = v15;

    sub_10011E218();

    __break(1u);
  }

  else
  {
    v9 = *(v4 + 32);
    v10 = *(v4 + 40);
    sub_1000183C4(&qword_1002B46D8);
    v11 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v13 = sub_10012DE0C(v9, 0, 0, 255, a1, a2, a3, a4, v11, ObjectType, v10);
    swift_retain_n();

    swift_unknownObjectRetain();
    sub_10011E708();

    return v13;
  }

  return result;
}

uint64_t sub_10019FA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = v7;
  v16 = *(v8 + 32);
  v15 = *(v8 + 40);
  sub_1000183C4(&qword_1002ADC18);
  v17 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v19 = sub_10012DA48(v16, 0, 255, a1, a2, a3, a4, v17, ObjectType, v15);
  swift_retain_n();
  swift_unknownObjectRetain();

  a7(v8, v19, v8, a5, a6);

  return v19;
}

uint64_t sub_10019FB84()
{
  sub_10004794C();
  v0 = swift_allocObject();
  sub_10012F744(v0);

  sub_10011DE78();
}

uint64_t sub_10019FC18(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_10019FC58()
{
  result = sub_1000C85D8(&off_100279AE8);
  qword_1002BAD08 = result;
  return result;
}

uint64_t sub_10019FC80()
{
  *(v0 + 136) = 0;
  sub_1001A12FC(0);
  *(v0 + 24) = v1;
  swift_unknownObjectWeakInit();
  *(v0 + 16) = 0;
  sub_10012F774();
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  *(v0 + 24) = 0u;
  sub_1001A12FC(0);
  sub_1001A1158(__dst);
  return v0;
}

unsigned __int8 *sub_10019FCFC(uint64_t a1)
{
  v2 = v1;
  v4 = ChannelHandlerContext.remoteAddress.getter();
  if ((~v4 & 0xF000000000000007) == 0 || (v5 = v4, SocketAddress.ipAddress.getter(v4), v7 = v6, v9 = v8, sub_10002D83C(v5), !v9))
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v25 = sub_1001F6688();
    sub_100019C94(v25, qword_1002E6180);
    v26 = sub_1001F6668();
    v27 = sub_1001F7298();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_19;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Blocking request from unknown remote", v28, 2u);
    goto LABEL_18;
  }

  v10 = qword_1002AC508;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BFAC4(v7, v9, qword_1002BAD08);

  if (!v11)
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v30 = sub_1001F6688();
    sub_100019C94(v30, qword_1002E6180);

    v26 = sub_1001F6668();
    v31 = sub_1001F7298();

    if (!os_log_type_enabled(v26, v31))
    {

      goto LABEL_19;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v93 = v33;
    *v32 = 136315138;
    v34 = sub_1000E4544(v7, v9, &v93);

    *(v32 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v31, "Blocking request from external remote: %s", v32, 0xCu);
    sub_100019CCC(v33);

LABEL_18:

LABEL_19:

    sub_10012F774();
    sub_1001A1318(&v93);
    sub_1001A12DC();
    *(v2 + 15) = 0;
    sub_1001A1158(&v93);
    sub_1001A0E8C();
    sub_1001A0558(a1);
  }

  sub_1000183C4(&qword_1002ADD40);
  sub_1000375EC();
  v14 = v12;
  v16 = v15;
  v17 = v13;
  if (HIBYTE(v13))
  {
    if (HIBYTE(v13) != 1)
    {
      sub_10012F774();
      sub_1001A1318(__src);
      if (!__src[2])
      {
        v53 = sub_1001A12CC();
        v56 = 2;
        return sub_100037548(v53, v54, v55, v56);
      }

      v93 = *(v2 + 24);
      v94 = __src[2];
      memcpy(v95, v2 + 48, sizeof(v95));
      sub_1001A1318(v90);
      sub_1000593F4(v90, v91);
      sub_1001A0D1C(&v93);
      sub_1001A1318(v91);
      sub_1001A12DC();
      *(v2 + 15) = 0;
      sub_1001A1158(v91);
      sub_1001A0558(a1);
      v49 = sub_1001A12CC();
      sub_100037548(v49, v50, v51, 2);

      v52 = __src;
      return sub_1001A1158(v52);
    }

    v2 = ByteBuffer._Storage.bytes.modify();
    if (!*(v18 + 16))
    {
      goto LABEL_48;
    }

    a1 = v18;
    if (!*(v18 + 72))
    {
      goto LABEL_48;
    }

    v19 = *(v18 + 84);
    swift_beginAccess();
    if (HIDWORD(v16) < v16)
    {
      __break(1u);
    }

    else
    {
      v20 = *(v14 + 24) + ((v17 >> 24) & 0xFFFF00 | BYTE6(v17)) + v16;
      ByteBuffer._setBytes(_:at:)(v20, v20 + (HIDWORD(v16) - v16), v19);
      v21 = *(a1 + 84);
      v23 = __CFADD__(v21, v22);
      v24 = v21 + v22;
      if (!v23)
      {
        *(a1 + 84) = v24;
LABEL_48:
        (v2)(&v93, 0);
        v53 = sub_1001A12CC();
        v56 = 1;
        return sub_100037548(v53, v54, v55, v56);
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  v35 = *(v12 + 48);

  sub_1001B8BE0(v35, v16, v17);
  *(v2 + 16) = (v36 & 1) == 0;
  HTTPHeaders.subscript.getter();
  if (!v37[2] || ((v39 = v37[4], v38 = v37[5], , result = , v40 = HIBYTE(v38) & 0xF, v41 = v39 & 0xFFFFFFFFFFFFLL, (v38 & 0x2000000000000000) != 0) ? (v42 = HIBYTE(v38) & 0xF) : (v42 = v39 & 0xFFFFFFFFFFFFLL), !v42))
  {

    v57 = 0;
    v58 = 0;
LABEL_105:
    v82 = *(*(a1 + 32) + 56);
    v83 = swift_unknownObjectRetain();
    sub_1001EAE28(v83, v82, v14, v16, v17, v57, 0, v58, __src);

    v84 = sub_1001A12CC();
    sub_100037548(v84, v85, v86, 0);
    sub_10012F774();
    sub_1001A1318(&v93);
    memcpy(v2 + 24, __src, 0x68uLL);
    v52 = &v93;
    return sub_1001A1158(v52);
  }

  if ((v38 & 0x1000000000000000) != 0)
  {
    sub_1001ED558(v39, v38, 10);
    v44 = v87;
    v69 = v88;
LABEL_101:

    v57 = 0;
    if (v69)
    {
      v58 = 0;
    }

    else
    {
      v58 = 0;
      if (v44 >= 1)
      {
        sub_10009B39C();
        v71 = v70;
        ObjectType = swift_getObjectType();
        v73 = (*(v71 + 16))(ObjectType, v71);
        v75 = v74;
        v77 = v76;
        v89 = v17;
        v17 = v16;
        v78 = v14;
        v80 = v79;
        swift_unknownObjectRelease();
        type metadata accessor for ByteBuffer._Storage();
        v81 = v80;
        v14 = v78;
        v16 = v17;
        LOBYTE(v17) = v89;
        v57 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v44, v73, v75, v77, v81);
        v58 = *(v57 + 16);
      }
    }

    goto LABEL_105;
  }

  if ((v38 & 0x2000000000000000) == 0)
  {
    if ((v39 & 0x1000000000000000) != 0)
    {
      result = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_34:
      v43 = *result;
      if (v43 == 43)
      {
        if (v41 >= 1)
        {
          if (v41 != 1)
          {
            v44 = 0;
            if (result)
            {
              while (1)
              {
                sub_100027240();
                if (!v45 && v23)
                {
                  goto LABEL_99;
                }

                sub_1001A12B8();
                if (!v45)
                {
                  goto LABEL_99;
                }

                v44 = v62 + v61;
                if (__OFADD__(v62, v61))
                {
                  goto LABEL_99;
                }

                sub_10002727C();
                if (v45)
                {
                  goto LABEL_100;
                }
              }
            }

            goto LABEL_90;
          }

          goto LABEL_99;
        }

        goto LABEL_114;
      }

      if (v43 != 45)
      {
        if (v41)
        {
          v44 = 0;
          if (result)
          {
            while (1)
            {
              v65 = *result - 48;
              if (v65 > 9)
              {
                goto LABEL_99;
              }

              v66 = 10 * v44;
              if ((v44 * 10) >> 64 != (10 * v44) >> 63)
              {
                goto LABEL_99;
              }

              v44 = v66 + v65;
              if (__OFADD__(v66, v65))
              {
                goto LABEL_99;
              }

              ++result;
              if (!--v41)
              {
                goto LABEL_90;
              }
            }
          }

          goto LABEL_90;
        }

LABEL_99:
        v44 = 0;
        v48 = 1;
        goto LABEL_100;
      }

      if (v41 >= 1)
      {
        if (v41 != 1)
        {
          v44 = 0;
          if (result)
          {
            while (1)
            {
              sub_100027240();
              if (!v45 && v23)
              {
                goto LABEL_99;
              }

              sub_1001A12B8();
              if (!v45)
              {
                goto LABEL_99;
              }

              v44 = v47 - v46;
              if (__OFSUB__(v47, v46))
              {
                goto LABEL_99;
              }

              sub_10002727C();
              if (v45)
              {
                goto LABEL_100;
              }
            }
          }

LABEL_90:
          v48 = 0;
LABEL_100:
          LOBYTE(__src[0]) = v48;
          v69 = v48;
          goto LABEL_101;
        }

        goto LABEL_99;
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

LABEL_111:
    result = sub_1001F7858();
    goto LABEL_34;
  }

  *&v93 = v39;
  *(&v93 + 1) = v38 & 0xFFFFFFFFFFFFFFLL;
  if (v39 != 43)
  {
    if (v39 != 45)
    {
      if (v40)
      {
        while (1)
        {
          sub_100027240();
          if (!v45 && v23)
          {
            break;
          }

          sub_1001A12B8();
          if (!v45)
          {
            break;
          }

          v44 = v68 + v67;
          if (__OFADD__(v68, v67))
          {
            break;
          }

          sub_10002727C();
          if (v45)
          {
            goto LABEL_100;
          }
        }
      }

      goto LABEL_99;
    }

    if (v40)
    {
      if (v40 != 1)
      {
        sub_1001A1330();
        while (1)
        {
          sub_100027240();
          if (!v45 && v23)
          {
            break;
          }

          sub_1001A12B8();
          if (!v45)
          {
            break;
          }

          v44 = v60 - v59;
          if (__OFSUB__(v60, v59))
          {
            break;
          }

          sub_10002727C();
          if (v45)
          {
            goto LABEL_100;
          }
        }
      }

      goto LABEL_99;
    }

    goto LABEL_113;
  }

  if (v40)
  {
    if (v40 != 1)
    {
      sub_1001A1330();
      while (1)
      {
        sub_100027240();
        if (!v45 && v23)
        {
          break;
        }

        sub_1001A12B8();
        if (!v45)
        {
          break;
        }

        v44 = v64 + v63;
        if (__OFADD__(v64, v63))
        {
          break;
        }

        sub_10002727C();
        if (v45)
        {
          goto LABEL_100;
        }
      }
    }

    goto LABEL_99;
  }

LABEL_115:
  __break(1u);
  return result;
}

uint64_t sub_1001A0558(uint64_t a1)
{
  sub_10004794C();
  v3 = swift_allocObject();
  sub_10012F744(v3);

  sub_10019F5CC("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/HTTPHandler.swift", 104, 2, 83);

  sub_10004794C();
  v4 = swift_allocObject();
  sub_10012F744(v4);

  sub_10019FB84();

  sub_10004794C();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;

  sub_10011DE78();
}

uint64_t sub_1001A06B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 38);
  v12 = sub_1000183C4(&qword_1002ADA10);
  v7[0] = v1;
  v7[1] = v2;
  v10 = v5;
  v9 = v4;
  v8 = v3;
  v11 = 1;
  v13 = 2;

  ChannelHandlerContext.write(_:promise:)();
  return sub_100034310(v7);
}

uint64_t sub_1001A0754(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a3;
  v10 = sub_1000183C4(&qword_1002ADA10);
  v7[0] = a1;
  v7[1] = a2;
  v8 = v5;
  v9 = 0;
  v11 = 2;

  ChannelHandlerContext.write(_:promise:)();
  return sub_100034310(v7);
}

uint64_t sub_1001A07DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v29 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 56) | ((*(a1 + 60) | (*(a1 + 62) << 16)) << 32);
  v34 = v5;
  v31 = v9;
  v32 = v7;
  sub_1001A10D0(v7, v8, v10);

  v28 = sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x2D746E65746E6F63, 0xEE006874676E656CLL);
  v12 = sub_10003653C(&v34, sub_100034364);
  if (v34[2] < v12)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_100036918();
  if (v10)
  {
    v35[0] = v32;
    v35[1] = v8;
    v35[2] = v10;
    v35[3] = v31;
    v36 = v11;
    v37 = WORD2(v11);
    v38 = BYTE6(v11);
    v33 = HIDWORD(v31);

    a2 = &v33;
    v5 = sub_1001F7E28();
    a3 = v13;
    if ((sub_10002E9FC(0x2D746E65746E6F63uLL, 0xEE006874676E656CLL) & 1) == 0)
    {
      a2 = v34;
      v27 = v6;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    a2 = sub_1000375BC(0, a2[2] + 1, 1, a2);
LABEL_5:
    v15 = a2[2];
    v14 = a2[3];
    if (v15 >= v14 >> 1)
    {
      a2 = sub_1000375BC(v14 > 1, v15 + 1, 1, a2);
    }

    a2[2] = v15 + 1;
    v16 = &a2[4 * v15];
    strcpy(v16 + 32, "content-length");
    *(v16 + 47) = -18;
    v16[6] = v5;
    v16[7] = a3;
    v34 = a2;
    if ((sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x2D746E65746E6F63, 0xEE006874676E656CLL) | v28))
    {
      v17 = 2;
    }

    else
    {
      v17 = v29;
    }

    if (!v8)
    {
      v21 = v27;
      v25 = v32;
LABEL_21:
      sub_1001A0754(v21, a2, v17);
      sub_1001A06B8(v35);

      sub_1001A1114(v25, v8, v10);
      goto LABEL_22;
    }

    a2 = 0xEC00000065707974;

    v18 = sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x2D746E65746E6F63, 0xEC00000065707974);
    v30 = v18;
    __chkstk_darwin(v18, v19);
    v20 = sub_10003653C(&v34, sub_100053260);
    v21 = v27;
    if (v34[2] < v20)
    {
      __break(1u);
    }

    else
    {
      a2 = &v34;
      sub_100036918();
      if ((sub_10002E9FC(0x2D746E65746E6F63uLL, 0xEC00000065707974) & 1) == 0)
      {
        a2 = v34;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_14:
          v23 = a2[2];
          v22 = a2[3];
          if (v23 >= v22 >> 1)
          {
            a2 = sub_1000375BC(v22 > 1, v23 + 1, 1, a2);
          }

          a2[2] = v23 + 1;
          v24 = &a2[4 * v23];
          strcpy(v24 + 32, "content-type");
          *(v24 + 45) = 0;
          *(v24 + 23) = -5120;
          v25 = v32;
          v24[6] = v32;
          v24[7] = v8;
          v34 = a2;
          if ((sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x2D746E65746E6F63, 0xEC00000065707974) | v30))
          {
            v17 = 2;
          }

          goto LABEL_21;
        }

LABEL_28:
        a2 = sub_1000375BC(0, a2[2] + 1, 1, a2);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1001A0754(v6, v5, v29);
LABEL_22:
}

uint64_t sub_1001A0C54()
{
  v3 = sub_1000183C4(&qword_1002ADA10);
  memset(v1, 0, sizeof(v1));
  v2 = 2;
  v4 = 2;
  sub_100030794();
  ChannelHandlerContext.writeAndFlush(_:promise:)();

  return sub_100034310(v1);
}

void sub_1001A0CE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    ChannelHandlerContext.close(mode:promise:)();
  }
}

uint64_t sub_1001A0D1C(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 136);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000B738C(0x6E756F6620746F4ELL, 0xE900000000000064, 6, v18);
    v6 = v20;
    v7 = v19;
    v8 = v21;
    type metadata accessor for HTTPResponseHead._Storage();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 25;
    *(v9 + 40) = 65537;
    v12[0] = v9;
    v12[1] = _swiftEmptyArrayStorage;
    LOBYTE(v13[0]) = 2;
    *&v13[1] = v18[0];
    v14 = v18[1];
    v17 = v8;
    v16 = v6;
    v15 = v7;
    swift_getObjectType();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v5 = v10;
    sub_1000E5E28(v12);
  }

  return v5;
}

uint64_t sub_1001A0E8C()
{
  sub_1000B738C(0xD000000000000024, 0x800000010022CA60, 6, v7);
  v0 = v9;
  v1 = v8;
  v2 = v10;
  type metadata accessor for HTTPResponseHead._Storage();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 24;
  *(v3 + 40) = 65537;
  v11[0] = v3;
  v11[1] = _swiftEmptyArrayStorage;
  v12 = 2;
  v13[1] = v7[1];
  v13[0] = v7[0];
  v16 = v2;
  v15 = v0;
  v14 = v1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  v5 = v4;
  swift_unknownObjectRelease();
  sub_1000E5E28(v11);
  return v5;
}

uint64_t sub_1001A0FD0()
{
  sub_1001A11C0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_1000876E4(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_1001A1094()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001A10D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001A1114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001A1158(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002BAE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A11C0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3)
  {
    sub_1001A1268(result, a2);

    swift_unknownObjectRelease();
    sub_1001A1114(a8, a9, a10);
  }

  return result;
}

uint64_t sub_1001A1268(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_1001A12DC()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  return result;
}

void sub_1001A12FC(__n128 a1)
{
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
  *(v1 + 72) = a1;
  *(v1 + 88) = a1;
  *(v1 + 104) = a1;
  *(v1 + 120) = 0;
}

void *sub_1001A1318(void *a1)
{

  return memcpy(a1, (v1 + 24), 0x68uLL);
}

unint64_t sub_1001A1348()
{
  result = qword_1002BAE90;
  if (!qword_1002BAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAE90);
  }

  return result;
}

uint64_t sub_1001A139C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v251 = a4;
  v250 = a3;
  v245 = a2;
  v244 = a1;
  v242 = sub_1001F6938();
  sub_10001A278();
  v241 = v7;
  __chkstk_darwin(v8, v9);
  sub_10004FE10();
  v243 = v10;
  __chkstk_darwin(v11, v12);
  v240 = &v225 - v13;
  v14 = sub_1001F6968();
  sub_10001A278();
  v16 = v15;
  __chkstk_darwin(v17, v18);
  sub_10004FE10();
  v249 = v19;
  __chkstk_darwin(v20, v21);
  v23 = &v225 - v22;
  v24 = sub_1001F6B98();
  sub_10001A278();
  v252 = v25;
  __chkstk_darwin(v26, v27);
  v29 = &v225 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_1001F6B58();
  v256 = v30;
  sub_1001F7758();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  v247 = v14;
  if (v265)
  {
    if (sub_10003A660())
    {
      v31 = v255;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10003A24C(&v262);
  }

  v31 = 3157553;
LABEL_6:
  v253 = v31;
  v248 = v23;
  v262 = sub_1001F6B58();
  v263 = v32;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  v246 = v16;
  if (v265)
  {
    v33 = sub_10003A660();
    v34 = v33 == 0;
    if (v33)
    {
      v35 = v255;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = 0;
    }

    else
    {
      v36 = v256;
    }
  }

  else
  {
    sub_10003A24C(&v262);
    v35 = 0;
    v36 = 0;
  }

  v37 = sub_1001A28A0(v35, v36, 0, 0, 0);
  if (v5)
  {

    return v47 & 1;
  }

  v39 = v38;
  v239 = v37;

  v262 = sub_1001F6B58();
  v263 = v40;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  if (v265)
  {
    v41 = sub_10003A660();
    sub_1001A316C(v41);
  }

  else
  {
    sub_10003A24C(&v262);
  }

  sub_1001A30B8();
  v238 = sub_1001A2A98(v42, v43, v44, v45, v46);
  v262 = sub_1001F6B58();
  v263 = v49;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  if (v265)
  {
    sub_10003A660();
  }

  else
  {
    sub_10003A24C(&v262);
  }

  sub_1001A30B8();
  v236 = sub_1001A28A0(v50, v51, v52, v53, v54);
  v237 = v55;

  v262 = sub_1001F6B58();
  v263 = v56;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  if (v265)
  {
    v57 = sub_10003A660();
    sub_1001A316C(v57);
  }

  else
  {
    sub_10003A24C(&v262);
  }

  sub_1001A30B8();
  v228 = sub_1001A2A98(v58, v59, v60, v61, v62);
  v262 = sub_1001F6B58();
  v263 = v63;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  if (v265)
  {
    sub_10003A660();
    sub_10003A6E4();
    v234 = v64;
    v66 = v65 ^ 1;
  }

  else
  {
    sub_10003A24C(&v262);
    v234 = 0;
    v66 = 1;
  }

  LODWORD(v233) = v66;
  v262 = sub_1001F6B58();
  v263 = v67;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  if (v265)
  {
    sub_10003A660();
    sub_10003A6E4();
    v230 = v68;
    v70 = v69 ^ 1;
  }

  else
  {
    sub_10003A24C(&v262);
    v230 = 0;
    v70 = 1;
  }

  v229 = v70;
  v262 = sub_1001F6B58();
  v263 = v71;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  if (v265)
  {
    sub_10003A660();
    sub_10003A6E4();
    v231 = v72;
    v74 = v73 ^ 1;
  }

  else
  {
    sub_10003A24C(&v262);
    v231 = 0;
    v74 = 1;
  }

  LODWORD(v232) = v74;
  v262 = sub_1001F6B58();
  v263 = v75;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  if (v265)
  {
    v76 = sub_10003A660();
    v77 = v255;
    if (!v76)
    {
      v77 = 0;
    }

    v226 = v77;
    if (v76)
    {
      v78 = v256;
    }

    else
    {
      v78 = 0;
    }

    v235 = v78;
  }

  else
  {
    sub_10003A24C(&v262);
    v226 = 0;
    v235 = 0;
  }

  v262 = sub_1001F6B58();
  v263 = v79;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v257);
  if (v265)
  {
    sub_10003A660();
    sub_10003A6E4();
    v227 = v80;
    v82 = v81 ^ 1;
  }

  else
  {
    sub_10003A24C(&v262);
    v227 = 0;
    v82 = 1;
  }

  v83 = sub_1001F6B48();
  v84 = [v83 skan_version];

  if ((v84 - 200) < 2)
  {
    sub_1001A3184();

    sub_1001A30B8();
    v95 = sub_1001A2A98(v90, v91, v92, v93, v94);
    sub_1001A30B8();
    v101 = sub_1001A2A98(v96, v97, v98, v99, v100);
    sub_1000183C4(&qword_1002AC7E0);
    v102 = swift_allocObject();
    sub_1001A30E4(v102, xmmword_100200CB0);
    v257 = v95;
    *(v102 + 64) = sub_1001F7E28();
    *(v102 + 72) = v103;
    sub_10003A6D8(v264);
    v104 = sub_1001A31C4();
    sub_1001A30C8(v104, v105);
    v257 = v101;
    *(v102 + 112) = sub_1001A31C4();
    *(v102 + 120) = v106;
    sub_10003A6D8(&v254);
    *(v102 + 128) = sub_1001A31C4();
    *(v102 + 136) = v107;
    goto LABEL_75;
  }

  if (v84 == 400)
  {
    sub_1001A30B8();
    v234 = sub_1001A2A98(v131, v132, v133, v134, v135);
    sub_1001A30B8();
    v162 = sub_1001A2A98(v136, v137, v138, v139, v140);
    if (a5 == 4)
    {
      sub_1001A30B8();
      v168 = sub_1001A28A0(v163, v164, v165, v166, v167);
      v231 = v176;
      v232 = v168;
      v233 = v162;
    }

    else
    {
      sub_1001A3184();

      sub_1001A30B8();
      v174 = sub_1001A2A98(v169, v170, v171, v172, v173);
      v233 = v162;
      v257 = v174;
      v232 = sub_1001F7E28();
      v231 = v175;
    }

    v177 = v238;
    sub_1000183C4(&qword_1002AC7E0);
    v102 = swift_allocObject();
    sub_1001A30E4(v102, xmmword_100200CA0);
    sub_10003A6D8(v260);
    *(v102 + 64) = sub_1001F7E28();
    *(v102 + 72) = v178;
    v257 = v177;
    v179 = sub_1001A3208();
    sub_1001A30C8(v179, v180);
    v181 = v231;
    *(v102 + 112) = v232;
    *(v102 + 120) = v181;
    v130 = &v259;
    goto LABEL_74;
  }

  if (v84 == 202 || v84 == 300)
  {
    sub_1001A3184();

    sub_1001A30B8();
    v113 = sub_1001A2A98(v108, v109, v110, v111, v112);
    sub_1001A30B8();
    v119 = sub_1001A2A98(v114, v115, v116, v117, v118);
    sub_1001A30B8();
    v235 = sub_1001A2A98(v120, v121, v122, v123, v124);
    sub_1000183C4(&qword_1002AC7E0);
    v125 = v119;
    v102 = swift_allocObject();
    sub_1001A30E4(v102, xmmword_100200CA0);
    v257 = v113;
    *(v102 + 64) = sub_1001F7E28();
    *(v102 + 72) = v126;
    sub_10003A6D8(v264);
    v127 = sub_1001A3208();
    sub_1001A30C8(v127, v128);
    v257 = v125;
    *(v102 + 112) = sub_1001A3208();
    *(v102 + 120) = v129;
    v130 = &v261;
LABEL_74:
    sub_10003A6D8(v130);
    *(v102 + 128) = sub_1001F7E28();
    *(v102 + 136) = v182;
    sub_10003A6D8(&v254);
    *(v102 + 144) = sub_1001A3208();
    *(v102 + 152) = v183;
    goto LABEL_75;
  }

  if (v84 != 100)
  {

    sub_1001A31AC();

LABEL_76:

    sub_1001A31DC();
    if (!v34)
    {
      sub_10001B230();
    }

    v190 = sub_1001F6688();
    sub_100019C94(v190, qword_1002E6180);
    v191 = sub_1001F6668();
    v192 = sub_1001F7278();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = sub_10003A87C();
      *v193 = 0;
      _os_log_impl(&_mh_execute_header, v191, v192, "SKAdNetwork signature verification: Unable to compose digest.", v193, 2u);
      sub_10003A72C();
    }

    v47 = 0;
    return v47 & 1;
  }

  sub_1001A3184();

  sub_1001A30B8();
  v141 = sub_1001A2A98(v85, v86, v87, v88, v89);
  if ((v82 & 1) == 0)
  {
    sub_1001A31DC();
    if (!v34)
    {
      sub_10001B230();
    }

    v142 = sub_1001F6688();
    sub_100019C94(v142, qword_1002E6180);
    v143 = sub_1001F6668();
    v144 = sub_1001F7278();
    if (os_log_type_enabled(v143, v144))
    {
      *sub_10003A87C() = 0;
      sub_1001A315C();
      _os_log_impl(v145, v146, v147, v148, v149, 2u);
      sub_10003A72C();
    }
  }

  if ((v232 & 1) == 0)
  {
    sub_1001A31DC();
    if (!v34)
    {
      sub_10001B230();
    }

    v150 = sub_1001F6688();
    sub_100019C94(v150, qword_1002E6180);
    v151 = sub_1001F6668();
    v152 = sub_1001F7278();
    if (os_log_type_enabled(v151, v152))
    {
      *sub_10003A87C() = 0;
      sub_1001A315C();
      _os_log_impl(v153, v154, v155, v156, v157, 2u);
      sub_10003A72C();
    }
  }

  sub_1000183C4(&qword_1002AC7E0);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1002109C0;
  *(v102 + 32) = v239;
  *(v102 + 40) = v39;
  v257 = v141;
  *(v102 + 48) = sub_1001F7E28();
  *(v102 + 56) = v158;
  sub_10003A6D8(v264);
  *(v102 + 64) = sub_1001A31C4();
  *(v102 + 72) = v159;
  v160 = v237;
  *(v102 + 80) = v236;
  *(v102 + 88) = v160;
  sub_10003A6D8(&v254);
  *(v102 + 96) = sub_1001A31C4();
  *(v102 + 104) = v161;
LABEL_75:
  v257 = v102;
  sub_1000183C4(&qword_1002ACA10);
  sub_10003A2B4();
  v184 = sub_1001F6A68();
  v186 = v185;

  sub_1001F6B88();
  v187 = sub_1001F6B68();
  v189 = v188;
  (*(v252 + 8))(v29, v24);
  if (v189 >> 60 == 15)
  {
    goto LABEL_76;
  }

  sub_1001A31DC();
  if (!v34)
  {
    sub_10001B230();
  }

  v194 = sub_1001F6688();
  v195 = sub_100019C94(v194, qword_1002E6180);

  v196 = sub_1001F6668();
  v197 = sub_1001F7278();

  v198 = os_log_type_enabled(v196, v197);
  v253 = v195;
  if (v198)
  {
    v199 = sub_10003A8AC();
    v200 = v189;
    v201 = sub_10003A894();
    v257 = v201;
    *v199 = 136315138;
    v202 = sub_1000E4544(v184, v186, &v257);

    *(v199 + 4) = v202;
    _os_log_impl(&_mh_execute_header, v196, v197, "Composed digest: %s", v199, 0xCu);
    sub_100019CCC(v201);
    v189 = v200;
    sub_10003A72C();
    sub_10003A72C();
  }

  else
  {
  }

  v203 = sub_1001F6328();
  v205 = v204;
  sub_1001A2C3C(v203, v204, 8, 0xD000000000000037, 0x800000010022CE70, &v257);
  sub_10003A36C(v203, v205);
  v207 = v257;
  v206 = v258;
  sub_100040C70(v257, v258);
  sub_10003A318();
  v208 = v249;
  sub_1001F6958();
  v250 = v207;
  v251 = v206;
  v252 = v187;
  (*(v246 + 32))(v248, v208, v247);
  v209 = sub_1001F6328();
  v211 = v210;
  sub_1001A2C3C(v209, v210, 7, 0xD00000000000003DLL, 0x800000010022CEB0, &v257);
  sub_10003A36C(v209, v211);
  v249 = v258;
  sub_100040C70(v257, v258);
  sub_10003A3D8();
  sub_1001F6908();
  (*(v241 + 32))(v240, v243, v242);
  v257 = v252;
  v258 = v189;
  if (sub_1001F6948())
  {
    sub_1001A3220();
    sub_1001A3190();
    sub_1001A3140();
    v212 = sub_1001A3100();
    v213(v212);
    v214 = sub_1001A3120();
    v215(v214);
    v47 = 1;
  }

  else
  {
    v216 = sub_1001F6668();
    v217 = sub_1001F7278();
    if (os_log_type_enabled(v216, v217))
    {
      v218 = sub_10003A87C();
      *v218 = 0;
      _os_log_impl(&_mh_execute_header, v216, v217, "Verification failed", v218, 2u);
      sub_10003A72C();
    }

    sub_1001A1348();
    v219 = sub_1000276A0();
    sub_1001A31E8(v219, v220);
    sub_1001A3220();
    sub_1001A3190();
    sub_1001A3140();
    v221 = sub_1001A3100();
    v222(v221);
    v223 = sub_1001A3120();
    v224(v223);
  }

  return v47 & 1;
}

unint64_t sub_1001A28A0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
  }

  else
  {
    if (a5)
    {
      a1 = a5;
    }

    else
    {
      v19 = a3;
      sub_1001A1348();
      a4 = sub_1001F7FE8();
      a1 = v8;
    }

    v9 = qword_1002AC510;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1001F6688();
    sub_100019C94(v10, qword_1002E6180);

    v11 = sub_1001F6668();
    v12 = sub_1001F7298();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = sub_1000E4544(a4, a1, &v18);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
      sub_100019CCC(v14);
    }

    else
    {
    }

    sub_1001A1348();
    swift_allocError();
    *v16 = a3;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1001A2A98(uint64_t a1, char a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      v8 = a5;
    }

    else
    {
      v25 = a3;
      sub_1001A1348();
      a4 = sub_1001F7FE8();
      v8 = v9;
    }

    v10 = qword_1002AC510;

    if (v10 != -1)
    {
      sub_10001B230();
    }

    v11 = sub_1001F6688();
    sub_100019C94(v11, qword_1002E6180);

    v12 = sub_1001F6668();
    v13 = sub_1001F7298();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_10003A8AC();
      v15 = sub_10003A894();
      v24 = v15;
      *v14 = 136315138;
      v16 = sub_1000E4544(a4, v8, &v24);

      *(v14 + 4) = v16;
      sub_1001A315C();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      sub_100019CCC(v15);
      sub_10003A72C();
      sub_10003A72C();
    }

    else
    {
    }

    sub_1001A1348();
    sub_1000276A0();
    *v22 = a3;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1001A2C3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a2 >> 60 == 15)
  {
    if (a5)
    {
      v8 = a5;
    }

    else
    {
      v20 = a3;
      sub_1001A1348();
      a4 = sub_1001F7FE8();
      v8 = v10;
    }

    v11 = qword_1002AC510;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);

    v13 = sub_1001F6668();
    v14 = sub_1001F7298();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      v17 = sub_1000E4544(a4, v8, &v19);

      *(v15 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
      sub_100019CCC(v16);
    }

    else
    {
    }

    sub_1001A1348();
    swift_allocError();
    *v18 = a3;
    return swift_willThrow();
  }

  else
  {
    *a6 = a1;
    a6[1] = a2;
    return sub_100040C70(a1, a2);
  }
}

unint64_t sub_1001A2E2C(char a1)
{
  result = 0xD000000000000043;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000041;
      break;
    case 3:
    case 9:
      result = 0xD00000000000003BLL;
      break;
    case 4:
      result = 0xD000000000000048;
      break;
    case 6:
    case 7:
      result = 0xD00000000000003FLL;
      break;
    case 8:
      result = 0xD000000000000039;
      break;
    case 10:
      result = 0xD000000000000047;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SKANSignatureError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x1001A3028);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001A3064()
{
  result = qword_1002BAE98[0];
  if (!qword_1002BAE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002BAE98);
  }

  return result;
}

uint64_t sub_1001A30C8(uint64_t result, uint64_t a2)
{
  v2[10] = result;
  v2[11] = a2;
  v4 = *(v3 - 368);
  v2[12] = *(v3 - 376);
  v2[13] = v4;
  return result;
}

__n128 *sub_1001A30E4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = *(v4 - 240);
  result[2].n128_u64[1] = v3;
  result[3].n128_u64[0] = *(v4 - 352);
  result[3].n128_u64[1] = v2;
  return result;
}

uint64_t sub_1001A3140()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 256);

  return sub_10003A380(v2, v3);
}

uint64_t sub_1001A316C(int a1)
{
  if (a1)
  {
    return *(v1 - 176);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A3190()
{
  v3 = *(v1 - 272);

  return sub_10003A380(v0, v3);
}

uint64_t sub_1001A31AC()
{
}

uint64_t sub_1001A31C4()
{

  return sub_1001F7E28();
}

uint64_t sub_1001A31E8(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  return swift_willThrow();
}

uint64_t sub_1001A3208()
{

  return sub_1001F7E28();
}

uint64_t sub_1001A3220()
{
  v3 = *(v1 - 248);

  return sub_10003A36C(v3, v0);
}

uint64_t sub_1001A3238()
{
  sub_1000183C4(&qword_1002B70C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100215A00;
  *(inited + 32) = 0x6853796C696D6166;
  *(inited + 40) = 0xEF656C6261657261;
  *(inited + 48) = sub_1001F6FE8();
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000010022CEF0;
  sub_100019C0C(0, qword_1002B23E0);
  *(inited + 72) = sub_1001F73B8(0);
  strcpy((inited + 80), "hasPromoOffer");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_1001F73B8(0);
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000010022CF10;
  sub_10001A07C(*(v0 + 56));
  *(inited + 120) = sub_1001F70D8();
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x800000010022CF30;
  *(inited + 144) = sub_1001F73C8(0);
  *(inited + 152) = 1701869940;
  *(inited + 160) = 0xE400000000000000;
  v2 = sub_1001F6B48();

  *(inited + 168) = v2;
  sub_100019C0C(0, &qword_1002B70C0);
  v3 = sub_1001F69B8();
  type metadata accessor for OctaneSubscription();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    isa = sub_1001F6FE8().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(isa, 0xD000000000000014, 0x800000010022CEF0, isUniquelyReferenced_nonNull_native);
    sub_10001A07C(*(v5 + 144));
    v8 = sub_1001F70D8().super.super.isa;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v8, 0xD000000000000015, 0x800000010022CF30, v9);
  }

  return v3;
}

unint64_t sub_1001A353C(char a1)
{
  if (a1)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1001A359C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  sub_10002DFFC();
  v11 = v10;
  __chkstk_darwin(v12, v13);
  sub_1000D4804();
  v50 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  v52 = v15;
  v18 = __chkstk_darwin(v16, v17);
  v20 = &v37 - v19;
  __chkstk_darwin(v18, v21);
  sub_1000D4804();
  v46 = v22;
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  v40 = v24;
  v41 = v23;
  __chkstk_darwin(v23, v25);
  v27 = &v37 - v26;
  sub_100062888();
  v28 = sub_1001F7118();
  if (!v28)
  {
    return sub_1001F6F78();
  }

  v51 = v28;
  v55 = sub_1001F7978();
  v42 = sub_1001F7988();
  sub_1001F78B8(v51);
  sub_100062888();
  result = sub_1001F7108();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v30 = 0;
    v43 = (v52 + 16);
    v44 = v52 + 8;
    v45 = v8;
    while (!__OFADD__(v30, 1))
    {
      v52 = v30 + 1;
      v31 = sub_1001F71D8();
      (*v43)(v20);
      v31(v54, 0);
      v32 = v53;
      v48(v20, v50);
      if (v32)
      {
        v35 = sub_1001A4F20();
        v36(v35);
        (*(v40 + 8))(v27, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      v33 = sub_1001A4F20();
      v34(v33);
      sub_1001F7948();
      result = sub_1001F7138();
      ++v30;
      if (v52 == v51)
      {
        (*(v40 + 8))(v27, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Heap.init()()
{
  sub_10010B19C();
  sub_1001F6F78();

  return sub_1001F78A8();
}

uint64_t Heap.remove(value:)()
{
  v1 = sub_1001F74B8();
  sub_10002DFFC();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  v7 = v10 - v6;
  v10[1] = *v0;
  sub_1001F7988();
  sub_10002E9AC();
  swift_getWitnessTable();
  sub_1001F71C8();
  v8 = v11;
  if ((v11 & 1) == 0)
  {
    Heap._remove(index:)();
    (*(v3 + 8))(v7, v1);
  }

  return v8 ^ 1u;
}

void Heap.append(_:)()
{
  sub_100037C08();
  v1 = v0;
  v24 = v2;
  v3 = *(v2 + 16);
  sub_10002DFFC();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  sub_100099484();
  v23 = v8 - v9;
  __chkstk_darwin(v10, v11);
  v13 = v20 - v12;
  v14 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  (*(v5 + 16))(v13, v1, v3);
  v15 = sub_1001F7988();
  v22 = v13;
  v20[1] = v15;
  sub_1001F7948();
  v21 = (v5 + 8);
  while (v14 >= 1)
  {

    v16 = v22;
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    v17 = sub_1001F6A78();

    v18 = *v21;
    v19 = sub_100062888();
    v18(v19);
    (v18)(v16, v3);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v25 = (v14 - 1) >> 1;
    v26 = v14;
    sub_10010AF90();
    swift_getWitnessTable();
    sub_1001A4EE4();
    sub_1001F6AF8();
    v14 = (v14 - 1) >> 1;
  }

  sub_100037B00();
}

Swift::Int __swiftcall Heap.parentIndex(_:)(Swift::Int result)
{
  if (!__OFSUB__(result, 1))
  {
    return (result - 1) / 2;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Heap.leftIndex(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 >= 0)
  {
    return (2 * result) | 1;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Heap.rightIndex(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = __OFADD__(2 * result, 2);
  result = 2 * result + 2;
  if (v1)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Heap._heapify(_:)(Swift::Int a1)
{
  sub_100037C08();
  v33 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  sub_100099484();
  v13 = (v11 - v12);
  v16 = __chkstk_darwin(v14, v15);
  v18 = &v30 - v17;
  if (v16 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(v3 + 24);
  v20 = Heap.rightIndex(_:)(v5);
  v21 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  if (__OFSUB__(v21, 1))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v22 = v5;
  if (v21 - 1 > 2 * v5)
  {
    v22 = (2 * v5) | 1;

    sub_1001A4F54();
    sub_1001A4F54();
    HIDWORD(v30) = sub_1001A4F34();

    v31 = v19;
    v32 = v3;
    v23 = v20;
    v24 = v8;
    v25 = *(v8 + 8);
    v25(v13, v6);
    v25(v18, v6);
    v8 = v24;
    v20 = v23;
    if ((v30 & 0x100000000) == 0)
    {
      v22 = v5;
    }
  }

  v26 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  if (__OFSUB__(v26, 1))
  {
    goto LABEL_15;
  }

  if (v26 - 1 >= v20)
  {

    sub_1001A4F54();
    sub_1001A4F54();
    v27 = v20;
    v28 = sub_1001A4F34();

    v29 = *(v8 + 8);
    v29(v13, v6);
    v29(v18, v6);
    if (v28)
    {
      v22 = v27;
    }
  }

  if (v22 != v5)
  {
    v34 = v22;
    v35 = v5;
    sub_1001F7988();
    sub_10010AF90();
    swift_getWitnessTable();
    sub_1001A4EE4();
    sub_1001F6AF8();
    Heap._heapify(_:)(v22);
  }

  sub_100037B00();
}

void Heap._heapRootify(index:key:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  sub_10002DFFC();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_100099484();
  v14 = (v12 - v13);
  __chkstk_darwin(v15, v16);
  v18 = &v30 - v17;

  _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
  sub_1001A4ED8();
  v33 = v19;
  v20 = sub_1001F6A78();

  v31 = *(v9 + 8);
  v32 = v9 + 8;
  v31(v18, v7);
  if (v20)
  {
    sub_1001F7AC8();
    __break(1u);
  }

  else
  {
    v21 = sub_1001F7988();
    sub_1001F78E8();
    v22 = *v1;
    sub_10010AA80(v5, *v1);
    (*(v9 + 24))(v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, v3, v7);
    debugOnly(_:)(v21, v23, v24, v25, v26, v27);
    while (v5 >= 1)
    {

      _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
      _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
      sub_100062888();
      v28 = sub_1001F6A78();

      v29 = v31;
      v31(v14, v7);
      v29(v18, v7);
      if ((v28 & 1) == 0)
      {
        break;
      }

      v34 = (v5 - 1) >> 1;
      v35 = v5;
      sub_10010AF90();
      swift_getWitnessTable();
      sub_1001A4EE4();
      sub_1001F6AF8();
      v5 = (v5 - 1) >> 1;
    }

    sub_100037B00();
  }
}

void Heap._remove(index:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v58 = v5;
  v6 = *(v5 + 16);
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  sub_100099484();
  v13 = v11 - v12;
  v16 = __chkstk_darwin(v14, v15);
  v18 = &v53 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v53 - v20;
  if (sub_1001A4EF4() >= 1)
  {
    v56 = v0;
    v57 = v4;
    v55 = v21;
    sub_1001A4ECC();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    if (sub_1001A4EF4() == 1)
    {
LABEL_5:
      sub_10010B19C();
      sub_1001F7988();
      sub_1001A4EB4();
      swift_getWitnessTable();
      sub_1001A4E9C();
      swift_getWitnessTable();
      sub_1001F7258();
      v26 = sub_1001A4ED8();
      v27(v26);
LABEL_6:
      v28 = v57;
      (*(v8 + 32))(v57, v55, v6);
      sub_100018460(v28, 0, 1, v6);
      sub_100037B00();
      return;
    }

    sub_1001A4ECC();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    if (__OFSUB__(sub_1001A4EF4(), 1))
    {
      __break(1u);
    }

    else
    {
      sub_1001A4ECC();
      _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
      sub_1001A4F0C();
      v22 = sub_1001F6B28();
      v23 = v2;
      v24 = *(v8 + 8);
      v24(v13, v6);
      v25 = sub_1001A4ED8();
      v54 = v24;
      (v24)(v25);
      if (v22)
      {
        goto LABEL_5;
      }

      v53 = v23;
      sub_1001A4ECC();
      _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
      if (!__OFSUB__(sub_1001A4EF4(), 1))
      {
        sub_1001A4ECC();
        _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
        sub_1001A4F0C();
        v34 = sub_1001F6A78();

        v35 = v13;
        v36 = v54;
        (v54)(v35, v6);
        v37 = sub_1001A4ED8();
        v36(v37);
        v38 = __OFSUB__(sub_1001A4EF4(), 1);
        if ((v34 & 1) == 0)
        {
          if (!v38)
          {
            sub_1001A4ECC();
            _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
            Heap._heapRootify(index:key:)();
            v51 = sub_1001A4ED8();
            v36(v51);
            sub_10010B19C();
            sub_1001F7988();
            sub_1001A4EB4();
            swift_getWitnessTable();
            sub_1001A4E9C();
            swift_getWitnessTable();
            sub_1001F7258();
            v52 = sub_1001A4ED8();
            v36(v52);
            goto LABEL_6;
          }

          goto LABEL_22;
        }

        if (!v38)
        {
          sub_1001A4ECC();
          _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
          sub_10010B19C();
          v39 = sub_1001F7988();
          v40 = v56;
          sub_1001F78E8();
          v41 = *v40;
          v42 = v53;
          sub_1001A4ECC();
          sub_10010AA80(v43, v44);
          (*(v8 + 40))(v41 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v42, v18, v6);
          debugOnly(_:)(v39, v45, v46, v47, v48, v49);
          sub_1001A4EB4();
          swift_getWitnessTable();
          sub_1001A4E9C();
          swift_getWitnessTable();
          sub_1001F7258();
          v50 = sub_1001A4ED8();
          v36(v50);
          Heap._heapify(_:)(v42);
          goto LABEL_6;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_100037B00();

  sub_100018460(v29, v30, v31, v32);
}

void Heap.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  if (v6 < 1)
  {

    return;
  }

  v52 = a1;
  __chkstk_darwin(v6, v7);
  v46[2] = a2;
  v46[3] = a3;
  v49 = a2;
  v50 = a3;
  v8 = sub_1001F7988();
  sub_10002E9AC();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1001A359C(sub_1001A4DB4, v46, v8, type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v10);

  v12 = *(v11 + 16);
  if (v12)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_1000375D0();
    v13 = v52;
    v14 = v11 + 40;
    v15 = v12;
    do
    {

      v16 = sub_1001F6C38();

      v52 = v13;
      v17 = v13[2];
      if (v17 >= v13[3] >> 1)
      {
        sub_1000375D0();
        v13 = v52;
      }

      v13[2] = v17 + 1;
      v13[v17 + 4] = v16;
      v14 += 16;
      --v15;
    }

    while (v15);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v18 = sub_1000A103C(v13);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    v51 = a1;
    if (v12)
    {
      v54 = _swiftEmptyArrayStorage;
      sub_1000375CC(0, v12, 0);
      v21 = 0;
      v22 = v54;
      v47._object = (v11 + 32);
      v48 = v11;
      while (v21 < *(v11 + 16))
      {
        v23 = v12;
        v24 = v22;
        v25 = (v47._object + 16 * v21);
        v27 = *v25;
        v26 = v25[1];

        sub_1000994F8();
        if (sub_1001F6C38() < v18)
        {
          do
          {
            sub_1000994F8();
            if (sub_1001F6C38())
            {
              v52 = v27;
              v53 = v26;
              v56._countAndFlagsBits = sub_1000A40B8();
              sub_1001F6CA8(v56);
            }

            else
            {
              v52 = 32;
              v53 = 0xE100000000000000;
              v55._countAndFlagsBits = sub_1000994F8();
              sub_1001F6CA8(v55);
            }

            v27 = v52;
            v26 = v53;

            sub_1000994F8();
            v28 = sub_1001F6C38();
          }

          while (v28 < v18);
        }

        v22 = v24;
        v54 = v24;
        v30 = v24[2];
        v29 = v24[3];
        if (v30 >= v29 >> 1)
        {
          sub_1000375CC(v29 > 1, v30 + 1, 1);
          v22 = v54;
        }

        ++v21;
        v22[2] = v30 + 1;
        v31 = &v22[2 * v30];
        v31[4] = v27;
        v31[5] = v26;
        v12 = v23;
        v11 = v48;
        if (v21 == v23)
        {

          goto LABEL_24;
        }
      }
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
LABEL_24:
      v52 = 10;
      v53 = 0xE100000000000000;
      v57._countAndFlagsBits = sub_1000A40B8();
      v47._countAndFlagsBits = sub_1001F6D78(v57, v18);
      v47._object = v32;
      v33 = 0;
      v34 = v22[2];
      v35 = (v22 + 5);
      v48 = v22;
      if (!v34)
      {
LABEL_36:

        v63._countAndFlagsBits = 10;
        v63._object = 0xE100000000000000;
        sub_1001F6CA8(v63);
        return;
      }

      while (v33 < v22[2])
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v38 = v35;

        sub_1001A4C4C(v33, v51, v18, v49, v50);
        v40 = v39;
        v58._countAndFlagsBits = sub_1000A40B8();
        v59._countAndFlagsBits = sub_1001F6D78(v58, v41);
        sub_1001F6CA8(v59);

        v60._countAndFlagsBits = v37;
        v60._object = v36;
        sub_1001F6CA8(v60);

        v61._countAndFlagsBits = sub_1000A40B8();
        v62._countAndFlagsBits = sub_1001F6D78(v61, v40);
        sub_1001F6CA8(v62);

        v42 = log2((v33 + 1));
        v43 = v42;
        if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_38;
        }

        if (v42 <= -9.22337204e18)
        {
          goto LABEL_39;
        }

        if (v42 >= 9.22337204e18)
        {
          goto LABEL_40;
        }

        v44 = log2((v33 + 2));
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_41;
        }

        if (v44 <= -9.22337204e18)
        {
          goto LABEL_42;
        }

        if (v44 >= 9.22337204e18)
        {
          goto LABEL_43;
        }

        if (*&v43 == *&v44)
        {
          v45 = v47;
        }

        else
        {
          v45._countAndFlagsBits = 10;
          v45._object = 0xE100000000000000;
        }

        sub_1001F6CA8(v45);
        v35 = v38 + 2;
        --v34;
        ++v33;
        v22 = v48;
        if (!v34)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001A4B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = __chkstk_darwin(a1, a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = sub_1001F6BA8();
  *a2 = result;
  a2[1] = v7;
  return result;
}

Swift::Int sub_1001A4C4C(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = (2 * result) | 1;
  v10 = Heap.rightIndex(_:)(result);
  if (v9 >= _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0())
  {
    goto LABEL_7;
  }

  result = sub_1001A4C4C(v9, a2, a3, a4, a5);
  v12 = result + v11;
  if (__OFADD__(result, v11))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12 + a3;
  if (!__OFADD__(v12, a3))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v13 = 0;
LABEL_8:
  if (v10 >= _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0())
  {
    return v13;
  }

  result = sub_1001A4C4C(v10, a2, a3, a4, a5);
  if (!__OFADD__(result, v14))
  {
    if (__OFADD__(result + v14, a3))
    {
      __break(1u);
    }

    return v13;
  }

LABEL_16:
  __break(1u);
  return result;
}

void HeapIterator.next()()
{
  type metadata accessor for Heap();

  Heap.removeRoot()();
}

uint64_t sub_1001A4E08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001A4E44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001A4EF4()
{

  return _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
}

uint64_t sub_1001A4F34()
{

  return sub_1001F6A78();
}

uint64_t sub_1001A4F54()
{

  return _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
}

void sub_1001A4F6C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_10013B560(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_1001F7808();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

uint64_t sub_1001A5058(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A3B8;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A50AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580578 && a2 == 0xE300000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E726566666FLL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

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

uint64_t sub_1001A517C(char a1)
{
  if (a1)
  {
    return 0x6D614E726566666FLL;
  }

  else
  {
    return 6580578;
  }
}

uint64_t sub_1001A51B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  v7 = sub_1000183C4(&qword_1002BB0A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v13 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_1001A74BC();
  sub_1001F8198();
  v15 = 0;
  sub_1001F7D88();
  if (!v5)
  {
    v14 = 1;
    sub_1001F7D88();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001A5328(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BB090);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10001AE68(a1, a1[3]);
  sub_1001A74BC();
  sub_1001F8178();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1001F7C78();
    v11 = 1;
    sub_1001F7C78();
    (*(v4 + 8))(v7, v3);
  }

  sub_100019CCC(a1);
  return v8;
}

uint64_t sub_1001A5514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A50AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001A553C(uint64_t a1)
{
  v2 = sub_1001A74BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5578(uint64_t a1)
{
  v2 = sub_1001A74BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A55B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001A5328(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_1001A5604(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001EA8E8();
  v5 = sub_1001F10F8(0x6E6F69746361, 0xE600000000000000, v4);
  v7 = v6;

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = sub_1001A5058(v8, v9);
  if (v10 == 2)
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);
    v13 = sub_1001F6668();
    v14 = sub_1001F7298();
    if (sub_1001A771C(v14))
    {
      v15 = sub_10003A87C();
      sub_1001A7798(v15);
      sub_1001A7778(&_mh_execute_header, v16, v17, "Invalid action");
      sub_1001A77A4();
    }

    sub_1000B738C(0x2064696C61766E49, 0xEE006E6F69746361, 6, v24);
    type metadata accessor for HTTPResponseHead._Storage();
    v18 = sub_100021728();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    v19 = sub_10002170C(v18, 21);
    v22 = 2;
    v23 = _swiftEmptyArrayStorage;
  }

  else
  {
    if (v10)
    {
      sub_1001A6044(a1, v24);
    }

    else
    {
      sub_1001A57CC(a1, v11);
    }

    v20 = v27;
    v21 = v26;
    v23 = v24[1];
    v19 = v24[0];
    v22 = v25;
  }

  *a2 = v19;
  *(a2 + 8) = v23;
  *(a2 + 16) = v22;
  sub_1001A7738(v20, v21);
}

__n128 sub_1001A57CC(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1001F0068(__src);
  memcpy(__dst, __src, 0x379uLL);
  if (sub_1000AC5DC(__dst) != 1)
  {
    v8 = *(v5 + 48);

    sub_1000E32F8(v8, v80);
    memcpy(v78, v80, 0x139uLL);
    debugOnly(_:)(v78, v9, v10, v11, v12, v13);
    memcpy(v79, &__src[576], 0x139uLL);
    sub_10004BDE8(v79, &qword_1002ADF78);
    memcpy(&__src[576], v78, 0x139uLL);
  }

  memcpy(v79, __src, 0x379uLL);
  v14 = _swiftEmptyArrayStorage;
  if (sub_1000AC5DC(v79) != 1)
  {
    v15 = v79[18];
    if (v79[18])
    {
      v65 = v7;
      v66 = v5;
      v16 = v79[17];
      v68 = v3;
      sub_10001AE68((v3 + 88), *(v3 + 112));
      v17 = sub_10008E918(v79[8], v79[9]);
      v78[0] = _swiftEmptyArrayStorage;
      v18 = sub_10013B560(v17);
      v7 = 0;
      v14 = (v17 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v18 == v7)
        {

          v78[0] = sub_1001A71F4(v36);
          sub_1001A6634(v78);

          v37 = v78[0];
          v7 = sub_10013B560(v78[0]);
          v38 = 0;
          v14 = (v37 & 0xC000000000000001);
          while (v7 != v38)
          {
            if (v14)
            {
              v39 = sub_1001F7808();
            }

            else
            {
              if (v38 >= *(v37 + 16))
              {
                goto LABEL_57;
              }

              v39 = *(v37 + 8 * v38 + 32);
            }

            v40 = v39;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_56;
            }

            if (sub_1000C43D8() == 4)
            {

              v44 = v40;
              sub_1000C23D8(1u);
              sub_100056A98(1, &v82);
              v45 = v85;
              v46 = v86;
              v47 = v88;
              v48 = v89;
              v49 = v90;
              memcpy(v78, &v79[72], 0x139uLL);
              if (sub_1000AC6F8(v78) == 1)
              {
                v7 = v65;
                v14 = _swiftEmptyArrayStorage;
LABEL_53:
                sub_10001AE68((v68 + 88), *(v68 + 112));
                sub_10008EA08(v44, 1);
                v80[0] = v82;
                v80[1] = v83;
                v80[2] = v84;
                *&v80[3] = v45;
                BYTE8(v80[3]) = v46;
                *(&v80[3] + 9) = *v87;
                HIDWORD(v80[3]) = *&v87[3];
                *&v80[4] = v47;
                *(&v80[4] + 1) = v48;
                *&v80[5] = v49;
                memcpy(&v80[5] + 8, v91, 0x79uLL);
                sub_1001A7288(v80, v66, v92);
                v67 = v92[0];
                v69 = v92[1];
                v62 = v44;
                v63 = v48;
                v33 = v93 | ((v94 | (v95 << 16)) << 32);

                type metadata accessor for HTTPResponseHead._Storage();
                v34 = sub_100021728();
                *(v34 + 16) = 0;
                *(v34 + 24) = 0;
                sub_10002170C(v34, 3);
                v70[0] = v82;
                v70[1] = v83;
                v70[2] = v84;
                v71 = v45;
                v72 = v46;
                *v73 = *v87;
                *&v73[3] = *&v87[3];
                v74 = v47;
                v75 = v63;
                v76 = v49;
                memcpy(v77, v91, 0x79uLL);
                sub_100057E48(v70);
                goto LABEL_26;
              }

              v14 = _swiftEmptyArrayStorage;
              if (LOBYTE(v78[39]) == 1)
              {

                goto LABEL_45;
              }

              v50 = sub_1001F7EA8();

              if (v50)
              {
LABEL_45:
                v51 = v79[63];
                if (v79[63])
                {
                  v52 = v79[62];
                  v96 = v47;
                  sub_1000183C4(&qword_1002AC7E8);
                  v64 = v49;
                  v53 = *(type metadata accessor for IAPTransaction() - 8);
                  v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
                  v47 = swift_allocObject();
                  *(v47 + 16) = xmmword_1001FE9E0;
                  v55 = swift_allocObject();
                  v55[2] = v68;
                  v55[3] = v52;
                  v14 = _swiftEmptyArrayStorage;
                  v55[4] = v51;
                  v56 = v44;

                  v57 = v55;
                  v49 = v64;
                  sub_1001D4DFC(v56, sub_1001A74A0, v57, v47 + v54);
                  sub_10004BDE8(&v96, &qword_1002AFDB8);
                  v46 = 0;
                  v45 = *(v47 + 16);
                  v77[136] = 0;
LABEL_52:
                  v7 = v65;
                  goto LABEL_53;
                }
              }

              if ((v79[111] & 1) == 0 || (sub_1001F7EA8()) && v79[11] && v79[49])
              {
                sub_10001AE68((v68 + 88), *(v68 + 112));

                sub_10008D944();
                v59 = v58;
                v61 = v60;

                sub_10003A36C(v48, v49);
                v48 = v59;
                v49 = v61;
              }

              goto LABEL_52;
            }

            ++v38;
          }

          if (qword_1002AC510 != -1)
          {
            sub_10001B230();
          }

          v41 = sub_1001F6688();
          sub_100019C94(v41, qword_1002E6180);
          v25 = sub_1001F6668();
          v42 = sub_1001F7298();
          v7 = v65;
          v14 = _swiftEmptyArrayStorage;
          if (sub_1001A771C(v42))
          {
            v43 = sub_10003A87C();
            sub_1001A7798(v43);
            v30 = "Failed to find latest deferred transaction to confirm in-app buy request";
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = sub_1001F7808();
        }

        else
        {
          if (v7 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v19 = *(v17 + 8 * v7 + 32);
        }

        v20 = v19;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        if (sub_1000BFC14() == v16 && v15 == v21)
        {
        }

        else
        {
          v23 = sub_1001F7EA8();

          if ((v23 & 1) == 0)
          {

            goto LABEL_19;
          }
        }

        sub_1001F7878();
        sub_1001F7908();
        sub_1001F7918();
        sub_1001F7898();
LABEL_19:
        ++v7;
      }
    }
  }

  if (qword_1002AC510 != -1)
  {
LABEL_58:
    sub_10001B230();
  }

  v24 = sub_1001F6688();
  sub_100019C94(v24, qword_1002E6180);
  v25 = sub_1001F6668();
  v26 = sub_1001F7298();
  if (sub_1001A771C(v26))
  {
    v27 = sub_10003A87C();
    sub_1001A7798(v27);
    v30 = "Failed to decode in-app buy request";
LABEL_24:
    sub_1001A7778(&_mh_execute_header, v28, v29, v30);
    sub_1001A77A4();
  }

LABEL_25:

  v31 = sub_1001A7758();
  sub_1000B738C(v31, v32, 6, v80);
  v67 = v80[0];
  v69 = v80[1];
  v33 = LODWORD(v80[2]) | ((WORD2(v80[2]) | (BYTE6(v80[2]) << 16)) << 32);
  type metadata accessor for HTTPResponseHead._Storage();
  v34 = sub_100021728();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  sub_10002170C(v34, 21);
LABEL_26:
  memcpy(v78, __src, 0x379uLL);
  sub_10004BDE8(v78, &qword_1002B23A0);
  *v7 = v34;
  *(v7 + 8) = v14;
  *(v7 + 16) = 2;
  result = v67;
  *(v7 + 40) = v69;
  *(v7 + 24) = v67;
  *(v7 + 62) = BYTE6(v33);
  *(v7 + 60) = WORD2(v33);
  *(v7 + 56) = v33;
  return result;
}

void sub_1001A6044(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1001F0EDC();
  v10 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v44 = a2;
    v43 = v3;
    sub_10001AE68((v3 + 88), *(v3 + 112));
    v15 = sub_10008E918(v11, v12);
    *&__dst[0] = _swiftEmptyArrayStorage;
    v16 = sub_10013B560(v15);
    v17 = 0;
    a2 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v16 == v17)
      {

        *&__dst[0] = sub_1001A71F4(v22);
        sub_1001A6634(__dst);

        v23 = *&__dst[0];
        v24 = sub_10013B560(*&__dst[0]);
        v25 = 0;
        a2 = v23 & 0xC000000000000001;
        v10 = _swiftEmptyArrayStorage;
        while (v24 != v25)
        {
          if (a2)
          {
            v26 = sub_1001F7808();
          }

          else
          {
            if (v25 >= *(v23 + 16))
            {
              goto LABEL_41;
            }

            v26 = *(v23 + 8 * v25 + 32);
          }

          v27 = v26;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_40;
          }

          if (sub_1000C43D8() == 4)
          {

            sub_1000C23D8(2u);
            sub_10001AE68((v43 + 88), *(v43 + 112));
            sub_10008EA08(v27, 1);
            sub_100056A98(0, __src);
            memcpy(__dst, __src, sizeof(__dst));
            v54 = 7;
            *v55 = *v51;
            *&v55[15] = *&v51[15];
            v56 = 1;
            sub_1001A7288(__dst, a1, v52);
            v45 = v52[0];
            v46 = v52[1];

            memcpy(v47, __src, 0xB0uLL);
            v47[176] = 7;
            *v48 = *v51;
            *&v48[15] = *&v51[15];
            v49 = 1;
            sub_100057E48(v47);
            type metadata accessor for HTTPResponseHead._Storage();
            v42 = sub_100021728();
            *(v42 + 16) = 0;
            *(v42 + 24) = 0;
            v41 = sub_10002170C(v42, 3);
            a2 = v44;
            goto LABEL_37;
          }

          ++v25;
        }

        if (qword_1002AC510 != -1)
        {
          sub_10001B230();
        }

        v35 = sub_1001F6688();
        sub_100019C94(v35, qword_1002E6180);
        v29 = sub_1001F6668();
        v36 = sub_1001F7298();
        a2 = v44;
        if (sub_1001A771C(v36))
        {
          v37 = sub_10003A87C();
          sub_1001A7798(v37);
          v34 = "Failed to find latest deferred transaction to cancel in-app buy request";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (a2)
      {
        v18 = sub_1001F7808();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (sub_1000BFC14() == v13 && v14 == v20)
      {
      }

      else
      {
        v10 = sub_1001F7EA8();

        if ((v10 & 1) == 0)
        {

          goto LABEL_16;
        }
      }

      sub_1001F7878();
      v10 = *(*&__dst[0] + 16);
      sub_1001F7908();
      sub_1001F7918();
      sub_1001F7898();
LABEL_16:
      ++v17;
    }
  }

  if (qword_1002AC510 != -1)
  {
LABEL_42:
    sub_10001B230();
  }

  v28 = sub_1001F6688();
  sub_100019C94(v28, qword_1002E6180);
  v29 = sub_1001F6668();
  v30 = sub_1001F7298();
  if (sub_1001A771C(v30))
  {
    v31 = sub_10003A87C();
    sub_1001A7798(v31);
    v34 = "Failed to decode cancel purchase request";
LABEL_34:
    sub_1001A7778(&_mh_execute_header, v32, v33, v34);
    sub_1001A77A4();
  }

LABEL_35:

  v38 = sub_1001A7758();
  sub_1000B738C(v38, v39, 6, __dst);
  v45 = __dst[0];
  v46 = __dst[1];
  type metadata accessor for HTTPResponseHead._Storage();
  v40 = sub_100021728();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v41 = sub_10002170C(v40, 21);
LABEL_37:
  *a2 = v41;
  *(a2 + 8) = v10;
  *(a2 + 16) = 2;
  sub_1001A7738(v46, v45);
}