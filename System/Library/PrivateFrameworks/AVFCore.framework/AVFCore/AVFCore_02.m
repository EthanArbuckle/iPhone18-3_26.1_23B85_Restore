id sub_1961F5878@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 preventsDisplaySleepDuringVideoPlayback];
  *a2 = result;
  return result;
}

id sub_1961F58C0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rate];
  *a2 = v4;
  return result;
}

id sub_1961F5908@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reasonForWaitingToPlay];
  *a2 = result;
  return result;
}

id sub_1961F5944@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sourceClock];
  *a2 = result;
  return result;
}

id sub_1961F5994@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

id sub_1961F59C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

id sub_1961F59FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 usesExternalPlaybackWhileExternalScreenIsActive];
  *a2 = result;
  return result;
}

id sub_1961F5A44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoOutput];
  *a2 = result;
  return result;
}

id sub_1961F5A94@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 volume];
  *a2 = v4;
  return result;
}

uint64_t sub_1961F5B0C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  v8 = sub_196214658();
  v10 = v9;
  v11 = a4;
  v12 = a1;
  sub_1961F5B94(v8, v10, v11, a5);
}

unint64_t sub_1961F5B94(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v6 = v4;
  if (qword_1EAEFD4F0 != -1)
  {
    v14 = result;
    v15 = a2;
    swift_once();
    result = v14;
    a2 = v15;
  }

  v8 = qword_1EAEFD4F8;
  if (*(qword_1EAEFD4F8 + 16))
  {
    result = sub_1961F624C(result, a2);
    if (v9)
    {
      v10 = (*(v8 + 56) + 48 * result);
      v11 = v10[1];
      v17 = *v10;
      v18 = v11;
      v19 = v10[2];
      v16 = a3;
      v12 = OBJC_IVAR___AVPlayerObservationRegistrar_registrar;

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCAC8);
      a4(&v16, v6 + v12, v13);
    }
  }

  return result;
}

