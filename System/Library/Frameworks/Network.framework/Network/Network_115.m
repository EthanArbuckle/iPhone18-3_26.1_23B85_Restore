void _nw_parameters_set_prevents_system_http_proxy_authentication_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x80000) == 0)
      {
        *(v5 + 140) = v9 | 0x80000;
      }
    }

    else if ((v9 & 0x80000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFF7FFFF;
    }
  }
}

void _nw_parameters_set_next_hop_required_interface_type_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if ((v5 & 0x8000000000000000) == 0 || (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], (v5 & 0x8000000000000000) == 0))
  {
    swift_beginAccess();
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        *(v5 + 228) = 3;
        goto LABEL_17;
      }

      if (a2 == 4)
      {
        *(v5 + 228) = 4;
        goto LABEL_17;
      }
    }

    else
    {
      if (a2 == 1)
      {
        *(v5 + 228) = 1;
        goto LABEL_17;
      }

      if (a2 == 2)
      {
        *(v5 + 228) = 2;
        goto LABEL_17;
      }
    }

    *(v5 + 228) = 0;
    goto LABEL_17;
  }

  sub_18220E960();
  swift_willThrowTypedImpl();

  if (qword_1EA836648 != -1)
  {
    swift_once();
  }

  v9 = sub_182AD2698();
  __swift_project_value_buffer(v9, qword_1EA843148);
  v6 = sub_182AD2678();
  v10 = sub_182AD38B8();
  if (os_log_type_enabled(v6, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

LABEL_17:
}

void _nw_parameters_set_next_hop_required_interface_subtype_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if ((v5 & 0x8000000000000000) == 0 || (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], (v5 & 0x8000000000000000) == 0))
  {
    swift_beginAccess();
    if (a2 > 4000)
    {
      if (a2 == 4001)
      {
        *(v5 + 229) = 3;
        goto LABEL_17;
      }

      if (a2 == 5001)
      {
        *(v5 + 229) = 4;
        goto LABEL_17;
      }
    }

    else
    {
      if (a2 == 1001)
      {
        *(v5 + 229) = 1;
        goto LABEL_17;
      }

      if (a2 == 1002)
      {
        *(v5 + 229) = 2;
        goto LABEL_17;
      }
    }

    *(v5 + 229) = 0;
    goto LABEL_17;
  }

  sub_18220E960();
  swift_willThrowTypedImpl();

  if (qword_1EA836648 != -1)
  {
    swift_once();
  }

  v9 = sub_182AD2698();
  __swift_project_value_buffer(v9, qword_1EA843148);
  v6 = sub_182AD2678();
  v10 = sub_182AD38B8();
  if (os_log_type_enabled(v6, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

LABEL_17:
}

void _nw_parameters_set_allow_socket_access_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 230);
    if (a2)
    {
      if ((*(v5 + 230) & 4) == 0)
      {
        *(v5 + 230) = v9 | 4;
      }
    }

    else if ((*(v5 + 230) & 4) != 0)
    {
      *(v5 + 230) = v9 & 0xFB;
    }
  }
}

void _nw_parameters_set_desperate_ivan_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x400) == 0)
      {
        *(v5 + 136) = v9 | 0x400;
      }
    }

    else if ((v9 & 0x400) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFBFF;
    }
  }
}

void _nw_parameters_set_discretionary_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 1) == 0)
      {
        *(v5 + 236) = v9 | 1;
      }
    }

    else if (v9)
    {
      *(v5 + 236) = v9 & 0xFFFE;
    }
  }
}

void _nw_parameters_set_custom_protocols_only_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x80) == 0)
      {
        *(v5 + 136) = v9 | 0x80;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFF7F;
    }
  }
}

void _nw_parameters_set_receive_any_interface_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x40) == 0)
      {
        *(v5 + 136) = v9 | 0x40;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFBF;
    }
  }
}

void _nw_parameters_set_stricter_path_scoping_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x800000) == 0)
      {
        *(v5 + 136) = v9 | 0x800000;
      }
    }

    else if ((v9 & 0x800000) != 0)
    {
      *(v5 + 136) = v9 & 0xFF7FFFFF;
    }
  }
}

void _nw_parameters_set_prohibit_parallel_connection_attempts_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x4000000) == 0)
      {
        *(v5 + 136) = v9 | 0x4000000;
      }
    }

    else if ((v9 & 0x4000000) != 0)
    {
      *(v5 + 136) = v9 & 0xFBFFFFFF;
    }
  }
}

void _nw_parameters_set_ecn_mode_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = 2 * (a2 != 2);
    if (a2 == 1)
    {
      v9 = 1;
    }

    *(v5 + 130) = v9;
  }
}

void _nw_parameters_set_companion_link_upgrade_preference_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = 2 * (a2 == 2);
    if (a2 == 1)
    {
      v9 = 1;
    }

    *(v5 + 227) = v9;
  }
}

void _nw_parameters_set_migration_controller_session_uuid_0(char *a1, const unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , (*&a1[v4] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    is_null = uuid_is_null(a2);
    v10 = 0uLL;
    if (is_null != 1)
    {
      v10 = *a2;
    }

    v15 = v10;
    v16 = is_null == 1;
    sub_182269AC0(&v15);
    swift_endAccess();
  }
}

void sub_18220C2E8(char *a1, const void *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 240);
    if (!v9)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v9 = swift_allocObject();
      sub_18226B448(v9 + 16);
      *(v5 + 240) = v9;
    }

    v10 = *(v9 + 160);
    *(v9 + 160) = a2;
    _Block_copy(a2);
    _Block_copy(a2);

    swift_endAccess();
    _Block_release(v10);
    _Block_release(a2);
  }
}

void sub_18220C4F4(char *a1, void (*a2)(uint64_t))
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a2(v5 + 16);
    swift_endAccess();
  }
}

uint64_t sub_18220C6BC(int a1)
{
  if (a1 == 101)
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 100)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 2)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_18220C704(char *a1, const void *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v3 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  memcpy(v9, a2, sizeof(v9));
  memcpy(v8, (v3 + 16), sizeof(v8));

  sub_181F481DC(__dst, v7);
  v5 = _s7Network10ParametersV2eeoiySbAC_ACtFZ_0(v9, v8);

  sub_181F48214(__dst);
  return v5 & 1;
}

uint64_t sub_18220C7D4(char *a1, _OWORD *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    v18 = a2[15];
    v19 = a2[17];
    v67 = a2[16];
    v68 = v19;
    v20 = a2[17];
    v69 = a2[18];
    v21 = a2[11];
    v22 = a2[13];
    v63 = a2[12];
    v64 = v22;
    v23 = a2[13];
    v24 = a2[15];
    v65 = a2[14];
    v66 = v24;
    v25 = a2[9];
    v59 = a2[8];
    v60 = v25;
    v26 = a2[11];
    v28 = a2[8];
    v27 = a2[9];
    v61 = a2[10];
    v62 = v26;
    v53 = v18;
    v54 = v67;
    v29 = a2[18];
    v55 = v20;
    v56 = v29;
    v49 = v21;
    v50 = v63;
    v51 = v23;
    v52 = v65;
    v47 = v27;
    v48 = v61;
    v43 = *&__dst[256];
    v44 = *&__dst[272];
    v45 = *&__dst[288];
    v46 = v28;
    v39 = *&__dst[192];
    v40 = *&__dst[208];
    v41 = *&__dst[224];
    v42 = *&__dst[240];
    v35 = *&__dst[128];
    v36 = *&__dst[144];
    v37 = *&__dst[160];
    v38 = *&__dst[176];
    v33 = 1;

    sub_181F481DC(__dst, v34);
    sub_181A41E20(&__dst[128], v34);
    sub_181A41E20(&v59, v34);
    v17 = &v33;
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v3 + 16), sizeof(__dst));
    v5 = a2[15];
    v6 = a2[17];
    v67 = a2[16];
    v68 = v6;
    v7 = a2[17];
    v69 = a2[18];
    v8 = a2[11];
    v9 = a2[13];
    v63 = a2[12];
    v64 = v9;
    v10 = a2[13];
    v11 = a2[15];
    v65 = a2[14];
    v66 = v11;
    v12 = a2[9];
    v59 = a2[8];
    v60 = v12;
    v13 = a2[11];
    v15 = a2[8];
    v14 = a2[9];
    v61 = a2[10];
    v62 = v13;
    v53 = v5;
    v54 = v67;
    v16 = a2[18];
    v55 = v7;
    v56 = v16;
    v49 = v8;
    v50 = v63;
    v51 = v10;
    v52 = v65;
    v47 = v14;
    v48 = v61;
    v43 = *&__dst[256];
    v44 = *&__dst[272];
    v45 = *&__dst[288];
    v46 = v15;
    v39 = *&__dst[192];
    v40 = *&__dst[208];
    v41 = *&__dst[224];
    v42 = *&__dst[240];
    v35 = *&__dst[128];
    v36 = *&__dst[144];
    v37 = *&__dst[160];
    v38 = *&__dst[176];
    v32 = 1;

    sub_181F481DC(__dst, v34);
    sub_181A41E20(&__dst[128], v34);
    sub_181A41E20(&v59, v34);
    v17 = &v32;
  }

  v30 = sub_181B02888(&v35, v17);
  v58[8] = v43;
  v58[9] = v44;
  v58[10] = v45;
  v58[4] = v39;
  v58[5] = v40;
  v58[6] = v41;
  v58[7] = v42;
  v58[0] = v35;
  v58[1] = v36;
  v58[2] = v37;
  v58[3] = v38;
  sub_181A41E7C(v58);
  v34[7] = v53;
  v34[8] = v54;
  v34[9] = v55;
  v34[10] = v56;
  v34[4] = v50;
  v34[5] = v51;
  v34[6] = v52;
  v34[0] = v46;
  v34[1] = v47;
  v34[2] = v48;
  v34[3] = v49;
  sub_181A41E7C(v34);

  sub_181F48214(__dst);
  return v30 & 1;
}

uint64_t sub_18220CA98(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v3 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  if (__dst[28] && (v5 = *(__dst[28] + 160)) != 0)
  {

    sub_181F481DC(__dst, v8);
    v6 = (*(v5 + 16))(v5, a2);

    sub_181F48214(__dst);
    return v6;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_18220CB74(char *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, v18), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843148);
    v14 = sub_182AD2678();
    v15 = sub_182AD38B8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_181A37000, v14, v15, "Cannot mutate parameters", v16, 2u);
      MEMORY[0x1865DF520](v16, -1, -1);
    }

    v11 = 0;
  }

  else
  {
    swift_beginAccess();
    v9 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v10 = a2;
    swift_beginAccess();
    memcpy(v18, &a2[v9], 0x17AuLL);
    memcpy(v17, &a2[v9], sizeof(v17));

    sub_181A3DF5C(v18, __dst);
    v11 = sub_181E8447C(v5 + 16);
    memcpy(__dst, v17, 0x17AuLL);
    sub_181A3DFB8(__dst);
    swift_endAccess();
    swift_endAccess();
  }

  return v11 & 1;
}

