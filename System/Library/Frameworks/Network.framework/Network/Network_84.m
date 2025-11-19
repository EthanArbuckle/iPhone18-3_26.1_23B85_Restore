uint64_t sub_181FB5A80(void (*a1)(uint64_t *))
{
  v3 = v1[1];
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 64);
  v22 = *(*v1 + 16);
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;

  a1(&v22);

  result = swift_beginAccess();
  v11 = *(v3 + 16);
  v12 = *(v11 + 16);
  if (!v12)
  {
  }

  v13 = 0;
  v14 = 0;
  while (v14 < v12)
  {
    ++v14;
    v15 = v11 + v13;
    v16 = *(v15 + 72);
    v17 = *(v15 + 80);
    v18 = *(v15 + 64);
    v19 = *(v15 + 48);
    v20 = *(v15 + 56);
    v21 = *(v15 + 40);
    v22 = *(v15 + 32);
    v23 = v21;
    v24 = v19;
    v25 = v20;
    v26 = v18;
    v27 = v16;
    v28 = v17;

    a1(&v22);

    v11 = *(v3 + 16);
    v12 = *(v11 + 16);
    v13 += 64;
    if (v14 == v12)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_181FB5BEC()
{
  v1 = *v0;
  v26 = v0[1];
  v33 = MEMORY[0x1E69E7CC0];
  sub_1820D4BB0(0x312E312F50545448, 0xE900000000000020);
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  if (sub_181CA4798(v3, v2))
  {
    v28 = v3;
    v29 = v2;

    swift_bridgeObjectRetain_n();
    sub_181FB6464(&v28);
  }

  else
  {

    sub_182289C8C(v3, v2);
  }

  sub_1820D4BB0(32, 0xE100000000000000);
  v31 = v1;
  v32 = v26;
  HTTPResponse.status.getter(&v28);
  v5 = v29;
  v4 = v30;
  if (sub_181CA4798(v29, v30))
  {
    v28 = v5;
    v29 = v4;

    sub_181FB6464(&v28);
  }

  else
  {
    sub_182289C8C(v5, v4);
  }

  sub_1820D4BB0(2573, 0xE200000000000000);

  swift_beginAccess();
  v6 = *(v26 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_37:

    sub_1820D4BB0(2573, 0xE200000000000000);
    return;
  }

  v8 = 0;
LABEL_11:
  if (v8 < v7)
  {
    v9 = (v6 + (v8 << 6));
    v11 = v9[9];
    v10 = v9[10];
    v27 = v8 + 1;
    v13 = v9[4];
    v12 = v9[5];
    swift_bridgeObjectRetain_n();

    sub_1820D4BB0(v13, v12);
    sub_1820D4BB0(8250, 0xE200000000000000);
    if ((v10 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    v15 = (v11 >> 59) & 1;
    if ((v10 & 0x1000000000000000) == 0)
    {
      LOBYTE(v15) = 1;
    }

    v16 = 4 << v15;
    v17 = 15;
    while (1)
    {
      while (1)
      {
        if (4 * v14 == v17 >> 14)
        {
          v31 = v11;
          v32 = v10;

          sub_181FB6464(&v31);

LABEL_10:

          sub_1820D4BB0(2573, 0xE200000000000000);
          v6 = *(v26 + 16);
          v7 = *(v6 + 16);
          v8 = v27;
          if (v27 == v7)
          {
            goto LABEL_37;
          }

          goto LABEL_11;
        }

        v18 = v17 & 0xC;
        v19 = v17;
        if (v18 == v16)
        {
          v23 = v17;
          v19 = sub_18208A330(v17, v11, v10);
          v17 = v23;
        }

        v20 = v19 >> 16;
        if (v19 >> 16 >= v14)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if ((v10 & 0x1000000000000000) == 0)
        {
          break;
        }

        v25 = v17;
        v22 = sub_182AD31C8();
        v17 = v25;
        if (v18 != v16)
        {
          goto LABEL_29;
        }

LABEL_34:
        v17 = sub_18208A330(v17, v11, v10);
        if ((v10 & 0x1000000000000000) != 0)
        {
          goto LABEL_30;
        }

LABEL_18:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        if (v22 < 0)
        {
          goto LABEL_9;
        }
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        v31 = v11;
        v32 = v10 & 0xFFFFFFFFFFFFFFLL;
        v21 = &v31;
      }

      else
      {
        v21 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v11 & 0x1000000000000000) == 0)
        {
          v24 = v17;
          v21 = sub_182AD3CF8();
          v17 = v24;
        }
      }

      v22 = *(v21 + v20);
      if (v18 == v16)
      {
        goto LABEL_34;
      }

LABEL_29:
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_30:
      if (v14 <= v17 >> 16)
      {
        goto LABEL_39;
      }

      v17 = sub_182AD3178();
      if (v22 < 0)
      {
LABEL_9:
        sub_182289C8C(v11, v10);

        goto LABEL_10;
      }
    }
  }

LABEL_40:
  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);
}

uint64_t sub_181FB6060(void (*a1)(void *))
{
  v3 = *v1;

  result = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = 0;
  while (v8 < v6)
  {
    ++v8;
    v9 = v5 + v7;
    v10 = *(v9 + 72);
    v11 = *(v9 + 80);
    v12 = *(v9 + 64);
    v13 = *(v9 + 48);
    v14 = *(v9 + 56);
    v15 = *(v9 + 40);
    v16[0] = *(v9 + 32);
    v16[1] = v15;
    v16[2] = v13;
    v16[3] = v14;
    v17 = v12;
    v18 = v10;
    v19 = v11;

    a1(v16);

    v5 = *(v3 + 16);
    v6 = *(v5 + 16);
    v7 += 64;
    if (v8 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB6168()
{
  v1 = *v0;
  v27 = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v23 = v1;
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_31:

    sub_1820D4BB0(2573, 0xE200000000000000);
    return v27;
  }

  v4 = 0;
LABEL_5:
  if (v4 < v3)
  {
    v5 = (v2 + (v4 << 6));
    v7 = v5[9];
    v6 = v5[10];
    v24 = v4 + 1;
    v9 = v5[4];
    v8 = v5[5];
    swift_bridgeObjectRetain_n();

    sub_1820D4BB0(v9, v8);
    sub_1820D4BB0(8250, 0xE200000000000000);
    if ((v6 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    v11 = (v7 >> 59) & 1;
    if ((v6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = 4 << v11;
    v13 = 15;
    while (1)
    {
      while (1)
      {
        if (4 * v10 == v13 >> 14)
        {
          v25 = v7;
          v26 = v6;

          sub_181FB6464(&v25);

LABEL_4:

          sub_1820D4BB0(2573, 0xE200000000000000);
          v2 = *(v23 + 16);
          v3 = *(v2 + 16);
          v4 = v24;
          if (v24 == v3)
          {
            goto LABEL_31;
          }

          goto LABEL_5;
        }

        v14 = v13 & 0xC;
        v15 = v13;
        if (v14 == v12)
        {
          v19 = v13;
          v15 = sub_18208A330(v13, v7, v6);
          v13 = v19;
        }

        v16 = v15 >> 16;
        if (v15 >> 16 >= v10)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if ((v6 & 0x1000000000000000) == 0)
        {
          break;
        }

        v22 = v13;
        v18 = sub_182AD31C8();
        v13 = v22;
        if (v14 != v12)
        {
          goto LABEL_23;
        }

LABEL_28:
        v13 = sub_18208A330(v13, v7, v6);
        if ((v6 & 0x1000000000000000) != 0)
        {
          goto LABEL_24;
        }

LABEL_12:
        v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
        if (v18 < 0)
        {
          goto LABEL_3;
        }
      }

      if ((v6 & 0x2000000000000000) != 0)
      {
        v25 = v7;
        v26 = v6 & 0xFFFFFFFFFFFFFFLL;
        v17 = &v25;
      }

      else
      {
        v17 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v7 & 0x1000000000000000) == 0)
        {
          v21 = v13;
          v17 = sub_182AD3CF8();
          v13 = v21;
        }
      }

      v18 = *(v17 + v16);
      if (v14 == v12)
      {
        goto LABEL_28;
      }

LABEL_23:
      if ((v6 & 0x1000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_24:
      if (v10 <= v13 >> 16)
      {
        goto LABEL_33;
      }

      v13 = sub_182AD3178();
      if (v18 < 0)
      {
LABEL_3:
        sub_182289C8C(v7, v6);

        goto LABEL_4;
      }
    }
  }

LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

char *sub_181FB6464(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = sub_18224FE14();
    v10 = v9;

    v2 = v8;
    *a1 = v8;
    a1[1] = v10;
    v3 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = (HIBYTE(v3) & 0xF);
    v12[0] = v2;
    v12[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v7 = v12;
    return sub_1820D4CC0(v7, v6);
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = (v2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v5 = sub_182AD3CF8();
  }

  v7 = v5;
  return sub_1820D4CC0(v7, v6);
}

uint64_t sub_181FB6518(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 32);
  return v2(v4, v3, v5, v6, &v8);
}

id sub_181FB6578()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7Network12__NWPathFlow_keyStorage];
  if (v2)
  {
    MEMORY[0x1865DF520](v2, -1, -1);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _nw_path_flow_is_viable(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LOWORD(v1) = *(v1 + 100);

  return v1 & 1;
}

uint64_t _nw_path_flow_fast_open_blocked(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 3) & 1;
}

uint64_t _nw_path_flow_is_local(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 4) & 1;
}

uint64_t _nw_path_flow_is_direct(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 5) & 1;
}

void sub_181FB676C(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((*(v3 + 100) & 0x400) == 0)
    {
      v6 = v5 | 0x400;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((*(v3 + 100) & 0x400) != 0)
  {
    v6 = v5 & 0xFBFF;
    goto LABEL_6;
  }
}

uint64_t _nw_path_flow_has_ipv4(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 6) & 1;
}

uint64_t _nw_path_flow_has_ipv6(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 7) & 1;
}

void sub_181FB689C(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((*(v3 + 100) & 0x100) == 0)
    {
      v6 = v5 | 0x100;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((*(v3 + 100) & 0x100) != 0)
  {
    v6 = v5 & 0xFEFF;
    goto LABEL_6;
  }
}

uint64_t sub_181FB691C(char *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_181AA847C(a2);
    v5 = v4;
    v6 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v7 = a1;
    swift_beginAccess();
    *(v6 + 4) = v3;
    *(v6 + 5) = v5;
  }

  else
  {
    v8 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v9 = a1;
    swift_beginAccess();
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
  }

  return swift_unknownObjectRelease();
}

id _nw_path_flow_copy_remote_endpoint(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 3);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _nw_path_flow_get_unique_flow_tag(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 48);

  return v3;
}

void _nw_path_flow_set_flow_stats_index(char *a1, int a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  *(v3 + 49) = a2;
}

uint64_t _nw_path_flow_get_flow_stats_index(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 49);

  return v3;
}

uint64_t _nw_path_flow_set_error(char *a1, uint64_t a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  *(v3 + 11) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void _nw_path_flow_set_protoctl_event_0(char *a1, int a2, int a3, int a4)
{
  v7 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v8 = a1;
  swift_beginAccess();
  *(v7 + 44) = a2;
  v7[180] = 0;

  v9 = &v8[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v10 = v8;
  swift_beginAccess();
  *(v9 + 46) = a3;

  v11 = &v10[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v12 = v10;
  swift_beginAccess();
  *(v11 + 47) = a4;
}

uint64_t sub_181FB6C8C(char *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v7 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v8 = a1;
  swift_beginAccess();
  v9 = *(v7 + 44);
  v10 = v7[180];

  if ((v10 & 1) == 0)
  {
    if (a2)
    {
      *a2 = v9;
    }

    if (a3)
    {
      v11 = &v8[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
      v12 = v8;
      swift_beginAccess();
      LODWORD(v11) = *(v11 + 46);

      *a3 = v11;
    }

    if (a4)
    {
      v13 = &v8[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
      v14 = v8;
      swift_beginAccess();
      LODWORD(v13) = *(v13 + 47);

      *a4 = v13;
    }
  }

  return v10 ^ 1u;
}

uint64_t _nw_path_flow_get_nexus_agent_uuid(char *a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v6 = *(v3 + 12);
  v5 = *(v3 + 13);
  v7 = *(v3 + 28);
  v8 = v3[116];

  if (v8)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    LOBYTE(v10) = BYTE4(v6);
    BYTE1(v10) = BYTE5(v6);
    BYTE2(v10) = BYTE6(v6);
    BYTE3(v10) = HIBYTE(v6);
    WORD2(v10) = v5;
    BYTE6(v10) = BYTE2(v5);
    HIBYTE(v10) = BYTE3(v5);
    LOBYTE(v11) = BYTE4(v5);
    BYTE1(v11) = BYTE5(v5);
    BYTE2(v11) = BYTE6(v5);
    BYTE3(v11) = HIBYTE(v5);
    HIDWORD(v11) = v7;
  }

  uuid_copy(a2, &v10);
  return v8 ^ 1u;
}

uint64_t _nw_path_flow_get_tfo_cookie_len(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 8);

  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(v3 + 16);

  if (v4 > 0xFF)
  {
    __break(1u);
LABEL_4:
    LOBYTE(v4) = 0;
  }

  return v4;
}

uint64_t sub_181FB6F4C(char *a1, void *a2, _BYTE *a3)
{
  v5 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v6 = a1;
  swift_beginAccess();
  v7 = *(v5 + 8);

  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8 <= *a3)
    {
      *a3 = v8;
      memcpy(a2, (v7 + 32), v8);

      return 1;
    }

    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1ED411DA8);

    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 16777728;
      *(v12 + 4) = *a3;
      *(v12 + 5) = 2048;
      v13 = *(v7 + 16);

      *(v12 + 7) = v13;

      _os_log_impl(&dword_181A37000, v10, v11, "TFO cookie with length %hhu is too small for %ld bytes", v12, 0xFu);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  return 0;
}

uint64_t sub_181FB70FC(uint64_t result, char *a2, unsigned __int8 a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    v12 = MEMORY[0x1E69E7CC0];
    sub_181FB7730(0, a3, 0);
    v6 = *(v12 + 16);
    do
    {
      v8 = *a2++;
      v7 = v8;
      v9 = *(v12 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_181FB7730((v9 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      *(v12 + v6++ + 32) = v7;
      --v5;
    }

    while (v5);
    v10 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v11 = v4;
    swift_beginAccess();
    *(v10 + 21) = v12;
  }

  return result;
}

void sub_181FB720C(char *a1, void *a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = v3 + 80;
  if (!*(v3 + 10))
  {
    *v5 = *sub_182AD2388();
  }

  swift_beginAccess();
  v6 = *(v3 + 10);
  if (!v6)
  {
    swift_endAccess();
LABEL_13:

    return;
  }

  v7 = *(v6 + 24);
  v8 = v7 + 1;
  v9 = __OFADD__(v7, 1);
  v10 = a2;
  if (!v9)
  {
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    if (*(*v5 + 16) < v8 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ADA6FC(isUniquelyReferenced_nonNull_native, v8);
      v13 = *v5;
    }

    sub_181ADA8CC((v13 + 16), v13 + 40, v11);
    swift_endAccess();

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_181FB7334(uint64_t result, char *a2, unsigned __int8 a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    v12 = MEMORY[0x1E69E7CC0];
    sub_181FB7730(0, a3, 0);
    v6 = *(v12 + 16);
    do
    {
      v8 = *a2++;
      v7 = v8;
      v9 = *(v12 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_181FB7730((v9 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      *(v12 + v6++ + 32) = v7;
      --v5;
    }

    while (v5);
    v10 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v11 = v4;
    swift_beginAccess();
    *(v10 + 8) = v12;
  }

  return result;
}

BOOL sub_181FB745C(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + OBJC_IVAR____TtC7Network12__NWPathFlow_flow);
      v5 = a1;
      swift_beginAccess();
      v51 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v8 = v3[4];
      v54 = v3[3];
      v55 = v8;
      v52 = v6;
      v53 = v7;
      v9 = v3[5];
      v10 = v3[6];
      v11 = v3[8];
      v58 = v3[7];
      v59 = v11;
      v56 = v9;
      v57 = v10;
      v12 = v3[9];
      v13 = v3[10];
      v14 = v3[11];
      *(v62 + 10) = *(v3 + 186);
      v61 = v13;
      v62[0] = v14;
      v60 = v12;
      sub_181AFE6F4(&v51, v77);

      v49 = v61;
      v50[0] = v62[0];
      *(v50 + 10) = *(v62 + 10);
      v45 = v57;
      v46 = v58;
      v47 = v59;
      v48 = v60;
      v41 = v53;
      v42 = v54;
      v43 = v55;
      v44 = v56;
      v15 = (a2 + OBJC_IVAR____TtC7Network12__NWPathFlow_flow);
      v39 = v51;
      v40 = v52;
      v16 = a2;
      swift_beginAccess();
      v63 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[4];
      v66 = v15[3];
      v67 = v19;
      v64 = v17;
      v65 = v18;
      v20 = v15[5];
      v21 = v15[6];
      v22 = v15[8];
      v70 = v15[7];
      v71 = v22;
      v68 = v20;
      v69 = v21;
      v23 = v15[9];
      v24 = v15[10];
      v25 = v15[11];
      *(v74 + 10) = *(v15 + 186);
      v73 = v24;
      v74[0] = v25;
      v72 = v23;
      sub_181AFE6F4(&v63, v77);

      v37 = v73;
      v38[0] = v74[0];
      *(v38 + 10) = *(v74 + 10);
      v33 = v69;
      v34 = v70;
      v35 = v71;
      v36 = v72;
      v29 = v65;
      v30 = v66;
      v31 = v67;
      v32 = v68;
      v27 = v63;
      v28 = v64;
      v2 = _s7Network8PathFlowV2eeoiySbAC_ACtFZ_0(&v39, &v27);
      v75[10] = v37;
      v76[0] = v38[0];
      *(v76 + 10) = *(v38 + 10);
      v75[6] = v33;
      v75[7] = v34;
      v75[9] = v36;
      v75[8] = v35;
      v75[2] = v29;
      v75[3] = v30;
      v75[4] = v31;
      v75[5] = v32;
      v75[0] = v27;
      v75[1] = v28;
      sub_181AFE6A0(v75);
      v77[10] = v49;
      v78[0] = v50[0];
      *(v78 + 10) = *(v50 + 10);
      v77[6] = v45;
      v77[7] = v46;
      v77[9] = v48;
      v77[8] = v47;
      v77[2] = v41;
      v77[3] = v42;
      v77[5] = v44;
      v77[4] = v43;
      v77[1] = v40;
      v77[0] = v39;
      sub_181AFE6A0(v77);
    }
  }

  return v2;
}

void *sub_181FB76F0(void *a1, int64_t a2, char a3)
{
  result = sub_181FB8024(a1, a2, a3, *v3, &qword_1EA838918, &unk_182AE5FE8, &qword_1EA838920);
  *v3 = result;
  return result;
}

char *sub_181FB7730(char *a1, int64_t a2, char a3)
{
  result = sub_181FB7870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_181FB7750(void *a1, int64_t a2, char a3)
{
  result = sub_181FB7A8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB7770(char *a1, int64_t a2, char a3)
{
  result = sub_181FB7BD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_181FB7790(void *a1, int64_t a2, char a3)
{
  result = sub_181FB7CD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB77B0(char *a1, int64_t a2, char a3)
{
  result = sub_181FB7E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB77D0(char *a1, int64_t a2, char a3)
{
  result = sub_181FB7F14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_181FB77F0(void *a1, int64_t a2, char a3)
{
  result = sub_181FB8024(a1, a2, a3, *v3, &qword_1EA8388C8, &unk_182AE5F98, &qword_1EA8388D0);
  *v3 = result;
  return result;
}

char *sub_181FB7830(char *a1, int64_t a2, char a3)
{
  result = sub_181FB8158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB7850(char *a1, int64_t a2, char a3)
{
  result = sub_181FB8280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB7870(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_181FB7964(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_181FB7A8C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181FB7BD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_181FB7CD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A9B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181FB7E08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181FB7F14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_181FB8024(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_181FB8158(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181FB8280(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t ProtocolIdentifier.name.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return sub_181FB86BC(*(v0 + 8));
  }

  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProtocolIdentifier.init(name:level:mapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  *a5 = *a3;
  *(a5 + 1) = v8;

  result = sub_181FB974C();
  v10 = result;
  if (result != 39)
  {

    a2 = 0;
    a1 = v10;
  }

  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = v10 == 39;
  return result;
}

uint64_t ProtocolDefinition.protocolOptions()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v4 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  type metadata accessor for ProtocolOptions();
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *v1;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  sub_181F49A24(v7, v8, v9);
  (*(v2 + 64))(v3, v2);
  return ProtocolOptions.__allocating_init(protocolIdentifier:perProtocolOptions:)(&v11, v6);
}

uint64_t ProtocolDefinition.protocolMetadata(messageIdentifier:)(__int128 *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v13 = *a1;
  type metadata accessor for ProtocolMetadata();
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v14 = *v2;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  sub_181F49A24(v9, v10, v11);
  (*(v4 + 88))(v5, v4);
  return sub_181F4A410(&v14, v8, &v13);
}

unint64_t sub_181FB86BC(char a1)
{
  result = 0x66666F5F32706F61;
  switch(a1)
  {
    case 1:
      result = 1701602409;
      break;
    case 2:
      result = 0x74656B636F73;
      break;
    case 3:
      result = 0x74656E7265687465;
      break;
    case 4:
      result = 0x746163696C706572;
      break;
    case 5:
      result = 1953719668;
      break;
    case 6:
      result = 0x78756D6564;
      break;
    case 7:
      result = 7365492;
      break;
    case 8:
      result = 7365749;
      break;
    case 9:
      result = 0x64752D7466697773;
      break;
    case 10:
      result = 28777;
      break;
    case 11:
      result = 0x692D6D6F74737563;
      break;
    case 12:
      result = 0x736E617274626577;
      break;
    case 13:
      result = 0x3170747468;
      break;
    case 14:
      result = 0x3270747468;
      break;
    case 15:
      result = 0x3370747468;
      break;
    case 16:
      result = 0x6F6F635F70747468;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0x636E655F70747468;
      break;
    case 20:
      result = 0x6465725F70747468;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0x7465725F70747468;
      break;
    case 23:
      result = 0x6365735F70747468;
      break;
    case 24:
      result = 0x696E735F70747468;
      break;
    case 25:
      result = 0x707474686FLL;
      break;
    case 26:
      result = 0x6F632D707474686FLL;
      break;
    case 27:
      result = 0x696C635F70747468;
      break;
    case 28:
      result = 0x696F6A5F70747468;
      break;
    case 29:
      result = 0x73656D5F70747468;
      break;
    case 30:
      result = 0x73656F6873;
      break;
    case 31:
      result = 0x65757173616DLL;
      break;
    case 32:
      result = 0x6C5F65757173616DLL;
      break;
    case 33:
      result = 0x6E6F635F70747468;
      break;
    case 34:
      result = 0x75712D7466697773;
      break;
    case 35:
      result = 1667855729;
      break;
    case 36:
      result = 0x6E6F632D63697571;
      break;
    case 37:
      result = 7564404;
      break;
    case 38:
      result = 1886680168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_181FB8AEC()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_181FB86BC(v1);
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181FB8B50()
{
  sub_181FB86BC(*v0);
  sub_182AD30E8();
}

uint64_t sub_181FB8BA4()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_181FB86BC(v1);
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181FB8C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_181FB974C();
  *a1 = result;
  return result;
}

unint64_t sub_181FB8C34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_181FB86BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_181FB8C60()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_182AD44E8();
  if (v2)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v1);
    sub_182AD30E8();
  }

  return sub_182AD4558();
}

uint64_t sub_181FB8D00()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x1865DB070](1);

    return sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v1);
    sub_182AD30E8();
  }
}

uint64_t sub_181FB8DB0()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_182AD44E8();
  if (v2)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v1);
    sub_182AD30E8();
  }

  return sub_182AD4558();
}

uint64_t sub_181FB8E4C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if (a2[2])
    {
      v5 = a1[1];
      if (v3 == v4 && v5 == a2[1])
      {
        return 1;
      }

      else
      {
        return sub_182AD4268();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a2[2] & 1) == 0 && v3 == v4;
  }
}

uint64_t ProtocolIdentifier.hash(into:)()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v3 = v0[24];
  MEMORY[0x1865DB070](*v0);
  MEMORY[0x1865DB070](v1);
  if (v3)
  {
    MEMORY[0x1865DB070](1);

    return sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v2);
    sub_182AD30E8();
  }
}

uint64_t ProtocolIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[24];
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  MEMORY[0x1865DB070](v2);
  if (v4)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v3);
    sub_182AD30E8();
  }

  return sub_182AD4558();
}

uint64_t sub_181FB9040()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v3 = v0[24];
  MEMORY[0x1865DB070](*v0);
  MEMORY[0x1865DB070](v1);
  if (v3)
  {
    MEMORY[0x1865DB070](1);

    return sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v2);
    sub_182AD30E8();
  }
}

