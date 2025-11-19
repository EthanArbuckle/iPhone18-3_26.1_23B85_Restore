uint64_t sub_182081254(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t NWEthernetChannel.debugDescription.getter()
{
  v1 = [*(v0 + 16) description];
  v2 = sub_182AD2F88();

  return v2;
}

void NWEthernetChannel.state.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 68));
  v4 = *(v3 + 16);
  *(a1 + 4) = *(v3 + 20);
  *a1 = v4;

  os_unfair_lock_unlock((v3 + 68));
}

uint64_t (*NWEthernetChannel.stateUpdateHandler.getter())()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 68));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181C571A4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 68));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181C4DBD0;
}

uint64_t sub_182081430@<X0>(uint64_t (**a1)()@<X8>)
{
  result = NWEthernetChannel.stateUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_181F9DBE4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1820814A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWEthernetChannel.stateUpdateHandler.setter(v4, v3);
}

void NWEthernetChannel.stateUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  os_unfair_lock_lock(v6 + 17);
  sub_182083EFC(&v6[4], aBlock);
  os_unfair_lock_unlock(v6 + 17);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v7 = *(v2 + 16);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_182083F6C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_182081764;
    aBlock[3] = &block_descriptor_17;
    v9 = _Block_copy(aBlock);

    sub_181AA39C0(a1);

    nw_ethernet_channel_set_state_changed_handler(v7, v9);
    sub_181A554F4(a1);
    _Block_release(v9);
  }

  else
  {
    sub_181A554F4(a1);
  }
}

void sub_182081684(uint64_t a1, NSObject *a2, uint64_t a3, void (*a4)(int *))
{
  v7 = *(a3 + 24);
  os_unfair_lock_lock((v7 + 68));
  swift_unknownObjectRetain();
  sub_181D9026C(a1, a2, &v16);
  v8 = v16;
  v9 = v16 | (v17 << 32);
  *(v7 + 20) = v17;
  *(v7 + 16) = v8;
  if (v9 >= 0x8000000003 && (nw_utilities_minos_atleast(1) & 1) != 0)
  {
    v10 = *(v7 + 24);
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    sub_181A554F4(v10);
    v11 = *(v7 + 40);
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    sub_181A554F4(v11);
  }

  v12 = *(v7 + 20);
  v13 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 68));
  if (a4)
  {
    v14 = v13;
    v15 = (v13 | (v12 << 32)) >> 32;
    a4(&v14);
  }
}

uint64_t sub_182081764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t (*NWEthernetChannel.stateUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 68));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DBE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 68));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC70;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_1820818C4;
}

uint64_t NWEthernetChannel.__allocating_init(on:etherType:)(uint64_t *a1, uint16_t a2)
{
  v4 = swift_allocObject();
  NWEthernetChannel.init(on:etherType:)(a1, a2);
  return v4;
}

uint64_t NWEthernetChannel.init(on:etherType:)(uint64_t *a1, uint16_t a2)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FB0);
  v5 = swift_allocObject();
  *(v5 + 68) = 0;
  *(v5 + 20) = 0x80;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 49) = 0u;
  *(v2 + 24) = v5;
  *(v2 + 32) = a2;
  *(v2 + 40) = v4;
  v6 = type metadata accessor for __NWInterface();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
  swift_retain_n();
  v9 = swift_slowAlloc();
  *&v7[v8] = v9;
  *&v7[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v7[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v4;
  *v9 = 0;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  result = nw_interface_bridge(v10);
  if (result)
  {
    v12 = result;

    v13 = nw_ethernet_channel_create(a2, v12);
    swift_unknownObjectRelease();
    *(v2 + 16) = v13;
    sub_181AA39C0(0);
    NWEthernetChannel.stateUpdateHandler.setter(0, 0);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NWEthernetChannel.__allocating_init(on:etherType:parameters:)(uint64_t *a1, uint16_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_182083F78(a1, a2, a3);

  return v6;
}

uint64_t NWEthernetChannel.init(on:etherType:parameters:)(uint64_t *a1, uint16_t a2, uint64_t a3)
{
  v3 = sub_182083F78(a1, a2, a3);

  return v3;
}

void NWEthernetChannel.start(queue:)(NSObject *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  os_unfair_lock_lock((v4 + 68));
  sub_1820840F8(v4 + 16);
  os_unfair_lock_unlock((v4 + 68));
  os_unfair_lock_lock((v4 + 68));
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_181F9DBE4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_181AA39C0(v5);
  os_unfair_lock_unlock((v4 + 68));
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = sub_181F9DC70;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_181AA39C0(v10);
  sub_181AA39C0(v10);
  NWEthernetChannel.stateUpdateHandler.setter(v10, v9);
  sub_181A554F4(v10);
  sub_181A554F4(v10);
  v11 = *(v2 + 16);
  nw_ethernet_channel_set_queue(v11, a1);
  nw_ethernet_channel_start(v11);
}

void *NWEthernetChannel.queue.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 68));
  v2 = *(v1 + 56);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 68));
  return v2;
}

void NWEthernetChannel.EthernetAddress.init(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_182AD2188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 == 6)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 6)
      {
        goto LABEL_8;
      }

LABEL_15:
      sub_181C1F2E4(a1, v7);
      v17 = 0;
LABEL_22:
      *a2 = v17;
      return;
    }

    goto LABEL_24;
  }

  if (BYTE6(v7) != 6)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v10 != 2)
  {
    if (v10 != 1)
    {
      goto LABEL_20;
    }

    v15 = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v16 = v15;
      if (v15)
      {
        goto LABEL_18;
      }

LABEL_21:
      sub_181C1F2E4(a1, v7);
      v17 = MEMORY[0x1E69E7CC0];
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v16 = v18 - v19;
  if (!__OFSUB__(v18, v19))
  {
    if (v16)
    {
LABEL_18:
      while (1)
      {
        v20 = v6;
        v21 = v7;
        v17 = sub_181AC1BE8(v16, 0);
        v22 = sub_182AD20B8();
        sub_181C1F2E4(a1, v21);
        v23 = *(v5 + 8);
        v5 += 8;
        v6 = v23(v9, v20);
        if (v22 == v16)
        {
          goto LABEL_22;
        }

        __break(1u);
LABEL_20:
        v16 = BYTE6(v7);
        if (!BYTE6(v7))
        {
          goto LABEL_21;
        }
      }
    }

    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

uint64_t NWEthernetChannel.EthernetAddress.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v44 = 58;
  v45 = 0xE100000000000000;
  v41 = &v44;
  v4 = sub_182083160(0x7FFFFFFFFFFFFFFFLL, 1, sub_181E591D8, v40, a1, a2, &v44);
  v44 = v4;
  v45 = sub_1820821EC;
  v46 = 0;
  v47 = sub_182083EEC;
  v48 = 0;
  if (sub_182080E7C() <= 5)
  {

    v6 = 0;
LABEL_39:
    *a3 = v6;
    return result;
  }

  v7 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_35;
  }

  v8 = 0;
  v9 = 0;
  v10 = (MEMORY[0x1E69E7CC0] + 32);
  v11 = v4 + 56;
  while (2)
  {
    v12 = (v11 + 32 * v8);
    while (1)
    {
      if (v8 >= v7)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_41;
      }

      v14 = *(v12 - 3);
      v15 = *(v12 - 2);
      if ((v15 ^ v14) >> 14)
      {
        break;
      }

LABEL_15:
      ++v8;
      v12 += 4;
      if (v13 == v7)
      {
        goto LABEL_35;
      }
    }

    v16 = *(v12 - 1);
    v17 = *v12;
    if ((*v12 & 0x1000000000000000) != 0)
    {
      v35 = *v12;
      v37 = *(v12 - 3);
      v31 = *(v12 - 2);
      v33 = *(v12 - 1);

      LODWORD(v37) = sub_182083674(v37, v31, v33, v35, 16);

      result = v37;
      if ((v37 & 0x100) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {
      v42[0] = *(v12 - 1);
      v42[1] = v17 & 0xFFFFFFFFFFFFFFLL;
      v18 = v42;
    }

    else if ((v16 & 0x1000000000000000) != 0)
    {
      v18 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = *v12;
      v38 = *(v12 - 3);
      v32 = *(v12 - 2);
      v34 = *(v12 - 1);
      v18 = sub_182AD3CF8();
      v15 = v32;
      v16 = v34;
      v17 = v36;
      v14 = v38;
    }

    result = sub_182084144(v18, v14, v15, v16, v17, 16);
    v43 = BYTE1(result) & 1;
    if ((result & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (!v9)
    {
      v39 = result;
      v19 = *(v6 + 3);
      if (((v19 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_44;
      }

      v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
      v22 = swift_allocObject();
      v23 = 2 * _swift_stdlib_malloc_size(v22) - 64;
      *(v22 + 2) = v21;
      *(v22 + 3) = v23;
      v24 = v22 + 32;
      v25 = *(v6 + 3) >> 1;
      if (*(v6 + 2))
      {
        v26 = v6 + 32;
        if (v22 != v6 || v24 >= &v26[v25])
        {
          memmove(v22 + 32, v26, v25);
        }

        *(v6 + 2) = 0;
      }

      v10 = &v24[v25];
      v9 = (v23 >> 1) - v25;

      v6 = v22;
      result = v39;
    }

    v11 = v4 + 56;
    v27 = __OFSUB__(v9--, 1);
    if (v27)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    *v10++ = result;
    v8 = v13;
    if (v13 != v7)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v28 = *(v6 + 3);
  if (v28 < 2)
  {
LABEL_38:

    goto LABEL_39;
  }

  v29 = v28 >> 1;
  v27 = __OFSUB__(v29, v9);
  v30 = v29 - v9;
  if (!v27)
  {
    *(v6 + 2) = v30;
    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t *sub_1820821EC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if ((v4 ^ *result) < 0x4000)
  {
    v9 = 0;
    LOBYTE(v7) = 1;
  }

  else
  {
    v6 = result[2];
    v5 = result[3];
    result = sub_182083C54(*result, v4, v6, v5, 16);
    if ((result & 0x10000) != 0)
    {

      v8 = sub_182083674(v3, v4, v6, v5, 16);

      result = v8;
      v7 = (v8 >> 8) & 1;
    }

    else
    {
      v7 = (result >> 8) & 1;
    }

    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = result;
    }
  }

  *a2 = v9;
  a2[1] = v7;
  return result;
}

uint64_t NWEthernetChannel.EthernetAddress.debugDescription.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394A0);
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7508];
  *(result + 16) = xmmword_182AEB7D0;
  v4 = MEMORY[0x1E69E7558];
  *(result + 56) = v3;
  *(result + 64) = v4;
  v5 = *(v1 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(result + 32) = *(v1 + 32);
  *(result + 96) = v3;
  *(result + 104) = v4;
  if (v5 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(result + 72) = *(v1 + 33);
  *(result + 136) = v3;
  *(result + 144) = v4;
  if (v5 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(result + 112) = *(v1 + 34);
  *(result + 176) = v3;
  *(result + 184) = v4;
  if (v5 == 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(result + 152) = *(v1 + 35);
  *(result + 216) = v3;
  *(result + 224) = v4;
  if (v5 < 5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(result + 192) = *(v1 + 36);
  *(result + 256) = v3;
  *(result + 264) = v4;
  if (v5 == 5)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(result + 232) = *(v1 + 37);

  return sub_182AD2FC8();
}

uint64_t NWEthernetChannel.EthernetAddress.rawValue.getter()
{

  v1 = sub_181F7C4EC(v0);

  return v1;
}

uint64_t static NWEthernetChannel.EthernetAddress.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t NWEthernetChannel.EthernetAddress.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1865DB070](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      ++v4;
      result = sub_182AD4518();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t NWEthernetChannel.EthernetAddress.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      ++v3;
      sub_182AD4518();
      --v2;
    }

    while (v2);
  }

  return sub_182AD4558();
}

uint64_t sub_182082540()
{
  v1 = *v0;
  result = MEMORY[0x1865DB070](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      ++v4;
      result = sub_182AD4518();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_182082594()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      ++v3;
      sub_182AD4518();
      --v2;
    }

    while (v2);
  }

  return sub_182AD4558();
}

void NWEthernetChannel.send(content:to:vlanTag:completion:)(uint64_t a1, uint64_t a2, char **a3, uint16_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_182083570(v10);
  }

  v11 = *(v6 + 16);
  v12 = sub_182AD2138();
  v14 = NWCreateDispatchDataFromNSData(v12, v13);

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a5;
    *(v15 + 24) = a6;
    v17[4] = sub_181F4C920;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_181AA4EBC;
    v17[3] = &block_descriptor_28;
    v16 = _Block_copy(v17);

    nw_ethernet_channel_send(v11, v14, a4, v10 + 32, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*NWEthernetChannel.receiveHandler.getter())(uint64_t, uint64_t, __int16, uint64_t, uint64_t)
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 68));
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1820845DC;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 68));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_1820845D8;
}

uint64_t sub_182082838@<X0>(void *a1@<X8>)
{
  result = NWEthernetChannel.receiveHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_182084880;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_1820828A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18208487C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWEthernetChannel.receiveHandler.setter(v4, v3);
}

void NWEthernetChannel.receiveHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(v5 + 17);
  sub_181F9A428(&v5[4]);
  os_unfair_lock_unlock(v5 + 17);
  if (a1)
  {
    v6 = *(v2 + 16);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_1820845E0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_182082C58;
    aBlock[3] = &block_descriptor_40;
    v8 = _Block_copy(aBlock);

    nw_ethernet_channel_set_receive_handler(v6, v8);
    _Block_release(v8);
    sub_181A554F4(a1);
  }

  else
  {
    nw_ethernet_channel_set_receive_handler(*(v2 + 16), 0);
  }
}

