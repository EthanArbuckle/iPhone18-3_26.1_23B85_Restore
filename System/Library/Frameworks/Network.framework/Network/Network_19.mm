BOOL sub_181B9AA34(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = v2[3];
    if (v4 != v3[3])
    {
      return 0;
    }

    if (v4 && v2 != v3)
    {
      v39 = a1;
      v5 = a2;
      v6 = v2[4];
      v7 = v6 + v4;
      if (v2[2] < v6 + v4)
      {
        v7 = v2[2];
      }

      v46 = *(a1 + 16);
      v47 = v6;
      v48 = v7;
      v8 = v3[4];
      v9 = v8 + v4;
      if (v3[2] < v9)
      {
        v9 = v3[2];
      }

      v43 = v3;
      v44 = v8;
      v45 = v9;
      swift_retain_n();

      v11 = v3;
      while (1)
      {
        v12 = v47;
        if (v47 != v48)
        {
          goto LABEL_18;
        }

        v10 = sub_181AC81FC(v10);
        if (v10)
        {
          break;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        v13 = 1;
LABEL_20:
        if (v8 == v45)
        {
          if ((sub_181AC81FC(v10) & 1) == 0)
          {

            if ((v13 & 1) == 0)
            {
              goto LABEL_27;
            }

            a2 = v5;
            a1 = v39;
            goto LABEL_33;
          }

          v11 = v43;
          v8 = v44;
        }

        v44 = v8 + 1;
        if ((v13 & 1) == 0)
        {
          v18 = v11 + 20 * v8;
          v19 = *(v18 + 5);
          if (v15 == v19)
          {
            v20 = *(v18 + 6);
            *&uu2[12] = *(v18 + 14);
            *uu1 = HIDWORD(v15);
            *&uu1[4] = v16;
            *&uu1[12] = v17;
            *uu2 = HIDWORD(v19);
            *&uu2[4] = v20;
            v10 = uuid_compare(uu1, uu2);
            ++v8;
            if (!v10)
            {
              continue;
            }
          }
        }

LABEL_26:

        goto LABEL_27;
      }

      v12 = v47;
LABEL_18:
      v13 = 0;
      v47 = v12 + 1;
      v14 = v46 + 20 * v12;
      v15 = *(v14 + 40);
      v16 = *(v14 + 48);
      v17 = *(v14 + 56);
      goto LABEL_20;
    }
  }

  else if (v3)
  {
    return 0;
  }

LABEL_33:
  v22 = *(a1 + 24);
  v23 = *(a2 + 24);
  if (!v22)
  {
    if (v23)
    {
      return 0;
    }

LABEL_56:
    if (*(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52) || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }

    return *(a1 + 64) == *(a2 + 64);
  }

  if (!v23)
  {
    return 0;
  }

  v24 = v22[3];
  if (v24 != v23[3])
  {
    return 0;
  }

  if (!v24 || v22 == v23)
  {
    goto LABEL_56;
  }

  v25 = a1;
  v26 = a2;
  v27 = v22[4];
  v28 = v27 + v24;
  if (v22[2] < v27 + v24)
  {
    v28 = v22[2];
  }

  v46 = *(a1 + 24);
  v47 = v27;
  v48 = v28;
  v29 = v23[4];
  v30 = v29 + v24;
  if (v23[2] < v30)
  {
    v30 = v23[2];
  }

  v43 = v23;
  v44 = v29;
  v45 = v30;
  swift_retain_n();

  v32 = v23;
  while (1)
  {
    v33 = v47;
    if (v47 != v48)
    {
      goto LABEL_46;
    }

    v31 = sub_181AC81FC(v31);
    if (v31)
    {
      v33 = v47;
LABEL_46:
      v34 = 0;
      v47 = v33 + 1;
      v35 = v46 + 24 * v33;
      v36 = *(v35 + 40);
      v37 = *(v35 + 48);
      goto LABEL_48;
    }

    v36 = 0;
    v37 = 0uLL;
    v34 = 1;
LABEL_48:
    if (v29 != v45)
    {
      goto LABEL_51;
    }

    v40 = v37;
    if ((sub_181AC81FC(v31) & 1) == 0)
    {
      break;
    }

    v32 = v43;
    v29 = v44;
    v37 = v40;
LABEL_51:
    v44 = v29 + 1;
    if ((v34 & 1) == 0)
    {
      v38 = &v32[3 * v29];
      if (v36 == v38[5])
      {
        *uu2 = *(v38 + 3);
        *uu1 = v37;
        v31 = uuid_compare(uu1, uu2);
        ++v29;
        if (!v31)
        {
          continue;
        }
      }
    }

    goto LABEL_26;
  }

  if (v34)
  {

    a2 = v26;
    a1 = v25;
    goto LABEL_56;
  }

LABEL_27:

  return 0;
}

void _nw_path_flow_set_fast_open_blocked_0(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 8) == 0)
    {
      v6 = v5 | 8;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 8) != 0)
  {
    v6 = v5 & 0xFFF7;
    goto LABEL_6;
  }
}

uint64_t sub_181B9AEF8(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v13 = v9 | (v4 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a1 + 56) + 8 * v13);
    v18 = v17 == 0;

    if (!v17)
    {
      return v18;
    }

    v19 = sub_181AC2218(v15, v16);
    if ((v20 & 1) == 0)
    {
      goto LABEL_83;
    }

    v37 = v10;
    v21 = *(*(a2 + 56) + 8 * v19);
    v22 = *(v21 + 32);
    *uu2 = *(v17 + 32);
    *uu1 = v22;

    if (uuid_compare(uu1, uu2))
    {
      goto LABEL_82;
    }

    v23 = *(v21 + 56);
    v24 = *(v21 + 64);
    v25 = *(v21 + 72);
    v26 = *(v17 + 56);
    v27 = *(v17 + 64);
    v28 = *(v17 + 72);
    if (v23 > 2)
    {
      switch(v23)
      {
        case 3:
          if (v26 != 3)
          {
            goto LABEL_82;
          }

          goto LABEL_41;
        case 4:
          if (v26 != 4)
          {
            goto LABEL_82;
          }

          goto LABEL_41;
        case 5:
          if (v26 != 5)
          {
            goto LABEL_82;
          }

          goto LABEL_41;
      }
    }

    else
    {
      switch(v23)
      {
        case 0:
          if (v26)
          {
            goto LABEL_82;
          }

          goto LABEL_41;
        case 1:
          if (v26 != 1)
          {
            goto LABEL_82;
          }

          goto LABEL_41;
        case 2:
          if (v26 != 2)
          {
            goto LABEL_82;
          }

          goto LABEL_41;
      }
    }

    if (v26 < 6 || (*(v21 + 48) == *(v17 + 48) ? (v29 = v23 == v26) : (v29 = 0), !v29 && (v35 = *(v17 + 64), v36 = *(v21 + 64), v30 = sub_182AD4268(), v27 = v35, v24 = v36, (v30 & 1) == 0)))
    {
LABEL_82:

LABEL_83:

      return 0;
    }

LABEL_41:
    if (v25 > 4)
    {
      if (v25 <= 6)
      {
        if (v25 == 5)
        {
          if (v28 != 5)
          {
            goto LABEL_82;
          }
        }

        else if (v28 != 6)
        {
          goto LABEL_82;
        }

        goto LABEL_78;
      }

      switch(v25)
      {
        case 7:
          if (v28 != 7)
          {
            goto LABEL_82;
          }

          goto LABEL_78;
        case 8:
          if (v28 != 8)
          {
            goto LABEL_82;
          }

          goto LABEL_78;
        case 9:
          if (v28 != 9)
          {
            goto LABEL_82;
          }

          goto LABEL_78;
      }
    }

    else
    {
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          if (v28 != 2)
          {
            goto LABEL_82;
          }
        }

        else if (v25 == 3)
        {
          if (v28 != 3)
          {
            goto LABEL_82;
          }
        }

        else if (v28 != 4)
        {
          goto LABEL_82;
        }

        goto LABEL_78;
      }

      if (!v25)
      {
        if (v28)
        {
          goto LABEL_82;
        }

        goto LABEL_78;
      }

      if (v25 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_82;
        }

        goto LABEL_78;
      }
    }

    if (v28 < 0xA)
    {
      goto LABEL_82;
    }

    v31 = v24 == v27 && v25 == v28;
    if (!v31 && (sub_182AD4268() & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_78:
    if (*(v21 + 80) != *(v17 + 80))
    {
      goto LABEL_82;
    }

    v32 = *(v21 + 84);
    v33 = *(v17 + 84);

    v29 = v32 == v33;
    v7 = v37;
    if (!v29)
    {
      return v18;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(a1 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }
}

BOOL nw_path_flow_get_id(void *a1, unsigned __int8 *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    id = _nw_path_flow_get_id(v3, a2);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_path_flow_get_id";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v8, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_path_flow_get_id";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null flow", buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v18 = "nw_path_flow_get_id";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_path_flow_get_id";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_path_flow_get_id";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  id = 0;
LABEL_3:

  return id;
}

BOOL sub_181B9B560(char *a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  *src = *(v3 + 3);

  v8 = *src;
  v7 = 0uLL;
  v5 = _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v8, &v7);
  if (!v5)
  {
    uuid_copy(a2, src);
  }

  return !v5;
}

char *_nw_path_override_viable(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 11) & 1);
  }

  return result;
}

void _nw_path_set_override_local_endpoint(char *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
      v4 = a1;
      swift_beginAccess();
      v5 = *(v3 + 26);
      *(v3 + 26) = a2;
      v6 = a2;
    }
  }
}

char *_nw_path_copy_override_local_endpoint(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    v3 = v1[26];

    return v3;
  }

  return result;
}

BOOL _s7Network9InterfaceV24isDeepEqualWithOptionals3if13if2SbACSg_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  v6[0] = *a2;
  v6[1] = v2;
  swift_retain_n();
  swift_retain_n();
  v4 = sub_181B9C7D8(v6);

  return v4;
}

id _nw_path_flow_create()
{
  sub_181B9B8A4(v11);
  v0 = type metadata accessor for __NWPathFlow();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC7Network12__NWPathFlow_keyStorage] = 0;
  v2 = &v1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v3 = v12[0];
  *(v2 + 10) = v11[10];
  *(v2 + 11) = v3;
  *(v2 + 186) = *(v12 + 10);
  v4 = v11[7];
  *(v2 + 6) = v11[6];
  *(v2 + 7) = v4;
  v5 = v11[9];
  *(v2 + 8) = v11[8];
  *(v2 + 9) = v5;
  v6 = v11[3];
  *(v2 + 2) = v11[2];
  *(v2 + 3) = v6;
  v7 = v11[5];
  *(v2 + 4) = v11[4];
  *(v2 + 5) = v7;
  v8 = v11[1];
  *v2 = v11[0];
  *(v2 + 1) = v8;
  v10.receiver = v1;
  v10.super_class = v0;
  return objc_msgSendSuper2(&v10, sel_init);
}

double sub_181B9B8A4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 116) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 256;
  *(a1 + 156) = 0;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return result;
}

void _nw_path_flow_set_id(void *a1, const unsigned __int8 *a2)
{
  v3 = a1;
  if (uuid_is_null(a2) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *a2;
    v4 = &v3[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    swift_beginAccess();
    *(v4 + 3) = v5;
  }
}

void sub_181B9B970(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 2) == 0)
    {
      v6 = v5 | 2;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 2) != 0)
  {
    v6 = v5 & 0xFFFD;
    goto LABEL_6;
  }
}

void _nw_path_flow_set_interface_struct(char *a1, uint64_t a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  *(v3 + 156) = a2;
  v3[164] = 0;
}

uint64_t _nw_path_flow_set_interface(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    a2 = *(a2 + OBJC_IVAR____TtC7Network13__NWInterface_interface);
  }

  v4 = &v3[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  swift_beginAccess();
  *(v4 + 1) = a2;
}

void sub_181B9BADC(char *a1, int a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  LODWORD(v3) = v3[153];

  if (v3 == 1)
  {
    v5 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v6 = v4;
    swift_beginAccess();
    *(v5 + 16) = 0;
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;
    *(v5 + 76) = 1;
  }

  v7 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v8 = v4;
  swift_beginAccess();
  if (v7[153])
  {
    __break(1u);
  }

  else
  {
    *(v7 + 32) = a2;
  }
}

void _nw_path_flow_set_local_endpoint(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = a2;
  }

  v5 = &v3[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  swift_beginAccess();
  v6 = *(v5 + 2);
  *(v5 + 2) = a2;
}

void _nw_path_flow_set_remote_endpoint(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = a2;
  }

  v5 = &v3[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  swift_beginAccess();
  v6 = *(v5 + 3);
  *(v5 + 3) = a2;
}

char *_nw_array_copy(void *a1)
{
  v2 = type metadata accessor for NWArray();
  v3 = a1;
  v4 = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v6 = *&v3[v5];

  v7 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  *&v4[v7] = v6;

  return v4;
}

void sub_181B9BD64(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 1) == 0)
    {
      v6 = v5 | 1;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if (v5)
  {
    v6 = v5 & 0xFFFE;
    goto LABEL_6;
  }
}

BOOL _s7Network15AddressEndpointV0bC4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 26);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 26);
  if (v6 <= 1)
  {
    if (*(a1 + 26))
    {
      if (v11 == 1)
      {
        v29 = *a1;
        v30 = v2;
        v31 = v4;
        v26 = v8;
        v27 = v7;
        v28 = v9;
        sub_181B9979C(v8, v7, v9, v10, 1u);
        sub_181B9979C(v3, v2, v4, v5, 1u);
        sub_181B9979C(v3, v2, v4, v5, 1u);
        sub_181B9979C(v8, v7, v9, v10, 1u);
        v24 = _s7Network11IPv6AddressV2eeoiySbAC_ACtFZ_0(&v29, &v26);
        sub_181AD1DE4(v3, v2, v4, v5, 1u);
        sub_181AD1DE4(v8, v7, v9, v10, 1u);
        sub_181AD1DE4(v8, v7, v9, v10, 1u);
        sub_181AD1DE4(v3, v2, v4, v5, 1u);
        return v24 & (v5 == v10);
      }
    }

    else if (!*(a2 + 26))
    {
      LODWORD(v29) = *a1;
      v30 = v2;
      LODWORD(v26) = v8;
      v27 = v7;
      sub_181B9979C(v8, v7, v9, v10, 0);
      sub_181B9979C(v3, v2, v4, v5, 0);
      sub_181B9979C(v3, v2, v4, v5, 0);
      sub_181B9979C(v8, v7, v9, v10, 0);
      v25 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v29, &v26);
      sub_181AD1DE4(v3, v2, v4, v5, 0);
      sub_181AD1DE4(v8, v7, v9, v10, 0);
      sub_181AD1DE4(v8, v7, v9, v10, 0);
      sub_181AD1DE4(v3, v2, v4, v5, 0);
      return (v25 & 1) != 0 && v4 == v9;
    }

LABEL_33:
    sub_181B9979C(v8, v7, v9, v10, v11);
    sub_181AD1DE4(v3, v2, v4, v5, v6);
    sub_181AD1DE4(v8, v7, v9, v10, v11);
    return 0;
  }

  if (v6 == 2)
  {
    if (v11 != 2)
    {

      goto LABEL_33;
    }

    v14 = *a1;
    if (v3 != v8 || v2 != v7)
    {
      v16 = sub_182AD4268();
      sub_181B9979C(v3, v2, v4, v5, 2u);
      sub_181B9979C(v8, v7, v9, v10, 2u);
      sub_181AD1DE4(v3, v2, v4, v5, 2u);
      sub_181AD1DE4(v8, v7, v9, v10, 2u);
      return v16 & 1;
    }

    sub_181B9979C(v14, v2, v4, v5, 2u);
    sub_181B9979C(v3, v2, v9, v10, 2u);
    sub_181AD1DE4(v3, v2, v4, v5, 2u);
    v19 = v3;
    v20 = v2;
    v21 = v9;
    v22 = v10;
    v23 = 2;
LABEL_39:
    sub_181AD1DE4(v19, v20, v21, v22, v23);
    return 1;
  }

  if (v6 != 3)
  {
    if (v11 != 4 || (v7 | v8 | v9) != 0 || v10 != 0)
    {
      goto LABEL_33;
    }

    sub_181AD1DE4(*a1, v2, v4, v5, 4u);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 4;
    goto LABEL_39;
  }

  if (v11 != 3)
  {
    goto LABEL_33;
  }

  sub_181AD1DE4(*a1, v2, v4, v5, 3u);
  sub_181AD1DE4(v8, v7, v9, v10, 3u);
  return v2 == v7 && (v8 ^ v3) >> 32 == 0;
}

void nw_context_add_cache_entry(void *a1, int32x2_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = v3;
      v5 = v4;
      if ((v4[19] & 8) == 0)
      {
        dispatch_assert_queue_V2(v4[1]);
      }

      v27 = nw_context_copy_cache_context(v5);
      v6 = v27[3];
      v7 = *v6;
      *a2 = *v6;
      if (v7)
      {
        *(*&v7 + 8) = a2;
      }

      else
      {
        v6[1] = a2;
      }

      *v6 = a2;
      a2[1] = v6;
      v8 = v6[2];
      a2[2] = v8;
      v9 = a2 + 2;
      if (v8)
      {
        *(*&v8 + 24) = v9;
      }

      else
      {
        v6[3] = v9;
      }

      v6[2] = a2;
      a2[3] = &v6[2];
      v6[8] = vadd_s32(v6[8], 0x100000001);

      return;
    }

    v14 = v3;
    v15 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_context_add_cache_entry";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v16, &type, &v28))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v31 = "nw_context_add_cache_entry";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null cache_entry", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v31 = "nw_context_add_cache_entry";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v23, "%{public}s called with null cache_entry, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_48;
      }

      if (v24)
      {
        *buf = 136446210;
        v31 = "nw_context_add_cache_entry";
        _os_log_impl(&dword_181A37000, v17, v23, "%{public}s called with null cache_entry, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v31 = "nw_context_add_cache_entry";
        _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null cache_entry, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_48:
    if (v16)
    {
      free(v16);
    }

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_context_add_cache_entry";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v11, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_context_add_cache_entry";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v31 = "nw_context_add_cache_entry";
          v32 = 2082;
          v33 = v19;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_43;
      }

      if (v21)
      {
        *buf = 136446210;
        v31 = "nw_context_add_cache_entry";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_context_add_cache_entry";
        _os_log_impl(&dword_181A37000, v12, v25, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_43:
  if (v11)
  {
    free(v11);
  }
}

BOOL sub_181B9C7D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  *&v43[0] = v3;
  *&v42[0] = v2;
  if ((_s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(v43, v42) & 1) != 0 && *(v3 + 24) == *(v2 + 24))
  {
    v4 = *(v3 + 136);
    v40[4] = *(v3 + 120);
    v40[5] = v4;
    v5 = *(v3 + 168);
    v40[6] = *(v3 + 152);
    v40[7] = v5;
    v6 = *(v3 + 72);
    v40[0] = *(v3 + 56);
    v40[1] = v6;
    v7 = *(v3 + 104);
    v40[2] = *(v3 + 88);
    v40[3] = v7;
    v8 = *(v3 + 136);
    v36 = *(v3 + 120);
    v37 = v8;
    v9 = *(v3 + 168);
    v38 = *(v3 + 152);
    v39 = v9;
    v10 = *(v3 + 72);
    v32 = *(v3 + 56);
    v33 = v10;
    v11 = *(v3 + 104);
    v34 = *(v3 + 88);
    v35 = v11;
    v12 = *(v2 + 56);
    v13 = *(v2 + 72);
    v14 = *(v2 + 104);
    v41[2] = *(v2 + 88);
    v41[3] = v14;
    v41[0] = v12;
    v41[1] = v13;
    v15 = *(v2 + 120);
    v16 = *(v2 + 136);
    v17 = *(v2 + 168);
    v41[6] = *(v2 + 152);
    v41[7] = v17;
    v41[4] = v15;
    v41[5] = v16;
    v18 = *(v2 + 136);
    v28 = *(v2 + 120);
    v29 = v18;
    v19 = *(v2 + 168);
    v30 = *(v2 + 152);
    v31 = v19;
    v20 = *(v2 + 72);
    v24 = *(v2 + 56);
    v25 = v20;
    v21 = *(v2 + 104);
    v26 = *(v2 + 88);
    v27 = v21;
    sub_181B9D0C4(v40, v43);
    sub_181B9D0C4(v41, v43);
    v22 = sub_181B9D150(&v32, &v24);
    v42[4] = v28;
    v42[5] = v29;
    v42[6] = v30;
    v42[7] = v31;
    v42[0] = v24;
    v42[1] = v25;
    v42[2] = v26;
    v42[3] = v27;
    sub_181B9D120(v42);
    v43[4] = v36;
    v43[5] = v37;
    v43[6] = v38;
    v43[7] = v39;
    v43[0] = v32;
    v43[1] = v33;
    v43[2] = v34;
    v43[3] = v35;
    sub_181B9D120(v43);
  }

  else
  {
    return 0;
  }

  return v22;
}

uint64_t sub_181B9C978(void *a1, unsigned __int8 *a2, _DWORD *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a3)
  {
    *a3 = 0;
  }

  v7 = &v5[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  swift_beginAccess();
  if (v7[153])
  {
    goto LABEL_8;
  }

  v9 = *(v7 + 17);
  v8 = *(v7 + 18);
  v10 = v7[152];
  if (a3)
  {
    *a3 = *(v7 + 33);
  }

  if ((v10 & 1) != 0 || (*&src = v9, *(&src + 1) = v8, v12 = 0uLL, _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&src, &v12)))
  {
LABEL_8:

    return 0;
  }

  else
  {
    *&src = v9;
    *(&src + 1) = v8;
    uuid_copy(a2, &src);

    return 1;
  }
}