void __swiftcall AVPlayerObservationRegistrar.init()(AVPlayerObservationRegistrar *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id AVPlayerObservationRegistrar.init()()
{
  sub_1961FA88C(&v0[OBJC_IVAR___AVPlayerObservationRegistrar_registrar]);
  v2.receiver = v0;
  v2.super_class = AVPlayerObservationRegistrar;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1961F5DC4(uint64_t a1, id *a2)
{
  result = sub_196214638();
  *a2 = 0;
  return result;
}

uint64_t sub_1961F5E3C(uint64_t a1, id *a2)
{
  v3 = sub_196214648();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1961F5EBC@<X0>(uint64_t *a1@<X8>)
{
  sub_196214658();
  v2 = sub_196214628();

  *a1 = v2;
  return result;
}

uint64_t sub_1961F5F00(uint64_t a1)
{
  v2 = sub_1961F6D64(&qword_1EAEFCB28, type metadata accessor for AVLayerVideoGravity);
  v3 = sub_1961F6D64(&qword_1EAEFCB30, type metadata accessor for AVLayerVideoGravity);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1961F5FBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_196214628();

  *a1 = v2;
  return result;
}

uint64_t sub_1961F6004(uint64_t a1)
{
  v2 = sub_1961F6D64(&qword_1EAEFCB18, type metadata accessor for WaitingReason);
  v3 = sub_1961F6D64(&qword_1EAEFCB20, type metadata accessor for WaitingReason);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1961F60C0()
{
  v0 = sub_196214658();
  v1 = MEMORY[0x19A8C8210](v0);

  return v1;
}

uint64_t sub_1961F60FC()
{
  sub_196214658();
  sub_196214668();
}

uint64_t sub_1961F6150()
{
  sub_196214658();
  sub_196214728();
  sub_196214668();
  v0 = sub_196214738();

  return v0;
}

uint64_t sub_1961F61C4()
{
  v0 = sub_196214658();
  v2 = v1;
  if (v0 == sub_196214658() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_196214708();
  }

  return v5 & 1;
}

unint64_t sub_1961F624C(uint64_t a1, uint64_t a2)
{
  sub_196214728();
  sub_196214668();
  v4 = sub_196214738();

  return sub_1961F6824(a1, a2, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1961F6374(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCAD0);
  v36 = a2;
  result = sub_1962146E8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v37 = *v25;
      v38 = *(v25 + 24);
      v39 = *(v25 + 8);
      v26 = *(v25 + 40);
      if ((v36 & 1) == 0)
      {
      }

      sub_196214728();
      sub_196214668();
      result = sub_196214738();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v37;
      *(v17 + 8) = v39;
      *(v17 + 24) = v38;
      *(v17 + 40) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1961F666C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1961F624C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1961F6374(v16, a4 & 1);
      v11 = sub_1961F624C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_196214718();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1961F6A88();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v21[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v21[7] + 48 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v26[2] = a1[2];
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_1961F6824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_196214708())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1961F68E8()
{
  result = qword_1EAEFB520;
  if (!qword_1EAEFB520)
  {
    sub_1961F6950(255, &qword_1EAEFB518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEFB520);
  }

  return result;
}

uint64_t sub_1961F6950(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_1961F6A88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCAD0);
  v2 = *v0;
  v3 = sub_1962146D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 40);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 8);
        v28 = *(v22 + 24);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v26;
        *(v27 + 24) = v28;
        *(v27 + 40) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1961F6CD0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1961F6D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1961F6F3C()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1961F7770();
  sub_1961FA8C8(KeyPath, v1, v5);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1961F75B8(v5, 0x736D657469, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  qword_1EAEFDB38 = v2;
  return result;
}

uint64_t sub_1961F6FF4(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  v8 = sub_196214658();
  v10 = v9;
  v11 = a4;
  v12 = a1;
  sub_1961F707C(v8, v10, v11, a5);
}

unint64_t sub_1961F707C(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v6 = v4;
  if (qword_1EAEFDB30 != -1)
  {
    v14 = result;
    v15 = a2;
    swift_once();
    result = v14;
    a2 = v15;
  }

  v8 = qword_1EAEFDB38;
  if (*(qword_1EAEFDB38 + 16))
  {
    result = sub_1961F624C(result, a2);
    if (v9)
    {
      v10 = (*(v8 + 56) + 48 * result);
      v11 = v10[1];
      v17 = *v10;
      v18 = v11;
      v19 = v10[2];
      v16 = a3;
      v12 = OBJC_IVAR___AVQueuePlayerObservationRegistrar_registrar;

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCB40);
      a4(&v16, v6 + v12, v13);
    }
  }

  return result;
}

void __swiftcall AVQueuePlayerObservationRegistrar.init()(AVQueuePlayerObservationRegistrar *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id AVQueuePlayerObservationRegistrar.init()()
{
  sub_1961FA88C(&v0[OBJC_IVAR___AVQueuePlayerObservationRegistrar_registrar]);
  v2.receiver = v0;
  v2.super_class = AVQueuePlayerObservationRegistrar;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1961F72C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCB58);
  v36 = a2;
  result = sub_1962146E8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v37 = *v25;
      v38 = *(v25 + 24);
      v39 = *(v25 + 8);
      v26 = *(v25 + 40);
      if ((v36 & 1) == 0)
      {
      }

      sub_196214728();
      sub_196214668();
      result = sub_196214738();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v37;
      *(v17 + 8) = v39;
      *(v17 + 24) = v38;
      *(v17 + 40) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1961F75B8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1961F624C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1961F72C0(v16, a4 & 1);
      v11 = sub_1961F624C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_196214718();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1961F77D8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v21[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v21[7] + 48 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v26[2] = a1[2];
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_1961F7770()
{
  result = qword_1EAEFCB48;
  if (!qword_1EAEFCB48)
  {
    sub_1961F6950(255, &qword_1EAEFCB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEFCB48);
  }

  return result;
}

void *sub_1961F77D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCB58);
  v2 = *v0;
  v3 = sub_1962146D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 40);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 8);
        v28 = *(v22 + 24);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v26;
        *(v27 + 24) = v28;
        *(v27 + 40) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1961F7994()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1961F9D00();
  sub_1961FA8C8(KeyPath, v1, v143);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v2;
  sub_1961F9B3C(v143, 0xD000000000000021, 0x8000000196257F60, isUniquelyReferenced_nonNull_native);
  v4 = *&v189[0];
  v5 = swift_getKeyPath();
  sub_1961FA8C8(v5, v1, v144);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v4;
  sub_1961F9B3C(v144, 0xD000000000000021, 0x8000000196257FB0, v6);
  v7 = *&v189[0];
  v8 = swift_getKeyPath();
  sub_1961FA8C8(v8, v1, v145);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v7;
  sub_1961F9B3C(v145, 0x7465737361, 0xE500000000000000, v9);
  v10 = *&v189[0];
  v11 = swift_getKeyPath();
  sub_1961FA8C8(v11, v1, v146);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v10;
  sub_1961F9B3C(v146, 0x78694D6F69647561, 0xE800000000000000, v12);
  v13 = *&v189[0];
  v14 = swift_getKeyPath();
  sub_1961FA8C8(v14, v1, v147);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v13;
  sub_1961F9B3C(v147, 0xD000000000000017, 0x8000000196258060, v15);
  v16 = *&v189[0];
  v17 = swift_getKeyPath();
  sub_1961FA8C8(v17, v1, v148);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v16;
  sub_1961F9B3C(v148, 0xD000000000000026, 0x80000001962580A0, v18);
  v19 = *&v189[0];
  v20 = swift_getKeyPath();
  sub_1961FA8C8(v20, v1, v149);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v19;
  sub_1961F9B3C(v149, 0xD00000000000001CLL, 0x80000001962580F0, v21);
  v22 = *&v189[0];
  v23 = swift_getKeyPath();
  sub_1961FA8C8(v23, v1, v150);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v22;
  sub_1961F9B3C(v150, 0xD000000000000028, 0x8000000196258140, v24);
  v25 = *&v189[0];
  v26 = swift_getKeyPath();
  sub_1961FA8C8(v26, v1, v151);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v25;
  sub_1961F9B3C(v151, 0xD000000000000012, 0x80000001962581A0, v27);
  v28 = *&v189[0];
  v29 = swift_getKeyPath();
  sub_1961FA8C8(v29, v1, v152);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v28;
  sub_1961F9B3C(v152, 0xD000000000000012, 0x80000001962581E0, v30);
  v31 = *&v189[0];
  v32 = swift_getKeyPath();
  sub_1961FA8C8(v32, v1, v153);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v31;
  sub_1961F9B3C(v153, 0x5279616C506E6163, 0xEE00657372657665, v33);
  v34 = *&v189[0];
  v35 = swift_getKeyPath();
  sub_1961FA8C8(v35, v1, v154);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v34;
  sub_1961F9B3C(v154, 0xD000000000000012, 0x8000000196258260, v36);
  v37 = *&v189[0];
  v38 = swift_getKeyPath();
  sub_1961FA8C8(v38, v1, v155);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v37;
  sub_1961F9B3C(v155, 0xD000000000000012, 0x80000001962582A0, v39);
  v40 = *&v189[0];
  v41 = swift_getKeyPath();
  sub_1961FA8C8(v41, v1, v156);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v40;
  sub_1961F9B3C(v156, 0x46706574536E6163, 0xEE0064726177726FLL, v42);
  v43 = *&v189[0];
  v44 = swift_getKeyPath();
  sub_1961FA8C8(v44, v1, v157);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v43;
  sub_1961F9B3C(v157, 0xD000000000000031, 0x8000000196258320, v45);
  v46 = *&v189[0];
  v47 = swift_getKeyPath();
  sub_1961FA8C8(v47, v1, v158);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v46;
  sub_1961F9B3C(v158, 0xD00000000000001CLL, 0x8000000196258380, v48);
  v49 = *&v189[0];
  v50 = swift_getKeyPath();
  sub_1961FA8C8(v50, v1, v159);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v49;
  sub_1961F9B3C(v159, 0xD000000000000015, 0x80000001962583D0, v51);
  v52 = *&v189[0];
  v53 = swift_getKeyPath();
  sub_1961FA8C8(v53, v1, v160);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v52;
  sub_1961F9B3C(v160, 0xD000000000000015, 0x8000000196258410, v54);
  v55 = *&v189[0];
  v56 = swift_getKeyPath();
  sub_1961FA8C8(v56, v1, v161);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v55;
  sub_1961F9B3C(v161, 0x6E6F697461727564, 0xE800000000000000, v57);
  v58 = *&v189[0];
  v59 = swift_getKeyPath();
  sub_1961FA8C8(v59, v1, v162);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v58;
  sub_1961F9B3C(v162, 0x726F727265, 0xE500000000000000, v60);
  v61 = *&v189[0];
  v62 = swift_getKeyPath();
  sub_1961FA8C8(v62, v1, v163);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v61;
  sub_1961F9B3C(v163, 0xD000000000000016, 0x80000001962584C0, v63);
  v64 = *&v189[0];
  v65 = swift_getKeyPath();
  sub_1961FA8C8(v65, v1, v164);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v64;
  sub_1961F9B3C(v164, 0xD000000000000012, 0x8000000196258500, v66);
  v67 = *&v189[0];
  v68 = swift_getKeyPath();
  sub_1961FA8C8(v68, v1, v165);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v67;
  sub_1961F9B3C(v165, 0xD000000000000013, 0x8000000196258540, v69);
  v70 = *&v189[0];
  v71 = swift_getKeyPath();
  sub_1961FA8C8(v71, v1, v166);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v70;
  sub_1961F9B3C(v166, 0xD000000000000012, 0x8000000196258580, v72);
  v73 = *&v189[0];
  v74 = swift_getKeyPath();
  sub_1961FA8C8(v74, v1, v167);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v73;
  sub_1961F9B3C(v167, 0xD000000000000016, 0x80000001962585C0, v75);
  v76 = *&v189[0];
  v77 = swift_getKeyPath();
  sub_1961FA8C8(v77, v1, v168);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v76;
  sub_1961F9B3C(v168, 0xD000000000000010, 0x8000000196258600, v78);
  v79 = *&v189[0];
  v80 = swift_getKeyPath();
  sub_1961FA8C8(v80, v1, v169);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v79;
  sub_1961F9B3C(v169, 0xD000000000000013, 0x8000000196258640, v81);
  v82 = *&v189[0];
  v83 = swift_getKeyPath();
  sub_1961FA8C8(v83, v1, v170);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v82;
  sub_1961F9B3C(v170, 0x7374757074756FLL, 0xE700000000000000, v84);
  v85 = *&v189[0];
  v86 = swift_getKeyPath();
  sub_1961FA8C8(v86, v1, v171);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v85;
  sub_1961F9B3C(v171, 0xD00000000000001ELL, 0x80000001962586B0, v87);
  v88 = *&v189[0];
  v89 = swift_getKeyPath();
  sub_1961FA8C8(v89, v1, v172);
  v90 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v88;
  sub_1961F9B3C(v172, 0xD00000000000001ALL, 0x8000000196258700, v90);
  v91 = *&v189[0];
  v92 = swift_getKeyPath();
  sub_1961FA8C8(v92, v1, v173);
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v91;
  sub_1961F9B3C(v173, 0xD00000000000002ELL, 0x8000000196258750, v93);
  v94 = *&v189[0];
  v95 = swift_getKeyPath();
  sub_1961FA8C8(v95, v1, v174);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v94;
  sub_1961F9B3C(v174, 0xD000000000000014, 0x80000001962587B0, v96);
  v97 = *&v189[0];
  v98 = swift_getKeyPath();
  sub_1961FA8C8(v98, v1, v175);
  v99 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v97;
  sub_1961F9B3C(v175, 0xD000000000000028, 0x80000001962587F0, v99);
  v100 = *&v189[0];
  v101 = swift_getKeyPath();
  sub_1961FA8C8(v101, v1, v176);
  v102 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v100;
  sub_1961F9B3C(v176, 0xD000000000000010, 0x8000000196258850, v102);
  v103 = *&v189[0];
  v104 = swift_getKeyPath();
  sub_1961FA8C8(v104, v1, v177);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v103;
  sub_1961F9B3C(v177, 0xD00000000000001DLL, 0x8000000196258890, v105);
  v106 = *&v189[0];
  v107 = swift_getKeyPath();
  sub_1961FA8C8(v107, v1, v178);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v106;
  sub_1961F9B3C(v178, 0xD000000000000016, 0x80000001962588E0, v108);
  v109 = *&v189[0];
  v110 = swift_getKeyPath();
  sub_1961FA8C8(v110, v1, v179);
  v111 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v109;
  sub_1961F9B3C(v179, 0xD000000000000012, 0x8000000196258920, v111);
  v112 = *&v189[0];
  v113 = swift_getKeyPath();
  sub_1961FA8C8(v113, v1, v180);
  v114 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v112;
  sub_1961F9B3C(v180, 0xD000000000000028, 0x8000000196258960, v114);
  v115 = *&v189[0];
  v116 = swift_getKeyPath();
  sub_1961FA8C8(v116, v1, v181);
  v117 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v115;
  sub_1961F9B3C(v181, 0xD00000000000001CLL, 0x80000001962589C0, v117);
  v118 = *&v189[0];
  v119 = swift_getKeyPath();
  sub_1961FA8C8(v119, v1, v182);
  v120 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v118;
  sub_1961F9B3C(v182, 0x737574617473, 0xE600000000000000, v120);
  v121 = *&v189[0];
  v122 = swift_getKeyPath();
  sub_1961FA8C8(v122, v1, v183);
  v123 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v121;
  sub_1961F9B3C(v183, 0x6574616C706D6574, 0xE800000000000000, v123);
  v124 = *&v189[0];
  v125 = swift_getKeyPath();
  sub_1961FA8C8(v125, v1, v184);
  v126 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v124;
  sub_1961F9B3C(v184, 0x6C79745374786574, 0xEE0073656C755265, v126);
  v127 = *&v189[0];
  v128 = swift_getKeyPath();
  sub_1961FA8C8(v128, v1, v185);
  v129 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v127;
  sub_1961F9B3C(v185, 0x65736162656D6974, 0xE800000000000000, v129);
  v130 = *&v189[0];
  v131 = swift_getKeyPath();
  sub_1961FA8C8(v131, v1, v186);
  v132 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v130;
  sub_1961F9B3C(v186, 0x736B63617274, 0xE600000000000000, v132);
  v133 = *&v189[0];
  v134 = swift_getKeyPath();
  sub_1961FA8C8(v134, v1, v187);
  v135 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v133;
  sub_1961F9B3C(v187, 0xD000000000000012, 0x8000000196258B20, v135);
  v136 = *&v189[0];
  v137 = swift_getKeyPath();
  sub_1961FA8C8(v137, v1, v188);
  v138 = swift_isUniquelyReferenced_nonNull_native();
  *&v189[0] = v136;
  sub_1961F9B3C(v188, 0xD000000000000011, 0x8000000196258B60, v138);
  v139 = *&v189[0];
  v140 = swift_getKeyPath();
  sub_1961FA8C8(v140, v1, v189);
  v141 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1961F9B3C(v189, 0xD000000000000010, 0x8000000196258BA0, v141);
  qword_1EAEFDB58 = v139;
  return result;
}

id sub_1961F8820@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allowedAudioSpatializationFormats];
  *a2 = result;
  return result;
}