void sub_18220CDBC(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v18 = a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v4)
    {

      goto LABEL_17;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 240);
    if (!v4)
    {
LABEL_17:

      return;
    }
  }

  v5 = *(v4 + 48);

  if (!v5)
  {
    return;
  }

  v6 = v5[4];
  v7 = v5[3] + v6;
  if (v5[2] < v7)
  {
    v7 = v5[2];
  }

  v20 = v5;
  v21 = v6;
  v22 = v7;

  while (v6 != v22)
  {
    v9 = v20;
LABEL_10:
    v10 = v21;
    v6 = ++v21;
    v11 = v9[v10 + 5];
    v12 = type metadata accessor for __NWInterface();
    v13 = objc_allocWithZone(v12);
    v14 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

    v15 = swift_slowAlloc();
    *&v13[v14] = v15;
    *&v13[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v13[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v11;
    *v15 = 0;
    v19.receiver = v13;
    v19.super_class = v12;

    v16 = objc_msgSendSuper2(&v19, sel_init);
    LOBYTE(v13) = (*(a2 + 16))(a2, v16);

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v17 = sub_181AC81FC(v8);
  v9 = v20;
  if (v17)
  {
    goto LABEL_10;
  }

LABEL_13:
}

void sub_18220CFB0(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v10 = a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v4)
    {

      goto LABEL_3;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 240);
    if (!v4)
    {
LABEL_3:

      return;
    }
  }

  v5 = *(v4 + 24);

  if (!v5)
  {
    return;
  }

  v6 = v5[4];
  v7 = v5[3] + v6;
  if (v5[2] < v7)
  {
    v7 = v5[2];
  }

  v11 = v5[4];
  v12 = v7;

  v9 = v5;
  while (v6 != v12)
  {
LABEL_9:
    v11 = v6 + 1;
    v8 = (*(a2 + 16))(a2, *(v9 + v6++ + 40));
    if ((v8 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (sub_181AC81FC(v8))
  {
    v9 = v5;
    v6 = v11;
    goto LABEL_9;
  }

LABEL_17:
}

uint64_t sub_18220D110(char *a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    while (2)
    {
      v5 = &unk_1EEF975E0 + v4++;
      v6 = v5[32];
      v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
      v8 = a1;
      if ((v7 & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v9 = memcpy(__dst, (v7 + 16), 0x188uLL);
        if (__dst[28])
        {
          v10 = *(__dst[28] + 24);
          if (v10)
          {
            v11 = v10[4];
            v12 = v10[3] + v11;
            if (v10[2] < v12)
            {
              v12 = v10[2];
            }

            v24 = *(__dst[28] + 24);
            v25 = v11;
            v26 = v12;
            v13 = v10;
            while (1)
            {
              if (v11 == v26)
              {
                v9 = sub_181AC81FC(v9);
                v13 = v24;
                if ((v9 & 1) == 0)
                {
                  v21 = 0;
                  goto LABEL_27;
                }

                v11 = v25;
              }

              v14 = v13 + v11++;
              v25 = v11;
              if (v6 == v14[40])
              {
                v21 = 1;
                goto LABEL_27;
              }
            }
          }
        }

LABEL_22:

        break;
      }

      v15 = memcpy(__dst, ((v7 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
      if (!__dst[28])
      {
        goto LABEL_22;
      }

      v16 = *(__dst[28] + 24);
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = v16[4];
      v18 = v16[3] + v17;
      if (v16[2] < v18)
      {
        v18 = v16[2];
      }

      v24 = *(__dst[28] + 24);
      v25 = v17;
      v26 = v18;
      v19 = v16;
      while (v17 != v26)
      {
LABEL_18:
        v20 = v19 + v17++;
        v25 = v17;
        if (v6 == v20[40])
        {
          v21 = 1;
          goto LABEL_27;
        }
      }

      v15 = sub_181AC81FC(v15);
      v19 = v24;
      if (v15)
      {
        v17 = v25;
        goto LABEL_18;
      }

      v21 = 0;
LABEL_27:

      sub_181F481DC(__dst, v23);

      result = sub_181F48214(__dst);
      if (v21)
      {
        if (v4 == 5)
        {
          return result;
        }

        continue;
      }

      break;
    }

    result = (*(a2 + 16))(a2, v6);
  }

  while (v4 != 5 && (result & 1) != 0);
  return result;
}

void sub_18220D344(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v10 = a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v4)
    {

      goto LABEL_3;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 240);
    if (!v4)
    {
LABEL_3:

      return;
    }
  }

  v5 = *(v4 + 32);

  if (!v5)
  {
    return;
  }

  v6 = v5[4];
  v7 = v5[3] + v6;
  if (v5[2] < v7)
  {
    v7 = v5[2];
  }

  v11 = v5[4];
  v12 = v7;

  v9 = v5;
  while (v6 != v12)
  {
LABEL_9:
    v11 = v6 + 1;
    v8 = (*(a2 + 16))(a2, dword_182AFEA40[*(v9 + v6++ + 40)]);
    if ((v8 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (sub_181AC81FC(v8))
  {
    v9 = v5;
    v6 = v11;
    goto LABEL_9;
  }

LABEL_17:
}

uint64_t sub_18220D4BC(char *a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    while (2)
    {
      v5 = &unk_1EEF97630 + v4++;
      v6 = dword_182AFEA40[v5[32]];
      v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
      v8 = a1;
      if ((v7 & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v9 = memcpy(__dst, (v7 + 16), 0x188uLL);
        if (__dst[28])
        {
          v10 = *(__dst[28] + 32);
          if (v10)
          {
            v11 = v10[4];
            v12 = v10[3] + v11;
            if (v10[2] < v12)
            {
              v12 = v10[2];
            }

            v24 = *(__dst[28] + 32);
            v25 = v11;
            v26 = v12;
            v13 = v10;
            while (1)
            {
              if (v11 == v26)
              {
                v9 = sub_181AC81FC(v9);
                v13 = v24;
                if ((v9 & 1) == 0)
                {
                  v21 = 0;
                  goto LABEL_27;
                }

                v11 = v25;
              }

              v14 = v13 + v11++;
              v25 = v11;
              if (dword_182AFEA40[v14[40]] == v6)
              {
                v21 = 1;
                goto LABEL_27;
              }
            }
          }
        }

LABEL_22:

        break;
      }

      v15 = memcpy(__dst, ((v7 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
      if (!__dst[28])
      {
        goto LABEL_22;
      }

      v16 = *(__dst[28] + 32);
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = v16[4];
      v18 = v16[3] + v17;
      if (v16[2] < v18)
      {
        v18 = v16[2];
      }

      v24 = *(__dst[28] + 32);
      v25 = v17;
      v26 = v18;
      v19 = v16;
      while (v17 != v26)
      {
LABEL_18:
        v20 = v19 + v17++;
        v25 = v17;
        if (dword_182AFEA40[v20[40]] == v6)
        {
          v21 = 1;
          goto LABEL_27;
        }
      }

      v15 = sub_181AC81FC(v15);
      v19 = v24;
      if (v15)
      {
        v17 = v25;
        goto LABEL_18;
      }

      v21 = 0;
LABEL_27:

      sub_181F481DC(__dst, v23);

      result = sub_181F48214(__dst);
      if (v21)
      {
        if (v4 == 5)
        {
          return result;
        }

        continue;
      }

      break;
    }

    result = (*(a2 + 16))(a2, v6);
  }

  while (v4 != 5 && (result & 1) != 0);
  return result;
}

void sub_18220D704(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v10 = a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v4)
    {

      goto LABEL_3;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 240);
    if (!v4)
    {
LABEL_3:

      return;
    }
  }

  v5 = *(v4 + 40);

  if (!v5)
  {
    return;
  }

  v6 = v5[4];
  v7 = v5[3] + v6;
  if (v5[2] < v7)
  {
    v7 = v5[2];
  }

  v11 = v5[4];
  v12 = v7;

  v9 = v5;
  while (v6 != v12)
  {
LABEL_9:
    v11 = v6 + 1;
    v8 = (*(a2 + 16))(a2, dword_182AFEA40[*(v9 + v6++ + 40)]);
    if ((v8 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (sub_181AC81FC(v8))
  {
    v9 = v5;
    v6 = v11;
    goto LABEL_9;
  }

LABEL_17:
}

unint64_t sub_18220D87C()
{
  result = qword_1EA836E68;
  if (!qword_1EA836E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E68);
  }

  return result;
}

unint64_t sub_18220D8E0()
{
  result = qword_1EA83B260;
  if (!qword_1EA83B260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA83B260);
  }

  return result;
}

void sub_18220D92C(char *a1, uint64_t a2)
{
  v2 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v16 = a1;
  if (v2 < 0)
  {
    v3 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v3)
    {

      goto LABEL_3;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v2 + 240);
    if (!v3)
    {
LABEL_3:

      return;
    }
  }

  v4 = *(v3 + 56);

  if (v4)
  {
    v5 = v4[4];
    v6 = v4[3] + v5;
    if (v4[2] < v6)
    {
      v6 = v4[2];
    }

    v18 = v4;
    v19 = v4[4];
    v20 = v6;

    do
    {
      if (v5 == v20)
      {
        if ((sub_181AC81FC(v7) & 1) == 0)
        {
          break;
        }

        v4 = v18;
        v5 = v19;
      }

      v11 = &v4[4 * v5++];
      v19 = v5;
      v12 = v11[5];
      v13 = v11[6];
      v14 = v11[7];
      v15 = v11[8];
      v8 = sub_182AD3048();
      sub_181AA5C1C(v12, v13);
      sub_181ADC1E0(v14, v15);

      v9 = sub_182AD3048();

      v10 = (*(a2 + 16))(a2, v8 + 32, v9 + 32);
    }

    while ((v10 & 1) != 0);
  }
}

void sub_18220DD88(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v5 = a1;
  if (v4 < 0)
  {
    v8 = v4 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v8 + 16), 0x188uLL);
    memcpy(v23, (v8 + 16), sizeof(v23));

    v9 = sub_181F481DC(__dst, v22);
    v7 = a3(v9);

    sub_181F48214(__dst);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    swift_beginAccess();

    v7 = a3(v6);
    swift_endAccess();

    if (!v7)
    {
      return;
    }
  }

  v10 = v7[4];
  v11 = v7[3] + v10;
  if (v7[2] < v11)
  {
    v11 = v7[2];
  }

  __dst[0] = v7;
  __dst[1] = v10;
  __dst[2] = v11;

  do
  {
    if (v10 == __dst[2])
    {
      if ((sub_181AC81FC(v12) & 1) == 0)
      {
        break;
      }

      v10 = __dst[1];
      v7 = __dst[0];
    }

    v16 = &v7[4 * v10++];
    __dst[1] = v10;
    v17 = v16[5];
    v18 = v16[6];
    v19 = v16[7];
    v20 = v16[8];
    v13 = sub_182AD3048();
    sub_181AA5C1C(v17, v18);
    sub_181ADC1E0(v19, v20);

    v14 = sub_182AD3048();

    v15 = (*(a2 + 16))(a2, v13 + 32, v14 + 32);
  }

  while ((v15 & 1) != 0);
}

void sub_18220E218(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v11 = a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v4)
    {

      goto LABEL_3;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 240);
    if (!v4)
    {
LABEL_3:

      return;
    }
  }

  v5 = *(v4 + 64);

  if (v5)
  {
    v6 = v5[4];
    if (v5[2] >= v5[3] + v6)
    {
      v7 = v5[3] + v6;
    }

    else
    {
      v7 = v5[2];
    }

    v13 = v5;
    v14 = v6;
    v15 = v7;

    v9 = v5;
    if (v6 == v7)
    {
LABEL_10:
      if (sub_181AC81FC(v8))
      {
        v9 = v13;
        v6 = v14;
        goto LABEL_12;
      }
    }

    else
    {
LABEL_12:
      while (1)
      {
        v10 = v6 + 1;
        v14 = v6 + 1;
        v12[0] = *&v9[2 * v6 + 5];
        v12[1] = v12[0];
        v8 = (*(a2 + 16))(a2, v12);
        if (!v8)
        {
          break;
        }

        ++v6;
        if (v10 == v15)
        {
          goto LABEL_10;
        }
      }
    }
  }
}

void sub_18220E3D4(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v11 = a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v4)
    {

      goto LABEL_3;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 240);
    if (!v4)
    {
LABEL_3:

      return;
    }
  }

  v5 = *(v4 + 80);

  if (v5)
  {
    v6 = v5[4];
    if (v5[2] >= v5[3] + v6)
    {
      v7 = v5[3] + v6;
    }

    else
    {
      v7 = v5[2];
    }

    v13 = v5;
    v14 = v6;
    v15 = v7;

    v9 = v5;
    if (v6 == v7)
    {
LABEL_10:
      if (sub_181AC81FC(v8))
      {
        v9 = v13;
        v6 = v14;
        goto LABEL_12;
      }
    }

    else
    {
LABEL_12:
      while (1)
      {
        v10 = v6 + 1;
        v14 = v6 + 1;
        v12[0] = *&v9[2 * v6 + 5];
        v12[1] = v12[0];
        v8 = (*(a2 + 16))(a2, v12);
        if (!v8)
        {
          break;
        }

        ++v6;
        if (v10 == v15)
        {
          goto LABEL_10;
        }
      }
    }
  }
}

void sub_18220E590(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  sub_1821F9F50();
  v5 = v4;

  if (v5)
  {
    v6 = v5[4];
    if (v5[2] >= v5[3] + v6)
    {
      v7 = v5[3] + v6;
    }

    else
    {
      v7 = v5[2];
    }

    v12 = v5;
    v13 = v6;
    v14 = v7;

    v9 = v5;
    if (v6 == v7)
    {
LABEL_6:
      if (sub_181AC81FC(v8))
      {
        v9 = v12;
        v6 = v13;
        goto LABEL_8;
      }
    }

    else
    {
LABEL_8:
      while (1)
      {
        v10 = v6 + 1;
        v13 = v6 + 1;
        v11[0] = *&v9[2 * v6 + 5];
        v11[1] = v11[0];
        v8 = (*(a2 + 16))(a2, v11);
        if (!v8)
        {
          break;
        }

        ++v6;
        if (v10 == v14)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

void sub_18220E6B8(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v11 = a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v4)
    {

      goto LABEL_3;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 240);
    if (!v4)
    {
LABEL_3:

      return;
    }
  }

  v5 = *(v4 + 112);

  if (v5)
  {
    v6 = v5[4];
    if (v5[2] >= v5[3] + v6)
    {
      v7 = v5[3] + v6;
    }

    else
    {
      v7 = v5[2];
    }

    v13 = v5;
    v14 = v6;
    v15 = v7;

    v9 = v5;
    if (v6 == v7)
    {
LABEL_10:
      if (sub_181AC81FC(v8))
      {
        v9 = v13;
        v6 = v14;
        goto LABEL_12;
      }
    }

    else
    {
LABEL_12:
      while (1)
      {
        v10 = v6 + 1;
        v14 = v6 + 1;
        v12[0] = *&v9[2 * v6 + 5];
        v12[1] = v12[0];
        v8 = (*(a2 + 16))(a2, v12);
        if (!v8)
        {
          break;
        }

        ++v6;
        if (v10 == v15)
        {
          goto LABEL_10;
        }
      }
    }
  }
}

uint64_t sub_18220E880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18220E8DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_18220E960()
{
  result = qword_1EA83B268;
  if (!qword_1EA83B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B268);
  }

  return result;
}

unint64_t sub_18220E9C8()
{
  result = qword_1EA83B270;
  if (!qword_1EA83B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B270);
  }

  return result;
}

void sub_18220EA24(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[19] = v2[3] >> 2;
  v2[20] = a2;
  v4 = v2[15];
  v3 = v2[16];
  v5 = qword_1EA837250;

  if (v5 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v18[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BE02E0);
    v6 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v6);

    MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BE0300);
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);

    v9 = sub_182AD2678();
    v10 = sub_182AD38A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18[0] = v12;
      *v11 = 136315650;
      v13 = sub_182AD3BF8();
      v15 = sub_181C64FFC(v13, v14, v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_181C64FFC(v4, v3, v18);

      *(v11 + 14) = v16;
      *(v11 + 22) = 2080;
      v17 = sub_181C64FFC(0, 0xE000000000000000, v18);

      *(v11 + 24) = v17;
      _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v12, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

BOOL sub_18220ED70()
{
  v4 = *(v0 + 24);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = v5 + v8;
  if (__CFADD__(v5, v8))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v0 + 40);
  if (v3 >= v9)
  {
    return v3 < v9;
  }

  *(v0 + 40) = v9;
  *(v0 + 72) = 0;
  if (*(v0 + 112))
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_15:
    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843418);
    v14 = swift_allocObject();
    *(v14 + 16) = "prepareMaxData()";
    *(v14 + 24) = 16;
    *(v14 + 32) = 2;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C724;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = 1564427099;
    *(v16 + 24) = 0xE400000000000000;
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    *(v17 + 24) = v2;

    v18 = sub_182AD2678();
    v19 = sub_182AD38A8();
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C71C;
    *(v20 + 24) = v15;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C718;
    *(v21 + 24) = v20;
    v31 = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C720;
    *(v23 + 24) = v16;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_181F8C718;
    *(v24 + 24) = v23;
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_181F8C720;
    *(v25 + 24) = v17;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C718;
    *(v26 + 24) = v25;
    v27 = v18;
    if (os_log_type_enabled(v18, v19))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      v38 = 0;
      *v28 = 770;
      v30 = v29;
      v39 = v28 + 2;
      v40 = sub_181F8C728;
      v41 = v32;
      sub_181F73AE0(&v40, &v39, &v38, &v37);

      v40 = sub_181F8C728;
      v41 = v33;
      sub_181F73AE0(&v40, &v39, &v38, &v37);

      v40 = sub_181F8C714;
      v41 = v31;
      sub_181F73AE0(&v40, &v39, &v38, &v37);

      v40 = sub_181F8C728;
      v41 = v22;
      sub_181F73AE0(&v40, &v39, &v38, &v37);

      v40 = sub_181F8C728;
      v41 = v34;
      sub_181F73AE0(&v40, &v39, &v38, &v37);

      v40 = sub_181F8C714;
      v41 = v24;
      sub_181F73AE0(&v40, &v39, &v38, &v37);

      v40 = sub_181F8C728;
      v41 = v35;
      sub_181F73AE0(&v40, &v39, &v38, &v37);

      v40 = sub_181F8C728;
      v41 = v36;
      sub_181F73AE0(&v40, &v39, &v38, &v37);

      v40 = sub_181F8C714;
      v41 = v26;
      sub_181F73AE0(&v40, &v39, &v38, &v37);

      _os_log_impl(&dword_181A37000, v27, v19, "%s %s %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v30, -1, -1);
      MEMORY[0x1865DF520](v28, -1, -1);
    }

    else
    {
    }

    return v3 < v9;
  }

  if ((*(v0 + 104) & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (qword_1EA837250 != -1)
  {
LABEL_13:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    sub_182AD3BA8();

    v11 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v11);

    MEMORY[0x1865D9CA0](0x207665727020, 0xE600000000000000);
    v39 = v3;
    v12 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v12);

    v1 = 0xD00000000000001ALL;
    v2 = 0x8000000182BE0450;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  return v3 < v9;
}

BOOL sub_18220F598(uint64_t a1)
{
  v5 = v2[3];
  v6 = v2[10];
  v7 = v5 >= v6;
  v8 = v5 - v6;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = a1 + v8;
  if (__CFADD__(a1, v8))
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v4 = v2[5];
  if (v4 >= v9)
  {
    return v4 < v9;
  }

  v2[5] = v9;
  v2[9] = 0;
  v3 = v2[15];
  v1 = v2[16];
  v10 = qword_1EA837250;

  if (v10 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    sub_182AD3BA8();

    v12 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v12);

    MEMORY[0x1865D9CA0](0x203A76657270202CLL, 0xE800000000000000);
    v38 = v4;
    v13 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v13);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1EA843418);
    v15 = swift_allocObject();
    *(v15 + 16) = "prepareMaxData(streamCurrentInOrderOffset:)";
    *(v15 + 24) = 43;
    *(v15 + 32) = 2;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C258;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    *(v17 + 24) = v1;
    v18 = swift_allocObject();
    *(v18 + 16) = 0xD00000000000001DLL;
    *(v18 + 24) = 0x8000000182BE0410;

    v19 = sub_182AD2678();
    v20 = sub_182AD38A8();
    v30 = swift_allocObject();
    *(v30 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C264;
    *(v21 + 24) = v16;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C27C;
    *(v22 + 24) = v21;
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C26C;
    *(v23 + 24) = v17;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_181F8C718;
    *(v24 + 24) = v23;
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_181F8C26C;
    *(v25 + 24) = v18;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C718;
    *(v26 + 24) = v25;
    v27 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v28 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = 0;
      v29 = v36;
      *v28 = 770;
      v38 = v28 + 2;
      v39 = sub_181F8C274;
      v40 = v30;
      sub_181F73AE0(&v39, &v38, &v37, &v36);

      v39 = sub_181F8C728;
      v40 = v31;
      sub_181F73AE0(&v39, &v38, &v37, &v36);

      v39 = sub_181F8C284;
      v40 = v22;
      sub_181F73AE0(&v39, &v38, &v37, &v36);

      v39 = sub_181F8C728;
      v40 = v32;
      sub_181F73AE0(&v39, &v38, &v37, &v36);

      v39 = sub_181F8C728;
      v40 = v33;
      sub_181F73AE0(&v39, &v38, &v37, &v36);

      v39 = sub_181F8C714;
      v40 = v24;
      sub_181F73AE0(&v39, &v38, &v37, &v36);

      v39 = sub_181F8C728;
      v40 = v34;
      sub_181F73AE0(&v39, &v38, &v37, &v36);

      v39 = sub_181F8C728;
      v40 = v35;
      sub_181F73AE0(&v39, &v38, &v37, &v36);

      v39 = sub_181F8C714;
      v40 = v26;
      sub_181F73AE0(&v39, &v38, &v37, &v36);

      _os_log_impl(&dword_181A37000, v19, v27, "%s %s %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v29, -1, -1);
      MEMORY[0x1865DF520](v28, -1, -1);

      return v4 < v9;
    }
  }

  return v4 < v9;
}

uint64_t sub_18220FDCC(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v4 = v3[15];
    v5 = v3[16];
    v6 = qword_1EA837250;

    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {
      goto LABEL_14;
    }

    if (qword_1EA837248 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

  if (*(a1 + 1097) == 1)
  {
    v23 = v3[15];
    v22 = v3[16];
    v24 = qword_1EA837250;

    if (v24 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {
      goto LABEL_14;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v42 = sub_182AD2698();
    __swift_project_value_buffer(v42, qword_1EA843418);
    v43 = swift_allocObject();
    *(v43 + 16) = "remoteReceiveWindow(path:connectionRemoteReceiveWindow:streamBlocked:)";
    *(v43 + 24) = 70;
    *(v43 + 32) = 2;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_181F8C724;
    *(v44 + 24) = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = v23;
    *(v45 + 24) = v22;
    v46 = swift_allocObject();
    *(v46 + 16) = 0xD000000000000017;
    *(v46 + 24) = 0x8000000182BDB0F0;

    v47 = sub_182AD2678();
    v48 = sub_182AD38A8();
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_181F8C71C;
    *(v49 + 24) = v44;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C718;
    *(v16 + 24) = v49;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_181F8C720;
    *(v50 + 24) = v45;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C718;
    *(v18 + 24) = v50;
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_181F8C720;
    *(v51 + 24) = v46;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C718;
    *(v20 + 24) = v51;
    v54 = v48;
    v21 = v47;
    if (os_log_type_enabled(v47, v48))
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v26 = v3[6];
  v27 = v3[4];
  v28 = v27 >= v26;
  v29 = v27 - v26;
  if (!v28)
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x66666F20646E6573, 0xEC00000020746573);
    v62 = v3[6];
    v30 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v30);

    MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BE04C0);
    v62 = v3[4];
    v31 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v31);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v32 = sub_182AD2698();
    __swift_project_value_buffer(v32, qword_1EA843418);

    v33 = sub_182AD2678();
    v34 = sub_182AD38C8();

    if (!os_log_type_enabled(v33, v34))
    {

      goto LABEL_32;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v63 = v36;
    *v35 = 136315650;
    v37 = sub_182AD3BF8();
    v39 = sub_181C64FFC(v37, v38, &v63);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v63);
    *(v35 + 22) = 2080;
    v40 = sub_181C64FFC(0, 0xE000000000000000, &v63);

    *(v35 + 24) = v40;
    _os_log_impl(&dword_181A37000, v33, v34, "%s %s %s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v36, -1, -1);
    v41 = v35;
LABEL_21:
    MEMORY[0x1865DF520](v41, -1, -1);
LABEL_32:

    return 0;
  }

  if (v29 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v29;
  }

  if (qword_1EA837210 != -1)
  {
    swift_once();
  }

  if (qword_1EA8433E0 < 0)
  {
    __break(1u);
LABEL_39:
    swift_once();
LABEL_7:
    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843418);
    v8 = swift_allocObject();
    *(v8 + 16) = "remoteReceiveWindow(path:connectionRemoteReceiveWindow:streamBlocked:)";
    *(v8 + 24) = 70;
    *(v8 + 32) = 2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_181F8C724;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v5;
    v11 = swift_allocObject();
    strcpy((v11 + 16), "stream blocked");
    *(v11 + 31) = -18;

    v12 = sub_182AD2678();
    v13 = sub_182AD38A8();
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C71C;
    *(v15 + 24) = v9;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C718;
    *(v16 + 24) = v15;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C720;
    *(v17 + 24) = v10;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C718;
    *(v18 + 24) = v17;
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C720;
    *(v19 + 24) = v11;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C718;
    *(v20 + 24) = v19;
    v54 = v13;
    v21 = v12;
    if (os_log_type_enabled(v12, v13))
    {
LABEL_36:
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v60 = v53;
      v61 = 0;
      *v52 = 770;
      v62 = v52 + 2;
      v63 = sub_181F8C728;
      v64 = v14;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v63 = sub_181F8C728;
      v64 = v55;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v63 = sub_181F8C714;
      v64 = v16;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v63 = sub_181F8C728;
      v64 = v56;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v63 = sub_181F8C728;
      v64 = v57;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v63 = sub_181F8C714;
      v64 = v18;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v63 = sub_181F8C728;
      v64 = v58;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v63 = sub_181F8C728;
      v64 = v59;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v63 = sub_181F8C714;
      v64 = v20;
      sub_181F73AE0(&v63, &v62, &v61, &v60);

      v33 = v21;
      _os_log_impl(&dword_181A37000, v21, v54, "%s %s %s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v53, -1, -1);
      v41 = v52;
      goto LABEL_21;
    }

LABEL_37:

LABEL_14:

    return 0;
  }

  if (qword_1EA8433E0 >= v5)
  {
    return v5;
  }

  else
  {
    return qword_1EA8433E0;
  }
}