uint64_t nw_endpoint_handler_get_state(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[30];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_handler_get_state";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_state";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_endpoint_handler_get_state";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_state";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_state";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t sub_181B9CDF8(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D8);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_1820E5B98(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    type metadata accessor for __NWPathFlow();
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 33;
      }

      *(v8 + 16) = v10 >> 3;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181AB76EC(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D8);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 33;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 3;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181F47BD4(v8 + 16, v8 + 40, v4, v3 + 40, type metadata accessor for __NWPathFlow);
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 40) == *(*a2 + 40) && *(*a1 + 48) == *(v3 + 48);
  if (!v4 && (sub_182AD4268() & 1) == 0 || *(v2 + 16) != *(v3 + 16))
  {
    return 0;
  }

  v5 = *(v3 + 184);
  if (v5 <= 1)
  {
    if (!*(v3 + 184))
    {
      goto LABEL_20;
    }

    v7 = 2;
  }

  else
  {
    v6 = 4;
    if (v5 != 3)
    {
      v6 = 1;
    }

    if (v5 == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = v6;
    }
  }

  if (*(v2 + 184))
  {
    v8 = qword_182AF5518[*(v2 + 184)] == v7;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    return 0;
  }

LABEL_20:
  v9 = *(v3 + 185);
  result = 1;
  if (*(v2 + 185))
  {
    v11 = qword_182AF5540[*(v2 + 185)] == qword_182AF5540[v9];
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    return 1u >> v9;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network11IPv4AddressVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

BOOL sub_181B9D150(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return v2 & 1;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v62 = *(a1 + 64);
  v63 = *(a1 + 56);
  v61 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 84);
  v9 = *(a1 + 92);
  v10 = *(a1 + 104);
  v11 = *(a1 + 100);
  v12 = *(a1 + 105);
  v13 = *(a1 + 106);
  v14 = *(a1 + 114);
  v15 = *(a1 + 126);
  v16 = *(a1 + 122);
  v17 = *(a1 + 127);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 64);
  v60 = *(a2 + 72);
  v24 = *(a2 + 84);
  v25 = *(a2 + 92);
  v26 = *(a2 + 104);
  v57 = *(a2 + 100);
  v58 = *(a2 + 105);
  v59 = *(a2 + 80);
  v27 = *(a2 + 106);
  v28 = *(a2 + 114);
  v29 = *(a2 + 126);
  v30 = *(a2 + 122);
  v31 = *(a2 + 127);
  if (v4 == 1)
  {
    v55 = v12;
    v56 = v7;
    v38 = v26;
    v39 = v25;
    v40 = v24;
    v41 = v11;
    v42 = v10;
    v43 = v9;
    v53 = v31;
    v54 = v17;
    v45 = v30;
    v46 = v29;
    v44 = v8;
    v47 = v28;
    v48 = v27;
    v49 = v16;
    v50 = v15;
    v51 = v14;
    v52 = v13;
    sub_181B9D598(v3, 1);
    if (v19 == 1)
    {
      sub_181B9D598(v18, 1);
      sub_181B9D5AC(v3, 1);
      goto LABEL_12;
    }

    sub_181B9D598(v18, v19);
LABEL_10:
    sub_181B9D5AC(v3, v4);
    v32 = v18;
    v33 = v19;
LABEL_19:
    sub_181B9D5AC(v32, v33);
    goto LABEL_20;
  }

  v66 = v3;
  v67 = v4;
  if (v19 == 1)
  {
    sub_181B9D598(v3, v4);
    sub_181B9D598(v18, 1);
    sub_181B9D598(v3, v4);

    goto LABEL_10;
  }

  v55 = v12;
  v56 = v7;
  v38 = v26;
  v39 = v25;
  v40 = v24;
  v41 = v11;
  v42 = v10;
  v43 = v9;
  v53 = v31;
  v54 = v17;
  v45 = v30;
  v46 = v29;
  v44 = v8;
  v47 = v28;
  v48 = v27;
  v49 = v16;
  v50 = v15;
  v51 = v14;
  v52 = v13;
  v64 = v18;
  v65 = v19;
  sub_181B9D598(v3, v4);
  sub_181B9D598(v18, v19);
  sub_181B9D598(v3, v4);
  v34 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v66, &v64);

  sub_181B9D5AC(v3, v4);
  if ((v34 & 1) == 0)
  {
LABEL_20:
    v2 = 0;
    return v2 & 1;
  }

LABEL_12:
  if (v6 == 1)
  {
    sub_181B9D598(v5, 1);
    if (v21 == 1)
    {
      sub_181B9D598(v20, 1);
      sub_181B9D5AC(v5, 1);
      v2 = 0;
      goto LABEL_23;
    }

    sub_181B9D598(v20, v21);
    goto LABEL_18;
  }

  v66 = v5;
  v67 = v6;
  if (v21 == 1)
  {
    sub_181B9D598(v5, v6);
    sub_181B9D598(v20, 1);
    sub_181B9D598(v5, v6);

LABEL_18:
    sub_181B9D5AC(v5, v6);
    v32 = v20;
    v33 = v21;
    goto LABEL_19;
  }

  v64 = v20;
  v65 = v21;
  sub_181B9D598(v5, v6);
  sub_181B9D598(v20, v21);
  sub_181B9D598(v5, v6);
  v36 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v66, &v64);

  sub_181B9D5AC(v5, v6);
  v2 = 0;
  if ((v36 & 1) == 0)
  {
    return v2 & 1;
  }

LABEL_23:
  if (v63 != v22 || v62 != v23 || v61 != v60 || v56 != v59)
  {
    return v2 & 1;
  }

  if ((v55 & 1) == 0)
  {
    if ((v58 & 1) == 0)
    {
      v37 = sub_181B9D5C0(v44, v43, (v41 | (v42 << 32)) & 0xFFFFFFFFFFLL, v40, v39, (v57 | (v38 << 32)) & 0xFFFFFFFFFFLL);
      if (v54 & 1 | !v37 | v53 & 1)
      {
        v2 = v37 & v54 & v53;
        return v2 & 1;
      }

      goto LABEL_33;
    }

    goto LABEL_20;
  }

  if (v54 & 1 | ((v58 & 1) == 0) | v53 & 1)
  {
    v2 = v58 & v54 & v53;
    return v2 & 1;
  }

LABEL_33:

  return sub_181B9D5C0(v52, v51, (v49 | (v50 << 32)) & 0xFFFFFFFFFFLL, v48, v47, (v45 | (v46 << 32)) & 0xFFFFFFFFFFLL);
}

uint64_t sub_181B9D598(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_181B9D5AC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

BOOL sub_181B9D5C0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (BYTE4(a3) != BYTE4(a6) || BYTE4(a3) && a1 != a4 || BYTE4(a3) >= 2u && BYTE1(a1) != BYTE1(a4) || BYTE4(a3) >= 3u && BYTE2(a1) != BYTE2(a4) || BYTE4(a3) >= 4u && BYTE3(a1) != BYTE3(a4) || BYTE4(a3) >= 5u && BYTE4(a1) != BYTE4(a4) || BYTE4(a3) >= 6u && BYTE5(a1) != BYTE5(a4) || BYTE4(a3) >= 7u && BYTE6(a1) != BYTE6(a4) || BYTE4(a3) >= 8u && (a4 ^ a1) >> 56 || BYTE4(a3) >= 9u && a2 != a5 || BYTE4(a3) >= 0xAu && BYTE1(a2) != BYTE1(a5) || BYTE4(a3) >= 0xBu && BYTE2(a2) != BYTE2(a5) || BYTE4(a3) >= 0xCu && BYTE3(a2) != BYTE3(a5) || BYTE4(a3) >= 0xDu && BYTE4(a2) != BYTE4(a5) || BYTE4(a3) >= 0xEu && BYTE5(a2) != BYTE5(a5) || BYTE4(a3) >= 0xFu && BYTE6(a2) != BYTE6(a5) || BYTE4(a3) >= 0x10u && (a5 ^ a2) >> 56 || BYTE4(a3) >= 0x11u && a3 != a6 || BYTE4(a3) >= 0x12u && BYTE1(a3) != BYTE1(a6) || BYTE4(a3) >= 0x13u && BYTE2(a3) != BYTE2(a6))
  {
    return 0;
  }

  return BYTE4(a3) < 0x14u || BYTE3(a3) == BYTE3(a6);
}

void nw_queue_source_set_qos_class_fallback(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1)
    {

      MEMORY[0x1EEE70140]();
    }

    return;
  }

  v2 = __nwlog_obj(0, a2);
  *buf = 136446210;
  v15 = "nw_queue_source_set_qos_class_fallback";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  v4 = __nwlog_fault(v3, &type, &v12);
  if (v4)
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj(v4, v5);
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_queue_source_set_qos_class_fallback";
        v8 = "%{public}s called with null source";
LABEL_19:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj(backtrace_string, v10);
        v7 = type;
        v11 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_queue_source_set_qos_class_fallback";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v15 = "nw_queue_source_set_qos_class_fallback";
        v8 = "%{public}s called with null source, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj(v4, v5);
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_queue_source_set_qos_class_fallback";
        v8 = "%{public}s called with null source, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v3)
  {
    free(v3);
  }
}