id sub_1961F8868@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 appliesPerFrameHDRDisplayMetadata];
  *a2 = result;
  return result;
}

id sub_1961F88B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 asset];
  *a2 = result;
  return result;
}

id sub_1961F88EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioMix];
  *a2 = result;
  return result;
}

id sub_1961F893C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioTimePitchAlgorithm];
  *a2 = result;
  return result;
}

id sub_1961F898C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 automaticallyHandlesInterstitialEvents];
  *a2 = result;
  return result;
}

void sub_1961F89D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 automaticallyLoadedAssetKeys];
  v4 = sub_1962146A8();

  *a2 = v4;
}

id sub_1961F8A30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 automaticallyPreservesTimeOffsetFromLive];
  *a2 = result;
  return result;
}

id sub_1961F8A78@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canPlayFastForward];
  *a2 = result;
  return result;
}

id sub_1961F8AAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canPlayFastReverse];
  *a2 = result;
  return result;
}

id sub_1961F8AE0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canPlayReverse];
  *a2 = result;
  return result;
}

id sub_1961F8B14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canPlaySlowForward];
  *a2 = result;
  return result;
}

id sub_1961F8B48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canPlaySlowReverse];
  *a2 = result;
  return result;
}

id sub_1961F8B7C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canStepForward];
  *a2 = result;
  return result;
}