unint64_t sub_182082A68(void *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, void (*a5)(uint64_t, unint64_t, uint64_t, uint64_t *, uint64_t *))
{
  result = NWCreateNSDataFromDispatchData(a1);
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = sub_182AD2158();
  v13 = v12;

  result = sub_181E63D00(a3, 6);
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      if (BYTE6(v14) != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 6)
      {
        goto LABEL_15;
      }

LABEL_9:
      sub_181F3273C(result, v14);
      v21 = v20;
      result = sub_181E63D00(a4, 6);
      v23 = v22 >> 62;
      if ((v22 >> 62) <= 1)
      {
        if (!v23)
        {
          if (BYTE6(v22) != 6)
          {
            goto LABEL_23;
          }

LABEL_19:
          sub_181F3273C(result, v22);
          v30 = v29;
          v31 = v21;
          a5(v11, v13, a2, &v31, &v30);
          sub_181C1F2E4(v11, v13);
        }

        if (!__OFSUB__(HIDWORD(result), result))
        {
          if (HIDWORD(result) - result == 6)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }

LABEL_30:
        __break(1u);
        return result;
      }

      if (v23 != 2)
      {
        goto LABEL_23;
      }

      v27 = *(result + 16);
      v26 = *(result + 24);
      v18 = __OFSUB__(v26, v27);
      v28 = v26 - v27;
      if (!v18)
      {
        if (v28 == 6)
        {
          goto LABEL_19;
        }

LABEL_23:
        v24 = result;
        v25 = v22;
        sub_181C1F2E4(v11, v13);

        goto LABEL_24;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v15 == 2)
  {
    v17 = *(result + 16);
    v16 = *(result + 24);
    v18 = __OFSUB__(v16, v17);
    v19 = v16 - v17;
    if (v18)
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v19 == 6)
    {
      goto LABEL_9;
    }
  }

LABEL_15:
  v24 = result;
  v25 = v14;
  sub_181C1F2E4(v11, v13);
LABEL_24:

  return sub_181C1F2E4(v24, v25);
}

void sub_182082C58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t (*NWEthernetChannel.receiveHandler.modify(uint64_t (**a1)(uint64_t, uint64_t, __int16, uint64_t, uint64_t)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 68));
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_182084880;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 68));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_18208487C;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_182082DD4;
}

uint64_t sub_182082E14(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v7);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

uint64_t NWEthernetChannel.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t NWEthernetChannel.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_182082F30@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_182AD1D58();
    if (v10)
    {
      v11 = sub_182AD1D88();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_182AD1D78();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_182AD1D58();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_182AD1D88();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_182AD1D78();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_182083160@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_182AD3258();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_181F5A7F8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_181F5A7F8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_182AD3228();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_182AD3108();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_182AD3108();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_182AD3258();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_181F5A7F8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_182AD3258();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_181F5A7F8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_181F5A7F8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_182AD3108();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_182083610(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_182AD3EB8();
  }

  return sub_182AD3C38();
}

unsigned __int8 *sub_182083674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_18208481C();

  result = sub_182AD3248();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_18224FE14();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_182AD3CF8();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_182083C54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_182AD3CF8();
  }

  result = sub_182084144(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE1(result) & 1;
    v13 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 16);
  }

  return result;
}

uint64_t sub_182083D24()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = v0[1];
    v4 = (*v0 + 56);
    v5 = v0[3];
    while (1)
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v4 - 3);
      v10 = v6;
      v11 = v7;

      v3(&v12, &v9);

      LOWORD(v9) = v12;
      if (v5(&v9))
      {
        break;
      }

      ++v2;
      v4 += 4;
      if (v1 == v2)
      {
        return v1;
      }
    }

    return v2;
  }

  return v1;
}

uint64_t sub_182083DF8(uint64_t result)
{
  v2 = *result;
  v3 = *(*v1 + 16);
  if (*result != v3)
  {
    v11 = result;
    v4 = v1[1];
    v5 = *v1 + 32;
    v6 = v1[3];
    while (1)
    {
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v7 == v3)
      {
        goto LABEL_8;
      }

      if (v7 >= v3)
      {
        goto LABEL_10;
      }

      v8 = v5 + 32 * v7;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v12 = *v8;
      v13 = v9;
      v14 = v10;

      v4(&v15, &v12);

      LOWORD(v12) = v15;
      result = v6(&v12);
      ++v2;
      if (result)
      {
        v3 = v7;
LABEL_8:
        *v11 = v3;
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_182083EFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(a1 + 8);
  sub_181AA39C0(v6);
  result = sub_181A554F4(v7);
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *a2 = *(a1 + 48);
  return result;
}

uint64_t sub_182083F78(uint64_t *a1, uint16_t a2, uint64_t a3)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FB0);
  v7 = swift_allocObject();
  *(v7 + 68) = 0;
  *(v7 + 20) = 0x80;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 49) = 0u;
  *(v3 + 24) = v7;
  *(v3 + 32) = a2;
  *(v3 + 40) = v6;
  v8 = type metadata accessor for __NWInterface();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
  swift_retain_n();
  v11 = swift_slowAlloc();
  *&v9[v10] = v11;
  *&v9[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v9[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v6;
  *v11 = 0;
  v18.receiver = v9;
  v18.super_class = v8;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  result = nw_interface_bridge(v12);
  if (result)
  {
    v14 = result;

    v15 = *(a3 + 16);
    os_unfair_lock_lock((v15 + 24));
    v16 = *(v15 + 16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v15 + 24));
    v17 = nw_ethernet_channel_create_with_parameters(a2, v14, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v3 + 16) = v17;
    sub_181AA39C0(0);
    NWEthernetChannel.stateUpdateHandler.setter(0, 0);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1820840F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 40);
  v5 = v3;

  *(a1 + 40) = v3;
  *(a1 + 48) = 1;
}