void *nw_endpoint_resolver_create_child_parameters(NWConcrete_nw_endpoint_handler *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_endpoint_handler_copy_current_path(v1);
  v3 = nw_endpoint_handler_copy_parameters(v1);
  v4 = _nw_parameters_copy(v3);
  if (v4)
  {
    *buf = 0;
    *&buf[8] = 0;
    if (nw_path_get_client_id(v2, buf))
    {
      v5 = v4;
      _nw_parameters_set_parent_id_inner(v5, buf, 0);
    }

    _nw_parameters_set_fallback_applied(v4, 1);
    v6 = nw_endpoint_handler_copy_endpoint(v1);
    if (v6)
    {
      v7 = v6;
      known_tracker_name = _nw_endpoint_get_known_tracker_name(v6);

      if (known_tracker_name)
      {
        _nw_parameters_set_is_known_tracker(v4, 1);
      }
    }

    v13 = v4;
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_resolver_create_child_parameters";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v10, &type, &v19))
  {
    goto LABEL_12;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_resolver_create_child_parameters";
      _os_log_impl(&dword_181A37000, v11, v12, "%{public}s nw_parameters_copy failed", buf, 0xCu);
    }

LABEL_11:

LABEL_12:
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_13:
    free(v10);
    goto LABEL_15;
  }

  if (v19 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v18 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_resolver_create_child_parameters";
      _os_log_impl(&dword_181A37000, v11, v18, "%{public}s nw_parameters_copy failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_11;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  v16 = type;
  v17 = os_log_type_enabled(v11, type);
  if (!backtrace_string)
  {
    if (v17)
    {
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_resolver_create_child_parameters";
      _os_log_impl(&dword_181A37000, v11, v16, "%{public}s nw_parameters_copy failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (v17)
  {
    *buf = 136446466;
    *&buf[4] = "nw_endpoint_resolver_create_child_parameters";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    _os_log_impl(&dword_181A37000, v11, v16, "%{public}s nw_parameters_copy failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v4;
}

char *nw_channel_create_with_attributes(_DWORD *a1, unsigned __int8 *uu, unsigned int a3, uint64_t a4)
{
  v131 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *block = 136446210;
    *&block[4] = "nw_channel_create_with_attributes";
    v82 = _os_log_send_and_compose_impl();
    out[0] = 16;
    LOBYTE(v114) = 0;
    if (!__nwlog_fault(v82, out, &v114))
    {
      goto LABEL_191;
    }

    if (out[0] == 17)
    {
      v83 = __nwlog_obj();
      v84 = out[0];
      if (os_log_type_enabled(v83, out[0]))
      {
        *block = 136446210;
        *&block[4] = "nw_channel_create_with_attributes";
        v85 = "%{public}s called with null context";
LABEL_190:
        _os_log_impl(&dword_181A37000, v83, v84, v85, block, 0xCu);
      }

LABEL_191:
      if (v82)
      {
        free(v82);
      }

      return 0;
    }

    if (v114 != 1)
    {
      v83 = __nwlog_obj();
      v84 = out[0];
      if (os_log_type_enabled(v83, out[0]))
      {
        *block = 136446210;
        *&block[4] = "nw_channel_create_with_attributes";
        v85 = "%{public}s called with null context, backtrace limit exceeded";
        goto LABEL_190;
      }

      goto LABEL_191;
    }

    backtrace_string = __nw_create_backtrace_string();
    v83 = __nwlog_obj();
    v84 = out[0];
    v87 = os_log_type_enabled(v83, out[0]);
    if (!backtrace_string)
    {
      if (v87)
      {
        *block = 136446210;
        *&block[4] = "nw_channel_create_with_attributes";
        v85 = "%{public}s called with null context, no backtrace";
        goto LABEL_190;
      }

      goto LABEL_191;
    }

    if (v87)
    {
      *block = 136446466;
      *&block[4] = "nw_channel_create_with_attributes";
      *&block[12] = 2082;
      *&block[14] = backtrace_string;
      v88 = "%{public}s called with null context, dumping backtrace:%{public}s";
LABEL_176:
      _os_log_impl(&dword_181A37000, v83, v84, v88, block, 0x16u);
    }

LABEL_177:
    free(backtrace_string);
    goto LABEL_191;
  }

  if (!a4)
  {
    __nwlog_obj();
    *block = 136446210;
    *&block[4] = "nw_channel_create_with_attributes";
    v82 = _os_log_send_and_compose_impl();
    out[0] = 16;
    LOBYTE(v114) = 0;
    if (!__nwlog_fault(v82, out, &v114))
    {
      goto LABEL_191;
    }

    if (out[0] == 17)
    {
      v83 = __nwlog_obj();
      v84 = out[0];
      if (os_log_type_enabled(v83, out[0]))
      {
        *block = 136446210;
        *&block[4] = "nw_channel_create_with_attributes";
        v85 = "%{public}s called with null attributes";
        goto LABEL_190;
      }

      goto LABEL_191;
    }

    if (v114 != 1)
    {
      v83 = __nwlog_obj();
      v84 = out[0];
      if (os_log_type_enabled(v83, out[0]))
      {
        *block = 136446210;
        *&block[4] = "nw_channel_create_with_attributes";
        v85 = "%{public}s called with null attributes, backtrace limit exceeded";
        goto LABEL_190;
      }

      goto LABEL_191;
    }

    backtrace_string = __nw_create_backtrace_string();
    v83 = __nwlog_obj();
    v84 = out[0];
    v89 = os_log_type_enabled(v83, out[0]);
    if (!backtrace_string)
    {
      if (v89)
      {
        *block = 136446210;
        *&block[4] = "nw_channel_create_with_attributes";
        v85 = "%{public}s called with null attributes, no backtrace";
        goto LABEL_190;
      }

      goto LABEL_191;
    }

    if (v89)
    {
      *block = 136446466;
      *&block[4] = "nw_channel_create_with_attributes";
      *&block[12] = 2082;
      *&block[14] = backtrace_string;
      v88 = "%{public}s called with null attributes, dumping backtrace:%{public}s";
      goto LABEL_176;
    }

    goto LABEL_177;
  }

  memset(out, 0, sizeof(out));
  uuid_unparse(uu, out);
  snprintf(&out[36], 0xCuLL, "-%u", a3);
  globals_for_channel = nw_context_get_globals_for_channel(a1);
  os_unfair_lock_lock((globals_for_channel + 16));
  v9 = nw_dictionary_copy_value(*globals_for_channel, out);
  if (v9)
  {
LABEL_158:
    os_unfair_lock_unlock((globals_for_channel + 16));
    return v9;
  }

  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 12);
  if (nw_channel_init(void)::onceToken != -1)
  {
    dispatch_once(&nw_channel_init(void)::onceToken, &__block_literal_global_48_92421);
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  objc_opt_class();
  v13 = _os_object_alloc();
  v14 = &qword_1ED411000;
  if (!v13)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_channel_create";
    v31 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v124) = 0;
    if (!__nwlog_fault(v31, type, &v124))
    {
      goto LABEL_79;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      v33 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create";
      v34 = "%{public}s nw_channel_obj_alloc failed";
    }

    else
    {
      if (v124 == 1)
      {
        v39 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v40 = gLogObj;
        v41 = type[0];
        v42 = os_log_type_enabled(gLogObj, type[0]);
        if (v39)
        {
          if (v42)
          {
            *buf = 136446466;
            *&buf[4] = "nw_channel_create";
            *&buf[12] = 2082;
            *&buf[14] = v39;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s nw_channel_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v39);
          goto LABEL_79;
        }

        if (!v42)
        {
LABEL_79:
          if (v31)
          {
            free(v31);
          }

          goto LABEL_127;
        }

        *buf = 136446210;
        *&buf[4] = "nw_channel_create";
        v34 = "%{public}s nw_channel_obj_alloc failed, no backtrace";
        v49 = v40;
        v50 = v41;
LABEL_78:
        _os_log_impl(&dword_181A37000, v49, v50, v34, buf, 0xCu);
        goto LABEL_79;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      v33 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create";
      v34 = "%{public}s nw_channel_obj_alloc failed, backtrace limit exceeded";
    }

    v49 = v32;
    v50 = v33;
    goto LABEL_78;
  }

  v9 = v13;
  *(v13 + 88) = *uu;
  *(v13 + 444) = a3;
  v15 = os_channel_attr_create();
  *(v9 + 18) = v15;
  if (!v15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_channel_create";
    v35 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v124) = 0;
    if (!__nwlog_fault(v35, type, &v124))
    {
      goto LABEL_124;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v37 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create";
      v38 = "%{public}s os_channel_attr_create failed";
      goto LABEL_122;
    }

    if (v124 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v37 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create";
      v38 = "%{public}s os_channel_attr_create failed, backtrace limit exceeded";
      goto LABEL_122;
    }

    v45 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    v47 = type[0];
    v48 = os_log_type_enabled(gLogObj, type[0]);
    if (!v45)
    {
      if (!v48)
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create";
      v38 = "%{public}s os_channel_attr_create failed, no backtrace";
      v65 = v46;
      v66 = v47;
      goto LABEL_123;
    }

    if (v48)
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_create";
      *&buf[12] = 2082;
      *&buf[14] = v45;
      _os_log_impl(&dword_181A37000, v46, v47, "%{public}s os_channel_attr_create failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v45);
LABEL_124:
    if (!v35)
    {
LABEL_126:
      os_release(v9);
      goto LABEL_127;
    }

LABEL_125:
    free(v35);
    goto LABEL_126;
  }

  if (v10)
  {
    v16 = v11 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (!v16)
  {
    os_channel_attr_set_key();
  }

  os_channel_attr_set();
  if (v12)
  {
    os_channel_attr_set();
  }

  if ((v12 & 2) != 0)
  {
    os_channel_attr_set();
  }

  os_channel_attr_set();
  if (a3 >= 0x10000)
  {
    __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_channel_create";
    *&buf[12] = 1024;
    *&buf[14] = a3;
    v90 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v124) = 0;
    if (!__nwlog_fault(v90, type, &v124))
    {
      goto LABEL_217;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v91 = __nwlog_obj();
      v92 = type[0];
      if (!os_log_type_enabled(v91, type[0]))
      {
        goto LABEL_217;
      }

      *buf = 136446466;
      *&buf[4] = "nw_channel_create";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      v93 = "%{public}s port %u > NEXUS_PORT_MAX";
    }

    else if (v124 == 1)
    {
      v94 = __nw_create_backtrace_string();
      v91 = __nwlog_obj();
      v92 = type[0];
      v95 = os_log_type_enabled(v91, type[0]);
      if (v94)
      {
        if (v95)
        {
          *buf = 136446722;
          *&buf[4] = "nw_channel_create";
          *&buf[12] = 1024;
          *&buf[14] = a3;
          *&buf[18] = 2082;
          *&buf[20] = v94;
          _os_log_impl(&dword_181A37000, v91, v92, "%{public}s port %u > NEXUS_PORT_MAX, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v94);
        if (!v90)
        {
          goto LABEL_219;
        }

        goto LABEL_218;
      }

      if (!v95)
      {
        goto LABEL_217;
      }

      *buf = 136446466;
      *&buf[4] = "nw_channel_create";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      v93 = "%{public}s port %u > NEXUS_PORT_MAX, no backtrace";
    }

    else
    {
      v91 = __nwlog_obj();
      v92 = type[0];
      if (!os_log_type_enabled(v91, type[0]))
      {
        goto LABEL_217;
      }

      *buf = 136446466;
      *&buf[4] = "nw_channel_create";
      *&buf[12] = 1024;
      *&buf[14] = a3;
      v93 = "%{public}s port %u > NEXUS_PORT_MAX, backtrace limit exceeded";
    }

    v100 = v91;
    v101 = v92;
    v102 = 18;
LABEL_216:
    _os_log_impl(&dword_181A37000, v100, v101, v93, buf, v102);
    goto LABEL_217;
  }

  extended = os_channel_create_extended();
  *(v9 + 17) = extended;
  if (!extended)
  {
    v43 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = &qword_1ED411000;
    v44 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_create";
      *&buf[12] = 1024;
      *&buf[14] = v43;
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s os_channel_create %{darwin.errno}d", buf, 0x12u);
    }

    os_release(v9);
    if (v43 == 2)
    {
      goto LABEL_157;
    }

LABEL_127:
    v114 = 0;
    v115 = &v114;
    v116 = 0x2000000000;
    v117 = 0;
    v69 = *globals_for_channel;
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 0x40000000;
    v103[2] = __nw_channel_create_with_attributes_block_invoke;
    v103[3] = &unk_1E6A3D400;
    v103[4] = &v114;
    nw_dictionary_apply(v69, v103);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v70 = *(v115 + 24);
    if (!v70)
    {
      v70 = "none";
    }

    *block = 136446722;
    *&block[4] = "nw_channel_create_with_attributes";
    *&block[12] = 2082;
    *&block[14] = out;
    *&block[22] = 2082;
    v128 = v70;
    v71 = _os_log_send_and_compose_impl();
    v107[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v113[0]) = 0;
    if (!__nwlog_fault(v71, v107, v113))
    {
      goto LABEL_151;
    }

    if (v107[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v72 = v14[275];
      v73 = v107[0];
      if (os_log_type_enabled(v72, v107[0]))
      {
        v74 = *(v115 + 24);
        if (!v74)
        {
          v74 = "none";
        }

        *block = 136446722;
        *&block[4] = "nw_channel_create_with_attributes";
        *&block[12] = 2082;
        *&block[14] = out;
        *&block[22] = 2082;
        v128 = v74;
        v75 = "%{public}s Channel creation with attributes failed with key: %{public}s, existing channels %{public}s";
LABEL_150:
        _os_log_impl(&dword_181A37000, v72, v73, v75, block, 0x20u);
      }
    }

    else if (LOBYTE(v113[0]) == 1)
    {
      v76 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v72 = v14[275];
      v73 = v107[0];
      v77 = os_log_type_enabled(v72, v107[0]);
      if (v76)
      {
        if (v77)
        {
          v78 = *(v115 + 24);
          if (!v78)
          {
            v78 = "none";
          }

          *block = 136446978;
          *&block[4] = "nw_channel_create_with_attributes";
          *&block[12] = 2082;
          *&block[14] = out;
          *&block[22] = 2082;
          v128 = v78;
          LOWORD(v129) = 2082;
          *(&v129 + 2) = v76;
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s Channel creation with attributes failed with key: %{public}s, existing channels %{public}s, dumping backtrace:%{public}s", block, 0x2Au);
        }

        free(v76);
        goto LABEL_151;
      }

      if (v77)
      {
        v80 = *(v115 + 24);
        if (!v80)
        {
          v80 = "none";
        }

        *block = 136446722;
        *&block[4] = "nw_channel_create_with_attributes";
        *&block[12] = 2082;
        *&block[14] = out;
        *&block[22] = 2082;
        v128 = v80;
        v75 = "%{public}s Channel creation with attributes failed with key: %{public}s, existing channels %{public}s, no backtrace";
        goto LABEL_150;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v72 = v14[275];
      v73 = v107[0];
      if (os_log_type_enabled(v72, v107[0]))
      {
        v79 = *(v115 + 24);
        if (!v79)
        {
          v79 = "none";
        }

        *block = 136446722;
        *&block[4] = "nw_channel_create_with_attributes";
        *&block[12] = 2082;
        *&block[14] = out;
        *&block[22] = 2082;
        v128 = v79;
        v75 = "%{public}s Channel creation with attributes failed with key: %{public}s, existing channels %{public}s, backtrace limit exceeded";
        goto LABEL_150;
      }
    }

LABEL_151:
    if (v71)
    {
      free(v71);
    }

    v81 = *(v115 + 24);
    if (v81)
    {
      free(v81);
      *(v115 + 24) = 0;
    }

    v62 = &v114;
LABEL_156:
    _Block_object_dispose(v62, 8);
LABEL_157:
    v9 = 0;
    goto LABEL_158;
  }

  fd = os_channel_get_fd();
  *(v9 + 112) = fd;
  if (fd < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = &qword_1ED411000;
    *buf = 136446210;
    *&buf[4] = "nw_channel_create";
    v35 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v124) = 0;
    if (!__nwlog_fault(v35, type, &v124))
    {
      goto LABEL_124;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (!os_log_type_enabled(v36, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create";
      v38 = "%{public}s failed to get fd for channel";
      goto LABEL_122;
    }

    if (v124 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (!os_log_type_enabled(v36, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_create";
      v38 = "%{public}s failed to get fd for channel, backtrace limit exceeded";
      goto LABEL_122;
    }

    v63 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type[0];
    v64 = os_log_type_enabled(v36, type[0]);
    if (v63)
    {
      if (v64)
      {
        *buf = 136446466;
        *&buf[4] = "nw_channel_create";
        *&buf[12] = 2082;
        *&buf[14] = v63;
        _os_log_impl(&dword_181A37000, v36, v37, "%{public}s failed to get fd for channel, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v63);
      if (!v35)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }

    if (v64)
    {
      *buf = 136446210;
      *&buf[4] = "nw_channel_create";
      v38 = "%{public}s failed to get fd for channel, no backtrace";
LABEL_122:
      v65 = v36;
      v66 = v37;
LABEL_123:
      _os_log_impl(&dword_181A37000, v65, v66, v38, buf, 0xCu);
      goto LABEL_124;
    }

    goto LABEL_124;
  }

  if (v12)
  {
    *(v9 + 230) |= 0x1000u;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v21 = "enabled";
    if ((*(v9 + 230) & 0x1000) == 0)
    {
      v21 = "disabled";
    }

    *buf = 136446466;
    *&buf[4] = "nw_channel_create";
    *&buf[12] = 2082;
    *&buf[14] = v21;
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s Channel user packet pool %{public}s", buf, 0x16u);
  }

  os_channel_ring_id();
  os_channel_ring_id();
  *(v9 + 27) = os_channel_tx_ring();
  *(v9 + 28) = os_channel_rx_ring();
  os_channel_read_attr();
  *type = 0;
  os_channel_attr_get();
  *(v9 + 113) = 0;
  if ((v9[461] & 0x10) != 0)
  {
    *type = 0;
    os_channel_attr_get();
  }

  *(v9 + 114) = 0;
  v124 = 0;
  os_channel_attr_get();
  v123 = 0;
  if (!os_channel_attr_get())
  {
    *(v9 + 230) = ((v123 & 1) << 11) | *(v9 + 230) & 0xF7FF;
  }

  v122 = 0;
  os_channel_attr_get();
  if (v17)
  {
    v22 = malloc_type_malloc(v11, 0x3E9CD47AuLL);
    if (!v22)
    {
      v23 = __nwlog_obj();
      os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      *&buf[4] = "nw_channel_create";
      v24 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort(v24);
      if (result)
      {
        goto LABEL_225;
      }

      free(v24);
      v22 = 0;
    }

    *(v9 + 2) = v22;
    memcpy(v22, v10, v11);
    *(v9 + 110) = v11;
  }

  if (!*(v9 + 113))
  {
    if (nw_channel_check_defunct(v9))
    {
      os_release(v9);
      goto LABEL_157;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_create";
    v90 = _os_log_send_and_compose_impl();
    v121 = OS_LOG_TYPE_ERROR;
    v120 = 0;
    if (__nwlog_fault(v90, &v121, &v120))
    {
      if (v121 == OS_LOG_TYPE_FAULT)
      {
        v96 = __nwlog_obj();
        v97 = v121;
        if (!os_log_type_enabled(v96, v121))
        {
          goto LABEL_217;
        }

        *buf = 136446210;
        *&buf[4] = "nw_channel_create";
        v93 = "%{public}s Channel slot size is 0";
        goto LABEL_224;
      }

      if (v120 == 1)
      {
        v98 = __nw_create_backtrace_string();
        v96 = __nwlog_obj();
        v97 = v121;
        v99 = os_log_type_enabled(v96, v121);
        if (v98)
        {
          if (v99)
          {
            *buf = 136446466;
            *&buf[4] = "nw_channel_create";
            *&buf[12] = 2082;
            *&buf[14] = v98;
            _os_log_impl(&dword_181A37000, v96, v97, "%{public}s Channel slot size is 0, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v98);
          goto LABEL_217;
        }

        if (!v99)
        {
          goto LABEL_217;
        }

        *buf = 136446210;
        *&buf[4] = "nw_channel_create";
        v93 = "%{public}s Channel slot size is 0, no backtrace";
      }

      else
      {
        v96 = __nwlog_obj();
        v97 = v121;
        if (!os_log_type_enabled(v96, v121))
        {
          goto LABEL_217;
        }

        *buf = 136446210;
        *&buf[4] = "nw_channel_create";
        v93 = "%{public}s Channel slot size is 0, backtrace limit exceeded";
      }

LABEL_224:
      v100 = v96;
      v101 = v97;
      v102 = 12;
      goto LABEL_216;
    }

LABEL_217:
    if (!v90)
    {
LABEL_219:
      os_release(v9);
      v14 = &qword_1ED411000;
      goto LABEL_127;
    }

LABEL_218:
    free(v90);
    goto LABEL_219;
  }

  *(v9 + 38) = 0;
  *(v9 + 39) = v9 + 304;
  *(v9 + 40) = 0;
  *(v9 + 41) = v9 + 320;
  *(v9 + 42) = 0;
  *(v9 + 43) = v9 + 336;
  *(v9 + 36) = 0;
  *(v9 + 37) = v9 + 288;
  *(v9 + 44) = 0;
  *(v9 + 45) = v9 + 352;
  os_channel_attr_get();
  os_channel_attr_get();
  *(v9 + 16) = 0;
  os_channel_attr_get();
  v26 = *(v9 + 14) + *(v9 + 13);
  if (*(v9 + 16) < v26)
  {
    *(v9 + 16) = v26;
  }

  nw_channel_allocate_frames(v9);
  *(v9 + 29) = 0x6C656E6E616863;
  *(v9 + 33) = 0x200000000;
  *(v9 + 5) = v9 + 232;
  *(v9 + 6) = &g_channel_protocol_callbacks;
  *(v9 + 8) = v9;
  *(v9 + 50) = 0;
  *(v9 + 51) = v9 + 400;
  *(v9 + 48) = 0;
  *(v9 + 49) = v9 + 384;
  *(v9 + 19) = os_retain(a1);
  v27 = dispatch_group_create();
  *(v9 + 26) = v27;
  if (v27)
  {
    goto LABEL_49;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "nw_channel_create";
  v28 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v28);
  if (!result)
  {
    free(v28);
    v27 = *(v9 + 26);
LABEL_49:
    dispatch_group_enter(v27);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    *&buf[24] = os_retain(v9);
    is_inline = nw_context_is_inline(a1);
    if (is_inline)
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v30 = nw_context_copy_implicit_context::implicit_context;
    }

    else
    {
      v30 = a1;
    }

    v51 = nw_context_copy_workloop(v30);
    v52 = *(v9 + 17);
    v53 = *(v9 + 26);
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 0x40000000;
    *&block[16] = ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke;
    v128 = &unk_1E6A3D4C0;
    *&v129 = buf;
    *(&v129 + 1) = v52;
    dispatch_group_notify(v53, v51, block);
    if (v51)
    {
      dispatch_release(v51);
    }

    dispatch_group_enter(*(v9 + 26));
    v54 = *(v9 + 112);
    v113[4] = v9;
    v114 = MEMORY[0x1E69E9820];
    v115 = 0x40000000;
    v116 = ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_39;
    v117 = &__block_descriptor_tmp_40_92454;
    v119 = is_inline;
    v118 = v9;
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 0x40000000;
    v113[2] = ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_2;
    v113[3] = &__block_descriptor_tmp_41_92455;
    *(v9 + 21) = nw_queue_context_create_source(a1, v54, 1, 0, &v114, v113);
    if (networkd_settings_get_BOOL(nw_setting_channel_enable_qos_override))
    {
      v55 = 25;
    }

    else
    {
      v55 = 21;
    }

    nw_queue_source_set_qos_class_fallback(*(v9 + 21), v55);
    dispatch_group_enter(*(v9 + 26));
    v56 = *(v9 + 112);
    v106[4] = v9;
    *v107 = MEMORY[0x1E69E9820];
    v108 = 0x40000000;
    v109 = ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_3;
    v110 = &__block_descriptor_tmp_42_92456;
    v112 = is_inline;
    v111 = v9;
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 0x40000000;
    v106[2] = ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_4;
    v106[3] = &__block_descriptor_tmp_43_92457;
    *(v9 + 22) = nw_queue_context_create_source(a1, v56, 2, 0, v107, v106);
    if ((*(v9 + 230) & 0x200) != 0)
    {
      dispatch_group_enter(*(v9 + 26));
      v58 = *(v9 + 112);
      v104[4] = v9;
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 0x40000000;
      v105[2] = ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_5;
      v105[3] = &__block_descriptor_tmp_44_92458;
      v105[4] = v9;
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 0x40000000;
      v104[2] = ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_6;
      v104[3] = &__block_descriptor_tmp_45_92459;
      source = nw_queue_context_create_source(a1, v58, 5, 1u, v105, v104);
      *(v9 + 23) = source;
      nw_queue_activate_source(source, v60);
    }

    nw_queue_activate_source(*(v9 + 21), v57);
    nw_queue_activate_source(*(v9 + 22), v61);
    if (*(v9 + 17))
    {
      if ((v9[462] & 8) == 0)
      {
        if (!os_channel_is_defunct())
        {
          _Block_object_dispose(buf, 8);
          nw_dictionary_set_value(*globals_for_channel, out, v9);
          *(v9 + 230) |= 0x2000u;
          if (a1[33] != 4)
          {
            v67 = __nwlog_obj();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v68 = *(v9 + 112);
              *block = 136446722;
              *&block[4] = "nw_channel_create_with_attributes";
              *&block[12] = 2082;
              *&block[14] = out;
              *&block[22] = 1024;
              LODWORD(v128) = v68;
              _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_INFO, "%{public}s Channel created with key: %{public}s and fd: %d", block, 0x1Cu);
            }
          }

          goto LABEL_158;
        }

        nw_channel_handle_defunct(v9);
      }
    }

    else
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }
    }

    os_release(v9);
    v62 = buf;
    goto LABEL_156;
  }

LABEL_225:
  __break(1u);
  return result;
}

BOOL nw_channel_add_input_handler(nw_protocol *a1, nw_protocol *uu)
{
  *&v63[13] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_channel_add_input_handler";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v7, &type, &v58))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v61 = "nw_channel_add_input_handler";
      v10 = "%{public}s called with null channel_protocol";
      goto LABEL_94;
    }

    if (v58 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v61 = "nw_channel_add_input_handler";
      v10 = "%{public}s called with null channel_protocol, backtrace limit exceeded";
      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v56 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v56)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v61 = "nw_channel_add_input_handler";
      v10 = "%{public}s called with null channel_protocol, no backtrace";
      goto LABEL_94;
    }

    if (!v56)
    {
      goto LABEL_68;
    }

    *buf = 136446466;
    v61 = "nw_channel_add_input_handler";
    v62 = 2082;
    *v63 = backtrace_string;
    v44 = "%{public}s called with null channel_protocol, dumping backtrace:%{public}s";
    goto LABEL_67;
  }

  v2 = a1;
  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_channel_add_input_handler";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v7, &type, &v58))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v61 = "nw_channel_add_input_handler";
      v10 = "%{public}s called with null channel";
      goto LABEL_94;
    }

    if (v58 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v61 = "nw_channel_add_input_handler";
      v10 = "%{public}s called with null channel, backtrace limit exceeded";
      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v57 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v57)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v61 = "nw_channel_add_input_handler";
      v10 = "%{public}s called with null channel, no backtrace";
      goto LABEL_94;
    }

    if (!v57)
    {
      goto LABEL_68;
    }

    *buf = 136446466;
    v61 = "nw_channel_add_input_handler";
    v62 = 2082;
    *v63 = backtrace_string;
    v44 = "%{public}s called with null channel, dumping backtrace:%{public}s";
    goto LABEL_67;
  }

  if (!uu)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v61 = "nw_channel_add_input_handler";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v7, &type, &v58))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v61 = "nw_channel_add_input_handler";
      v10 = "%{public}s called with null input_protocol";
    }

    else
    {
      if (v58 == 1)
      {
        v12 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(gLogObj, type);
        if (v12)
        {
          if (v15)
          {
            *buf = 136446466;
            v61 = "nw_channel_add_input_handler";
            v62 = 2082;
            *v63 = v12;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v12);
          goto LABEL_96;
        }

        if (v15)
        {
          *buf = 136446210;
          v61 = "nw_channel_add_input_handler";
          v10 = "%{public}s called with null input_protocol, no backtrace";
          v40 = v13;
          v41 = v14;
LABEL_95:
          _os_log_impl(&dword_181A37000, v40, v41, v10, buf, 0xCu);
          goto LABEL_96;
        }

        goto LABEL_96;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v61 = "nw_channel_add_input_handler";
      v10 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

LABEL_94:
    v40 = v8;
    v41 = v9;
    goto LABEL_95;
  }

  if (uuid_is_null(uu->flow_id))
  {
    if (*(handle + 34))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446210;
        v61 = "nw_channel_add_input_handler";
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s Channel already has input handler registered as default", buf, 0xCu);
        return 0;
      }

      return result;
    }

    *(handle + 34) = uu;
    internal = *(handle + 35);
    if (internal)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(handle + 230) |= 0x100u;
    internal = *(handle + 35);
    if (internal)
    {
LABEL_22:
      type = OS_LOG_TYPE_DEFAULT;
      v16 = nw_hash_table_add_object(internal, uu, &type);
      v17 = type;
      if (type)
      {
        v18 = v16;
        extra = nw_hash_node_get_extra(v16);
        *extra = 0u;
        *(extra + 16) = 0u;
        *(extra + 32) = 0u;
        *(extra + 48) = 0u;
        *(extra + 64) = 0u;
        *(extra + 80) = 0u;
        *(extra + 96) = 0u;
        *(extra + 112) = 0u;
        *(extra + 8) = extra;
        if (!uuid_is_null(handle + 368) && !uuid_compare(handle + 368, uu->flow_id))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v61 = "nw_channel_add_input_handler";
            v62 = 1042;
            *v63 = 16;
            v63[2] = 2098;
            *&v63[3] = uu;
            _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s Adding pending input frames for %{public,uuid_t}.16P", buf, 0x1Cu);
          }

          v21 = *(handle + 44);
          if (v21)
          {
            v22 = *(extra + 8);
            *v22 = v21;
            *(*(handle + 44) + 40) = v22;
            *(extra + 8) = *(handle + 45);
            *(handle + 44) = 0;
            *(handle + 45) = handle + 352;
          }

          uuid_clear(handle + 368);
          v24 = *(handle + 24);
          if (v24)
          {
            nw_queue_cancel_source(v24, v23);
            *(handle + 24) = 0;
          }
        }

        v25 = *(extra + 16);
        if (v25)
        {
          os_release(v25);
          *(extra + 16) = 0;
        }

        v26 = *(extra + 72);
        if (v26)
        {
          os_release(v26);
          *(extra + 72) = 0;
        }

        *(extra + 72) = nw_link_info_create(0);
        v27 = uu->handle;
        v28 = uu;
        if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v28 = *uu[1].flow_id) != 0)
        {
          callbacks = v28[1].callbacks;
          if (callbacks)
          {
            v28[1].callbacks = (&callbacks->add_input_handler + 1);
          }

          v29 = 1;
        }

        else
        {
          v29 = 0;
        }

        nw::retained_ptr<nw_protocol *>::~retained_ptr((extra + 24));
        *(extra + 24) = uu;
        *(extra + 32) = *(extra + 32) & 0xFE | v29;
        uuid_unparse(uu->flow_id, (extra + 84));
        uu->output_handler_context = v18;
        output_handler = uu->output_handler;
        if (output_handler != v2)
        {
          nw_protocol_release(output_handler);
          uu->output_handler = v2;
          v33 = v2->handle;
          if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
          {
            v34 = v2[1].callbacks;
            if (v34)
            {
              v2[1].callbacks = (&v34->add_input_handler + 1);
            }
          }
        }

        v35 = uu->callbacks;
        if (v35)
        {
          get_parameters = v35->get_parameters;
          if (get_parameters)
          {
            v37 = uu->handle;
            v38 = uu;
            if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (v38 = *uu[1].flow_id) != 0)
            {
              v45 = v38[1].callbacks;
              if (v45)
              {
                v38[1].callbacks = (&v45->add_input_handler + 1);
              }

              v39 = get_parameters(uu);
              v46 = uu->handle;
              v47 = uu;
              if (v46 == &nw_protocol_ref_counted_handle || v46 == &nw_protocol_ref_counted_additional_handle && (v47 = *uu[1].flow_id) != 0)
              {
                v48 = v47[1].callbacks;
                if (v48)
                {
                  v49 = (v48 - 1);
                  v47[1].callbacks = v49;
                  if (!v49)
                  {
                    v50 = v39;
                    v51 = *v47[1].flow_id;
                    if (v51)
                    {
                      *v47[1].flow_id = 0;
                      v51[2](v51);
                      _Block_release(v51);
                    }

                    if (v47[1].flow_id[8])
                    {
                      v52 = *v47[1].flow_id;
                      if (v52)
                      {
                        _Block_release(v52);
                      }
                    }

                    free(v47);
                    v39 = v50;
                  }
                }
              }
            }

            else
            {
              v39 = get_parameters(uu);
            }

            if (v39)
            {
              *(extra + 121) = *(extra + 121) & 0xFB | (4 * (_nw_parameters_get_data_mode() == 1));
            }
          }
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v53 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v61 = "nw_channel_add_input_handler";
          v62 = 1042;
          *v63 = 16;
          v63[2] = 2098;
          *&v63[3] = uu;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s Added channel input handler for %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        v55 = *(handle + 25);
        if (v55)
        {
          nw_queue_cancel_source(v55, v54);
          *(handle + 25) = 0;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v61 = "nw_channel_add_input_handler";
          v62 = 1042;
          *v63 = 16;
          v63[2] = 2098;
          *&v63[3] = uu;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s Channel already has input handler registered for %{public,uuid_t}.16P", buf, 0x1Cu);
        }
      }

      return v17;
    }
  }

  internal = nw_hash_table_create_internal(0x11u, 128, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, nw_protocol_hash_release, nw_protocol_hash_retain);
  if (internal)
  {
    *(internal + 56) &= ~2u;
    *(handle + 35) = internal;
    goto LABEL_22;
  }

  *(handle + 35) = 0;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v61 = "nw_channel_add_input_handler";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v58 = 0;
  if (!__nwlog_fault(v7, &type, &v58))
  {
    goto LABEL_96;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v58 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v61 = "nw_channel_add_input_handler";
        v10 = "%{public}s nw_protocol_hash_table_create failed, backtrace limit exceeded";
        goto LABEL_94;
      }

      goto LABEL_96;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v43 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v43)
      {
        *buf = 136446210;
        v61 = "nw_channel_add_input_handler";
        v10 = "%{public}s nw_protocol_hash_table_create failed, no backtrace";
        goto LABEL_94;
      }

      goto LABEL_96;
    }

    if (!v43)
    {
LABEL_68:
      free(backtrace_string);
      goto LABEL_96;
    }

    *buf = 136446466;
    v61 = "nw_channel_add_input_handler";
    v62 = 2082;
    *v63 = backtrace_string;
    v44 = "%{public}s nw_protocol_hash_table_create failed, dumping backtrace:%{public}s";