uint64_t sub_181FB9108()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[24];
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  MEMORY[0x1865DB070](v2);
  if (v4)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v3);
    sub_182AD30E8();
  }

  return sub_182AD4558();
}

unint64_t ProtocolDefinition.description.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return sub_181FB86BC(*(v0 + 8));
  }

  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProtocolDefinition.init(identifier:register:)@<X0>(__int16 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *(a1 + 24);
  v11 = type metadata accessor for ProtocolDefinition();
  *(a4 + *(v11 + 44)) = 0;
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  v12 = a4 + *(v11 + 40);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  return (*(a3 + 56))(a2, a3);
}

uint64_t ProtocolDefinition.init(name:multiplex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ProtocolDefinition();
  *(a6 + *(v12 + 44)) = 0;
  v13 = sub_181ADC1F8();
  v14 = a6 + *(v12 + 40);
  *v14 = v13;
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  if (!a2)
  {
    MEMORY[0x1EEE9AC00](v13);
    a1 = sub_182AD30D8();
    a2 = v16;
  }

  v17 = sub_181FB974C();
  if (v17 != 39)
  {

    a2 = 0;
    a1 = v17;
  }

  *a6 = 3;
  *(a6 + 1) = a3 & 1;
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = v17 == 39;
  return (*(a5 + 56))(a4, a5);
}

uint64_t static ProtocolDefinition.== infix(_:_:)(__int16 *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtocolDefinition() + 40);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 16);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 16);
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
LABEL_7:
      v17 = 0;
      return v17 & 1;
    }
  }

  else
  {
    v9 = *v7;
    v25 = *v5;
    LOBYTE(v26) = 0;
    if (v8)
    {
      goto LABEL_7;
    }

    v22 = v9;
    if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v25, &v22))
    {
      goto LABEL_7;
    }
  }

  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *(a1 + 24);
  LOWORD(v25) = v10;
  *(&v25 + 1) = v11;
  v26 = v12;
  v27 = v13;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  LOWORD(v22) = *a2;
  *(&v22 + 1) = v14;
  v23 = v15;
  v24 = v16;
  v17 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v25, &v22);
  v18 = *(&v22 + 1);
  v19 = v23;
  v20 = v24;
  sub_181F49A24(v11, v12, v13);
  sub_181F49A24(v14, v15, v16);
  sub_181F48350(v18, v19, v20);
  sub_181F48350(*(&v25 + 1), v26, v27);
  return v17 & 1;
}

uint64_t ProtocolDefinition.protocolMetadata(messageIdentifier:)(unint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  if (uuid_is_null(a1) == 1)
  {
    v9 = sub_181ADC1F8();
    v11 = v10;
  }

  else
  {
    v9 = *a1;
    v11 = a1[1];
  }

  type metadata accessor for ProtocolMetadata();
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v17 = *v2;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_181F49A24(v12, v13, v14);
  (*(v4 + 88))(v5, v4);
  *&v16 = v9;
  *(&v16 + 1) = v11;
  return sub_181F4A410(&v17, v8, &v16);
}

uint64_t sub_181FB974C()
{
  v0 = sub_182AD4398();

  if (v0 >= 0x27)
  {
    return 39;
  }

  else
  {
    return v0;
  }
}

uint64_t _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  if (a1[24])
  {
    if (!a2[24])
    {
      return 0;
    }

    v7 = *(a1 + 2);
    v8 = v5 == v6 && v7 == *(a2 + 2);
    if (!v8 && (sub_182AD4268() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v6)
    {
      v9 = a2[24];
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_181FB9838()
{
  result = qword_1EA8396E0;
  if (!qword_1EA8396E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8396E0);
  }

  return result;
}

unint64_t sub_181FB9890()
{
  result = qword_1EA8396E8;
  if (!qword_1EA8396E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8396E8);
  }

  return result;
}

unint64_t sub_181FB98E8()
{
  result = qword_1EA8396F0;
  if (!qword_1EA8396F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8396F0);
  }

  return result;
}

uint64_t sub_181FB9968(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_181FB99B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of NetworkProtocol.newPerProtocolOptions(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 72))();
}

{
  return (*(a3 + 80))();
}

uint64_t sub_181FB9A80(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v6 + 25) & ~v6) + v7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 25) & ~v6;
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v18 + v7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if ((v19 + 1) >= 2)
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

unsigned int *sub_181FB9BDC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v8 + 25) & ~v8) + v9) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v8 + 25) & ~v8) + v9) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((result + v8 + 25) & ~v8);
      if (v6 < 0x7FFFFFFE)
      {
        v20 = (result + v9) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *(v20 + 24) = 0;
          *(v20 + 24) = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v8 + 25) & ~v8) + v9) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v8 + 25) & ~v8) + v9) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v8 + 25) & ~v8) + v9) & 0xFFFFFFFFFFFFFFF8) + 32);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

unint64_t sub_181FB9DD8()
{
  result = qword_1EA839700;
  if (!qword_1EA839700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839700);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtocolIdentifier.Name.WellKnown(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtocolIdentifier.Name.WellKnown(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_181FB9F80()
{
  result = qword_1EA839708;
  if (!qword_1EA839708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839708);
  }

  return result;
}

uint64_t NWProtocolQUIC.Options.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = nw_quic_create_options();
  return v0;
}

uint64_t NWProtocolQUIC.Options.__allocating_init(alpn:)(uint64_t a1)
{
  type metadata accessor for NWProtocolQUIC.Options();
  v2 = swift_allocObject();
  *(v2 + 16) = nw_quic_create_options();

  sub_181FBC07C(a1);

  return v2;
}

uint64_t sub_181FBA104(uint64_t a1)
{
  sub_181FBC07C(a1);
}

uint64_t sub_181FBA13C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = (v1 + 16);
  v3 = *(v0 + 16);
  v7[4] = sub_181FBC0E8;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_181FBA338;
  v7[3] = &block_descriptor_8;
  v4 = _Block_copy(v7);

  nw_quic_iterate_tls_application_protocols(v3, v4);
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v2;

  return v5;
}

uint64_t sub_181FBA254(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_182AD3158();
    v5 = v4;
    swift_beginAccess();
    v6 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_181E59474(0, *(v6 + 2) + 1, 1, v6);
      *(a2 + 16) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_181E59474((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[16 * v9];
    *(v10 + 4) = v3;
    *(v10 + 5) = v5;
    *(a2 + 16) = v6;
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_181FBA338(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

void (*sub_181FBA388(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = (v5 + 16);
  v7 = *(v1 + 16);
  v4[4] = sub_181FBD5E0;
  v4[5] = v5;
  *v4 = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_181FBA338;
  v4[3] = &block_descriptor_5;
  v8 = _Block_copy(v4);

  nw_quic_iterate_tls_application_protocols(v7, v8);
  _Block_release(v8);
  swift_beginAccess();
  v9 = *v6;

  v4[6] = v9;
  return sub_181FBA4E8;
}

void sub_181FBA4E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    sub_181FBC07C(v4);
  }

  else
  {
    sub_181FBC07C(v3);
  }

  free(v2);
}

BOOL sub_181FBA5B0@<W0>(_BYTE *a1@<X8>)
{
  result = nw_quic_get_stream_is_unidirectional(*(v1 + 16));
  *a1 = result;
  return result;
}

void (*sub_181FBA5DC(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_quic_get_stream_is_unidirectional(v3);
  return sub_181FBA628;
}

void (*sub_181FBA664(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_quic_get_stream_is_datagram(v3);
  return sub_181FBA6B0;
}

void sub_181FBA6C8(uint64_t a1)
{
  v2 = 0xFFFFFFFFLL;
  if (a1 < 0xFFFFFFFFLL)
  {
    v2 = a1;
  }

  nw_quic_set_idle_timeout(*(v1 + 16), v2 & ~(v2 >> 63));
}

void (*sub_181FBA708(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_idle_timeout(v3);
  return sub_181FBA758;
}

void sub_181FBA758(uint64_t a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFFLL)
  {
    v1 = 0xFFFFFFFFLL;
  }

  nw_quic_set_idle_timeout(*(a1 + 8), v1 & ~(v1 >> 63));
}

void sub_181FBA778(uint64_t a1)
{
  v2 = 0xFFFFLL;
  if (a1 < 0xFFFF)
  {
    v2 = a1;
  }

  nw_quic_set_max_udp_payload_size(*(v1 + 16), v2 & ~(v2 >> 63));
}

void (*sub_181FBA7B8(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_max_udp_payload_size(v3);
  return sub_181FBA808;
}

void sub_181FBA808(uint64_t a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFF)
  {
    v1 = 0xFFFFLL;
  }

  nw_quic_set_max_udp_payload_size(*(a1 + 8), v1 & ~(v1 >> 63));
}

uint64_t sub_181FBA858(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_data(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBA8AC;
  }

  return result;
}

uint64_t sub_181FBA8F4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_stream_data_bidirectional_remote(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBA948;
  }

  return result;
}

uint64_t sub_181FBA990(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_stream_data_bidirectional_local(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBA9E4;
  }

  return result;
}

uint64_t sub_181FBAA2C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_stream_data_unidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBAA80;
  }

  return result;
}

uint64_t sub_181FBAAC8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_streams_bidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBAB1C;
  }

  return result;
}

uint64_t sub_181FBAB64(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_streams_unidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBABB8;
  }

  return result;
}

unint64_t *(*sub_181FBAC08(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_max_datagram_frame_size(v3);
  return sub_181FBAC58;
}

void *sub_181FBAC70(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(*result >> 16))
  {
    return a5(*(*a2 + 16), *result);
  }

  __break(1u);
  return result;
}

unint64_t sub_181FBACB4(unint64_t result, uint64_t (*a2)(void, void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    return a2(*(v2 + 16), result);
  }

  __break(1u);
  return result;
}