uint64_t sub_182084144(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_18208A330(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_182AD31B8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_18208A330(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_18208A330(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_182AD31B8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_1820845EC()
{
  result = qword_1EA839FB8;
  if (!qword_1EA839FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839FB8);
  }

  return result;
}

uint64_t sub_1820846C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_182084720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_182084794(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v9[0] = a1;
  v9[1] = a2;
  v8 = a3;
  return v6(v9, &v8, a4, a5);
}

unint64_t sub_18208481C()
{
  result = qword_1EA839FC0;
  if (!qword_1EA839FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839FC0);
  }

  return result;
}

unint64_t sub_182084898(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v9 = *(*(a4 + 16) + 16);
  if (v9 < a1 || v9 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = a3 - a1;
  if (a2 >= 1)
  {
    if (v11 < 0 || v11 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v11 <= 0 && v11 > a2)
  {
    return 0;
  }

LABEL_13:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    goto LABEL_16;
  }

  if (result > v9)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_182084954@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  v9 = *(v5 + 56);
  v10 = *(v5 + 64);
  v11 = *(v5 + 72);
  v12 = *(v5 + 80);
  *a1 = *(v5 + 32);
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  result = sub_182084898(0, 1, v6, *v1);
  if ((v13 & 1) == 0)
  {
    v14 = result;
    if ((result & 0x8000000000000000) == 0)
    {

      return sub_182088BA4(0, v14);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_182084A1C(uint64_t a1)
{
  v2 = sub_182AD3AD8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_18224DC08(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_182084A98(uint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = *v2;
      result = swift_beginAccess();
      v6 = *(v5 + 16);
      v7 = *(v6 + 16);
      if (v7 > v3)
      {
        v8 = v6 + 32;
        v9 = v8 + (v3 << 6);
        result = *(v9 + 8);
        v10 = *(v9 + 16);
        v11 = *(v9 + 24);
        v12 = *(v9 + 32);
        v13 = *(v9 + 40);
        v14 = *(v9 + 48);
        v26[0] = *v9;
        v26[1] = result;
        v26[2] = v10;
        v26[3] = v11;
        v27 = v12;
        v28 = v13;
        v29 = v14;
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (v7 > a2)
          {
            v15 = v8 + (a2 << 6);
            v16 = *(v15 + 8);
            v17 = *(v15 + 16);
            v18 = *(v15 + 24);
            v19 = *(v15 + 32);
            v20 = *(v15 + 40);
            v21 = *(v15 + 48);
            v22[0] = *v15;
            v22[1] = v16;
            v22[2] = v17;
            v22[3] = v18;
            v23 = v19;
            v24 = v20;
            v25 = v21;

            HTTPFields.subscript.setter(v22, v3);
            return HTTPFields.subscript.setter(v26, a2);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void sub_182084BBC(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v3;
      v9 = *(*v3 + 2);
      if (v9 > a1)
      {
        v4 = a2;
        if (v9 > a2)
        {
          v34 = v3;
          v38 = 56 * a1;
          v10 = &v2[56 * a1 + 32];
          v32 = *v10;
          v33 = *(v10 + 8);
          v11 = *(v10 + 24);
          v12 = *(v10 + 32);
          v13 = *(v10 + 40);
          v14 = *(v10 + 48);
          v27 = 56 * a2;
          v15 = &v2[56 * a2 + 32];
          v37 = *v15;
          v35 = *(v15 + 16);
          v36 = *(v15 + 8);
          v16 = *(v15 + 24);
          v7 = *(v15 + 32);
          v8 = *(v15 + 40);
          v5 = *(v15 + 48);

          v29 = v13;
          v30 = v12;
          v28 = v14;
          v17 = v14;
          v6 = v16;
          sub_181F8C1DC(v12, v13, v17);

          sub_181F8C1DC(v7, v8, v5);
          v31 = v11;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v2 = sub_18208355C(v2);
LABEL_6:
        v18 = v2 + 32;
        v19 = &v2[v38 + 32];
        v20 = *(v19 + 4);
        v21 = *(v19 + 5);
        v22 = v19[48];
        *v19 = v37;
        *(v19 + 1) = v36;
        *(v19 + 2) = v35;
        *(v19 + 3) = v6;
        *(v19 + 4) = v7;
        *(v19 + 5) = v8;
        v19[48] = v5;

        sub_181F8C1EC(v20, v21, v22);
        if (*(v2 + 2) <= v4)
        {
          __break(1u);
        }

        else
        {
          v23 = &v18[v27];
          v24 = *&v18[v27 + 32];
          v25 = *&v18[v27 + 40];
          v26 = v18[v27 + 48];
          *v23 = v32;
          *(v23 + 8) = v33;
          *(v23 + 3) = v31;
          *(v23 + 4) = v30;
          *(v23 + 5) = v29;
          v23[48] = v28;

          sub_181F8C1EC(v24, v25, v26);
          *v34 = v2;
        }

        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t HTTPFields.subscript.getter(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v13 = *v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  sub_181DE0CB8(&v10);
  v6 = v5;

  v8 = sub_181DE90B8(v7, v6);

  return v8;
}

uint64_t sub_182084E0C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (sub_181CA4798(v3, v4))
  {
  }

  else
  {
    result = sub_182287700(v3, v4);
    v3 = result;
    v4 = v6;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_182084E78()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = sub_181CAF7B4(v1);
  return v0;
}

uint64_t sub_182084F0C()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v4 += 64;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_182085008()
{
  sub_182AD44E8();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = v1 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v3 += 64;
      --v2;
    }

    while (v2);
  }

  return sub_182AD4558();
}

uint64_t sub_182085130()
{
  sub_182AD44E8();
  sub_182084F0C();
  return sub_182AD4558();
}

void *sub_1820851BC()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A070);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[4] = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = sub_181CAF7B4(v2);
  return v0;
}

uint64_t sub_182085234()
{

  return swift_deallocClassInstance();
}

void *HTTPFields.init()@<X0>(void *a1@<X8>)
{
  result = sub_181C9FCB4();
  *a1 = result;
  return result;
}

uint64_t HTTPFields.subscript.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *v1;
  v15 = v5;
  v16 = v6;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  result = sub_181DE0CB8(&v12);
  if (v8 == 0xFFFF)
  {
    return 0;
  }

  v9 = result;
  v10 = v8;
  if (*(result + 16) > v8)
  {
    if (v4 == 0x65696B6F6F63 && v5 == 0xE600000000000000)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_182AD4268();

      swift_bridgeObjectRelease_n();
    }

    v12 = v9;
    LOWORD(v13) = v10;
    v14 = sub_182085848;
    v15 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD8);
    sub_181AB3DCC(&qword_1EA8363D0, &qword_1EA839FD8);
    sub_181AC2364();
    v11 = sub_182AD3308();

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_18208544C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v12[3] = a2[3];
  v12[4] = v4;
  v12[0] = v5;
  v12[1] = v6;
  v12[2] = v7;

  v8 = HTTPFields.subscript.getter(v12);
  v10 = v9;

  *a3 = v8;
  a3[1] = v10;
  return result;
}

uint64_t sub_1820854D4(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = a3[2];
  v5 = a3[3];
  v6 = *a1;
  v7 = a1[1];
  v9[0] = *a3;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;

  return HTTPFields.subscript.setter(v6, v7, v9);
}

uint64_t HTTPFields.subscript.setter(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v6 = a3[2];
  v5 = a3[3];
  if (a2)
  {
    v7 = a2;
    if (v6 == 0x65696B6F6F63 && v5 == 0xE600000000000000)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v10 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        if (sub_181CA4798(a1, v7))
        {
        }

        else
        {
          v17 = a1;
          v18 = v7;
          v19 = sub_1822876F4;
          v20 = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
          sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8);
          sub_182AD30A8();

          a1 = 0;
          v7 = 0xE000000000000000;
        }

        v14 = sub_181CA1930(a1, v7);
        v16 = v15;

        v17 = v4;
        v18 = v3;
        v19 = v6;
        v20 = v5;
        v21 = 0;
        v22 = v14;
        v23 = v16;
        sub_182085EC4(&v17, v4, v3, v6, v5);

        swift_bridgeObjectRelease_n();
        return swift_bridgeObjectRelease_n();
      }
    }

    v17 = a1;
    v18 = v7;
    sub_18208C2BC();
    v12 = sub_182AD37C8();

    v13 = swift_allocObject();
    v13[2] = v4;
    v13[3] = v3;
    v13[4] = v6;
    v13[5] = v5;

    sub_182085A44(v12, sub_18208C310, v13, v4, v3, v6, v5);
  }

  sub_18208C094(*a3, a3[1], a3[2], v5);
}

uint64_t sub_182085848@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (sub_181CA4798(v3, v4))
  {
  }

  else
  {

    v3 = sub_182287700(v3, v4);
    v7 = v6;

    v4 = v7;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_1820858F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];

  v15 = MEMORY[0x1865D9BC0](v11, v12, v13, v14);
  v17 = v16;
  *(a6 + 32) = 0;
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  if ((sub_181CA4798(v15, v16) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
    sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8);
    sub_182AD30A8();

    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = sub_181CA1930(v15, v17);
  v20 = v19;

  *(a6 + 40) = v18;
  *(a6 + 48) = v20;
  return result;
}

uint64_t sub_182085A44(uint64_t a1, void (*a2)(void *__return_ptr, __int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_181DAEBE0();

    *v7 = v11;
  }

  v12 = *(*v11 + 152);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
  v12(v46, sub_181D0482C, v11, v13);
  v14 = v46[0];
  if (!*(v46[0] + 16) || (v15 = sub_181CA266C(a6, a7), (v16 & 1) == 0))
  {

    goto LABEL_23;
  }

  v17 = *(*(v14 + 56) + 4 * v15);

  if (v17 == 0xFFFF)
  {
LABEL_23:
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v18 = *(a1 + 16);
  result = swift_beginAccess();
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v42 = v18;
  do
  {
    if (v20 == v18)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_181F5A904(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_181F5A904((v22 > 1), v23 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v23 + 1;
      *(v21 + 8 * v23 + 32) = v17;
      v20 = v18;
    }

    else
    {
      if (v20 >= v18)
      {
        goto LABEL_35;
      }

      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_36;
      }

      v25 = a1 + 32 + 32 * v20;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      v50 = *v25;
      v51 = v26;
      v52 = v27;

      a2(v46, &v50);

      v28 = v46[0];
      v29 = v46[1];
      v31 = v46[2];
      v30 = v46[3];
      v44 = v47;
      v32 = v49;
      v43 = v48;
      swift_beginAccess();
      v33 = v11[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      v11[2] = v33;
      if ((result & 1) == 0)
      {
        result = sub_182083520(v33);
        v33 = result;
        v11[2] = result;
      }

      if (v33[2] <= v17)
      {
        goto LABEL_37;
      }

      v34 = &v33[8 * v17];
      v34[4] = v28;
      v34[5] = v29;
      v34[6] = v31;
      v34[7] = v30;
      *(v34 + 64) = v44;
      v34[9] = v43;
      v34[10] = v32;
      v11[2] = v33;
      swift_endAccess();

      v20 = v24;
      v18 = v42;
    }

    v35 = v11[2];
    if (*(v35 + 16) <= v17)
    {
      goto LABEL_34;
    }

    v17 = *(v35 + (v17 << 6) + 88);
  }

  while (v17 != 0xFFFF);
LABEL_24:
  if (*(v21 + 16))
  {
    swift_beginAccess();
    sub_182087194(v21);
    swift_endAccess();

    swift_beginAccess();
    v11[3] = 0;
  }

  v36 = *(a1 + 16);
  if (v20 != v36)
  {
    v37 = (a1 + 32 * v20 + 56);
    while (v20 < v36)
    {
      v38 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_33;
      }

      v39 = *(v37 - 1);
      v40 = *v37;
      v50 = *(v37 - 3);
      v51 = v39;
      v52 = v40;

      a2(v46, &v50);

      sub_181CA21B0(v46);

      ++v20;
      v37 += 4;
      if (v38 == v36)
      {
        return result;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

uint64_t sub_182085EC4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_181DAEBE0();

    *v5 = v10;
  }

  v11 = *(*v10 + 152);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
  v11(v35, sub_181D0482C, v10, v12);
  v13 = v35[0];
  if (*(v35[0] + 16) && (v14 = sub_181CA266C(a4, a5), (v15 & 1) != 0))
  {
    LODWORD(v16) = *(*(v13 + 56) + 4 * v14);
  }

  else
  {
    LODWORD(v16) = 0xFFFF;
  }

  v18 = *a1;
  v17 = *(a1 + 1);
  v19 = *(a1 + 2);
  v20 = *(a1 + 3);
  v34 = a1[32];
  v21 = *(a1 + 5);
  v33 = *(a1 + 6);
  if (v16 == 0xFFFF)
  {
    sub_181AB5D28(a1, v35, &qword_1EA839C18);
    a1 = MEMORY[0x1E69E7CC0];
    v22 = v21;
    v24 = v33;
    v23 = v34;
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v32 = *(a1 + 3);
    swift_beginAccess();
    v26 = v10[2];
    sub_181AB5D28(a1, v35, &qword_1EA839C18);
    sub_181AB5D28(a1, v35, &qword_1EA839C18);
    result = swift_isUniquelyReferenced_nonNull_native();
    v10[2] = v26;
    v27 = v18;
    if ((result & 1) == 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v28 = v16;
      if (v26[2] <= v16)
      {
        __break(1u);
        return result;
      }

      v29 = &v26[8 * v16];
      v16 = v29[10];
      v29[4] = v27;
      v29[5] = v17;
      v29[6] = v19;
      v29[7] = v32;
      *(v29 + 64) = v34;
      v29[9] = v21;
      v29[10] = v33;
      v10[2] = v26;
      swift_endAccess();

      sub_181F49A88(a1, &qword_1EA839C18);
      v30 = v10[2];
      if (*(v30 + 16) > v28)
      {
        break;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      result = sub_182083520(v26);
      v26 = result;
      v10[2] = result;
    }

    a1 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v28 = *(v30 + (v28 << 6) + 88);
      if (v28 == 0xFFFF)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_181F5A904(0, *(a1 + 2) + 1, 1, a1);
      }

      v17 = *(a1 + 2);
      v31 = *(a1 + 3);
      v26 = (v17 + 1);
      if (v17 >= v31 >> 1)
      {
        a1 = sub_181F5A904((v31 > 1), v17 + 1, 1, a1);
      }

      *(a1 + 2) = v26;
      *&a1[8 * v17 + 32] = v28;
      v30 = v10[2];
      if (*(v30 + 16) <= v28)
      {
        goto LABEL_26;
      }
    }

    v18 = 0;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v23 = 0;
    v22 = 0;
    v24 = 0;
    if (*(a1 + 2))
    {
LABEL_9:
      swift_beginAccess();
      sub_182087194(a1);
      swift_endAccess();

      swift_beginAccess();
      v10[3] = 0;

      if (!v17)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  if (v17)
  {
LABEL_10:
    v35[0] = v18;
    v35[1] = v17;
    v35[2] = v19;
    v35[3] = v20;
    v36 = v23;
    v37 = v22;
    v38 = v24;
    sub_181CA21B0(v35);
    return sub_181D04D28(v18, v17);
  }

  return result;
}

uint64_t sub_182086294(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_181DAEBE0();

    *v7 = v11;
  }

  v12 = *(*v11 + 152);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
  v12(v44, sub_181D0482C, v11, v13);
  v14 = v44[0];
  if (!*(v44[0] + 16) || (v15 = sub_181CA266C(a6, a7), (v16 & 1) == 0))
  {

    goto LABEL_23;
  }

  v17 = *(*(v14 + 56) + 4 * v15);

  if (v17 == 0xFFFF)
  {
LABEL_23:
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v18 = *(a1 + 16);
  result = swift_beginAccess();
  v20 = 0;
  v40 = a1 + 32;
  v21 = MEMORY[0x1E69E7CC0];
  v39 = v18;
  do
  {
    if (v20 == v18)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_181F5A904(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_181F5A904((v22 > 1), v23 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v23 + 1;
      *(v21 + 8 * v23 + 32) = v17;
      v20 = v18;
    }

    else
    {
      if (v20 >= v18)
      {
        goto LABEL_35;
      }

      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_36;
      }

      v25 = *(v40 + 16 * v20 + 8);
      v49[0] = *(v40 + 16 * v20);
      v49[1] = v25;

      a2(v44, v49);

      v26 = v44[0];
      v27 = v44[1];
      v29 = v44[2];
      v28 = v44[3];
      v42 = v45;
      v30 = v47;
      v41 = v46;
      swift_beginAccess();
      v31 = v11[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      v11[2] = v31;
      if ((result & 1) == 0)
      {
        result = sub_182083520(v31);
        v31 = result;
        v11[2] = result;
      }

      if (v31[2] <= v17)
      {
        goto LABEL_37;
      }

      v32 = &v31[8 * v17];
      v32[4] = v26;
      v32[5] = v27;
      v32[6] = v29;
      v32[7] = v28;
      *(v32 + 64) = v42;
      v32[9] = v41;
      v32[10] = v30;
      v11[2] = v31;
      swift_endAccess();

      v20 = v24;
      v18 = v39;
    }

    v33 = v11[2];
    if (*(v33 + 16) <= v17)
    {
      goto LABEL_34;
    }

    v17 = *(v33 + (v17 << 6) + 88);
  }

  while (v17 != 0xFFFF);
LABEL_24:
  if (*(v21 + 16))
  {
    swift_beginAccess();
    sub_182087194(v21);
    swift_endAccess();

    swift_beginAccess();
    v11[3] = 0;
  }

  v34 = *(a1 + 16);
  if (v20 != v34)
  {
    v35 = (a1 + 16 * v20 + 40);
    while (v20 < v34)
    {
      v36 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_33;
      }

      v37 = *v35;
      v48[0] = *(v35 - 1);
      v48[1] = v37;

      a2(v44, v48);

      sub_181CA21B0(v44);

      ++v20;
      v35 += 2;
      if (v36 == v34)
      {
        return result;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

void (*HTTPFields.subscript.modify(uint64_t **a1, uint64_t *a2))(unint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = a2[1];
  v5[2] = v2;
  v5[3] = v7;
  v9 = a2[2];
  v10 = a2[3];
  v5[4] = v8;
  v5[5] = v9;
  v5[6] = v10;
  v11 = *v2;
  v16[3] = v10;
  v16[4] = v11;
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v12 = HTTPFields.subscript.getter(v16);
  v14 = v13;

  *v6 = v12;
  v6[1] = v14;
  return sub_1820867E8;
}

void sub_1820867E8(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[5];
  v5 = (*a1)[6];
  v7 = (*a1)[4];
  v8[0] = (*a1)[3];
  v8[1] = v7;
  v8[2] = v6;
  v8[3] = v5;
  if (a2)
  {

    HTTPFields.subscript.setter(v3, v4, v8);
  }

  else
  {
    HTTPFields.subscript.setter(v3, v4, v8);
  }

  free(v2);
}

uint64_t sub_182086884@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v12 = a2[3];
  v13 = v4;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v11 = v7;

  v8 = HTTPFields.subscript.getter(&v10);

  *a3 = v8;
  return result;
}

uint64_t sub_182086900(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;

  sub_182086294(v7, sub_18208CAA0, v8, v3, v4, v5, v6);
}

uint64_t HTTPFields.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v6;

  sub_182086294(a1, sub_18208C31C, v7, v3, v4, v5, v6);
}

{
  sub_181CA1D20(a1, *a2, a2[1], a2[2], a2[3]);
}

uint64_t sub_182086A94@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  *(a6 + 32) = 0;
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  if (sub_181CA4798(v8, v7))
  {
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
    sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8);
    sub_182AD30A8();
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = sub_181CA1930(v8, v7);
  v11 = v10;

  *(a6 + 40) = v9;
  *(a6 + 48) = v11;
  return result;
}

void (*HTTPFields.subscript.modify(unint64_t **a1, unint64_t *a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = a2[1];
  v5[1] = v2;
  v5[2] = v7;
  v9 = a2[2];
  v10 = a2[3];
  v5[3] = v8;
  v5[4] = v9;
  v5[5] = v10;
  v11 = *v2;
  v16 = v10;
  v17 = v11;
  *&v14 = v7;
  *(&v14 + 1) = v8;
  v15 = v9;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v12 = HTTPFields.subscript.getter(&v14);

  *v6 = v12;
  return sub_182086CA4;
}

void sub_182086CA4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = v5;
    v8[4] = v4;
    v8[5] = v3;

    sub_182086294(v9, sub_18208CAA0, v8, v6, v5, v4, v3);
  }

  else
  {
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v5;
    v10[4] = v4;
    v10[5] = v3;

    sub_182086294(v7, sub_18208CAA0, v10, v6, v5, v4, v3);
  }

  free(v2);
}

uint64_t sub_182086E0C@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 2);
  v14 = *(a2 + 3);
  v15 = v4;
  v12 = v5;
  v13 = v6;
  sub_181DE0CB8(&v12);
  v8 = v7;

  v10 = sub_181DE90B8(v9, v8);

  *a3 = v10;
  return result;
}

void (*HTTPFields.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *a2;
  v7 = a2[1];
  v6[1] = v2;
  v6[2] = v8;
  v9 = a2[2];
  v10 = a2[3];
  v6[3] = v7;
  v6[4] = v9;
  v6[5] = v10;
  v11 = *v2;
  v16[3] = v10;
  v16[4] = v11;
  v16[0] = v8;
  v16[1] = v7;
  v16[2] = v9;

  sub_181DE0CB8(v16);
  LOWORD(v10) = v12;

  v14 = sub_181DE90B8(v13, v10);

  *v6 = v14;
  return sub_182086FC0;
}

void sub_182086FC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {

    sub_181CA1D20(v8, v6, v5, v4, v3);
  }

  else
  {
    sub_181CA1D20(v7, v6, v5, v4, v3);
  }

  free(v2);
}

uint64_t sub_182087084@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  if (v2 == 0xFFFF)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else if (*(*v1 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *v1 + (v2 << 6);
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = *(v3 + 72);
    v10 = *(v3 + 80);
    v1[4] = *(v3 + 88);
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
  }

  return result;
}

void sub_182087138(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t sub_18208714C()
{
  v1 = sub_181DE90B8(*v0, *(v0 + 8));

  return v1;
}

uint64_t sub_182087194(uint64_t result)
{
  v2 = result;
  v3 = *(result + 16);
  v4 = v3 == 0;
  if (v3)
  {
    v5 = *(result + 32);
    v6 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v39 = *v1;
  v7 = *(*v1 + 16);
  if (!v7)
  {
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_42:
    result = sub_182083520(v39);
    v39 = result;
  }

  v8 = 0;
  v9 = 0;
  v10 = v2 + 32;
  v11 = v39 + 4;
  v38 = v7;
  v37 = v2 + 32;
  while (1)
  {
    if (v9 == v7)
    {
      goto LABEL_38;
    }

    if (!v4)
    {
      v18 = v3 + 1 + v8 - v6;
      while (1)
      {
        v19 = v9 + v8;
        if (__OFADD__(v9, v8))
        {
          break;
        }

        v4 = v19 == v5;
        if (v19 != v5)
        {
          goto LABEL_22;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_35;
        }

        if (v3 == v6)
        {
          v5 = 0;
          v8 = v18;
          v6 = v3;
          goto LABEL_22;
        }

        if (v6 >= v3)
        {
          goto LABEL_36;
        }

        v5 = *(v10 + 8 * v6);
        ++v8;
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v4 = 1;
LABEL_22:
    v2 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_39;
    }

    v21 = v39[2];
    if (v2 >= v21)
    {
      goto LABEL_29;
    }

    if (v9 != v2)
    {
      break;
    }

LABEL_8:
    if (++v9 == v7)
    {
      goto LABEL_29;
    }
  }

  if (v9 >= v21)
  {
    goto LABEL_40;
  }

  v22 = &v11[8 * v9];
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  *(v42 + 10) = *(v22 + 42);
  v41 = v24;
  v42[0] = v25;
  v40 = v23;
  if (v2 < 0)
  {
    goto LABEL_41;
  }

  v26 = &v11[8 * v2];
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  *&v45[10] = *(v26 + 42);
  v44 = v28;
  *v45 = v29;
  v43 = v27;
  sub_181AB5D28(&v40, v48, &qword_1EA839C10);
  sub_181AB5D28(&v43, v48, &qword_1EA839C10);
  v30 = *v22;
  v31 = v22[1];
  v32 = v22[2];
  *(v47 + 10) = *(v22 + 42);
  v46[1] = v31;
  v47[0] = v32;
  v46[0] = v30;
  v33 = v43;
  v34 = v44;
  v35 = *v45;
  *(v22 + 42) = *&v45[10];
  v22[1] = v34;
  v22[2] = v35;
  *v22 = v33;
  result = sub_181F49A88(v46, &qword_1EA839C10);
  if (v2 < v39[2])
  {
    v12 = *v26;
    v13 = v26[1];
    v14 = v26[2];
    *(v49 + 10) = *(v26 + 42);
    v48[1] = v13;
    v49[0] = v14;
    v48[0] = v12;
    v15 = v40;
    v16 = v41;
    v17 = v42[0];
    *(v26 + 42) = *(v42 + 10);
    v26[1] = v16;
    v26[2] = v17;
    *v26 = v15;
    result = sub_181F49A88(v48, &qword_1EA839C10);
    v11 = v39 + 4;
    v7 = v38;
    v10 = v37;
    goto LABEL_8;
  }

  __break(1u);
LABEL_29:
  *v1 = v39;
  if (v8)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v36 = v39[2];
      result = v36 - v8;
      if (v36 >= v8)
      {
        return sub_181FCDA54(result, v36);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t HTTPFields.contains(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *v1;
  v5 = *(*v4 + 152);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
  v5(&v10, sub_181D04810, v4, v6);
  if (*(v10 + 16))
  {
    sub_181CA266C(v2, v3);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t HTTPFields.hash(into:)()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v5 += 64;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t HTTPFields.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v4 += 64;
      --v3;
    }

    while (v3);
  }

  return sub_182AD4558();
}

uint64_t sub_182087748()
{
  sub_182AD44E8();
  sub_182084F0C();
  return sub_182AD4558();
}

Swift::Void __swiftcall HTTPFields.reserveCapacity(_:)(Swift::Int a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_181DAEBE0();

    *v1 = v4;
  }

  v5 = sub_181CA261C();
  if (*v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
    sub_182AD2E78();
  }

  (v5)(&v10, 0);
  swift_beginAccess();
  v7 = *(v4 + 16);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v7;
  if (!v8 || a1 > v7[3] >> 1)
  {
    if (v7[2] <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = v7[2];
    }

    v7 = sub_181CA2688(v8, v9, 0, v7);
  }

  *(v4 + 16) = v7;
  swift_endAccess();
}

uint64_t HTTPFields.endIndex.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16);
}

BOOL HTTPFields.isEmpty.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16) == 0;
}

uint64_t HTTPFields.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *v2;
    result = swift_beginAccess();
    v6 = *(v5 + 16);
    if (*(v6 + 16) > v3)
    {
      v7 = v6 + (v3 << 6);
      v8 = *(v7 + 40);
      v9 = *(v7 + 48);
      v10 = *(v7 + 56);
      v11 = *(v7 + 64);
      v12 = *(v7 + 72);
      v13 = *(v7 + 80);
      *a2 = *(v7 + 32);
      *(a2 + 8) = v8;
      *(a2 + 16) = v9;
      *(a2 + 24) = v10;
      *(a2 + 32) = v11;
      *(a2 + 40) = v12;
      *(a2 + 48) = v13;
    }
  }

  __break(1u);
  return result;
}

double sub_1820879D8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v18 = v4;
  HTTPFields.subscript.getter(v5, &v12);
  result = *&v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = v17;
  *a3 = v12;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  return result;
}

uint64_t sub_182087A38(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;

  return HTTPFields.subscript.setter(v11, v3);
}

uint64_t HTTPFields.subscript.setter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = v3;
  v8 = a2;
  v11 = *a1;
  v2 = *(a1 + 8);
  v6 = *(a1 + 16);
  v4 = *(a1 + 24);
  v27 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = *(a1 + 48);
  v3 = *v3;
  swift_beginAccess();
  v12 = v3[2];
  if (*(v12 + 16) <= v8)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_182083520(v9);
    v9 = result;
    v3[2] = result;
    goto LABEL_25;
  }

  v25 = v11;
  v26 = v7;
  v7 = v8 << 6;
  v13 = v12 + (v8 << 6);
  v14 = *(v13 + 64);
  v15 = *(v13 + 72);
  v16 = *(v13 + 80);
  v17 = *(v13 + 48) == v6 && *(v13 + 56) == v4;
  if (v17 || (sub_182AD4268()) && v14 == v27)
  {
    v18 = v15 == v26 && v16 == v5;
    if (v18 || (sub_182AD4268() & 1) != 0)
    {
      goto LABEL_27;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_181DAEBE0();

    *v9 = v3;
  }

  v10 = v25;
  swift_beginAccess();
  v20 = v3[2];
  if (*(v20 + 16) <= v8)
  {
    goto LABEL_30;
  }

  v21 = v20 + v7;
  v22 = v6 == *(v21 + 48) && v4 == *(v21 + 56);
  if (!v22 && (sub_182AD4268() & 1) == 0)
  {
    result = sub_181CBD984(v25, v2);
    if ((result & 0x1FF) == 0x3A)
    {
      goto LABEL_33;
    }

    swift_beginAccess();
    v3[3] = 0;
  }

  swift_beginAccess();
  v9 = v3[2];

  result = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v9;
  if ((result & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  if (v9[2] > v8)
  {
    v24 = v9 + v7;
    *(v24 + 4) = v10;
    *(v24 + 5) = v2;
    *(v24 + 6) = v6;
    *(v24 + 7) = v4;
    v24[64] = v27;
    *(v24 + 9) = v26;
    *(v24 + 10) = v5;
    v3[2] = v9;
    swift_endAccess();

LABEL_27:
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void (*HTTPFields.subscript.modify(void (**a1)(uint64_t **a1, char a2), unint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x60uLL);
  }

  v6 = result;
  *a1 = result;
  *(result + 10) = a2;
  *(result + 11) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    result = swift_beginAccess();
    v8 = *(v7 + 16);
    if (*(v8 + 16) > a2)
    {
      v9 = v8 + (a2 << 6);
      v10 = *(v9 + 40);
      v11 = *(v9 + 48);
      v12 = *(v9 + 56);
      v13 = *(v9 + 64);
      v14 = *(v9 + 72);
      v15 = *(v9 + 80);
      *v6 = *(v9 + 32);
      *(v6 + 1) = v10;
      *(v6 + 2) = v11;
      *(v6 + 3) = v12;
      *(v6 + 32) = v13;
      *(v6 + 5) = v14;
      *(v6 + 6) = v15;

      return sub_182087E1C;
    }
  }

  __break(1u);
  return result;
}

void sub_182087E1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(v2 + 32);
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[10];
  v11[0] = v4;
  v11[1] = v3;
  v11[2] = v5;
  v11[3] = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  if (a2)
  {

    HTTPFields.subscript.setter(v11, v10);
  }

  else
  {
    HTTPFields.subscript.setter(v11, v10);
  }

  free(v2);
}

uint64_t HTTPFields.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a2;
  v34 = a3;
  v32 = a5;
  v9 = *(a5 + 8);
  v10 = sub_182AD3BE8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA839C10);
  v31 = sub_182AD3DF8();
  MEMORY[0x1EEE9AC00](v31);
  v30[2] = v30 - v14;
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = v30 - v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_181DAEBE0();

    *v6 = v21;
  }

  swift_beginAccess();
  if (*(*(v21 + 16) + 16) == a1)
  {
    (*(v15 + 16))(v18, v34, a4);
    sub_182AD3268();
    swift_getAssociatedConformanceWitness();
    sub_182AD3A08();
    v22 = v38;
    if (!v38)
    {
      return (*(v30[0] + 8))(v35, AssociatedTypeWitness);
    }

    v23 = v37;
    v24 = v39;
    v25 = v40;
    v27 = v41;
    v26 = v42;
    v28 = v43;
    while (1)
    {
      result = sub_181CBD984(v23, v22);
      if ((result & 0x1FF) == 0x3A)
      {
        break;
      }

      v37 = v23;
      v38 = v22;
      v39 = v24;
      v40 = v25;
      LOBYTE(v41) = v27;
      v42 = v26;
      v43 = v28;
      sub_181CA21B0(&v37);
      sub_181D04D28(v23, v22);
      sub_182AD3A08();
      v23 = v37;
      v22 = v38;
      v24 = v39;
      v25 = v40;
      v27 = v41;
      v26 = v42;
      v28 = v43;
      if (!v38)
      {
        return (*(v30[0] + 8))(v35, AssociatedTypeWitness);
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  *(v21 + 24) = 0;

  MEMORY[0x1865D9E50](a4, v9);
  swift_getWitnessTable();
  sub_182AD3F28();
  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FE0);
  v44 = v32;
  swift_getWitnessTable();
  sub_182AD33F8();
  result = swift_endAccess();
  if (*(*(v21 + 16) + 16) > 0xFFFEuLL)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1820883E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  result = sub_181CBD984(*a1, v3);
  if ((result & 0x1FF) == 0x3A)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v6;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    *(a2 + 40) = v9;
    *(a2 + 48) = v8;
    *(a2 + 56) = 0;
  }

  return result;
}