void sub_182210D38(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v4 = v2[15];
  v3 = v2[16];
  v5 = qword_1EA837250;

  if (v5 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    sub_182AD3BA8();

    v18[1] = 0x8000000182BE0320;
    v6 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v6);

    MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BE0340);
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);

    v9 = sub_182AD2678();
    v10 = sub_182AD38A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18[0] = v12;
      *v11 = 136315650;
      v13 = sub_182AD3BF8();
      v15 = sub_181C64FFC(v13, v14, v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_181C64FFC(v4, v3, v18);

      *(v11 + 14) = v16;
      *(v11 + 22) = 2080;
      v17 = sub_181C64FFC(0xD00000000000001CLL, 0x8000000182BE0320, v18);

      *(v11 + 24) = v17;
      _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v12, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

unint64_t sub_182211074(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = v2[15];
    v3 = v2[16];
    v5 = qword_1EA837250;

    if (v5 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);
    v7 = swift_allocObject();
    *(v7 + 16) = "remoteReceiveWindow(path:connectionBlocked:)";
    *(v7 + 24) = 44;
    *(v7 + 32) = 2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_181F8C724;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = 0xD000000000000012;
    *(v10 + 24) = 0x8000000182BE0700;

    v11 = sub_182AD2678();
    v12 = sub_182AD38A8();
    v13 = swift_allocObject();
    *(v13 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_181F8C71C;
    *(v14 + 24) = v8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C718;
    *(v15 + 24) = v14;
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C720;
    *(v16 + 24) = v9;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C718;
    *(v17 + 24) = v16;
    v55 = swift_allocObject();
    *(v55 + 16) = 32;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C720;
    *(v18 + 24) = v10;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C718;
    *(v19 + 24) = v18;
    v51 = v12;
    v20 = v11;
    if (os_log_type_enabled(v11, v12))
    {
LABEL_28:
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v57 = v50;
      v58 = 0;
      *v49 = 770;
      v59 = v49 + 2;
      v60 = sub_181F8C728;
      v61 = v13;
      sub_181F73AE0(&v60, &v59, &v58, &v57);

      v60 = sub_181F8C728;
      v61 = v52;
      sub_181F73AE0(&v60, &v59, &v58, &v57);

      v60 = sub_181F8C714;
      v61 = v15;
      sub_181F73AE0(&v60, &v59, &v58, &v57);

      v60 = sub_181F8C728;
      v61 = v53;
      sub_181F73AE0(&v60, &v59, &v58, &v57);

      v60 = sub_181F8C728;
      v61 = v54;
      sub_181F73AE0(&v60, &v59, &v58, &v57);

      v60 = sub_181F8C714;
      v61 = v17;
      sub_181F73AE0(&v60, &v59, &v58, &v57);

      v60 = sub_181F8C728;
      v61 = v55;
      sub_181F73AE0(&v60, &v59, &v58, &v57);

      v60 = sub_181F8C728;
      v61 = v56;
      sub_181F73AE0(&v60, &v59, &v58, &v57);

      v60 = sub_181F8C714;
      v61 = v19;
      sub_181F73AE0(&v60, &v59, &v58, &v57);

      v30 = v20;
      _os_log_impl(&dword_181A37000, v20, v51, "%s %s %s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v50, -1, -1);
      v38 = v49;
LABEL_23:
      MEMORY[0x1865DF520](v38, -1, -1);

      return 0;
    }

LABEL_29:

LABEL_15:

    return 0;
  }

  if (*(a1 + 1097) == 1)
  {
    v22 = v2[15];
    v21 = v2[16];
    v23 = qword_1EA837250;

    if (v23 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v39 = sub_182AD2698();
    __swift_project_value_buffer(v39, qword_1EA843418);
    v40 = swift_allocObject();
    *(v40 + 16) = "remoteReceiveWindow(path:connectionBlocked:)";
    *(v40 + 24) = 44;
    *(v40 + 32) = 2;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_181F8C724;
    *(v41 + 24) = v40;
    v42 = swift_allocObject();
    *(v42 + 16) = v22;
    *(v42 + 24) = v21;
    v43 = swift_allocObject();
    *(v43 + 16) = 0xD000000000000017;
    *(v43 + 24) = 0x8000000182BDB0F0;

    v44 = sub_182AD2678();
    v45 = sub_182AD38A8();
    v13 = swift_allocObject();
    *(v13 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F8C71C;
    *(v46 + 24) = v41;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C718;
    *(v15 + 24) = v46;
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C720;
    *(v47 + 24) = v42;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C718;
    *(v17 + 24) = v47;
    v55 = swift_allocObject();
    *(v55 + 16) = 32;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C720;
    *(v48 + 24) = v43;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C718;
    *(v19 + 24) = v48;
    v51 = v45;
    v20 = v44;
    if (os_log_type_enabled(v44, v45))
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v25 = v2[6];
  v26 = v2[4];
  result = v26 - v25;
  if (v26 < v25)
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x66666F20646E6573, 0xEC00000020746573);
    v59 = v2[6];
    v27 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v27);

    MEMORY[0x1865D9CA0](0xD00000000000002ELL, 0x8000000182BE06D0);
    v59 = v2[4];
    v28 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v28);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v29 = sub_182AD2698();
    __swift_project_value_buffer(v29, qword_1EA843418);

    v30 = sub_182AD2678();
    v31 = sub_182AD38C8();

    if (!os_log_type_enabled(v30, v31))
    {

      return 0;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v60 = v33;
    *v32 = 136315650;
    v34 = sub_182AD3BF8();
    v36 = sub_181C64FFC(v34, v35, &v60);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v60);
    *(v32 + 22) = 2080;
    v37 = sub_181C64FFC(0, 0xE000000000000000, &v60);

    *(v32 + 24) = v37;
    _os_log_impl(&dword_181A37000, v30, v31, "%s %s %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v33, -1, -1);
    v38 = v32;
    goto LABEL_23;
  }

  return result;
}

double sub_182211F90()
{
  sub_182213328(v1);
  xmmword_1EA8433F0 = v3;
  unk_1EA843400 = v4;
  qword_1EA843410 = v5;
  xmmword_1EA8433B0 = v1[0];
  *&qword_1EA8433C0 = v1[1];
  result = *&v2;
  xmmword_1EA8433D0 = v1[2];
  *&qword_1EA8433E0 = v2;
  return result;
}

unint64_t sub_182211FE8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  result = v1 - v2;
  if (v1 < v2)
  {
    sub_182AD3BA8();

    v15[0] = 0xD00000000000001BLL;
    v15[1] = 0x8000000182BE03C0;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    MEMORY[0x1865D9CA0](540884512, 0xE400000000000000);
    v5 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v5);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);

    v7 = sub_182AD2678();
    v8 = sub_182AD38C8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315650;
      v11 = sub_182AD3BF8();
      v13 = sub_181C64FFC(v11, v12, v15);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v15);
      *(v9 + 22) = 2080;
      v14 = sub_181C64FFC(0xD00000000000001BLL, 0x8000000182BE03C0, v15);

      *(v9 + 24) = v14;
      _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_18221227C(unint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 56);
  v4 = v3 >= a1;
  v5 = v3 - a1;
  if (!v4)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);
    v7 = sub_182AD2678();
    v8 = sub_182AD38C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315650;
      v11 = sub_182AD3BF8();
      v13 = sub_181C64FFC(v11, v12, &v14);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v14);
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_181C64FFC(0xD00000000000001BLL, 0x8000000182BE0380, &v14);
      _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    v5 = 0;
  }

  *(v2 + 56) = v5;
}