unint64_t *(*sub_181FBAD00(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_initial_packet_size(v3);
  return sub_181FBAD50;
}

unint64_t *sub_181FBAD68(unint64_t *result, char a2, uint64_t (*a3)(unint64_t, void))
{
  v3 = *result;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!(v3 >> 16))
    {
      return a3(result[1], v3);
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!(v3 >> 16))
  {
    return a3(result[1], v3);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t NWProtocolQUIC.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t NWProtocolQUIC.ApplicationError.reason.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NWProtocolQUIC.ApplicationError.init(integerLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t NWProtocolQUIC.ApplicationError.init(code:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t *sub_181FBAE50@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
  return result;
}

uint64_t sub_181FBAE68()
{
  v1 = nw_quic_copy_sec_protocol_metadata(*(v0 + 16));
  negotiated_protocol = sec_protocol_metadata_get_negotiated_protocol(v1);
  swift_unknownObjectRelease();
  if (negotiated_protocol)
  {
    return sub_182AD3158();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181FBAED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  application_error = nw_quic_get_application_error(*(*a1 + 16));
  result = nw_quic_get_application_error_reason(*(v3 + 16));
  if (result)
  {
    result = sub_182AD3158();
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  *a2 = application_error;
  a2[1] = result;
  a2[2] = v6;
  return result;
}

uint64_t sub_181FBAF30(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  if (a1[2])
  {
    v4 = (sub_182AD3048() + 32);
  }

  else
  {
    v4 = 0;
  }

  nw_quic_set_application_error(v3, v2, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_181FBAFC4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  if (a1[2])
  {
    v4 = (sub_182AD3048() + 32);
  }

  else
  {
    v4 = 0;
  }

  nw_quic_set_application_error(v3, v2, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_181FBB048@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  application_error = nw_quic_get_application_error(v3);
  result = nw_quic_get_application_error_reason(v3);
  if (result)
  {
    result = sub_182AD3158();
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  *a1 = application_error;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

uint64_t (*sub_181FBB0A0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[3] = v3;
  application_error = nw_quic_get_application_error(v3);
  application_error_reason = nw_quic_get_application_error_reason(v3);
  if (application_error_reason)
  {
    application_error_reason = sub_182AD3158();
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  *a1 = application_error;
  a1[1] = application_error_reason;
  a1[2] = v6;
  return sub_181FBB118;
}

uint64_t sub_181FBB118(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  if (a2)
  {
    if (v4)
    {
      v5 = (sub_182AD3048() + 32);
    }

    else
    {
      v5 = 0;
    }

    v7 = *(a1 + 24);

    nw_quic_set_application_error(v7, v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    if (v4)
    {
      v6 = (sub_182AD3048() + 32);
    }

    else
    {
      v6 = 0;
    }

    nw_quic_set_application_error(*(a1 + 24), v3, v6);
    swift_unknownObjectRelease();
  }
}

void (*sub_181FBB208(uint64_t *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_stream_application_error(v3);
  return sub_181FBB254;
}

uint64_t sub_181FBB290(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_local_max_streams_unidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBB2E4;
  }

  return result;
}

uint64_t sub_181FBB344(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_local_max_streams_bidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBB398;
  }

  return result;
}

uint64_t (*sub_181FBB418(uint64_t a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  *(a1 + 16) = v3;
  keepalive_interval = nw_quic_get_keepalive_interval(v3);
  v5 = keepalive_interval;
  if (keepalive_interval)
  {
    v6 = 0;
  }

  else
  {
    v5 = 1;
    v6 = 1;
  }

  if (keepalive_interval == 0xFFFF)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (keepalive_interval == 0xFFFF)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  return sub_181FBB490;
}

void sub_181FBB504(char *a1)
{
  v2 = *a1;
  *(v1 + 24) = *a1;
  nw_quic_stream_set_is_unidirectional(*(v1 + 16), v2);
}

void (*sub_181FBB520(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return sub_181FBB54C;
}

void sub_181FBB54C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  *(v1 + 24) = v2;
  nw_quic_stream_set_is_unidirectional(*(v1 + 16), v2);
}

double sub_181FBB560()
{
  v1 = nw_quic_stream_copy_shared_connection_options(*(v0 + 16));
  type metadata accessor for NWProtocolQUICConnection.Options();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 16) = v1;
  return result;
}

double sub_181FBB5B0(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 16) = a1;
  return result;
}

uint64_t NWProtocolQUICStream.Options.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 16) = nw_quic_create_stream_options();
  return v0;
}

uint64_t NWProtocolQUICStream.Options.init()()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = nw_quic_create_stream_options();
  return v0;
}

uint64_t sub_181FBB674(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t NWProtocolQUICStream.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void (*sub_181FBB728(uint64_t *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_stream_get_application_error(v3);
  return sub_181FBB774;
}

void sub_181FBB7A8(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v4 = a2();
  type metadata accessor for NWProtocolDefinition();
  v5 = swift_allocObject();
  v5[4] = v4;
  v6 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v7 = sub_182AD2F88();
  v9 = v8;

  v5[2] = v7;
  v5[3] = v9;
  *a3 = v5;
}

void sub_181FBB870(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = 0xFFFFFFFFLL;
  if (a1 < 0xFFFFFFFFLL)
  {
    v2 = a1;
  }

  nw_quic_connection_set_idle_timeout(*(v1 + 16), v2 & ~(v2 >> 63));
}

void (*sub_181FBB89C(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 24);
  a1[1] = v1;
  return sub_181FBB8C4;
}

void sub_181FBB8C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(v1 + 24) = *a1;
  v3 = *(v1 + 16);
  v4 = 0xFFFFFFFFLL;
  if (v2 < 0xFFFFFFFFLL)
  {
    v4 = v2;
  }

  nw_quic_connection_set_idle_timeout(v3, v4 & ~(v4 >> 63));
}

void sub_181FBB8E8(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = 0xFFFFLL;
  if (a1 < 0xFFFF)
  {
    v2 = a1;
  }

  nw_quic_connection_set_max_udp_payload_size(*(v1 + 16), v2 & ~(v2 >> 63));
}

void (*sub_181FBB914(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 32);
  a1[1] = v1;
  return sub_181FBB93C;
}

void sub_181FBB93C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(v1 + 32) = *a1;
  v3 = *(v1 + 16);
  v4 = 0xFFFFLL;
  if (v2 < 0xFFFF)
  {
    v4 = v2;
  }

  nw_quic_connection_set_max_udp_payload_size(v3, v4 & ~(v4 >> 63));
}

void sub_181FBB960(uint64_t a1)
{
  *(v1 + 40) = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_data(*(v1 + 16), a1);
  }
}

void (*sub_181FBB980(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 40);
  a1[1] = v1;
  return sub_181FBB9A8;
}

void sub_181FBB9A8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v4 + 40) = *a1;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_data(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBB9D0(uint64_t a1)
{
  *(v1 + 48) = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(*(v1 + 16), a1);
  }
}

void (*sub_181FBB9F0(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 48);
  a1[1] = v1;
  return sub_181FBBA18;
}

void sub_181FBBA18(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v4 + 48) = *a1;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBBA40(uint64_t a1)
{
  *(v1 + 56) = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_bidirectional_local(*(v1 + 16), a1);
  }
}

void (*sub_181FBBA60(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 56);
  a1[1] = v1;
  return sub_181FBBA88;
}

void sub_181FBBA88(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v4 + 56) = *a1;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_stream_data_bidirectional_local(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBBAB0(uint64_t a1)
{
  *(v1 + 64) = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_unidirectional(*(v1 + 16), a1);
  }
}

void (*sub_181FBBAD0(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 64);
  a1[1] = v1;
  return sub_181FBBAF8;
}

void sub_181FBBAF8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v4 + 64) = *a1;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_stream_data_unidirectional(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBBB20(uint64_t a1)
{
  *(v1 + 72) = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_streams_bidirectional(*(v1 + 16), a1);
  }
}

void (*sub_181FBBB40(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 72);
  a1[1] = v1;
  return sub_181FBBB68;
}

void sub_181FBBB68(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v4 + 72) = *a1;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_streams_bidirectional(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBBB90(uint64_t a1)
{
  *(v1 + 80) = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_streams_unidirectional(*(v1 + 16), a1);
  }
}

void (*sub_181FBBBB0(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 80);
  a1[1] = v1;
  return sub_181FBBBD8;
}

void sub_181FBBBD8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v4 + 80) = *a1;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_streams_unidirectional(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t NWProtocolQUICConnection.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_181FBBC68()
{
  result = nw_quic_connection_copy_stream_metadata(*(v0 + 16));
  if (result)
  {
    v2 = result;
    type metadata accessor for NWProtocolQUICConnection.Metadata();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  return result;
}

unint64_t sub_181FBBCD8(unint64_t *a1)
{
  a1[1] = *(v1 + 16);
  result = nw_quic_connection_get_max_streams_unidirectional();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBBD2C;
  }

  return result;
}

unint64_t sub_181FBBD74(unint64_t *a1)
{
  a1[1] = *(v1 + 16);
  result = nw_quic_connection_get_max_streams_bidirectional();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBBDC8;
  }

  return result;
}

uint64_t *sub_181FBBDE0(uint64_t *result, char a2, uint64_t (*a3)(uint64_t))
{
  v4 = *result;
  if (a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      return a3(result[1]);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    return a3(result[1]);
  }

  __break(1u);
  return result;
}

uint64_t sub_181FBBE20(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181FBBE6C(uint64_t result, uint64_t (*a2)(void, uint64_t))
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2(*(v2 + 16), result);
  }

  __break(1u);
  return result;
}

uint64_t sub_181FBBEA0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1(*(v2 + 16));
  v5 = result;
  if (result == 0xFFFF)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (result)
  {
    v7 = v6;
  }

  else
  {
    v5 = 1;
    v7 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_181FBBF18(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *result;
  if (*(result + 8) == 1)
  {
    v4 = *(v2 + 16);
    if (v3)
    {
      return a2(v4, 0);
    }

    else
    {
      return a2(v4, 0xFFFFLL);
    }
  }

  else if (v3 >= 0xFFFF)
  {
    return a2(*(v2 + 16), 65534);
  }

  else if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    return a2(*(v2 + 16), *result);
  }

  return result;
}

uint64_t (*sub_181FBBF80(uint64_t a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  *(a1 + 16) = v3;
  keepalive = nw_quic_connection_get_keepalive(v3);
  v5 = keepalive;
  if (keepalive)
  {
    v6 = 0;
  }

  else
  {
    v5 = 1;
    v6 = 1;
  }

  if (keepalive == 0xFFFF)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (keepalive == 0xFFFF)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  return sub_181FBBFF8;
}

uint64_t sub_181FBC010(uint64_t result, char a2, uint64_t (*a3)(void, void))
{
  v3 = *result;
  v4 = *(result + 8);
  if (a2)
  {
    if (*(result + 8))
    {
      goto LABEL_7;
    }

    v4 = 0xFFFF;
    if (v3 >= 0xFFFF)
    {
      v5 = -2;
      return a3(*(result + 16), v5);
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    return a3(*(result + 16), v5);
  }

  v5 = -2;
  if (v3 > 65534)
  {
    return a3(*(result + 16), v5);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
LABEL_12:
    v5 = v3;
    return a3(*(result + 16), v5);
  }

  __break(1u);
  return result;
}

void sub_181FBC07C(uint64_t a1)
{
  v3 = *(v1 + 16);
  nw_quic_clear_tls_application_protocols(v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 40;
    do
    {
      v6 = sub_182AD3048();
      nw_quic_add_tls_application_protocol(v3, (v6 + 32));

      v5 += 16;
      --v4;
    }

    while (v4);
  }
}

unint64_t sub_181FBC13C()
{
  result = qword_1EA839728;
  if (!qword_1EA839728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839728);
  }

  return result;
}

unint64_t sub_181FBC1A0()
{
  result = qword_1EA839730;
  if (!qword_1EA839730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839730);
  }

  return result;
}

uint64_t keypath_get_32Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*(*a1 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void *keypath_set_33Tm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((*result & 0x8000000000000000) == 0)
  {
    return a5(*(*a2 + 16));
  }

  __break(1u);
  return result;
}

uint64_t keypath_get_56Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*(*a1 + 16));
  if (result)
  {
    if (result == 0xFFFF)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v5 = result;
    }
  }

  else
  {
    v5 = 1;
    v6 = 1;
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_set_57Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t sub_181FBD5F8()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA836B70);
  v1 = __swift_project_value_buffer(v0, qword_1EA836B70);
  if (qword_1EA836BD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EA8431B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_181FBD6C0()
{
  v0 = sub_182AD2698();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_182AD2618();
  __swift_allocate_value_buffer(v4, qword_1EA839738);
  __swift_project_value_buffer(v4, qword_1EA839738);
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EA836B70);
  (*(v1 + 16))(v3, v5, v0);
  return sub_182AD25F8();
}

uint64_t sub_181FBD7FC()
{
  type metadata accessor for NWActorSystem();
  v0 = swift_allocObject();
  result = NWActorSystem.init()();
  qword_1EA839750 = v0;
  return result;
}

uint64_t NWActorSystem.__allocating_init()()
{
  v0 = swift_allocObject();
  NWActorSystem.init()();
  return v0;
}

uint64_t NWActorSystem.disableCompression.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_181FBD958()
{
  v1 = type metadata accessor for NWActorSystem.ServerRole();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181FCDFD4(v0, v3, type metadata accessor for NWActorSystem.ServerRole);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839798) + 48);
    v5 = 0x6E616D6564206E6FLL;
  }

  else
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839788) + 48);
    v8 = 0;
    v9 = 0xE000000000000000;
    v7[0] = *v3;
    MEMORY[0x1865D9CA0](0x6F74656C676E6973, 0xEB0000000028206ELL);
    v7[1] = v7[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8397D8);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v5 = v8;
  }

  sub_181F49A88(v3 + v4, &unk_1EA8397E0);
  return v5;
}

uint64_t static NWActorSystem.remoteCallActivity.getter()
{
  if (qword_1EA837100 != -1)
  {
    swift_once();
  }

  sub_182AD46C8();
  return v1;
}

uint64_t NWActorSystem.listener.getter()
{
  v1 = *(v0 + 144);
  os_unfair_lock_lock(v1 + 4);
  sub_181FCCB84(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_181FBDC34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  swift_allocObject();
  result = sub_182AD46B8();
  *a4 = result;
  return result;
}

uint64_t NWActorSystem.init()()
{
  v10[0] = sub_182AD3918();
  v1 = *(v10[0] - 8);
  MEMORY[0x1EEE9AC00](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  *(v6 + 16) = 0;
  *(v0 + 144) = v6;
  *(v0 + 152) = v7;
  *(v0 + 160) = v7;
  *(v0 + 168) = v7;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 192) = MEMORY[0x1E69E7CC0];
  *(v0 + 200) = v7;
  *(v0 + 208) = v7;
  sub_181AA2FA8();
  sub_182AD27B8();
  v10[1] = v8;
  sub_181FCE110(&unk_1EA836B40, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70);
  sub_181FCCB9C();
  sub_182AD3AC8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10[0]);
  *(v0 + 216) = sub_182AD3938();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0x8000000000000000;
  return v0;
}

uint64_t NWActorSystem.__allocating_init(service:parameters:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NWActorSystem.init(service:parameters:)(a1, a2);
  return v4;
}

uint64_t NWActorSystem.init(service:parameters:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v49 = sub_182AD3918();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = *a1;
  v10 = *(a1 + 1);
  v47 = *(a1 + 3);
  v48 = v10;
  v45 = *(a1 + 7);
  v46 = *(a1 + 5);
  v43 = *(a1 + 11);
  v44 = *(a1 + 9);
  v41 = *(a1 + 106);
  v40 = *(a1 + 52);
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC8];
  *(v11 + 16) = 0;
  *(v2 + 144) = v11;
  *(v2 + 152) = v12;
  *(v2 + 160) = v12;
  *(v2 + 168) = v12;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v2 + 192) = MEMORY[0x1E69E7CC0];
  *(v2 + 200) = v12;
  *(v2 + 208) = v12;
  sub_181AA2FA8();
  sub_182AD27B8();
  aBlock[0] = v13;
  sub_181FCE110(&unk_1EA836B40, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70);
  sub_181FCCB9C();
  sub_182AD3AC8();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v49);
  *(v2 + 216) = sub_182AD3938();
  v14 = *(v50 + 16);
  os_unfair_lock_lock((v14 + 24));
  v15 = nw_parameters_copy(*(v14 + 16));
  type metadata accessor for NWParameters();
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  v18 = (v17 + 24);
  *(v17 + 16) = v15;
  v49 = v16;
  *(v16 + 16) = v17;
  os_unfair_lock_unlock((v14 + 24));
  if (qword_1EA836BC8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EA8431A8;
  type metadata accessor for NWProtocolFramer.Options();
  v20 = swift_allocObject();
  *(v20 + 16) = nw_framer_create_options(*(v19 + 32));
  os_unfair_lock_lock(v18);
  v21 = nw_parameters_copy_default_protocol_stack(*(v17 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v23 = (inited + 24);
  *(inited + 16) = v21;
  v24 = (inited + 16);
  os_unfair_lock_unlock(v18);
  os_unfair_lock_lock(v23);
  v52 = MEMORY[0x1E69E7CC0];
  v25 = swift_allocObject();
  *(v25 + 16) = &v52;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_181EC65E4;
  *(v26 + 24) = v25;
  aBlock[4] = sub_181EC63B0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181EC635C;
  aBlock[3] = &block_descriptor_9;
  v27 = _Block_copy(aBlock);

  nw_protocol_stack_iterate_application_protocols(v21, v27);
  _Block_release(v27);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v23);
    aBlock[0] = v52;
    if (!(v52 >> 62))
    {
      goto LABEL_5;
    }
  }

  if ((sub_182AD3EB8() & 0x8000000000000000) == 0)
  {
LABEL_5:

    sub_181FCCE80(0, 0, v20, sub_18206A4F8);

    v29 = aBlock[0];
    MEMORY[0x1EEE9AC00](v28);
    *(&v40 - 2) = v29;
    os_unfair_lock_lock(v23);
    sub_181C2D914(v24);
    os_unfair_lock_unlock(v23);

    if (qword_1EA836B68 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_6:
  v30 = v40 | (v41 << 16);
  v31 = sub_182AD2698();
  __swift_project_value_buffer(v31, qword_1EA836B70);
  v32 = sub_182AD2678();
  v33 = sub_182AD38A8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_181A37000, v32, v33, "Inserted Actor WireProtocol framer", v34, 2u);
    MEMORY[0x1865DF520](v34, -1, -1);
  }

  *(v3 + 24) = v42 & 0xFFFFFFFFFFFFFF9;
  v35 = v49 & 0xFFFFFFFFFFFFFF8;
  v36 = v47;
  *(v3 + 32) = v48;
  *(v3 + 48) = v36;
  v37 = v45;
  *(v3 + 64) = v46;
  *(v3 + 80) = v37;
  v38 = v43;
  *(v3 + 96) = v44;
  *(v3 + 112) = v38;
  *(v3 + 128) = *&v30 & 0xFFFF01;
  *(v3 + 136) = v35;
  return v3;
}