void *sub_182088484@<X0>(void *a1@<X8>)
{
  result = sub_181C9FCB4();
  *a1 = result;
  return result;
}

uint64_t sub_1820884AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HTTPFields.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t sub_182088530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_18208856C(v5, a2, a3);
}

uint64_t sub_18208856C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_181C9FCB4();
  v7 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v25 = a3;
      v26 = a2;
      v8 = 0;
      v10 = *a1;
      v9 = *(a1 + 8);
      v11 = *(a1 + 16);
      v12 = *(a1 + 24);
      v29 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v27 = v11;
      v28 = v13;
      while (!__OFADD__(v8, 1))
      {
        v30 = v8 + 1;
        swift_beginAccess();
        v21 = *(*(v7 + 16) + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_181DAEBE0();

          v7 = v22;
        }

        swift_beginAccess();
        if (v21 == *(*(v7 + 16) + 16))
        {
          result = sub_181CBD984(v10, v9);
          if ((result & 0x1FF) == 0x3A)
          {
            goto LABEL_23;
          }

          *&v38 = v10;
          *(&v38 + 1) = v9;
          *&v39 = v27;
          *(&v39 + 1) = v12;
          v40[0] = v29;
          *&v40[8] = v28;
          *&v40[16] = v14;

          sub_181CA21B0(&v38);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          result = swift_bridgeObjectRelease_n();
        }

        else
        {
          swift_beginAccess();
          *(v7 + 24) = 0;

          result = swift_beginAccess();
          v15 = *(v7 + 16);
          v23 = v15[2];
          if (v23 < v21)
          {
            goto LABEL_21;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 16) = v15;
          if (!isUniquelyReferenced_nonNull_native || v23 >= v15[3] >> 1)
          {
            v15 = sub_181CA2688(isUniquelyReferenced_nonNull_native, v23 + 1, 1, v15);
            *(v7 + 16) = v15;
          }

          v16 = &v15[8 * v21];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
          swift_arrayDestroy();
          memmove(v16 + 6, v16 + 2, (v15[2] - v21) << 6);
          ++v15[2];
          *&v38 = v10;
          *(&v38 + 1) = v9;
          *&v39 = v27;
          *(&v39 + 1) = v12;
          v40[0] = v29;
          *&v40[8] = v28;
          *&v40[16] = v14;

          sub_1820883E8(&v38, &v32);

          v35 = v32;
          v36 = v33;
          v37[0] = v34[0];
          *(v37 + 10) = *(v34 + 10);
          v38 = v32;
          v39 = v33;
          *v40 = v34[0];
          *&v40[10] = *(v34 + 10);
          sub_181AB5D28(&v35, v31, &qword_1EA839C10);
          sub_181F49A88(&v38, &qword_1EA839C10);
          v17 = v35;
          v18 = v36;
          v19 = v37[0];
          *(v16 + 74) = *(v37 + 10);
          v16[3] = v18;
          v16[4] = v19;
          v16[2] = v17;

          *(v7 + 16) = v15;
          swift_endAccess();
          v20 = v15[2];

          a2 = v26;
          if (v20 > 0xFFFE)
          {
            goto LABEL_22;
          }
        }

        ++v8;
        if (v30 == a2)
        {

          a3 = v25;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    result = sub_181CA27BC(a1);
LABEL_19:
    *a3 = v7;
  }

  return result;
}

uint64_t sub_182088968(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = a1[5];
  v7 = a1[6];
  v9 = *v1;
  swift_beginAccess();
  v10 = *(*(v9 + 16) + 16);
  v12[0] = v3;
  v12[1] = v2;
  v12[2] = v5;
  v12[3] = v4;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  sub_181DAE9E4(v10, v10, v12);
}