LABEL_67:
    _os_log_impl(&dword_181A37000, v8, v9, v44, buf, 0x16u);
    goto LABEL_68;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v9 = type;
  if (os_log_type_enabled(gLogObj, type))
  {
    *buf = 136446210;
    v61 = "nw_channel_add_input_handler";
    v10 = "%{public}s nw_protocol_hash_table_create failed";
    goto LABEL_94;
  }

LABEL_96:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t _nw_path_flow_get_nexus_key_0(char *a1, _DWORD *a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  v3 = OBJC_IVAR____TtC7Network12__NWPathFlow_flow;
  v5 = a1;
  result = swift_beginAccess();
  v7 = *&a1[v3];
  if (!v7)
  {
    *v2 = 0;

    return 0;
  }

  v8 = *(v7 + 16);
  if (HIDWORD(v8))
  {
    __break(1u);
  }

  else
  {
    *v2 = v8;

    v2 = swift_slowAlloc();
    *&v5[OBJC_IVAR____TtC7Network12__NWPathFlow_keyStorage] = v2;
    result = memcpy(v2, (v7 + 32), v8);
    if (v2)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181BA08A0(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 11);
  v18 = *(v1 + 10);
  v19[0] = v3;
  *(v19 + 10) = *(v1 + 186);
  v4 = *(v1 + 7);
  v14[6] = *(v1 + 6);
  v15 = v4;
  v5 = *(v1 + 9);
  v16 = *(v1 + 8);
  v17 = v5;
  v6 = *(v1 + 3);
  v14[2] = *(v1 + 2);
  v14[3] = v6;
  v7 = *(v1 + 5);
  v14[4] = *(v1 + 4);
  v14[5] = v7;
  v8 = *(v1 + 1);
  v14[0] = *v1;
  v14[1] = v8;
  sub_181AFE6F4(v14, v13);

  if (*(&v15 + 1))
  {
    v12 = *(&v15 + 1);
    swift_retain_n();
    sub_181AC23B8(&v12, v13);
    sub_181AFE6A0(v14);

    result = v13[0];
    if (v13[0])
    {
      v10 = v13[4];
      v11 = *(v13[0] + 80);
      sub_181AD1A40(v13[0]);
      if ((v11 & 0x13) == 1)
      {
        return 0;
      }

      else
      {
        return HIDWORD(v10) & 1;
      }
    }
  }

  else
  {
    sub_181AFE6A0(v14);
    return 0;
  }

  return result;
}

uint64_t sub_181BA09D8(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 11);
  v18 = *(v1 + 10);
  v19[0] = v3;
  *(v19 + 10) = *(v1 + 186);
  v4 = *(v1 + 7);
  v14[6] = *(v1 + 6);
  v15 = v4;
  v5 = *(v1 + 9);
  v16 = *(v1 + 8);
  v17 = v5;
  v6 = *(v1 + 3);
  v14[2] = *(v1 + 2);
  v14[3] = v6;
  v7 = *(v1 + 5);
  v14[4] = *(v1 + 4);
  v14[5] = v7;
  v8 = *(v1 + 1);
  v14[0] = *v1;
  v14[1] = v8;
  sub_181AFE6F4(v14, v13);

  if (*(&v15 + 1))
  {
    v12 = *(&v15 + 1);
    swift_retain_n();
    sub_181AC23B8(&v12, v13);
    sub_181AFE6A0(v14);

    result = v13[0];
    if (v13[0])
    {
      v10 = v13[4];
      v11 = *(v13[0] + 80);
      sub_181AD1A40(v13[0]);
      if ((v11 & 0x13) == 1)
      {
        return 0;
      }

      else
      {
        return (v10 >> 34) & 1;
      }
    }
  }

  else
  {
    sub_181AFE6A0(v14);
    return 0;
  }

  return result;
}

void nw_channel_set_close_automatically(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = 32;
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 460) = *(a1 + 460) & 0xFFDF | v2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_channel_set_close_automatically";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v12 = "nw_channel_set_close_automatically";
      v6 = "%{public}s called with null channel";
      goto LABEL_20;
    }

    if (v9 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v12 = "nw_channel_set_close_automatically";
      v6 = "%{public}s called with null channel, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v12 = "nw_channel_set_close_automatically";
        v13 = 2082;
        v14 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v8)
    {
      *buf = 136446210;
      v12 = "nw_channel_set_close_automatically";
      v6 = "%{public}s called with null channel, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_21:
  if (v3)
  {
    free(v3);
  }
}

void nw_channel_set_defer_input_available(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = 128;
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 460) = *(a1 + 460) & 0xFF7F | v2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_channel_set_defer_input_available";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v12 = "nw_channel_set_defer_input_available";
      v6 = "%{public}s called with null channel";
      goto LABEL_20;
    }

    if (v9 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v12 = "nw_channel_set_defer_input_available";
      v6 = "%{public}s called with null channel, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v12 = "nw_channel_set_defer_input_available";
        v13 = 2082;
        v14 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v8)
    {
      *buf = 136446210;
      v12 = "nw_channel_set_defer_input_available";
      v6 = "%{public}s called with null channel, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_21:
  if (v3)
  {
    free(v3);
  }
}

uint64_t nw_channel_get_protocol_handler(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return a1 + 24;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v15 = "nw_channel_get_protocol_handler";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v2, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      v4 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v15 = "nw_channel_get_protocol_handler";
        v5 = "%{public}s called with null channel";
LABEL_14:
        v10 = v3;
        v11 = v4;
LABEL_15:
        _os_log_impl(&dword_181A37000, v10, v11, v5, buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v15 = "nw_channel_get_protocol_handler";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_16;
      }

      if (v9)
      {
        *buf = 136446210;
        v15 = "nw_channel_get_protocol_handler";
        v5 = "%{public}s called with null channel, no backtrace";
        v10 = v7;
        v11 = v8;
        goto LABEL_15;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      v4 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v15 = "nw_channel_get_protocol_handler";
        v5 = "%{public}s called with null channel, backtrace limit exceeded";
        goto LABEL_14;
      }
    }
  }

LABEL_16:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

void nw_channel_set_protocol_level(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 264) = a2;
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v15 = "nw_channel_set_protocol_level";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v2, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      v4 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v15 = "nw_channel_set_protocol_level";
      v5 = "%{public}s called with null channel";
LABEL_14:
      v10 = v3;
      v11 = v4;
LABEL_15:
      _os_log_impl(&dword_181A37000, v10, v11, v5, buf, 0xCu);
      goto LABEL_16;
    }

    if (v12 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      v4 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v15 = "nw_channel_set_protocol_level";
      v5 = "%{public}s called with null channel, backtrace limit exceeded";
      goto LABEL_14;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136446466;
        v15 = "nw_channel_set_protocol_level";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_16;
    }

    if (v9)
    {
      *buf = 136446210;
      v15 = "nw_channel_set_protocol_level";
      v5 = "%{public}s called with null channel, no backtrace";
      v10 = v7;
      v11 = v8;
      goto LABEL_15;
    }
  }

LABEL_16:
  if (v2)
  {
    free(v2);
  }
}

NWConcrete_nw_link_info *nw_link_info_create(int a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(NWConcrete_nw_link_info);
  v3 = v2;
  if (v2)
  {
    v2->flow_control_status = a1;
    v2->link_quality = 0;
    v4 = v2;
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v17 = "nw_link_info_create";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v6, &type, &v14))
  {
    goto LABEL_8;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v17 = "nw_link_info_create";
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s [nw_link_info init] failed", buf, 0xCu);
    }

LABEL_7:

LABEL_8:
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    free(v6);
    goto LABEL_10;
  }

  if (v14 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v13 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v17 = "nw_link_info_create";
      _os_log_impl(&dword_181A37000, v7, v13, "%{public}s [nw_link_info init] failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_7;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v11 = type;
  v12 = os_log_type_enabled(v7, type);
  if (!backtrace_string)
  {
    if (v12)
    {
      *buf = 136446210;
      v17 = "nw_link_info_create";
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s [nw_link_info init] failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (v12)
  {
    *buf = 136446466;
    v17 = "nw_link_info_create";
    v18 = 2082;
    v19 = backtrace_string;
    _os_log_impl(&dword_181A37000, v7, v11, "%{public}s [nw_link_info init] failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v3;
}

void nw_queue_suspend_source(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_queue_suspend_source";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v6, &type, &v13))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_queue_suspend_source";
        v9 = "%{public}s called with null source";
LABEL_31:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v16 = "nw_queue_suspend_source";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_33;
        }

        if (!v11)
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v16 = "nw_queue_suspend_source";
        v9 = "%{public}s called with null source, no backtrace";
        goto LABEL_31;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_queue_suspend_source";
        v9 = "%{public}s called with null source, backtrace limit exceeded";
        goto LABEL_31;
      }
    }

LABEL_32:

LABEL_33:
    if (v6)
    {
      free(v6);
    }

    return;
  }

  if (*a1)
  {
    v1 = *a1;

    dispatch_suspend(v1);
    return;
  }

  v2 = *(a1 + 16);
  if (*(a1 + 48) == 1)
  {
    if (v2)
    {
      if (*(a1 + 49) == 1)
      {
        nw_context_reset_timer_block_with_time(*(a1 + 8), a1, -1, v2);
        *(a1 + 49) = 0;
      }

      return;
    }

    goto LABEL_13;
  }

  if (!v2)
  {
LABEL_13:
    if (gLogDatapath == 1)
    {
      v12 = __nwlog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v16 = "nw_queue_suspend_source";
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s Cancelled, not suspending source", buf, 0xCu);
      }
    }

    return;
  }

  if (*(a1 + 49) == 1)
  {
    nw_context_dequeue_source_block(*(a1 + 8), v2);
    *(a1 + 49) = 0;
  }
}

void ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_5(uint64_t a1)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1[17])
  {
    if (v1[27])
    {
      v2 = v1[50];
      if (v2)
      {
        while (1)
        {
          if (!v1[17] || !v1[27])
          {
            return;
          }

          v3 = v2;
          v2 = *(v2 + 56);
          v4 = *(v3 + 24);
          v5 = os_channel_flow_admissible();
          if (!v5)
          {
            break;
          }

          v13 = v5;
          if (v5 != 55)
          {
            if (v5 == 2)
            {
              if (gLogDatapath == 1)
              {
                v14 = __nwlog_obj();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446466;
                  v49 = "nw_channel_check_flows_allowed";
                  v50 = 2082;
                  v51 = (v3 + 84);
                  _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s Flow(%{public}s) is no longer present", buf, 0x16u);
                }
              }
            }

            else if ((nw_channel_check_defunct(v1) & 1) == 0)
            {
              __nwlog_obj();
              *buf = 136446722;
              v27 = (v3 + 84);
              v49 = "nw_channel_check_flows_allowed";
              v50 = 2082;
              v51 = v27;
              v52 = 1024;
              LODWORD(v53[0]) = v13;
              v28 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v46 = 0;
              v45 = v28;
              if (!__nwlog_fault(v28, &type, &v46))
              {
                goto LABEL_79;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                v29 = __nwlog_obj();
                logc = type;
                if (os_log_type_enabled(v29, type))
                {
                  *buf = 136446722;
                  v49 = "nw_channel_check_flows_allowed";
                  v50 = 2082;
                  v51 = v27;
                  v52 = 1024;
                  LODWORD(v53[0]) = v13;
                  v30 = v29;
                  v31 = logc;
                  v32 = "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d";
                  goto LABEL_78;
                }

                goto LABEL_79;
              }

              if (v46 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v36 = __nwlog_obj();
                v38 = type;
                v34 = os_log_type_enabled(v36, type);
                if (backtrace_string)
                {
                  if (v34)
                  {
                    *buf = 136446978;
                    v49 = "nw_channel_check_flows_allowed";
                    v50 = 2082;
                    v51 = v27;
                    v52 = 1024;
                    LODWORD(v53[0]) = v13;
                    WORD2(v53[0]) = 2082;
                    *(v53 + 6) = backtrace_string;
                    _os_log_impl(&dword_181A37000, v36, v38, "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                  }

                  free(backtrace_string);
                  goto LABEL_79;
                }

                if (!v34)
                {
LABEL_79:
                  if (v45)
                  {
                    free(v45);
                  }

                  goto LABEL_17;
                }

                *buf = 136446722;
                v49 = "nw_channel_check_flows_allowed";
                v50 = 2082;
                v51 = v27;
                v52 = 1024;
                LODWORD(v53[0]) = v13;
                v30 = v36;
                v31 = v38;
                v32 = "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d, no backtrace";
              }

              else
              {
                v35 = __nwlog_obj();
                logd = type;
                if (!os_log_type_enabled(v35, type))
                {
                  goto LABEL_79;
                }

                *buf = 136446722;
                v49 = "nw_channel_check_flows_allowed";
                v50 = 2082;
                v51 = v27;
                v52 = 1024;
                LODWORD(v53[0]) = v13;
                v30 = v35;
                v31 = logd;
                v32 = "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d, backtrace limit exceeded";
              }

LABEL_78:
              _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0x1Cu);
              goto LABEL_79;
            }
          }

LABEL_17:
          if (!v2)
          {
            return;
          }
        }

        if (nw_link_set_flow_control_status(*(v3 + 72), 0))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v6 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v49 = "nw_channel_check_flows_allowed";
            v50 = 2082;
            v51 = (v3 + 84);
            _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s Flow resumed for flow id %{public}s", buf, 0x16u);
          }
        }

        if (v4)
        {
          v7 = *(v4 + 24);
          if (v7)
          {
            v8 = *(v7 + 104);
            if (v8)
            {
              v8(v4, v1 + 3, *(v3 + 72));
LABEL_14:
              v9 = *(v3 + 56);
              v10 = *(v3 + 64);
              v11 = (v9 + 64);
              if (!v9)
              {
                v11 = v1 + 51;
              }

              *v11 = v10;
              *v10 = v9;
              *(v3 + 121) &= ~2u;
              goto LABEL_17;
            }
          }

          __nwlog_obj();
          v12 = *(v4 + 16);
          if (!v12)
          {
            v12 = "invalid";
          }
        }

        else
        {
          __nwlog_obj();
          v12 = "invalid";
        }

        *buf = 136446466;
        v49 = "nw_channel_check_flows_allowed";
        v50 = 2082;
        v51 = v12;
        v15 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v46 = 0;
        v44 = v15;
        if (__nwlog_fault(v15, &type, &v46))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v16 = __nwlog_obj();
            log = type;
            if (!os_log_type_enabled(v16, type))
            {
              goto LABEL_62;
            }

            if (v4)
            {
              v17 = *(v4 + 16);
              if (!v17)
              {
                v17 = "invalid";
              }
            }

            else
            {
              v17 = "invalid";
            }

            *buf = 136446466;
            v49 = "nw_channel_check_flows_allowed";
            v50 = 2082;
            v51 = v17;
            v23 = v16;
            v24 = log;
            v25 = "%{public}s protocol %{public}s has invalid link_state callback";
            goto LABEL_61;
          }

          if (v46 != 1)
          {
            v21 = __nwlog_obj();
            logb = type;
            if (!os_log_type_enabled(v21, type))
            {
              goto LABEL_62;
            }

            if (v4)
            {
              v22 = *(v4 + 16);
              if (!v22)
              {
                v22 = "invalid";
              }
            }

            else
            {
              v22 = "invalid";
            }

            *buf = 136446466;
            v49 = "nw_channel_check_flows_allowed";
            v50 = 2082;
            v51 = v22;
            v23 = v21;
            v24 = logb;
            v25 = "%{public}s protocol %{public}s has invalid link_state callback, backtrace limit exceeded";
            goto LABEL_61;
          }

          v18 = __nw_create_backtrace_string();
          loga = __nwlog_obj();
          v37 = type;
          v19 = os_log_type_enabled(loga, type);
          if (v18)
          {
            if (v19)
            {
              if (v4)
              {
                v20 = *(v4 + 16);
                if (!v20)
                {
                  v20 = "invalid";
                }
              }

              else
              {
                v20 = "invalid";
              }

              *buf = 136446722;
              v49 = "nw_channel_check_flows_allowed";
              v50 = 2082;
              v51 = v20;
              v52 = 2082;
              v53[0] = v18;
              _os_log_impl(&dword_181A37000, loga, v37, "%{public}s protocol %{public}s has invalid link_state callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v18);
            goto LABEL_62;
          }

          if (v19)
          {
            if (v4)
            {
              v26 = *(v4 + 16);
              if (!v26)
              {
                v26 = "invalid";
              }
            }

            else
            {
              v26 = "invalid";
            }

            v23 = loga;
            v24 = v37;
            *buf = 136446466;
            v49 = "nw_channel_check_flows_allowed";
            v50 = 2082;
            v51 = v26;
            v25 = "%{public}s protocol %{public}s has invalid link_state callback, no backtrace";
LABEL_61:
            _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0x16u);
          }
        }

LABEL_62:
        if (v44)
        {
          free(v44);
        }

        goto LABEL_14;
      }
    }
  }
}