uint64_t NWActorSystem.__allocating_init(parameters:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NWActorSystem.init(parameters:)(a1);
  return v2;
}

uint64_t NWActorSystem.init(parameters:)(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v32 = sub_182AD3918();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 16) = 0;
  *(v1 + 144) = v8;
  *(v1 + 152) = v9;
  *(v1 + 160) = v9;
  *(v1 + 168) = v9;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + 192) = MEMORY[0x1E69E7CC0];
  *(v1 + 200) = v9;
  *(v1 + 208) = v9;
  sub_181AA2FA8();
  sub_182AD27B8();
  aBlock[0] = v10;
  sub_181FCE110(&unk_1EA836B40, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70);
  sub_181FCCB9C();
  sub_182AD3AC8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v32);
  *(v1 + 216) = sub_182AD3938();
  v11 = *(v33 + 16);
  os_unfair_lock_lock((v11 + 24));
  v12 = nw_parameters_copy(*(v11 + 16));
  type metadata accessor for NWParameters();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  v15 = (v14 + 24);
  *(v14 + 16) = v12;
  v32 = v13;
  *(v13 + 16) = v14;
  os_unfair_lock_unlock((v11 + 24));
  if (qword_1EA836BC8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EA8431A8;
  type metadata accessor for NWProtocolFramer.Options();
  v17 = swift_allocObject();
  *(v17 + 16) = nw_framer_create_options(*(v16 + 32));
  os_unfair_lock_lock(v15);
  v18 = nw_parameters_copy_default_protocol_stack(*(v14 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v20 = (inited + 24);
  *(inited + 16) = v18;
  v21 = (inited + 16);
  os_unfair_lock_unlock(v15);
  os_unfair_lock_lock(v20);
  v35 = MEMORY[0x1E69E7CC0];
  v22 = swift_allocObject();
  *(v22 + 16) = &v35;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_181EC65EC;
  *(v23 + 24) = v22;
  aBlock[4] = sub_181FCE6B4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181EC635C;
  aBlock[3] = &block_descriptor_14;
  v24 = _Block_copy(aBlock);

  nw_protocol_stack_iterate_application_protocols(v18, v24);
  _Block_release(v24);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v20);
    aBlock[0] = v35;
    if (!(v35 >> 62))
    {
      goto LABEL_5;
    }
  }

  if ((sub_182AD3EB8() & 0x8000000000000000) == 0)
  {
LABEL_5:

    sub_181FCCE80(0, 0, v17, sub_18206A4F8);

    v26 = aBlock[0];
    MEMORY[0x1EEE9AC00](v25);
    *(&v32 - 2) = v26;
    os_unfair_lock_lock(v20);
    sub_181C4E3C0(v21);
    os_unfair_lock_unlock(v20);

    if (qword_1EA836B68 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_6:
  v27 = sub_182AD2698();
  __swift_project_value_buffer(v27, qword_1EA836B70);
  v28 = sub_182AD2678();
  v29 = sub_182AD38A8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_181A37000, v28, v29, "Inserted Actor WireProtocol framer", v30, 2u);
    MEMORY[0x1865DF520](v30, -1, -1);
  }

  *(v2 + 24) = v32 & 0xFFFFFFFFFFFFFF9;
  *(v2 + 128) = xmmword_182AED500;
  return v2;
}

uint64_t NWActorSystem.publish<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_181FBEDA0, 0, 0);
}

uint64_t sub_181FBEDA0()
{
  v11 = *(v0 + 32);
  *(v0 + 16) = v11;
  v1 = *(v0 + 24);
  swift_getMetatypeMetadata();
  v2 = sub_182AD3018();
  v4 = v3;
  *(v0 + 56) = v3;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = v11;
  *(v5 + 32) = v1;
  sub_181FBF788();
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  v7[2] = sub_181FCCF80;
  v7[3] = v5;
  v7[4] = v6;
  v7[5] = v2;
  v7[6] = v4;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v6;
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_181FBEF84;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_181FBEF84()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_181FBF120;
  }

  else
  {

    v2 = sub_181FBF0BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FBF0BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FBF120()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FBF1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839788) + 48);
  v9 = *(a3 + 8);
  *a4 = a2;
  *(a4 + 1) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&a4[v8], a1, v10);
  (*(v11 + 56))(&a4[v8], 0, 1, v10);
  type metadata accessor for NWActorSystem.ServerRole();
  swift_storeEnumTagMultiPayload();

  return swift_unknownObjectRetain();
}

uint64_t NWActorSystem.publishAndWaitForReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for NWActorSystem.ServerRole();
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FBF340, 0, 0);
}

uint64_t sub_181FBF340()
{
  v0[2] = v0[4];
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  swift_getMetatypeMetadata();
  v5 = sub_182AD3018();
  v7 = v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839788) + 48);
  v9 = *(v3 + 8);
  *v1 = v4;
  *(v1 + 1) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  (*(*(v10 - 8) + 56))(&v1[v8], 1, 1, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v2 + 144);
  v12 = swift_task_alloc();
  v12[2] = v2;
  v12[3] = v5;
  v12[4] = v7;
  v12[5] = v1;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_181FCD0AC;
  *(v13 + 24) = v12;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v11 + 4);
  sub_181FCD0CC();
  v14 = v0[8];
  os_unfair_lock_unlock(v11 + 4);

  sub_181FCE158(v14, type metadata accessor for NWActorSystem.ServerRole);

  sub_181FBF788();
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_181FBF610;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_181FBF610()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_181FBF724;
  }

  else
  {
    v2 = sub_181FBF0BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FBF724()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_181FBF788()
{
  v2 = v0;
  v3 = *(v0 + 144);
  os_unfair_lock_lock(v3 + 4);
  sub_181FCE618(&v12);
  os_unfair_lock_unlock(v3 + 4);
  if (!v1 && v12)
  {
    if (qword_1EA836B68 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA836B70);

    v5 = sub_182AD2678();
    v6 = sub_182AD38D8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      type metadata accessor for NWListener();

      v9 = sub_182AD3038();
      v11 = sub_181C64FFC(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_181A37000, v5, v6, "Starting listener: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1865DF520](v8, -1, -1);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    NWListener.start(queue:)(*(v2 + 216));
  }
}

uint64_t sub_181FBF974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8397E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  v10 = *(a2 + 144);
  v18 = a2;
  v19 = a1;
  v15 = sub_181FCE600;
  v16 = &v17;
  os_unfair_lock_lock(v10 + 4);
  sub_181FCE69C();
  os_unfair_lock_unlock(v10 + 4);
  sub_181AB5D28(v9, v6, &unk_1EA8397E0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_181F49A88(v9, &unk_1EA8397E0);
    return sub_181F49A88(v6, &unk_1EA8397E0);
  }

  else
  {
    sub_182AD34C8();
    sub_181F49A88(v9, &unk_1EA8397E0);
    return (*(v12 + 8))(v6, v11);
  }
}

uint64_t NWActorSystem.publish<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181FBFB84, 0, 0);
}

uint64_t sub_181FBFB84()
{
  v11 = *(v0 + 40);
  *(v0 + 16) = v11;
  swift_getMetatypeMetadata();
  v10 = *(v0 + 24);
  v1 = sub_182AD3018();
  v3 = v2;
  *(v0 + 64) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v11;
  *(v4 + 32) = v10;
  sub_181FBF788();
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v6[2] = sub_181FCD0FC;
  v6[3] = v4;
  v6[4] = v5;
  v6[5] = v1;
  v6[6] = v3;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_181FBFD68;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_181FBFD68()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_181FBFF04;
  }

  else
  {

    v2 = sub_181FBFEA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FBFEA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FBFF04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FBFF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839798) + 48);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a2;
  v13[5] = a3;
  *a6 = sub_181FCE680;
  *(a6 + 1) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v15 = *(v14 - 8);
  (*(v15 + 16))(&a6[v12], a1, v14);
  (*(v15 + 56))(&a6[v12], 0, 1, v14);
  type metadata accessor for NWActorSystem.ServerRole();
  swift_storeEnumTagMultiPayload();
}

uint64_t NWActorSystem.publishAndWaitForReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = type metadata accessor for NWActorSystem.ServerRole();
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC0160, 0, 0);
}

uint64_t sub_181FC0160()
{
  v17 = *(v0 + 40);
  *(v0 + 16) = v17;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_getMetatypeMetadata();
  v5 = sub_182AD3018();
  v7 = v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839798) + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = v17;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *v1 = sub_181FCD108;
  v1[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  (*(*(v10 - 8) + 56))(v1 + v8, 1, 1, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v2 + 144);
  v12 = swift_task_alloc();
  v12[2] = v2;
  v12[3] = v5;
  v12[4] = v7;
  v12[5] = v1;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_181FCE5B4;
  *(v13 + 24) = v12;

  os_unfair_lock_lock(v11 + 4);
  sub_181FCE69C();
  v14 = *(v0 + 72);
  os_unfair_lock_unlock(v11 + 4);

  sub_181FCE158(v14, type metadata accessor for NWActorSystem.ServerRole);

  sub_181FBF788();
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_181FC0464;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_181FC0464()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_181FC0578;
  }

  else
  {
    v2 = sub_181FBFEA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC0578()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FC05DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8397E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  v10 = *(a2 + 144);
  v18 = a2;
  v19 = a1;
  v15 = sub_181FCE390;
  v16 = &v17;
  os_unfair_lock_lock(v10 + 4);
  sub_181FCE69C();
  os_unfair_lock_unlock(v10 + 4);
  sub_181AB5D28(v9, v6, &unk_1EA8397E0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_181F49A88(v9, &unk_1EA8397E0);
    return sub_181F49A88(v6, &unk_1EA8397E0);
  }

  else
  {
    sub_182AD34C8();
    sub_181F49A88(v9, &unk_1EA8397E0);
    return (*(v12 + 8))(v6, v11);
  }
}

uint64_t sub_181FC07C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(v7 + 16);
  if (*(a1 + 184) == 1)
  {
    v11(a3, a2, v6, v8);
    return (*(v7 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v11(v10, a2, v6, v8);
    v13 = *(a1 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 192) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_181F5A458(0, v13[2] + 1, 1, v13);
      *(a1 + 192) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_181F5A458(v15 > 1, v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v10, v6);
    *(a1 + 192) = v13;
    return (*(v7 + 56))(a3, 1, 1, v6);
  }
}

uint64_t NWActorSystem.invalidateActor<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = a1;
  sub_182AD3BD8();
  NWActorSystem.resignID(_:)(v4);
  return sub_181FCE158(v4, type metadata accessor for NWActorID);
}

uint64_t NWActorSystem.resignID(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA836B70);
  sub_181FCDFD4(a1, v6, type metadata accessor for NWActorID);
  v8 = sub_182AD2678();
  v9 = sub_182AD38D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *&v27 = 0;
    *v10 = 136315138;
    *(&v27 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v27 = 0x49726F746341574ELL;
    *(&v27 + 1) = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v6, v6[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_182AD2258();
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
    v12 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v12);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v13 = v27;
    sub_181FCE158(v6, type metadata accessor for NWActorID);
    v14 = sub_181C64FFC(v13, *(&v13 + 1), &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "Resign actor: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {

    v15 = sub_181FCE158(v6, type metadata accessor for NWActorID);
  }

  v16 = *(v2 + 144);
  MEMORY[0x1EEE9AC00](v15);
  *(&v26 - 2) = v2;
  *(&v26 - 1) = a1;
  MEMORY[0x1EEE9AC00](v17);
  *(&v26 - 2) = sub_181FCD114;
  *(&v26 - 1) = v18;
  os_unfair_lock_lock(v16 + 4);
  sub_181FCE618(&v27);
  os_unfair_lock_unlock(v16 + 4);
  if (v27)
  {

    sub_18214FECC();
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v26 - 2) = v2;
  *(&v26 - 1) = a1;
  MEMORY[0x1EEE9AC00](v20);
  *(&v26 - 2) = sub_181FCE5D0;
  *(&v26 - 1) = v21;
  os_unfair_lock_lock(v16 + 4);
  sub_181FCD130(&v27);
  os_unfair_lock_unlock(v16 + 4);
  v22 = v27;
  if (v27)
  {
    v23 = *(&v27 + 1);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    *&v27 = 0;
    sub_181AA39C0(v22);

    v22(&v27);

    sub_181A554F4(v22);
    v22 = sub_181FCD148;
  }

  sub_181FC1468(*a1, *(a1 + 8), 0);
  sub_181A554F4(v22);
}

uint64_t sub_181FC0EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_181FC0F20, 0, 0);
}

uint64_t sub_181FC0F20()
{
  v1 = *(v0 + 56);
  v7 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v7;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_181FC1030;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000027, 0x8000000182BD6C90, sub_181FCE3DC, v2, v5);
}

uint64_t sub_181FC1030()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FC116C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_181FC116C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FC11D0(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for NWActorSystem.ServerRole();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  a2(a1, v12);
  v15 = *(a4 + 144);
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = v14;
  v18 = sub_181FCE5B4;
  v19 = &v20;
  os_unfair_lock_lock(v15 + 4);
  sub_181FCE69C();
  os_unfair_lock_unlock(v15 + 4);
  return sub_181FCE158(v14, type metadata accessor for NWActorSystem.ServerRole);
}

void sub_181FC1300(uint64_t a1, unint64_t a2)
{
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v4 = sub_182AD2698();
  __swift_project_value_buffer(v4, qword_1EA836B70);

  v5 = sub_182AD2678();
  v6 = sub_182AD38D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_181C64FFC(a1, a2, &v9);
    _os_log_impl(&dword_181A37000, v5, v6, "Publish task was canceled for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1865DF520](v8, -1, -1);
    MEMORY[0x1865DF520](v7, -1, -1);
  }

  sub_181FC1468(a1, a2, 0);
}

void sub_181FC1468(uint64_t a1, unint64_t a2, void *a3)
{
  v75 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8397E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839830);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v65 - v16;
  v18 = type metadata accessor for NWActorSystem.ServerRole();
  v70 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v65 - v22;
  if (qword_1EA836B68 != -1)
  {
    v64 = v21;
    swift_once();
    v21 = v64;
  }

  v71 = v21;
  v23 = sub_182AD2698();
  v24 = __swift_project_value_buffer(v23, qword_1EA836B70);

  v73 = v24;
  v25 = sub_182AD2678();
  v26 = sub_182AD38D8();

  v27 = os_log_type_enabled(v25, v26);
  v69 = v12;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v77[0] = v29;
    *v28 = 136315138;
    v30 = v75;
    *(v28 + 4) = sub_181C64FFC(v75, a2, v77);
    _os_log_impl(&dword_181A37000, v25, v26, "Cleaning up server for %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1865DF520](v29, -1, -1);
    MEMORY[0x1865DF520](v28, -1, -1);
  }

  else
  {

    v30 = v75;
  }

  v32 = *(v76 + 144);
  MEMORY[0x1EEE9AC00](v31);
  *(&v65 - 4) = v33;
  *(&v65 - 3) = v30;
  v67 = a2;
  *(&v65 - 2) = a2;
  MEMORY[0x1EEE9AC00](v34);
  *(&v65 - 2) = sub_181FCE1FC;
  *(&v65 - 1) = v35;
  os_unfair_lock_lock(v32 + 4);
  sub_181FCD0CC();
  os_unfair_lock_unlock(v32 + 4);
  if ((*(v70 + 48))(v17, 1, v71) != 1)
  {
    v41 = v72;
    sub_181FCE30C(v17, v72, type metadata accessor for NWActorSystem.ServerRole);
    v42 = v41;
    v43 = v66;
    sub_181FCDFD4(v42, v66, type metadata accessor for NWActorSystem.ServerRole);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v44 = &qword_1EA839798;
    }

    else
    {
      swift_unknownObjectRelease();
      v44 = &qword_1EA839788;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v44);
    v46 = v68;
    v47 = v69;
    v48 = v43;
    v49 = v75;
    v40 = v76;
    sub_181B7D08C(v48 + *(v45 + 48), v68, &unk_1EA8397E0);
    sub_181FCC120(v49, v67);
    v50 = (v74 + 48);
    if (a3)
    {
      sub_181AB5D28(v46, v47, &unk_1EA8397E0);
      if ((*v50)(v47, 1, v5) != 1)
      {
        v77[0] = a3;
        v51 = a3;
        sub_182AD34B8();
LABEL_19:
        sub_181F49A88(v46, &unk_1EA8397E0);
        sub_181FCE158(v72, type metadata accessor for NWActorSystem.ServerRole);
        v39 = (*(v74 + 8))(v47, v5);
        goto LABEL_20;
      }
    }

    else
    {
      v47 = v65;
      sub_181AB5D28(v46, v65, &unk_1EA8397E0);
      if ((*v50)(v47, 1, v5) != 1)
      {
        sub_182AD34C8();
        goto LABEL_19;
      }
    }

    sub_181F49A88(v46, &unk_1EA8397E0);
    sub_181FCE158(v72, type metadata accessor for NWActorSystem.ServerRole);
    v39 = sub_181F49A88(v47, &unk_1EA8397E0);
    goto LABEL_20;
  }

  sub_181F49A88(v17, &qword_1EA839830);
  v36 = sub_182AD2678();
  v37 = sub_182AD38B8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_181A37000, v36, v37, "Attempting to clean up for untracked actor", v38, 2u);
    MEMORY[0x1865DF520](v38, -1, -1);
  }

  v40 = v76;