uint64_t sub_182088A28(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_181DAE9E4(v9, v9, v11);
}

uint64_t sub_182088AC8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 > a1)
  {
    v9 = v7 + (a1 << 6);
    v10 = *(v9 + 40);
    v11 = *(v9 + 48);
    v12 = *(v9 + 56);
    v13 = *(v9 + 64);
    v14 = *(v9 + 72);
    v15 = *(v9 + 80);
    *a2 = *(v9 + 32);
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
    *(a2 + 48) = v15;

    return sub_182088BA4(a1, a1 + 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_182088BA4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_181DAEBE0();

    *v2 = v6;
  }

  result = swift_beginAccess();
  if (*(*(v6 + 16) + 16) != a1)
  {
    swift_beginAccess();
    *(v6 + 24) = 0;

    swift_beginAccess();
    sub_181FCC88C(a1, a2);
    result = swift_endAccess();
    if (*(*(v6 + 16) + 16) > 0xFFFEuLL)
    {
      __break(1u);
    }
  }

  return result;
}

double sub_182088CAC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_182088CC8(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      swift_beginAccess();
      result = sub_182084898(0, v2, *(*(v3 + 16) + 16), *v1);
      if (v4)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        return sub_182088BA4(0, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void *sub_182088D54(char a1)
{
  v2 = *v1;
  if (a1)
  {
    swift_beginAccess();
    return sub_182088BA4(0, *(*(v2 + 16) + 16));
  }

  else
  {

    result = sub_181C9FCB4();
    *v1 = result;
  }

  return result;
}

uint64_t sub_182088DB8(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  result = sub_18208A848(a1, a2);
  if (!v3)
  {
    v5 = *v2;
    v6 = result;
    result = swift_beginAccess();
    v7 = *(*(v5 + 16) + 16);
    if (v7 < v6)
    {
      __break(1u);
    }

    else
    {
      return sub_182088BA4(v6, v7);
    }
  }

  return result;
}

uint64_t (*sub_182088E34(uint64_t *a1, unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = HTTPFields.subscript.modify(v4, *a2);
  return sub_18208CAB8;
}

uint64_t sub_182088EAC(uint64_t a1, uint64_t a2)
{
  sub_18208A3AC(v2, *a2, *(a2 + 8), *a1, *(a1 + 8), *(a1 + 16));
}

uint64_t (*sub_182088EF8(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_182088FBC(v4, *a2, a2[1]);
  return sub_182088F70;
}

void sub_182088F74(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_182088FBC(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xB0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[19] = a3;
  v7[20] = v3;
  v7[18] = a2;
  v9 = *v3;
  v7[21] = v9;
  result = swift_beginAccess();
  if (a2 < 0 || *(*(v9 + 16) + 16) < a3)
  {
    __break(1u);
  }

  else
  {
    v8[1] = a3;
    v8[2] = v9;
    *v8 = a2;

    return sub_182089088;
  }

  return result;
}

void sub_182089088(unint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[21];
  v7 = (*a1)[19];
  if (a2)
  {
    if (*(*(v6 + 16) + 16) >= v7)
    {
      v8 = v3[2];
      v2 = v3[18];

      if (v2 == v7)
      {
        v9 = v4;
LABEL_36:

        if (v9 == v5)
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }

LABEL_25:
      if (v5 <= v4)
      {
        v26 = v4;
      }

      else
      {
        v26 = v5;
      }

      v39 = v26;
      v27 = (v4 << 6) + 80;
      v9 = v4;
      while (v5 != v9)
      {
        if (v39 == v9)
        {
          goto LABEL_41;
        }

        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        swift_beginAccess();
        v28 = *(v8 + 16);
        if (v9 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v29 = v3[20];
        v30 = (v28 + v27);
        v31 = *(v30 - 5);
        v32 = *(v30 - 4);
        v33 = *(v30 - 3);
        v34 = *(v30 - 16);
        v35 = *(v30 - 1);
        v36 = *v30;
        v40 = *(v30 - 6);
        v41 = v31;
        v42 = v32;
        v43 = v33;
        v44 = v34;
        v45 = v35;
        v46 = v36;

        HTTPFields.subscript.setter(&v40, v2);
        v37 = *v29;
        swift_beginAccess();
        if (v2 >= *(*(v37 + 16) + 16))
        {
          goto LABEL_47;
        }

        if (v9 >= *(*(v8 + 16) + 16))
        {
          goto LABEL_49;
        }

        ++v2;
        ++v9;
        v27 += 64;
        if (v2 == v3[19])
        {
          goto LABEL_36;
        }
      }

      goto LABEL_54;
    }

    goto LABEL_50;
  }

  if (*(*(v6 + 16) + 16) < v7)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = v3[18];
  v10 = v3[2];
  swift_beginAccess();
  v11 = v4 == v5;
  v12 = v8 == v7;
  v13 = v8 == v7 || v4 == v5;
  if (!v13)
  {
    v8 = v3[18];
    if (v5 <= v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = v5;
    }

    v38 = v14;
    v15 = (v4 << 6) + 80;
    --v5;
    v16 = v4;
    while (v38 != v4)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v17 = *(v10 + 16);
      if (v4 >= *(v17 + 16))
      {
        goto LABEL_44;
      }

      v18 = v3[20];
      v19 = (v17 + v15);
      v20 = *(v19 - 5);
      v21 = *(v19 - 4);
      v2 = *(v19 - 3);
      v22 = *(v19 - 16);
      v23 = *(v19 - 1);
      v24 = *v19;
      v40 = *(v19 - 6);
      v41 = v20;
      v42 = v21;
      v43 = v2;
      v44 = v22;
      v45 = v23;
      v46 = v24;

      HTTPFields.subscript.setter(&v40, v8);
      v25 = *v18;
      swift_beginAccess();
      if (v8 >= *(*(v25 + 16) + 16))
      {
        goto LABEL_46;
      }

      if (v4 >= *(*(v10 + 16) + 16))
      {
        goto LABEL_48;
      }

      ++v8;
      v11 = v5 == v4;
      v12 = v8 == v3[19];
      if (v8 != v3[19])
      {
        v15 += 64;
        v13 = v5 == v4++;
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_22:
  if (!v12)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:

    __break(1u);
    return;
  }

  if (!v11)
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_37:

  free(v3);
}

uint64_t sub_1820893AC@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_18208B3F4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_18208942C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(*(v3 + 16) + 16);
  return result;
}

void (*sub_182089478(uint64_t *a1, uint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  *a1 = v4;
  HTTPFields.subscript.getter(*a2, v4);
  return sub_1820894F4;
}

void sub_1820894F4(void **a1)
{
  v1 = *a1;

  free(v1);
}

uint64_t sub_182089550@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  result = swift_beginAccess();
  if (v4 < 0 || *(*(v6 + 16) + 16) < v5)
  {
    __break(1u);
  }

  else
  {
    a2[1] = v5;
    a2[2] = v6;
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1820895C4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(*(v3 + 16) + 16);
  *a1 = 0;
  a1[1] = v5;
  return result;
}

BOOL sub_182089610()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16) == 0;
}

uint64_t *sub_18208965C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_182089678(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_182089694(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1820896B0@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = swift_beginAccess();
  if (v4 >= *(*(v5 + 16) + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

uint64_t sub_182089718(unint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = swift_beginAccess();
  if (v4 >= *(*(v3 + 16) + 16))
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

void *sub_182089780@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *v2;
    result = swift_beginAccess();
    if (v4 < *(*(v5 + 16) + 16))
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1820897F0(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *v1;
    result = swift_beginAccess();
    if (v2 < *(*(v4 + 16) + 16))
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_182089860@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    result = swift_beginAccess();
    if (v5 <= *(*(v6 + 16) + 16))
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1820898D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_182084898(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_18208990C(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(*(v5 + 16) + 16);
  if (v3 <= v7)
  {
    v8 = v4 >= v7;
    v9 = v4 == v7;
  }

  else
  {
    v8 = 1;
    v9 = 0;
  }

  if (v9 || !v8)
  {
    return v4 - v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_182089980()
{
  v1 = sub_1822D061C(*v0);

  return v1;
}

uint64_t HTTPFields.debugDescription.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
  v4 = MEMORY[0x1865D9F40](v2, v3);

  return v4;
}

uint64_t sub_182089A48()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
  v4 = MEMORY[0x1865D9F40](v2, v3);

  return v4;
}

uint64_t HTTPFields.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4608();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_18208C328();
  sub_18208C37C();
  sub_182AD41F8();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t HTTPFields.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_181C9FCB4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45B8();
  if (v2)
  {
  }

  else
  {
    v55 = v5;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v6 = sub_182AD41C8();
    if ((v7 & 1) == 0)
    {
      v8 = v6;
      v9 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_181DAEBE0();
      }

      v55 = v9;
      v10 = sub_181CA261C();
      if (*v11)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
        sub_182AD2E78();
      }

      (v10)(&v50, 0);
      v12 = v55;
      swift_beginAccess();
      v13 = v12[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12[2] = v13;
      if (!isUniquelyReferenced_nonNull_native || v8 > v13[3] >> 1)
      {
        if (v13[2] <= v8)
        {
          v15 = v8;
        }

        else
        {
          v15 = v13[2];
        }

        v13 = sub_181CA2688(isUniquelyReferenced_nonNull_native, v15, 0, v13);
      }

      v55[2] = v13;
      swift_endAccess();
    }

    __swift_project_boxed_opaque_existential_1(v53, v54);
    if (sub_182AD41E8())
    {
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v53);
      *a2 = v55;
    }

    else
    {
      v39 = a2;
      v38 = a1;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
        sub_18208C3D0();
        sub_182AD41D8();
        v23 = v50;
        v24 = v51;
        v25 = v52[0];
        v26 = *&v52[16];
        v40 = *&v52[8];
        v41 = *(&v51 + 1);
        v27 = sub_181CBD984(v50, *(&v50 + 1));
        v28 = v55;
        if ((v27 & 0x1FF) == 0x3A)
        {
          break;
        }

        v42 = v26;
        swift_beginAccess();
        v29 = *(*(v28 + 16) + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = a1;
          v31 = sub_181DAEBE0();

          v28 = v31;
          a1 = v30;
          a2 = v39;
        }

        swift_beginAccess();
        v32 = *(*(v28 + 16) + 16);
        v55 = v28;
        if (v29 == v32)
        {
          result = sub_181CBD984(v23, *(&v23 + 1));
          if ((result & 0x1FF) == 0x3A)
          {
            goto LABEL_40;
          }

          v50 = v23;
          *&v51 = v24;
          *(&v51 + 1) = v41;
          v52[0] = v25;
          *&v52[8] = v40;
          *&v52[16] = v42;

          sub_181CA21B0(&v50);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        else
        {
          swift_beginAccess();
          *(v28 + 24) = 0;

          result = swift_beginAccess();
          v16 = *(v28 + 16);
          v33 = v16[2];
          if (v33 < v29)
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            return result;
          }

          v34 = swift_isUniquelyReferenced_nonNull_native();
          *(v28 + 16) = v16;
          if (!v34 || v33 >= v16[3] >> 1)
          {
            v16 = sub_181CA2688(v34, v33 + 1, 1, v16);
            v55[2] = v16;
          }

          v17 = &v16[8 * v29];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
          swift_arrayDestroy();
          memmove(v17 + 6, v17 + 2, (v16[2] - v29) << 6);
          ++v16[2];
          v50 = v23;
          *&v51 = v24;
          *(&v51 + 1) = v41;
          v52[0] = v25;
          *&v52[8] = v40;
          *&v52[16] = v42;

          sub_1820883E8(&v50, &v44);

          v47 = v44;
          v48 = v45;
          v49[0] = v46[0];
          *(v49 + 10) = *(v46 + 10);
          v50 = v44;
          v51 = v45;
          *v52 = v46[0];
          *&v52[10] = *(v46 + 10);
          sub_181AB5D28(&v47, v43, &qword_1EA839C10);
          sub_181F49A88(&v50, &qword_1EA839C10);
          v18 = v47;
          v19 = v48;
          v20 = v49[0];
          *(v17 + 74) = *(v49 + 10);
          v17[3] = v19;
          v17[4] = v20;
          v17[2] = v18;

          v55[2] = v16;
          swift_endAccess();
          v21 = v16[2];

          a1 = v38;
          a2 = v39;
          if (v21 > 0xFFFE)
          {
            goto LABEL_39;
          }
        }

        __swift_project_boxed_opaque_existential_1(v53, v54);
        if (sub_182AD41E8())
        {
          goto LABEL_16;
        }
      }

      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v50 = 0xD000000000000015;
      *(&v50 + 1) = 0x8000000182BDCB30;
      v47 = v23;

      MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
      v35 = v40;
      if (sub_181CA4798(v40, v26))
      {

        v36 = v26;
      }

      else
      {
        v35 = sub_182287700(v40, v26);
        v36 = v37;
      }

      MEMORY[0x1865D9CA0](v35, v36);

      MEMORY[0x1865D9CA0](v47, *(&v47 + 1));

      MEMORY[0x1865D9CA0](0x6C6C617369642022, 0xEC0000006465776FLL);
      sub_182AD3C98();
      swift_allocError();
      sub_182AD3C68();

      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v53);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_18208A27C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4608();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_18208C328();
  sub_18208C37C();
  sub_182AD41F8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_18208A330(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_182AD31D8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1865D9D10](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_18208A3AC(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  result = swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0 || *(*(v12 + 16) + 16) < a3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = a4 == a5;
  v15 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v16 = (a4 << 6) + 80;
    v17 = a5 - 1;
    v30 = a3 - 1;
    v18 = a4;
    while (v18 < a5)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      result = swift_beginAccess();
      v19 = *(a6 + 16);
      if (v18 >= *(v19 + 16))
      {
        goto LABEL_19;
      }

      v20 = a5;
      v21 = (v19 + v16);
      v22 = *(v21 - 5);
      v23 = *(v21 - 4);
      v24 = *(v21 - 3);
      v25 = *(v21 - 16);
      v26 = *(v21 - 1);
      v27 = *v21;
      v31[0] = *(v21 - 6);
      v31[1] = v22;
      v31[2] = v23;
      v31[3] = v24;
      v32 = v25;
      v33 = v26;
      v34 = v27;

      HTTPFields.subscript.setter(v31, a2);
      v28 = *a1;
      result = swift_beginAccess();
      if (a2 >= *(*(v28 + 16) + 16))
      {
        goto LABEL_20;
      }

      if (v18 >= *(*(a6 + 16) + 16))
      {
        goto LABEL_21;
      }

      a5 = v20;
      v14 = v17 == v18;
      v15 = v30 == a2;
      if (v30 != a2)
      {
        ++a2;
        v16 += 64;
        if (v17 != v18++)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_14:
  if (!v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v14)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

char *sub_18208A574()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_181F5A904(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_18208A5C0(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_181F5A904((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_18208A604(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 8 * result + 32) = a2;
  return result;
}

uint64_t sub_18208A61C(uint64_t result)
{
  v4 = *v1;
  v6 = (*v1 + 24);
  v5 = *v6;
  if (*v6)
  {
    v7 = result;
    for (i = 0; ; ++i)
    {
      if (i >= v5)
      {
        __break(1u);
        goto LABEL_37;
      }

      v9 = v4[4];
      if (i + v9 >= v4[2])
      {
        v10 = v4[2];
      }

      else
      {
        v10 = 0;
      }

      v26 = *&v4[2 * i + 5 + 2 * (v9 - v10)];
      sub_181B2C3E0(v26, *(&v26 + 1));
      v11 = v7(&v26);
      result = sub_181AAD084(v26, *(&v26 + 1));
      if (v2)
      {
        return v3;
      }

      v3 = i + 1;
      v5 = *v6;
      if (v11)
      {
        break;
      }

      if (v3 == v5)
      {
        return v3;
      }
    }

    if (v3 == v5)
    {
      return i;
    }

    v12 = i + 1;
    v3 = i;
    while (v12 < v5)
    {
      v13 = v4[4];
      if ((v12 + v13) >= v4[2])
      {
        v14 = v4[2];
      }

      else
      {
        v14 = 0;
      }

      v26 = *&v4[2 * v12 + 5 + 2 * (v13 - v14)];
      sub_181B2C3E0(v26, *(&v26 + 1));
      v15 = v7(&v26);
      result = sub_181AAD084(v26, *(&v26 + 1));
      if ((v15 & 1) == 0)
      {
        if (v3 < 0)
        {
          goto LABEL_38;
        }

        if (v3 >= *v6)
        {
          goto LABEL_39;
        }

        if (v12 >= *v6)
        {
          goto LABEL_40;
        }

        v16 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1820E5EE8();
        }

        v4 = *v16;
        v17 = *(*v16 + 32);
        v18 = *(*v16 + 16);
        if (v17 + v3 >= v18)
        {
          v19 = *(*v16 + 16);
        }

        else
        {
          v19 = 0;
        }

        v20 = v17 + v3 - v19;
        if ((v12 + v17) < v18)
        {
          v18 = 0;
        }

        v21 = v12 + v17 - v18;
        if (v21 != v20)
        {
          v22 = v4 + 5;
          v23 = 2 * v20;
          v24 = 2 * v21;
          v25 = *&v4[v23 + 5];
          *&v22[v23] = *&v4[v24 + 5];
          *&v22[v24] = v25;
        }

        ++v3;
      }

      ++v12;
      v6 = v4 + 3;
      v5 = v4[3];
      if (v12 == v5)
      {
        return v3;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_18208A848(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v4 = v3;
  v60 = a2;
  v6 = *v2;
  result = swift_beginAccess();
  v8 = *(v6 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 144;
    v11 = 1;
    while (1)
    {
      v12 = v11 - 1;
      if (v11 - 1 >= v9)
      {
        break;
      }

      v13 = v8 + v10;
      v14 = *(v13 - 104);
      v15 = *(v13 - 96);
      v16 = *(v13 - 88);
      v17 = *(v13 - 80);
      v18 = *(v13 - 72);
      v19 = *(v13 - 64);
      v53 = *(v13 - 112);
      v54 = v14;
      v55 = v15;
      v56 = v16;
      v57 = v17;
      v58 = v18;
      v59 = v19;

      v20 = a1(&v53);
      v9 = v54;

      if (v4)
      {
        return v9;
      }

      v8 = *(v6 + 16);
      v9 = *(v8 + 16);
      if (v20)
      {
        if (v12 < v9)
        {
          v9 = v11 - 1;
          while (1)
          {
            result = swift_beginAccess();
            v23 = *(v6 + 16);
            v24 = *(v23 + 16);
            if (v11 == v24)
            {
              return v9;
            }

            if (v11 >= v24)
            {
              goto LABEL_27;
            }

            v25 = (v23 + v10);
            v26 = *(v25 - 5);
            v27 = *(v25 - 4);
            v28 = *(v25 - 3);
            v29 = *(v25 - 16);
            v30 = *(v25 - 1);
            v31 = *v25;
            v53 = *(v25 - 6);
            v54 = v26;
            v55 = v27;
            v56 = v28;
            v57 = v29;
            v58 = v30;
            v59 = v31;

            v32 = a1(&v53);

            if ((v32 & 1) == 0)
            {
              if (v11 != v9)
              {
                if ((v9 & 0x8000000000000000) != 0)
                {
                  goto LABEL_30;
                }

                v33 = *(v6 + 16);
                v34 = *(v33 + 16);
                if (v9 >= v34)
                {
                  goto LABEL_31;
                }

                v35 = v33 + (v9 << 6);
                result = *(v35 + 40);
                v36 = *(v35 + 48);
                v37 = *(v35 + 56);
                v38 = *(v35 + 64);
                v39 = *(v35 + 72);
                v40 = *(v35 + 80);
                v53 = *(v35 + 32);
                v54 = result;
                v55 = v36;
                v56 = v37;
                v57 = v38;
                v58 = v39;
                v59 = v40;
                if (v11 >= v34)
                {
                  goto LABEL_32;
                }

                v41 = (v33 + v10);
                v42 = *(v41 - 5);
                v43 = *(v41 - 4);
                v44 = *(v41 - 3);
                v45 = *(v41 - 16);
                v46 = *(v41 - 1);
                v47 = *v41;
                v49[0] = *(v41 - 6);
                v49[1] = v42;
                v49[2] = v43;
                v49[3] = v44;
                v50 = v45;
                v51 = v46;
                v52 = v47;

                HTTPFields.subscript.setter(v49, v9);
                HTTPFields.subscript.setter(&v53, v11);
              }

              v6 = *v48;
              result = swift_beginAccess();
              if (v9 >= *(*(v6 + 16) + 16))
              {
                goto LABEL_29;
              }

              ++v9;
            }

            result = swift_beginAccess();
            v10 += 64;
            if (v11++ >= *(*(v6 + 16) + 16))
            {
              goto LABEL_28;
            }
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      if (v12 >= v9)
      {
        goto LABEL_26;
      }

      v10 += 64;
      if (v11++ == v9)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  return v9;
}

unint64_t sub_18208AB70(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1865DA790](v4, v1);
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_182AD3EB8();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = (2 * (v17 >> 3)) | 1;
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 8 * v20)
          {
            memmove(v15 + 4, v21, 8 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 8 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7++ = v9;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_18208AD64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v35 = *a1;
  v1 = v35;
  v36 = v2;
  v37 = *(a1 + 32);
  v3 = *(a1 + 56);
  v38 = *(a1 + 48);
  v4 = *(v35 + 16);
  result = sub_18206AE38(a1, v32);
  if (v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (v3 != v4)
    {
      v7 = 0;
      v12 = (v1 + 32 * v3 + 56);
      v13 = MEMORY[0x1E69E7CC0] + 32;
      v30 = v4;
      while (v3 < v4)
      {
        v14 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_32;
        }

        v15 = *(v12 - 2);
        v31 = *(v12 - 3);
        v16 = *(v12 - 1);
        v17 = *v12;
        if (v7)
        {

          v10 = __OFSUB__(v7--, 1);
          if (v10)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v18 = *(v6 + 3);
          if (((v18 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_33;
          }

          v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
          if (v19 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = v19;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838868);
          v21 = swift_allocObject();
          v22 = _swift_stdlib_malloc_size(v21);
          v23 = v22 - 32;
          if (v22 < 32)
          {
            v23 = v22 - 1;
          }

          v24 = v23 >> 5;
          *(v21 + 2) = v20;
          *(v21 + 3) = 2 * v24;
          v25 = v21 + 32;
          v26 = *(v6 + 3) >> 1;
          v27 = 32 * v26;
          v28 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;
          v13 = &v21[32 * v26 + 32];
          if (*(v6 + 2))
          {
            v29 = v6 + 32;
            if (v21 != v6 || v25 >= &v29[v27])
            {
              memmove(v25, v29, v27);
            }

            *(v6 + 2) = 0;
          }

          else
          {
          }

          v6 = v21;
          v4 = v30;
          v10 = __OFSUB__(v28, 1);
          v7 = v28 - 1;
          if (v10)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        *v13 = v31;
        *(v13 + 8) = v15;
        *(v13 + 16) = v16;
        *(v13 + 24) = v17;
        v13 += 32;
        v12 += 32;
        ++v3;
        if (v14 == v4)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v7 = 0;
LABEL_4:
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  v32[0] = v35;
  v32[1] = v36;
  v32[2] = v37;
  v33 = v38;
  v34 = v3;
  result = sub_18206AE94(v32);
  v8 = *(v6 + 3);
  if (v8 < 2)
  {
    return v6;
  }

  v9 = v8 >> 1;
  v10 = __OFSUB__(v9, v7);
  v11 = v9 - v7;
  if (!v10)
  {
    *(v6 + 2) = v11;
    return v6;
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_18208AFAC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = *(a1 + 56);
  *(&v23 + 1) = *a1;
  v21 = *(a1 + 24);
  v24 = *(a1 + 8);
  v25 = v21;
  *&v26 = v2;
  *(&v26 + 1) = 15;
  LOBYTE(v23) = 0;
  *&v27 = v1;
  *(&v27 + 1) = v3;

  result = sub_18208B658();
  v5 = MEMORY[0x1E69E7CC0];
  v6 = 0;
  if ((result & 0x100) == 0)
  {
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v6)
      {
        v8 = v5[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = result;
        v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
        v12 = swift_allocObject();
        v13 = 2 * _swift_stdlib_malloc_size(v12) - 64;
        v12[2] = v11;
        v12[3] = v13;
        v14 = (v12 + 4);
        v15 = v5[3] >> 1;
        if (v5[2])
        {
          if (v12 != v5 || v14 >= v5 + v15 + 32)
          {
            memmove(v12 + 4, v5 + 4, v15);
          }

          v5[2] = 0;
        }

        v7 = (v14 + v15);
        v6 = (v13 >> 1) - v15;

        v5 = v12;
        result = v9;
      }

      v17 = __OFSUB__(v6--, 1);
      if (v17)
      {
        break;
      }

      *v7++ = result;
      result = sub_18208B658();
      if ((result & 0x100) != 0)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v22[2] = v25;
  v22[3] = v26;
  v22[4] = v27;
  v22[0] = v23;
  v22[1] = v24;
  result = sub_181F49A88(v22, &qword_1EA83A078);
  v18 = v5[3];
  if (v18 < 2)
  {
    return v5;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v6);
  v20 = v19 - v6;
  if (!v17)
  {
    v5[2] = v20;
    return v5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_18208B190(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v2 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      goto LABEL_6;
    }

LABEL_11:
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v2 = sub_182AD3168();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v2 <= 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
    v3 = swift_allocObject();
    v4 = _swift_stdlib_malloc_size(v3);
    v3[2] = v2;
    v3[3] = 2 * v4 - 64;
  }

LABEL_12:
  v5 = v3[3];

  if (v2 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = v3 + 4;
  v8 = v5 >> 1;
  if (v2)
  {
    v8 -= v2;

    while (1)
    {
      result = sub_1820AD8B0();
      if ((result & 0x100) != 0)
      {
        goto LABEL_44;
      }

      *v7++ = result;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:
  result = sub_1820AD8B0();
  if ((result & 0x100) == 0)
  {
    while (1)
    {
      if (!v8)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_41;
        }

        v10 = result;
        v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
        v13 = swift_allocObject();
        v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
        v13[2] = v12;
        v13[3] = v14;
        v15 = (v13 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          if (v13 != v3 || v15 >= v3 + v16 + 32)
          {
            memmove(v13 + 4, v3 + 4, v16);
          }

          v3[2] = 0;
        }

        v7 = (v15 + v16);
        v8 = (v14 >> 1) - v16;

        v3 = v13;
        result = v10;
      }

      v18 = __OFSUB__(v8--, 1);
      if (v18)
      {
        break;
      }

      *v7++ = result;
      result = sub_1820AD8B0();
      if ((result & 0x100) != 0)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_36:

  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v8);
  v21 = v20 - v8;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_18208B3F4(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v4 = v3;
  v39 = a2;
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(*(v5 + 16) + 16);
  if (v7)
  {
    v30 = v2;
    v8 = 0;
LABEL_3:
    v9 = (v8 << 6) + 80;
    v10 = v8;
    while (1)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      result = swift_beginAccess();
      v11 = *(v5 + 16);
      if (v10 >= *(v11 + 16))
      {
        goto LABEL_22;
      }

      v12 = (v11 + v9);
      v13 = *(v12 - 5);
      v14 = *(v12 - 4);
      v15 = *(v12 - 3);
      v16 = *(v12 - 16);
      v17 = *(v12 - 1);
      v18 = *v12;
      v32 = *(v12 - 6);
      v33 = v13;
      v34 = v14;
      v35 = v15;
      v36 = v16;
      v37 = v17;
      v38 = v18;

      v19 = a1(&v32);

      if (v4)
      {
        return v10;
      }

      if (v19)
      {
        break;
      }

      if (v10 >= *(*(v5 + 16) + 16))
      {
        goto LABEL_23;
      }

      ++v10;
      v9 += 64;
      if (v10 >= v7)
      {
        return v10;
      }
    }

    v20 = v7 << 6;
    while (1)
    {
      --v7;
      v21 = *(v5 + 16);
      if (v7 >= *(v21 + 16))
      {
        break;
      }

      if (v10 >= v7)
      {
        return v10;
      }

      v22 = (v21 + v20);
      v23 = *(v22 - 3);
      v24 = *(v22 - 2);
      v25 = *(v22 - 1);
      v26 = *v22;
      v27 = *(v22 + 1);
      v28 = *(v22 + 2);
      v32 = *(v22 - 4);
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      v38 = v28;

      v29 = a1(&v32);

      v20 -= 64;
      if ((v29 & 1) == 0)
      {
        sub_182084A98(v10, v7);
        v5 = *v30;
        result = swift_beginAccess();
        if (v10 >= *(*(v5 + 16) + 16))
        {
          goto LABEL_25;
        }

        v8 = v10 + 1;
        if ((v10 + 1) >= v7)
        {
          return ++v10;
        }

        goto LABEL_3;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_18208B658()
{
  v1 = v0;
  if (*v0 == 1)
  {
    v2 = *(v0 + 24);
    v33 = *(v0 + 8);
    v34 = v2;
    v35 = *(v0 + 40);
    v3 = sub_18208B9E8();
    v4 = *(v0 + 56);
    if (v4 >> 14 != v3 >> 14)
    {
      v5 = *(&v33 + 1);
      v6 = v33;
      v7 = v34;
      result = sub_18208B9E8();
      if (v4 >> 14 >= result >> 14)
      {
LABEL_58:
        __break(1u);
      }

      else
      {
        v9 = sub_18208BF44(v4, v33, *(&v33 + 1));
        *(v0 + 56) = v9;
        result = sub_18208BFE4(v9, v6, v5);
        v10 = (v6 >> 59) & 1;
        if ((v5 & 0x1000000000000000) == 0)
        {
          LOBYTE(v10) = 1;
        }

        if ((result & 0xC) != 4 << v10)
        {
LABEL_7:
          v11 = HIBYTE(v5) & 0xF;
          if ((v5 & 0x2000000000000000) == 0)
          {
            v11 = v6 & 0xFFFFFFFFFFFFLL;
          }

          v12 = result >> 16;
          if (result >> 16 >= v11)
          {
            __break(1u);
          }

          else if ((v5 & 0x1000000000000000) == 0)
          {
            if ((v5 & 0x2000000000000000) != 0)
            {
              v29 = v6;
              v30 = v5 & 0xFFFFFFFFFFFFFFLL;
              v14 = *(&v29 + v12);
            }

            else
            {
              if ((v6 & 0x1000000000000000) != 0)
              {
                v13 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
              }

              else
              {
                v13 = sub_182AD3CF8();
              }

              v14 = *(v13 + v12);
            }

            goto LABEL_51;
          }

          v14 = sub_182AD31C8();
LABEL_51:
          v32 = v14;
          v7(&v29, &v32);
          v28 = 0;
          v26 = v29;
          return v26 | (v28 << 8);
        }
      }

      result = sub_18208A330(result, v6, v5);
      goto LABEL_7;
    }

LABEL_53:
    v26 = 0;
    v28 = 1;
    return v26 | (v28 << 8);
  }

  v15 = *(v0 + 24);
  v33 = *(v0 + 8);
  v34 = v15;
  v35 = *(v0 + 40);
  v5 = *(&v33 + 1);
  v16 = v33;
  v6 = *(&v15 + 1);
  v7 = v15;
  v17 = sub_18208B9E8();
  v18 = *(v0 + 56);
  v19 = v18 >> 14;
  if (v18 >> 14 == v17 >> 14)
  {
    goto LABEL_53;
  }

  v20 = (v33 >> 59) & 1;
  if ((*(&v33 + 1) & 0x1000000000000000) == 0)
  {
    LOBYTE(v20) = 1;
  }

  v21 = 4 << v20;
  if ((*(&v33 + 1) & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(*(&v33 + 1)) & 0xFLL;
  }

  else
  {
    v22 = v33 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    result = sub_18208B9E8();
    if (v19 >= result >> 14)
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

    if ((v18 & 0xC) == v21)
    {
      result = sub_18208A330(v18, v16, v5);
      v18 = result;
      if ((v5 & 0x1000000000000000) == 0)
      {
LABEL_24:
        result = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_25;
      }
    }

    else if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

    if (v22 <= v18 >> 16)
    {
      break;
    }

    result = sub_182AD3178();
LABEL_25:
    *(v1 + 56) = result;
    if ((result & 0xC) == v21)
    {
      result = sub_18208A330(result, v16, v5);
      if (result < 0x4000)
      {
        goto LABEL_55;
      }
    }

    else if (result < 0x4000)
    {
      goto LABEL_55;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      if (v22 < result >> 16)
      {
        goto LABEL_57;
      }

      result = sub_182AD3188();
    }

    else
    {
      result = (result & 0xFFFFFFFFFFFF0000) - 65532;
    }

    if ((result & 0xC) == v21)
    {
      result = sub_18208A330(result, v16, v5);
    }

    v23 = result >> 16;
    if (result >> 16 >= v22)
    {
      goto LABEL_56;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v25 = sub_182AD31C8();
    }

    else if ((v5 & 0x2000000000000000) != 0)
    {
      v29 = v16;
      v30 = v5 & 0xFFFFFFFFFFFFFFLL;
      v25 = *(&v29 + v23);
    }

    else
    {
      v24 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v16 & 0x1000000000000000) == 0)
      {
        v24 = sub_182AD3CF8();
      }

      v25 = *(v24 + v23);
    }

    v31 = v25;
    v7(&v29, &v31);
    v26 = v29;
    v32 = v29;
    if (((*(v1 + 64))(&v32) & 1) == 0)
    {
      v28 = 0;
      *v1 = 1;
      return v26 | (v28 << 8);
    }

    v27 = sub_18208B9E8();
    v18 = *(v1 + 56);
    v19 = v18 >> 14;
    if (v18 >> 14 == v27 >> 14)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18208B9E8()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LODWORD(v4) = 1;
  }

  v5 = 11;
  if (v4)
  {
    v5 = 7;
  }

  v6 = v5 | (v3 << 16);
  if (!v3)
  {
    return v6;
  }

  v7 = v0[4];
  v8 = 4 << v4;
  v13 = v0[2];
  while (1)
  {
    result = v6;
    if ((v6 & 0xC) == v8)
    {
      break;
    }

    if (v6 < 0x4000)
    {
      goto LABEL_39;
    }

LABEL_13:
    if ((v2 & 0x1000000000000000) != 0)
    {
      if (v3 < result >> 16)
      {
        goto LABEL_42;
      }

      result = sub_182AD3188();
    }

    else
    {
      result = (result & 0xFFFFFFFFFFFF0000) - 65532;
    }

    if ((result & 0xC) == v8)
    {
      result = sub_18208A330(result, v1, v2);
    }

    v10 = result >> 16;
    if (result >> 16 >= v3)
    {
      goto LABEL_40;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v12 = sub_182AD31C8();
    }

    else if ((v2 & 0x2000000000000000) != 0)
    {
      v14[0] = v1;
      v14[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      v12 = *(v14 + v10);
    }

    else
    {
      v11 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v1 & 0x1000000000000000) == 0)
      {
        v11 = sub_182AD3CF8();
      }

      v12 = *(v11 + v10);
    }

    LOBYTE(v14[0]) = v12;
    v13(&v15, v14);
    result = v7(&v15);
    if ((result & 1) == 0)
    {
      return v6;
    }

    if ((v6 & 0xC) == v8)
    {
      result = sub_18208A330(v6, v1, v2);
      v6 = result;
      if (result < 0x4000)
      {
        goto LABEL_41;
      }
    }

    else if (v6 < 0x4000)
    {
      goto LABEL_41;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      if (v3 < v6 >> 16)
      {
        goto LABEL_43;
      }

      v6 = sub_182AD3188();
      if (v6 < 0x4000)
      {
        return v6;
      }
    }

    else
    {
      v6 = (v6 & 0xFFFFFFFFFFFF0000) - 65532;
      if (v6 < 0x4000)
      {
        return v6;
      }
    }
  }

  result = sub_18208A330(v6, v1, v2);
  if (result >= 0x4000)
  {
    goto LABEL_13;
  }

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
  return result;
}

uint64_t sub_18208BC10(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 152);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
  v44 = a1;
  v4(v45, sub_181D0482C, a1, v5);
  v6 = v45[0];
  v43 = a2;
  result = (*(*a2 + 152))(v45, sub_181D0482C, a2, v5);
  v8 = v45[0];
  if (*(v6 + 16) == *(v45[0] + 16))
  {
    v9 = 0;
    v10 = v6 + 64;
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v41 = v45[0];
    v42 = v6;
    v39 = v14;
    v40 = v6 + 64;
    while (v13)
    {
      if (!*(v8 + 16))
      {
        goto LABEL_35;
      }

LABEL_7:
      v15 = __clz(__rbit64(v13)) | (v9 << 6);
      v16 = *(*(v6 + 56) + 4 * v15);
      v17 = (*(v6 + 48) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_181CA266C(v18, v19);
      v22 = v21;

      if (v22)
      {
        v23 = *(*(v8 + 56) + 4 * v20);
        swift_beginAccess();
        result = swift_beginAccess();
        while (1)
        {
          v24 = v16 == 0xFFFF || v23 == 0xFFFF;
          if (v24)
          {
            break;
          }

          v25 = *(v44 + 16);
          if (*(v25 + 16) <= v16)
          {
            goto LABEL_39;
          }

          v26 = *(v43 + 16);
          if (*(v26 + 16) <= v23)
          {
            goto LABEL_40;
          }

          v27 = v25 + (v16 << 6);
          result = *(v27 + 48);
          v28 = *(v27 + 56);
          v29 = *(v27 + 64);
          v30 = *(v27 + 72);
          v31 = *(v27 + 80);
          v16 = *(v27 + 88);
          v32 = v26 + (v23 << 6);
          v33 = *(v32 + 64);
          v34 = *(v32 + 72);
          v35 = *(v32 + 80);
          v23 = *(v32 + 88);
          v36 = result == *(v32 + 48) && v28 == *(v32 + 56);
          if (v36 || (result = sub_182AD4268(), (result & 1) != 0))
          {
            if (v29 == v33)
            {
              if (v30 == v34 && v31 == v35)
              {
                continue;
              }

              result = sub_182AD4268();
              if (result)
              {
                continue;
              }
            }
          }

          goto LABEL_35;
        }

        v13 &= v13 - 1;
        v24 = v16 == v23;
        v8 = v41;
        v6 = v42;
        v14 = v39;
        v10 = v40;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    do
    {
      v38 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      if (v38 >= v14)
      {

        return 1;
      }

      v13 = *(v10 + 8 * v38);
      ++v9;
    }

    while (!v13);
    v9 = v38;
    if (*(v8 + 16))
    {
      goto LABEL_7;
    }

LABEL_35:
  }

  else
  {
  }

  return 0;
}

unint64_t sub_18208BF44(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result & 0xC) == 4 << v4)
  {
    v5 = a3;
    result = sub_18208A330(result, a2, a3);
    a3 = v5;
    if ((v5 & 0x1000000000000000) == 0)
    {
      return (result & 0xFFFFFFFFFFFF0000) + 65540;
    }
  }

  else if ((a3 & 0x1000000000000000) == 0)
  {
    return (result & 0xFFFFFFFFFFFF0000) + 65540;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  else
  {

    return sub_182AD3178();
  }

  return result;
}

unint64_t sub_18208BFE4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result & 0xC) != 4 << v4)
  {
    if (result >= 0x4000)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = a2;
  result = sub_18208A330(result, a2, a3);
  a2 = v5;
  if (result < 0x4000)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((a3 & 0x1000000000000000) == 0)
  {
    return (result & 0xFFFFFFFFFFFF0000) - 65532;
  }

LABEL_9:
  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  else
  {

    return sub_182AD3188();
  }

  return result;
}

uint64_t sub_18208C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_181DAEBE0();

    *v4 = v8;
  }

  v9 = *(*v8 + 152);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
  v9(v20, sub_181D0482C, v8, v10);
  v11 = v20[0];
  if (*(v20[0] + 16) && (v12 = sub_181CA266C(a3, a4), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 4 * v12);

    if (v14 != 0xFFFF)
    {
      swift_beginAccess();
      v15 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_181F5A904(0, *(v15 + 16) + 1, 1, v15);
          v15 = result;
        }

        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_181F5A904((v17 > 1), v18 + 1, 1, v15);
          v15 = result;
        }

        *(v15 + 16) = v18 + 1;
        *(v15 + 8 * v18 + 32) = v14;
        v19 = v8[2];
        if (*(v19 + 16) <= v14)
        {
          break;
        }

        v14 = *(v19 + (v14 << 6) + 88);
        if (v14 == 0xFFFF)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_16:
  if (*(v15 + 16))
  {
    swift_beginAccess();
    sub_182087194(v15);
    swift_endAccess();

    swift_beginAccess();
    v8[3] = 0;
  }
}

unint64_t sub_18208C2BC()
{
  result = qword_1EA836E10;
  if (!qword_1EA836E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E10);
  }

  return result;
}

unint64_t sub_18208C328()
{
  result = qword_1EA836540;
  if (!qword_1EA836540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836540);
  }

  return result;
}

unint64_t sub_18208C37C()
{
  result = qword_1EA839FE8;
  if (!qword_1EA839FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839FE8);
  }

  return result;
}

unint64_t sub_18208C3D0()
{
  result = qword_1EA839FF0;
  if (!qword_1EA839FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839FF0);
  }

  return result;
}

unint64_t sub_18208C428()
{
  result = qword_1EA839FF8;
  if (!qword_1EA839FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839FF8);
  }

  return result;
}

unint64_t sub_18208C47C()
{
  result = qword_1EA836538;
  if (!qword_1EA836538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836538);
  }

  return result;
}

unint64_t sub_18208C518()
{
  result = qword_1EA83A010;
  if (!qword_1EA83A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A010);
  }

  return result;
}

unint64_t sub_18208C570()
{
  result = qword_1EA83A018;
  if (!qword_1EA83A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A018);
  }

  return result;
}

unint64_t sub_18208C60C()
{
  result = qword_1EA83A028;
  if (!qword_1EA83A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A028);
  }

  return result;
}

unint64_t sub_18208C6A8()
{
  result = qword_1EA83A038;
  if (!qword_1EA83A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A038);
  }

  return result;
}

uint64_t sub_18208C78C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A008);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

unint64_t sub_18208C8C8()
{
  result = qword_1EA836548;
  if (!qword_1EA836548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836548);
  }

  return result;
}

unint64_t sub_18208C920()
{
  result = qword_1EA83A068;
  if (!qword_1EA83A068)
  {
    type metadata accessor for HTTPFields._Storage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A068);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

unint64_t sub_18208C9B8()
{
  result = *(v0 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >> 16)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_18208C9D8@<X0>(_DWORD *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_18208CA08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_18208CA50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Connection5.nw.getter()
{
  sub_181F3D244();
}

uint64_t Connection5.__allocating_init(to:using:where:)(uint64_t TupleTypeMetadata, void (*a2)(char *, __n128), uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a4;
  v5 = TupleTypeMetadata;
  v6 = v4[10];
  if (v6)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = v4[12];
    *v8 = v4[11];
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v6 >= 6 && v8 - v10 + 8 >= 0x20)
    {
      v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v35 = v8 + 3;
      v36 = (v10 + 16);
      v37 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v38 = *v36;
        *(v35 - 1) = *(v36 - 1);
        *v35 = v38;
        v35 += 2;
        v36 += 2;
        v37 -= 4;
      }

      while (v37);
      if (v6 == v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v6 - v11;
    v13 = 8 * v11;
    v14 = &v8[v11 + 1];
    v15 = (v10 + v13);
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v12;
    }

    while (v12);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v17 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v17 = v4[11];
LABEL_9:
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_181FE4EE0(v5, v23);
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v28 = (v17 + 48);
    v29 = v27;
    do
    {
      v30 = *v28;
      v28 += 4;
      *v29++ = &v20[v30];
      --v6;
    }

    while (v6);
    v31 = *(v17 + 32);
  }

  else
  {
    v31 = 0;
  }

  v39(&v20[v31], v25);
  v32 = sub_182185B3C(v20, v17);
  (*(v18 + 8))(v20, v17);
  swift_allocObject();
  v33 = sub_182090234(v23, v32, v40);

  sub_181FDAD5C(v5);
  return v33;
}

uint64_t Connection5.__allocating_init(using:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_18208CEBC(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 4);
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = v5;
    v8 = (v5 | (v4 << 32)) >> 32;
    a3(result);
  }

  return result;
}

uint64_t sub_18208CF94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_18208D098(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *), void (*a6)(uint64_t, void *))
{
  if (v6[2])
  {
    v10 = result;
    v11 = *v6;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v11[10];
    v13[3] = v11[11];
    v13[4] = swift_allocateMetadataPack();
    v13[5] = v11[13];
    v13[6] = swift_allocateWitnessTablePack();
    v13[7] = v12;
    v13[8] = v10;
    v13[9] = a2;
    v13[10] = v11;

    a5(a4, v13);
    a6(a4, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18208D1FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t Connection5.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    nw_connection_cancel(*(v1 + 16));

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection5.__deallocating_deinit()
{
  Connection5.deinit();

  return swift_deallocClassInstance();
}

uint64_t Connection5.hashValue.getter()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_18208D36C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = ConnectionProtocol.id.getter(a1, WitnessTable);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_18208D3E8()
{
  swift_getWitnessTable();

  return ConnectionProtocol.hash(into:)();
}

uint64_t sub_18208D448()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t Connection5<>.send(_:metadata:isComplete:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 120) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  *(v6 + 64) = *v5;
  *(v6 + 72) = *(*v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 80) = AssociatedTypeWitness;
  *(v6 + 88) = *(AssociatedTypeWitness - 8);
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18208D5F4, 0, 0);
}

uint64_t sub_18208D5F4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 120);
  v11 = *(v0 + 48);
  v3 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 56);
  (*(v11 + 40))(v2, v3);
  v10 = (*(v11 + 16) + **(v11 + 16));
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_181FDDA88;
  v6 = *(v0 + 96);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  return v10(v0 + 16, v7, v8, v6, v1, WitnessTable);
}

uint64_t Connection5<>.receive(minimumLength:maximumLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v4[3] = a3;
  v9 = v8;
  v10 = *(*v3 + 88);
  v4[4] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[5] = AssociatedTypeWitness;
  v4[6] = *(AssociatedTypeWitness - 8);
  v12 = swift_task_alloc();
  v4[7] = v12;
  v4[2] = v3;
  v16 = (*(a3 + 32) + **(a3 + 32));
  v13 = swift_task_alloc();
  v4[8] = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v4;
  v13[1] = sub_181FDECFC;

  return v16(v12, v4 + 2, a1, a2, v9, WitnessTable, v10, a3);
}

uint64_t Connection5<>.receive(exactly:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3[3] = a2;
  v7 = v6;
  v8 = *(*v2 + 88);
  v3[4] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v3[6] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v3[7] = v10;
  v3[2] = v2;
  v14 = (*(a2 + 32) + **(a2 + 32));
  v11 = swift_task_alloc();
  v3[8] = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v3;
  v11[1] = sub_181FDF1C4;

  return v14(v10, v3 + 2, a1, a1, v7, WitnessTable, v8, a2);
}

uint64_t Connection5.send<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  *(v4 + 16) = v3;
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_181FDF40C;

  return static UDP.send<A>(connection:content:metadata:)(v4 + 16, a1, a2, a3, v8, WitnessTable);
}

{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208ED44, 0, 0);
}

{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208F078, 0, 0);
}

uint64_t Connection5.receive<>()()
{
  v2 = *v0;
  *(v1 + 24) = v0;
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_18208DDEC;

  return static UDP.receive<A>(connection:)(v1 + 16, v1 + 24, v2, WitnessTable);
}

uint64_t sub_18208DDEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v7 = sub_18208DFC4;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v7 = sub_18208DF20;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18208DF20()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  sub_181F49B58(v2, v1);
  sub_181F49B58(v2, v1);
  sub_181C1F2E4(v2, v1);
  sub_181C1F2E4(v2, v1);
  v4 = v0[1];
  v6 = v0[6];
  v5 = v0[7];

  return v4(v5, v6, v3);
}

uint64_t Connection5.send<>(type:_:metadata:isFinal:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 116) = a5;
  *(v6 + 72) = a4;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 112) = a1;
  *(v6 + 88) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_18208E030, 0, 0);
}

void sub_18208E030()
{
  *(v0 + 48) = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v5 = *(*(v0 + 56) + 16);
    v6 = *(*(v0 + 56) + 24);
    v7 = __OFSUB__(v6, v5);
    v4 = v6 - v5;
    if (!v7)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(v2);
    goto LABEL_11;
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 60);
  v7 = __OFSUB__(v9, v8);
  LODWORD(v4) = v9 - v8;
  if (v7)
  {
    __break(1u);
    return;
  }

  v4 = v4;
LABEL_11:
  v10 = *(v0 + 88);
  v11 = *(v0 + 116);
  v12 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 24) = v4;
  *(v0 + 32) = 1;
  *(v0 + 33) = v11;
  *(v0 + 40) = v12;

  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_18208E190;
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);

  static TLV.send<A>(connection:content:metadata:)(v0 + 48, v15, v16, v0 + 16, v10, WitnessTable);
}

uint64_t sub_18208E190()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18208E2EC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Connection5.receive<>()(uint64_t a1)
{
  v3 = *v1;
  v2[7] = a1;
  v2[6] = v1;
  v4 = swift_task_alloc();
  v2[8] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v2;
  v4[1] = sub_18208E400;

  return static TLV.receive<A>(connection:)((v2 + 2), (v2 + 6), v3, WitnessTable);
}

{
  v3 = *v1;
  v2[5] = a1;
  v2[4] = v1;
  v4 = swift_task_alloc();
  v2[6] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v2;
  v4[1] = sub_18208F9A0;

  return static WebSocket.receive<A>(connection:)((v2 + 2), (v2 + 4), v3, WitnessTable);
}

uint64_t sub_18208E400(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_18208E600;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_18208E534;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18208E534()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 33);
  v6 = *(v0 + 40);
  sub_181F49B58(v2, v1);
  sub_181F49B58(v2, v1);

  sub_181C1F2E4(v2, v1);
  sub_181C1F2E4(v2, v1);

  *v3 = v4;
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t Connection5.send<A>(_:metadata:isFinal:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 128) = a3;
  *(v4 + 56) = a1;
  *(v4 + 80) = *v3;
  *(v4 + 88) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208E690, 0, 0);
}

uint64_t sub_18208E690()
{
  *(v0 + 48) = *(v0 + 72);
  v1 = *(v0 + 88);
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  v2 = *(v1 + 88);
  v3 = v2[2];
  v4 = v2[4];
  v5 = sub_182AD1C68();
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  v7 = v5;
  v8 = v6;
  v15 = *(v0 + 80);
  v9 = *(v0 + 128);
  v10 = *(v0 + 64);

  v11 = v2[3];
  sub_1821EBCD8(v9, v10, v0 + 16);
  v12 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v12;

  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_181FE06E0;

  return static JSON.send<A>(connection:content:metadata:)(v0 + 48, v7, v8, v0 + 32, v3, v15, v11, v4);
}

uint64_t Connection5.receive<A>()(uint64_t a1)
{
  v3 = *v1;
  v2[5] = a1;
  v4 = *(*v1 + 88);
  v5 = v4[2];
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[8] = v6;
  v2[4] = v1;
  v7 = swift_task_alloc();
  v2[9] = v7;
  v8 = v4[3];
  v2[10] = v8;
  v9 = v4[4];
  v2[11] = v9;
  WitnessTable = swift_getWitnessTable();
  *v7 = v2;
  v7[1] = sub_18208EA38;

  return static JSON.receive<A>(connection:)(v6, (v2 + 2), (v2 + 4), v5, v3, v8, v9, WitnessTable);
}

uint64_t sub_18208EA38()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_18208EC90;
  }

  else
  {
    v2 = sub_18208EB4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18208EB4C()
{
  v20 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v18[0] = *(v0 + 16);
  v19 = v7;
  v8 = static JSON.mapLegacy(_:)(v5, v4, v18, v6, v3, v1);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  if (v2)
  {

    (*(v11 + 8))(v10, v12);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = v9;
    v16 = v8;

    (*(v11 + 8))(v10, v12);

    v17 = *(v0 + 8);

    return v17(v16, v15 & 1);
  }
}

uint64_t sub_18208EC90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18208ED44()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  *(v0 + 32) = *(v0 + 64);
  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_181F76154(v5, v6);
  v9 = v8;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  *(v0 + 16) = 1;
  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = v3;

  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  WitnessTable = swift_getWitnessTable();
  *v10 = v0;
  v10[1] = sub_18208EE90;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v7, v9, v0 + 16, v1, WitnessTable);
}

uint64_t sub_18208EE90()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 104) = v0;

  sub_181C1F2E4(v3, v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18208E2EC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_18208F078()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 40);
  }

  *(v0 + 16) = 2;
  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = *(v0 + 56);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_18208F1A0;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v3, v4, v0 + 16, v1, WitnessTable);
}