id sub_1961F8BB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canUseNetworkResourcesForLiveStreamingWhilePaused];
  *a2 = result;
  return result;
}

id sub_1961F8C10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentMediaSelection];
  *a2 = result;
  return result;
}

id sub_1961F8C4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 customVideoCompositor];
  *a2 = result;
  return result;
}

id sub_1961F8CAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integratedTimeline];
  *a2 = result;
  return result;
}

id sub_1961F8CE8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPlaybackBufferEmpty];
  *a2 = result;
  return result;
}

id sub_1961F8D1C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPlaybackBufferFull];
  *a2 = result;
  return result;
}

id sub_1961F8D50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPlaybackLikelyToKeepUp];
  *a2 = result;
  return result;
}

void sub_1961F8DBC(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  sub_1961F6950(0, a3);
  v7 = sub_1962146A8();

  *a4 = v7;
}

id sub_1961F8E48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredForwardBufferDuration];
  *a2 = v4;
  return result;
}

id sub_1961F8E90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredMaximumResolution];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_1961F8ED8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredMaximumResolutionForExpensiveNetworks];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_1961F8F20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredPeakBitRate];
  *a2 = v4;
  return result;
}

id sub_1961F8F68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredPeakBitRateForExpensiveNetworks];
  *a2 = v4;
  return result;
}