LABEL_20:
  MEMORY[0x1EEE9AC00](v39);
  *(&v65 - 2) = sub_181FCE21C;
  *(&v65 - 1) = v40;
  os_unfair_lock_lock(v32 + 4);
  sub_181FCE274(v77);
  os_unfair_lock_unlock(v32 + 4);
  if (LOBYTE(v77[0]) == 1)
  {
    v52 = sub_182AD2678();
    v53 = sub_182AD38D8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_181A37000, v52, v53, "No more actors published, canceling listener", v54, 2u);
      MEMORY[0x1865DF520](v54, -1, -1);
    }

    MEMORY[0x1EEE9AC00](v55);
    *(&v65 - 2) = sub_181FCE290;
    *(&v65 - 1) = v40;
    os_unfair_lock_lock(v32 + 4);
    sub_181FCE618(v77);
    os_unfair_lock_unlock(v32 + 4);
    v57 = v77[0];
    if (v77[0])
    {
      nw_listener_cancel(*(v77[0] + 24));
    }

    MEMORY[0x1EEE9AC00](v56);
    *(&v65 - 2) = sub_181FCE2A4;
    *(&v65 - 1) = v40;
    os_unfair_lock_lock(v32 + 4);
    sub_181FCE618(v77);
    os_unfair_lock_unlock(v32 + 4);
    v58 = *(v77[0] + 16);
    if (v58)
    {
      v75 = v77[0];
      v76 = v57;
      v59 = *(v74 + 16);
      v60 = v77[0] + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v61 = *(v74 + 72);
      v62 = (v74 + 8);
      v59(v7, v60, v5);
      while (1)
      {
        if (a3)
        {
          v77[0] = a3;
          v63 = a3;
          sub_182AD34B8();
        }

        else
        {
          sub_182AD34C8();
        }

        (*v62)(v7, v5);
        v60 += v61;
        if (!--v58)
        {
          break;
        }

        v59(v7, v60, v5);
      }
    }
  }
}

void NWActorSystem.endpoint<A>(for:)(uint64_t a1@<X8>)
{
  v4 = *(v1 + 144);
  os_unfair_lock_lock(v4 + 4);
  sub_181FCE618(&v7);
  if (v2)
  {
    os_unfair_lock_unlock(v4 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v4 + 4);
    if (v7)
    {
      v5 = *(v7 + 16);

      sub_181FCDFD4(v5 + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, a1, type metadata accessor for NWEndpoint);
    }

    else
    {
      sub_181FCD1A0();
      swift_allocError();
      *v6 = xmmword_182AED510;
      *(v6 + 16) = 0xB000000000000000;
      swift_willThrow();
    }
  }
}

uint64_t sub_181FC1EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12[1] = a2;
  sub_182AD3BD8();
  swift_beginAccess();
  if (*(*(a1 + 200) + 16) && (sub_18224F288(v8), (v9 & 1) != 0))
  {
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  swift_endAccess();
  return sub_181FCE158(v8, type metadata accessor for NWActorID);
}

void NWActorSystem.resolve<A>(id:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v35 = a4;
  v36 = a3;
  v34 = *v4;
  v8 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v14 = sub_182AD2698();
  __swift_project_value_buffer(v14, qword_1EA836B70);
  sub_181FCDFD4(a1, v13, type metadata accessor for NWActorID);
  v15 = sub_182AD2678();
  v16 = sub_182AD38A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = a1;
    v20 = v19;
    v37[0] = v19;
    *v18 = 136315394;
    sub_181FCDFD4(v13, v10, type metadata accessor for NWActorID);
    v21 = sub_182AD3038();
    v23 = v22;
    sub_181FCE158(v13, type metadata accessor for NWActorID);
    v24 = sub_181C64FFC(v21, v23, v37);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    a1 = v32;
    v25 = sub_182AD46E8();
    v27 = sub_181C64FFC(v25, v26, v37);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_181A37000, v15, v16, "Resolving %s to %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v20, -1, -1);
    MEMORY[0x1865DF520](v18, -1, -1);
  }

  else
  {

    v28 = sub_181FCE158(v13, type metadata accessor for NWActorID);
  }

  v29 = v6[18];
  MEMORY[0x1EEE9AC00](v28);
  v30 = v35;
  *(&v31 - 6) = v36;
  *(&v31 - 5) = v30;
  *(&v31 - 4) = v6;
  *(&v31 - 3) = a1;
  *(&v31 - 2) = v34;
  v37[2] = sub_182AD39B8();
  v37[3] = sub_181FCD1F4;
  v37[4] = (&v31 - 8);
  sub_181F50DA0(sub_181FCE1B8, v37, v29);
}

void sub_181FC2350(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  swift_beginAccess();
  v16 = *(a1 + 152);
  if (*(v16 + 16) && (v17 = sub_18224F288(a2), (v18 & 1) != 0))
  {
    v19 = a4;
    v20 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = *(v20 + 24);
      v52[0] = Strong;
      v52[1] = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8397D8);
      if (swift_dynamicCast())
      {

        *v19 = v53;
        return;
      }
    }

    else
    {
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839828);
    sub_181FCD1A0();
    swift_allocError();
    *v46 = v45;
    v46[1] = a3;
    v46[2] = 0;
    swift_willThrow();
  }

  else
  {
    v51 = a2;
    swift_endAccess();
    if (qword_1EA837108 != -1)
    {
      swift_once();
    }

    sub_182AD46C8();
    v23 = v52[0];
    if (v52[0])
    {
      v50 = a4;
      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1EA836B70);
      sub_181FCDFD4(v51, v15, type metadata accessor for NWActorID);

      v25 = sub_182AD2678();
      v26 = sub_182AD38D8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v49 = v4;
        v28 = v27;
        v48 = swift_slowAlloc();
        v52[0] = v48;
        *v28 = 136315394;
        sub_181FCDFD4(v15, v12, type metadata accessor for NWActorID);
        v29 = sub_182AD3038();
        v31 = v30;
        sub_181FCE158(v15, type metadata accessor for NWActorID);
        v32 = sub_181C64FFC(v29, v31, v52);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;

        v33 = sub_1821515AC();
        v35 = v34;

        v36 = sub_181C64FFC(v33, v35, v52);

        *(v28 + 14) = v36;
        _os_log_impl(&dword_181A37000, v25, v26, "Associating %s to %s", v28, 0x16u);
        v37 = v48;
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v37, -1, -1);
        v38 = v28;
        v5 = v49;
        MEMORY[0x1865DF520](v38, -1, -1);
      }

      else
      {

        v39 = sub_181FCE158(v15, type metadata accessor for NWActorID);
      }

      v40 = *(v23 + 80);
      MEMORY[0x1EEE9AC00](v39);
      v41 = v51;
      *(&v47 - 2) = v23;
      *(&v47 - 1) = v41;
      MEMORY[0x1EEE9AC00](v42);
      *(&v47 - 2) = sub_181FCE1E0;
      *(&v47 - 1) = v43;
      os_unfair_lock_lock(v40 + 4);
      sub_181FCE69C();
      os_unfair_lock_unlock(v40 + 4);
      if (v5)
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(a1 + 200);
        *(a1 + 200) = 0x8000000000000000;
        sub_18225902C(v23, v41, isUniquelyReferenced_nonNull_native);
        *(a1 + 200) = v53;
        swift_endAccess();

        *v50 = 0;
      }
    }

    else
    {
      *a4 = 0;
    }
  }
}

uint64_t sub_181FC2880()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_182AD2258();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839820);
  swift_allocObject();
  result = sub_182AD46B8();
  qword_1EA836B88 = result;
  return result;
}

uint64_t NWActorSystem.assignID<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_182AD2258();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  if (qword_1EA836B90 != -1)
  {
    swift_once();
  }

  sub_182AD46C8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_181F49A88(v4, &qword_1EA8394C0);
    sub_182AD2248();
    return sub_182167834(v8, a1);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_182167834(v8, a1);
    return (*(v6 + 8))(v11, v5);
  }
}

void NWActorSystem.actorReady<A>(_:)()
{
  v1 = *(v0 + 144);
  os_unfair_lock_lock(v1 + 4);
  sub_181FCE69C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_181FC2C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13[1] = a2;
  sub_182AD3BD8();
  type metadata accessor for WeakDistributedActor();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 24) = a4;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 152);
  *(a1 + 152) = 0x8000000000000000;
  sub_182259040(v10, v9, isUniquelyReferenced_nonNull_native);
  sub_181FCE158(v9, type metadata accessor for NWActorID);
  *(a1 + 152) = v14;
  return swift_endAccess();
}

uint64_t sub_181FC2D68@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181FCDFD4(a1, v9, type metadata accessor for NWActorID);
  swift_beginAccess();
  sub_1820FA314(0, v9);
  swift_endAccess();
  sub_181FCDFD4(a1, v9, type metadata accessor for NWActorID);
  v10 = type metadata accessor for NWActorDiscoveryMechanism(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  swift_beginAccess();
  sub_1820FA4BC(v6, v9);
  swift_endAccess();
  swift_beginAccess();
  *a2 = sub_18207A568(a1);
  return swift_endAccess();
}

Network::NWActorSystemInvocationEncoder __swiftcall NWActorSystem.makeInvocationEncoder()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  return result;
}

uint64_t NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = v17;
  v9[16] = v8;
  v9[13] = v15;
  v9[14] = v16;
  v9[11] = a7;
  v9[12] = a8;
  v9[9] = a3;
  v9[10] = a4;
  v9[7] = a1;
  v9[8] = a2;
  v9[17] = swift_conformsToProtocol();
  v9[18] = swift_conformsToProtocol();
  v10 = sub_182AD25E8();
  v9[19] = v10;
  v9[20] = *(v10 - 8);
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();
  v9[23] = type metadata accessor for NWActorID();
  v9[24] = swift_task_alloc();
  v9[25] = swift_task_alloc();
  v11 = sub_182AD22D8();
  v9[26] = v11;
  v9[27] = *(v11 - 8);
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  v12 = sub_182AD2258();
  v9[31] = v12;
  v9[32] = *(v12 - 8);
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v9[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC3184, 0, 0);
}

uint64_t sub_181FC3184()
{
  v99 = v0;
  sub_182AD2248();
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  v94 = *(v0 + 232);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 72);
  v9 = sub_182AD2698();
  *(v0 + 288) = __swift_project_value_buffer(v9, qword_1EA836B70);
  v10 = *(v4 + 16);
  *(v0 + 296) = v10;
  *(v0 + 304) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v2, v3);
  v11 = *(v6 + 16);
  v11(v5, v8, v7);
  v92 = v11;
  v11(v94, v8, v7);
  swift_unknownObjectRetain_n();
  v12 = sub_182AD2678();
  v13 = sub_182AD38D8();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 272);
  v17 = *(v0 + 248);
  v16 = *(v0 + 256);
  v89 = *(v0 + 240);
  v91 = *(v0 + 232);
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  if (v14)
  {
    v20 = *(v0 + 200);
    v84 = *(v0 + 64);
    v87 = v13;
    v21 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v96 = v88;
    *v21 = 136315906;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
    v22 = sub_182AD41B8();
    log = v12;
    v24 = v23;
    v85 = *(v16 + 8);
    v85(v15, v17);
    v25 = sub_181C64FFC(v22, v24, &v96);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    *(v0 + 48) = v84;
    sub_182AD3BD8();
    swift_unknownObjectRelease();
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_182AD3BA8();

    v97 = 0x49726F746341574ELL;
    v98 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v20, v20[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    v26 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v26);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v28 = v97;
    v27 = v98;
    sub_181FCE158(v20, type metadata accessor for NWActorID);
    v29 = sub_181C64FFC(v28, v27, &v96);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2080;
    sub_181FCE110(&qword_1EA8397B0, 255, MEMORY[0x1E69E8168]);
    v30 = sub_182AD41B8();
    v32 = v31;
    v33 = *(v18 + 8);
    v33(v89, v19);
    v34 = sub_181C64FFC(v30, v32, &v96);

    *(v21 + 24) = v34;
    *(v21 + 32) = 2080;
    v35 = sub_182AD22C8();
    v37 = v36;
    v33(v91, v19);
    v38 = sub_181C64FFC(v35, v37, &v96);
    v39 = v85;

    *(v21 + 34) = v38;
    _os_log_impl(&dword_181A37000, log, v87, "Call %s: %s, target: %s, target.identifier: %s", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v88, -1, -1);
    MEMORY[0x1865DF520](v21, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease_n();

    v33 = *(v18 + 8);
    v33(v91, v19);
    v33(v89, v19);
    v39 = *(v16 + 8);
    v39(v15, v17);
  }

  *(v0 + 312) = v39;
  if (qword_1EA8370F0 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 224);
  v41 = *(v0 + 208);
  v42 = *(v0 + 72);
  v43 = sub_182AD2618();
  __swift_project_value_buffer(v43, qword_1EA839738);
  sub_182AD2608();
  sub_182AD25B8();
  v92(v40, v42, v41);
  swift_unknownObjectRetain_n();
  v44 = sub_182AD2608();
  v45 = sub_182AD3958();
  if (sub_182AD3998())
  {
    v46 = *(v0 + 224);
    v47 = *(v0 + 200);
    v48 = *(v0 + 208);
    v95 = v44;
    v49 = *(v0 + 64);
    v90 = v45;
    v50 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v96 = v93;
    *v50 = 136315394;
    v51 = sub_182AD22C8();
    v53 = v52;
    v33(v46, v48);
    v54 = sub_181C64FFC(v51, v53, &v96);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    *(v0 + 40) = v49;
    sub_182AD3BD8();
    swift_unknownObjectRelease();
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_182AD3BA8();

    v97 = 0x49726F746341574ELL;
    v98 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v47, v47[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
    v55 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v55);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v56 = v97;
    v57 = v98;
    sub_181FCE158(v47, type metadata accessor for NWActorID);
    v58 = sub_181C64FFC(v56, v57, &v96);

    *(v50 + 14) = v58;
    v59 = sub_182AD25C8();
    _os_signpost_emit_with_name_impl(&dword_181A37000, v95, v90, v59, "remoteCall", "Call to %s, actor: %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v93, -1, -1);
    MEMORY[0x1865DF520](v50, -1, -1);
  }

  else
  {
    v60 = *(v0 + 224);
    v61 = *(v0 + 208);
    swift_unknownObjectRelease_n();

    v33(v60, v61);
  }

  (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 176), *(v0 + 152));
  sub_182AD2658();
  swift_allocObject();
  *(v0 + 320) = sub_182AD2648();
  if (qword_1EA837100 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 192);
  v63 = *(v0 + 128);
  v64 = *(v0 + 64);
  sub_182AD46C8();
  v65 = *(v0 + 16);
  _s18RemoteCallActivityCMa();
  swift_allocObject();
  v66 = sub_1820AD4EC(v65);
  *(v0 + 328) = v66;
  *(v0 + 24) = v64;
  sub_182AD3BD8();
  v67 = *(v63 + 144);
  v68 = swift_task_alloc();
  v68[2] = v63;
  v68[3] = v62;
  v68[4] = v66;
  v69 = swift_task_alloc();
  *(v69 + 16) = sub_181FCD238;
  *(v69 + 24) = v68;
  os_unfair_lock_lock(v67 + 4);
  sub_181FCCB84(&v97);
  v70 = *(v0 + 192);
  os_unfair_lock_unlock(v67 + 4);
  v71 = v97;
  *(v0 + 336) = v97;

  sub_181FCE158(v70, type metadata accessor for NWActorID);
  if (qword_1EA837108 != -1)
  {
    swift_once();
  }

  v72 = *(v0 + 280);
  v74 = *(v0 + 120);
  v73 = *(v0 + 128);
  v75 = *(v0 + 80);
  *(v0 + 32) = v71;
  v76 = swift_task_alloc();
  *(v0 + 344) = v76;
  v77 = *(v0 + 104);
  v78 = *(v0 + 136);
  v79 = *(v0 + 64);
  *(v76 + 16) = *(v0 + 88);
  *(v76 + 32) = v77;
  *(v76 + 48) = v74;
  *(v76 + 56) = v78;
  *(v76 + 72) = v71;
  *(v76 + 80) = v73;
  *(v76 + 88) = v72;
  *(v76 + 96) = v79;
  *(v76 + 112) = v75;
  *(v76 + 120) = v66;

  v80 = swift_task_alloc();
  *(v0 + 352) = v80;
  *v80 = v0;
  v80[1] = sub_181FC3FC8;
  v81 = *(v0 + 104);
  v82 = *(v0 + 56);
  v101 = 324;
  v102 = v81;

  return MEMORY[0x1EEE6DE98](v82, v0 + 32, &unk_182AED590, v76, 0, 0, 0xD00000000000001BLL, 0x8000000182BD6A40);
}

uint64_t sub_181FC3FC8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_181FC4250;
  }

  else
  {
    v2 = sub_181FC40FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC40FC()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[31];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];

  sub_181FC8028(v2, "remoteCall");

  (*(v7 + 8))(v5, v6);
  v1(v3, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_181FC4250()
{
  v32 = v0;

  v1 = v0[37];
  v2 = v0[35];
  v30 = v0[45];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  sub_181FC8028(v0[40], "remoteCall");

  (*(v6 + 8))(v5, v7);
  v1(v3, v2, v4);
  v8 = v30;
  v9 = sub_182AD2678();
  v10 = sub_182AD38B8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[39];
  v13 = v0[33];
  v14 = v0[31];
  if (v11)
  {
    v28 = v10;
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v15 = 136315394;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
    v16 = sub_182AD41B8();
    v18 = v17;
    v12(v13, v14);
    v19 = sub_181C64FFC(v16, v18, &v31);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v30;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v27 = v21;
    _os_log_impl(&dword_181A37000, v9, v28, "Call %s failed: %@", v15, 0x16u);
    sub_181F49A88(v27, &unk_1EA83AA30);
    MEMORY[0x1865DF520](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1865DF520](v29, -1, -1);
    MEMORY[0x1865DF520](v15, -1, -1);
  }

  else
  {

    v12(v13, v14);
  }

  v22 = v0[39];
  v23 = v0[35];
  v24 = v0[31];
  swift_willThrow();
  v22(v23, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_181FC45C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v14;
  v8[17] = v15;
  v8[14] = v12;
  v8[15] = v13;
  v8[12] = a8;
  v8[13] = v11;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v8[6] = a2;
  v8[7] = a3;
  v8[5] = a1;
  type metadata accessor for NWActorID();
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC4678, 0, 0);
}

uint64_t sub_181FC4678()
{
  v1 = *(v0 + 88);
  *(v0 + 32) = *(v0 + 72);
  sub_182AD3BD8();
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 24) = v2;

  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_181FC4780;
  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);

  return sub_1821504E4(v10, v8, v9, v4, v7, (v0 + 16), v5, v6);
}

