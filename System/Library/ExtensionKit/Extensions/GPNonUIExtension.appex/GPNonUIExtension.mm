uint64_t sub_100001628(void *a1)
{
  v3 = sub_100002018();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 setExportedObject:*(v1 + 16)];
  v8 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP15ImagePlayground16GPNonUIExtension_];
  sub_100001EE8(&qword_100008250, &qword_100002338);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100002260;
  v10 = sub_100001F98(0, &qword_100008258, GPPromptElement_ptr);
  *(v9 + 56) = sub_100001EE8(&qword_100008260, &qword_100002340);
  *(v9 + 32) = v10;
  v11 = sub_100001F98(0, &qword_100008268, NSArray_ptr);
  *(v9 + 88) = sub_100001EE8(&qword_100008270, &qword_100002348);
  *(v9 + 64) = v11;
  sub_100001F98(0, &qword_100008278, NSSet_ptr);
  v12 = sub_100002068();
  sub_100001F98(0, &qword_100008280, NSObject_ptr);
  sub_100001F30();
  v13 = sub_100002048();

  sub_100001964(v13);

  isa = sub_100002038().super.isa;

  [v8 setClasses:isa forSelector:"startGenerationWithStyle:promptElements:personalizationPolicyValue:replyHandler:batchID:" argumentIndex:1 ofReply:0];

  sub_100001F98(0, &qword_100008290, NSUUID_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v8 setClass:ObjCClassFromMetadata forSelector:"startGenerationWithStyle:promptElements:personalizationPolicyValue:replyHandler:batchID:" argumentIndex:3 ofReply:0];
  [v8 setClass:ObjCClassFromMetadata forSelector:"stopGeneration:" argumentIndex:0 ofReply:0];
  [a1 setExportedInterface:v8];
  [a1 activate];
  *v7 = a1;
  (*(v4 + 104))(v7, enum case for ExecutionContext.GPClientIdentity.hostProcessConnection(_:), v3);
  v16 = a1;
  sub_100002028();

  (*(v4 + 8))(v7, v3);
  return 1;
}

uint64_t sub_100001964(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_100002088())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_100001EE8(&qword_100008298, &qword_100002350);
  v3 = sub_1000020B8();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_100002078();
  sub_100001F98(0, &qword_100008280, NSObject_ptr);
  sub_100001F30();
  result = sub_100002058();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = sub_100002098();
    if (!v16)
    {
LABEL_34:
      sub_100001FE0();

      return v3;
    }

    *&v27 = v16;
    sub_100001F98(0, &qword_100008280, NSObject_ptr);
    swift_dynamicCast();
LABEL_25:
    sub_100001F98(0, &qword_100008280, NSObject_ptr);
    swift_dynamicCast();
    result = sub_1000020A8(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100001CE0()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100001D18(void *a1)
{
  v2 = *v1;
  sub_100001628(a1);
  return 1;
}

uint64_t sub_100001D4C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NonUIExtension.Configuration();
  v2 = swift_allocObject();
  v3 = sub_100002008();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_100001FF8();
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001E08();
  sub_100001FE8();
  return 0;
}

unint64_t sub_100001E08()
{
  result = qword_100008198;
  if (!qword_100008198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008198);
  }

  return result;
}

unint64_t sub_100001E94()
{
  result = qword_100008248;
  if (!qword_100008248)
  {
    type metadata accessor for NonUIExtension.Configuration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008248);
  }

  return result;
}

uint64_t sub_100001EE8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001F30()
{
  result = qword_100008288;
  if (!qword_100008288)
  {
    sub_100001F98(255, &qword_100008280, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008288);
  }

  return result;
}

uint64_t sub_100001F98(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}