id sub_1961F8FB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentationSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

double sub_1961F8FFC@<D0>(id *a1@<X0>, SEL *a2@<X3>, double *a3@<X8>)
{
  [*a1 *a2];
  result = v6;
  *a3 = v5;
  a3[1] = v6;
  *(a3 + 2) = v7;
  return result;
}

id sub_1961F9058(void *a1, void **a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v5 = a1[2];
  v6 = *a2;
  v7 = *a5;
  v9[0] = *a1;
  v9[1] = a1[1];
  v9[2] = v5;
  return [v6 v7];
}

id sub_1961F90BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 seekingWaitsForVideoCompositionRendering];
  *a2 = result;
  return result;
}

id sub_1961F9104@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 startsOnFirstEligibleVariant];
  *a2 = result;
  return result;
}

id sub_1961F914C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 templatePlayerItem];
  *a2 = result;
  return result;
}

void sub_1961F9188(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 textStyleRules];
  if (v3)
  {
    v4 = v3;
    sub_1961F6950(0, &qword_1EAEFCB70);
    v5 = sub_1962146A8();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1961F9208(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1961F6950(0, &qword_1EAEFCB70);
    v3 = sub_196214698();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTextStyleRules_];
}

id sub_1961F9290@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timebase];
  *a2 = result;
  return result;
}

id sub_1961F92E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 variantPreferences];
  *a2 = result;
  return result;
}

id sub_1961F9330@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoApertureMode];
  *a2 = result;
  return result;
}

id sub_1961F9380@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoComposition];
  *a2 = result;
  return result;
}

uint64_t sub_1961F9400(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  v8 = sub_196214658();
  v10 = v9;
  v11 = a4;
  v12 = a1;
  sub_1961F9488(v8, v10, v11, a5);
}

unint64_t sub_1961F9488(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v6 = v4;
  if (qword_1EAEFDB50 != -1)
  {
    v14 = result;
    v15 = a2;
    swift_once();
    result = v14;
    a2 = v15;
  }

  v8 = qword_1EAEFDB58;
  if (*(qword_1EAEFDB58 + 16))
  {
    result = sub_1961F624C(result, a2);
    if (v9)
    {
      v10 = (*(v8 + 56) + 48 * result);
      v11 = v10[1];
      v17 = *v10;
      v18 = v11;
      v19 = v10[2];
      v16 = a3;
      v12 = OBJC_IVAR___AVPlayerItemObservationRegistrar_registrar;

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCB68);
      a4(&v16, v6 + v12, v13);
    }
  }

  return result;
}