uint64_t sub_181FC4780()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  *(*v1 + 160) = v0;

  sub_181FCE158(v2, type metadata accessor for NWActorID);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FC4930, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_181FC4930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[20] = a7;
  v8[21] = v7;
  v8[18] = a3;
  v8[19] = a5;
  v8[16] = a1;
  v8[17] = a2;
  v9 = sub_182AD25E8();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = type metadata accessor for NWActorID();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v10 = sub_182AD22D8();
  v8[30] = v10;
  v8[31] = *(v10 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v11 = sub_182AD2258();
  v8[35] = v11;
  v8[36] = *(v11 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC4B98, 0, 0);
}

uint64_t sub_181FC4B98()
{
  v93 = v0;
  sub_182AD2248();
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 272);
  v87 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 136);
  v9 = sub_182AD2698();
  *(v0 + 320) = __swift_project_value_buffer(v9, qword_1EA836B70);
  v10 = *(v4 + 16);
  *(v0 + 328) = v10;
  *(v0 + 336) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v2, v3);
  v11 = *(v6 + 16);
  v11(v5, v8, v7);
  v85 = v11;
  v11(v87, v8, v7);
  swift_unknownObjectRetain_n();
  v12 = sub_182AD2678();
  v13 = sub_182AD38D8();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 304);
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  v82 = *(v0 + 272);
  v84 = *(v0 + 264);
  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  if (v14)
  {
    v20 = *(v0 + 232);
    v77 = *(v0 + 128);
    v80 = v13;
    v21 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v90 = v81;
    *v21 = 136315906;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
    v22 = sub_182AD41B8();
    log = v12;
    v24 = v23;
    v78 = *(v16 + 8);
    v78(v15, v17);
    v25 = sub_181C64FFC(v22, v24, &v90);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    *(v0 + 120) = v77;
    sub_182AD3BD8();
    swift_unknownObjectRelease();
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_182AD3BA8();

    v91 = 0x49726F746341574ELL;
    v92 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v20, v20[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    v26 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v26);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v28 = v91;
    v27 = v92;
    sub_181FCE158(v20, type metadata accessor for NWActorID);
    v29 = sub_181C64FFC(v28, v27, &v90);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2080;
    sub_181FCE110(&qword_1EA8397B0, 255, MEMORY[0x1E69E8168]);
    v30 = sub_182AD41B8();
    v32 = v31;
    v33 = *(v18 + 8);
    v33(v82, v19);
    v34 = sub_181C64FFC(v30, v32, &v90);

    *(v21 + 24) = v34;
    *(v21 + 32) = 2080;
    v35 = sub_182AD22C8();
    v37 = v36;
    v33(v84, v19);
    v38 = sub_181C64FFC(v35, v37, &v90);
    v39 = v78;

    *(v21 + 34) = v38;
    _os_log_impl(&dword_181A37000, log, v80, "Call %s: %s, target: %s, target.identifier: %s", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v81, -1, -1);
    MEMORY[0x1865DF520](v21, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease_n();

    v33 = *(v18 + 8);
    v33(v84, v19);
    v33(v82, v19);
    v39 = *(v16 + 8);
    v39(v15, v17);
  }

  *(v0 + 344) = v39;
  if (qword_1EA8370F0 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 256);
  v41 = *(v0 + 240);
  v42 = *(v0 + 136);
  v43 = sub_182AD2618();
  __swift_project_value_buffer(v43, qword_1EA839738);
  sub_182AD2608();
  sub_182AD25B8();
  v85(v40, v42, v41);
  swift_unknownObjectRetain_n();
  v44 = sub_182AD2608();
  v45 = sub_182AD3958();
  if (sub_182AD3998())
  {
    v46 = *(v0 + 256);
    v47 = *(v0 + 232);
    v48 = *(v0 + 240);
    v88 = v44;
    v49 = *(v0 + 128);
    v83 = v45;
    v50 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v90 = v86;
    *v50 = 136315394;
    v51 = sub_182AD22C8();
    v53 = v52;
    v33(v46, v48);
    v54 = sub_181C64FFC(v51, v53, &v90);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    *(v0 + 112) = v49;
    sub_182AD3BD8();
    swift_unknownObjectRelease();
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_182AD3BA8();

    v91 = 0x49726F746341574ELL;
    v92 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v47, v47[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
    v55 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v55);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v56 = v91;
    v57 = v92;
    sub_181FCE158(v47, type metadata accessor for NWActorID);
    v58 = sub_181C64FFC(v56, v57, &v90);

    *(v50 + 14) = v58;
    v59 = sub_182AD25C8();
    _os_signpost_emit_with_name_impl(&dword_181A37000, v88, v83, v59, "remoteCallVoid", "Call to %s, actor: %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v86, -1, -1);
    MEMORY[0x1865DF520](v50, -1, -1);
  }

  else
  {
    v60 = *(v0 + 256);
    v61 = *(v0 + 240);
    swift_unknownObjectRelease_n();

    v33(v60, v61);
  }

  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  sub_182AD2658();
  swift_allocObject();
  *(v0 + 352) = sub_182AD2648();
  if (qword_1EA837100 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 224);
  v63 = *(v0 + 168);
  v64 = *(v0 + 128);
  sub_182AD46C8();
  v65 = *(v0 + 88);
  _s18RemoteCallActivityCMa();
  swift_allocObject();
  v66 = sub_1820AD4EC(v65);
  *(v0 + 360) = v66;
  *(v0 + 96) = v64;
  sub_182AD3BD8();
  v67 = *(v63 + 144);
  v68 = swift_task_alloc();
  v68[2] = v63;
  v68[3] = v62;
  v68[4] = v66;
  v69 = swift_task_alloc();
  *(v69 + 16) = sub_181FCE648;
  *(v69 + 24) = v68;
  os_unfair_lock_lock(v67 + 4);
  sub_181FCE618(&v91);
  v70 = *(v0 + 224);
  v89 = *(v0 + 144);
  v71 = *(v0 + 128);
  os_unfair_lock_unlock(v67 + 4);
  *(v0 + 368) = v91;

  sub_181FCE158(v70, type metadata accessor for NWActorID);
  *(v0 + 104) = v71;
  sub_182AD3BD8();
  *(v0 + 72) = *&v89->isa;
  v72 = swift_task_alloc();
  *(v0 + 376) = v72;
  *v72 = v0;
  v72[1] = sub_181FC5954;
  v73 = *(v0 + 312);
  v74 = *(v0 + 216);
  v75 = *(v0 + 136);

  return sub_182151ADC(v0 + 16, v73, v74, v75, (v0 + 72), v66);
}

uint64_t sub_181FC5954()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_181FC5BF8;
  }

  else
  {
    sub_181FCD3B0(v2 + 16);
    v3 = sub_181FC5A70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_181FC5A70()
{
  v1 = v0[44];
  v2 = v0[39];
  v9 = v0[43];
  v8 = v0[35];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  sub_181FCE158(v0[27], type metadata accessor for NWActorID);

  sub_181FC8028(v1, "remoteCallVoid");

  (*(v4 + 8))(v3, v5);
  v9(v2, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_181FC5BF8()
{
  v33 = v0;
  sub_181FCE158(v0[27], type metadata accessor for NWActorID);

  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[39];
  v31 = v0[48];
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[25];
  v8 = v0[22];
  v7 = v0[23];

  sub_181FC8028(v1, "remoteCallVoid");

  (*(v7 + 8))(v6, v8);
  v2(v4, v3, v5);
  v9 = v31;
  v10 = sub_182AD2678();
  v11 = sub_182AD38B8();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[43];
  v14 = v0[37];
  v15 = v0[35];
  if (v12)
  {
    v29 = v11;
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v16 = 136315394;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
    v17 = sub_182AD41B8();
    v19 = v18;
    v13(v14, v15);
    v20 = sub_181C64FFC(v17, v19, &v32);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v31;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v28 = v22;
    _os_log_impl(&dword_181A37000, v10, v29, "Call %s failed: %@", v16, 0x16u);
    sub_181F49A88(v28, &unk_1EA83AA30);
    MEMORY[0x1865DF520](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1865DF520](v30, -1, -1);
    MEMORY[0x1865DF520](v16, -1, -1);
  }

  else
  {

    v13(v14, v15);
  }

  v23 = v0[43];
  v24 = v0[39];
  v25 = v0[35];
  swift_willThrow();
  v23(v24, v25);

  v26 = v0[1];

  return v26();
}

uint64_t NWActorSystem.deinit()
{
  sub_181FCD404(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t NWActorSystem.__deallocating_deinit()
{
  NWActorSystem.deinit();

  return swift_deallocClassInstance();
}

uint64_t NWActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181FC6084, 0, 0);
}

uint64_t sub_181FC6084()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[4]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_181FCE5CC;
  v8 = v0[2];
  v7 = v0[3];

  return sub_181FC6154(v1, v7, v8, v1, v3, v5);
}

uint64_t sub_181FC6154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a4 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC6210, 0, 0);
}

uint64_t sub_181FC6210()
{
  sub_182AD3318();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_181FC62C4;
  v2 = v0[9];
  v3 = v0[5];

  return NWActorSystemResultHandler.onReturn<A>(value:)(v2, v3);
}

uint64_t sub_181FC62C4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_181FC6458;
  }

  else
  {
    v2 = sub_181FC63D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC63D8()
{
  (*(v0[8] + 8))(v0[9], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_181FC6458()
{
  (*(v0[8] + 8))(v0[9], v0[5]);

  v1 = v0[1];

  return v1();
}

void sub_181FC655C(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

uint64_t sub_181FC656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_181F54964;

  return NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(a1, a2, a3, a4, v14, v15, a7, a8);
}

uint64_t sub_181FC6680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_181F5EB68;

  return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(a1, a2, a3, v14, a5, v15, a7);
}

uint64_t sub_181FC674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181FC6770, 0, 0);
}

uint64_t sub_181FC6770()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[4]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_181FC6840;
  v8 = v0[2];
  v7 = v0[3];

  return sub_181FC6154(v1, v7, v8, v1, v3, v5);
}

uint64_t sub_181FC6840()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_181FC6934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v22 - v16);
  sub_181FCDFD4(a2, &v22 - v16, type metadata accessor for NWActorID);
  sub_181FCDFD4(a3, v11, type metadata accessor for NWActorDiscoveryMechanism);
  v18 = type metadata accessor for NWActorDiscoveryMechanism(0);
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  swift_beginAccess();
  sub_1820FA4BC(v11, v17);
  swift_endAccess();
  sub_181FCDFD4(a2, v14, type metadata accessor for NWActorID);
  if (a4)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v20 = sub_181FCDDD4;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  swift_beginAccess();
  sub_181AA39C0(a4);
  sub_1820FA6A4(v20, v19, v14);
  return swift_endAccess();
}

uint64_t sub_181FC6B80(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_182AD25E8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839810);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for RemoteCallEnvelope(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC6CD0, 0, 0);
}

uint64_t sub_181FC6CD0()
{
  v44 = v0;
  v1 = v0[7].i64[0];
  v2 = v0[5].i64[1];
  sub_181FCDFD4(v0[1].i64[1], v1, type metadata accessor for RemoteCallEnvelope);
  v3 = sub_181FC76D4((v1 + *(v2 + 20)));
  v0[7].i64[1] = v3;
  if (v3)
  {
    v5 = v3;
    v40 = v4;
    if (*(v0[7].i64[0] + *(v0[5].i64[1] + 36)))
    {
      sub_182AD3D98();
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v10 = v0[5].i64[0];
    v11 = sub_182AD3DC8();
    (*(*(v11 - 8) + 56))(v10, v6, 1, v11);
    if (qword_1EA8370F0 != -1)
    {
      swift_once();
    }

    v13 = v0[6].i64[1];
    v12 = v0[7].i64[0];
    v14 = v0[6].i64[0];
    v15 = sub_182AD2618();
    __swift_project_value_buffer(v15, qword_1EA839738);
    sub_182AD2608();
    sub_182AD25B8();
    sub_181FCDFD4(v12, v13, type metadata accessor for RemoteCallEnvelope);
    sub_181FCDFD4(v12, v14, type metadata accessor for RemoteCallEnvelope);
    v16 = sub_182AD2608();
    v17 = sub_182AD3958();
    v18 = sub_182AD3998();
    v20 = v0[6].i64[0];
    v19 = v0[6].i64[1];
    if (v18)
    {
      v39 = v17;
      v21 = v0[5].i64[1];
      v22 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v22 = 136315394;
      v23 = (v19 + *(v21 + 24));
      v24 = *v23;
      v25 = v23[1];

      sub_181FCE158(v19, type metadata accessor for RemoteCallEnvelope);
      v26 = sub_181C64FFC(v24, v25, &v41);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = (v20 + *(v2 + 20));
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_182AD3BA8();

      v42 = 0x49726F746341574ELL;
      v43 = 0xEA00000000002844;
      MEMORY[0x1865D9CA0](*v27, v27[1]);
      MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
      type metadata accessor for NWActorID();
      sub_182AD2258();
      sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
      v28 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v28);

      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      v30 = v42;
      v29 = v43;
      sub_181FCE158(v20, type metadata accessor for RemoteCallEnvelope);
      v31 = sub_181C64FFC(v30, v29, &v41);

      *(v22 + 14) = v31;
      v32 = sub_182AD25C8();
      _os_signpost_emit_with_name_impl(&dword_181A37000, v16, v39, v32, "executeRemoteCall", "Executing %s on %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v38, -1, -1);
      MEMORY[0x1865DF520](v22, -1, -1);
    }

    else
    {

      sub_181FCE158(v20, type metadata accessor for RemoteCallEnvelope);
      sub_181FCE158(v19, type metadata accessor for RemoteCallEnvelope);
    }

    (*(v0[3].i64[1] + 16))(v0[4].i64[0], v0[4].i64[1], v0[3].i64[0]);
    sub_182AD2658();
    swift_allocObject();
    v0[8].i64[0] = sub_182AD2648();
    if (qword_1EA837108 != -1)
    {
      swift_once();
    }

    v33 = v0[7].i64[0];
    v34 = v0[5].i64[0];
    v35 = swift_task_alloc();
    v36 = vextq_s8(v0[2], v0[2], 8uLL);
    v0[1].i64[0] = v0[2].i64[0];
    v0[8].i64[1] = v35;
    *(v35 + 16) = v33;
    *(v35 + 24) = v36;
    *(v35 + 40) = v34;
    *(v35 + 48) = v5;
    *(v35 + 56) = v40;

    v37 = swift_task_alloc();
    v0[9].i64[0] = v37;
    *v37 = v0;
    v37[1] = sub_181FC7338;
    v46 = 382;
    v47 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE98](v37, &v0[1], &unk_182AED948, v35, 0, 0, 0xD00000000000001BLL, 0x8000000182BD6A40);
  }

  else
  {
    sub_181FCD1A0();
    swift_allocError();
    *v7 = xmmword_182AE8BA0;
    *(v7 + 16) = 0xB000000000000000;
    swift_willThrow();
    sub_181FCE158(v0[7].i64[0], type metadata accessor for RemoteCallEnvelope);

    v8 = v0->i64[1];

    return v8();
  }
}

uint64_t sub_181FC7338()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181FC75A8;
  }

  else
  {
    v2 = sub_181FC7474;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC7474()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[6];
  sub_181FC8028(v0[16], "executeRemoteCall");
  swift_unknownObjectRelease();

  (*(v4 + 8))(v3, v5);
  sub_181F49A88(v2, &qword_1EA839810);
  sub_181FCE158(v1, type metadata accessor for RemoteCallEnvelope);

  v6 = v0[1];

  return v6();
}

uint64_t sub_181FC75A8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  sub_181FC8028(v0[16], "executeRemoteCall");
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2, v3);
  sub_181F49A88(v1, &qword_1EA839810);
  sub_181FCE158(v0[14], type metadata accessor for RemoteCallEnvelope);

  v5 = v0[1];

  return v5();
}