void nw_channel_allocate_frames(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a1[15];
  v1 = a1[16];
  v3 = v1 - v2;
  if (v1 > v2)
  {
    v5 = nw_frame_create(32, 0, 0, 0, 0);
    if (v5)
    {
      *(v5 + 204) |= 0x100u;
      *(v5 + 16) = 0;
      v6 = a1[37];
      *(v5 + 24) = v6;
      *v6 = v5;
      a1[37] = v5 + 16;
      ++a1[15];
      if (v3 < 2)
      {
        return;
      }

      v7 = nw_frame_create(32, 0, 0, 0, 0);
      if (v7)
      {
        *(v7 + 204) |= 0x100u;
        *(v7 + 16) = 0;
        v8 = a1[37];
        *(v7 + 24) = v8;
        *v8 = v7;
        a1[37] = v7 + 16;
        ++a1[15];
        if (v3 == 2)
        {
          return;
        }

        v9 = nw_frame_create(32, 0, 0, 0, 0);
        if (v9)
        {
          *(v9 + 204) |= 0x100u;
          *(v9 + 16) = 0;
          v10 = a1[37];
          *(v9 + 24) = v10;
          *v10 = v9;
          a1[37] = v9 + 16;
          ++a1[15];
          if (v3 == 3)
          {
            return;
          }

          v11 = nw_frame_create(32, 0, 0, 0, 0);
          if (v11)
          {
            *(v11 + 204) |= 0x100u;
            *(v11 + 16) = 0;
            v12 = a1[37];
            *(v11 + 24) = v12;
            *v12 = v11;
            a1[37] = v11 + 16;
            ++a1[15];
            if (v3 == 4)
            {
              return;
            }

            v13 = nw_frame_create(32, 0, 0, 0, 0);
            if (v13)
            {
              *(v13 + 204) |= 0x100u;
              *(v13 + 16) = 0;
              v14 = a1[37];
              *(v13 + 24) = v14;
              *v14 = v13;
              a1[37] = v13 + 16;
              ++a1[15];
              if (v3 == 5)
              {
                return;
              }

              v15 = nw_frame_create(32, 0, 0, 0, 0);
              if (v15)
              {
                *(v15 + 204) |= 0x100u;
                *(v15 + 16) = 0;
                v16 = a1[37];
                *(v15 + 24) = v16;
                *v16 = v15;
                a1[37] = v15 + 16;
                ++a1[15];
                if (v3 == 6)
                {
                  return;
                }

                v17 = nw_frame_create(32, 0, 0, 0, 0);
                if (v17)
                {
                  *(v17 + 204) |= 0x100u;
                  *(v17 + 16) = 0;
                  v18 = a1[37];
                  *(v17 + 24) = v18;
                  *v18 = v17;
                  a1[37] = v17 + 16;
                  ++a1[15];
                  if (v3 == 7)
                  {
                    return;
                  }

                  v19 = nw_frame_create(32, 0, 0, 0, 0);
                  if (v19)
                  {
                    *(v19 + 204) |= 0x100u;
                    *(v19 + 16) = 0;
                    v20 = a1[37];
                    *(v19 + 24) = v20;
                    *v20 = v19;
                    a1[37] = v19 + 16;
                    ++a1[15];
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v34 = "nw_channel_create_frame";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v21, &type, &v31))
    {
      goto LABEL_31;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_31;
      }

      *buf = 136446210;
      v34 = "nw_channel_create_frame";
      v24 = "%{public}s nw_frame_create failed";
    }

    else
    {
      if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        v28 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446466;
            v34 = "nw_channel_create_frame";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_31;
        }

        if (!v28)
        {
LABEL_31:
          if (v21)
          {
            free(v21);
          }

          return;
        }

        *buf = 136446210;
        v34 = "nw_channel_create_frame";
        v24 = "%{public}s nw_frame_create failed, no backtrace";
        v29 = v26;
        v30 = v27;
LABEL_30:
        _os_log_impl(&dword_181A37000, v29, v30, v24, buf, 0xCu);
        goto LABEL_31;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_31;
      }

      *buf = 136446210;
      v34 = "nw_channel_create_frame";
      v24 = "%{public}s nw_frame_create failed, backtrace limit exceeded";
    }

    v29 = v22;
    v30 = v23;
    goto LABEL_30;
  }
}

uint64_t nw_channel_connect(nw_protocol *a1, nw_protocol *a2)
{
  v104 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_channel_connect";
    v70 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v70, &type, &v94))
    {
      goto LABEL_186;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v71 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v71, type))
      {
        *buf = 136446210;
        v97 = "nw_channel_connect";
        v73 = "%{public}s called with null channel_protocol";
LABEL_185:
        _os_log_impl(&dword_181A37000, v71, v72, v73, buf, 0xCu);
      }

LABEL_186:
      if (v70)
      {
        free(v70);
      }

      return 0;
    }

    if (v94 != 1)
    {
      v71 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v71, type))
      {
        *buf = 136446210;
        v97 = "nw_channel_connect";
        v73 = "%{public}s called with null channel_protocol, backtrace limit exceeded";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    backtrace_string = __nw_create_backtrace_string();
    v71 = __nwlog_obj();
    v72 = type;
    v84 = os_log_type_enabled(v71, type);
    if (!backtrace_string)
    {
      if (v84)
      {
        *buf = 136446210;
        v97 = "nw_channel_connect";
        v73 = "%{public}s called with null channel_protocol, no backtrace";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    if (v84)
    {
      *buf = 136446466;
      v97 = "nw_channel_connect";
      v98 = 2082;
      v99 = backtrace_string;
      v85 = "%{public}s called with null channel_protocol, dumping backtrace:%{public}s";
LABEL_156:
      _os_log_impl(&dword_181A37000, v71, v72, v85, buf, 0x16u);
    }

LABEL_157:
    free(backtrace_string);
    goto LABEL_186;
  }

  v2 = a1;
  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_channel_connect";
    v70 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v70, &type, &v94))
    {
      goto LABEL_186;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v71 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v71, type))
      {
        *buf = 136446210;
        v97 = "nw_channel_connect";
        v73 = "%{public}s called with null channel";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    if (v94 != 1)
    {
      v71 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v71, type))
      {
        *buf = 136446210;
        v97 = "nw_channel_connect";
        v73 = "%{public}s called with null channel, backtrace limit exceeded";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    backtrace_string = __nw_create_backtrace_string();
    v71 = __nwlog_obj();
    v72 = type;
    v86 = os_log_type_enabled(v71, type);
    if (!backtrace_string)
    {
      if (v86)
      {
        *buf = 136446210;
        v97 = "nw_channel_connect";
        v73 = "%{public}s called with null channel, no backtrace";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    if (v86)
    {
      *buf = 136446466;
      v97 = "nw_channel_connect";
      v98 = 2082;
      v99 = backtrace_string;
      v85 = "%{public}s called with null channel, dumping backtrace:%{public}s";
      goto LABEL_156;
    }

    goto LABEL_157;
  }

  v4 = a2;
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v97 = "__nw_protocol_get_output_handler_context";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v4, &type, &v94))
    {
      goto LABEL_192;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_192;
      }

      *buf = 136446210;
      v97 = "__nw_protocol_get_output_handler_context";
      v76 = "%{public}s called with null protocol";
    }

    else if (v94 == 1)
    {
      v87 = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = type;
      v88 = os_log_type_enabled(v74, type);
      if (v87)
      {
        if (v88)
        {
          *buf = 136446466;
          v97 = "__nw_protocol_get_output_handler_context";
          v98 = 2082;
          v99 = v87;
          _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v87);
        if (!v4)
        {
          return 1;
        }

LABEL_125:
        free(v4);
        return 1;
      }

      if (!v88)
      {
LABEL_192:
        if (!v4)
        {
          return 1;
        }

        goto LABEL_125;
      }

      *buf = 136446210;
      v97 = "__nw_protocol_get_output_handler_context";
      v76 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_192;
      }

      *buf = 136446210;
      v97 = "__nw_protocol_get_output_handler_context";
      v76 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
    goto LABEL_192;
  }

  output_handler_context = a2->output_handler_context;
  if (output_handler_context)
  {
    v6 = output_handler_context + 32;
    output_handler_context[153] |= 8u;
    callbacks = a2->callbacks;
    if (!callbacks)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v6 = 0;
    callbacks = a2->callbacks;
    if (!callbacks)
    {
      goto LABEL_44;
    }
  }

  connected = callbacks->connected;
  if (connected)
  {
    v9 = a2->handle;
    v10 = a2;
    if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *a2[1].flow_id) != 0)
    {
      v12 = v10[1].callbacks;
      v11 = 0;
      if (v12)
      {
        v10[1].callbacks = (&v12->add_input_handler + 1);
      }
    }

    else
    {
      v11 = 1;
    }

    v13 = a1->handle;
    v14 = a1;
    if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *a1[1].flow_id) != 0)
    {
      v15 = v14[1].callbacks;
      if (v15)
      {
        v14[1].callbacks = (&v15->add_input_handler + 1);
      }

      connected(a2, a1);
      v16 = v2->handle;
      v17 = v2;
      if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *v2[1].flow_id) != 0)
      {
        v18 = v17[1].callbacks;
        if (v18)
        {
          v19 = (v18 - 1);
          v17[1].callbacks = v19;
          if (!v19)
          {
            v20 = *v17[1].flow_id;
            if (v20)
            {
              *v17[1].flow_id = 0;
              v20[2](v20);
              _Block_release(v20);
            }

            if (v17[1].flow_id[8])
            {
              v21 = *v17[1].flow_id;
              if (v21)
              {
                _Block_release(v21);
              }
            }

            free(v17);
          }
        }
      }
    }

    else
    {
      connected(a2, a1);
    }

    if ((v11 & 1) == 0)
    {
      v22 = v4->handle;
      v23 = v4;
      if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v23 = *v4[1].flow_id) != 0)
      {
        v24 = v23[1].callbacks;
        if (v24)
        {
          v25 = (v24 - 1);
          v23[1].callbacks = v25;
          if (!v25)
          {
            v26 = *v23[1].flow_id;
            if (v26)
            {
              *v23[1].flow_id = 0;
              v26[2](v26);
              _Block_release(v26);
            }

            if (v23[1].flow_id[8])
            {
              v27 = *v23[1].flow_id;
              if (v27)
              {
                _Block_release(v27);
              }
            }

            free(v23);
          }
        }
      }
    }
  }

LABEL_44:
  result = 1;
  if (output_handler_context && v6 && (handle[230] & 0x80) != 0 && *v6)
  {
    v29 = v4->handle;
    v30 = v4;
    if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v30 = *v4[1].flow_id) != 0)
    {
      v32 = v30[1].callbacks;
      v31 = 0;
      if (v32)
      {
        v30[1].callbacks = (&v32->add_input_handler + 1);
      }
    }

    else
    {
      v31 = 1;
    }

    v33 = v2->handle;
    v34 = v2;
    if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v34 = *v2[1].flow_id) != 0)
    {
      v37 = v34[1].callbacks;
      if (v37)
      {
        v35 = 0;
        v34[1].callbacks = (&v37->add_input_handler + 1);
        v36 = v4->callbacks;
        if (!v36)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v35 = 0;
        v36 = v4->callbacks;
        if (!v36)
        {
          goto LABEL_140;
        }
      }
    }

    else
    {
      v35 = 1;
      v36 = v4->callbacks;
      if (!v36)
      {
        goto LABEL_140;
      }
    }

    input_available = v36->input_available;
    if (input_available)
    {
      input_available(v4, v2);
LABEL_65:
      if ((v35 & 1) == 0)
      {
        v39 = v2->handle;
        v40 = v2;
        if (v39 == &nw_protocol_ref_counted_handle || v39 == &nw_protocol_ref_counted_additional_handle && (v40 = *v2[1].flow_id) != 0)
        {
          v41 = v40[1].callbacks;
          if (v41)
          {
            v42 = (v41 - 1);
            v40[1].callbacks = v42;
            if (!v42)
            {
              v43 = *v40[1].flow_id;
              if (v43)
              {
                *v40[1].flow_id = 0;
                v43[2](v43);
                _Block_release(v43);
              }

              if (v40[1].flow_id[8])
              {
                v44 = *v40[1].flow_id;
                if (v44)
                {
                  _Block_release(v44);
                }
              }

              free(v40);
            }
          }
        }
      }

      if ((v31 & 1) == 0)
      {
        v45 = v4->handle;
        v46 = v4;
        if (v45 == &nw_protocol_ref_counted_handle || v45 == &nw_protocol_ref_counted_additional_handle && (v46 = *v4[1].flow_id) != 0)
        {
          v47 = v46[1].callbacks;
          if (v47)
          {
            v48 = (v47 - 1);
            v46[1].callbacks = v48;
            if (!v48)
            {
              v49 = *v46[1].flow_id;
              if (v49)
              {
                *v46[1].flow_id = 0;
                v49[2](v49);
                _Block_release(v49);
              }

              if (v46[1].flow_id[8])
              {
                v50 = *v46[1].flow_id;
                if (v50)
                {
                  _Block_release(v50);
                }
              }

              free(v46);
            }
          }
        }
      }

      v51 = v4->callbacks;
      if (!v51)
      {
        return 1;
      }

      input_flush = v51->input_flush;
      if (!input_flush)
      {
        return 1;
      }

      v53 = v4->handle;
      v54 = v4;
      if (v53 == &nw_protocol_ref_counted_handle || v53 == &nw_protocol_ref_counted_additional_handle && (v54 = *v4[1].flow_id) != 0)
      {
        v56 = v54[1].callbacks;
        v55 = 0;
        if (v56)
        {
          v54[1].callbacks = (&v56->add_input_handler + 1);
        }
      }

      else
      {
        v55 = 1;
      }

      v57 = v2->handle;
      v58 = v2;
      if (v57 == &nw_protocol_ref_counted_handle || v57 == &nw_protocol_ref_counted_additional_handle && (v58 = *v2[1].flow_id) != 0)
      {
        v59 = v58[1].callbacks;
        if (v59)
        {
          v58[1].callbacks = (&v59->add_input_handler + 1);
        }

        input_flush(v4, v2);
        v60 = v2->handle;
        if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
        {
          v61 = v2[1].callbacks;
          if (v61)
          {
            v62 = (v61 - 1);
            v2[1].callbacks = v62;
            if (!v62)
            {
              v63 = *v2[1].flow_id;
              if (v63)
              {
                *v2[1].flow_id = 0;
                v63[2](v63);
                _Block_release(v63);
              }

              if (v2[1].flow_id[8])
              {
                v64 = *v2[1].flow_id;
                if (v64)
                {
                  _Block_release(v64);
                }
              }

              free(v2);
            }
          }
        }
      }

      else
      {
        input_flush(v4, v2);
      }

      if (v55)
      {
        return 1;
      }

      v65 = v4->handle;
      if (v65 != &nw_protocol_ref_counted_handle)
      {
        if (v65 != &nw_protocol_ref_counted_additional_handle)
        {
          return 1;
        }

        v4 = *v4[1].flow_id;
        if (!v4)
        {
          return 1;
        }
      }

      v66 = v4[1].callbacks;
      if (!v66)
      {
        return 1;
      }

      v67 = (v66 - 1);
      v4[1].callbacks = v67;
      if (v67)
      {
        return 1;
      }

      v68 = *v4[1].flow_id;
      if (v68)
      {
        *v4[1].flow_id = 0;
        v68[2](v68);
        _Block_release(v68);
      }

      if (v4[1].flow_id[8])
      {
        v69 = *v4[1].flow_id;
        if (v69)
        {
          _Block_release(v69);
        }
      }

      goto LABEL_125;
    }

LABEL_140:
    __nwlog_obj();
    name = v4->identifier->name;
    *buf = 136446722;
    v97 = "__nw_protocol_input_available";
    if (!name)
    {
      name = "invalid";
    }

    v98 = 2082;
    v99 = name;
    v100 = 2048;
    v101 = v4;
    v78 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v78, &type, &v94))
    {
      goto LABEL_199;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v79 = __nwlog_obj();
      v80 = type;
      if (!os_log_type_enabled(v79, type))
      {
        goto LABEL_199;
      }

      v81 = v4->identifier->name;
      if (!v81)
      {
        v81 = "invalid";
      }

      *buf = 136446722;
      v97 = "__nw_protocol_input_available";
      v98 = 2082;
      v99 = v81;
      v100 = 2048;
      v101 = v4;
      v82 = "%{public}s protocol %{public}s (%p) has invalid input_available callback";
    }

    else if (v94 == 1)
    {
      v89 = __nw_create_backtrace_string();
      v79 = __nwlog_obj();
      v80 = type;
      v90 = os_log_type_enabled(v79, type);
      if (v89)
      {
        if (v90)
        {
          v91 = v4->identifier->name;
          if (!v91)
          {
            v91 = "invalid";
          }

          *buf = 136446978;
          v97 = "__nw_protocol_input_available";
          v98 = 2082;
          v99 = v91;
          v100 = 2048;
          v101 = v4;
          v102 = 2082;
          v103 = v89;
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s protocol %{public}s (%p) has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v89);
        goto LABEL_199;
      }

      if (!v90)
      {
LABEL_199:
        if (v78)
        {
          free(v78);
        }

        goto LABEL_65;
      }

      v93 = v4->identifier->name;
      if (!v93)
      {
        v93 = "invalid";
      }

      *buf = 136446722;
      v97 = "__nw_protocol_input_available";
      v98 = 2082;
      v99 = v93;
      v100 = 2048;
      v101 = v4;
      v82 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, no backtrace";
    }

    else
    {
      v79 = __nwlog_obj();
      v80 = type;
      if (!os_log_type_enabled(v79, type))
      {
        goto LABEL_199;
      }

      v92 = v4->identifier->name;
      if (!v92)
      {
        v92 = "invalid";
      }

      *buf = 136446722;
      v97 = "__nw_protocol_input_available";
      v98 = 2082;
      v99 = v92;
      v100 = 2048;
      v101 = v4;
      v82 = "%{public}s protocol %{public}s (%p) has invalid input_available callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v79, v80, v82, buf, 0x20u);
    goto LABEL_199;
  }

  return result;
}

uint64_t _nw_path_uses_nexus(char *a1)
{
  if (a1)
  {
    v1 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v3 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v1], sizeof(__dst));
    v4 = sub_181AC2A38(0);
    swift_endAccess();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

os_unfair_lock_s *nw_path_flow_registration_copy_path(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_path_flow_registration_copy_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v9, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v19 = "nw_path_flow_registration_copy_path";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null flow_registration", buf, 0xCu);
        }
      }

      else if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v13 = type;
        v14 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v19 = "nw_path_flow_registration_copy_path";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v14)
        {
          *buf = 136446210;
          v19 = "nw_path_flow_registration_copy_path";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v19 = "nw_path_flow_registration_copy_path";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v9)
    {
      free(v9);
    }

    v4 = 0;
    goto LABEL_6;
  }

  override_evaluator = v1->override_evaluator;
  if (override_evaluator)
  {
    v4 = override_evaluator;
LABEL_5:
    v5 = v4;
    os_unfair_lock_lock(v4 + 24);
    v6 = v5[6];
    os_unfair_lock_unlock(v4 + 24);

    v4 = nw_path_copy_for_flow_registration(v6, v2);
    goto LABEL_6;
  }

  v4 = nw_path_flow_registration_copy_parent_evaluator(v1);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v4;
}