void __swiftcall AVPlayerItemObservationRegistrar.init()(AVPlayerItemObservationRegistrar *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id AVPlayerItemObservationRegistrar.init()()
{
  sub_1961FA88C(&v0[OBJC_IVAR___AVPlayerItemObservationRegistrar_registrar]);
  v2.receiver = v0;
  v2.super_class = AVPlayerItemObservationRegistrar;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1961F96B8(uint64_t a1)
{
  v2 = sub_1961FA2D4(&qword_1EAEFCBD8, type metadata accessor for AVAudioTimePitchAlgorithm);
  v3 = sub_1961FA2D4(&qword_1EAEFCBE0, type metadata accessor for AVAudioTimePitchAlgorithm);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1961F9774(uint64_t a1)
{
  v2 = sub_1961FA2D4(&qword_1EAEFCBC8, type metadata accessor for AVVideoApertureMode);
  v3 = sub_1961FA2D4(&qword_1EAEFCBD0, type metadata accessor for AVVideoApertureMode);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1961F9844(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCB90);
  v36 = a2;
  result = sub_1962146E8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v37 = *v25;
      v38 = *(v25 + 24);
      v39 = *(v25 + 8);
      v26 = *(v25 + 40);
      if ((v36 & 1) == 0)
      {
      }

      sub_196214728();
      sub_196214668();
      result = sub_196214738();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v37;
      *(v17 + 8) = v39;
      *(v17 + 24) = v38;
      *(v17 + 40) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1961F9B3C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1961F624C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1961F9844(v16, a4 & 1);
      v11 = sub_1961F624C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_196214718();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1961F9F78();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v21[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v21[7] + 48 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v26[2] = a1[2];
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_1961F9D00()
{
  result = qword_1EAEFB508;
  if (!qword_1EAEFB508)
  {
    sub_1961F6950(255, &qword_1EAEFB500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEFB508);
  }

  return result;
}

void *sub_1961F9F78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCB90);
  v2 = *v0;
  v3 = sub_1962146D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 40);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 8);
        v28 = *(v22 + 24);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v26;
        *(v27 + 24) = v28;
        *(v27 + 40) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1961FA194(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1961FA1B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1961FA204(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1961FA224(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1961FA2D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1961FA4FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCC50);
  MEMORY[0x1EEE9AC00]();
  v5 = v12 - v4;
  sub_1961FA738(v2, &v13);
  v6 = sub_196214618();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v9 = *(v6 - 8);
    v8(v5, 0, 1, v6);
    return (*(v9 + 32))(a1, v5, v6);
  }

  else
  {
    v8(v5, 1, 1, v6);
    sub_1961FA794(v5);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1962146B8();
    v12[0] = v13;
    v12[1] = v14;
    MEMORY[0x19A8C8200](0xD000000000000013, 0x80000001962572A0);
    sub_1961FA738(v2, &v13);
    __swift_project_boxed_opaque_existential_0(&v13, v15);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v13);
    v11 = sub_196214748();
    MEMORY[0x19A8C8200](v11);

    MEMORY[0x19A8C8200](0xD00000000000002ALL, 0x80000001962572C0);
    result = sub_1962146C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1961FA738(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1961FA794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
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

uint64_t sub_1961FA88C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_196214618();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_196214608();
}

uint64_t sub_1961FA8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  *a3 = sub_1961FA998;
  a3[1] = v6;
  a3[2] = sub_1961FA9CC;
  a3[3] = v7;
  a3[4] = sub_1961FAA00;
  a3[5] = v8;
  return swift_retain_n();
}

uint64_t sub_1961FAA34(uint64_t a1)
{
  v3 = sub_196214618();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1961FA4FC(v6);
  v7(v6, a1);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1961FAB28(uint64_t a1)
{
  v3 = sub_196214618();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  sub_1961FA4FC(v6);
  v7(v6, a1);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1961FAC1C(uint64_t a1)
{
  v3 = sub_196214618();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  sub_1961FA4FC(v6);
  v7(v6, a1);
  return (*(v4 + 8))(v6, v3);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1961FAD1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1961FAD64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1961FADB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1961FAE10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1961FAE58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1961FAEEC()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1961FB77C();
  sub_1961FA8C8(KeyPath, v1, v5);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1961FB5B8(v5, 0x656C62616E457369, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
  qword_1EAEFE2E8 = v2;
  return result;
}

id sub_1961FAF7C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1961FAFF4(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  v8 = sub_196214658();
  v10 = v9;
  v11 = a4;
  v12 = a1;
  sub_1961FB07C(v8, v10, v11, a5);
}

unint64_t sub_1961FB07C(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v6 = v4;
  if (qword_1EAEFE2E0 != -1)
  {
    v14 = result;
    v15 = a2;
    swift_once();
    result = v14;
    a2 = v15;
  }

  v8 = qword_1EAEFE2E8;
  if (*(qword_1EAEFE2E8 + 16))
  {
    result = sub_1961F624C(result, a2);
    if (v9)
    {
      v10 = (*(v8 + 56) + 48 * result);
      v11 = v10[1];
      v17 = *v10;
      v18 = v11;
      v19 = v10[2];
      v16 = a3;
      v12 = OBJC_IVAR___AVPlayerItemTrackObservationRegistrar_registrar;

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCC60);
      a4(&v16, v6 + v12, v13);
    }
  }

  return result;
}

void __swiftcall AVPlayerItemTrackObservationRegistrar.init()(AVPlayerItemTrackObservationRegistrar *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id AVPlayerItemTrackObservationRegistrar.init()()
{
  sub_1961FA88C(&v0[OBJC_IVAR___AVPlayerItemTrackObservationRegistrar_registrar]);
  v2.receiver = v0;
  v2.super_class = AVPlayerItemTrackObservationRegistrar;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1961FB2C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCC68);
  v36 = a2;
  result = sub_1962146E8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v37 = *v25;
      v38 = *(v25 + 24);
      v39 = *(v25 + 8);
      v26 = *(v25 + 40);
      if ((v36 & 1) == 0)
      {
      }

      sub_196214728();
      sub_196214668();
      result = sub_196214738();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v37;
      *(v17 + 8) = v39;
      *(v17 + 24) = v38;
      *(v17 + 40) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1961FB5B8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1961F624C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1961FB2C0(v16, a4 & 1);
      v11 = sub_1961F624C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_196214718();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1961FB7E4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v21[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v21[7] + 48 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v26[2] = a1[2];
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_1961FB77C()
{
  result = qword_1EAEFB4B0;
  if (!qword_1EAEFB4B0)
  {
    sub_1961F6950(255, &qword_1EAEFB4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEFB4B0);
  }

  return result;
}

void *sub_1961FB7E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEFCC68);
  v2 = *v0;
  v3 = sub_1962146D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 40);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 8);
        v28 = *(v22 + 24);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v26;
        *(v27 + 24) = v28;
        *(v27 + 40) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t appendCaptionGroupToQueue_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t avplayer_interstitial_CreateWrapEvent(uint64_t a1, void *a2, uint64_t a3, const __CFArray *a4, void *a5)
{
  v9 = FigPlayerInterstitialEventCopyPrimaryItem();
  v10 = [v9 asset];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 httpSessionIdentifier];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x1E695DF90] dictionary];
  v22 = a3;
  v13 = FigPlayerInterstitialEventCopyInterstitialAssetURLs();
  if (a4 && CFArrayGetCount(a4) > 0 || (a4 = v13) != 0)
  {
    Count = CFArrayGetCount(a4);
  }

  else
  {
    Count = 0;
  }

  v15 = [MEMORY[0x1E695DF70] array];
  cf = 0;
  [v10 _figAsset];
  if (!v9)
  {
    v18 = 4294951625;
    if (!v13)
    {
      return v18;
    }

    goto LABEL_25;
  }

  [a2 _populateInterstitialAssetOptions:v12 fromPrimaryAsset:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setObject:v11 forKey:@"AVURLAssetPrimarySessionIdentifierKey"];
  }

  CMBaseObject = FigAssetGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17)
  {
    v18 = v17(CMBaseObject, *MEMORY[0x1E6971200], *MEMORY[0x1E695E480], &cf);
    if (!v18 && cf)
    {
      [v12 setObject:cf forKey:0x1F0A8DE30];
      if (cf)
      {
        CFRelease(cf);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 4294954514;
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
      if (ValueAtIndex)
      {
        [v15 addObject:{+[AVPlayerItem playerItemWithAsset:](AVPlayerItem, "playerItemWithAsset:", +[AVURLAsset URLAssetWithURL:options:](AVURLAsset, "URLAssetWithURL:options:", ValueAtIndex, v12))}];
      }
    }
  }

  *a5 = [[AVPlayerInterstitialEvent alloc] initWithPrimaryItemAndFigEvent:v9 templateItems:v15 figEvent:v22];
  CFRelease(v9);
  if (v13)
  {
LABEL_25:
    CFRelease(v13);
  }

  return v18;
}