uint64_t sub_18208F1A0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18209075C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Connection5.ping<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208F348, 0, 0);
}

uint64_t sub_18208F348()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 40);
  }

  *(v0 + 16) = 4;
  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = *(v0 + 56);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_181FE1BC8;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v3, v4, v0 + 16, v1, WitnessTable);
}

uint64_t Connection5.pong<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208F4BC, 0, 0);
}

uint64_t sub_18208F4BC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 40);
  }

  *(v0 + 16) = 5;
  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = *(v0 + 56);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_18208F1A0;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v3, v4, v0 + 16, v1, WitnessTable);
}

uint64_t Connection5.close<>(code:reason:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 56) = *v4;
  *(v5 + 80) = *a1;
  *(v5 + 82) = *(a1 + 2);
  return MEMORY[0x1EEE6DFA0](sub_18208F63C, 0, 0);
}

uint64_t sub_18208F63C()
{
  v1 = *(v0 + 82);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  *(v0 + 16) = 3;
  *(v0 + 20) = v1;
  *(v0 + 18) = v2;
  *(v0 + 21) = 257;
  *(v0 + 24) = *(v0 + 40);

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_18208F748;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, 0, 0xC000000000000000, v0 + 16, v3, WitnessTable);
}

uint64_t sub_18208F748()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18208E600, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_18208F9A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_18208FB9C;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_18208FAD4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18208FAD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 22);
  v4 = *(v0 + 24);
  **(v0 + 40) = *(v0 + 16);
  sub_181F49B58(v2, v1);
  sub_181F49B58(v2, v1);

  sub_181C1F2E4(v2, v1);
  sub_181C1F2E4(v2, v1);

  v5 = *(v0 + 8);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  return v5(v6, v7, v4, v3);
}

