uint64_t Connection.__allocating_init(service:queue:errorHandler:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Connection.init(service:queue:errorHandler:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t Connection.init(service:queue:errorHandler:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 16) = a4;

  v7 = SecTaskCreateFromSelf(0);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23EE46D88();
    v10 = SecTaskCopyValueForEntitlement(v8, v9, 0);

    if (v10)
    {
      aBlock[0] = v10;
      if ((swift_dynamicCast() & 1) == 0 || (v19 & 1) == 0)
      {

        return v5;
      }
    }
  }

  *(v5 + 40) = 1;
  v11 = sub_23EE46D98();
  mach_service = xpc_connection_create_mach_service((v11 + 32), 0, 0);

  v13 = *(v5 + 32);
  *(v5 + 32) = mach_service;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (!mach_service)
  {
    __break(1u);
    goto LABEL_12;
  }

  xpc_connection_set_target_queue(mach_service, a3);
  result = swift_unknownObjectRelease();
  v15 = *(v5 + 32);
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  aBlock[4] = sub_23EE463DC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23EE463E4;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v15, v16);
  _Block_release(v16);
  result = swift_unknownObjectRelease();
  v17 = *(v5 + 32);
  if (v17)
  {
    v18 = *(v5 + 32);
    swift_unknownObjectRetain();

    xpc_connection_activate(v17);
    swift_unknownObjectRelease();

    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

_xpc_connection_s *sub_23EE462E0(void *a1, void *a2)
{
  v4 = MEMORY[0x23EF25DB0]();
  if (v4 == sub_23EE46D38())
  {
    v8 = sub_23EE46D58();
    v9 = xpc_equal(a1, v8);
    swift_unknownObjectRelease();
    if (v9)
    {
      v6 = a2[2];
      v10 = a2[3];
      v15 = 0;

      v7 = &v15;
    }

    else
    {
      v11 = sub_23EE46D48();
      v12 = xpc_equal(a1, v11);
      result = swift_unknownObjectRelease();
      if (!v12)
      {
        return result;
      }

      result = a2[4];
      if (!result)
      {
        __break(1u);
        return result;
      }

      xpc_connection_cancel(result);
      v6 = a2[2];
      v14 = a2[3];
      v16 = 1;

      v7 = &v16;
    }
  }

  else
  {
    v6 = a2[2];
    v5 = a2[3];
    v17 = 2;

    v7 = &v17;
  }

  v6(v7);
}

uint64_t sub_23EE463E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_xpc_connection_s *Connection.service<A>(for:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(sub_23EE46D78() - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20]();
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(v5 + 40) & 1) == 0)
  {
    sub_23EE46730();
    swift_allocError();
    *v20 = 0;
    return swift_willThrow();
  }

  v25[1] = a5;
  v26 = v9;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = sub_23EE46D98();
  xpc_dictionary_set_string(v12, "serviceName", (v13 + 32));

  result = *(v5 + 32);
  if (result)
  {
    v15 = xpc_connection_send_message_with_reply_sync(result, v12);
    v16 = sub_23EE46D48();
    v17 = xpc_equal(v15, v16);
    swift_unknownObjectRelease();
    if (v17)
    {
      sub_23EE46730();
      swift_allocError();
      LOBYTE(v19) = 3;
    }

    else
    {
      v21 = sub_23EE46D58();
      v22 = xpc_equal(v15, v21);
      swift_unknownObjectRelease();
      if (v22 || (v23 = xpc_dictionary_copy_mach_send(), v23 == -1))
      {
        sub_23EE46730();
        swift_allocError();
        LOBYTE(v19) = 2;
      }

      else
      {
        if (v23)
        {
          *v11 = v23;
          (*(v7 + 104))(v11, *MEMORY[0x277D714B0], v26);
          sub_23EE46D68();
          goto LABEL_13;
        }

        int64 = xpc_dictionary_get_int64(v15, "error");
        sub_23EE46730();
        swift_allocError();
        v19 = 0x302010004uLL >> (8 * int64);
        if (int64 >= 5)
        {
          LOBYTE(v19) = 4;
        }
      }
    }

    *v18 = v19;
    swift_willThrow();
LABEL_13:
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

unint64_t sub_23EE46730()
{
  result = qword_27E393920;
  if (!qword_27E393920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E393920);
  }

  return result;
}

uint64_t Connection.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Connection.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

AlwaysOnExclavesServices::Error __swiftcall Error.init(errorCode:)(Swift::Int errorCode)
{
  v2 = 0x302010004uLL >> (8 * errorCode);
  if (errorCode >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return errorCode;
}

uint64_t sub_23EE468CC()
{
  v1 = *v0;
  sub_23EE46DE8();
  MEMORY[0x23EF25BA0](v1);
  return sub_23EE46E08();
}

uint64_t sub_23EE4695C()
{
  v1 = *v0;
  sub_23EE46DE8();
  MEMORY[0x23EF25BA0](v1);
  return sub_23EE46E08();
}

unint64_t sub_23EE469A4()
{
  result = qword_27E3939F0;
  if (!qword_27E3939F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3939F0);
  }

  return result;
}

unint64_t sub_23EE469FC()
{
  result = qword_27E3939F8;
  if (!qword_27E3939F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3939F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}