AVCompositionTrackSegmentInternal *AVCompositionTrackSegmentCreateIvars(void *a1, int a2)
{
  v4 = objc_alloc_init(AVCompositionTrackSegmentInternal);
  if (v4)
  {
    v4->editAssetURL = [a1 copy];
    v4->editAssetTrackID = a2;
    CFRetain(v4);
  }

  return v4;
}

void *AVVideoCompositionSerializeSourceTrackWindows(void *a1)
{
  v127 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v103 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v2 = [a1 countByEnumeratingWithState:OUTLINED_FUNCTION_4_0() objects:? count:?];
  if (v2)
  {
    v3 = v2;
    v97 = *v123;
    v85 = *MEMORY[0x1E6973B98];
    v91 = *MEMORY[0x1E6973BA8];
    v73 = *MEMORY[0x1E6973BA0];
    v79 = *MEMORY[0x1E6973B88];
    v4 = *MEMORY[0x1E6973B90];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v123 != v97)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(v122 + 8 * i);
        v7 = [a1 objectForKeyedSubscript:v6];
        if (v7)
        {
          v15 = v7;
          v16 = [v7 durationBefore];
          v24 = OUTLINED_FUNCTION_3_1(v16, v17, v18, v19, v20, v21, v22, v23, v67, v73, v79, v85, v91, v97, v103, v109);
          v25 = [v15 durationAfter];
          v33 = OUTLINED_FUNCTION_3_1(v25, v26, v27, v28, v29, v30, v31, v32, v68, v74, v80, v86, v92, v98, v104, v110);
          v34 = [v15 durationBeforeWhenSeeking];
          v42 = OUTLINED_FUNCTION_3_1(v34, v35, v36, v37, v38, v39, v40, v41, v69, v75, v81, v87, v93, v99, v105, v111);
          LODWORD(v43) = [v15 durationAfterWhenSeeking];
        }

        else
        {
          v24 = OUTLINED_FUNCTION_1_9(0, v8, v9, v10, v11, v12, v13, v14, v67, v73, v79, v85, v91, v97, v103, v109, v115, v118);
          v33 = OUTLINED_FUNCTION_1_9(v24, v51, v52, v53, v54, v55, v56, v57, v71, v77, v83, v89, v95, v101, v107, v113, v116, v119);
          v43 = OUTLINED_FUNCTION_1_9(v33, v58, v59, v60, v61, v62, v63, v64, v72, v78, v84, v90, v96, v102, v108, v114, v117, v120);
          v42 = v43;
          v112 = 0;
          v115 = 0;
          v118 = 0;
        }

        v65 = OUTLINED_FUNCTION_3_1(v43, v44, v45, v46, v47, v48, v49, v50, v70, v76, v82, v88, v94, v100, v106, v112);
        v124[0] = v91;
        v124[1] = v85;
        v125[0] = v6;
        v125[1] = v24;
        v124[2] = v79;
        v124[3] = v73;
        v125[2] = v33;
        v125[3] = v42;
        v124[4] = v4;
        v125[4] = v65;
        [v103 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v125, v124, 5)}];
        if (v24)
        {
          CFRelease(v24);
        }

        if (v33)
        {
          CFRelease(v33);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        if (v65)
        {
          CFRelease(v65);
        }
      }

      v3 = [a1 countByEnumeratingWithState:v121 objects:v126 count:16];
    }

    while (v3);
  }

  return v103;
}