uint64_t sub_181FC76D4(uint64_t *a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v55 - v5;
  v61 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v61);
  v60 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NWActorSystem.ServerRole();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = *(v1 + 144);
  v69 = sub_181FCDED4;
  v70 = v1;
  os_unfair_lock_lock(v13 + 4);
  sub_181FCE618(&v71);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v71;
  v67 = sub_181FCDEEC;
  v68 = v1;
  v62 = v1;
  os_unfair_lock_lock(v13 + 4);
  sub_181FCE618(&v71);
  os_unfair_lock_unlock(v13 + 4);
  v15 = v71;
  if (!*(v71 + 16) || (sub_18224F288(a1), (v16 & 1) == 0))
  {
    if (!*(v14 + 16) || (v18 = sub_181CA266C(*a1, a1[1]), (v19 & 1) == 0))
    {

      return 0;
    }

    v59 = a1;
    v20 = v12;
    sub_181FCDFD4(*(v14 + 56) + *(v8 + 72) * v18, v12, type metadata accessor for NWActorSystem.ServerRole);

    v21 = v66;
    sub_181FCDFD4(v12, v66, type metadata accessor for NWActorSystem.ServerRole);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v21;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839798) + 48);
      if (*(v15 + 16))
      {
        sub_18224F288(v59);
        if (v24)
        {

          Strong = swift_unknownObjectWeakLoadStrong();

          sub_181FCE158(v20, type metadata accessor for NWActorSystem.ServerRole);
          v25 = v21 + v23;
LABEL_25:
          sub_181F49A88(v25, &unk_1EA8397E0);
          return Strong;
        }
      }

      v58 = v23;

      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v35 = sub_182AD2698();
      __swift_project_value_buffer(v35, qword_1EA836B70);
      v36 = v60;
      sub_181FCDFD4(v59, v60, type metadata accessor for NWActorID);
      v37 = sub_182AD2678();
      v38 = sub_182AD38D8();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v61;
      v57 = v22;
      if (v39)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v56 = v42;
        *v41 = 136315138;
        v71 = 0;
        v72 = 0xE000000000000000;
        v73[0] = v42;
        sub_182AD3BA8();

        v71 = 0x49726F746341574ELL;
        v72 = 0xEA00000000002844;
        MEMORY[0x1865D9CA0](*v36, v36[1]);
        MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
        sub_182AD2258();
        v43 = v38;
        sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
        v44 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v44);

        MEMORY[0x1865D9CA0](41, 0xE100000000000000);
        v45 = v71;
        v46 = v72;
        sub_181FCE158(v36, type metadata accessor for NWActorID);
        v47 = sub_181C64FFC(v45, v46, v73);

        *(v41 + 4) = v47;
        _os_log_impl(&dword_181A37000, v37, v43, "Creating on demand actor for id %s", v41, 0xCu);
        v48 = v56;
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x1865DF520](v48, -1, -1);
        MEMORY[0x1865DF520](v41, -1, -1);
      }

      else
      {

        sub_181FCE158(v36, type metadata accessor for NWActorID);
      }

      if (qword_1EA836B90 != -1)
      {
        swift_once();
      }

      v50 = *(v40 + 20);
      v51 = sub_182AD2258();
      v52 = *(v51 - 8);
      v53 = v64;
      (*(v52 + 16))(v64, v59 + v50, v51);
      (*(v52 + 56))(v53, 0, 1, v51);
      sub_181AB5D28(v53, v63, &qword_1EA8394C0);
      swift_task_localValuePush();
      Strong = v57(v62);
      swift_task_localValuePop();

      sub_181F49A88(v53, &qword_1EA8394C0);
      sub_181FCE158(v20, type metadata accessor for NWActorSystem.ServerRole);
      v49 = v58;
    }

    else
    {

      Strong = *v21;
      v26 = v21[1];
      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v27 = sub_182AD2698();
      __swift_project_value_buffer(v27, qword_1EA836B70);
      swift_unknownObjectRetain();
      v28 = sub_182AD2678();
      v29 = sub_182AD38D8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v72 = v26;
        v73[0] = v31;
        *v30 = 136315138;
        v71 = Strong;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8397D8);
        v32 = sub_182AD3038();
        v34 = sub_181C64FFC(v32, v33, v73);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_181A37000, v28, v29, "Returning singleton: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1865DF520](v31, -1, -1);
        MEMORY[0x1865DF520](v30, -1, -1);
      }

      sub_181FCE158(v20, type metadata accessor for NWActorSystem.ServerRole);
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839788) + 48);
    }

    v25 = v21 + v49;
    goto LABEL_25;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_181FC8028(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_182AD2628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD25E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8370F0 != -1)
  {
    swift_once();
  }

  v10 = sub_182AD2618();
  __swift_project_value_buffer(v10, qword_1EA839738);
  v11 = sub_182AD2608();
  sub_182AD2638();
  v12 = sub_182AD3948();
  if (sub_182AD3998())
  {

    sub_182AD2668();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_182AD25C8();
    _os_signpost_emit_with_name_impl(&dword_181A37000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1865DF520](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_181FC82B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[14] = type metadata accessor for NWActorSystemResultHandler();
  v7[15] = swift_task_alloc();
  v7[16] = type metadata accessor for NWFileSerializationContext(0);
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for RemoteCallEnvelope(0);
  v7[19] = swift_task_alloc();
  v7[20] = type metadata accessor for NWActorSystemInvocationDecoder();
  v7[21] = swift_task_alloc();
  v8 = sub_182AD22D8();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC8440, 0, 0);
}

uint64_t sub_181FC8440()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v24 = v0[21];
  v25 = v0[16];
  v5 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v23 = v0[10];
  v26 = v0[9];
  v6 = v0[8];

  sub_182AD22E8();
  sub_181FCDFD4(v6, v3, type metadata accessor for RemoteCallEnvelope);
  v27 = _s15ActorConnectionCMa(0);
  v0[5] = v27;
  v0[6] = &off_1EEFC3108;
  v0[2] = v23;
  sub_181FCDFD4(v3, v24 + *(v1 + 20), type metadata accessor for RemoteCallEnvelope);
  v7 = (v24 + *(v1 + 24));
  *v7 = *(v3 + *(v2 + 32));
  v7[1] = 0;
  sub_181F75240((v0 + 2), v4);
  sub_181FCDFD4(v3 + *(v2 + 20), v4 + *(v25 + 20), type metadata accessor for NWActorID);

  v8 = sub_181F80CAC(v26, v4);
  sub_181FCE158(v4, type metadata accessor for NWFileSerializationContext);
  sub_181FCE158(v3, type metadata accessor for RemoteCallEnvelope);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  *v24 = v8;
  v9 = sub_182AD2258();
  (*(*(v9 - 8) + 16))(v5, v6, v9);
  v10 = (v5 + v28[5]);
  v10[3] = v27;
  v10[4] = &off_1EEFC3128;
  *v10 = v23;
  sub_181FCDFD4(v6 + *(v2 + 20), v5 + v28[6], type metadata accessor for NWActorID);
  v11 = (v5 + v28[7]);
  v11[3] = v27;
  v11[4] = &off_1EEFC3108;
  *v11 = v23;
  sub_181AB5D28(v29, v5 + v28[8], &qword_1EA839810);
  ObjectType = swift_getObjectType();
  v0[7] = v26;
  swift_retain_n();
  v13 = swift_task_alloc();
  v0[25] = v13;
  v14 = type metadata accessor for NWActorSystem();
  v16 = sub_181FCE110(&qword_1EA839818, v15, type metadata accessor for NWActorSystem);
  *v13 = v0;
  v13[1] = sub_181FC87A0;
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[15];
  v20 = v0[12];
  v21 = v0[13];

  return MEMORY[0x1EEE6CC70](v20, v17, v18, v19, v14, ObjectType, v16, v21);
}

uint64_t sub_181FC87A0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_181FC89B4;
  }

  else
  {
    v2 = sub_181FC88B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC88B4()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  sub_181FCE158(v0[15], type metadata accessor for NWActorSystemResultHandler);
  sub_181FCE158(v4, type metadata accessor for NWActorSystemInvocationDecoder);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_181FC89B4()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  sub_181FCE158(v0[15], type metadata accessor for NWActorSystemResultHandler);
  sub_181FCE158(v4, type metadata accessor for NWActorSystemInvocationDecoder);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_181FC8AB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v46 = a4;
  v8 = type metadata accessor for NWActorSystem.ServerRole();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839830);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  swift_beginAccess();
  v44 = a1;
  v17 = *(a1 + 160);
  if (*(v17 + 16) && (v18 = sub_181CA266C(a2, a3), (v19 & 1) != 0))
  {
    sub_181FCDFD4(*(v17 + 56) + *(v9 + 72) * v18, v16, type metadata accessor for NWActorSystem.ServerRole);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v42 = *(v9 + 56);
  v42(v16, v20, 1, v8);
  swift_endAccess();
  v21 = (*(v9 + 48))(v16, 1, v8);
  sub_181F49A88(v16, &qword_1EA839830);
  if (v21 == 1)
  {
    v22 = a2;
    if (qword_1EA836B68 != -1)
    {
      swift_once();
    }

    v23 = sub_182AD2698();
    __swift_project_value_buffer(v23, qword_1EA836B70);
    sub_181FCDFD4(v46, v11, type metadata accessor for NWActorSystem.ServerRole);

    v24 = sub_182AD2678();
    v25 = sub_182AD38D8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = v4;
      v27 = v26;
      v39 = swift_slowAlloc();
      v45[0] = v39;
      *v27 = 136315394;
      v40 = v22;
      *(v27 + 4) = sub_181C64FFC(v22, a3, v45);
      *(v27 + 12) = 2080;
      v28 = sub_181FBD958();
      v29 = a3;
      v31 = v30;
      sub_181FCE158(v11, type metadata accessor for NWActorSystem.ServerRole);
      v32 = sub_181C64FFC(v28, v31, v45);
      a3 = v29;

      *(v27 + 14) = v32;
      _os_log_impl(&dword_181A37000, v24, v25, "Registering %s as %s", v27, 0x16u);
      v33 = v39;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v33, -1, -1);
      MEMORY[0x1865DF520](v27, -1, -1);

      v34 = v40;
    }

    else
    {

      sub_181FCE158(v11, type metadata accessor for NWActorSystem.ServerRole);
      v34 = v22;
    }

    v37 = v43;
    sub_181FCDFD4(v46, v43, type metadata accessor for NWActorSystem.ServerRole);
    v42(v37, 0, 1, v8);
    swift_beginAccess();

    sub_1820FA800(v37, v34, a3);
    return swift_endAccess();
  }

  else
  {
    sub_181FCD1A0();
    swift_allocError();
    *v35 = xmmword_182AED520;
    *(v35 + 16) = 0xB000000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_181FC8F68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v38 = type metadata accessor for NWActorID();
  v48 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v44 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = *(a1 + 80);
  v49 = sub_181FCDF3C;
  v50 = a1;
  os_unfair_lock_lock(v9 + 4);
  v10 = 0;
  sub_181FCDF58(v52);
  os_unfair_lock_unlock(v9 + 4);
  result = *&v52[0];
  v47 = *(*&v52[0] + 16);
  if (!v47)
  {
  }

  v13 = 0;
  *&v11 = 136315138;
  v37 = v11;
  v42 = v8;
  v43 = v2;
  v46 = *&v52[0];
  while (v13 < *(result + 16))
  {
    v17 = sub_181FCDFD4(result + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v13, v8, type metadata accessor for NWActorID);
    v18 = *(v3 + 144);
    MEMORY[0x1EEE9AC00](v17);
    *(&v37 - 2) = v3;
    *(&v37 - 1) = v8;
    MEMORY[0x1EEE9AC00](v19);
    *(&v37 - 2) = sub_181FCDF74;
    *(&v37 - 1) = v20;
    os_unfair_lock_lock(v18 + 4);
    sub_181FCE630(v52);
    os_unfair_lock_unlock(v18 + 4);
    v22 = *&v52[0];
    if (*&v52[0])
    {
      v23 = *(&v52[0] + 1);
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      v25 = qword_1EA836B68;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = sub_182AD2698();
      __swift_project_value_buffer(v26, qword_1EA836B70);
      v27 = v44;
      sub_181FCDFD4(v8, v44, type metadata accessor for NWActorID);
      v28 = sub_182AD2678();
      v29 = sub_182AD38D8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v39 = v30;
        v40 = swift_slowAlloc();
        v51 = v40;
        *&v52[0] = 0;
        *v30 = v37;
        *(&v52[0] + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v52[0] = 0x49726F746341574ELL;
        *(&v52[0] + 1) = 0xEA00000000002844;
        MEMORY[0x1865D9CA0](*v27, v27[1]);
        MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
        sub_182AD2258();
        v41 = v10;
        sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
        v31 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v31);

        MEMORY[0x1865D9CA0](41, 0xE100000000000000);
        v32 = v52[0];
        v10 = v41;
        sub_181FCE158(v27, type metadata accessor for NWActorID);
        v33 = sub_181C64FFC(v32, *(&v32 + 1), &v51);

        v34 = v39;
        *(v39 + 1) = v33;
        v35 = v34;
        _os_log_impl(&dword_181A37000, v28, v29, "Calling invalidation handler for %s", v34, 0xCu);
        v36 = v40;
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1865DF520](v36, -1, -1);
        MEMORY[0x1865DF520](v35, -1, -1);
      }

      else
      {

        sub_181FCE158(v27, type metadata accessor for NWActorID);
      }

      *&v52[0] = v45;

      v22(v52);

      v21 = sub_181A554F4(v22);
      v14 = sub_181FCE5A8;
      v8 = v42;
      v3 = v43;
    }

    else
    {
      v14 = 0;
    }

    ++v13;
    MEMORY[0x1EEE9AC00](v21);
    *(&v37 - 2) = v3;
    *(&v37 - 1) = v8;
    MEMORY[0x1EEE9AC00](v15);
    *(&v37 - 2) = sub_181FCE5E8;
    *(&v37 - 1) = v16;
    os_unfair_lock_lock(v18 + 4);
    sub_181FCE69C();
    os_unfair_lock_unlock(v18 + 4);
    sub_181A554F4(v14);
    sub_181FCE158(v8, type metadata accessor for NWActorID);
    result = v46;
    if (v47 == v13)
    {
    }
  }

  __break(1u);
  return result;
}

__n128 sub_181FC950C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X8>)
{
  swift_beginAccess();
  v6 = sub_18224F288(a2);
  v14 = 0u;
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 208);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1822567D0();
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for NWActorID();
    sub_181FCE158(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for NWActorID);
    v14 = *(*(v10 + 56) + 16 * v8);
    sub_181FAB6EC(v8, v10);
    *(a1 + 208) = v10;
  }

  swift_endAccess();
  result = v14;
  *a3 = v14;
  return result;
}

uint64_t sub_181FC9610(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = a1[3];
  a1[3] = &unk_182AED928;
  a1[4] = v4;

  sub_181A554F4(v5);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = a1[5];
  a1[5] = sub_181FCDEC4;
  a1[6] = v8;

  sub_181A554F4(v9);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = a1[7];
  a1[7] = sub_181FCDECC;
  a1[8] = v10;

  sub_181A554F4(v11);
}

uint64_t sub_181FC97F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181FC9814, 0, 0);
}

uint64_t sub_181FC9814()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    v0[12] = v3;
    if (v3)
    {
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v4[1] = sub_181FC9944;
      v5 = v0[8];

      return sub_181FC6B80(v5, v2);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_181FC9944()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_181FC9AC4;
  }

  else
  {

    v2 = sub_181FC9A60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC9A60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FC9AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FC9B30(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_181FC8F68(v3, a1);
    }
  }

  return result;
}

uint64_t sub_181FC9BCC(uint64_t *a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v2 = sub_181FC76D4(a1);

  return v2;
}