uint64_t Connection5<>.messages.getter(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE6DBA8](&unk_182AF2CA8, v3, AssociatedTypeWitness);
}

uint64_t sub_18208FC78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v3[3] = a1;
  v3[4] = a3;
  v7 = v6;
  v8 = *(*a2 + 88);
  v3[5] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[6] = AssociatedTypeWitness;
  v3[7] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v3[8] = v10;
  v11 = swift_getAssociatedTypeWitness();
  v3[9] = v11;
  v3[10] = *(v11 - 8);
  v12 = swift_task_alloc();
  v3[11] = v12;
  v3[2] = a2;
  v16 = (*(a3 + 40) + **(a3 + 40));
  v13 = swift_task_alloc();
  v3[12] = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v3;
  v13[1] = sub_18208FF18;

  return v16(v12, v10, v3 + 2, v7, WitnessTable, v8, a3);
}

uint64_t sub_18208FF18()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1820901C4;
  }

  else
  {
    v2 = sub_18209002C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18209002C()
{
  v1 = v0[13];
  (*(v0[4] + 56))(v0[11], v0[8]);
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[7];
  if (v1)
  {
    (*(v5 + 8))(v0[8], v0[6]);
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v7 = v0[3];
    (*(v5 + 8))();
    (*(v3 + 8))(v2, v4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v7, 0, 1, AssociatedTypeWitness);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1820901C4()
{

  v1 = *(v0 + 8);

  return v1();
}