uint64_t sub_182212440()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18221249C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  if (qword_1EA837210 != -1)
  {
    v6 = result;
    v7 = a2;
    v8 = a3;
    swift_once();
    result = v6;
    a2 = v7;
    a3 = v8;
  }

  v4 = qword_1EA843410;
  if (qword_1EA843410 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = qword_1EA843408;
    if (((qword_1EA843408 | result) & 0x8000000000000000) == 0)
    {
      *(v3 + 64) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
      *(v3 + 16) = v4;
      *(v3 + 24) = v5;
      *(v3 + 96) = 0;
      *(v3 + 104) = result;
      *(v3 + 112) = 0;
      *(v3 + 120) = a2;
      *(v3 + 128) = a3;
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_182212558()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1822125B4(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = 0;
  *(v4 + 152) = 0u;
  *(v4 + 136) = 0u;
  if (qword_1EA837210 != -1)
  {
    v7 = result;
    v8 = a2;
    v9 = a4;
    v10 = a3;
    swift_once();
    result = v7;
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = xmmword_1EA8433F0;
  if ((xmmword_1EA8433F0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = qword_1EA8433E8;
    if ((qword_1EA8433E8 & 0x8000000000000000) == 0)
    {
      *(v4 + 64) = 0u;
      *(v4 + 80) = 0u;
      *(v4 + 32) = 0u;
      *(v4 + 48) = 0u;
      *(v4 + 16) = v5;
      *(v4 + 24) = v6;
      *(v4 + 96) = 0;
      *(v4 + 104) = result;
      *(v4 + 112) = a2 & 1;
      *(v4 + 120) = a3;
      *(v4 + 128) = a4;
      *(v4 + 152) = v6 >> 2;
      return v4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_182212690(NSObject *a1, unint64_t a2, unint64_t a3)
{
  v6 = v3;
  v10 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v36 = v10;
    swift_once();
    v10 = v36;
  }

  v11 = qword_1EA8387E8;
  if (is_mul_ok(v10, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v37 = v10;
  swift_once();
  v10 = v37;
LABEL_5:
  v12 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v4 = v10;
  swift_once();
  v10 = v4;
LABEL_7:
  if (!qword_1EA8431F0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v13 = v10 * v11 / v12 / qword_1EA8431F0;
  v14 = v6[17];
  if (v13 < v14)
  {
    sub_182AD3BA8();

    v70 = 0x206D6165727453;
    v71 = 0xE700000000000000;
    v16 = v6[15];
    v15 = v6[16];

    MEMORY[0x1865D9CA0](v16, v15);

    MEMORY[0x1865D9CA0](0x20656874206E6920, 0xEE00657275747566);
    a3 = 0x206D6165727453;
    a2 = 0xE700000000000000;
    if (qword_1EA837248 == -1)
    {
LABEL_10:
      v17 = sub_182AD2698();
      __swift_project_value_buffer(v17, qword_1EA843418);

      v18 = sub_182AD2678();
      v19 = sub_182AD38C8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v70 = v21;
        *v20 = 136315650;
        v22 = sub_182AD3BF8();
        v24 = sub_181C64FFC(v22, v23, &v70);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v70);
        *(v20 + 22) = 2080;
        v25 = sub_181C64FFC(a3, a2, &v70);

        *(v20 + 24) = v25;
        _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v21, -1, -1);
        MEMORY[0x1865DF520](v20, -1, -1);
      }

      else
      {
      }

      return 0;
    }

LABEL_38:
    swift_once();
    goto LABEL_10;
  }

  v26 = v6[18];
  v27 = __CFADD__(v26, a1);
  v28 = a1 + v26;
  if (v27)
  {
    __break(1u);
    goto LABEL_40;
  }

  v6[18] = v28;
  v27 = __CFADD__(a2, v14);
  v29 = a2 + v14;
  if (v27)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_24;
  }

  if (v13 < v29)
  {
    return 0;
  }

  v31 = v6[19];
  if (v31 >= v28)
  {
    goto LABEL_28;
  }

  v27 = __CFADD__(v31, v31 >> 1);
  v32 = v31 + (v31 >> 1);
  if (v27)
  {
    goto LABEL_41;
  }

  if (v32 >= v28)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    LOBYTE(v4) = 2;
  }

  v5 = v6[15];
  v11 = v6[16];
  a1 = qword_1EA837250;

  if (a1 != -1)
  {
    goto LABEL_42;
  }

LABEL_24:
  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x6574616D69747345, 0xEE00205044422064);
    v38 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v38);

    MEMORY[0x1865D9CA0](0x6572727563202C42, 0xEF2054545220746ELL);
    v69 = a2;
    v39 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v39);

    MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BE08C0);
    v40 = v6[18];
    if (v40 >> 61)
    {
      __break(1u);
    }

    else if (a2)
    {
      v69 = 8 * v40 / a2;
      v41 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v41);

      MEMORY[0x1865D9CA0](1936745037, 0xE400000000000000);
      v64 = v70;
      v66 = v71;
      if (qword_1EA837248 == -1)
      {
LABEL_46:
        v42 = sub_182AD2698();
        __swift_project_value_buffer(v42, qword_1EA843418);
        v43 = swift_allocObject();
        *(v43 + 16) = "computeReceiveHighWaterMarkIncrease(dataLength:rtt:mss:)";
        *(v43 + 24) = 56;
        *(v43 + 32) = 2;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_181F8C724;
        *(v44 + 24) = v43;
        v45 = swift_allocObject();
        *(v45 + 16) = v5;
        *(v45 + 24) = v11;
        v46 = swift_allocObject();
        *(v46 + 16) = v64;
        *(v46 + 24) = v66;

        oslog = sub_182AD2678();
        v62 = sub_182AD38A8();
        v57 = swift_allocObject();
        *(v57 + 16) = 32;
        v58 = swift_allocObject();
        *(v58 + 16) = 8;
        v47 = swift_allocObject();
        *(v47 + 16) = sub_181F8C71C;
        *(v47 + 24) = v44;
        v48 = swift_allocObject();
        *(v48 + 16) = sub_181F8C718;
        *(v48 + 24) = v47;
        v59 = swift_allocObject();
        *(v59 + 16) = 32;
        v60 = swift_allocObject();
        *(v60 + 16) = 8;
        v49 = swift_allocObject();
        *(v49 + 16) = sub_181F8C720;
        *(v49 + 24) = v45;
        v50 = swift_allocObject();
        *(v50 + 16) = sub_181F8C718;
        *(v50 + 24) = v49;
        v61 = swift_allocObject();
        *(v61 + 16) = 32;
        v63 = swift_allocObject();
        *(v63 + 16) = 8;
        v51 = swift_allocObject();
        *(v51 + 16) = sub_181F8C720;
        *(v51 + 24) = v46;
        v52 = swift_allocObject();
        *(v52 + 16) = sub_181F8C718;
        *(v52 + 24) = v51;
        v65 = v52;
        a1 = oslog;
        if (!os_log_type_enabled(oslog, v62))
        {
          goto LABEL_50;
        }

        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v67 = v54;
        v68 = 0;
        *v53 = 770;
        v55 = v54;
        v69 = (v53 + 2);
        v70 = sub_181F8C728;
        v71 = v57;
        sub_181F73AE0(&v70, &v69, &v68, &v67);

        v70 = sub_181F8C728;
        v71 = v58;
        sub_181F73AE0(&v70, &v69, &v68, &v67);

        v70 = sub_181F8C714;
        v71 = v48;
        sub_181F73AE0(&v70, &v69, &v68, &v67);

        v70 = sub_181F8C728;
        v71 = v59;
        sub_181F73AE0(&v70, &v69, &v68, &v67);

        v70 = sub_181F8C728;
        v71 = v60;
        sub_181F73AE0(&v70, &v69, &v68, &v67);

        v70 = sub_181F8C714;
        v71 = v50;
        sub_181F73AE0(&v70, &v69, &v68, &v67);

        v70 = sub_181F8C728;
        v71 = v61;
        sub_181F73AE0(&v70, &v69, &v68, &v67);

        v70 = sub_181F8C728;
        v71 = v63;
        sub_181F73AE0(&v70, &v69, &v68, &v67);

        v70 = sub_181F8C714;
        v71 = v65;
        sub_181F73AE0(&v70, &v69, &v68, &v67);

        _os_log_impl(&dword_181A37000, oslog, v62, "%s %s %s", v53, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v55, -1, -1);
        MEMORY[0x1865DF520](v53, -1, -1);

        goto LABEL_27;
      }

LABEL_53:
      swift_once();
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_53;
  }

  while (1)
  {

LABEL_27:
    v33 = v6[18];
    v34 = v6[3];
    if (v33 << v4 < v34)
    {
      break;
    }

    v6[19] = v33;
    if (a3)
    {
      v35 = ((v33 << v4) - v34) / a3;
      if (is_mul_ok(v35, a3))
      {
        result = v35 * a3;
        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_50:
  }

LABEL_28:
  result = 0;
LABEL_32:
  v6[17] = 0;
  v6[18] = 0;
  return result;
}

uint64_t sub_1822132CC()
{

  return swift_deallocClassInstance();
}

int64x2_t sub_182213328@<Q0>(uint64_t a1@<X8>)
{
  LOBYTE(v3) = sub_181F5F894();
  if (qword_1EA837258 != -1)
  {
    swift_once();
  }

  v4 = qword_1EA843438;
  if (*(qword_1EA843438 + 128) == 1)
  {
    if (v3)
    {
      v5 = 8;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = *(qword_1EA843438 + 120);
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v6 = byte_1EA843430;
  if (byte_1EA843430 != 1)
  {
    if (*(v4 + 144))
    {
      if (v3)
      {
        v3 = 0x400000;
      }

      else
      {
        v3 = 0x200000;
      }
    }

    else
    {
      v3 = *(v4 + 136);
    }

    goto LABEL_24;
  }

  if (__nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_50;
  }

  while (1)
  {
    if (*(v4 + 144))
    {
      if (v3)
      {
        v3 = 0x400000;
      }

      else
      {
        v3 = 0x200000;
      }
    }

    else
    {
      v3 = *(v4 + 136);
    }

    if (__nwlog_is_datapath_logging_enabled())
    {
      v354 = v6;
      v378 = v5;
      v390 = a1;
      v420 = 0;
      v421 = 0xE000000000000000;
      sub_182AD3BA8();

      v420 = 0xD00000000000001BLL;
      v421 = 0x8000000182BE0660;
      v28 = v3 + 0xFFFFF;
      v366 = v3;
      if (v3 >= 0)
      {
        v28 = v3;
      }

      v419 = v28 >> 20;
      v29 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v29);

      MEMORY[0x1865D9CA0](4345120, 0xE300000000000000);
      v30 = v420;
      v31 = v421;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v32 = sub_182AD2698();
      __swift_project_value_buffer(v32, qword_1EA843418);
      v33 = swift_allocObject();
      *(v33 + 16) = "init()";
      *(v33 + 24) = 6;
      *(v33 + 32) = 2;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_181F8C724;
      *(v34 + 24) = v33;
      v35 = swift_allocObject();
      *(v35 + 16) = 1564427099;
      *(v35 + 24) = 0xE400000000000000;
      v36 = swift_allocObject();
      *(v36 + 16) = v30;
      *(v36 + 24) = v31;

      oslogb = sub_182AD2678();
      v411 = sub_182AD38A8();
      v334 = swift_allocObject();
      *(v334 + 16) = 32;
      v321 = swift_allocObject();
      *(v321 + 16) = 8;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_181F8C71C;
      *(v37 + 24) = v34;
      v1 = swift_allocObject();
      *(v1 + 16) = sub_181F8C718;
      *(v1 + 24) = v37;
      log = swift_allocObject();
      LOBYTE(log[2].isa) = 32;
      v38 = swift_allocObject();
      *(v38 + 16) = 8;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_181F8C720;
      *(v39 + 24) = v35;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_181F8C718;
      *(v40 + 24) = v39;
      v41 = swift_allocObject();
      *(v41 + 16) = 32;
      v42 = swift_allocObject();
      *(v42 + 16) = 8;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_181F8C720;
      *(v43 + 24) = v36;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_181F8C718;
      *(v44 + 24) = v43;
      if (os_log_type_enabled(oslogb, v411))
      {
        v279 = v1;
        bufe = v40;
        v300 = v41;
        v45 = v38;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v417 = v47;
        v418 = 0;
        *v46 = 770;
        v419 = (v46 + 2);
        v420 = sub_181F8C728;
        v421 = v334;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v321;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v48 = v42;

        v420 = sub_181F8C714;
        v421 = v279;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v335 = v47;

        v420 = sub_181F8C728;
        v421 = log;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v45;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C714;
        v421 = bufe;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v1 = oslogb;
        v49 = v44;

        v420 = sub_181F8C728;
        v421 = v300;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v50 = v46;

        v420 = sub_181F8C728;
        v421 = v48;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v3 = v366;
        v6 = v354;

        v420 = sub_181F8C714;
        v421 = v49;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v5 = v378;
        a1 = v390;

        _os_log_impl(&dword_181A37000, oslogb, v411, "%s %s %s", v50, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v335, -1, -1);
        MEMORY[0x1865DF520](v50, -1, -1);
      }

      else
      {

        v5 = v378;
        a1 = v390;
        v3 = v366;
        v6 = v354;
      }
    }

    if (__nwlog_is_datapath_logging_enabled())
    {
      v355 = v6;
      v379 = v5;
      v391 = a1;
      v420 = 0;
      v421 = 0xE000000000000000;
      sub_182AD3BA8();

      v420 = 0xD000000000000018;
      v421 = 0x8000000182BE0640;
      v51 = v3 + 0xFFFFF;
      v367 = v3;
      if (v3 >= 0)
      {
        v51 = v3;
      }

      v419 = v51 >> 20;
      v52 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v52);

      MEMORY[0x1865D9CA0](4345120, 0xE300000000000000);
      v53 = v420;
      v54 = v421;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v55 = sub_182AD2698();
      __swift_project_value_buffer(v55, qword_1EA843418);
      v56 = swift_allocObject();
      *(v56 + 16) = "init()";
      *(v56 + 24) = 6;
      *(v56 + 32) = 2;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_181F8C724;
      *(v57 + 24) = v56;
      v58 = swift_allocObject();
      *(v58 + 16) = 1564427099;
      *(v58 + 24) = 0xE400000000000000;
      v59 = swift_allocObject();
      *(v59 + 16) = v53;
      *(v59 + 24) = v54;

      oslogc = sub_182AD2678();
      v412 = sub_182AD38A8();
      v336 = swift_allocObject();
      *(v336 + 16) = 32;
      v322 = swift_allocObject();
      *(v322 + 16) = 8;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_181F8C71C;
      *(v60 + 24) = v57;
      v1 = swift_allocObject();
      *(v1 + 16) = sub_181F8C718;
      *(v1 + 24) = v60;
      loga = swift_allocObject();
      LOBYTE(loga[2].isa) = 32;
      v61 = swift_allocObject();
      *(v61 + 16) = 8;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_181F8C720;
      *(v62 + 24) = v58;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_181F8C718;
      *(v63 + 24) = v62;
      v64 = swift_allocObject();
      *(v64 + 16) = 32;
      v65 = swift_allocObject();
      *(v65 + 16) = 8;
      v66 = swift_allocObject();
      *(v66 + 16) = sub_181F8C720;
      *(v66 + 24) = v59;
      v67 = swift_allocObject();
      *(v67 + 16) = sub_181F8C718;
      *(v67 + 24) = v66;
      if (os_log_type_enabled(oslogc, v412))
      {
        v280 = v1;
        v301 = v64;
        v68 = v61;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v417 = v70;
        v418 = 0;
        *v69 = 770;
        v419 = (v69 + 2);
        v420 = sub_181F8C728;
        v421 = v336;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v322;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C714;
        v421 = v280;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = loga;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v68;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C714;
        v421 = v63;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v337 = v70;
        v71 = v67;
        v1 = oslogc;

        v420 = sub_181F8C728;
        v421 = v301;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v72 = v69;

        v420 = sub_181F8C728;
        v421 = v65;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v3 = v367;
        v6 = v355;

        v420 = sub_181F8C714;
        v421 = v71;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v5 = v379;
        a1 = v391;

        _os_log_impl(&dword_181A37000, oslogc, v412, "%s %s %s", v72, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v337, -1, -1);
        MEMORY[0x1865DF520](v72, -1, -1);
      }

      else
      {

        v5 = v379;
        a1 = v391;
        v3 = v367;
        v6 = v355;
      }
    }

LABEL_24:
    v7 = v3 * v5;
    if ((v3 * v5) >> 64 != (v3 * v5) >> 63)
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v6)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v356 = v6;
        v368 = v3;
        v380 = v5;
        v392 = a1;
        v420 = 0;
        v421 = 0xE000000000000000;
        sub_182AD3BA8();

        v420 = 0xD00000000000001FLL;
        v421 = 0x8000000182BE0620;
        v73 = v7 + 0xFFFFF;
        v344 = v3 * v5;
        if (v7 >= 0)
        {
          v73 = v3 * v5;
        }

        v419 = v73 >> 20;
        v74 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v74);

        MEMORY[0x1865D9CA0](4345120, 0xE300000000000000);
        v75 = v420;
        v76 = v421;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v77 = sub_182AD2698();
        __swift_project_value_buffer(v77, qword_1EA843418);
        v78 = swift_allocObject();
        *(v78 + 16) = "init()";
        *(v78 + 24) = 6;
        *(v78 + 32) = 2;
        v79 = swift_allocObject();
        *(v79 + 16) = sub_181F8C724;
        *(v79 + 24) = v78;
        v80 = swift_allocObject();
        *(v80 + 16) = 1564427099;
        *(v80 + 24) = 0xE400000000000000;
        v81 = swift_allocObject();
        *(v81 + 16) = v75;
        *(v81 + 24) = v76;

        v413 = sub_182AD2678();
        oslogd = sub_182AD38A8();
        logb = swift_allocObject();
        LOBYTE(logb[2].isa) = 32;
        v302 = swift_allocObject();
        *(v302 + 16) = 8;
        v82 = swift_allocObject();
        *(v82 + 16) = sub_181F8C71C;
        *(v82 + 24) = v79;
        v83 = swift_allocObject();
        *(v83 + 16) = sub_181F8C718;
        *(v83 + 24) = v82;
        v323 = swift_allocObject();
        *(v323 + 16) = 32;
        v84 = swift_allocObject();
        *(v84 + 16) = 8;
        v85 = swift_allocObject();
        *(v85 + 16) = sub_181F8C720;
        *(v85 + 24) = v80;
        v86 = swift_allocObject();
        *(v86 + 16) = sub_181F8C718;
        *(v86 + 24) = v85;
        v1 = swift_allocObject();
        *(v1 + 16) = 32;
        v87 = swift_allocObject();
        *(v87 + 16) = 8;
        v88 = swift_allocObject();
        *(v88 + 16) = sub_181F8C720;
        *(v88 + 24) = v81;
        v89 = swift_allocObject();
        *(v89 + 16) = sub_181F8C718;
        *(v89 + 24) = v88;
        if (os_log_type_enabled(v413, oslogd))
        {
          v281 = v86;
          buff = v87;
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v417 = v91;
          v418 = 0;
          *v90 = 770;
          v419 = (v90 + 2);
          v420 = sub_181F8C728;
          v421 = logb;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C728;
          v421 = v302;
          sub_181F73AE0(&v420, &v419, &v418, &v417);
          v7 = v344;

          v420 = sub_181F8C714;
          v421 = v83;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C728;
          v421 = v323;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C728;
          v421 = v84;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C714;
          v421 = v281;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C728;
          v421 = v1;
          sub_181F73AE0(&v420, &v419, &v418, &v417);
          v324 = v91;
          v92 = v90;

          v420 = sub_181F8C728;
          v421 = buff;
          sub_181F73AE0(&v420, &v419, &v418, &v417);
          v3 = v368;
          v6 = v356;

          v420 = sub_181F8C714;
          v421 = v89;
          sub_181F73AE0(&v420, &v419, &v418, &v417);
          v5 = v380;
          a1 = v392;

          v1 = v413;
          _os_log_impl(&dword_181A37000, v413, oslogd, "%s %s %s", v92, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v324, -1, -1);
          MEMORY[0x1865DF520](v92, -1, -1);
        }

        else
        {

          v5 = v380;
          a1 = v392;
          v3 = v368;
          v6 = v356;
          v7 = v344;
        }
      }

      if (__nwlog_is_datapath_logging_enabled())
      {
        v357 = v6;
        v369 = v3;
        v381 = v5;
        v393 = a1;
        v420 = 0;
        v421 = 0xE000000000000000;
        sub_182AD3BA8();

        v420 = 0xD00000000000001CLL;
        v421 = 0x8000000182BE0600;
        v93 = v7 + 0xFFFFF;
        v345 = v7;
        if (v7 >= 0)
        {
          v93 = v7;
        }

        v419 = v93 >> 20;
        v94 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v94);

        MEMORY[0x1865D9CA0](4345120, 0xE300000000000000);
        v95 = v420;
        v96 = v421;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v97 = sub_182AD2698();
        __swift_project_value_buffer(v97, qword_1EA843418);
        v98 = swift_allocObject();
        *(v98 + 16) = "init()";
        *(v98 + 24) = 6;
        *(v98 + 32) = 2;
        v99 = swift_allocObject();
        *(v99 + 16) = sub_181F8C724;
        *(v99 + 24) = v98;
        v100 = swift_allocObject();
        *(v100 + 16) = 1564427099;
        *(v100 + 24) = 0xE400000000000000;
        v101 = swift_allocObject();
        *(v101 + 16) = v95;
        *(v101 + 24) = v96;

        v414 = sub_182AD2678();
        osloge = sub_182AD38A8();
        logc = swift_allocObject();
        LOBYTE(logc[2].isa) = 32;
        v303 = swift_allocObject();
        *(v303 + 16) = 8;
        v102 = swift_allocObject();
        *(v102 + 16) = sub_181F8C71C;
        *(v102 + 24) = v99;
        v103 = swift_allocObject();
        *(v103 + 16) = sub_181F8C718;
        *(v103 + 24) = v102;
        v325 = swift_allocObject();
        *(v325 + 16) = 32;
        v104 = swift_allocObject();
        *(v104 + 16) = 8;
        v105 = swift_allocObject();
        *(v105 + 16) = sub_181F8C720;
        *(v105 + 24) = v100;
        v106 = swift_allocObject();
        *(v106 + 16) = sub_181F8C718;
        *(v106 + 24) = v105;
        v1 = swift_allocObject();
        *(v1 + 16) = 32;
        v107 = swift_allocObject();
        *(v107 + 16) = 8;
        v108 = swift_allocObject();
        *(v108 + 16) = sub_181F8C720;
        *(v108 + 24) = v101;
        v109 = swift_allocObject();
        *(v109 + 16) = sub_181F8C718;
        *(v109 + 24) = v108;
        if (os_log_type_enabled(v414, osloge))
        {
          v282 = v106;
          bufg = v107;
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v417 = v111;
          v418 = 0;
          *v110 = 770;
          v419 = (v110 + 2);
          v420 = sub_181F8C728;
          v421 = logc;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C728;
          v421 = v303;
          sub_181F73AE0(&v420, &v419, &v418, &v417);
          v7 = v345;

          v420 = sub_181F8C714;
          v421 = v103;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C728;
          v421 = v325;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C728;
          v421 = v104;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C714;
          v421 = v282;
          sub_181F73AE0(&v420, &v419, &v418, &v417);

          v420 = sub_181F8C728;
          v421 = v1;
          sub_181F73AE0(&v420, &v419, &v418, &v417);
          v326 = v111;
          v112 = v110;

          v420 = sub_181F8C728;
          v421 = bufg;
          sub_181F73AE0(&v420, &v419, &v418, &v417);
          v3 = v369;
          v6 = v357;

          v420 = sub_181F8C714;
          v421 = v109;
          sub_181F73AE0(&v420, &v419, &v418, &v417);
          v5 = v381;
          a1 = v393;

          v1 = v414;
          _os_log_impl(&dword_181A37000, v414, osloge, "%s %s %s", v112, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v326, -1, -1);
          MEMORY[0x1865DF520](v112, -1, -1);
        }

        else
        {

          v5 = v381;
          a1 = v393;
          v3 = v369;
          v6 = v357;
          v7 = v345;
        }
      }
    }

    if (*(v4 + 160) != 1)
    {
      v1 = *(v4 + 152);
      if (!v6)
      {
        goto LABEL_34;
      }

LABEL_33:
      if (!__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_34;
      }

      goto LABEL_79;
    }

    if ((v5 - 0x40000000000) >= 0xFFFFF80000000000)
    {
      v1 = v5 << 21;
      if (!v6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_79:
    v346 = v7;
    v358 = v6;
    v370 = v3;
    v382 = v5;
    v394 = a1;
    v420 = 0;
    v421 = 0xE000000000000000;
    sub_182AD3BA8();

    v420 = 0xD000000000000012;
    v421 = 0x8000000182BE05E0;
    v338 = v1;
    v419 = v1;
    v113 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v113);

    MEMORY[0x1865D9CA0](0x69727265766F2820, 0xEC000000203A6564);
    if (*(v4 + 160))
    {
      v114 = 0x65736C6166;
    }

    else
    {
      v114 = 1702195828;
    }

    if (*(v4 + 160))
    {
      v115 = 0xE500000000000000;
    }

    else
    {
      v115 = 0xE400000000000000;
    }

    MEMORY[0x1865D9CA0](v114, v115);

    v116 = v420;
    v117 = v421;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v118 = sub_182AD2698();
    __swift_project_value_buffer(v118, qword_1EA843418);
    v119 = swift_allocObject();
    *(v119 + 16) = "init()";
    *(v119 + 24) = 6;
    *(v119 + 32) = 2;
    v120 = swift_allocObject();
    *(v120 + 16) = sub_181F8C724;
    *(v120 + 24) = v119;
    v121 = swift_allocObject();
    *(v121 + 16) = 1564427099;
    *(v121 + 24) = 0xE400000000000000;
    v122 = swift_allocObject();
    *(v122 + 16) = v116;
    *(v122 + 24) = v117;

    v415 = sub_182AD2678();
    oslogf = sub_182AD38A8();
    v304 = swift_allocObject();
    *(v304 + 16) = 32;
    buf = swift_allocObject();
    buf[16] = 8;
    v123 = swift_allocObject();
    *(v123 + 16) = sub_181F8C71C;
    *(v123 + 24) = v120;
    v124 = swift_allocObject();
    *(v124 + 16) = sub_181F8C718;
    *(v124 + 24) = v123;
    logd = swift_allocObject();
    LOBYTE(logd[2].isa) = 32;
    v125 = swift_allocObject();
    *(v125 + 16) = 8;
    v126 = swift_allocObject();
    *(v126 + 16) = sub_181F8C720;
    *(v126 + 24) = v121;
    v127 = swift_allocObject();
    *(v127 + 16) = sub_181F8C718;
    *(v127 + 24) = v126;
    v128 = swift_allocObject();
    *(v128 + 16) = 32;
    v129 = swift_allocObject();
    *(v129 + 16) = 8;
    v130 = swift_allocObject();
    *(v130 + 16) = sub_181F8C720;
    *(v130 + 24) = v122;
    v131 = swift_allocObject();
    *(v131 + 16) = sub_181F8C718;
    *(v131 + 24) = v130;
    if (os_log_type_enabled(v415, oslogf))
    {
      v272 = v128;
      v283 = v129;
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v417 = v133;
      v418 = 0;
      *v132 = 770;
      v419 = (v132 + 2);
      v420 = sub_181F8C728;
      v421 = v304;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v7 = v346;

      v420 = sub_181F8C728;
      v421 = buf;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v134 = v127;

      v420 = sub_181F8C714;
      v421 = v124;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C728;
      v421 = logd;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C728;
      v421 = v125;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v1 = v338;

      v420 = sub_181F8C714;
      v421 = v134;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      logj = v133;

      v420 = sub_181F8C728;
      v421 = v272;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v135 = v132;

      v420 = sub_181F8C728;
      v421 = v283;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v3 = v370;
      v6 = v358;

      v420 = sub_181F8C714;
      v421 = v131;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v5 = v382;
      a1 = v394;

      _os_log_impl(&dword_181A37000, v415, oslogf, "%s %s %s", v135, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](logj, -1, -1);
      MEMORY[0x1865DF520](v135, -1, -1);
    }

    else
    {

      v5 = v382;
      a1 = v394;
      v3 = v370;
      v6 = v358;
      v1 = v338;
      v7 = v346;
    }

LABEL_34:
    if (*(v4 + 96))
    {
      v8 = 0x200000;
      if (!v6)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v8 = *(v4 + 88);
      if (!v6)
      {
        goto LABEL_39;
      }
    }

    if (__nwlog_is_datapath_logging_enabled())
    {
      v339 = v1;
      v347 = v7;
      v359 = v6;
      v371 = v3;
      v383 = v5;
      v395 = a1;
      v420 = 0;
      v421 = 0xE000000000000000;
      sub_182AD3BA8();

      v420 = 0xD00000000000001ELL;
      v421 = 0x8000000182BE05C0;
      v327 = v8;
      v419 = v8;
      v136 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v136);

      v137 = v420;
      v138 = v421;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v139 = sub_182AD2698();
      __swift_project_value_buffer(v139, qword_1EA843418);
      v140 = swift_allocObject();
      *(v140 + 16) = "init()";
      *(v140 + 24) = 6;
      *(v140 + 32) = 2;
      v141 = swift_allocObject();
      *(v141 + 16) = sub_181F8C724;
      *(v141 + 24) = v140;
      v142 = swift_allocObject();
      *(v142 + 16) = 1564427099;
      *(v142 + 24) = 0xE400000000000000;
      v143 = swift_allocObject();
      *(v143 + 16) = v137;
      *(v143 + 24) = v138;

      v416 = sub_182AD2678();
      oslogg = sub_182AD38A8();
      v305 = swift_allocObject();
      *(v305 + 16) = 32;
      bufa = swift_allocObject();
      bufa[16] = 8;
      v144 = swift_allocObject();
      *(v144 + 16) = sub_181F8C71C;
      *(v144 + 24) = v141;
      v145 = swift_allocObject();
      *(v145 + 16) = sub_181F8C718;
      *(v145 + 24) = v144;
      v284 = swift_allocObject();
      *(v284 + 16) = 32;
      v146 = swift_allocObject();
      *(v146 + 16) = 8;
      v147 = swift_allocObject();
      *(v147 + 16) = sub_181F8C720;
      *(v147 + 24) = v142;
      v148 = swift_allocObject();
      *(v148 + 16) = sub_181F8C718;
      *(v148 + 24) = v147;
      v149 = swift_allocObject();
      *(v149 + 16) = 32;
      v150 = swift_allocObject();
      *(v150 + 16) = 8;
      v151 = swift_allocObject();
      *(v151 + 16) = sub_181F8C720;
      *(v151 + 24) = v143;
      v152 = swift_allocObject();
      *(v152 + 16) = sub_181F8C718;
      *(v152 + 24) = v151;
      if (os_log_type_enabled(v416, oslogg))
      {
        v266 = v149;
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v417 = v154;
        v418 = 0;
        *v153 = 770;
        v419 = (v153 + 2);
        v420 = sub_181F8C728;
        v421 = v305;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v7 = v347;

        v420 = sub_181F8C728;
        v421 = bufa;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C714;
        v421 = v145;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v306 = v154;

        v420 = sub_181F8C728;
        v421 = v284;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v146;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v1 = v339;

        v420 = sub_181F8C714;
        v421 = v148;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v155 = v153;

        v420 = sub_181F8C728;
        v421 = v266;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v150;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v3 = v371;
        v6 = v359;

        v420 = sub_181F8C714;
        v421 = v152;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v5 = v383;
        a1 = v395;

        _os_log_impl(&dword_181A37000, v416, oslogg, "%s %s %s", v155, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v306, -1, -1);
        MEMORY[0x1865DF520](v155, -1, -1);
      }

      else
      {

        v5 = v383;
        a1 = v395;
        v3 = v371;
        v6 = v359;
        v1 = v339;
        v7 = v347;
      }

      v8 = v327;
    }