void sub_181FC9C54(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v89 = a3;
  v94 = a4;
  v92 = type metadata accessor for NWActorDiscoveryMechanism.Target(0);
  MEMORY[0x1EEE9AC00](v92);
  v8 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = v86 - v12;
  v91 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v91);
  v90 = (v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v86 - v15);
  v17 = type metadata accessor for NWActorDiscoveryMechanism(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v95 = v86 - v22;
  swift_beginAccess();
  v23 = *(a1 + 200);
  if (*(v23 + 16))
  {
    v24 = sub_18224F288(a2);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();
      *v94 = v26;

      return;
    }
  }

  v96 = a2;
  swift_endAccess();
  swift_beginAccess();
  v27 = *(a1 + 168);
  if (!*(v27 + 16) || (v28 = sub_18224F288(v96), (v29 & 1) == 0))
  {
    swift_endAccess();
    sub_181FCD1A0();
    swift_allocError();
    *v42 = 0xD000000000000061;
    v42[1] = 0x8000000182BD6BB0;
    v42[2] = 0x4000000000000000;
    swift_willThrow();
    return;
  }

  v87 = v4;
  sub_181FCDFD4(*(v27 + 56) + *(v18 + 72) * v28, v20, type metadata accessor for NWActorDiscoveryMechanism);
  v30 = v95;
  sub_181FCE30C(v20, v95, type metadata accessor for NWActorDiscoveryMechanism);
  swift_endAccess();
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v31 = sub_182AD2698();
  v32 = __swift_project_value_buffer(v31, qword_1EA836B70);
  sub_181FCDFD4(v96, v16, type metadata accessor for NWActorID);
  v33 = sub_182AD2678();
  v34 = sub_182AD38D8();
  v35 = os_log_type_enabled(v33, v34);
  v86[1] = v32;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    v97 = v86[0];
    *v36 = 136315138;
    aBlock = 0;
    v100 = 0xE000000000000000;
    sub_182AD3BA8();

    aBlock = 0x49726F746341574ELL;
    v100 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v16, v16[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_182AD2258();
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
    v37 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v37);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v38 = aBlock;
    v39 = v100;
    sub_181FCE158(v16, type metadata accessor for NWActorID);
    v40 = sub_181C64FFC(v38, v39, &v97);
    v30 = v95;

    *(v36 + 4) = v40;
    _os_log_impl(&dword_181A37000, v33, v34, "Establishing connection for %s", v36, 0xCu);
    v41 = v86[0];
    __swift_destroy_boxed_opaque_existential_1(v86[0]);
    MEMORY[0x1865DF520](v41, -1, -1);
    MEMORY[0x1865DF520](v36, -1, -1);
  }

  else
  {

    sub_181FCE158(v16, type metadata accessor for NWActorID);
  }

  sub_181FCDFD4(v30, v8, type metadata accessor for NWActorDiscoveryMechanism.Target);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = v87;
  if (EnumCaseMultiPayload != 1)
  {
    sub_181FCE158(v8, type metadata accessor for NWActorDiscoveryMechanism.Target);
    sub_181FCD1A0();
    swift_allocError();
    *v85 = 0xD00000000000004CLL;
    v85[1] = 0x8000000182BD6C20;
    v85[2] = 0x9000000000000000;
    swift_willThrow();
    sub_181FCE158(v30, type metadata accessor for NWActorDiscoveryMechanism);
    return;
  }

  sub_181FCE30C(v8, v93, type metadata accessor for NWEndpoint);
  v45 = *(*(v30 + *(v17 + 28)) + 16);
  os_unfair_lock_lock((v45 + 24));
  v46 = nw_parameters_copy(*(v45 + 16));
  type metadata accessor for NWParameters();
  v47 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  v49 = (v48 + 24);
  *(v48 + 16) = v46;
  v86[0] = v47;
  *(v47 + 16) = v48;
  os_unfair_lock_unlock((v45 + 24));
  if (qword_1EA836BC8 != -1)
  {
    swift_once();
  }

  v50 = qword_1EA8431A8;
  type metadata accessor for NWProtocolFramer.Options();
  v51 = swift_allocObject();
  options = nw_framer_create_options(*(v50 + 32));
  v92 = v51;
  *(v51 + 16) = options;
  v53 = sub_182AD2678();
  v54 = sub_182AD38D8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_181A37000, v53, v54, "Inserting Actor WireProtocol framer", v55, 2u);
    MEMORY[0x1865DF520](v55, -1, -1);
  }

  os_unfair_lock_lock(v49);
  v56 = nw_parameters_copy_default_protocol_stack(*(v48 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v58 = (inited + 24);
  *(inited + 16) = v56;
  v59 = (inited + 16);
  os_unfair_lock_unlock(v49);
  os_unfair_lock_lock(v58);
  v97 = MEMORY[0x1E69E7CC0];
  v60 = swift_allocObject();
  *(v60 + 16) = &v97;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_181EC65EC;
  *(v61 + 24) = v60;
  v103 = sub_181FCE6B4;
  v104 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v100 = 1107296256;
  v101 = sub_181EC635C;
  v102 = &block_descriptor_79;
  v62 = _Block_copy(&aBlock);

  nw_protocol_stack_iterate_application_protocols(v56, v62);
  _Block_release(v62);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if (v56)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v58);
    aBlock = v97;
    v62 = v93;
    if (!(v97 >> 62))
    {
      goto LABEL_19;
    }
  }

  if (sub_182AD3EB8() < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_19:
  v63 = v92;

  sub_181FCCE80(0, 0, v63, sub_18206A4F8);

  v65 = aBlock;
  MEMORY[0x1EEE9AC00](v64);
  v86[-2] = v65;
  os_unfair_lock_lock(v58);
  sub_181C4E3C0(v59);
  if (v44)
  {
LABEL_28:
    os_unfair_lock_unlock(v58);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v58);

  v66 = v88;
  sub_181FCDFD4(v62, v88, type metadata accessor for NWEndpoint);
  type metadata accessor for NWConnection(0);
  swift_allocObject();
  v67 = v86[0];

  v68 = sub_181E60914(v66, v67);

  swift_beginAccess();
  LOBYTE(v66) = *(a1 + 16);
  _s15ActorConnectionCMa(0);
  swift_allocObject();
  v69 = sub_182151708(v68, v66);

  sub_181FC9610(v69);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(a1 + 200);
  *(a1 + 200) = 0x8000000000000000;
  v71 = v96;
  sub_18225902C(v69, v96, isUniquelyReferenced_nonNull_native);
  *(a1 + 200) = v105;
  swift_endAccess();
  sub_182150CDC(v71, v89);
  v72 = v71;
  v73 = v90;
  sub_181FCDFD4(v72, v90, type metadata accessor for NWActorID);
  swift_retain_n();
  v74 = sub_182AD2678();
  v75 = sub_182AD38D8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = 0;
    v105 = v96;
    *v76 = 136315394;
    v98 = 0xE000000000000000;
    sub_182AD3BA8();

    v97 = 0x49726F746341574ELL;
    v98 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v73, v73[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_182AD2258();
    v77 = v73;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
    v78 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v78);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v79 = v97;
    v80 = v98;
    sub_181FCE158(v77, type metadata accessor for NWActorID);
    v81 = sub_181C64FFC(v79, v80, &v105);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2048;
    id = nw_connection_get_id(v68[2].isa);

    *(v76 + 14) = id;

    _os_log_impl(&dword_181A37000, v74, v75, "Established connection for %s: C%llu", v76, 0x16u);
    v83 = v96;
    __swift_destroy_boxed_opaque_existential_1(v96);
    MEMORY[0x1865DF520](v83, -1, -1);
    MEMORY[0x1865DF520](v76, -1, -1);

    v84 = v93;
  }

  else
  {

    sub_181FCE158(v73, type metadata accessor for NWActorID);
    v84 = v62;
  }

  sub_181FCE158(v84, type metadata accessor for NWEndpoint);
  sub_181FCE158(v95, type metadata accessor for NWActorDiscoveryMechanism);
  *v94 = v69;
}

void sub_181FCAA78(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 176))
  {
    *a2 = 0;
    return;
  }

  v28 = v3;
  v29 = v4;
  v5 = *(a1 + 24);
  v6 = *(a1 + 104);
  *&v26[64] = *(a1 + 88);
  *&v26[80] = v6;
  *&v26[96] = *(a1 + 120);
  v27 = *(a1 + 136);
  v7 = *(a1 + 40);
  *v26 = v5;
  *&v26[16] = v7;
  v8 = *(a1 + 72);
  *&v26[32] = *(a1 + 56);
  *&v26[48] = v8;
  if (!(v27 >> 62))
  {
    v9 = a1;
    v10 = a2;
    v17 = *v26;
    v18 = *&v26[8];
    v19 = *&v26[24];
    v20 = *&v26[40];
    v21 = *&v26[56];
    v22 = *&v26[72];
    v23 = *&v26[88];
    v25 = v26[106];
    v24 = *&v26[104];
    sub_181FCE418(v26, v16);
    sub_181FF0A24(&v17);
    if (v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v27 >> 62 == 1)
  {
    v9 = a1;
    v10 = a2;
    v16[0] = 0;
    type metadata accessor for NWListener();
    swift_allocObject();

    v12 = NWListener.init(using:on:)(v11, v16);
    if (v2)
    {
      return;
    }

LABEL_8:
    v13 = v12;
    v14 = swift_allocObject();
    swift_weakInit();

    NWListener.newConnectionHandler.setter(sub_181FCE408, v14);

    v15 = swift_allocObject();
    swift_weakInit();

    NWListener.stateUpdateHandler.setter(sub_181FCE410, v15);

    *(v9 + 176) = v13;

    *v10 = v13;
    return;
  }

  *a2 = 0;
}

uint64_t sub_181FCAC94(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_181FCACF4(a1);
  }

  return result;
}

uint64_t sub_181FCACF4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-1] - v5;
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA836B70);

  v8 = sub_182AD2678();
  v9 = sub_182AD38D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = a1;
    v21[0] = v11;
    *v10 = 136315138;
    type metadata accessor for NWConnection(0);

    v12 = sub_182AD3038();
    v14 = sub_181C64FFC(v12, v13, v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "Received connection: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v2 + 16);
  _s15ActorConnectionCMa(0);
  swift_allocObject();
  v16 = sub_182151708(a1, v15);

  sub_181FC9610(v16);
  v17 = sub_182AD3548();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v2;

  sub_181F774B4(0, 0, v6, &unk_182AED980, v18);
}

uint64_t sub_181FCAFAC(unsigned int *a1)
{
  v1 = *(a1 + 4);
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v2;
    v5 = (v2 | (v1 << 32)) >> 32;
    sub_181FCB028(&v4);
  }

  return result;
}

void sub_181FCB028(unsigned int *a1)
{
  v1 = *a1 | (*(a1 + 4) << 32);
  if (qword_1EA836B68 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA836B70);
    v3 = sub_182AD2678();
    v4 = sub_182AD38D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v42 = v6;
      *v5 = 136315138;
      v7 = sub_182AD3038();
      v9 = sub_181C64FFC(v7, v8, &v42);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_181A37000, v3, v4, "Listener state changed to %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1865DF520](v6, -1, -1);
      MEMORY[0x1865DF520](v5, -1, -1);
    }

    if (!(v1 >> 38))
    {
      break;
    }

    if (v1 >> 38 != 1)
    {
      if (v1 == 0x8000000001)
      {
        sub_181FCB4F8();
      }

      return;
    }

    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    v40 = v1;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v42 = v13;
      *v12 = 136315138;
      v14 = HIDWORD(v1) & 0x3F;
      v15 = sub_182AD3038();
      v17 = sub_181C64FFC(v15, v16, &v42);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_181A37000, v10, v11, "Listener moved to failed state with error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    else
    {
      v14 = HIDWORD(v1) & 0x3F;
    }

    v25 = *(v41 + 144);
    MEMORY[0x1EEE9AC00](v26);
    os_unfair_lock_lock(v25 + 4);
    sub_181FCCB84(&v42);
    os_unfair_lock_unlock(v25 + 4);
    v27 = v42;
    v28 = v42 + 64;
    v29 = 1 << *(v42 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v1 = v30 & *(v42 + 64);
    v31 = (v29 + 63) >> 6;

    v32 = 0;
    while (v1)
    {
      v33 = v32;
LABEL_22:
      v34 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v35 = (*(v27 + 48) + ((v33 << 10) | (16 * v34)));
      v36 = *v35;
      v37 = v35[1];
      sub_181F4B3B8();
      v38 = swift_allocError();
      *v39 = v40;
      *(v39 + 4) = v14;

      sub_181FC1468(v36, v37, v38);
    }

    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {

        return;
      }

      v1 = *(v28 + 8 * v33);
      ++v32;
      if (v1)
      {
        v32 = v33;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  v18 = sub_182AD2678();
  v19 = sub_182AD38B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = v21;
    *v20 = 136315138;
    v22 = sub_182AD3038();
    v24 = sub_181C64FFC(v22, v23, &v42);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_181A37000, v18, v19, "Listener moved to waiting state with error: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1865DF520](v21, -1, -1);
    MEMORY[0x1865DF520](v20, -1, -1);
  }
}

uint64_t sub_181FCB4F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-v3];
  v5 = *(v0 + 144);
  v14 = sub_181FCE4A0;
  v15 = v0;
  os_unfair_lock_lock(v5 + 4);
  sub_181FCE618(&v16);
  os_unfair_lock_unlock(v5 + 4);
  v6 = *(v16 + 16);
  if (v6)
  {
    v9 = *(v2 + 16);
    v7 = v2 + 16;
    v8 = v9;
    v10 = v16 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v11 = *(v7 + 56);
    do
    {
      v8(v4, v10, v1);
      sub_182AD34C8();
      (*(v7 - 8))(v4, v1);
      v10 += v11;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_181FCB66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for NWActorID();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FCB70C, 0, 0);
}

uint64_t sub_181FCB70C()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_181FCB7E0;
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000001FLL, 0x8000000182BD6CC0, sub_181FCE580, v4, v3);
}

uint64_t sub_181FCB7E0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_181FCBCA0;
  }

  else
  {
    v2 = sub_181FCB8F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FCB8F4()
{
  v27 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v3 + 144);
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v4;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_181FCE588;
  *(v7 + 24) = v6;
  os_unfair_lock_lock(v5 + 4);
  sub_181FCE618(&v25);
  os_unfair_lock_unlock(v5 + 4);
  if (v1)
  {
  }

  else
  {
    v9 = v25;

    if (v9)
    {
      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v11 = v0[6];
      v10 = v0[7];
      v12 = sub_182AD2698();
      __swift_project_value_buffer(v12, qword_1EA836B70);
      sub_181FCDFD4(v10, v11, type metadata accessor for NWActorID);
      v13 = sub_182AD2678();
      v14 = sub_182AD38B8();
      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[6];
      if (v15)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        v25 = 0;
        *v17 = 136315138;
        v26 = 0xE000000000000000;
        sub_182AD3BA8();

        v25 = 0x49726F746341574ELL;
        v26 = 0xEA00000000002844;
        MEMORY[0x1865D9CA0](*v16, v16[1]);
        MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
        sub_182AD2258();
        sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8]);
        v19 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v19);

        MEMORY[0x1865D9CA0](41, 0xE100000000000000);
        v20 = v25;
        v21 = v26;
        sub_181FCE158(v16, type metadata accessor for NWActorID);
        v22 = sub_181C64FFC(v20, v21, &v24);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_181A37000, v13, v14, "Unexpectedly received another connection for %s, invalidating old connection", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x1865DF520](v18, -1, -1);
        MEMORY[0x1865DF520](v17, -1, -1);
      }

      else
      {

        sub_181FCE158(v16, type metadata accessor for NWActorID);
      }

      sub_18214FECC();
    }

    sub_181FCE158(v0[7], type metadata accessor for NWActorID);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_181FCBCA0()
{
  v17 = v0;
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_182AD2698();
  __swift_project_value_buffer(v2, qword_1EA836B70);
  v3 = v1;
  v4 = sub_182AD2678();
  v5 = sub_182AD38B8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    v11 = sub_182AD3038();
    v13 = sub_181C64FFC(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_181A37000, v4, v5, "Failed to retrieve actorID for incoming connection: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1865DF520](v9, -1, -1);
    MEMORY[0x1865DF520](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_181FCBE80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 200);
  if (*(v8 + 16) && (v9 = sub_18224F288(a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 200);
  *(a1 + 200) = 0x8000000000000000;
  sub_18225902C(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 200) = v14;
  result = swift_endAccess();
  *a4 = v11;
  return result;
}

uint64_t sub_181FCBF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = sub_181CA266C(a2, a3);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_182256A10();
    }

    v13 = *(v12 + 56);
    v14 = type metadata accessor for NWActorSystem.ServerRole();
    v15 = *(v14 - 8);
    sub_181FCE30C(v13 + *(v15 + 72) * v10, a4, type metadata accessor for NWActorSystem.ServerRole);
    sub_181FABA20(v10, v12);
    *(a1 + 160) = v12;
    (*(v15 + 56))(a4, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for NWActorSystem.ServerRole();
    (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }

  return swift_endAccess();
}

uint64_t sub_181FCC120(uint64_t a1, unint64_t a2)
{
  v64 = a1;
  v65 = a2;
  v3 = type metadata accessor for NWActorID();
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839838);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = *(v2 + 144);
  v66 = sub_181FCE2BC;
  v67 = v2;
  v56 = v2;
  os_unfair_lock_lock(v14 + 4);
  sub_181FCE618(v69);
  v15 = v5;
  v62 = 0;
  v55 = v14;
  os_unfair_lock_unlock(v14 + 4);
  v16 = v69[0] + 64;
  v17 = 1 << *(v69[0] + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v69[0] + 64);
  v53 = (v17 + 63) >> 6;
  v59 = v69[0];

  v21 = 0;
  *&v22 = 136315394;
  v52 = v22;
  v60 = v10;
  v61 = v13;
  v63 = v15;
  v54 = v16;
  while (v19)
  {
    v29 = v21;
LABEL_16:
    v32 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v59;
    v35 = v57;
    sub_181FCDFD4(*(v59 + 48) + *(v58 + 72) * v33, v57, type metadata accessor for NWActorID);
    v36 = *(*(v34 + 56) + 8 * v33);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839840);
    v38 = *(v37 + 48);
    sub_181FCE30C(v35, v10, type metadata accessor for NWActorID);
    *&v10[v38] = v36;
    (*(*(v37 - 8) + 56))(v10, 0, 1, v37);

    v13 = v61;
    v15 = v63;
LABEL_17:
    sub_181B7D08C(v10, v13, &qword_1EA839838);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839840);
    if ((*(*(v39 - 8) + 48))(v13, 1, v39) == 1)
    {
    }

    v40 = *&v13[*(v39 + 48)];
    sub_181FCE30C(v13, v15, type metadata accessor for NWActorID);
    if (*v15 == v64 && v15[1] == v65 || (sub_182AD4268() & 1) != 0)
    {
      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v41 = sub_182AD2698();
      __swift_project_value_buffer(v41, qword_1EA836B70);

      v42 = sub_182AD2678();
      v43 = sub_182AD38D8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v69[0] = v45;
        *v44 = v52;
        v68 = v40;
        _s15ActorConnectionCMa(0);

        v46 = sub_182AD3038();
        v48 = sub_181C64FFC(v46, v47, v69);
        v13 = v61;

        *(v44 + 4) = v48;
        v49 = v64;
        v50 = v65;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_181C64FFC(v49, v50, v69);
        _os_log_impl(&dword_181A37000, v42, v43, "Canceling connection %s associated with %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v45, -1, -1);
        MEMORY[0x1865DF520](v44, -1, -1);
      }

      v23 = sub_18214FECC();
      MEMORY[0x1EEE9AC00](v23);
      v24 = v63;
      *(&v52 - 2) = v56;
      *(&v52 - 1) = v24;
      MEMORY[0x1EEE9AC00](v25);
      *(&v52 - 2) = sub_181FCE374;
      *(&v52 - 1) = v26;
      v27 = v55;
      os_unfair_lock_lock(v55 + 4);
      v28 = v62;
      sub_181FCE69C();
      v15 = v24;
      v62 = v28;
      os_unfair_lock_unlock(v27 + 4);

      v16 = v54;
    }

    else
    {
    }

    result = sub_181FCE158(v15, type metadata accessor for NWActorID);
    v10 = v60;
  }

  if (v53 <= v21 + 1)
  {
    v30 = v21 + 1;
  }

  else
  {
    v30 = v53;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v29 >= v53)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839840);
      (*(*(v51 - 8) + 56))(v10, 1, 1, v51);
      v19 = 0;
      v21 = v31;
      goto LABEL_17;
    }

    v19 = *(v16 + 8 * v29);
    ++v21;
    if (v19)
    {
      v21 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181FCC7C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181FCDFD4(a2, v5, type metadata accessor for NWActorID);
  swift_beginAccess();
  sub_1820FA2D4(0, v5);
  return swift_endAccess();
}

uint64_t sub_181FCC88C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = (result - a2);
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_181CA2688(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_182064734(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_181FCC990(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_181B81258(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1820648D8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}