uint64_t AVExportSettingsAverageBitRateForSourceAndExportPresetWithEncoderSpecification(int a1, int a2, int a3, CMVideoFormatDescriptionRef videoDesc)
{
  if (!videoDesc)
  {
    return 0;
  }

  CMVideoFormatDescriptionGetDimensions(videoDesc);
  CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965F30]);
  return FigExportSettingsAverageBitRateForSourceAndExportPreset();
}

uint64_t AVExportSettingsAverageBitRateForSourceAndOutputSettingsPreset(int a1, int a2, uint64_t a3, const opaqueCMFormatDescription *a4)
{
  v7 = exportSettings_exportPresetForOutputSettingsPreset(a3);

  return AVExportSettingsAverageBitRateForSourceAndExportPresetWithEncoderSpecification(a1, a2, v7, a4);
}

CFLocaleIdentifier AVLanguageCodeFromPackedLanguageCode(CFLocaleIdentifier result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt16Type, &valuePtr);
    v1 = valuePtr;
    if (valuePtr == 0x7FFF)
    {
      return @"und";
    }

    if (valuePtr > 0x3FFu)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c", (v1 >> 10) | 0x60, (v1 >> 5) & 0x1F | 0x60, v1 & 0x1F | 0x60];
    }

    result = CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(*MEMORY[0x1E695E480], valuePtr, -1);
    if (!result)
    {
      return result;
    }

    v2 = result;
    valuePtr = FigMetadataGetPackedISO639_2TFromLocaleIdentifier();
    CFRelease(v2);
    v1 = valuePtr;
    if (valuePtr < 0x400u)
    {
      return 0;
    }

    else
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c", (v1 >> 10) | 0x60, (v1 >> 5) & 0x1F | 0x60, v1 & 0x1F | 0x60];
    }
  }

  return result;
}

uint64_t AVFileNameWithExtensionThatAccordsWithUTI(void *a1, void *a2)
{
  if (!a2)
  {
    return a1;
  }

  v4 = [a1 pathExtension];
  if (v4)
  {
    v4 = [objc_msgSend(MEMORY[0x1E6982C40] typeWithFilenameExtension:{v4), "identifier"}];
  }

  if ([a2 isEqualToString:v4])
  {
    return a1;
  }

  v5 = [objc_msgSend(MEMORY[0x1E6982C40] typeWithIdentifier:{a2), "preferredFilenameExtension"}];
  if (!v5)
  {
    return a1;
  }

  v6 = v5;
  v7 = [a1 stringByDeletingPathExtension];

  return [v7 stringByAppendingPathExtension:v6];
}

uint64_t AVSerializedAtomDataFromFormatDescription(void *a1)
{
  values = a1;
  if (!a1)
  {
    return 0;
  }

  v1 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (FigRemote_CreateSerializedAtomDataForFormatDescriptions())
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:0 length:0];
  }

  CFRelease(v2);
  return v3;
}

void *AVFormatDescriptionFromSerializedAtomData(void *a1)
{
  v1 = a1;
  if (a1)
  {
    [a1 bytes];
    [v1 length];
    FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData();
    return 0;
  }

  return v1;
}

uint64_t AVResetMediaServices_cold_1()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t AVResetMediaServices_cold_2()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}