uint64_t nw_endpoint_flow_setup_channel(NWConcrete_nw_endpoint_handler *a1)
{
  v228[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v144 = __nwlog_obj();
    *buf = 136446210;
    v213 = "nw_endpoint_handler_get_mode";
    v145 = _os_log_send_and_compose_impl();

    LOBYTE(v228[0]) = 16;
    LOBYTE(v211) = 0;
    if (__nwlog_fault(v145, v228, &v211))
    {
      if (LOBYTE(v228[0]) == 17)
      {
        v146 = __nwlog_obj();
        v147 = v228[0];
        if (os_log_type_enabled(v146, v228[0]))
        {
          *buf = 136446210;
          v213 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v146, v147, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v211 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v146 = __nwlog_obj();
        v149 = v228[0];
        v150 = os_log_type_enabled(v146, v228[0]);
        if (backtrace_string)
        {
          if (v150)
          {
            *buf = 136446466;
            v213 = "nw_endpoint_handler_get_mode";
            v214 = 2082;
            id_str = backtrace_string;
            _os_log_impl(&dword_181A37000, v146, v149, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_195;
        }

        if (v150)
        {
          *buf = 136446210;
          v213 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v146, v149, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v146 = __nwlog_obj();
        v151 = v228[0];
        if (os_log_type_enabled(v146, v228[0]))
        {
          *buf = 136446210;
          v213 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v146, v151, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_195:
    if (v145)
    {
      free(v145);
    }

    mode = 0;
LABEL_198:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v152 = gLogObj;
    if (mode > 5)
    {
      v153 = "unknown-mode";
    }

    else
    {
      v153 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v213 = "nw_endpoint_flow_setup_channel";
    v214 = 2082;
    id_str = v153;
    v216 = 2082;
    v217 = "flow";
    v154 = _os_log_send_and_compose_impl();

    LOBYTE(v228[0]) = 16;
    LOBYTE(v211) = 0;
    if (__nwlog_fault(v154, v228, &v211))
    {
      if (LOBYTE(v228[0]) == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v155 = gLogObj;
        v156 = v228[0];
        if (os_log_type_enabled(v155, v228[0]))
        {
          if (mode > 5)
          {
            v157 = "unknown-mode";
          }

          else
          {
            v157 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v213 = "nw_endpoint_flow_setup_channel";
          v214 = 2082;
          id_str = v157;
          v216 = 2082;
          v217 = "flow";
          _os_log_impl(&dword_181A37000, v155, v156, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v211 == 1)
      {
        v158 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v155 = gLogObj;
        v159 = v228[0];
        v160 = os_log_type_enabled(v155, v228[0]);
        if (v158)
        {
          if (v160)
          {
            if (mode > 5)
            {
              v161 = "unknown-mode";
            }

            else
            {
              v161 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v213 = "nw_endpoint_flow_setup_channel";
            v214 = 2082;
            id_str = v161;
            v216 = 2082;
            v217 = "flow";
            v218 = 2082;
            v219 = v158;
            _os_log_impl(&dword_181A37000, v155, v159, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v158);
          if (!v154)
          {
            goto LABEL_232;
          }

          goto LABEL_231;
        }

        if (v160)
        {
          if (mode > 5)
          {
            v164 = "unknown-mode";
          }

          else
          {
            v164 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v213 = "nw_endpoint_flow_setup_channel";
          v214 = 2082;
          id_str = v164;
          v216 = 2082;
          v217 = "flow";
          _os_log_impl(&dword_181A37000, v155, v159, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v155 = gLogObj;
        v162 = v228[0];
        if (os_log_type_enabled(v155, v228[0]))
        {
          if (mode > 5)
          {
            v163 = "unknown-mode";
          }

          else
          {
            v163 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v213 = "nw_endpoint_flow_setup_channel";
          v214 = 2082;
          id_str = v163;
          v216 = 2082;
          v217 = "flow";
          _os_log_impl(&dword_181A37000, v155, v162, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v154)
    {
LABEL_232:
      v103 = 0;
      goto LABEL_233;
    }

LABEL_231:
    free(v154);
    goto LABEL_232;
  }

  mode = v1->mode;

  if (mode != 2)
  {
    goto LABEL_198;
  }

  v4 = nw_endpoint_handler_copy_flow(v2);
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_85389);
  }

  v207 = v4;
  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  if ((*(v4 + 33) & 0x40) != 0)
  {
    v228[0] = 0;
    v228[1] = 0;
    v210 = 0;
    v15 = v2;
    os_unfair_lock_lock(&v15->lock);
    v16 = v15->current_path;
    os_unfair_lock_unlock(&v15->lock);

    v17 = *(v4 + 104);
    if (v17 && v16)
    {
      nexus_instance = nw_path_flow_registration_get_nexus_instance(v16, v17, v228, &v210);
      can_use_nexus = nw_path_flow_registration_can_use_nexus(v16, *(v4 + 104));
      if (*(v4 + 113))
      {
        if (nexus_instance & can_use_nexus)
        {
          v20 = v15;
          v21 = (*(v20 + 284) & 0x40) == 0;

          if (v21)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v22 = gconnectionLogObj;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              id_string = nw_endpoint_handler_get_id_string(v20);
              v24 = nw_endpoint_handler_dry_run_string(v20);
              v201 = v16;
              v25 = nw_endpoint_handler_copy_endpoint(v20);
              logging_description = nw_endpoint_get_logging_description(v25);
              v27 = nw_endpoint_handler_state_string(v20);
              v28 = nw_endpoint_handler_mode_string(v20);
              v29 = nw_endpoint_handler_copy_current_path(v20);
              *buf = 136447746;
              v213 = "nw_endpoint_flow_setup_channel";
              v214 = 2082;
              id_str = id_string;
              v216 = 2082;
              v217 = v24;
              v218 = 2082;
              v219 = logging_description;
              v220 = 2082;
              v221 = v27;
              v222 = 2082;
              v223 = v28;
              v224 = 2114;
              v225 = v29;
              _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already set up", buf, 0x48u);

              v16 = v201;
            }
          }

          nw_endpoint_flow_setup_protocols(v20, 0, 0, (*(v207 + 32) >> 4) & 1, 0);
          goto LABEL_157;
        }

        if (nexus_instance)
        {
          v203 = v16;
          minimize_logging = nw_endpoint_handler_get_minimize_logging(v15);
          logging_disabled = nw_endpoint_handler_get_logging_disabled(v15);
          if (!minimize_logging)
          {
            if ((logging_disabled & 1) == 0)
            {
              v16 = v203;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v34 = gconnectionLogObj;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v76 = nw_endpoint_handler_get_id_string(v15);
                v77 = nw_endpoint_handler_dry_run_string(v15);
                v78 = nw_endpoint_handler_copy_endpoint(v15);
                v79 = nw_endpoint_get_logging_description(v78);
                v80 = nw_endpoint_handler_state_string(v15);
                v81 = nw_endpoint_handler_mode_string(v15);
                v82 = nw_endpoint_handler_copy_current_path(v15);
                *buf = 136447746;
                v213 = "nw_endpoint_flow_setup_channel";
                v214 = 2082;
                id_str = v76;
                v216 = 2082;
                v217 = v77;
                v218 = 2082;
                v219 = v79;
                v220 = 2082;
                v221 = v80;
                v222 = 2082;
                v223 = v81;
                v224 = 2114;
                v225 = v82;
                _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] nexus no longer supported", buf, 0x48u);

                v16 = v203;
              }

              goto LABEL_145;
            }

            v133 = 0;
            v16 = v203;
LABEL_148:
            if ((nw_path_uses_companion(v16) & 1) == 0)
            {
              if ((nw_path_allows_multipath(v16) & 1) == 0)
              {
                if ((*(v4 + 32) & 1) == 0)
                {
                  if ((*(v4 + 33) & 8) != 0)
                  {
                    v134 = nw_endpoint_handler_copy_topmost_parent(v15);
                    nw_endpoint_flow_failed_with_error(v134, 1, v133);
                  }

                  goto LABEL_156;
                }

                goto LABEL_155;
              }

              if ((*(v4 + 33) & 8) == 0)
              {
LABEL_155:
                nw_endpoint_flow_failed_with_error(v15, 1, 0);
              }
            }

LABEL_156:

LABEL_157:
            if (_nw_signposts_once != -1)
            {
              dispatch_once(&_nw_signposts_once, &__block_literal_global_85389);
            }

            if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
            {
              kdebug_trace();
            }

LABEL_162:
            v103 = 0;
LABEL_163:

            goto LABEL_164;
          }

          if ((logging_disabled & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v34 = gconnectionLogObj;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              objd = nw_endpoint_handler_get_id_string(v15);
              v181 = nw_endpoint_handler_dry_run_string(v15);
              v182 = nw_endpoint_handler_copy_endpoint(v15);
              v183 = nw_endpoint_get_logging_description(v182);
              v184 = nw_endpoint_handler_state_string(v15);
              v185 = nw_endpoint_handler_mode_string(v15);
              v186 = nw_endpoint_handler_copy_current_path(v15);
              *buf = 136447746;
              v213 = "nw_endpoint_flow_setup_channel";
              v214 = 2082;
              id_str = objd;
              v216 = 2082;
              v217 = v181;
              v218 = 2082;
              v219 = v183;
              v220 = 2082;
              v221 = v184;
              v222 = 2082;
              v223 = v185;
              v224 = 2114;
              v225 = v186;
              _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] nexus no longer supported", buf, 0x48u);

              v16 = v203;
              goto LABEL_145;
            }

LABEL_251:
            v133 = 0;
            v16 = v203;
            goto LABEL_146;
          }

LABEL_259:
          v133 = 0;
          v16 = v203;
          goto LABEL_148;
        }

        if (v210)
        {
          if ((v210 + 9899) > 0x63)
          {
            tls_error = (v210 + 11999) > 0x1F3 ? nw_error_create_posix_error(v210) : nw_error_create_wifi_aware_error(v210);
          }

          else
          {
            tls_error = nw_error_create_tls_error(v210);
          }

          v133 = tls_error;
          if (tls_error)
          {
            v135 = v15;
            v136 = (*(v135 + 284) & 0x40) == 0;

            if (v136)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v137 = gconnectionLogObj;
              if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
              {
                v138 = nw_endpoint_handler_get_id_string(v135);
                v195 = nw_endpoint_handler_dry_run_string(v135);
                objc = nw_endpoint_handler_copy_endpoint(v135);
                v139 = v138;
                v140 = nw_endpoint_get_logging_description(objc);
                v141 = nw_endpoint_handler_state_string(v135);
                v142 = nw_endpoint_handler_mode_string(v135);
                v143 = nw_endpoint_handler_copy_current_path(v135);
                *buf = 136448002;
                v213 = "nw_endpoint_flow_setup_channel";
                v214 = 2082;
                id_str = v139;
                v216 = 2082;
                v217 = v195;
                v218 = 2082;
                v219 = v140;
                v220 = 2082;
                v221 = v141;
                v222 = 2082;
                v223 = v142;
                v224 = 2114;
                v225 = v143;
                v226 = 2112;
                v227 = v133;
                _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] lost nexus assignment, error %@", buf, 0x52u);
              }
            }

            v4 = v207;
            if (!*(v207 + 109))
            {
              v133 = v133;
              v34 = *(v207 + 109);
              *(v207 + 109) = v133;
              goto LABEL_146;
            }

            goto LABEL_148;
          }
        }

LABEL_30:
        v30 = v15;
        v31 = (*(v30 + 284) & 0x20) == 0;

        if (!v31)
        {
          v203 = v16;
          if (nw_endpoint_handler_get_logging_disabled(v30))
          {
            goto LABEL_259;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v34 = gconnectionLogObj;
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_251;
          }

          v166 = nw_endpoint_handler_get_id_string(v30);
          v167 = nw_endpoint_handler_dry_run_string(v30);
          v168 = nw_endpoint_handler_copy_endpoint(v30);
          v169 = nw_endpoint_get_logging_description(v168);
          v170 = nw_endpoint_handler_state_string(v30);
          v171 = nw_endpoint_handler_mode_string(v30);
          v172 = nw_endpoint_handler_copy_current_path(v30);
          *buf = 136447746;
          v213 = "nw_endpoint_flow_setup_channel";
          v214 = 2082;
          id_str = v166;
          v216 = 2082;
          v217 = v167;
          v218 = 2082;
          v219 = v169;
          v220 = 2082;
          v221 = v170;
          v222 = 2082;
          v223 = v171;
          v224 = 2114;
          v225 = v172;
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] lost nexus assignment", buf, 0x48u);

          v16 = v203;
LABEL_145:
          v133 = 0;
LABEL_146:

LABEL_147:
          v4 = v207;
          goto LABEL_148;
        }

        v32 = v30;
        v33 = (*(v30 + 284) & 0x40) == 0;

        if (!v33)
        {
          v133 = 0;
          goto LABEL_147;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v34 = gconnectionLogObj;
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          goto LABEL_145;
        }

        v35 = v32;

        v36 = v35;
        v37 = (*(v30 + 284) & 1) == 0;

        if (v37)
        {
          v38 = "";
        }

        else
        {
          v38 = "dry-run ";
        }

        v39 = nw_endpoint_handler_copy_endpoint(v36);
        v40 = v39;
        if (v39)
        {
          v41 = _nw_endpoint_get_logging_description(v39);
        }

        else
        {
          v41 = "<NULL>";
        }

        v107 = v36;
        v108 = v107;
        v109 = v107[30];
        if (v109 > 5)
        {
          v110 = "unknown-state";
        }

        else
        {
          v110 = off_1E6A31048[v109];
        }

        objb = v110;

        v111 = v108;
        v112 = v111;
        v113 = v2->mode;
        if (v113 > 2)
        {
          switch(v113)
          {
            case 3:
              v114 = "proxy";
              break;
            case 4:
              v114 = "fallback";
              break;
            case 5:
              v114 = "transform";
              break;
            default:
LABEL_140:
              v114 = "unknown-mode";
              break;
          }
        }

        else
        {
          if (v113)
          {
            if (v113 == 1)
            {
              v114 = "resolver";
              goto LABEL_143;
            }

            if (v113 == 2)
            {
              v194 = nw_endpoint_flow_mode_string(v111[33]);
LABEL_144:

              v125 = v35;
              v126 = v41;
              v127 = v34;
              v128 = v38;
              v129 = v16;
              v130 = v112;
              os_unfair_lock_lock(&v15->lock);
              v131 = v15->current_path;
              os_unfair_lock_unlock(&v15->lock);

              v16 = v129;
              v132 = v128;
              v34 = v127;
              *buf = 136447746;
              v213 = "nw_endpoint_flow_setup_channel";
              v214 = 2082;
              id_str = v125->id_str;
              v216 = 2082;
              v217 = v132;
              v218 = 2082;
              v219 = v126;
              v220 = 2082;
              v221 = objb;
              v222 = 2082;
              v223 = v194;
              v224 = 2114;
              v225 = v131;
              _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] lost nexus assignment", buf, 0x48u);

              goto LABEL_145;
            }

            goto LABEL_140;
          }

          v114 = "path";
        }

LABEL_143:
        v194 = v114;
        goto LABEL_144;
      }

      if (nexus_instance)
      {
        v15->event = 131075;
        nw_endpoint_handler_report(v15, 0, &v15->event.domain, 0);
        nw_endpoint_flow_setup_protocols(v15, 0, 0, (*(v4 + 32) >> 4) & 1, 0);
        goto LABEL_99;
      }

      if (v210)
      {
        obja = nw_error_create_posix_error(v210);
        v83 = v15;
        v84 = (*(v83 + 284) & 0x40) == 0;

        if (v84)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v85 = gconnectionLogObj;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            v86 = nw_endpoint_handler_get_id_string(v83);
            v87 = nw_endpoint_handler_dry_run_string(v83);
            v204 = v16;
            v88 = nw_endpoint_handler_copy_endpoint(v83);
            v89 = nw_endpoint_get_logging_description(v88);
            v90 = nw_endpoint_handler_state_string(v83);
            v91 = nw_endpoint_handler_mode_string(v83);
            v92 = nw_endpoint_handler_copy_current_path(v83);
            *buf = 136448002;
            v213 = "nw_endpoint_flow_setup_channel";
            v214 = 2082;
            id_str = v86;
            v216 = 2082;
            v217 = v87;
            v218 = 2082;
            v219 = v89;
            v220 = 2082;
            v221 = v90;
            v222 = 2082;
            v223 = v91;
            v224 = 2114;
            v225 = v92;
            v226 = 2112;
            v227 = obja;
            _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] nexus assignment error %@", buf, 0x52u);

            v16 = v204;
          }
        }

        if (!*(v207 + 109))
        {
          objc_storeStrong(v207 + 109, obja);
        }

        nw_endpoint_flow_failed_with_error(v83, 1, 0);

        goto LABEL_162;
      }

LABEL_92:
      v205 = v16;
      v93 = nw_endpoint_handler_get_minimize_logging(v15);
      v94 = nw_endpoint_handler_get_logging_disabled(v15);
      if (v93)
      {
        v16 = v205;
        if ((v94 & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v173 = gconnectionLogObj;
          if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
          {
            v174 = nw_endpoint_handler_get_id_string(v15);
            v175 = nw_endpoint_handler_dry_run_string(v15);
            v176 = nw_endpoint_handler_copy_endpoint(v15);
            v177 = nw_endpoint_get_logging_description(v176);
            v178 = nw_endpoint_handler_state_string(v15);
            v179 = nw_endpoint_handler_mode_string(v15);
            v180 = nw_endpoint_handler_copy_current_path(v15);
            *buf = 136447746;
            v213 = "nw_endpoint_flow_setup_channel";
            v214 = 2082;
            id_str = v174;
            v216 = 2082;
            v217 = v175;
            v218 = 2082;
            v219 = v177;
            v220 = 2082;
            v221 = v178;
            v222 = 2082;
            v223 = v179;
            v224 = 2114;
            v225 = v180;
            _os_log_impl(&dword_181A37000, v173, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already requested nexus, wait", buf, 0x48u);
          }

          v16 = v205;
        }
      }

      else
      {
        v16 = v205;
        if ((v94 & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v95 = gconnectionLogObj;
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            v96 = nw_endpoint_handler_get_id_string(v15);
            v97 = nw_endpoint_handler_dry_run_string(v15);
            v98 = nw_endpoint_handler_copy_endpoint(v15);
            v99 = nw_endpoint_get_logging_description(v98);
            v100 = nw_endpoint_handler_state_string(v15);
            v101 = nw_endpoint_handler_mode_string(v15);
            v102 = nw_endpoint_handler_copy_current_path(v15);
            *buf = 136447746;
            v213 = "nw_endpoint_flow_setup_channel";
            v214 = 2082;
            id_str = v96;
            v216 = 2082;
            v217 = v97;
            v218 = 2082;
            v219 = v99;
            v220 = 2082;
            v221 = v100;
            v222 = 2082;
            v223 = v101;
            v224 = 2114;
            v225 = v102;
            _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already requested nexus, wait", buf, 0x48u);

            v16 = v205;
          }
        }
      }

      goto LABEL_99;
    }

    if (*(v4 + 113))
    {
      goto LABEL_30;
    }

    if (v17)
    {
      goto LABEL_92;
    }

    v15->event = 65539;
    nw_endpoint_handler_report(v15, 0, &v15->event.domain, 0);
    v209 = 0;
    v211 = 0uLL;
    nw_path_get_nexus_agent_uuid_check_assertion(v16, &v211, &v209);
    if (v209 && (nw_path_agent_action(v16, &v211, 131) & 1) == 0 && (nw_endpoint_handler_get_logging_disabled(v15) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v42 = gconnectionLogObj;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = nw_endpoint_handler_get_id_string(v15);
        v44 = nw_endpoint_handler_dry_run_string(v15);
        v202 = v16;
        v45 = nw_endpoint_handler_copy_endpoint(v15);
        v46 = nw_endpoint_get_logging_description(v45);
        v47 = nw_endpoint_handler_state_string(v15);
        v48 = nw_endpoint_handler_mode_string(v15);
        v49 = nw_endpoint_handler_copy_current_path(v15);
        *buf = 136447746;
        v213 = "nw_endpoint_flow_setup_channel";
        v214 = 2082;
        id_str = v43;
        v216 = 2082;
        v217 = v44;
        v218 = 2082;
        v219 = v46;
        v220 = 2082;
        v221 = v47;
        v222 = 2082;
        v223 = v48;
        v224 = 2114;
        v225 = v49;
        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failed to assert nexus agent", buf, 0x48u);

        v16 = v202;
      }

      v4 = v207;
    }

    v50 = nw_endpoint_handler_copy_association(v15, 0);
    v51 = v50;
    v208 = 0;
    obj = v50;
    if (v50)
    {
      v52 = nw_association_create_flow(v50, 1, 1, 0, 0, &v211, &v208);
      v53 = *(v4 + 104);
      *(v4 + 104) = v52;

      v4 = v207;
      v51 = obj;
    }

    if (!*(v4 + 104))
    {
      if ((nw_endpoint_handler_get_logging_disabled(v15) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v115 = gconnectionLogObj;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          v116 = nw_endpoint_handler_get_id_string(v15);
          v117 = nw_endpoint_handler_dry_run_string(v15);
          v206 = v16;
          v118 = nw_endpoint_handler_copy_endpoint(v15);
          v119 = nw_endpoint_get_logging_description(v118);
          v120 = nw_endpoint_handler_state_string(v15);
          v121 = nw_endpoint_handler_mode_string(v15);
          v122 = nw_endpoint_handler_copy_current_path(v15);
          *buf = 136447746;
          v213 = "nw_endpoint_flow_setup_channel";
          v214 = 2082;
          id_str = v116;
          v216 = 2082;
          v217 = v117;
          v218 = 2082;
          v219 = v119;
          v220 = 2082;
          v221 = v120;
          v222 = 2082;
          v223 = v121;
          v224 = 2114;
          v225 = v122;
          _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failed to request add nexus flow", buf, 0x48u);

          v16 = v206;
        }

        v4 = v207;
        v51 = obj;
      }

      if (v208 && !*(v4 + 109))
      {
        posix_error = nw_error_create_posix_error(v208);
        v124 = *(v4 + 109);
        *(v4 + 109) = posix_error;

        v51 = obj;
      }

      nw_endpoint_flow_failed_with_error(v15, 1, 0);

      goto LABEL_162;
    }

    v54 = v16;
    v55 = nw_endpoint_handler_get_minimize_logging(v15);
    v56 = nw_endpoint_handler_get_logging_disabled(v15);
    if (v55)
    {
      v16 = v54;
      if (v56)
      {
        goto LABEL_59;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v57 = gconnectionLogObj;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v187 = nw_endpoint_handler_get_id_string(v15);
        v188 = nw_endpoint_handler_dry_run_string(v15);
        v189 = nw_endpoint_handler_copy_endpoint(v15);
        v190 = nw_endpoint_get_logging_description(v189);
        v191 = nw_endpoint_handler_state_string(v15);
        v192 = nw_endpoint_handler_mode_string(v15);
        v193 = nw_endpoint_handler_copy_current_path(v15);
        *buf = 136447746;
        v213 = "nw_endpoint_flow_setup_channel";
        v214 = 2082;
        id_str = v187;
        v216 = 2082;
        v217 = v188;
        v218 = 2082;
        v219 = v190;
        v220 = 2082;
        v221 = v191;
        v222 = 2082;
        v223 = v192;
        v224 = 2114;
        v225 = v193;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] requested nexus flow", buf, 0x48u);

        v16 = v54;
      }

      else
      {
        v16 = v54;
      }
    }

    else
    {
      v16 = v54;
      if (v56)
      {
LABEL_59:
        nw_association_force_update(v51, *(v4 + 104));

LABEL_99:
        if (_nw_signposts_once != -1)
        {
          dispatch_once(&_nw_signposts_once, &__block_literal_global_85389);
        }

        if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
        {
          kdebug_trace();
        }

        v103 = 1;
        goto LABEL_163;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v57 = gconnectionLogObj;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = nw_endpoint_handler_get_id_string(v15);
        v59 = nw_endpoint_handler_dry_run_string(v15);
        v60 = nw_endpoint_handler_copy_endpoint(v15);
        v61 = nw_endpoint_get_logging_description(v60);
        v62 = nw_endpoint_handler_state_string(v15);
        v63 = nw_endpoint_handler_mode_string(v15);
        v64 = nw_endpoint_handler_copy_current_path(v15);
        *buf = 136447746;
        v213 = "nw_endpoint_flow_setup_channel";
        v214 = 2082;
        id_str = v58;
        v216 = 2082;
        v217 = v59;
        v218 = 2082;
        v219 = v61;
        v220 = 2082;
        v221 = v62;
        v222 = 2082;
        v223 = v63;
        v224 = 2114;
        v225 = v64;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] requested nexus flow", buf, 0x48u);

        v16 = v54;
      }
    }

    v4 = v207;
    v51 = obj;
    goto LABEL_59;
  }

  v5 = v2;
  v6 = *(v5 + 284);

  if ((v6 & 0x40) != 0)
  {
    v103 = 0;
    goto LABEL_165;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v7 = gconnectionLogObj;
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_114;
  }

  v8 = v5;

  v9 = v8;
  v10 = *(v5 + 284);

  if (v10)
  {
    v11 = "dry-run ";
  }

  else
  {
    v11 = "";
  }

  v12 = nw_endpoint_handler_copy_endpoint(v9);
  v13 = v12;
  if (v12)
  {
    v14 = _nw_endpoint_get_logging_description(v12);
  }

  else
  {
    v14 = "<NULL>";
  }

  v65 = v8->id_str;

  v66 = v9;
  v67 = v66;
  v68 = v66[30];
  if (v68 > 5)
  {
    v69 = "unknown-state";
  }

  else
  {
    v69 = off_1E6A31048[v68];
  }

  v70 = v67;
  v71 = v70;
  v72 = v2->mode;
  if (v72 > 2)
  {
    switch(v72)
    {
      case 3:
        v73 = "proxy";
        goto LABEL_113;
      case 4:
        v73 = "fallback";
        goto LABEL_113;
      case 5:
        v73 = "transform";
        goto LABEL_113;
    }

LABEL_110:
    v73 = "unknown-mode";
    goto LABEL_113;
  }

  if (!v72)
  {
    v73 = "path";
    goto LABEL_113;
  }

  if (v72 == 1)
  {
    v73 = "resolver";
    goto LABEL_113;
  }

  if (v72 != 2)
  {
    goto LABEL_110;
  }

  v73 = nw_endpoint_flow_mode_string(v70[33]);
LABEL_113:

  v105 = v71;
  os_unfair_lock_lock(v105 + 28);
  v106 = v105[8];
  os_unfair_lock_unlock(v105 + 28);

  *buf = 136447746;
  v213 = "nw_endpoint_flow_setup_channel";
  v214 = 2082;
  id_str = v65;
  v216 = 2082;
  v217 = v11;
  v218 = 2082;
  v219 = v14;
  v220 = 2082;
  v221 = v69;
  v222 = 2082;
  v223 = v73;
  v224 = 2114;
  v225 = v106;
  _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] is not a channel flow", buf, 0x48u);

LABEL_114:
  v103 = 0;
LABEL_164:
  v4 = v207;
LABEL_165:

LABEL_233:
  return v103;
}

uint64_t nw_path_get_nexus_agent_uuid_check_assertion(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = _nw_path_get_nexus_agent_uuid_check_assertion(v5, a2, a3);
    goto LABEL_3;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_path_get_nexus_agent_uuid_check_assertion";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_path_get_nexus_agent_uuid_check_assertion";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_path_get_nexus_agent_uuid_check_assertion";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_path_get_nexus_agent_uuid_check_assertion";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_path_get_nexus_agent_uuid_check_assertion";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_3:

  return v7;
}

BOOL sub_181BA5EC0(uint64_t a1)
{
  if (sub_181AC2A38(0))
  {
    sub_181AC350C(0, &v7);
    v2 = v7;
    if (v7)
    {
      if (!SystemUUID.isUUIDNULL.getter())
      {
        v4 = (*(v2 + 80) & 2) == 0;
        v5 = *(v2 + 32);
        v6 = *(v2 + 40);
        sub_181AD1A40(v2);
        result = v4;
        *a1 = v5;
        *(a1 + 8) = v6;
        *(a1 + 16) = 0;
        return result;
      }

      sub_181AD1A40(v2);
    }
  }

  result = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t nw_path_get_nexus_protocol_level(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nexus_protocol_level = _nw_path_get_nexus_protocol_level(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_nexus_protocol_level";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_get_nexus_protocol_level";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_path_get_nexus_protocol_level";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_get_nexus_protocol_level";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_get_nexus_protocol_level";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  nexus_protocol_level = 0;
LABEL_3:

  return nexus_protocol_level;
}

uint64_t _nw_path_get_nexus_protocol_level(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC7Network8__NWPath_path;
  v3 = a1;
  swift_beginAccess();
  memcpy(__dst, &a1[v1], sizeof(__dst));
  v4 = sub_181ADF260();
  swift_endAccess();

  return v4;
}

void nw_association_force_update(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if ((*(v3 + 76) & 2) == 0)
    {
      *(v3 + 76) |= 2u;
      nw_path_evaluator_force_update(*(v3 + 3), v4);
      *(v3 + 76) &= ~2u;
    }

    goto LABEL_4;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_association_force_update";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_association_force_update";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null association", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_association_force_update";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_association_force_update";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null association, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_association_force_update";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

LABEL_4:
}

void nw_endpoint_resolver_start_next_child(NWConcrete_nw_endpoint_handler *a1)
{
  v265 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v153 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_resolver_start_next_child";
    v154 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v251 = 0;
    if (__nwlog_fault(v154, type, &v251))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v155 = __nwlog_obj();
        v156 = type[0];
        if (os_log_type_enabled(v155, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_start_next_child";
          _os_log_impl(&dword_181A37000, v155, v156, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v251 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v155 = __nwlog_obj();
        v162 = type[0];
        v163 = os_log_type_enabled(v155, type[0]);
        if (backtrace_string)
        {
          if (v163)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_resolver_start_next_child";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v155, v162, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_208;
        }

        if (v163)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_start_next_child";
          _os_log_impl(&dword_181A37000, v155, v162, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v155 = __nwlog_obj();
        v172 = type[0];
        if (os_log_type_enabled(v155, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_start_next_child";
          _os_log_impl(&dword_181A37000, v155, v172, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_208:
    if (v154)
    {
      free(v154);
    }

    v2 = 0;
    goto LABEL_130;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode == 1)
  {
    v242 = nw_endpoint_handler_copy_resolver(v3);
    v5 = v3;
    v6 = v5->state & 0xFFFFFFFE;

    v241 = v2;
    if (v6 == 4)
    {
      v7 = v5;
      v8 = *(v7 + 284);

      if ((v8 & 0x20) != 0)
      {
        if (nw_endpoint_handler_get_logging_disabled(v7))
        {
          goto LABEL_118;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          id_string = nw_endpoint_handler_get_id_string(v7);
          v166 = nw_endpoint_handler_dry_run_string(v7);
          v167 = nw_endpoint_handler_copy_endpoint(v7);
          logging_description = nw_endpoint_get_logging_description(v167);
          v169 = nw_endpoint_handler_state_string(v7);
          v170 = nw_endpoint_handler_mode_string(v7);
          v171 = nw_endpoint_handler_copy_current_path(v7);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_start_next_child";
          *&buf[12] = 2082;
          *&buf[14] = id_string;
          v253 = 2082;
          v254 = v166;
          v255 = 2082;
          v256 = logging_description;
          v257 = 2082;
          v258 = v169;
          v259 = 2082;
          v260 = v170;
          v261 = 2114;
          v262 = v171;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] not starting next child", buf, 0x48u);
        }

        goto LABEL_117;
      }

      v9 = v7;
      v10 = *(v7 + 284);

      if ((v10 & 0x40) != 0)
      {
LABEL_118:
        v110 = *(v242 + 7);
        if (v110)
        {
          nw_queue_cancel_source(v110, v11);
          *(v242 + 7) = 0;
        }

        v111 = *(v242 + 8);
        if (v111)
        {
          nw_queue_cancel_source(v111, v11);
          *(v242 + 8) = 0;
        }

        goto LABEL_129;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_117:

        goto LABEL_118;
      }

      v13 = v9;

      v14 = v13;
      v15 = *(v7 + 284);

      if (v15)
      {
        v16 = "dry-run ";
      }

      else
      {
        v16 = "";
      }

      v17 = nw_endpoint_handler_copy_endpoint(v14);
      v18 = v17;
      if (v17)
      {
        v19 = _nw_endpoint_get_logging_description(v17);
      }

      else
      {
        v19 = "<NULL>";
      }

      v50 = v13 + 184;

      v51 = v14;
      v52 = v51;
      state = v5->state;
      if (state > 5)
      {
        v54 = "unknown-state";
      }

      else
      {
        v54 = off_1E6A31048[state];
      }

      v55 = v52;
      v56 = v55;
      v57 = v3->mode;
      if (v57 > 2)
      {
        switch(v57)
        {
          case 3:
            v58 = "proxy";
            goto LABEL_116;
          case 4:
            v58 = "fallback";
            goto LABEL_116;
          case 5:
            v58 = "transform";
            goto LABEL_116;
        }
      }

      else
      {
        switch(v57)
        {
          case 0:
            v58 = "path";
            goto LABEL_116;
          case 1:
            v58 = "resolver";
            goto LABEL_116;
          case 2:
            v58 = nw_endpoint_flow_mode_string(v55[33]);
LABEL_116:

            v108 = v56;
            os_unfair_lock_lock(v108 + 28);
            v109 = v108[8];
            os_unfair_lock_unlock(v108 + 28);

            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_start_next_child";
            *&buf[12] = 2082;
            *&buf[14] = v50;
            v253 = 2082;
            v254 = v16;
            v255 = 2082;
            v256 = v19;
            v257 = 2082;
            v258 = v54;
            v259 = 2082;
            v260 = v58;
            v261 = 2114;
            v262 = v109;
            _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] not starting next child", buf, 0x48u);

            goto LABEL_117;
        }
      }

      v58 = "unknown-mode";
      goto LABEL_116;
    }

    v22 = v242;
    if (*(v242 + 4))
    {
      v23 = v5;
      v24 = *(v23 + 284);

      if ((v24 & 0x20) != 0)
      {
        if (nw_endpoint_handler_get_logging_disabled(v23))
        {
          goto LABEL_129;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v27 = gconnectionLogObj;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v173 = nw_endpoint_handler_get_id_string(v23);
          v174 = nw_endpoint_handler_dry_run_string(v23);
          v175 = nw_endpoint_handler_copy_endpoint(v23);
          v176 = nw_endpoint_get_logging_description(v175);
          v177 = nw_endpoint_handler_state_string(v23);
          v178 = nw_endpoint_handler_mode_string(v23);
          v179 = nw_endpoint_handler_copy_current_path(v23);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_start_next_child";
          *&buf[12] = 2082;
          *&buf[14] = v173;
          v253 = 2082;
          v254 = v174;
          v255 = 2082;
          v256 = v176;
          v257 = 2082;
          v258 = v177;
          v259 = 2082;
          v260 = v178;
          v261 = 2114;
          v262 = v179;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already connected, not starting next child", buf, 0x48u);
        }

        goto LABEL_128;
      }

      v25 = v23;
      v26 = *(v23 + 284);

      if ((v26 & 0x40) != 0)
      {
LABEL_129:

        v2 = v241;
        goto LABEL_130;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v27 = gconnectionLogObj;
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
LABEL_128:

        goto LABEL_129;
      }

      v28 = v25;

      v29 = v28;
      v30 = *(v23 + 284);

      if (v30)
      {
        v31 = "dry-run ";
      }

      else
      {
        v31 = "";
      }

      v32 = nw_endpoint_handler_copy_endpoint(v29);
      v33 = v32;
      if (v32)
      {
        v34 = _nw_endpoint_get_logging_description(v32);
      }

      else
      {
        v34 = "<NULL>";
      }

      v59 = v28 + 184;

      v60 = v29;
      v61 = v60;
      v62 = v5->state;
      if (v62 > 5)
      {
        v63 = "unknown-state";
      }

      else
      {
        v63 = off_1E6A31048[v62];
      }

      v64 = v61;
      v65 = v64;
      v66 = v3->mode;
      if (v66 > 2)
      {
        switch(v66)
        {
          case 3:
            v67 = "proxy";
            goto LABEL_127;
          case 4:
            v67 = "fallback";
            goto LABEL_127;
          case 5:
            v67 = "transform";
            goto LABEL_127;
        }
      }

      else
      {
        switch(v66)
        {
          case 0:
            v67 = "path";
            goto LABEL_127;
          case 1:
            v67 = "resolver";
            goto LABEL_127;
          case 2:
            v67 = nw_endpoint_flow_mode_string(v64[33]);
LABEL_127:

            v112 = v65;
            os_unfair_lock_lock(v112 + 28);
            v113 = v112[8];
            os_unfair_lock_unlock(v112 + 28);

            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_start_next_child";
            *&buf[12] = 2082;
            *&buf[14] = v59;
            v253 = 2082;
            v254 = v31;
            v255 = 2082;
            v256 = v34;
            v257 = 2082;
            v258 = v63;
            v259 = 2082;
            v260 = v67;
            v261 = 2114;
            v262 = v113;
            _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already connected, not starting next child", buf, 0x48u);

            goto LABEL_128;
        }
      }

      v67 = "unknown-mode";
      goto LABEL_127;
    }

    v35 = *(v242 + 5);
    count = *(v242 + 6);
    if (count)
    {
      count = _nw_array_get_count(count);
      v22 = v242;
    }

    if (v35 && count < v35)
    {
      v37 = v5;
      v27 = v37[4];

      if (nw_parameters_get_prohibit_parallel_connection_attempts(v27))
      {
        v38 = v37;
        v39 = *(v38 + 284);

        if ((v39 & 0x20) != 0)
        {
          if (nw_endpoint_handler_get_logging_disabled(v38))
          {
            goto LABEL_128;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v180 = gconnectionLogObj;
          if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
          {
            endpointb = nw_endpoint_handler_get_id_string(v38);
            v181 = nw_endpoint_handler_dry_run_string(v38);
            v182 = nw_endpoint_handler_copy_endpoint(v38);
            v183 = nw_endpoint_get_logging_description(v182);
            v184 = nw_endpoint_handler_state_string(v38);
            v185 = nw_endpoint_handler_mode_string(v38);
            v186 = nw_endpoint_handler_copy_current_path(v38);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_start_next_child";
            *&buf[12] = 2082;
            *&buf[14] = endpointb;
            v253 = 2082;
            v254 = v181;
            v255 = 2082;
            v256 = v183;
            v257 = 2082;
            v258 = v184;
            v259 = 2082;
            v260 = v185;
            v261 = 2114;
            v262 = v186;
            _os_log_impl(&dword_181A37000, v180, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parallel resolutions prohibited, not starting next child", buf, 0x48u);
          }

          v42 = v180;
        }

        else
        {
          v40 = v38;
          v41 = *(v38 + 284);

          if ((v41 & 0x40) != 0)
          {
            goto LABEL_128;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v42 = gconnectionLogObj;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = nw_endpoint_handler_get_id_string(v40);
            v44 = nw_endpoint_handler_dry_run_string(v40);
            v45 = nw_endpoint_handler_copy_endpoint(v40);
            v46 = nw_endpoint_get_logging_description(v45);
            v47 = nw_endpoint_handler_state_string(v40);
            v48 = nw_endpoint_handler_mode_string(v40);
            v49 = nw_endpoint_handler_copy_current_path(v40);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_start_next_child";
            *&buf[12] = 2082;
            *&buf[14] = v43;
            v253 = 2082;
            v254 = v44;
            v255 = 2082;
            v256 = v46;
            v257 = 2082;
            v258 = v47;
            v259 = 2082;
            v260 = v48;
            v261 = 2114;
            v262 = v49;
            _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] parallel resolutions prohibited, not starting next child", buf, 0x48u);
          }
        }

        goto LABEL_128;
      }

      v22 = v242;
    }

    v68 = *(v22 + 5);
    if (!v68 || _nw_array_get_count(v68) <= v35)
    {
      v99 = v5;
      v100 = *(v99 + 284);

      if ((v100 & 0x40) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v101 = gconnectionLogObj;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
        {
          v102 = nw_endpoint_handler_get_id_string(v99);
          v103 = nw_endpoint_handler_dry_run_string(v99);
          endpointa = nw_endpoint_handler_copy_endpoint(v99);
          v104 = nw_endpoint_get_logging_description(endpointa);
          v105 = nw_endpoint_handler_state_string(v99);
          v106 = nw_endpoint_handler_mode_string(v99);
          v107 = nw_endpoint_handler_copy_current_path(v99);
          *buf = 136448002;
          *&buf[4] = "nw_endpoint_resolver_start_next_child";
          *&buf[12] = 2082;
          *&buf[14] = v102;
          v253 = 2082;
          v254 = v103;
          v255 = 2082;
          v256 = v104;
          v257 = 2082;
          v258 = v105;
          v259 = 2082;
          v260 = v106;
          v261 = 2114;
          v262 = v107;
          v263 = 1024;
          LODWORD(v264) = v35;
          _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no child at index %u", buf, 0x4Eu);
        }
      }

      *(v242 + 24) |= 2u;
      nw_endpoint_resolver_check_desperate_ivan(v99);
      goto LABEL_129;
    }

    v70 = v242;
    *(v242 + 24) &= ~2u;
    ++*(v242 + 5);
    v71 = *(v242 + 7);
    if (v71)
    {
      nw_queue_cancel_source(v71, v69);
      v70 = v242;
      *(v242 + 7) = 0;
    }

    v72 = *(v70 + 8);
    if (v72)
    {
      nw_queue_cancel_source(v72, v69);
      v70 = v242;
      *(v242 + 8) = 0;
    }

    v73 = *(v70 + 5);
    if (v73)
    {
      v73 = _nw_array_get_object_at_index(v73, v35);
    }

    v237 = v73;
    endpoint = nw_endpoint_handler_copy_endpoint(v73);
    v74 = v5;
    v75 = *(v74 + 284);

    delta = v74;
    if ((v75 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v74))
      {
LABEL_86:
        v86 = v237;
        if (nw_endpoint_handler_get_state(v237) == 5)
        {
          child_parameters = nw_endpoint_resolver_create_child_parameters(v74);
          if (nw_endpoint_get_is_approved_app_domain(endpoint))
          {
            nw_parameters_set_is_approved_app_domain(child_parameters);
          }

          nw_endpoint_handler_reinitialize(v237, v74, child_parameters);

          v86 = v237;
          v74 = delta;
        }

        if (nw_endpoint_get_type(endpoint) != nw_endpoint_type_address)
        {
LABEL_133:
          nw_endpoint_handler_start(v86);
          v114 = v74;
          v115 = (v5->state & 0xFFFFFFFE) == 4;

          if (v115)
          {
            minimize_logging = nw_endpoint_handler_get_minimize_logging(v114);
            logging_disabled = nw_endpoint_handler_get_logging_disabled(v114);
            if (minimize_logging)
            {
              if (logging_disabled)
              {
                goto LABEL_204;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v88 = gconnectionLogObj;
              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
              {
                v194 = nw_endpoint_handler_get_id_string(v114);
                v195 = nw_endpoint_handler_dry_run_string(v114);
                v196 = nw_endpoint_handler_copy_endpoint(v114);
                v197 = nw_endpoint_get_logging_description(v196);
                v198 = nw_endpoint_handler_state_string(v114);
                v199 = nw_endpoint_handler_mode_string(v114);
                v200 = nw_endpoint_handler_copy_current_path(v114);
                *buf = 136447746;
                *&buf[4] = "nw_endpoint_resolver_start_next_child";
                *&buf[12] = 2082;
                *&buf[14] = v194;
                v253 = 2082;
                v254 = v195;
                v255 = 2082;
                v256 = v197;
                v257 = 2082;
                v258 = v198;
                v259 = 2082;
                v260 = v199;
                v261 = 2114;
                v262 = v200;
                _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting next child timer, handler cancelled or failed", buf, 0x48u);
              }

              goto LABEL_203;
            }

            if ((logging_disabled & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v88 = gconnectionLogObj;
              if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
              {
                v118 = nw_endpoint_handler_get_id_string(v114);
                v119 = nw_endpoint_handler_dry_run_string(v114);
                v120 = nw_endpoint_handler_copy_endpoint(v114);
                v121 = nw_endpoint_get_logging_description(v120);
                v122 = nw_endpoint_handler_state_string(v114);
                v123 = nw_endpoint_handler_mode_string(v114);
                v124 = nw_endpoint_handler_copy_current_path(v114);
                *buf = 136447746;
                *&buf[4] = "nw_endpoint_resolver_start_next_child";
                *&buf[12] = 2082;
                *&buf[14] = v118;
                v253 = 2082;
                v254 = v119;
                v255 = 2082;
                v256 = v121;
                v257 = 2082;
                v258 = v122;
                v259 = 2082;
                v260 = v123;
                v261 = 2114;
                v262 = v124;
                _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting next child timer, handler cancelled or failed", buf, 0x48u);
              }

              goto LABEL_203;
            }

LABEL_204:

            goto LABEL_129;
          }

          if (nw_endpoint_handler_get_mode(v114) != 1)
          {
            v125 = nw_endpoint_handler_get_minimize_logging(v114);
            v126 = nw_endpoint_handler_get_logging_disabled(v114);
            if (v125)
            {
              if (v126)
              {
                goto LABEL_204;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v88 = gconnectionLogObj;
              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
              {
                v205 = nw_endpoint_handler_get_id_string(v114);
                v206 = nw_endpoint_handler_dry_run_string(v114);
                v207 = nw_endpoint_handler_copy_endpoint(v114);
                v208 = nw_endpoint_get_logging_description(v207);
                v209 = nw_endpoint_handler_state_string(v114);
                v210 = nw_endpoint_handler_mode_string(v114);
                v211 = nw_endpoint_handler_copy_current_path(v114);
                *buf = 136447746;
                *&buf[4] = "nw_endpoint_resolver_start_next_child";
                *&buf[12] = 2082;
                *&buf[14] = v205;
                v253 = 2082;
                v254 = v206;
                v255 = 2082;
                v256 = v208;
                v257 = 2082;
                v258 = v209;
                v259 = 2082;
                v260 = v210;
                v261 = 2114;
                v262 = v211;
                _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting next child timer, no longer resolver mode", buf, 0x48u);
              }

              goto LABEL_203;
            }

            if ((v126 & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v88 = gconnectionLogObj;
              if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
              {
                v127 = nw_endpoint_handler_get_id_string(v114);
                v128 = nw_endpoint_handler_dry_run_string(v114);
                v129 = nw_endpoint_handler_copy_endpoint(v114);
                v130 = nw_endpoint_get_logging_description(v129);
                v131 = nw_endpoint_handler_state_string(v114);
                v132 = nw_endpoint_handler_mode_string(v114);
                v133 = nw_endpoint_handler_copy_current_path(v114);
                *buf = 136447746;
                *&buf[4] = "nw_endpoint_resolver_start_next_child";
                *&buf[12] = 2082;
                *&buf[14] = v127;
                v253 = 2082;
                v254 = v128;
                v255 = 2082;
                v256 = v130;
                v257 = 2082;
                v258 = v131;
                v259 = 2082;
                v260 = v132;
                v261 = 2114;
                v262 = v133;
                _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting next child timer, no longer resolver mode", buf, 0x48u);
              }

              goto LABEL_203;
            }

            goto LABEL_204;
          }

          if (*(v242 + 4))
          {
            goto LABEL_204;
          }

          if (*(v242 + 24))
          {
            deltaa = 2000000000;
          }

          else
          {
            deltaa = nw_endpoint_handler_get_child_timeout_nanos(v237);
          }

          v134 = nw_endpoint_handler_get_minimize_logging(v114);
          v135 = nw_endpoint_handler_get_logging_disabled(v114);
          if (v134)
          {
            v136 = v242;
            if (v135)
            {
LABEL_158:
              v145 = nw_endpoint_handler_copy_context(v114);
              v243[0] = MEMORY[0x1E69E9820];
              v243[1] = 3221225472;
              v243[2] = ___ZL37nw_endpoint_resolver_start_next_childP30NWConcrete_nw_endpoint_handler_block_invoke;
              v243[3] = &unk_1E6A3D868;
              v244 = v114;
              *(v136 + 7) = nw_queue_context_create_source(v145, 2, 3, 0, v243, 0);

              v146 = *(v136 + 7);
              if (v146)
              {
                v147 = dispatch_time(0x8000000000000000, deltaa);
                nw_queue_set_timer_values(v146, v147, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                nw_queue_activate_source(*(v242 + 7), v148);
LABEL_202:
                v88 = v244;
                goto LABEL_203;
              }

              v149 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_resolver_start_next_child";
              v150 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              v251 = 0;
              if (__nwlog_fault(v150, type, &v251))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v151 = __nwlog_obj();
                  v152 = type[0];
                  if (os_log_type_enabled(v151, type[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_endpoint_resolver_start_next_child";
                    _os_log_impl(&dword_181A37000, v151, v152, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
                  }
                }

                else
                {
                  if (v251 == 1)
                  {
                    v157 = __nw_create_backtrace_string();
                    v158 = __nwlog_obj();
                    v159 = type[0];
                    v160 = os_log_type_enabled(v158, type[0]);
                    if (v157)
                    {
                      if (v160)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_endpoint_resolver_start_next_child";
                        *&buf[12] = 2082;
                        *&buf[14] = v157;
                        _os_log_impl(&dword_181A37000, v158, v159, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v157);
                    }

                    else
                    {
                      if (v160)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_endpoint_resolver_start_next_child";
                        _os_log_impl(&dword_181A37000, v158, v159, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
                      }
                    }

                    goto LABEL_200;
                  }

                  v151 = __nwlog_obj();
                  v164 = type[0];
                  if (os_log_type_enabled(v151, type[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_endpoint_resolver_start_next_child";
                    _os_log_impl(&dword_181A37000, v151, v164, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_200:
              if (v150)
              {
                free(v150);
              }

              goto LABEL_202;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v216 = gconnectionLogObj;
            if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
            {
              v217 = nw_endpoint_handler_get_id_string(v114);
              v218 = nw_endpoint_handler_dry_run_string(v114);
              v219 = nw_endpoint_handler_copy_endpoint(v114);
              v220 = nw_endpoint_get_logging_description(v219);
              v221 = nw_endpoint_handler_state_string(v114);
              v222 = nw_endpoint_handler_mode_string(v114);
              v223 = nw_endpoint_handler_copy_current_path(v114);
              *buf = 136448002;
              *&buf[4] = "nw_endpoint_resolver_start_next_child";
              *&buf[12] = 2082;
              *&buf[14] = v217;
              v253 = 2082;
              v254 = v218;
              v255 = 2082;
              v256 = v220;
              v257 = 2082;
              v258 = v221;
              v259 = 2082;
              v260 = v222;
              v261 = 2114;
              v262 = v223;
              v263 = 2048;
              v264 = deltaa / 0xF4240;
              _os_log_impl(&dword_181A37000, v216, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting next child endpoint in %llums", buf, 0x52u);
            }

            v137 = v216;
          }

          else
          {
            v136 = v242;
            if (v135)
            {
              goto LABEL_158;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v137 = gconnectionLogObj;
            if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
            {
              v138 = nw_endpoint_handler_get_id_string(v114);
              v139 = nw_endpoint_handler_dry_run_string(v114);
              v140 = nw_endpoint_handler_copy_endpoint(v114);
              v141 = nw_endpoint_get_logging_description(v140);
              v142 = nw_endpoint_handler_state_string(v114);
              v143 = nw_endpoint_handler_mode_string(v114);
              v144 = nw_endpoint_handler_copy_current_path(v114);
              *buf = 136448002;
              *&buf[4] = "nw_endpoint_resolver_start_next_child";
              *&buf[12] = 2082;
              *&buf[14] = v138;
              v253 = 2082;
              v254 = v139;
              v255 = 2082;
              v256 = v141;
              v257 = 2082;
              v258 = v142;
              v259 = 2082;
              v260 = v143;
              v261 = 2114;
              v262 = v144;
              v263 = 2048;
              v264 = deltaa / 0xF4240;
              _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting next child endpoint in %llums", buf, 0x52u);
            }
          }

          v136 = v242;
          goto LABEL_158;
        }

        v88 = nw_endpoint_handler_copy_current_path(v74);
        *type = 0;
        *buf = 0;
        *&buf[8] = 0;
        if (!nw_path_get_vpn_config_uuid(v88, buf, type, 1, 1))
        {
LABEL_132:

          v86 = v237;
          v74 = delta;
          goto LABEL_133;
        }

        v251 = 0;
        *type = 0;
        v248 = 0;
        v250 = 0;
        v249 = 0;
        if (nw_endpoint_fillout_v4v6_address(endpoint, type))
        {
          if (nw_path_voluntary_agent_matches_address(v88, type))
          {
            if (v251 == 1)
            {
              if (!nw_endpoint_handler_trigger_agents(v74, 1))
              {
LABEL_203:

                goto LABEL_204;
              }

              v89 = nw_endpoint_handler_get_minimize_logging(v74);
              v90 = nw_endpoint_handler_get_logging_disabled(v74);
              if (v89)
              {
                if (v90)
                {
                  goto LABEL_103;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v225 = gconnectionLogObj;
                if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
                {
                  logb = nw_endpoint_handler_get_id_string(delta);
                  v226 = nw_endpoint_handler_dry_run_string(delta);
                  v227 = nw_endpoint_handler_copy_endpoint(delta);
                  v228 = nw_endpoint_get_logging_description(v227);
                  v229 = nw_endpoint_handler_state_string(delta);
                  v230 = nw_endpoint_handler_mode_string(delta);
                  v231 = nw_endpoint_handler_copy_current_path(delta);
                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_resolver_start_next_child";
                  *&buf[12] = 2082;
                  *&buf[14] = logb;
                  v253 = 2082;
                  v254 = v226;
                  v255 = 2082;
                  v256 = v228;
                  v257 = 2082;
                  v258 = v229;
                  v259 = 2082;
                  v260 = v230;
                  v261 = 2114;
                  v262 = v231;
                  _os_log_impl(&dword_181A37000, v225, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child flow requires agent trigger before attempting to connect", buf, 0x48u);
                }

                v91 = v225;
              }

              else
              {
                if (v90)
                {
LABEL_103:
                  nw_endpoint_handler_reset_mode(v74, 0);
                  goto LABEL_203;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v91 = gconnectionLogObj;
                if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                {
                  v92 = nw_endpoint_handler_get_id_string(v74);
                  v93 = nw_endpoint_handler_dry_run_string(v74);
                  log = v91;
                  v94 = nw_endpoint_handler_copy_endpoint(v74);
                  v95 = nw_endpoint_get_logging_description(v94);
                  v96 = nw_endpoint_handler_state_string(v74);
                  v97 = nw_endpoint_handler_mode_string(v74);
                  v98 = nw_endpoint_handler_copy_current_path(v74);
                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_resolver_start_next_child";
                  *&buf[12] = 2082;
                  *&buf[14] = v92;
                  v253 = 2082;
                  v254 = v93;
                  v255 = 2082;
                  v256 = v95;
                  v257 = 2082;
                  v258 = v96;
                  v259 = 2082;
                  v260 = v97;
                  v261 = 2114;
                  v262 = v98;
                  _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child flow requires agent trigger before attempting to connect", buf, 0x48u);

                  v91 = log;
                }
              }

              v74 = delta;
              goto LABEL_103;
            }

            nw_endpoint_resolver_setup_trigger_agent_timer(v74, 1);
          }

          goto LABEL_132;
        }

        v201 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_resolver_start_next_child";
        v202 = _os_log_send_and_compose_impl();

        v246 = OS_LOG_TYPE_ERROR;
        v245 = 0;
        if (__nwlog_fault(v202, &v246, &v245))
        {
          if (v246 == OS_LOG_TYPE_FAULT)
          {
            v203 = __nwlog_obj();
            v204 = v246;
            if (os_log_type_enabled(v203, v246))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_resolver_start_next_child";
              _os_log_impl(&dword_181A37000, v203, v204, "%{public}s called with null success", buf, 0xCu);
            }
          }

          else
          {
            if (v245 == 1)
            {
              v212 = __nw_create_backtrace_string();
              v213 = __nwlog_obj();
              v214 = v246;
              v215 = os_log_type_enabled(v213, v246);
              if (v212)
              {
                if (v215)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_endpoint_resolver_start_next_child";
                  *&buf[12] = 2082;
                  *&buf[14] = v212;
                  _os_log_impl(&dword_181A37000, v213, v214, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v212);
              }

              else
              {
                if (v215)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_endpoint_resolver_start_next_child";
                  _os_log_impl(&dword_181A37000, v213, v214, "%{public}s called with null success, no backtrace", buf, 0xCu);
                }
              }

              goto LABEL_261;
            }

            v203 = __nwlog_obj();
            v224 = v246;
            if (os_log_type_enabled(v203, v246))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_resolver_start_next_child";
              _os_log_impl(&dword_181A37000, v203, v224, "%{public}s called with null success, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_261:
        if (v202)
        {
          free(v202);
        }

        goto LABEL_203;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v187 = gconnectionLogObj;
      if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
      {
        v188 = nw_endpoint_handler_get_id_string(v74);
        v189 = nw_endpoint_handler_dry_run_string(v74);
        loga = nw_endpoint_handler_copy_endpoint(delta);
        v190 = nw_endpoint_get_logging_description(loga);
        v191 = nw_endpoint_handler_state_string(delta);
        v192 = nw_endpoint_handler_mode_string(delta);
        v193 = nw_endpoint_handler_copy_current_path(delta);
        *buf = 136448002;
        *&buf[4] = "nw_endpoint_resolver_start_next_child";
        *&buf[12] = 2082;
        *&buf[14] = v188;
        v253 = 2082;
        v254 = v189;
        v255 = 2082;
        v256 = v190;
        v257 = 2082;
        v258 = v191;
        v259 = 2082;
        v260 = v192;
        v261 = 2114;
        v262 = v193;
        v263 = 2082;
        v264 = nw_endpoint_get_logging_description(endpoint);
        _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting child endpoint %{public}s", buf, 0x52u);
      }

      v78 = v187;
    }

    else
    {
      v76 = v74;
      v77 = *(v74 + 284);

      if ((v77 & 0x40) != 0)
      {
        goto LABEL_86;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v78 = gconnectionLogObj;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = nw_endpoint_handler_get_id_string(v76);
        v80 = nw_endpoint_handler_dry_run_string(v76);
        v81 = nw_endpoint_handler_copy_endpoint(v76);
        v82 = nw_endpoint_get_logging_description(v81);
        v83 = nw_endpoint_handler_state_string(v76);
        v84 = nw_endpoint_handler_mode_string(v76);
        v85 = nw_endpoint_handler_copy_current_path(v76);
        *buf = 136448002;
        *&buf[4] = "nw_endpoint_resolver_start_next_child";
        *&buf[12] = 2082;
        *&buf[14] = v79;
        v253 = 2082;
        v254 = v80;
        v255 = 2082;
        v256 = v82;
        v257 = 2082;
        v258 = v83;
        v259 = 2082;
        v260 = v84;
        v261 = 2114;
        v262 = v85;
        v263 = 2082;
        v264 = nw_endpoint_get_logging_description(endpoint);
        _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting child endpoint %{public}s", buf, 0x52u);
      }
    }

    v74 = delta;
    goto LABEL_86;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v21 = "unknown-mode";
    }

    else
    {
      v21 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_resolver_start_next_child";
    *&buf[12] = 2082;
    *&buf[14] = v21;
    v253 = 2082;
    v254 = "resolver";
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_130:
}

void nw_association_update_paths(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_association_update_paths";
    v14 = _os_log_send_and_compose_impl();

    v37 = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v14, &v37, &v36))
    {
      goto LABEL_45;
    }

    if (v37 == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = v37;
      if (os_log_type_enabled(v15, v37))
      {
        *buf = 136446210;
        v39 = "nw_association_update_paths";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null association", buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v20 = v37;
      v21 = os_log_type_enabled(v15, v37);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v39 = "nw_association_update_paths";
          v40 = 2082;
          v41 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_45:
        if (!v14)
        {
          goto LABEL_11;
        }

LABEL_46:
        free(v14);
        goto LABEL_11;
      }

      if (v21)
      {
        *buf = 136446210;
        v39 = "nw_association_update_paths";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null association, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v25 = v37;
      if (os_log_type_enabled(v15, v37))
      {
        *buf = 136446210;
        v39 = "nw_association_update_paths";
        _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if (v4)
  {
    v6 = nw_path_parameters_copy_context(*(v3 + 2));
    nw_context_assert_queue(v6);
    if (*(v3 + 4))
    {
      v7 = *(v3 + 7);
      if (v7)
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = ___ZL27nw_association_update_pathsP25NWConcrete_nw_associationPU21objcproto10OS_nw_path8NSObject_block_invoke;
        v32[3] = &unk_1E6A3CDD0;
        v33 = v3;
        v34 = v5;
        v35 = v6;
        nw_hash_table_apply(v7, v32);
      }
    }

    v8 = nw_path_copy_without_parameters(v5);
    v9 = *(v3 + 4);
    *(v3 + 4) = v8;

    v10 = *(v3 + 5);
    if (v10)
    {
      v11 = *(v3 + 18);
      v12 = v11 != 0;
      if (v11)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = ___ZL27nw_association_update_pathsP25NWConcrete_nw_associationPU21objcproto10OS_nw_path8NSObject_block_invoke_46;
        v30[3] = &unk_1E6A3CDF8;
        v31 = v5;
        nw_hash_table_apply(v10, v30);

        v10 = *(v3 + 5);
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = ___ZL27nw_association_update_pathsP25NWConcrete_nw_associationPU21objcproto10OS_nw_path8NSObject_block_invoke_2;
      v27[3] = &unk_1E6A3CE20;
      v29 = v12;
      v28 = v5;
      nw_hash_table_apply(v10, v27);
    }

    goto LABEL_11;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v39 = "nw_association_update_paths";
  v14 = _os_log_send_and_compose_impl();

  v37 = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (!__nwlog_fault(v14, &v37, &v36))
  {
    goto LABEL_45;
  }

  if (v37 == OS_LOG_TYPE_FAULT)
  {
    v15 = __nwlog_obj();
    v18 = v37;
    if (os_log_type_enabled(v15, v37))
    {
      *buf = 136446210;
      v39 = "nw_association_update_paths";
      _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null path", buf, 0xCu);
    }

    goto LABEL_44;
  }

  if (v36 != 1)
  {
    v15 = __nwlog_obj();
    v26 = v37;
    if (os_log_type_enabled(v15, v37))
    {
      *buf = 136446210;
      v39 = "nw_association_update_paths";
      _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_44;
  }

  v22 = __nw_create_backtrace_string();
  v15 = __nwlog_obj();
  v23 = v37;
  v24 = os_log_type_enabled(v15, v37);
  if (!v22)
  {
    if (v24)
    {
      *buf = 136446210;
      v39 = "nw_association_update_paths";
      _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null path, no backtrace", buf, 0xCu);
    }

    goto LABEL_44;
  }

  if (v24)
  {
    *buf = 136446466;
    v39 = "nw_association_update_paths";
    v40 = 2082;
    v41 = v22;
    _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v22);
  if (v14)
  {
    goto LABEL_46;
  }

LABEL_11:
}

uint64_t ___ZL27nw_association_update_pathsP25NWConcrete_nw_associationPU21objcproto10OS_nw_path8NSObject_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  if (*(a1 + 40) != 1 || (*(extra + 8) & 1) == 0)
  {
    v6 = _Block_copy(*extra);
    v6[2](v6, v4, *(a1 + 32));
  }

  return 1;
}

void nw_endpoint_handler_received_path_update(void *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_endpoint_handler_received_path_update";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v10, &type, &v31))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v34 = "nw_endpoint_handler_received_path_update";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v34 = "nw_endpoint_handler_received_path_update";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_48:
        if (!v10)
        {
          goto LABEL_8;
        }

LABEL_49:
        free(v10);
        goto LABEL_8;
      }

      if (v24)
      {
        *buf = 136446210;
        v34 = "nw_endpoint_handler_received_path_update";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v34 = "nw_endpoint_handler_received_path_update";
        _os_log_impl(&dword_181A37000, v11, v28, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  if (v4)
  {
    if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v3) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v3);
        v17 = nw_endpoint_handler_dry_run_string(v3);
        v30 = nw_endpoint_handler_copy_endpoint(v3);
        logging_description = nw_endpoint_get_logging_description(v30);
        v19 = nw_endpoint_handler_state_string(v3);
        v20 = nw_endpoint_handler_mode_string(v3);
        v21 = nw_endpoint_handler_copy_current_path(v3);
        *buf = 136448002;
        v34 = "nw_endpoint_handler_received_path_update";
        v35 = 2082;
        v36 = id_string;
        v37 = 2082;
        v38 = v17;
        v39 = 2082;
        v40 = logging_description;
        v41 = 2082;
        v42 = v19;
        v43 = 2082;
        v44 = v20;
        v45 = 2114;
        v46 = v21;
        v47 = 2112;
        v48 = v5;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received path update: %@", buf, 0x52u);
      }
    }

    v6 = v5;
    v7 = _nw_path_changed_from_previous(v6);

    if (v7)
    {
      *(v3 + 284) = *(v3 + 284) & 0xF7 | (8 * nw_endpoint_handler_get_alternate_path_state(v3, 0, 0, v6));
    }

    os_unfair_lock_lock(&v3->lock);
    v8 = v3->current_path == v6;
    objc_storeStrong(&v3->current_path, a2);
    os_unfair_lock_unlock(&v3->lock);
    if (!v8)
    {
      nw_endpoint_handler_path_change(v3);
    }

    goto LABEL_8;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_endpoint_handler_received_path_update";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v10, &type, &v31))
  {
    goto LABEL_48;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v34 = "nw_endpoint_handler_received_path_update";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path", buf, 0xCu);
    }

    goto LABEL_47;
  }

  if (v31 != 1)
  {
    v11 = __nwlog_obj();
    v29 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v34 = "nw_endpoint_handler_received_path_update";
      _os_log_impl(&dword_181A37000, v11, v29, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_47;
  }

  v25 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v26 = type;
  v27 = os_log_type_enabled(v11, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446210;
      v34 = "nw_endpoint_handler_received_path_update";
      _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null path, no backtrace", buf, 0xCu);
    }

    goto LABEL_47;
  }

  if (v27)
  {
    *buf = 136446466;
    v34 = "nw_endpoint_handler_received_path_update";
    v35 = 2082;
    v36 = v25;
    _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v25);
  if (v10)
  {
    goto LABEL_49;
  }

LABEL_8:
}

char *_nw_path_changed_from_previous(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 12) & 1);
  }

  return result;
}

char *nw_path_changed_from_previous(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_changed_from_previous(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_changed_from_previous";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_changed_from_previous";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_path_changed_from_previous";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_changed_from_previous";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_changed_from_previous";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

uint64_t nw_endpoint_handler_should_reset_for_fallback(NWConcrete_nw_endpoint_handler *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1->parent_handler || (nw_endpoint_handler_has_fallback_children(v1) & 1) != 0 || (*(v2 + 284) & 0x10) != 0 || v2->state != 2 || (mode = v2->mode, (mode | 4) == 4) || (*(v2 + 284) & 1) != 0 || mode == 2 && (mode_handler = v2->mode_handler) != 0 && (nw_endpoint_flow_should_ignore_path_result(mode_handler) & 1) != 0)
  {
    should_fallback = 0;
  }

  else
  {
    should_fallback = nw_path_should_fallback(v2->current_path, 0);
  }

  return should_fallback;
}

NWConcrete_nw_path_evaluator *nw_path_flow_registration_copy_parent_evaluator(NWConcrete_nw_path_flow_registration *a1)
{
  v1 = a1;
  v2 = v1;
  parent_evaluator = v1->parent_evaluator;
  if (parent_evaluator)
  {
    v4 = parent_evaluator;
  }

  else
  {
    subflow_registrations = v1->subflow_registrations;
    if (subflow_registrations)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__71486;
      v12 = __Block_byref_object_dispose__71487;
      v13 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL47nw_path_flow_registration_copy_parent_evaluatorP36NWConcrete_nw_path_flow_registration_block_invoke;
      aBlock[3] = &unk_1E6A39B60;
      aBlock[4] = &v8;
      _nw_array_apply(subflow_registrations, aBlock);
      v4 = v9[5];
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_181BA9CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}