LABEL_39:
    if ((v5 * 12000) >> 64 == (12000 * v5) >> 63)
    {
      break;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    v353 = v6;
    v389 = a1;
    v420 = 0;
    v421 = 0xE000000000000000;
    sub_182AD3BA8();

    v420 = 0xD000000000000018;
    v421 = 0x8000000182BE0680;
    v377 = v5;
    v419 = v5;
    v11 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v11);

    v12 = v420;
    v13 = v421;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1EA843418);
    v15 = swift_allocObject();
    *(v15 + 16) = "init()";
    *(v15 + 24) = 6;
    *(v15 + 32) = 2;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C724;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = 1564427099;
    *(v17 + 24) = 0xE400000000000000;
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v13;

    osloga = sub_182AD2678();
    v410 = sub_182AD38A8();
    v333 = swift_allocObject();
    *(v333 + 16) = 32;
    v320 = swift_allocObject();
    *(v320 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C71C;
    *(v19 + 24) = v16;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C718;
    *(v20 + 24) = v19;
    v1 = swift_allocObject();
    *(v1 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C720;
    *(v22 + 24) = v17;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C718;
    *(v23 + 24) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = 32;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C720;
    *(v26 + 24) = v18;
    v365 = swift_allocObject();
    *(v365 + 16) = sub_181F8C718;
    *(v365 + 24) = v26;
    if (os_log_type_enabled(osloga, v410))
    {
      v265 = v20;
      v27 = swift_slowAlloc();
      v417 = swift_slowAlloc();
      v418 = 0;
      v278 = v417;
      *v27 = 770;
      v419 = (v27 + 2);
      v420 = sub_181F8C728;
      v421 = v333;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C728;
      v421 = v320;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v6 = v353;

      v420 = sub_181F8C714;
      v421 = v265;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C728;
      v421 = v1;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C728;
      v421 = v21;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C714;
      v421 = v23;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C728;
      v421 = v24;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C728;
      v421 = v25;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v5 = v377;
      a1 = v389;

      v420 = sub_181F8C714;
      v421 = v365;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v1 = osloga;
      _os_log_impl(&dword_181A37000, osloga, v410, "%s %s %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v278, -1, -1);
      MEMORY[0x1865DF520](v27, -1, -1);
    }

    else
    {

      v5 = v377;
      a1 = v389;
      v6 = v353;
    }
  }

  v9 = v8;
  if ((*(v4 + 112) & 1) == 0)
  {
    v9 = *(v4 + 104);
  }

  v409 = 12000 * v5;
  oslog = v9;
  if (!v6)
  {
    goto LABEL_45;
  }

  if (__nwlog_is_datapath_logging_enabled())
  {
    v328 = v8;
    v340 = v1;
    v348 = v7;
    v360 = v6;
    v372 = v3;
    v384 = v5;
    v396 = a1;
    v420 = 0;
    v421 = 0xE000000000000000;
    sub_182AD3BA8();

    v420 = 0xD00000000000001CLL;
    v421 = 0x8000000182BE05A0;
    v419 = oslog;
    v156 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v156);

    v158 = v420;
    v157 = v421;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v159 = sub_182AD2698();
    __swift_project_value_buffer(v159, qword_1EA843418);
    v160 = swift_allocObject();
    *(v160 + 16) = "init()";
    *(v160 + 24) = 6;
    *(v160 + 32) = 2;
    v161 = swift_allocObject();
    *(v161 + 16) = sub_181F8C724;
    *(v161 + 24) = v160;
    v162 = swift_allocObject();
    *(v162 + 16) = 1564427099;
    *(v162 + 24) = 0xE400000000000000;
    v163 = swift_allocObject();
    *(v163 + 16) = v158;
    *(v163 + 24) = v157;

    loge = sub_182AD2678();
    v307 = sub_182AD38A8();
    v285 = swift_allocObject();
    *(v285 + 16) = 32;
    v273 = swift_allocObject();
    *(v273 + 16) = 8;
    v164 = swift_allocObject();
    *(v164 + 16) = sub_181F8C71C;
    *(v164 + 24) = v161;
    v165 = swift_allocObject();
    *(v165 + 16) = sub_181F8C718;
    *(v165 + 24) = v164;
    v267 = swift_allocObject();
    *(v267 + 16) = 32;
    v166 = swift_allocObject();
    *(v166 + 16) = 8;
    v167 = swift_allocObject();
    *(v167 + 16) = sub_181F8C720;
    *(v167 + 24) = v162;
    v168 = swift_allocObject();
    *(v168 + 16) = sub_181F8C718;
    *(v168 + 24) = v167;
    v169 = swift_allocObject();
    *(v169 + 16) = 32;
    v170 = swift_allocObject();
    *(v170 + 16) = 8;
    v171 = swift_allocObject();
    *(v171 + 16) = sub_181F8C720;
    *(v171 + 24) = v163;
    v172 = swift_allocObject();
    *(v172 + 16) = sub_181F8C718;
    *(v172 + 24) = v171;
    if (os_log_type_enabled(loge, v307))
    {
      v260 = v170;
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v417 = v174;
      v418 = 0;
      *v173 = 770;
      v419 = (v173 + 2);
      v420 = sub_181F8C728;
      v421 = v285;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v7 = v348;

      v420 = sub_181F8C728;
      v421 = v273;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C714;
      v421 = v165;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C728;
      v421 = v267;
      sub_181F73AE0(&v420, &v419, &v418, &v417);

      v420 = sub_181F8C728;
      v421 = v166;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v1 = v340;

      v420 = sub_181F8C714;
      v421 = v168;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v286 = v174;

      v420 = sub_181F8C728;
      v421 = v169;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v175 = v173;

      v420 = sub_181F8C728;
      v421 = v260;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v3 = v372;
      v6 = v360;

      v420 = sub_181F8C714;
      v421 = v172;
      sub_181F73AE0(&v420, &v419, &v418, &v417);
      v5 = v384;
      a1 = v396;

      _os_log_impl(&dword_181A37000, loge, v307, "%s %s %s", v175, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v286, -1, -1);
      MEMORY[0x1865DF520](v175, -1, -1);
    }

    else
    {

      v5 = v384;
      a1 = v396;
      v3 = v372;
      v6 = v360;
      v1 = v340;
      v7 = v348;
    }

    v8 = v328;
    if (__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_107;
    }

LABEL_45:
    if ((*(v4 + 176) & 1) == 0)
    {
      goto LABEL_113;
    }

LABEL_46:
    v10 = 0x200000;
    if (v6)
    {
      goto LABEL_114;
    }

    goto LABEL_117;
  }

  if (!__nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_45;
  }

LABEL_107:
  v329 = v8;
  v349 = v7;
  v361 = v6;
  v373 = v3;
  v385 = v5;
  v397 = a1;
  v420 = 0;
  v421 = 0xE000000000000000;
  sub_182AD3BA8();

  v420 = 0xD000000000000019;
  v421 = 0x8000000182BE0580;
  v419 = v409;
  v176 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v176);

  v178 = v420;
  v177 = v421;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v179 = sub_182AD2698();
  __swift_project_value_buffer(v179, qword_1EA843418);
  v180 = swift_allocObject();
  *(v180 + 16) = "init()";
  *(v180 + 24) = 6;
  *(v180 + 32) = 2;
  v181 = swift_allocObject();
  *(v181 + 16) = sub_181F8C724;
  *(v181 + 24) = v180;
  v182 = swift_allocObject();
  *(v182 + 16) = 1564427099;
  *(v182 + 24) = 0xE400000000000000;
  v183 = swift_allocObject();
  *(v183 + 16) = v178;
  *(v183 + 24) = v177;

  logf = sub_182AD2678();
  v308 = sub_182AD38A8();
  v287 = swift_allocObject();
  *(v287 + 16) = 32;
  v274 = swift_allocObject();
  *(v274 + 16) = 8;
  v184 = swift_allocObject();
  *(v184 + 16) = sub_181F8C71C;
  *(v184 + 24) = v181;
  v185 = swift_allocObject();
  *(v185 + 16) = sub_181F8C718;
  *(v185 + 24) = v184;
  v268 = swift_allocObject();
  *(v268 + 16) = 32;
  v186 = swift_allocObject();
  *(v186 + 16) = 8;
  v187 = swift_allocObject();
  *(v187 + 16) = sub_181F8C720;
  *(v187 + 24) = v182;
  v188 = swift_allocObject();
  *(v188 + 16) = sub_181F8C718;
  *(v188 + 24) = v187;
  v189 = swift_allocObject();
  *(v189 + 16) = 32;
  v190 = swift_allocObject();
  *(v190 + 16) = 8;
  v191 = swift_allocObject();
  *(v191 + 16) = sub_181F8C720;
  *(v191 + 24) = v183;
  v192 = swift_allocObject();
  *(v192 + 16) = sub_181F8C718;
  *(v192 + 24) = v191;
  if (os_log_type_enabled(logf, v308))
  {
    v256 = v185;
    v261 = v190;
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v417 = v194;
    v418 = 0;
    *v193 = 770;
    v419 = (v193 + 2);
    v420 = sub_181F8C728;
    v421 = v287;
    sub_181F73AE0(&v420, &v419, &v418, &v417);
    v7 = v349;

    v420 = sub_181F8C728;
    v421 = v274;
    sub_181F73AE0(&v420, &v419, &v418, &v417);

    v420 = sub_181F8C714;
    v421 = v256;
    sub_181F73AE0(&v420, &v419, &v418, &v417);

    v420 = sub_181F8C728;
    v421 = v268;
    sub_181F73AE0(&v420, &v419, &v418, &v417);

    v420 = sub_181F8C728;
    v421 = v186;
    sub_181F73AE0(&v420, &v419, &v418, &v417);

    v420 = sub_181F8C714;
    v421 = v188;
    sub_181F73AE0(&v420, &v419, &v418, &v417);
    v288 = v194;

    v420 = sub_181F8C728;
    v421 = v189;
    sub_181F73AE0(&v420, &v419, &v418, &v417);
    v195 = v193;

    v420 = sub_181F8C728;
    v421 = v261;
    sub_181F73AE0(&v420, &v419, &v418, &v417);
    v3 = v373;
    v6 = v361;

    v420 = sub_181F8C714;
    v421 = v192;
    sub_181F73AE0(&v420, &v419, &v418, &v417);
    v5 = v385;
    a1 = v397;

    _os_log_impl(&dword_181A37000, logf, v308, "%s %s %s", v195, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v288, -1, -1);
    MEMORY[0x1865DF520](v195, -1, -1);
  }

  else
  {

    v5 = v385;
    a1 = v397;
    v3 = v373;
    v6 = v361;
    v7 = v349;
  }

  v8 = v329;
  if (*(v4 + 176))
  {
    goto LABEL_46;
  }

LABEL_113:
  v10 = *(v4 + 168);
  if (v6)
  {
LABEL_114:
    if (__nwlog_is_datapath_logging_enabled())
    {
      v341 = v1;
      v350 = v7;
      v374 = v3;
      v386 = v5;
      v398 = a1;
      v420 = 0;
      v421 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000002ELL, 0x8000000182BE0550);
      v419 = v10;
      v197 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v197);

      MEMORY[0x1865D9CA0](0x69727265766F2820, 0xEC000000203A6564);
      if (*(v4 + 176))
      {
        v198 = 0x65736C6166;
      }

      else
      {
        v198 = 1702195828;
      }

      if (*(v4 + 176))
      {
        v199 = 0xE500000000000000;
      }

      else
      {
        v199 = 0xE400000000000000;
      }

      MEMORY[0x1865D9CA0](v198, v199);

      v200 = v420;
      v201 = v421;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v202 = sub_182AD2698();
      __swift_project_value_buffer(v202, qword_1EA843418);
      v203 = swift_allocObject();
      *(v203 + 16) = "init()";
      *(v203 + 24) = 6;
      *(v203 + 32) = 2;
      v204 = swift_allocObject();
      *(v204 + 16) = sub_181F8C724;
      *(v204 + 24) = v203;
      v205 = swift_allocObject();
      *(v205 + 16) = 1564427099;
      *(v205 + 24) = 0xE400000000000000;
      v206 = swift_allocObject();
      *(v206 + 16) = v200;
      *(v206 + 24) = v201;

      v275 = sub_182AD2678();
      v362 = sub_182AD38A8();
      bufb = swift_allocObject();
      bufb[16] = 32;
      v289 = swift_allocObject();
      *(v289 + 16) = 8;
      v207 = swift_allocObject();
      *(v207 + 16) = sub_181F8C71C;
      *(v207 + 24) = v204;
      v208 = swift_allocObject();
      *(v208 + 16) = sub_181F8C718;
      *(v208 + 24) = v207;
      logg = swift_allocObject();
      LOBYTE(logg[2].isa) = 32;
      v330 = swift_allocObject();
      *(v330 + 16) = 8;
      v209 = swift_allocObject();
      *(v209 + 16) = sub_181F8C720;
      *(v209 + 24) = v205;
      v210 = swift_allocObject();
      *(v210 + 16) = sub_181F8C718;
      *(v210 + 24) = v209;
      v211 = swift_allocObject();
      *(v211 + 16) = 32;
      v212 = swift_allocObject();
      *(v212 + 16) = 8;
      v213 = swift_allocObject();
      *(v213 + 16) = sub_181F8C720;
      *(v213 + 24) = v206;
      v214 = swift_allocObject();
      *(v214 + 16) = sub_181F8C718;
      *(v214 + 24) = v213;
      if (os_log_type_enabled(v275, v362))
      {
        v257 = v208;
        v262 = v211;
        v269 = v212;
        v215 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        v417 = v216;
        v418 = 0;
        *v215 = 770;
        v419 = (v215 + 2);
        v420 = sub_181F8C728;
        v421 = bufb;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v289;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v7 = v350;
        v217 = v210;

        v420 = sub_181F8C714;
        v421 = v257;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = logg;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v330;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v1 = v341;

        v420 = sub_181F8C714;
        v421 = v217;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v262;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v269;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v3 = v374;

        v420 = sub_181F8C714;
        v421 = v214;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        _os_log_impl(&dword_181A37000, v275, v362, "%s %s %s", v215, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v216, -1, -1);
        MEMORY[0x1865DF520](v215, -1, -1);

        v5 = v386;
        a1 = v398;
      }

      else
      {

        v5 = v386;
        a1 = v398;
        v3 = v374;
        v1 = v341;
        v7 = v350;
      }
    }

    if (__nwlog_is_datapath_logging_enabled())
    {
      v342 = v1;
      v351 = v7;
      v375 = v3;
      v387 = v5;
      v399 = a1;
      v420 = 0;
      v421 = 0xE000000000000000;
      sub_182AD3BA8();

      v420 = 0xD00000000000002ELL;
      v421 = 0x8000000182BE0520;
      v419 = 0x200000;
      v218 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v218);

      v219 = v420;
      v220 = v421;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v221 = sub_182AD2698();
      __swift_project_value_buffer(v221, qword_1EA843418);
      v222 = swift_allocObject();
      *(v222 + 16) = "init()";
      *(v222 + 24) = 6;
      *(v222 + 32) = 2;
      v223 = swift_allocObject();
      *(v223 + 16) = sub_181F8C724;
      *(v223 + 24) = v222;
      v224 = swift_allocObject();
      *(v224 + 16) = 1564427099;
      *(v224 + 24) = 0xE400000000000000;
      v225 = swift_allocObject();
      *(v225 + 16) = v219;
      *(v225 + 24) = v220;

      v276 = sub_182AD2678();
      v363 = sub_182AD38A8();
      v290 = swift_allocObject();
      *(v290 + 16) = 32;
      bufc = swift_allocObject();
      bufc[16] = 8;
      v226 = swift_allocObject();
      *(v226 + 16) = sub_181F8C71C;
      *(v226 + 24) = v223;
      v227 = swift_allocObject();
      *(v227 + 16) = sub_181F8C718;
      *(v227 + 24) = v226;
      logh = swift_allocObject();
      LOBYTE(logh[2].isa) = 32;
      v331 = swift_allocObject();
      *(v331 + 16) = 8;
      v228 = swift_allocObject();
      *(v228 + 16) = sub_181F8C720;
      *(v228 + 24) = v224;
      v229 = swift_allocObject();
      *(v229 + 16) = sub_181F8C718;
      *(v229 + 24) = v228;
      v230 = swift_allocObject();
      *(v230 + 16) = 32;
      v231 = swift_allocObject();
      *(v231 + 16) = 8;
      v232 = swift_allocObject();
      *(v232 + 16) = sub_181F8C720;
      *(v232 + 24) = v225;
      v233 = swift_allocObject();
      *(v233 + 16) = sub_181F8C718;
      *(v233 + 24) = v232;
      if (os_log_type_enabled(v276, v363))
      {
        v258 = v227;
        v263 = v230;
        v270 = v231;
        v234 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        v417 = v235;
        v418 = 0;
        *v234 = 770;
        v419 = (v234 + 2);
        v420 = sub_181F8C728;
        v421 = v290;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v7 = v351;

        v420 = sub_181F8C728;
        v421 = bufc;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v236 = v229;

        v420 = sub_181F8C714;
        v421 = v258;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = logh;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v331;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v1 = v342;

        v420 = sub_181F8C714;
        v421 = v236;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v263;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v270;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v3 = v375;

        v420 = sub_181F8C714;
        v421 = v233;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        _os_log_impl(&dword_181A37000, v276, v363, "%s %s %s", v234, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v235, -1, -1);
        MEMORY[0x1865DF520](v234, -1, -1);

        v5 = v387;
        a1 = v399;
      }

      else
      {

        v5 = v387;
        a1 = v399;
        v3 = v375;
        v1 = v342;
        v7 = v351;
      }
    }

    if (__nwlog_is_datapath_logging_enabled())
    {
      v343 = v1;
      v352 = v7;
      v376 = v3;
      v388 = v5;
      v400 = a1;
      v420 = 0;
      v421 = 0xE000000000000000;
      sub_182AD3BA8();

      v420 = 0xD000000000000028;
      v421 = 0x8000000182BE04F0;
      v419 = 0x200000;
      v237 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v237);

      v238 = v420;
      v239 = v421;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v240 = sub_182AD2698();
      __swift_project_value_buffer(v240, qword_1EA843418);
      v241 = swift_allocObject();
      *(v241 + 16) = "init()";
      *(v241 + 24) = 6;
      *(v241 + 32) = 2;
      v242 = swift_allocObject();
      *(v242 + 16) = sub_181F8C724;
      *(v242 + 24) = v241;
      v243 = swift_allocObject();
      *(v243 + 16) = 1564427099;
      *(v243 + 24) = 0xE400000000000000;
      v244 = swift_allocObject();
      *(v244 + 16) = v238;
      *(v244 + 24) = v239;

      v277 = sub_182AD2678();
      v364 = sub_182AD38A8();
      v291 = swift_allocObject();
      *(v291 + 16) = 32;
      bufd = swift_allocObject();
      bufd[16] = 8;
      v245 = swift_allocObject();
      *(v245 + 16) = sub_181F8C71C;
      *(v245 + 24) = v242;
      v246 = swift_allocObject();
      *(v246 + 16) = sub_181F8C718;
      *(v246 + 24) = v245;
      logi = swift_allocObject();
      LOBYTE(logi[2].isa) = 32;
      v332 = swift_allocObject();
      *(v332 + 16) = 8;
      v247 = swift_allocObject();
      *(v247 + 16) = sub_181F8C720;
      *(v247 + 24) = v243;
      v248 = swift_allocObject();
      *(v248 + 16) = sub_181F8C718;
      *(v248 + 24) = v247;
      v249 = swift_allocObject();
      *(v249 + 16) = 32;
      v250 = swift_allocObject();
      *(v250 + 16) = 8;
      v251 = swift_allocObject();
      *(v251 + 16) = sub_181F8C720;
      *(v251 + 24) = v244;
      v252 = swift_allocObject();
      *(v252 + 16) = sub_181F8C718;
      *(v252 + 24) = v251;
      if (os_log_type_enabled(v277, v364))
      {
        v259 = v246;
        v264 = v249;
        v271 = v250;
        v253 = swift_slowAlloc();
        v254 = swift_slowAlloc();
        v417 = v254;
        v418 = 0;
        *v253 = 770;
        v419 = (v253 + 2);
        v420 = sub_181F8C728;
        v421 = v291;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v7 = v352;

        v420 = sub_181F8C728;
        v421 = bufd;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v255 = v248;

        v420 = sub_181F8C714;
        v421 = v259;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = logi;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v332;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v1 = v343;

        v420 = sub_181F8C714;
        v421 = v255;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v264;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        v420 = sub_181F8C728;
        v421 = v271;
        sub_181F73AE0(&v420, &v419, &v418, &v417);
        v3 = v376;

        v420 = sub_181F8C714;
        v421 = v252;
        sub_181F73AE0(&v420, &v419, &v418, &v417);

        _os_log_impl(&dword_181A37000, v277, v364, "%s %s %s", v253, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v254, -1, -1);
        MEMORY[0x1865DF520](v253, -1, -1);

        v5 = v388;
        a1 = v400;
      }

      else
      {

        v5 = v388;
        a1 = v400;
        v3 = v376;
        v1 = v343;
        v7 = v352;
      }
    }
  }

LABEL_117:
  *a1 = v10;
  result = vdupq_n_s64(0x200000uLL);
  *(a1 + 8) = result;
  *(a1 + 24) = v1;
  *(a1 + 32) = v5;
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  *(a1 + 56) = v8;
  *(a1 + 64) = 12000;
  *(a1 + 72) = v7;
  *(a1 + 80) = v7;
  *(a1 + 88) = oslog;
  *(a1 + 96) = v409;
  return result;
}

void sub_182218CDC(NSObject *a1, unint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v4 = v2[3];
  if (qword_1EA837210 != -1)
  {
    v36 = a1;
    v3 = a2;
    swift_once();
    a1 = v36;
    a2 = v3;
  }

  v5 = *(&xmmword_1EA8433D0 + 1);
  v6 = *(&xmmword_1EA8433D0 + 1) < 1 || v4 >= *(&xmmword_1EA8433D0 + 1);
  if (v6)
  {
    v8 = v2[15];
    v7 = v2[16];
    v9 = qword_1EA837250;

    if (v9 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {
      goto LABEL_37;
    }

    if (qword_1EA837248 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

  v25 = *(&xmmword_1EA8433F0 + 1);
  if ((*(&xmmword_1EA8433F0 + 1) & 0x8000000000000000) == 0 && *(&xmmword_1EA8433F0 + 1) >= *(*(a2 + 144) + 24))
  {
    v87 = a1;
    v90 = a2;
    swift_beginAccess();
    v7 = *(v90 + 960);
    if (v7 >> 62)
    {
      v26 = sub_182AD3EB8();
      v27 = v87;
      if (v26)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v87;
      if (v26)
      {
LABEL_20:
        v84 = v25;
        if (v26 < 1)
        {
          __break(1u);
          goto LABEL_58;
        }

        v3 = 0;
        v8 = 0;
        v28 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x1865DA790](v28, v7);
          }

          else
          {
            v29 = *(v7 + 8 * v28 + 32);
          }

          ++v28;
          v30 = *(v29 + 1072);
          if (v3 <= v30)
          {
            v31 = *(v29 + 1072);
          }

          else
          {
            v31 = v3;
          }

          if (v30 > 0)
          {
            v3 = v31;
          }

          swift_beginAccess();
          v32 = *(v29 + 168);

          if (v8 <= v32)
          {
            v8 = v32;
          }
        }

        while (v26 != v28);

        v25 = v84;
        v27 = v87;
LABEL_43:
        v37 = sub_182212690(v27, v8, v3);
        if (!v37)
        {
          return;
        }

        v38 = v2[3];
        v6 = __CFADD__(v38, v37);
        v39 = v38 + v37;
        if (!v6)
        {
          if (v5 < v39)
          {
            v39 = v5;
          }

          v2[3] = v39;
          v40 = *(v90 + 144);
          v41 = *(v40 + 24);
          v6 = __CFADD__(v41, v37);
          v42 = v41 + v37;
          if (!v6)
          {
            if (v25 < v42)
            {
              v42 = v25;
            }

            *(v40 + 24) = v42;
            if ((*(v40 + 112) & 1) == 0)
            {
              if ((*(v40 + 104) & 0x8000000000000000) == 0)
              {
                v3 = v2[15];
                v7 = v2[16];
                v43 = qword_1EA837250;

                if (v43 == -1)
                {
                  goto LABEL_53;
                }

                goto LABEL_61;
              }

LABEL_60:
              __break(1u);
LABEL_61:
              swift_once();
LABEL_53:
              if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
              {
                goto LABEL_55;
              }

              sub_182AD3BA8();

              v93 = 0xD000000000000028;
              v94 = 0x8000000182BE0820;
              v98[0] = v2[3];
              v58 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v58);

              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v59 = sub_182AD2698();
              __swift_project_value_buffer(v59, qword_1EA843418);
              v60 = swift_allocObject();
              *(v60 + 16) = "growReceiveHighWaterMark(dataLengthAdded:stream:connection:)";
              *(v60 + 24) = 60;
              *(v60 + 32) = 2;
              v61 = swift_allocObject();
              *(v61 + 16) = sub_181F8C724;
              *(v61 + 24) = v60;
              v62 = swift_allocObject();
              *(v62 + 16) = v3;
              *(v62 + 24) = v7;
              v63 = swift_allocObject();
              *(v63 + 16) = 0xD000000000000028;
              *(v63 + 24) = 0x8000000182BE0820;

              v64 = sub_182AD2678();
              v65 = sub_182AD38A8();
              v78 = swift_allocObject();
              *(v78 + 16) = 32;
              v80 = swift_allocObject();
              *(v80 + 16) = 8;
              v66 = swift_allocObject();
              *(v66 + 16) = sub_181F8C71C;
              *(v66 + 24) = v61;
              v67 = swift_allocObject();
              *(v67 + 16) = sub_181F8C718;
              *(v67 + 24) = v66;
              v68 = swift_allocObject();
              *(v68 + 16) = 32;
              v82 = swift_allocObject();
              *(v82 + 16) = 8;
              v69 = swift_allocObject();
              *(v69 + 16) = sub_181F8C720;
              *(v69 + 24) = v62;
              v70 = swift_allocObject();
              *(v70 + 16) = sub_181F8C718;
              *(v70 + 24) = v69;
              v85 = swift_allocObject();
              *(v85 + 16) = 32;
              v88 = swift_allocObject();
              *(v88 + 16) = 8;
              v71 = swift_allocObject();
              *(v71 + 16) = sub_181F8C720;
              *(v71 + 24) = v63;
              v72 = swift_allocObject();
              *(v72 + 16) = sub_181F8C718;
              *(v72 + 24) = v71;
              v76 = v65;
              v73 = v64;
              if (!os_log_type_enabled(v64, v65))
              {

LABEL_55:

                return;
              }

              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v91 = v75;
              v92 = 0;
              *v74 = 770;
              v98[0] = v74 + 2;
              v93 = sub_181F8C728;
              v94 = v78;
              sub_181F73AE0(&v93, v98, &v92, &v91);

              v93 = sub_181F8C728;
              v94 = v80;
              sub_181F73AE0(&v93, v98, &v92, &v91);

              v93 = sub_181F8C714;
              v94 = v67;
              sub_181F73AE0(&v93, v98, &v92, &v91);

              v93 = sub_181F8C728;
              v94 = v68;
              sub_181F73AE0(&v93, v98, &v92, &v91);

              v93 = sub_181F8C728;
              v94 = v82;
              sub_181F73AE0(&v93, v98, &v92, &v91);

              v93 = sub_181F8C714;
              v94 = v70;
              sub_181F73AE0(&v93, v98, &v92, &v91);

              v93 = sub_181F8C728;
              v94 = v85;
              sub_181F73AE0(&v93, v98, &v92, &v91);

              v93 = sub_181F8C728;
              v94 = v88;
              sub_181F73AE0(&v93, v98, &v92, &v91);

              v93 = sub_181F8C714;
              v94 = v72;
              sub_181F73AE0(&v93, v98, &v92, &v91);

              v56 = v73;
              _os_log_impl(&dword_181A37000, v73, v76, "%s %s %s", v74, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v75, -1, -1);
              v57 = v74;
LABEL_66:
              MEMORY[0x1865DF520](v57, -1, -1);

              return;
            }

            __break(1u);
LABEL_74:
            swift_once();
LABEL_14:
            v10 = sub_182AD2698();
            __swift_project_value_buffer(v10, qword_1EA843418);
            v11 = swift_allocObject();
            *(v11 + 16) = "growReceiveHighWaterMark(dataLengthAdded:stream:connection:)";
            *(v11 + 24) = 60;
            *(v11 + 32) = 2;
            v12 = swift_allocObject();
            *(v12 + 16) = sub_181F8C724;
            *(v12 + 24) = v11;
            v13 = swift_allocObject();
            *(v13 + 16) = v8;
            *(v13 + 24) = v7;
            v14 = swift_allocObject();
            strcpy((v14 + 16), "already at max");
            *(v14 + 31) = -18;

            v15 = sub_182AD2678();
            v16 = sub_182AD38A8();
            v17 = swift_allocObject();
            *(v17 + 16) = 32;
            v79 = swift_allocObject();
            *(v79 + 16) = 8;
            v18 = swift_allocObject();
            *(v18 + 16) = sub_181F8C71C;
            *(v18 + 24) = v12;
            v19 = swift_allocObject();
            *(v19 + 16) = sub_181F8C718;
            *(v19 + 24) = v18;
            v81 = swift_allocObject();
            *(v81 + 16) = 32;
            v83 = swift_allocObject();
            *(v83 + 16) = 8;
            v20 = swift_allocObject();
            *(v20 + 16) = sub_181F8C720;
            *(v20 + 24) = v13;
            v21 = swift_allocObject();
            *(v21 + 16) = sub_181F8C718;
            *(v21 + 24) = v20;
            v86 = swift_allocObject();
            *(v86 + 16) = 32;
            v89 = swift_allocObject();
            *(v89 + 16) = 8;
            v22 = swift_allocObject();
            *(v22 + 16) = sub_181F8C720;
            *(v22 + 24) = v14;
            v23 = swift_allocObject();
            *(v23 + 16) = sub_181F8C718;
            *(v23 + 24) = v22;
            v77 = v16;
            v24 = v15;
            if (os_log_type_enabled(v15, v16))
            {
LABEL_65:
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v93 = 0;
              *v54 = 770;
              v98[0] = v55;
              v95[0] = v54 + 2;
              v96 = sub_181F8C728;
              v97 = v17;
              sub_181F73AE0(&v96, v95, &v93, v98);

              v96 = sub_181F8C728;
              v97 = v79;
              sub_181F73AE0(&v96, v95, &v93, v98);

              v96 = sub_181F8C714;
              v97 = v19;
              sub_181F73AE0(&v96, v95, &v93, v98);

              v96 = sub_181F8C728;
              v97 = v81;
              sub_181F73AE0(&v96, v95, &v93, v98);

              v96 = sub_181F8C728;
              v97 = v83;
              sub_181F73AE0(&v96, v95, &v93, v98);

              v96 = sub_181F8C714;
              v97 = v21;
              sub_181F73AE0(&v96, v95, &v93, v98);

              v96 = sub_181F8C728;
              v97 = v86;
              sub_181F73AE0(&v96, v95, &v93, v98);

              v96 = sub_181F8C728;
              v97 = v89;
              sub_181F73AE0(&v96, v95, &v93, v98);

              v96 = sub_181F8C714;
              v97 = v23;
              sub_181F73AE0(&v96, v95, &v93, v98);

              v56 = v24;
              _os_log_impl(&dword_181A37000, v24, v77, "%s %s %s", v54, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v55, -1, -1);
              v57 = v54;
              goto LABEL_66;
            }

            goto LABEL_67;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v3 = 0;
    v8 = 0;
    goto LABEL_43;
  }

  v34 = v2[15];
  v33 = v2[16];
  v35 = qword_1EA837250;

  if (v35 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {
    goto LABEL_37;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v44 = sub_182AD2698();
  __swift_project_value_buffer(v44, qword_1EA843418);
  v45 = swift_allocObject();
  *(v45 + 16) = "growReceiveHighWaterMark(dataLengthAdded:stream:connection:)";
  *(v45 + 24) = 60;
  *(v45 + 32) = 2;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_181F8C724;
  *(v46 + 24) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = v34;
  *(v47 + 24) = v33;
  v48 = swift_allocObject();
  *(v48 + 16) = 0xD000000000000028;
  *(v48 + 24) = 0x8000000182BE0850;

  v49 = sub_182AD2678();
  v50 = sub_182AD38A8();
  v17 = swift_allocObject();
  *(v17 + 16) = 32;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_181F8C71C;
  *(v51 + 24) = v46;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_181F8C718;
  *(v19 + 24) = v51;
  v81 = swift_allocObject();
  *(v81 + 16) = 32;
  v83 = swift_allocObject();
  *(v83 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_181F8C720;
  *(v52 + 24) = v47;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_181F8C718;
  *(v21 + 24) = v52;
  v86 = swift_allocObject();
  *(v86 + 16) = 32;
  v89 = swift_allocObject();
  *(v89 + 16) = 8;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_181F8C720;
  *(v53 + 24) = v48;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_181F8C718;
  *(v23 + 24) = v53;
  v77 = v50;
  v24 = v49;
  if (os_log_type_enabled(v49, v50))
  {
    goto LABEL_65;
  }

LABEL_67:

LABEL_37:
}

BOOL sub_18221A27C(NSObject *a1, unint64_t a2)
{
  v8 = v3[21];
  v9 = __CFADD__(v8, a1);
  v10 = a1 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  v3[21] = v10;
  v7 = v3[3];
  sub_182218CDC(a1, a2);
  v6 = v3[3];
  if (v7 >= v6)
  {
    if (v6 != v7)
    {
      sub_182AD3BA8();

      v53 = 0xD000000000000020;
      v54 = 0x8000000182BE0760;
      v52 = v7;
      v12 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v12);

      MEMORY[0x1865D9CA0](0x203A77656E202CLL, 0xE700000000000000);
      v52 = v3[3];
      v13 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v13);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v14 = sub_182AD2698();
      __swift_project_value_buffer(v14, qword_1EA843418);

      v15 = sub_182AD2678();
      v16 = sub_182AD38C8();

      if (!os_log_type_enabled(v15, v16))
      {

        goto LABEL_14;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53 = v18;
      *v17 = 136315650;
      v19 = sub_182AD3BF8();
      v21 = sub_181C64FFC(v19, v20, &v53);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v53);
      *(v17 + 22) = 2080;
      v22 = sub_181C64FFC(0xD000000000000020, 0x8000000182BE0760, &v53);

      *(v17 + 24) = v22;
      v23 = v16;
      v24 = v15;
LABEL_12:
      _os_log_impl(&dword_181A37000, v24, v23, "%s %s %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v18, -1, -1);
      MEMORY[0x1865DF520](v17, -1, -1);
LABEL_14:

      return v7 < v6;
    }

    v5 = v3[15];
    v2 = v3[16];
    v11 = qword_1EA837250;

    if (v11 == -1)
    {
LABEL_5:
      if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
      {
        goto LABEL_7;
      }

      v53 = 0;
      v54 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000004ALL, 0x8000000182BE0790);
      v52 = v7;
      v26 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v26);

      MEMORY[0x1865D9CA0](0x203A77656E202CLL, 0xE700000000000000);
      v52 = v4[3];
      v27 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v27);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v28 = sub_182AD2698();
      __swift_project_value_buffer(v28, qword_1EA843418);
      v29 = swift_allocObject();
      *(v29 + 16) = "updateFlowControlCredit(dataLengthAdded:stream:connection:)";
      *(v29 + 24) = 59;
      *(v29 + 32) = 2;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_181F8C724;
      *(v30 + 24) = v29;
      v31 = swift_allocObject();
      *(v31 + 16) = v5;
      *(v31 + 24) = v2;
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0xE000000000000000;

      v33 = sub_182AD2678();
      v34 = sub_182AD38A8();
      v43 = swift_allocObject();
      *(v43 + 16) = 32;
      v44 = swift_allocObject();
      *(v44 + 16) = 8;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_181F8C71C;
      *(v35 + 24) = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_181F8C718;
      *(v36 + 24) = v35;
      v45 = swift_allocObject();
      *(v45 + 16) = 32;
      v46 = swift_allocObject();
      *(v46 + 16) = 8;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_181F8C720;
      *(v37 + 24) = v31;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_181F8C718;
      *(v38 + 24) = v37;
      v47 = swift_allocObject();
      *(v47 + 16) = 32;
      v48 = swift_allocObject();
      *(v48 + 16) = 8;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_181F8C720;
      *(v39 + 24) = v32;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_181F8C718;
      *(v40 + 24) = v39;
      v49 = v40;
      v41 = v34;
      v42 = v33;
      if (!os_log_type_enabled(v33, v34))
      {

LABEL_7:

        return v7 < v6;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v50 = v18;
      v51 = 0;
      *v17 = 770;
      v52 = v17 + 2;
      v53 = sub_181F8C728;
      v54 = v43;
      sub_181F73AE0(&v53, &v52, &v51, &v50);

      v53 = sub_181F8C728;
      v54 = v44;
      sub_181F73AE0(&v53, &v52, &v51, &v50);

      v53 = sub_181F8C714;
      v54 = v36;
      sub_181F73AE0(&v53, &v52, &v51, &v50);

      v53 = sub_181F8C728;
      v54 = v45;
      sub_181F73AE0(&v53, &v52, &v51, &v50);

      v53 = sub_181F8C728;
      v54 = v46;
      sub_181F73AE0(&v53, &v52, &v51, &v50);

      v53 = sub_181F8C714;
      v54 = v38;
      sub_181F73AE0(&v53, &v52, &v51, &v50);

      v53 = sub_181F8C728;
      v54 = v47;
      sub_181F73AE0(&v53, &v52, &v51, &v50);

      v53 = sub_181F8C728;
      v54 = v48;
      sub_181F73AE0(&v53, &v52, &v51, &v50);

      v53 = sub_181F8C714;
      v54 = v49;
      sub_181F73AE0(&v53, &v52, &v51, &v50);

      v23 = v41;
      v15 = v42;
      v24 = v42;
      goto LABEL_12;
    }

LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  return v7 < v6;
}

void sub_18221ACA4()
{
  v0 = nw_protocol_copy_tcp_definition();
  type metadata accessor for NWProtocolDefinition();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v3 = sub_182AD2F88();
  v5 = v4;

  v1[2] = v3;
  v1[3] = v5;
  qword_1EA83B280 = v1;
}

uint64_t static NWProtocolTCP.definition.getter()
{
  if (qword_1EA837218 != -1)
  {
    swift_once();
  }
}

void (*sub_18221ADAC(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_tcp_options_get_no_delay(v3);
  return sub_18221ADF8;
}

void (*sub_18221AE34(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_tcp_options_get_no_push(v3);
  return sub_18221AE80;
}

void (*sub_18221AEBC(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_tcp_options_get_no_options(v3);
  return sub_18221AF08;
}

void (*sub_18221AF44(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_tcp_options_get_enable_keepalive(v3);
  return sub_18221AF90;
}

unint64_t *(*sub_18221AFD8(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_tcp_options_get_keepalive_count(v3);
  return sub_18221B028;
}

unint64_t *(*sub_18221B078(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_tcp_options_get_keepalive_idle_time(v3);
  return sub_18221B0C8;
}

unint64_t *(*sub_18221B118(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_tcp_options_get_keepalive_interval(v3);
  return sub_18221B168;
}

unint64_t *(*sub_18221B1B8(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_tcp_options_get_maximum_segment_size(v3);
  return sub_18221B208;
}

unint64_t *(*sub_18221B258(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_tcp_options_get_connection_timeout(v3);
  return sub_18221B2A8;
}

unint64_t *(*sub_18221B2F8(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_tcp_options_get_persist_timeout(v3);
  return sub_18221B348;
}

void *sub_18221B360(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(*result))
  {
    return a5(*(*a2 + 16));
  }

  __break(1u);
  return result;
}

unint64_t sub_18221B3A4(unint64_t result, uint64_t (*a2)(void, unint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    return a2(*(v2 + 16), result);
  }

  __break(1u);
  return result;
}

unint64_t *(*sub_18221B3EC(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_tcp_options_get_retransmit_connection_drop_time(v3);
  return sub_18221B43C;
}

unint64_t *sub_18221B454(unint64_t *result, char a2, uint64_t (*a3)(unint64_t))
{
  v4 = *result;
  if (a2)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v4))
    {
      return a3(result[1]);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v4))
  {
    return a3(result[1]);
  }

LABEL_10:
  __break(1u);
  return result;
}

void (*sub_18221B4C0(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_tcp_options_get_retransmit_fin_drop(v3);
  return sub_18221B50C;
}

void (*sub_18221B548(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_tcp_options_get_disable_ack_stretching(v3);
  return sub_18221B594;
}

void (*sub_18221B5C0(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_tcp_options_get_enable_fast_open(v3);
  return sub_18221B60C;
}

void (*sub_18221B648(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_tcp_options_get_disable_ecn(v3);
  return sub_18221B694;
}

uint64_t NWProtocolTCP.Options.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = nw_tcp_create_options();
  return v0;
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_18221BF20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 68))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_18221BF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 68) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 68) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL sub_18221BFF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_181B9AA34(v7, v9);
}

BOOL sub_18221C054(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  v8 = v6;
  return _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v8, &v7);
}

uint64_t sub_18221C0BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18221C104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_18221C154(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  result = *a1;
  if (*v2)
  {
    if (!result)
    {
      return result;
    }

    v14 = *a2;
    if ((sub_181C59BE4(result, &v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (result)
  {
    return 0;
  }

  v6 = *(a1 + 12);
  if (*(v2 + 12))
  {
    if (!*(a1 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 8) != *(a1 + 8))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(v2 + 13);
  v8 = *(a1 + 13);
  if (v7 == 6)
  {
    if (v8 != 6)
    {
      return 0;
    }
  }

  else if (v8 == 6 || (0x656403020100uLL >> (8 * v7)) != (0x656403020100uLL >> (8 * v8)))
  {
    return 0;
  }

  if (*(v2 + 14) == *(a1 + 14))
  {
    v9 = *(v2 + 16);
    v10 = *(a1 + 16);
    if (v9)
    {
      if (!v10)
      {
        return 0;
      }

      type metadata accessor for Endpoint(0);
      v11 = v10;
      v12 = v9;
      v13 = sub_182AD3978();

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (*(v3 + 24) == *(a1 + 24) && (sub_182081178(*(v3 + 32), *(a1 + 32)) & 1) != 0 && (sub_1820810E8(*(v3 + 40), *(a1 + 40)) & 1) != 0)
    {
      return (*(v3 + 48) == *(a1 + 48));
    }
  }

  return 0;
}

uint64_t sub_18221C2D8(uint64_t a1)
{
  v2 = v1;
  if (*v1)
  {
    sub_182AD4518();
    ProtocolStack.hash(into:)();
  }

  else
  {
    sub_182AD4518();
  }

  if (*(v1 + 12) == 1)
  {
    sub_182AD4518();
  }

  else
  {
    sub_182AD4518();
    sub_182AD4538();
  }

  if (*(v1 + 13) != 6)
  {
    sub_182AD4518();
  }

  sub_182AD4518();
  MEMORY[0x1865DB070](*(v1 + 14));
  v4 = *(v1 + 16);
  sub_182AD4518();
  if (v4)
  {
    v5 = v4;
    sub_182AD3988();
  }

  MEMORY[0x1865DB070](*(v2 + 24));
  sub_18221C570(a1, *(v2 + 32));
  v6 = *(v2 + 40);
  v7 = *(v6 + 16);
  MEMORY[0x1865DB070](v7);
  if (v7)
  {
    v8 = v6 + 40;
    do
    {

      sub_182AD30E8();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return sub_182AD4528();
}

uint64_t sub_18221C458()
{
  sub_182AD44E8();
  sub_18221C2D8(v1);
  return sub_182AD4558();
}

uint64_t sub_18221C49C()
{
  sub_182AD44E8();
  sub_18221C2D8(v1);
  return sub_182AD4558();
}

unint64_t sub_18221C51C()
{
  result = qword_1EA83B288;
  if (!qword_1EA83B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B288);
  }

  return result;
}

uint64_t sub_18221C570(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1865DB070](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[1];
      v7 = *(v5 + 1);
      v8 = *(v5 + 2);
      v9 = v5[24];
      MEMORY[0x1865DB070](*v5);
      MEMORY[0x1865DB070](v6);
      if (v9)
      {
        MEMORY[0x1865DB070](1);
        sub_181F49A24(v7, v8, 1);
        sub_182AD30E8();
      }

      else
      {
        MEMORY[0x1865DB070](0);
        sub_181FB86BC(v7);
        sub_182AD30E8();
      }

      result = sub_181F48350(v7, v8, v9);
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

double sub_18221C65C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = 1;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  v40 = 6;
  v41 = 0;
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  v45 = 0;
  v4 = *a1;
  v16 = *(a1 + 12);
  v17 = *(a1 + 8);
  v5 = *(a1 + 13);
  v6 = *(a1 + 14);
  v7 = *(a1 + 15);
  v8 = *(a1 + 16);
  v15 = *(a1 + 24);
  v35[0] = *(a1 + 25);
  *(v35 + 3) = *(a1 + 28);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  sub_181B29D44(a1, &v23);
  sub_181B29DA0(&v37);
  if (v4)
  {

    sub_181B29DA0(a1);
    type metadata accessor for ProtocolStack();
    swift_allocObject();
    v12 = sub_181AB6BD4(v4);
  }

  else
  {
    sub_181B29DA0(a1);
    v12 = 0;
  }

  *(&v20 + 9) = v35[0];
  HIDWORD(v20) = *(v35 + 3);
  *&v19 = v12;
  DWORD2(v19) = v17;
  BYTE12(v19) = v16;
  BYTE13(v19) = v5;
  BYTE14(v19) = v6;
  HIBYTE(v19) = v7;
  *&v20 = v8;
  BYTE8(v20) = v15;
  *&v21 = v9;
  *(&v21 + 1) = v10;
  v22 = v11;
  v23 = v12;
  v24 = v17;
  v25 = v16;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v15;
  *v31 = v35[0];
  *&v31[3] = *(v35 + 3);
  v32 = v9;
  v33 = v10;
  v34 = v11;
  sub_181B29D44(&v19, v18);
  sub_181B29DA0(&v23);
  v13 = v20;
  *a2 = v19;
  *(a2 + 16) = v13;
  result = *&v21;
  *(a2 + 32) = v21;
  *(a2 + 48) = v22;
  return result;
}

unint64_t sub_18221C850()
{
  result = qword_1EA83B290;
  if (!qword_1EA83B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B290);
  }

  return result;
}

unint64_t sub_18221C8A4()
{
  result = qword_1EA83B298;
  if (!qword_1EA83B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B298);
  }

  return result;
}

unint64_t sub_18221C8FC()
{
  result = qword_1EA83B2A0;
  if (!qword_1EA83B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B2A0);
  }

  return result;
}

unint64_t sub_18221C954()
{
  result = qword_1EA83B2A8;
  if (!qword_1EA83B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B2A8);
  }

  return result;
}

unint64_t sub_18221C9AC()
{
  result = qword_1EA83B2B0;
  if (!qword_1EA83B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B2B0);
  }

  return result;
}

uint64_t Connection3.__allocating_init(using:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t Connection3.nw.getter()
{
  sub_181F3D244();
}

uint64_t Connection3.__allocating_init(to:using:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_18221FB5C(a1, a2);

  return v4;
}

uint64_t Connection3.init(to:using:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_18221FB5C(a1, a2);

  return v2;
}

uint64_t sub_18221CC28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *), void (*a6)(uint64_t, void *))
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

uint64_t Connection3.deinit()
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

uint64_t Connection3.__deallocating_deinit()
{
  Connection3.deinit();

  return swift_deallocClassInstance();
}

uint64_t Connection3.hashValue.getter()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_18221CE88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = ConnectionProtocol.id.getter(a1, WitnessTable);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_18221CF04()
{
  swift_getWitnessTable();

  return ConnectionProtocol.hash(into:)();
}

uint64_t sub_18221CF64()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t Connection3<>.send(_:metadata:isComplete:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
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

  return MEMORY[0x1EEE6DFA0](sub_18221D110, 0, 0);
}

uint64_t sub_18221D110()
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

uint64_t Connection3<>.receive(minimumLength:maximumLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Connection3<>.receive(exactly:)(uint64_t a1, uint64_t a2)
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

uint64_t Connection3.send<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  return MEMORY[0x1EEE6DFA0](sub_18221E924, 0, 0);
}

{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18221EABC, 0, 0);
}

uint64_t Connection3.receive<>()()
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

uint64_t Connection3.send<>(type:_:metadata:isFinal:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 116) = a5;
  *(v6 + 72) = a4;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 112) = a1;
  *(v6 + 88) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_18221D95C, 0, 0);
}

void sub_18221D95C()
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

uint64_t Connection3.receive<>()(uint64_t a1)
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

uint64_t Connection3<>.send<A>(_:metadata:isFinal:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 128) = a3;
  *(v4 + 56) = a1;
  *(v4 + 80) = *v3;
  *(v4 + 88) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18221DC30, 0, 0);
}

{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 128) = a3;
  *(v4 + 56) = a1;
  *(v4 + 80) = *v3;
  *(v4 + 88) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18221E2D8, 0, 0);
}

uint64_t sub_18221DC30()
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
  v13[1] = sub_18221DE38;

  return static JSON.send<A>(connection:content:metadata:)(v0 + 48, v7, v8, v0 + 32, v3, v15, v11, v4);
}

uint64_t sub_18221DE38()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v4 = v2[12];
    v3 = v2[13];

    sub_181C1F2E4(v4, v3);

    return MEMORY[0x1EEE6DFA0](sub_18221FE98, 0, 0);
  }

  else
  {
    v6 = v2[12];
    v5 = v2[13];

    sub_181C1F2E4(v6, v5);
    v7 = v2[1];

    return v7();
  }
}

uint64_t Connection3<>.receive<A>()(uint64_t a1)
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
  v7[1] = sub_18221E14C;

  return static JSON.receive<A>(connection:)(v6, (v2 + 2), (v2 + 4), v5, v3, v8, v9, WitnessTable);
}

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
  v7[1] = sub_18221E680;

  return static PropertyList3.receive<A>(connection:)(v6, (v2 + 2), (v2 + 4), v5, v3, v8, v9, WitnessTable);
}

uint64_t sub_18221E14C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_18221FE9C;
  }

  else
  {
    v2 = sub_18208EB4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18221E2D8()
{
  *(v0 + 48) = *(v0 + 72);
  v1 = *(v0 + 88);
  sub_182AD1E58();
  swift_allocObject();
  sub_182AD1E48();
  v2 = *(v1 + 88);
  v3 = v2[2];
  v4 = v2[4];
  v5 = sub_182AD1E38();
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  v7 = v5;
  v8 = v6;
  v15 = *(v0 + 80);
  v9 = *(v0 + 128);
  v10 = *(v0 + 64);

  v11 = v2[3];
  sub_1821A1268(v9, v10, v0 + 16);
  v12 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v12;

  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_181FE06E0;

  return static PropertyList3.send<A>(connection:content:metadata:)(v0 + 48, v7, v8, v0 + 32, v3, v15, v11, v4);
}

uint64_t sub_18221E680()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_18208EC90;
  }

  else
  {
    v2 = sub_18221E794;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18221E794()
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
  v8 = static PropertyList3.mapLegacy(_:)(v5, v4, v18, v6, v3, v1);
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

uint64_t sub_18221E924()
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

uint64_t sub_18221EABC()
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

uint64_t Connection3.ping<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18221EC30, 0, 0);
}

uint64_t sub_18221EC30()
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

uint64_t Connection3.pong<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18221EDA4, 0, 0);
}

uint64_t sub_18221EDA4()
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

uint64_t Connection3.close<>(code:reason:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 56) = *v4;
  *(v5 + 80) = *a1;
  *(v5 + 82) = *(a1 + 2);
  return MEMORY[0x1EEE6DFA0](sub_18221EF24, 0, 0);
}

uint64_t sub_18221EF24()
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

uint64_t Connection3<>.messages.getter(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE6DBA8](&unk_182AFF0C0, v3, AssociatedTypeWitness);
}

uint64_t sub_18221F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[7] = *a2;
  v3[8] = *(*a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[9] = AssociatedTypeWitness;
  v3[10] = *(AssociatedTypeWitness - 8);
  v3[11] = swift_task_alloc();
  v5 = swift_getAssociatedTypeWitness();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_getAssociatedTypeWitness();
  v6 = sub_182AD39B8();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18221F414, 0, 0);
}

uint64_t sub_18221F414()
{
  v1 = v0[7];
  v12 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0[15] - 8);
  v5 = *(v4 + 56);
  v0[19] = v5;
  v0[20] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v2, 1, 1);
  v0[2] = v3;
  v11 = (*(v12 + 40) + **(v12 + 40));
  v6 = swift_task_alloc();
  v0[21] = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_18221F5B0;
  v8 = v0[14];
  v9 = v0[11];

  return v11(v8, v9, v0 + 2, v1, WitnessTable);
}

uint64_t sub_18221F5B0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_18221F994;
  }

  else
  {
    v2 = sub_18221F6C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18221F6C4()
{
  v1 = *(v0 + 176);
  (*(*(v0 + 48) + 56))(*(v0 + 112), *(v0 + 88));
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v4 + 8))(v3, v5);
    *(v0 + 24) = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 188))
    {
      v21 = *(v0 + 184);

      v22 = sub_182AD2768();
      if (v22 != sub_182AD2768())
      {
        v23 = *(v0 + 128);
        v24 = *(v0 + 136);
        v25 = *(v0 + 32);
        sub_181F4B3B8();
        swift_allocError();
        *v26 = v21;
        *(v26 + 4) = 0;
        swift_willThrow();
        (*(v24 + 8))(v25, v23);
      }
    }

    else
    {
      v7 = *(v0 + 128);
      v8 = *(v0 + 136);
      v9 = *(v0 + 32);

      swift_willThrow();
      (*(v8 + 8))(v9, v7);
    }
  }

  else
  {
    v10 = *(v0 + 152);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 96);
    v18 = *(v0 + 32);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v16 + 8))(v15, v17);
    (*(v12 + 8))(v18, v13);
    v10(v11, 0, 1, v14);
    (*(v12 + 32))(v18, v11, v13);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_18221F994()
{
  v1 = *(v0 + 176);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
  if (!swift_dynamicCast() || *(v0 + 188))
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v5 = *(v0 + 32);

    swift_willThrow();
    (*(v4 + 8))(v5, v3);
LABEL_4:

    v6 = *(v0 + 8);
    goto LABEL_5;
  }

  v8 = *(v0 + 184);

  v9 = sub_182AD2768();
  if (v9 != sub_182AD2768())
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v12 = *(v0 + 32);
    sub_181F4B3B8();
    swift_allocError();
    *v13 = v8;
    *(v13 + 4) = 0;
    swift_willThrow();
    (*(v11 + 8))(v12, v10);

    goto LABEL_4;
  }

  v6 = *(v0 + 8);
LABEL_5:

  return v6();
}

uint64_t sub_18221FB5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = NWEndpoint.nw.getter();
  if (v9)
  {
    v10 = v9;
    if (nw_endpoint_get_type(v9) == nw_endpoint_type_url)
    {
      swift_beginAccess();
      v11 = *(*(a2 + 16) + 16);

      os_unfair_lock_lock((v11 + 24));
      v12 = *(v11 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v11 + 24));

      nw_parameters_set_url_endpoint(v12, v10);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_181FE4EE0(a1, v8);
  swift_beginAccess();
  v13 = *(a2 + 16);
  type metadata accessor for NWConnection(0);
  swift_allocObject();

  v14 = sub_181E60914(v8, v13);

  sub_181FDAD5C(a1);
  *(v3 + 16) = v14;
  return v3;
}

uint64_t sub_18221FCD4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F54964;

  return sub_18221F1EC(a1, v4, v5);
}

uint64_t sub_18221FD80(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void NWConnection.ContentContext.__allocating_init(identifier:expiration:priority:isFinal:antecedent:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, double a7)
{
  v14 = swift_allocObject();
  v15 = sub_182AD3048();
  v16 = nw_content_context_create((v15 + 32));

  *(v14 + 16) = v16;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  nw_content_context_set_expiration_milliseconds(v16, a3);
  *(v14 + 48) = a7;
  nw_content_context_set_relative_priority(v16, a7);
  *(v14 + 64) = a4;
  nw_content_context_set_is_final(v16, a4 & 1);
  *(v14 + 56) = a5;
  if (a5)
  {
    v17 = *(a5 + 16);

    nw_content_context_set_antecedent(v16, v17);
  }

  if (!a6)
  {
    goto LABEL_14;
  }

  if (!(a6 >> 62))
  {
    v18 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_13:

LABEL_14:

    return;
  }

  v18 = sub_182AD3EB8();
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v18 >= 1)
  {
    if ((a6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v18; ++i)
      {
        v20 = MEMORY[0x1865DA790](i, a6);
        nw_content_context_set_metadata_for_protocol(v16, *(v20 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v21 = (a6 + 32);
      do
      {
        v22 = *v21++;
        nw_content_context_set_metadata_for_protocol(v16, *(v22 + 16));
        --v18;
      }

      while (v18);
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t NWConnection.debugDescription.getter()
{
  v1 = [*(v0 + 16) description];
  v2 = sub_182AD2F88();

  return v2;
}

void NWConnection.state.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 96));
  v4 = *(v3 + 88);
  *(a1 + 4) = *(v3 + 92);
  *a1 = v4;

  os_unfair_lock_unlock((v3 + 96));
}

void *NWConnection.queue.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 96));
  v2 = *(v1 + 80);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 96));
  return v2;
}

void NWConnection.send<A>(content:contentContext:isComplete:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v92 = a4;
  v85 = a6;
  v95 = a3;
  v94 = a2;
  v96 = a1;
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v87 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_182AD39B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v84 - v19;
  v21 = sub_182AD2868();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v84 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(v10 + 16);
  v90(v17, v96, v9, v23);
  v88 = v7;
  v89 = *(v7 + 48);
  v25 = v89(v17, 1, a5);
  v91 = v10;
  if (v25 == 1)
  {
    (*(v10 + 8))(v17, v9);
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  else
  {
    v26 = swift_dynamicCast();
    (*(v22 + 56))(v20, v26 ^ 1u, 1, v21);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v66 = v84;
      (*(v22 + 32))(v84, v20, v21);
      v67 = *v92;
      if (*v92)
      {
        v68 = v92[1];
        v69 = *(v93 + 16);
        v70 = sub_182AD2808();
        v71 = *(v94 + 16);
        v72 = swift_allocObject();
        *(v72 + 16) = v67;
        *(v72 + 24) = v68;
        v101 = sub_181BEBE5C;
        v102 = v72;
        aBlock = MEMORY[0x1E69E9820];
        v98 = 1107296256;
        v99 = sub_181AA4EBC;
        v100 = &block_descriptor_69_0;
        v73 = _Block_copy(&aBlock);

        nw_connection_send(v69, v70, v71, v95 & 1, v73);
        _Block_release(v73);
      }

      else
      {
        v79 = *(v93 + 16);
        v70 = sub_182AD2808();
        nw_connection_send_idempotent(v79, v70, *(v94 + 16), v95 & 1);
      }

      (*(v22 + 8))(v66, v21);
      return;
    }
  }

  sub_181F49A88(v20, &unk_1EA8394B0);
  v27 = v96;
  v28 = v90;
  (v90)(v14, v96, v9);
  v29 = v89;
  if (v89(v14, 1, a5) == 1)
  {
    v30 = v91;
    (*(v91 + 8))(v14, v9);
    goto LABEL_9;
  }

  v31 = swift_dynamicCast();
  v30 = v91;
  if ((v31 & 1) == 0)
  {
LABEL_9:
    v43 = v86;
    v28(v86, v27, v9);
    if (v29(v43, 1, a5) == 1)
    {
      (*(v30 + 8))(v43, v9);
      v45 = *v92;
      if (*v92)
      {
        v46 = v92[1];
        v47 = *(v93 + 16);
        v48 = NWCreateDispatchDataFromNSData(0, v44);
        v49 = *(v94 + 16);
        v50 = swift_allocObject();
        *(v50 + 16) = v45;
        *(v50 + 24) = v46;
        v101 = sub_181BEBE78;
        v102 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v98 = 1107296256;
        v99 = sub_181AA4EBC;
        v100 = &block_descriptor_49;
        v51 = _Block_copy(&aBlock);

        nw_connection_send(v47, v48, v49, v95 & 1, v51);
        _Block_release(v51);
      }

      else
      {
        v74 = *(v93 + 16);
        v75 = NWCreateDispatchDataFromNSData(0, v44);
        nw_connection_send_idempotent(v74, v75, *(v94 + 16), v95 & 1);
      }
    }

    else
    {
      v52 = v87;
      (*(v88 + 32))(v87, v43, a5);
      v53 = a5;
      v54 = sub_1820F93E0(v52, a5, *(*(*(*(v85 + 8) + 8) + 8) + 8));
      v56 = v55;
      v57 = *v92;
      if (*v92)
      {
        v58 = v92[1];
        v59 = *(v93 + 16);
        v60 = sub_182AD2138();
        v62 = NWCreateDispatchDataFromNSData(v60, v61);

        v63 = *(v94 + 16);
        v64 = swift_allocObject();
        *(v64 + 16) = v57;
        *(v64 + 24) = v58;
        v101 = sub_181BEBE78;
        v102 = v64;
        aBlock = MEMORY[0x1E69E9820];
        v98 = 1107296256;
        v99 = sub_181AA4EBC;
        v100 = &block_descriptor_56_0;
        v65 = _Block_copy(&aBlock);

        nw_connection_send(v59, v62, v63, v95 & 1, v65);
        _Block_release(v65);
      }

      else
      {
        v76 = *(v93 + 16);
        v77 = sub_182AD2138();
        v62 = NWCreateDispatchDataFromNSData(v77, v78);

        nw_connection_send_idempotent(v76, v62, *(v94 + 16), v95 & 1);
      }

      sub_181C1F2E4(v54, v56);
      (*(v88 + 8))(v87, v53);
    }

    return;
  }

  v32 = aBlock;
  v33 = v98;
  v34 = *v92;
  if (*v92)
  {
    v35 = v92[1];
    v36 = *(v93 + 16);
    sub_181F49B58(aBlock, v98);
    v37 = sub_182AD2138();
    v39 = NWCreateDispatchDataFromNSData(v37, v38);

    v40 = *(v94 + 16);
    v41 = swift_allocObject();
    *(v41 + 16) = v34;
    *(v41 + 24) = v35;
    v101 = sub_181BEBE78;
    v102 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v98 = 1107296256;
    v99 = sub_181AA4EBC;
    v100 = &block_descriptor_63_0;
    v42 = _Block_copy(&aBlock);

    nw_connection_send(v36, v39, v40, v95 & 1, v42);
    _Block_release(v42);
  }

  else
  {
    v80 = *(v93 + 16);
    sub_181F49B58(aBlock, v98);
    v81 = sub_182AD2138();
    v83 = NWCreateDispatchDataFromNSData(v81, v82);

    nw_connection_send_idempotent(v80, v83, *(v94 + 16), v95 & 1);
  }

  sub_181C1F2E4(v32, v33);
  sub_181C1F2E4(v32, v33);
}

uint64_t (*NWConnection.stateUpdateHandler.getter())()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 96));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181F9DBE4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 96));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181F9DC70;
}

uint64_t sub_182220BF4@<X0>(uint64_t (**a1)()@<X8>)
{
  result = NWConnection.stateUpdateHandler.getter();
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

void sub_182220C64(uint64_t *a1)
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
  NWConnection.stateUpdateHandler.setter(v4, v3);
}

uint64_t (*NWConnection.stateUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 96));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
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
  os_unfair_lock_unlock((v3 + 96));
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
  return sub_182220DE4;
}

uint64_t sub_182220E3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(*(v2 + 16));
  if (v4)
  {
    sub_181B7BDC0(v4, a2);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for NWPath(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t (*NWConnection.pathUpdateHandler.getter())(uint64_t a1)
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 96));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_182222B90;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 96));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_182222B88;
}

uint64_t sub_182220FA0@<X0>(uint64_t (**a1)(uint64_t)@<X8>)
{
  result = NWConnection.pathUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_18222339C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_182221010(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1822233F0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWConnection.pathUpdateHandler.setter(v4, v3);
}

uint64_t (*NWConnection.pathUpdateHandler.modify(uint64_t (**a1)(uint64_t)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 96));
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_18222339C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 96));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_1822233F0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_182221190;
}

uint64_t (*NWConnection.viabilityUpdateHandler.getter())(char)
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 96));
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_182222B9C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 96));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_182222B98;
}

uint64_t sub_1822212A0@<X0>(uint64_t (**a1)(unsigned __int8 *)@<X8>)
{
  result = NWConnection.viabilityUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1822233DC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_182221310(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1822233E0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWConnection.viabilityUpdateHandler.setter(v4, v3);
}

uint64_t sub_1822213A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  sub_181AA39C0(a2);
  result = sub_181A554F4(v6);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  return result;
}

uint64_t (*NWConnection.viabilityUpdateHandler.modify(uint64_t (**a1)(char)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 96));
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1822233DC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 96));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_1822233E0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_1822214F0;
}

uint64_t (*NWConnection.betterPathUpdateHandler.getter())(char)
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 96));
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1822233DC;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 96));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_1822233E0;
}

uint64_t sub_182221600@<X0>(uint64_t (**a1)(unsigned __int8 *)@<X8>)
{
  result = NWConnection.betterPathUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1822233DC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_182221670(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1822233E0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWConnection.betterPathUpdateHandler.setter(v4, v3);
}

uint64_t (*NWConnection.betterPathUpdateHandler.modify(uint64_t (**a1)(char)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 96));
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1822233DC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 96));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_1822233E0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_1822217F0;
}

uint64_t sub_182221830(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
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

NSObject *NWConnection.init(to:using:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_181E60914(a1, a2);

  return v2;
}

NSObject *NWConnection.__allocating_init(host:port:using:)(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *a2;
  *v8 = *a1;
  *(v8 + 2) = v9;
  v8[24] = v10;
  *(v8 + 13) = v11;
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  v12 = sub_181E60914(v8, a3);

  return v12;
}

uint64_t NWConnection.__allocating_init(connection:parameters:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v15 + 24));
  v17 = nw_connection_create_with_connection(v14, v16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v17)
  {
    v18 = nw_connection_copy_endpoint(v17);
    sub_181B80998(v18, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      swift_unknownObjectRelease();
      sub_181F49A88(v6, &qword_1EA839360);
      return 0;
    }

    else
    {
      v20 = v13;
      sub_181D8DDC0(v6, v13, type metadata accessor for NWEndpoint);
      sub_181D8E320(v13, v10, type metadata accessor for NWEndpoint);
      swift_allocObject();
      v21 = sub_181D4653C(v10, a2, v17);

      swift_unknownObjectRelease();
      sub_181D8E448(v20, type metadata accessor for NWEndpoint);
      return v21;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t NWConnection.ContentContext.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NWConnection.ContentContext.__allocating_init(nw:)(NSObject *a1)
{
  swift_allocObject();
  v2 = sub_182222BC8(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t NWConnection.ContentContext.init(nw:)(NSObject *a1)
{
  v1 = sub_182222BC8(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_182221E78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(char *, void *, void, int *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - v9;
  if (v11)
  {
    sub_182AD2818();
    v12 = sub_182AD2868();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_182AD2868();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = swift_unknownObjectRetain();
  v15 = sub_181D47AFC(v14);
  if (a4)
  {
    v16 = swift_unknownObjectRetain();
    NWError.init(_:)(v16, &v19);
    v17 = v19 | (v20 << 32);
  }

  else
  {
    v17 = 0xFF00000000;
  }

  v21 = v17;
  v22 = BYTE4(v17);
  a5(v10, v15, a3 & 1, &v21);

  return sub_181F49A88(v10, &unk_1EA8394B0);
}

void NWConnection.receiveFile(at:maximumLength:handler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  sub_182AD2018();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v12[4] = sub_182222C50;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1822221F4;
  v12[3] = &block_descriptor_154;
  v10 = _Block_copy(v12);

  v11 = sub_182AD3048();

  nw_connection_receive_file_at_path_with_progress(v8, (v11 + 32), a2, v10);

  _Block_release(v10);
}

uint64_t sub_182222138(uint64_t a1, NSObject *a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, void, int *))
{
  swift_unknownObjectRetain();
  v10 = sub_181D47AFC(a2);
  if (a4)
  {
    v11 = swift_unknownObjectRetain();
    NWError.init(_:)(v11, &v15);
    v12 = v15 | (v16 << 32);
  }

  else
  {
    v12 = 0xFF00000000;
  }

  v17 = v12;
  v18 = BYTE4(v12);
  v13 = a5(a1, v10, a3 & 1, &v17);

  return v13 & 1;
}

uint64_t sub_1822221F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(a4) = v9(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return a4 & 1;
}

void NWConnection.sendFile(at:contentContext:maximumLength:is_complete:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + 16);
  sub_182AD2018();
  v13 = *(a2 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  v17[4] = sub_182222C58;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_18222245C;
  v17[3] = &block_descriptor_167_0;
  v15 = _Block_copy(v17);

  v16 = sub_182AD3048();

  nw_connection_send_file_at_path_with_progress(v12, (v16 + 32), v13, a3, a4 & 1, v15);

  _Block_release(v15);
}

uint64_t sub_1822223CC(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, int *))
{
  if (a3)
  {
    v6 = a1;
    v7 = swift_unknownObjectRetain();
    NWError.init(_:)(v7, &v10);
    a1 = v6;
    v8 = v10 | (v11 << 32);
  }

  else
  {
    v8 = 0xFF00000000;
  }

  v12 = v8;
  v13 = BYTE4(v8);
  return a4(a1, a2 & 1, &v12) & 1;
}

uint64_t sub_18222245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  LOBYTE(a3) = v7(a2, a3, a4);

  swift_unknownObjectRelease();
  return a3 & 1;
}

uint64_t NWConnection.batch(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_1820C7E9C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1822225EC;
  v9[3] = &block_descriptor_173;
  v7 = _Block_copy(v9);

  nw_connection_batch(v5, v7);
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t NWConnection.EstablishmentReport.debugDescription.getter()
{
  v1 = [*v0 description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t NWConnection.EstablishmentReport.Resolution.dnsProtocol.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NWConnection.EstablishmentReport.Resolution(0);
  v4 = *(v1 + *(result + 36));
  if (v4 >= 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t _s7Network18ProxyConfigurationV16debugDescriptionSSvg_0()
{
  v1 = [*v0 description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t NWConnection.DataTransferReport.debugDescription.getter()
{
  v1 = [*v0 description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t NWConnection.deinit()
{
  swift_unknownObjectRelease();

  sub_181D8E448(v0 + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, type metadata accessor for NWEndpoint);

  return v0;
}

uint64_t _s7Network12NWConnectionCyACSgSo16OS_nw_connection_pcfC_0(NSObject *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for NWEndpoint();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = nw_connection_copy_endpoint(a1);
  sub_181B80998(v15, v4);
  if ((*(v6 + 48))(v4, 1, v5))
  {
    swift_unknownObjectRelease();
    sub_181F49A88(v4, &qword_1EA839360);
    return 0;
  }

  else
  {
    sub_181D8DDC0(v4, v11, type metadata accessor for NWEndpoint);
    sub_181D8DDC0(v11, v14, type metadata accessor for NWEndpoint);
    v17 = nw_connection_copy_parameters(a1);
    type metadata accessor for NWParameters();
    v18 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
    v19 = swift_allocObject();
    *(v19 + 24) = 0;
    *(v19 + 16) = v17;
    *(v18 + 16) = v19;
    sub_181D8E320(v14, v8, type metadata accessor for NWEndpoint);
    type metadata accessor for NWConnection(0);
    swift_allocObject();
    v20 = sub_181D4653C(v8, v18, a1);

    swift_unknownObjectRelease();
    sub_181D8E448(v14, type metadata accessor for NWEndpoint);
    return v20;
  }
}

uint64_t sub_182222BC8(NSObject *a1)
{
  *(v1 + 16) = a1;
  v3 = swift_unknownObjectRetain();
  *(v1 + 40) = nw_content_context_get_expiration_milliseconds(v3);
  *(v1 + 48) = nw_content_context_get_relative_priority(a1);
  *(v1 + 64) = nw_content_context_get_is_final(a1);
  nw_content_context_get_identifier(a1);
  *(v1 + 24) = sub_182AD3158();
  *(v1 + 32) = v4;
  v5 = nw_content_context_copy_antecedent(*(v1 + 16));
  *(v1 + 56) = sub_181D47AFC(v5);
  return v1;
}

unint64_t sub_182222C64()
{
  result = qword_1EA83B2C8;
  if (!qword_1EA83B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B2C8);
  }

  return result;
}

unint64_t sub_182222CBC()
{
  result = qword_1EA83B2D0;
  if (!qword_1EA83B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B2D0);
  }

  return result;
}

void sub_182222D94()
{
  sub_182222ECC();
  if (v0 <= 0x3F)
  {
    sub_182222F30(319, &qword_1ED40F5C0, type metadata accessor for NWEndpoint, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_182222F30(319, &qword_1EA8367D8, type metadata accessor for NWConnection.EstablishmentReport.Resolution, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_182222F94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_182222ECC()
{
  if (!qword_1EA836820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B2D8);
    v0 = type metadata accessor for UncheckedSendable();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA836820);
    }
  }
}

void sub_182222F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_182222F94()
{
  if (!qword_1EA8367D0)
  {
    v0 = sub_182AD3488();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA8367D0);
    }
  }
}

void sub_18222300C()
{
  type metadata accessor for NWEndpoint();
  if (v0 <= 0x3F)
  {
    type metadata accessor for nw_report_resolution_protocol_t(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1822230E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_182223130(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1822231A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1822231E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy78_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18222327C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 78))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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