uint64_t sub_1A5D28B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A5B180A0(a1, v10 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  if (swift_dynamicCast())
  {
    v4 = *(&v12 + 1);
    v3 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(*(v3 + 8) + 56))(v10, v4);
    v5 = sub_1A5C66384();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1A5B4F960(&v11);
    v7 = 0xE700000000000000;
    v5 = 0x74736575716552;
  }

  *&v11 = 0;
  *(&v11 + 1) = 0xE000000000000000;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x7020746F6E6E6143, 0xEF206D726F667265);
  MEMORY[0x1AC554600](v5, v7);

  MEMORY[0x1AC554600](0xD000000000000026, 0x80000001A605A630);
  v8 = v11;

  sub_1A5BF63A0(0, v8, *(&v8 + 1));

  *a2 = v8;
  *(a2 + 16) = 0;
  *(a2 + 20) = 6;
  return result;
}

void sub_1A5D28CD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 description];
  v5 = sub_1A5FD3D5C();
  v7 = v6;

  v8 = [a1 code];
  if ((v8 - 1) > 0x15)
  {
    v9 = 1;
  }

  else
  {
    v9 = byte_1A603256A[(v8 - 1)];
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 20) = v9;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D28D9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 21))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 20);
  if (v3 <= 0x14)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A5D28DE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 236;
    *(result + 8) = 0;
    if (a3 >= 0xEC)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A5D28E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5CC0);
    v3 = sub_1A5FD487C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A5D28F4C(v4, &v11);
      v5 = v11;
      result = sub_1A5B4590C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A5B101C8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A5D28F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5CB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5D28FBC(__IOSurface *a1, IOSurfaceLockOptions a2, void (*a3)(__IOSurface *))
{
  if (IOSurfaceLock(a1, a2, 0))
  {
    sub_1A5B16774();
    swift_allocError();
    *v6 = 0xD00000000000001BLL;
    *(v6 + 8) = 0x80000001A605A660;
    *(v6 + 16) = 0;
    *(v6 + 20) = 1;
    swift_willThrow();
  }

  else
  {
    a3(a1);
  }

  return IOSurfaceUnlock(a1, a2, 0);
}

uint64_t sub_1A5D29094()
{
  v1 = (v0 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_lazyName);
  v2 = *(v0 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_lazyName);
  v3 = *(v0 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_lazyName + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
  }

  else
  {
    v2 = sub_1A5FD34DC();
    v6 = v5;

    while (1)
    {
      v7 = sub_1A5FD3D2C();

      v8 = [v7 pathExtension];

      v9 = sub_1A5FD3D5C();
      v11 = v10;

      v22 = v9;
      v23 = v11;
      v12 = sub_1A5FD3E5C();
      v14 = v13;
      if (!v12 && v13 == 0xE000000000000000)
      {
        break;
      }

      v16 = v12;
      if (sub_1A5FD4B0C())
      {
        break;
      }

      if (v16 == 0x656C646E7562 && v14 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0 || v16 == 7628142 && v14 == 0xE300000000000000 || (sub_1A5FD4B0C() & 1) != 0 || v16 == 0x6F73736572707365 && v14 == 0xE800000000000000)
      {
      }

      else
      {
        v20 = sub_1A5FD4B0C();

        if ((v20 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v17 = sub_1A5FD3D2C();

      v18 = [v17 stringByDeletingPathExtension];

      sub_1A5FD3D5C();
      v2 = sub_1A5FD3E5C();
      v6 = v19;
    }

LABEL_24:
    *v1 = v2;
    v1[1] = v6;
  }

  return v2;
}

uint64_t sub_1A5D29350()
{
  v1 = OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_lazyFunctionNames;
  if (!*(*(v0 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_lazyFunctionNames) + 16))
  {
    v2 = (*(*v0 + 136))();
    *(v0 + v1) = sub_1A5D36BFC(v2, j__e5rt_program_library_get_num_functions, 0, j__e5rt_program_library_get_function_names);
  }
}

uint64_t sub_1A5D29420()
{
  v1 = OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_programLibraryHandle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A5D29464(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_programLibraryHandle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_1A5D29534()
{
  v1 = (v0 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_compilationOptions);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t sub_1A5D29584(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_compilationOptions;
  result = swift_beginAccess();
  *(v3 + 4) = BYTE4(a1);
  *v3 = a1;
  return result;
}

uint64_t sub_1A5D29638()
{
  v1 = OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_programLibraryHandle;
  swift_beginAccess();
  e5rt_program_library_release();
  *(v0 + v1) = 0;
  swift_endAccess();
  v2 = OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_url;
  v3 = sub_1A5FD353C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1A5D29724()
{
  v2 = sub_1A5C60084();
  if (v0)
  {
    return v1;
  }

  v4 = v3;
  v5 = v2;
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](v5, v4);
  sub_1A5BF63A0(2, 0xD00000000000002FLL, 0x80000001A605A680);

  sub_1A5BF63A0(2, 0xD00000000000003DLL, 0x80000001A605A6B0);
  sub_1A5FD3D8C();
  v6 = e5rt_program_library_create();

  sub_1A5BF63A0(2, 0xD00000000000003CLL, 0x80000001A605A6F0);
  v1 = v6 == 0;
  if (!v6)
  {

    sub_1A5BF63A0(2, 0xD000000000000029, 0x80000001A605A770);
    e5rt_program_library_release();
    return v1;
  }

  sub_1A5FD46AC();

  result = MEMORY[0x1AC557180](v6);
  if (result)
  {

    v8 = sub_1A5FD3E1C();
    MEMORY[0x1AC554600](v8);

    sub_1A5BF63A0(2, 0xD000000000000037, 0x80000001A605A730);

    return v1;
  }

  __break(1u);
  return result;
}

char *sub_1A5D29938(char *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = sub_1A5FD353C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5C60084();
  if (!v1)
  {
    v17 = 0;
    sub_1A5FD3D8C();

    v7 = e5rt_program_library_create();

    if (v7)
    {
      a1 = "AtURL(_:): returning true";
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D2879C(0xD000000000000027, 0x80000001A605A7A0, v7, v8);
      swift_willThrow();
    }

    else
    {
      (*(v4 + 16))(v6, a1, v3);
      v10 = v17;
      type metadata accessor for E5RTProgramLibrary();
      a1 = swift_allocObject();
      *&a1[OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_programLibraryHandle] = 0;
      v11 = &a1[OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_compilationOptions];
      v12 = *sub_1A5C2FB98();
      v11[4] = 1;
      *v11 = v12;
      v13 = &a1[OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_lazyName];
      *v13 = 0;
      *(v13 + 1) = 0xE000000000000000;
      *&a1[OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_lazyFunctionNames] = MEMORY[0x1E69E7CC0];
      (*(v4 + 32))(&a1[OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_url], v6, v3);
      v14 = &a1[OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_compilationOptions];
      swift_beginAccess();
      v14[4] = 2;
      *v14 = 0;
      v15 = OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_programLibraryHandle;
      swift_beginAccess();
      *&a1[v15] = v10;
    }
  }

  return a1;
}

uint64_t sub_1A5D29BDC()
{
  (*(*v0 + 136))();
  sub_1A5FD3D8C();
  function_metadata = e5rt_program_library_get_function_metadata();

  if (!function_metadata)
  {
    return 0;
  }

  sub_1A5B16774();
  swift_allocError();
  sub_1A5D2879C(0xD000000000000036, 0x80000001A605A7D0, function_metadata, v2);
  return swift_willThrow();
}

uint64_t sub_1A5D29D54()
{
  result = (*(*v0 + 248))();
  if (!v1)
  {
    v3 = result;
    if (result)
    {
      if (*(result + 16) && (v4 = sub_1A5B0E2A4(0x7372655672657355, 0xEB000000006E6F69), (v5 & 1) != 0))
      {
        sub_1A5B101D8(*(v3 + 56) + 32 * v4, v7);

        if (swift_dynamicCast())
        {
          return v6;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1A5D29E4C(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 136))();
  sub_1A5FD3D8C();
  v5 = e5rt_program_library_retain_program_function();

  if (v5)
  {
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD000000000000038, 0x80000001A605A810, v5, v6);
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for E5RTFunction();

    return sub_1A5D392DC(v2, a1, a2, 0);
  }
}

uint64_t type metadata accessor for E5RTProgramLibrary()
{
  result = qword_1EB27D0E0;
  if (!qword_1EB27D0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A5D29FEC(void *a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = sub_1A5FD353C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 48))(v12, v13);
  v14 = v11;
  v15 = sub_1A5C5FEBC();
  if (v2)
  {
    goto LABEL_16;
  }

  v37 = v15;
  v42 = 0;
  v16 = e5rt_e5_compiler_create();
  if (!v16)
  {
    v36 = a2 & 0x100000000;
    v39 = 0;
    v18 = e5rt_e5_compiler_options_create();
    if (v18)
    {
      v14 = v18;
      sub_1A5B16774();
      v19 = swift_allocError();
      v21 = v20;
      v22 = 0xD00000000000002BLL;
      v23 = 0x80000001A605A940;
    }

    else
    {
      v38 = a2;
      LODWORD(v40) = *sub_1A5C2FB98();
      sub_1A5D2A6AC();
      if ((sub_1A5FD3D0C() & 1) != 0 || (sub_1A5C2FBBC(), LODWORD(v35) = *sub_1A5C2FBB0(), sub_1A5C2FBA4(), v24 = e5rt_e5_compiler_options_set_compute_device_types_mask(), !v24))
      {
        v14 = v39;
        goto LABEL_13;
      }

      v14 = v24;
      v35 = "_options_create call failed";
      sub_1A5B16774();
      v19 = swift_allocError();
      v21 = v25;
      v22 = 0xD000000000000042;
      v23 = v35 | 0x8000000000000000;
    }

    sub_1A5D2879C(v22, v23, v14, v21);
    swift_willThrow();
    if (v19)
    {

LABEL_15:
      e5rt_e5_compiler_release();
      goto LABEL_16;
    }

LABEL_13:
    v40 = 0;
    v41 = v14;
    v35 = v42;
    sub_1A5FD3D8C();

    v14 = e5rt_e5_compiler_compile();

    if (!v14)
    {
      (*(v6 + 16))(v8, v11, v5);
      v28 = BYTE4(v36);
      LODWORD(v35) = a2 | v36;
      v37 = v40;
      type metadata accessor for E5RTProgramLibrary();
      v14 = swift_allocObject();
      *(v14 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_programLibraryHandle) = 0;
      v29 = v14 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_compilationOptions;
      v30 = *sub_1A5C2FB98();
      *(v29 + 4) = 1;
      *v29 = v30;
      v31 = (v14 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_lazyName);
      *v31 = 0;
      v31[1] = 0xE000000000000000;
      *(v14 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_lazyFunctionNames) = MEMORY[0x1E69E7CC0];
      (*(v6 + 32))(v14 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_url, v8, v5);
      v32 = v14 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_compilationOptions;
      swift_beginAccess();
      *(v32 + 4) = v28;
      *v32 = v35;
      v33 = OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_programLibraryHandle;
      swift_beginAccess();
      *(v14 + v33) = v37;
      e5rt_e5_compiler_options_release();
      e5rt_e5_compiler_release();
      (*(v6 + 8))(v11, v5);
      return v14;
    }

    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD000000000000024, 0x80000001A605A910, v14, v26);
    swift_willThrow();
    e5rt_e5_compiler_options_release();
    goto LABEL_15;
  }

  v14 = v16;

  sub_1A5B16774();
  swift_allocError();
  sub_1A5D2879C(0xD000000000000023, 0x80000001A605A8E0, v14, v17);
  swift_willThrow();
LABEL_16:
  (*(v6 + 8))(v11, v5);
  return v14;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for E5RTProgramLibraryCompilationOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for E5RTProgramLibraryCompilationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A5D2A5EC()
{
  result = sub_1A5FD353C();
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

unint64_t sub_1A5D2A6AC()
{
  result = qword_1EB1F5CC8;
  if (!qword_1EB1F5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5CC8);
  }

  return result;
}

void sub_1A5D2A704()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  if (HIDWORD(*(*(v1 + 16) + 16)))
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
  }
}

uint64_t sub_1A5D2A75C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  v17 = v1;
  v2 = *(v1 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      os_unfair_lock_unlock(v17 + 6);

      return v9;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
        v13 = *v11;
        v12 = v11[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1A5D2C478(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_1A5D2C478((v14 > 1), v15 + 1, 1, v9);
          v9 = result;
        }

        v5 &= v5 - 1;
        *(v9 + 16) = v15 + 1;
        v16 = v9 + 16 * v15;
        *(v16 + 32) = v13;
        *(v16 + 40) = v12;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5D2A8F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A5D2A948(a1, a2);
  return v4;
}

uint64_t sub_1A5D2A948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {

    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD000000000000033, 0x80000001A605A9C0, v29);
    swift_willThrow();
    type metadata accessor for NamedObjects();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v7 = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
  if (!v6)
  {

LABEL_21:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5CD0);
    v30 = swift_allocObject();
    *(v30 + 24) = 0;
    *(v30 + 16) = v7;
    *(v3 + 16) = v30;
    return v3;
  }

  v32 = v3;
  v8 = 0;
  v9 = v4 + 32;
  v10 = (v5 + 40);
  v33 = v6;
  v34 = v4;
  while (v8 < *(v5 + 16))
  {
    if (v8 >= *(v4 + 16))
    {
      goto LABEL_24;
    }

    v13 = v5;
    v15 = *(v10 - 1);
    v14 = *v10;
    sub_1A5B101D8(v9, v35);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v7;
    v17 = sub_1A5B0E2A4(v15, v14);
    v19 = v7[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_25;
    }

    v23 = v18;
    if (v7[3] < v22)
    {
      sub_1A5B0E544(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1A5B0E2A4(v15, v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_27;
      }

LABEL_13:
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v28 = v17;
    sub_1A5B0EB68();
    v17 = v28;
    if (v23)
    {
LABEL_4:
      v11 = v17;

      v7 = v36;
      v12 = (v36[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_1A5B101C8(v35, v12);
      goto LABEL_5;
    }

LABEL_14:
    v7 = v36;
    v36[(v17 >> 6) + 8] |= 1 << v17;
    v25 = (v7[6] + 16 * v17);
    *v25 = v15;
    v25[1] = v14;
    sub_1A5B101C8(v35, (v7[7] + 32 * v17));
    v26 = v7[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v7[2] = v27;
LABEL_5:
    ++v8;
    v10 += 2;
    v9 += 32;
    v5 = v13;
    v4 = v34;
    if (v33 == v8)
    {

      v3 = v32;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1A5FD4B8C();
  __break(1u);
  return result;
}

uint64_t sub_1A5D2AC24(unsigned int a1)
{
  result = (*(v1 + 128))(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
  if (!v2)
  {
    v5 = a1;
    v6 = result;

    v7 = MEMORY[0x1AC554430](v5, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5CD0);
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    *(v8 + 16) = v7;
    *(v6 + 16) = v8;

    return v6;
  }

  return result;
}

uint64_t sub_1A5D2ACF0()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  sub_1A5FD46AC();

  v2 = sub_1A5FD3C1C();
  MEMORY[0x1AC554600](v2);

  sub_1A5BF63A0(2, 0xD000000000000023, 0x80000001A605AA00);

  os_unfair_lock_unlock(v1 + 6);

  return swift_deallocClassInstance();
}

void *sub_1A5D2AE2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A5D2B33C(a1, a2);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5CD8);
    v6 = sub_1A5FD455C();
    v7 = CFGetTypeID(v6);
    swift_unknownObjectRelease();
    if (v7 != CVPixelBufferGetTypeID())
    {
      sub_1A5FD46AC();

      MEMORY[0x1AC554600](a1, a2);
      MEMORY[0x1AC554600](0xD000000000000015, 0x80000001A605AA50);
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D286A4(0xD000000000000011, 0x80000001A605AA30, v8);

      swift_willThrow();
    }
  }

  return v5;
}

void sub_1A5D2AF70(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_1A5D2D230((v4 + 16), &v6);
  os_unfair_lock_unlock((v4 + 24));
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v5 = v6;

    *a2 = v5;
  }
}

uint64_t sub_1A5D2B004(uint64_t a1, uint64_t a2)
{
  sub_1A5FD46AC();

  v8 = 0xD000000000000029;
  v9 = 0x80000001A605AC60;
  MEMORY[0x1AC554600](a1, a2);
  MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A605AC90);
  MEMORY[0x1AC554600](1635017028, 0xE400000000000000);
  sub_1A5BF63A0(2, 0xD000000000000029, 0x80000001A605AC60);

  v5 = *(v2 + 16);
  v10 = a1;
  v11 = a2;

  os_unfair_lock_lock((v5 + 24));
  sub_1A5D2D004((v5 + 16), &v7);
  os_unfair_lock_unlock((v5 + 24));

  return v7;
}

unint64_t sub_1A5D2B1EC()
{
  v1 = *(v0 + 16);

  if (os_unfair_lock_trylock(v1 + 6))
  {
    sub_1A5FD46AC();

    v2 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v2);

    MEMORY[0x1AC554600](0x7463656A626F203BLL, 0xEB00000000203A73);
    v3 = sub_1A5FD3C1C();
    MEMORY[0x1AC554600](v3);

    v5 = 0x203A746E756F63;
    v4 = 0xE700000000000000;
    os_unfair_lock_unlock(v1 + 6);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xD000000000000029;
  }
}

void *sub_1A5D2B33C(uint64_t a1, uint64_t a2)
{
  sub_1A5FD46AC();

  v10[0] = 0xD000000000000029;
  v10[1] = 0x80000001A605AC60;
  MEMORY[0x1AC554600](a1, a2);
  MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A605AC90);
  MEMORY[0x1AC554600](0x7265666675425643, 0xEB00000000666552);
  sub_1A5BF63A0(2, 0xD000000000000029, 0x80000001A605AC60);

  v6 = *(v2 + 16);
  v9[2] = a1;
  v9[3] = a2;

  os_unfair_lock_lock(v6 + 6);
  v7 = v9;
  sub_1A5D2D33C(&v6[4], v10);
  os_unfair_lock_unlock(v6 + 6);
  if (!v3)
  {
    v7 = v10[0];
  }

  return v7;
}

uint64_t sub_1A5D2B47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A605AC90);
  v7 = sub_1A5FD4D0C();
  MEMORY[0x1AC554600](v7);

  sub_1A5BF63A0(2, 0xD000000000000029, 0x80000001A605AC60);

  v8 = *(v3 + 16);
  sub_1A5FD456C();
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v8 + v10));
  sub_1A5D2CDA4((v8 + v9), a3);
  os_unfair_lock_unlock((v8 + v10));
}

uint64_t sub_1A5D2B614(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1A5B0E2A4(a2, a3), (v7 & 1) != 0))
  {
    sub_1A5B101D8(*(v5 + 56) + 32 * v6, v10);
    sub_1A5B101C8(v10, v11);
    *&v10[0] = 0;
    *(&v10[0] + 1) = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A605ACB0);
    MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A605ACD0);
    MEMORY[0x1AC554600](a2, a3);
    MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605ACF0);
    sub_1A5FD481C();
    sub_1A5BF63A0(2, *&v10[0], *(&v10[0] + 1));

    sub_1A5B101C8(v11, v10);
    type metadata accessor for CVBuffer(0);
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A5FD46AC();

    MEMORY[0x1AC554600](a2, a3);
    MEMORY[0x1AC554600](0x6F6E2073656F6420, 0xEF74736978652074);
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD000000000000011, 0x80000001A605AA30, v9);

    return swift_willThrow();
  }
}

uint64_t sub_1A5D2B840(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1A5B0E2A4(a2, a3), (v7 & 1) != 0))
  {
    sub_1A5B101D8(*(v5 + 56) + 32 * v6, v11);
    *&v10 = 0;
    *(&v10 + 1) = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A605ACB0);
    MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A605ACD0);
    MEMORY[0x1AC554600](a2, a3);
    MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605ACF0);
    sub_1A5FD481C();
    sub_1A5BF63A0(2, 0, 0xE000000000000000);

    sub_1A5B101C8(v11, &v10);
    type metadata accessor for IOSurfaceRef(0);
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A5FD46AC();

    MEMORY[0x1AC554600](a2, a3);
    MEMORY[0x1AC554600](0x6F6E2073656F6420, 0xEF74736978652074);
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD000000000000011, 0x80000001A605AA30, v9);

    return swift_willThrow();
  }
}

IOSurfaceRef sub_1A5D2BA98(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1A5D2BABC(a1, a2, a3);
  if (!v3 && !result)
  {
    __break(1u);
  }

  return result;
}

IOSurfaceRef sub_1A5D2BABC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A605ABE0);
  if (a3)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (a3)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1AC554600](v9, v10);

  sub_1A5BF63A0(2, 0xD000000000000032, 0x80000001A605ABA0);

  sub_1A5FD46AC();

  v22[0] = 0xD000000000000029;
  v22[1] = 0x80000001A605AC60;
  MEMORY[0x1AC554600](a1, a2);
  MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A605AC90);
  MEMORY[0x1AC554600](0x6361667275534F49, 0xEC00000066655265);
  sub_1A5BF63A0(2, 0xD000000000000029, 0x80000001A605AC60);

  v11 = *(v3 + 16);

  os_unfair_lock_lock(v11 + 6);
  sub_1A5D2CD64(&v11[4], v22);
  os_unfair_lock_unlock(v11 + 6);
  if (v4)
  {
  }

  else
  {
    v5 = v22[0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D00);
    v12 = sub_1A5FD455C();
    v13 = CFGetTypeID(v12);
    swift_unknownObjectRelease();
    if (v13 != IOSurfaceGetTypeID())
    {
      if (a3)
      {
        v14 = sub_1A5D2B33C(a1, a2);
        v15 = v14;
        IOSurface = CVPixelBufferGetIOSurface(v14);
        if (IOSurface)
        {
          v17 = IOSurface;
          v18 = IOSurface;

          return v17;
        }

        sub_1A5FD46AC();
        MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A605AA30);
        MEMORY[0x1AC554600](a1, a2);
        MEMORY[0x1AC554600](0xD00000000000003ALL, 0x80000001A605AC20);
        sub_1A5B16774();
        swift_allocError();
        sub_1A5D286A4(0, 0xE000000000000000, v21);

        swift_willThrow();
      }

      else
      {
        sub_1A5FD46AC();

        MEMORY[0x1AC554600](a1, a2);
        MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A605AC00);
        sub_1A5B16774();
        swift_allocError();
        sub_1A5D286A4(0xD000000000000011, 0x80000001A605AA30, v19);

        swift_willThrow();
      }
    }
  }

  return v5;
}

uint64_t sub_1A5D2BEA8()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_1A5D2C8EC((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  sub_1A5B16FA0(v3);
}

uint64_t sub_1A5D2BF18()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_1A5D2C99C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1A5D2BF90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A5D2C1A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A5D2C29C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(**v1 + 144))();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_1A5D2C300()
{
  v1 = sub_1A5D2C5A8(*v0);

  return v1;
}

uint64_t sub_1A5D2C3C4(uint64_t a1)
{
  v1 = *(*a1 + 16);

  os_unfair_lock_lock(v1 + 6);
  sub_1A5D2D3A0(&v4);
  os_unfair_lock_unlock(v1 + 6);
  v2 = v4;

  return v2;
}

char *sub_1A5D2C478(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A5D2C5A8(uint64_t a1)
{
  result = (*(*a1 + 144))();
  v3 = result;
  v4 = *(result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v2 == v4)
  {
    v6 = 0;
LABEL_24:

    v26 = *(v5 + 3);
    if (v26 < 2)
    {
      return v5;
    }

    v27 = v26 >> 1;
    v13 = __OFSUB__(v27, v6);
    v28 = v27 - v6;
    if (!v13)
    {
      *(v5 + 2) = v28;
      return v5;
    }
  }

  else
  {
    v7 = v2;
    v6 = 0;
    v8 = (result + 16 * v2 + 40);
    v9 = (MEMORY[0x1E69E7CC0] + 32);
    v10 = v2;
    v29 = v2;
    while ((v7 & 0x8000000000000000) == 0)
    {
      if (v10 >= *(v3 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(v8 - 1);
      v12 = *v8;
      if (v6)
      {

        v13 = __OFSUB__(v6--, 1);
        if (v13)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = *(v5 + 3);
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v15 = v3;
        v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2D90);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 17;
        }

        v21 = v20 >> 4;
        *(v18 + 2) = v17;
        *(v18 + 3) = 2 * (v20 >> 4);
        v22 = v18 + 32;
        v23 = *(v5 + 3) >> 1;
        v9 = &v18[16 * v23 + 32];
        v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;
        if (*(v5 + 2))
        {
          v25 = v5 + 32;
          if (v18 != v5 || v22 >= &v25[16 * v23])
          {
            memmove(v22, v25, 16 * v23);
          }

          *(v5 + 2) = 0;
        }

        else
        {
        }

        v5 = v18;
        v3 = v15;
        v7 = v29;
        v13 = __OFSUB__(v24, 1);
        v6 = v24 - 1;
        if (v13)
        {
          goto LABEL_30;
        }
      }

      ++v10;
      *v9 = v11;
      *(v9 + 1) = v12;
      v9 += 16;
      v8 += 2;
      if (v4 == v10)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5D2C7A0(uint64_t *a1, void *a2, uint64_t a3)
{
  v7 = (*(*v3 + 144))();
  v9 = v8;

  if (!a2)
  {
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *a1 = v7;
    a1[1] = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(v7 + 16);
    v12 = v11 - v9;
    if (v11 == v9)
    {
      v9 = *(v7 + 16);
      a3 = v12;
      goto LABEL_14;
    }

    v16 = v11 - v9;
    v13 = 0;
    v14 = (v7 + 16 * v9 + 40);
    while ((v9 & 0x8000000000000000) == 0)
    {
      if ((v9 + v13) >= *(v7 + 16))
      {
        goto LABEL_16;
      }

      v15 = *v14;
      *a2 = *(v14 - 1);
      a2[1] = v15;
      if (a3 - 1 == v13)
      {

        v9 += v13 + 1;
        goto LABEL_14;
      }

      ++v13;
      v14 += 2;
      a2 += 2;
      if (!(v9 - v11 + v13))
      {
        v9 = v11;
        a3 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1A5D2C8EC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A5B0E2A4(*(v2 + 16), *(v2 + 24));
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v11 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1A5B0EB68();
      v9 = v11;
    }

    sub_1A5B101C8((*(v9 + 56) + 32 * v7), a2);
    sub_1A5B0E7FC(v7, v9);
    *a1 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1A5D2C99C(uint64_t *a1)
{
  v2 = v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[6];
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = v2[4], v8 = v2[5], v9 = sub_1A5B0E2A4(v3, v4), (v10 & 1) != 0))
  {
    sub_1A5B101D8(*(v6 + 56) + 32 * v9, v15);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A605AB60);
    MEMORY[0x1AC554600](v7, v8);
    MEMORY[0x1AC554600](0x616E206874697720, 0xEB0000000020656DLL);
    MEMORY[0x1AC554600](v3, v4);
    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A605AB80);
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0, 0xE000000000000000, v11);

    swift_willThrow();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD000000000000018, 0x80000001A605AB20);
    MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A605AB40);
    MEMORY[0x1AC554600](v3, v4);
    MEMORY[0x1AC554600](0x7463656A626F203BLL, 0xEA0000000000203ALL);
    sub_1A5FD481C();
    sub_1A5BF63A0(2, 0, 0xE000000000000000);

    sub_1A5B101D8(v5, &v13);

    sub_1A5B0DE30(&v13, v3, v4);
  }

  return sub_1A5B16FA0(v15);
}

uint64_t sub_1A5D2CC10(uint64_t a1)
{
  *(a1 + 8) = sub_1A5D2CCBC(&qword_1EB1F2DD8);
  result = sub_1A5D2CCBC(&qword_1EB1F5CE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5D2CC78(uint64_t a1)
{
  result = sub_1A5D2CCBC(&qword_1EB1F5CE8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5D2CCBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NamedObjects();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5D2CD00()
{
  result = qword_1EB1F5CF0;
  if (!qword_1EB1F5CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F5CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5CF0);
  }

  return result;
}

uint64_t sub_1A5D2CDA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = *(v3 + 16), v9 = sub_1A5B0E2A4(v5, v6), (v10 & 1) != 0))
  {
    sub_1A5B101D8(*(v7 + 56) + 32 * v9, v14);
    sub_1A5B101C8(v14, v15);
    *&v14[0] = 0;
    *(&v14[0] + 1) = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A605ACB0);
    MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A605ACD0);
    MEMORY[0x1AC554600](v5, v6);
    MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605ACF0);
    sub_1A5FD481C();
    sub_1A5BF63A0(2, *&v14[0], *(&v14[0] + 1));

    sub_1A5B101C8(v15, v14);
    v11 = swift_dynamicCast();
    return (*(*(v8 - 8) + 56))(a2, v11 ^ 1u, 1, v8);
  }

  else
  {
    sub_1A5FD46AC();

    MEMORY[0x1AC554600](v5, v6);
    MEMORY[0x1AC554600](0x6F6E2073656F6420, 0xEF74736978652074);
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD000000000000011, 0x80000001A605AA30, v13);

    return swift_willThrow();
  }
}

uint64_t sub_1A5D2D004@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1A5B0E2A4(v4, v5), (v8 & 1) != 0))
  {
    sub_1A5B101D8(*(v6 + 56) + 32 * v7, v11);
    sub_1A5B101C8(v11, v12);
    *&v11[0] = 0;
    *(&v11[0] + 1) = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A605ACB0);
    MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A605ACD0);
    MEMORY[0x1AC554600](v4, v5);
    MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605ACF0);
    sub_1A5FD481C();
    sub_1A5BF63A0(2, *&v11[0], *(&v11[0] + 1));

    sub_1A5B101C8(v12, v11);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = xmmword_1A60326F0;
    }
  }

  else
  {
    sub_1A5FD46AC();

    MEMORY[0x1AC554600](v4, v5);
    MEMORY[0x1AC554600](0x6F6E2073656F6420, 0xEF74736978652074);
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD000000000000011, 0x80000001A605AA30, v10);

    return swift_willThrow();
  }

  return result;
}

void sub_1A5D2D230(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  sub_1A5B37FAC(v4);
  v6 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v7 = sub_1A5FD3BDC();

  v8 = [v6 initWithDictionary_];

  sub_1A5B37FAC(v5);
  v9 = sub_1A5FD3BDC();

  LOBYTE(v5) = [v8 isEqualToDictionary_];

  *a2 = v5;
}

uint64_t sub_1A5D2D368@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1A5D2D3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v31[1] = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v31 - v18;
  v20 = sub_1A5FD353C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v40;
  result = (*(*(*(a14 + 16) + 16) + 40))(a1, a2, a13, v22);
  if (!v25)
  {
    v31[0] = a13;
    v40 = v14;
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1A5D2D6AC(v19);
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1A5FD46AC();

      v38 = 0xD00000000000001BLL;
      v39 = 0x80000001A605AD10;
      MEMORY[0x1AC554600](a1, a2);
      v27 = v38;
      v28 = v39;
      sub_1A5B16774();
      swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      *(v29 + 20) = 2;
      return swift_willThrow();
    }

    else
    {
      (*(v21 + 32))(v24, v19, v20);
      type metadata accessor for E5RTProgramLibrary();
      v30 = sub_1A5D29938(v24);
      (*(a14 + 32))(v30, v32, v33, v34);
      (*(v21 + 8))(v24, v20);
    }
  }

  return result;
}

uint64_t sub_1A5D2D6AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5D2D714(uint64_t result, uint64_t a2)
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

uint64_t sub_1A5D2D790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7366664F65747962 && a2 == 0xEB00000000737465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A5D2D81C(uint64_t a1)
{
  v2 = sub_1A5D2DA14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D2D858(uint64_t a1)
{
  v2 = sub_1A5D2DA14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D2D894(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D2DA14();
  sub_1A5FD4CDC();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D20);
  sub_1A5D2E760(&qword_1EB1F5D28);
  sub_1A5FD4A5C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A5D2DA14()
{
  result = qword_1EB27D3F0[0];
  if (!qword_1EB27D3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27D3F0);
  }

  return result;
}

uint64_t sub_1A5D2DA68(uint64_t a1)
{
  sub_1A5FD4C1C();
  v2 = *(a1 + 16);
  MEMORY[0x1AC555420](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v3 += 4;
      sub_1A5FD4C4C();
      --v2;
    }

    while (v2);
  }

  return sub_1A5FD4C6C();
}

void *sub_1A5D2DADC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A5D2E030(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A5D2DB2C()
{
  v1 = *v0;
  result = MEMORY[0x1AC555420](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 4;
      result = sub_1A5FD4C4C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1A5D2DB80()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v3 += 4;
      sub_1A5FD4C4C();
      --v2;
    }

    while (v2);
  }

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D2DBF8(uint64_t a1)
{
  v2 = sub_1A5D2E380();

  return sub_1A5D2E814(a1, v2);
}

uint64_t sub_1A5D2DC38@<X0>(unsigned __int16 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_1A5D46C48(a1);
  if (!v5)
  {
    sub_1A5B16774();
    swift_allocError();
    v21 = v20;
    v22 = 0xD00000000000001BLL;
    v23 = 0x80000001A605AD70;
LABEL_19:
    sub_1A5D2869C(v22, v23, v21);
    return swift_willThrow();
  }

  v6 = v5;
  v7 = sub_1A5D2E380();
  result = sub_1A5D2E7CC(&type metadata for TensorStrides, v7);
  if (!result)
  {
    sub_1A5B16774();
    swift_allocError();
    v21 = v24;
    v22 = 0xD000000000000013;
    v23 = 0x80000001A605AD50;
    goto LABEL_19;
  }

  if (*(a2 + 16) < result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (*(a2 + 4 * result + 28) != v6)
  {
LABEL_18:
    sub_1A5B16774();
    swift_allocError();
    v21 = v25;
    v23 = 0x80000001A605AD30;
    v22 = 0xD000000000000017;
    goto LABEL_19;
  }

  v28 = *(a2 + 16);
  v9 = result;
  result = sub_1A5D2E01C(MEMORY[0x1E69E7CC0]);
  v10 = *(result + 16);
  if (v10)
  {
    v11 = result;
    v12 = 0;
    *(result + 32) = 1;
    v13 = 4 * v10 + 32;
    v14 = v28;
    v15 = (v9 - 1) + 1;
    v16 = (a2 + 36);
    while (v14 != v12)
    {
      if (v28 - 1 == v12)
      {
        goto LABEL_21;
      }

      v17 = *v16;
      if (!*v16)
      {
        goto LABEL_22;
      }

      v18 = *(v16 - 1);
      if (v17 > v18)
      {

        goto LABEL_18;
      }

      v19 = *(v11 + 24);
      if (v10 + v12 >= v19 >> 1)
      {
        v27 = v13;
        result = sub_1A5D2DF18((v19 > 1), v10 + 1 + v12, 1, v11);
        v13 = v27;
        v14 = v28;
        v11 = result;
      }

      *(v11 + 16) = v10 + 1 + v12;
      *(v11 + v13 + 4 * v12) = v18 / v17;
      ++v16;
      if (v15 == ++v12)
      {
        v26 = TtTrkRpnNode::config(v11);
        a3[3] = &type metadata for TensorShape;
        result = sub_1A5D2E3D4();
        a3[4] = result;
        *a3 = v26;
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1A5D2DED4@<X0>(void *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t *a3@<X8>)
{
  result = sub_1A5D2E1D8(a1, a2);
  *a3 = result;
  return result;
}

char *sub_1A5D2DF18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1A5D2E030(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D2DA14();
  sub_1A5FD4CCC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D20);
    sub_1A5D2E760(&qword_1EB1F5D78);
    sub_1A5FD497C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1A5D2E1D8(void *a1, unsigned __int16 a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 40))(v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = sub_1A5FD3F9C();
    *(v8 + 16) = v7;
    bzero((v8 + 32), 4 * v7);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 48))(v9, v10);
  result = sub_1A5D46C48(a2);
  if (v7)
  {
    LODWORD(v13) = result;
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v13 = v13 * v15;
      if ((v13 & 0xFFFFFFFF00000000) != 0)
      {
        break;
      }

      if (*(v11 + 16) <= v14)
      {
        goto LABEL_14;
      }

      v16 = *(v8 + 16);
      if (v16 < v14)
      {
        goto LABEL_15;
      }

      v15 = *(v11 + 32 + 4 * v14);
      if (v16 >= *(v8 + 24) >> 1)
      {
        v8 = sub_1A5D2DF18(1, v16 + 1, 1, v8);
        v16 = *(v8 + 16);
      }

      v17 = v8 + 4 * v14;
      result = memmove((v17 + 36), (v17 + 32), 4 * (v16 - v14));
      ++*(v8 + 16);
      *(v17 + 32) = v13;
      if (++v14 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v8;
  }

  return result;
}

unint64_t sub_1A5D2E380()
{
  result = qword_1EB1F5D30;
  if (!qword_1EB1F5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5D30);
  }

  return result;
}

unint64_t sub_1A5D2E3D4()
{
  result = qword_1EB1F5D38;
  if (!qword_1EB1F5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5D38);
  }

  return result;
}

unint64_t sub_1A5D2E428(void *a1)
{
  a1[1] = sub_1A5D2E468();
  a1[2] = sub_1A5D2E4BC();
  a1[3] = sub_1A5D2E510();
  result = sub_1A5D2E564();
  a1[4] = result;
  return result;
}

unint64_t sub_1A5D2E468()
{
  result = qword_1EB1F5D40;
  if (!qword_1EB1F5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5D40);
  }

  return result;
}

unint64_t sub_1A5D2E4BC()
{
  result = qword_1EB1F5D48;
  if (!qword_1EB1F5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5D48);
  }

  return result;
}

unint64_t sub_1A5D2E510()
{
  result = qword_1EB1F5D50;
  if (!qword_1EB1F5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5D50);
  }

  return result;
}

unint64_t sub_1A5D2E564()
{
  result = qword_1EB1F5D58;
  if (!qword_1EB1F5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5D58);
  }

  return result;
}

unint64_t sub_1A5D2E5BC()
{
  result = qword_1EB1F5D60;
  if (!qword_1EB1F5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5D60);
  }

  return result;
}

unint64_t sub_1A5D2E610(uint64_t a1)
{
  result = sub_1A5D2E380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D2E65C()
{
  result = qword_1EB27D880[0];
  if (!qword_1EB27D880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27D880);
  }

  return result;
}

unint64_t sub_1A5D2E6B4()
{
  result = qword_1EB27D990;
  if (!qword_1EB27D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB27D990);
  }

  return result;
}

unint64_t sub_1A5D2E70C()
{
  result = qword_1EB27D998[0];
  if (!qword_1EB27D998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27D998);
  }

  return result;
}

uint64_t sub_1A5D2E760(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F5D20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5D2E7CC(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 48))() + 16);

  if (!HIDWORD(v2))
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5D2E814(uint64_t a1, uint64_t a2)
{
  sub_1A5FD46AC();

  (*(a2 + 40))(a1, a2);
  v4 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](0x664F65747962203BLL, 0xEF203A7374657366);
  (*(a2 + 48))(a1, a2);
  v5 = MEMORY[0x1AC554750]();
  v7 = v6;

  MEMORY[0x1AC554600](v5, v7);

  return 0x203A6B6E6172;
}

uint64_t sub_1A5D2E958(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  sub_1A5BF63A0(2, 0xD000000000000033, 0x80000001A605AD90);

  v11 = *(a6 + 8);
  v12 = (*(v11 + 72))(a1, a2, a5, v11);
  if (v13 >> 60 == 15)
  {
    sub_1A5BF63A0(2, 0xD000000000000031, 0x80000001A605ADD0);
    result = (*(v11 + 56))(a1, a2, a5, v11);
    if (!v21)
    {
      v15 = result;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000024, 0x80000001A605AE10);
      MEMORY[0x1AC554600](0xD000000000000025, 0x80000001A605AE40);
      MEMORY[0x1AC554600](a1, a2);
      MEMORY[0x1AC554600](0x636166727573203BLL, 0xEB00000000203A65);
      type metadata accessor for IOSurfaceRef(0);
      sub_1A5FD481C();
      sub_1A5BF63A0(2, 0, 0xE000000000000000);

      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;

      sub_1A5D28FBC(v15, 1u, sub_1A5D2EDF4);
    }
  }

  else
  {
    v17 = v12;
    v18 = v13;
    sub_1A5FD46AC();

    sub_1A5B06670(v17, v18);
    v19 = sub_1A5FD358C();
    MEMORY[0x1AC554600](v19);

    sub_1A5B33704(v17, v18);
    sub_1A5BF63A0(2, 0xD00000000000003DLL, 0x80000001A605AE70);

    sub_1A5B06670(v17, v18);
    a3(v17, v18);
    sub_1A5B33704(v17, v18);
    return sub_1A5B33704(v17, v18);
  }

  return result;
}

uint64_t sub_1A5D2ECC0(__IOSurface *a1, void (*a2)(void))
{
  v4 = sub_1A5FD356C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  BaseAddress = IOSurfaceGetBaseAddress(a1);
  AllocSize = IOSurfaceGetAllocSize(a1);
  (*(v5 + 104))(v7, *MEMORY[0x1E6969010], v4);
  v10 = sub_1A5D2FE80(BaseAddress, AllocSize, v7);
  v12 = v11;
  a2();
  return sub_1A5B066DC(v10, v12);
}

uint64_t sub_1A5D2EE10(uint64_t a1, void (*a2)(unint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93[1] = a3;
  v94 = a2;
  v104 = sub_1A5FD356C();
  v10 = MEMORY[0x1EEE9AC00](v104);
  v107 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = MEMORY[0x1E69E7CC0];
  v12 = *(a1 + 16);
  if (!v12)
  {
    v100 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC8];
LABEL_36:
    v73 = v108;
    v94(v15, v10);
    if (v73)
    {

      v15 = v100;
      if (v100 >> 62)
      {
LABEL_73:
        v74 = sub_1A5FD484C();
        if (!v74)
        {
        }
      }

      else
      {
        v74 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v74)
        {
        }
      }

      if (v74 >= 1)
      {
        for (i = 0; i != v74; ++i)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v76 = MEMORY[0x1AC554EE0](i, v15);
          }

          else
          {
            v76 = *(v15 + 8 * i + 32);
          }

          v77 = v76;
          IOSurfaceUnlock(v76, 1u, 0);
        }
      }

      __break(1u);
    }

    else
    {

      v15 = v100;
      if (!(v100 >> 62))
      {
        v78 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v78)
        {
        }

        goto LABEL_47;
      }
    }

    v78 = sub_1A5FD484C();
    if (!v78)
    {
    }

LABEL_47:
    if (v78 < 1)
    {
      __break(1u);
LABEL_79:
      v82 = sub_1A5FD484C();
      if (v82)
      {
        goto LABEL_55;
      }
    }

    else
    {
      for (j = 0; j != v78; ++j)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v80 = MEMORY[0x1AC554EE0](j, v15);
        }

        else
        {
          v80 = *(v15 + 8 * j + 32);
        }

        v81 = v80;
        IOSurfaceUnlock(v80, 1u, 0);
      }
    }
  }

  v13 = *(a5 + 8);
  v99 = v13 + 56;
  v105 = *(v13 + 72);
  v106 = v13 + 72;
  v97 = *MEMORY[0x1E6969010];
  v95 = (v9 + 8);
  v96 = (v9 + 104);
  v14 = (a1 + 40);
  v15 = MEMORY[0x1E69E7CC8];
  v100 = MEMORY[0x1E69E7CC0];
  v102 = a4;
  v103 = v5;
  v16 = v107;
  v98 = v13;
  while (1)
  {
    v22 = *(v14 - 1);
    v23 = *v14;

    v24 = v105(v22, v23, a4, v13);
    v110 = v12;
    if (v25 >> 60 == 15)
    {
      break;
    }

    v38 = v24;
    v39 = v25;
    sub_1A5B06670(v24, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = v15;
    v41 = v22;
    v42 = sub_1A5B0E2A4(v22, v23);
    v44 = *(v15 + 16);
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v48 = v43;
    if (*(v15 + 24) < v47)
    {
      sub_1A5D2F8A4(v47, isUniquelyReferenced_nonNull_native);
      v42 = sub_1A5B0E2A4(v41, v23);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_85;
      }

LABEL_18:
      if ((v48 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v67 = v42;
    sub_1A5D2FB60();
    v42 = v67;
    if ((v48 & 1) == 0)
    {
LABEL_19:
      v15 = v111;
      v111[(v42 >> 6) + 8] |= 1 << v42;
      v50 = (*(v15 + 48) + 16 * v42);
      *v50 = v41;
      v50[1] = v23;
      v51 = (*(v15 + 56) + 16 * v42);
      *v51 = v38;
      v51[1] = v39;
      sub_1A5B33704(v38, v39);
      v52 = *(v15 + 16);
      v46 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v46)
      {
        goto LABEL_71;
      }

      *(v15 + 16) = v53;
      goto LABEL_4;
    }

LABEL_3:
    v17 = v42;

    v15 = v111;
    v18 = (v111[7] + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    *v18 = v38;
    v18[1] = v39;
    sub_1A5B066DC(v19, v20);
    sub_1A5B33704(v38, v39);
LABEL_4:
    a4 = v102;
    v16 = v107;
    v21 = v110;
    v13 = v98;
LABEL_5:
    v14 += 2;
    v12 = v21 - 1;
    if (!v12)
    {
      goto LABEL_36;
    }
  }

  v26 = v108;
  v27 = (*(v13 + 56))(v22, v23, a4, v13);
  v108 = v26;
  if (!v26)
  {
    v28 = v27;
    v109 = v22;
    v29 = IOSurfaceLock(v27, 1u, 0);
    v30 = v28;
    MEMORY[0x1AC554720]();
    if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A5FD3F7C();
      v16 = v107;
    }

    sub_1A5FD3FBC();
    v100 = v112;
    if (v29)
    {

      sub_1A5B16774();
      swift_allocError();
      *v86 = 0xD00000000000001BLL;
      *(v86 + 8) = 0x80000001A605A660;
      *(v86 + 16) = 0;
      *(v86 + 20) = 1;
      swift_willThrow();

      v87 = v100;
      if (v100 >> 62)
      {
        v88 = sub_1A5FD484C();
        if (!v88)
        {
        }
      }

      else
      {
        v88 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v88)
        {
        }
      }

      if (v88 < 1)
      {
        goto LABEL_84;
      }

      for (k = 0; k != v88; ++k)
      {
        if ((v87 & 0xC000000000000001) != 0)
        {
          v90 = MEMORY[0x1AC554EE0](k, v87);
        }

        else
        {
          v90 = *(v87 + 8 * k + 32);
        }

        v91 = v90;
        IOSurfaceUnlock(v90, 1u, 0);
      }
    }

    BaseAddress = IOSurfaceGetBaseAddress(v30);
    v101 = v30;
    AllocSize = IOSurfaceGetAllocSize(v30);
    (*v96)(v16, v97, v104);
    sub_1A5FD355C();
    if (AllocSize)
    {
      sub_1A5FD343C();
      swift_allocObject();

      v33 = sub_1A5FD33DC();
      v34 = sub_1A5FD342C();
      *v35 |= 0x8000000000000000;
      v34(&v111, 0);
      AllocSize = sub_1A5D2FD9C(v33, AllocSize);
      v37 = v36;
    }

    else
    {
      v54 = sub_1A5FD355C();
      v54(BaseAddress, 0);

      v37 = 0xC000000000000000;
    }

    (*v95)(v16, v104);
    sub_1A5B06670(AllocSize, v37);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v111 = v15;
    v56 = sub_1A5B0E2A4(v109, v23);
    v58 = *(v15 + 16);
    v59 = (v57 & 1) == 0;
    v46 = __OFADD__(v58, v59);
    v60 = v58 + v59;
    if (v46)
    {
      goto LABEL_70;
    }

    v61 = v57;
    if (*(v15 + 24) >= v60)
    {
      if (v55)
      {
        goto LABEL_27;
      }

      v68 = v56;
      sub_1A5D2FB60();
      v56 = v68;
      v16 = v107;
      if ((v61 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_28:
      v63 = v56;

      v15 = v111;
      v64 = (v111[7] + 16 * v63);
      v65 = *v64;
      v66 = v64[1];
      *v64 = AllocSize;
      v64[1] = v37;
      sub_1A5B066DC(v65, v66);
      sub_1A5B066DC(AllocSize, v37);
    }

    else
    {
      sub_1A5D2F8A4(v60, v55);
      v56 = sub_1A5B0E2A4(v109, v23);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_85;
      }

LABEL_27:
      v16 = v107;
      if (v61)
      {
        goto LABEL_28;
      }

LABEL_32:
      v15 = v111;
      v111[(v56 >> 6) + 8] |= 1 << v56;
      v69 = (*(v15 + 48) + 16 * v56);
      *v69 = v109;
      v69[1] = v23;
      v70 = (*(v15 + 56) + 16 * v56);
      *v70 = AllocSize;
      v70[1] = v37;
      sub_1A5B066DC(AllocSize, v37);

      v71 = *(v15 + 16);
      v46 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v46)
      {
        goto LABEL_72;
      }

      *(v15 + 16) = v72;
    }

    a4 = v102;
    v21 = v110;
    goto LABEL_5;
  }

  v15 = v100;
  if (v100 >> 62)
  {
    goto LABEL_79;
  }

  v82 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v82)
  {
  }

LABEL_55:
  if (v82 >= 1)
  {
    for (m = 0; m != v82; ++m)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v84 = MEMORY[0x1AC554EE0](m, v15);
      }

      else
      {
        v84 = *(v15 + 8 * m + 32);
      }

      v85 = v84;
      IOSurfaceUnlock(v84, 1u, 0);
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_1A5FD4B8C();
  __break(1u);
  return result;
}

uint64_t sub_1A5D2F728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for IOSurfaceRef(0);
  v14[3] = v10;
  v14[0] = a1;
  v11 = *(a5 + 24);
  v12 = a1;
  v11(v14, 0x6361667275534F49, 0xEC00000066655265, a2, a3, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1A5D2F7E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CVBuffer(0);
  v14[3] = v10;
  v14[0] = a1;
  v11 = *(a5 + 24);
  v12 = a1;
  v11(v14, 0xD000000000000010, 0x80000001A605AEB0, a2, a3, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1A5D2F8A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D80);
  v33 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1A5B06670(v34, *(&v34 + 1));
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();
      result = sub_1A5FD4C6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A5D2FB60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D80);
  v2 = *v0;
  v3 = sub_1A5FD485C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1A5B06670(v22, *(&v22 + 1));
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

uint64_t sub_1A5D2FCE4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1A5D2FD9C(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1A5FD359C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1A5FD33EC();
  if (v3)
  {
    result = sub_1A5FD341C();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1A5FD340C();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1A5D2FCE4(v3, v7);

  return v8;
}

uint64_t sub_1A5D2FE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5FD356C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5FD355C();
  if (a2)
  {
    sub_1A5FD343C();
    swift_allocObject();

    v10 = sub_1A5FD33DC();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = sub_1A5FD342C();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_1A5D2FD9C(v10, a2);
  }

  else
  {
    v13 = sub_1A5FD355C();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t sub_1A5D300B8(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 48))() + 16);

  if (!HIDWORD(v2))
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5D30100(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(v4() + 16);

  if (!v5)
  {
    return 0;
  }

  result = (v4)(a1, a2);
  v7 = *(result + 16);
  if (!v7)
  {
    v9 = 1;
LABEL_9:

    return v9;
  }

  v8 = (result + 32);
  LODWORD(v9) = 1;
  while (1)
  {
    v10 = *v8++;
    v9 = v10 * v9;
    if ((v9 & 0xFFFFFFFF00000000) != 0)
    {
      break;
    }

    if (!--v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5D301AC(uint64_t a1, void (**a2)(void, void))
{
  sub_1A5FD46AC();

  a2[5](a1, a2);
  v4 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](0x3A73657A6973203BLL, 0xE900000000000020);
  a2[6](a1, a2);
  v5 = MEMORY[0x1AC554750]();
  v7 = v6;

  MEMORY[0x1AC554600](v5, v7);

  MEMORY[0x1AC554600](0xD000000000000010, 0x80000001A605AED0);
  a2[7](a1, a2);
  v8 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v8);

  return 0x203A6B6E6172;
}

uint64_t sub_1A5D303BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = (*(v3 + 40))(a1, v3);
  result = (*(v3 + 48))(a1, v3);
  if (v4)
  {
    v6 = 0;
    v7 = *(result + 16);
    v8 = 36;
    v9 = 1;
    while (1)
    {
      if (v7 == v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (*(result + 32 + 4 * v6) != 1)
      {
        break;
      }

      ++v6;
      v8 += 4;
      ++v9;
      if (v4 == v6)
      {
        v6 = 0;
LABEL_18:

        return v6;
      }
    }

    if (v4 - 1 == v6)
    {
      goto LABEL_18;
    }

    v10 = ~v6;
    v11 = ~v6 + v4;
    if (v7 <= v9)
    {
      v7 = v9;
    }

    v12 = &v7[v10];
    if (v9 <= v4)
    {
      v9 = v4;
    }

    v13 = v10 + v9;
    while (v13)
    {
      if (!v12)
      {
        goto LABEL_21;
      }

      if (*(result + v8) != 1)
      {

        v6 = "; elementCount: ";
        sub_1A5B16774();
        swift_allocError();
        sub_1A5D2869C(0xD000000000000024, 0x80000001A605AEF0, v14);
        swift_willThrow();
        return v6;
      }

      v8 += 4;
      --v12;
      --v13;
      if (!--v11)
      {
        goto LABEL_18;
      }
    }

LABEL_22:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1A5D3053C()
{
  result = swift_isClassType();
  if (result)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5D305A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = (*(a2 + 24))(a1, a2);
  v5 = sub_1A5FD3D2C();
  v6 = [v4 URLForResource:v5 withExtension:0];

  if (v6)
  {
    sub_1A5FD351C();

    v7 = 0;
    v4 = v6;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1A5FD353C();
  return (*(*(v8 - 8) + 56))(a3, v7, 1, v8);
}

uint64_t sub_1A5D306A4(uint64_t a1, uint64_t a2)
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x696669746E656469, 0xEC000000203A7265);
  v4 = *(a2 + 8);
  v5 = (*(v4 + 16))(a1, v4);
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
  (*(v4 + 24))(a1, v4);
  sub_1A5D30870();
  v6 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v6);

  MEMORY[0x1AC554600](0xD000000000000021, 0x80000001A605AF20);
  (*(a2 + 16))(a1, a2);
  sub_1A5D308C4();
  v7 = sub_1A5FD4ACC();
  v9 = v8;

  MEMORY[0x1AC554600](v7, v9);

  return 0;
}

unint64_t sub_1A5D30870()
{
  result = qword_1EB1F5D88;
  if (!qword_1EB1F5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5D88);
  }

  return result;
}

unint64_t sub_1A5D308C4()
{
  result = qword_1EB1F5D90;
  if (!qword_1EB1F5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5D90);
  }

  return result;
}

unint64_t sub_1A5D30918()
{
  result = sub_1A5D35620(MEMORY[0x1E69E7CC0]);
  qword_1EB27DA28 = result;
  return result;
}

uint64_t type metadata accessor for E5RTInferenceFunctionDescriptor()
{
  result = qword_1EB27DE30;
  if (!qword_1EB27DE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A5D3098C(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t (*a3)(_BYTE *, unint64_t))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v27 = MEMORY[0x1E69E7CC0];
  a2(0, v3, 0);
  v4 = v27;
  v25 = a1 + 64;
  result = sub_1A5FD462C();
  v7 = result;
  v8 = 0;
  v23 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v25 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 36);
    sub_1A5B180A0(*(a1 + 56) + 40 * v7, v26);
    v27 = v4;
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      a2(v13 > 1, v14 + 1, 1);
      v4 = v27;
    }

    *(v4 + 16) = v14 + 1;
    result = a3(v26, v4 + 40 * v14 + 32);
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v11);
    if ((v15 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v7 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v23;
    }

    else
    {
      v17 = v11 << 6;
      v18 = v11 + 1;
      v10 = v23;
      v19 = (a1 + 72 + 8 * v11);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1A5D36AF4(v7, v12, 0);
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1A5D36AF4(v7, v12, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1A5D30BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1A5B76AEC(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1A5FD462C();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1A5B76AEC((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1A5D36AF4(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1A5D36AF4(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1A5D30E00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  v10 = a6 + v9[6];
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v32 = v9[7];
  v11 = a6 + v9[12];
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = a1[2];
  v13 = *(*v12 + 120);

  v36 = v13(v14);
  MEMORY[0x1AC554600](58, 0xE100000000000000);
  v15 = a1[3];
  v16 = a1[4];

  MEMORY[0x1AC554600](v15, v16);

  v17 = TtTrkRpnNode::config(v36);
  v19 = v18;
  LODWORD(v15) = v20;
  v31 = v21;
  v29 = v17;
  v30 = HIDWORD(v20);
  v22 = a6 + v9[11];
  v23 = OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_url;
  v24 = sub_1A5FD353C();
  (*(*(v24 - 8) + 16))(a6, v12 + v23, v24);
  *(a6 + v32) = 0;

  v25 = sub_1A5D3598C(a2);

  *(a6 + v9[8]) = v25;
  v26 = sub_1A5D3598C(a4);

  *(a6 + v9[9]) = v26;
  v27 = sub_1A5D35BC0(a3);

  *(a6 + v9[10]) = v27;
  sub_1A5D35DF4(a5, v10);

  *(a6 + v9[5]) = a1;
  *v22 = v29;
  *(v22 + 8) = v19;
  *(v22 + 16) = v15;
  *(v22 + 20) = v30;
  *(v22 + 24) = v31;
  sub_1A5BF63A0(2, 0xD00000000000003ELL, 0x80000001A605AF50);

  return sub_1A5B10168(a5, &qword_1EB1F5D98);
}

uint64_t sub_1A5D31068(uint64_t a1, uint64_t a2)
{
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  v5 = *(v2 + *(type metadata accessor for E5RTInferenceFunctionDescriptor() + 28));
  if (v5 && *(v5 + 16) && (v6 = sub_1A5B0E2A4(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;

    return *(*(v5 + 56) + 12 * v8);
  }

  else
  {
    sub_1A5B16774();
    swift_allocError();
    *v10 = 0xD00000000000002BLL;
    *(v10 + 8) = 0x80000001A605AF90;
    *(v10 + 16) = 0;
    *(v10 + 20) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_1A5D31198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for E5RTInferenceFunctionDescriptor() + 32));
  if (*(v7 + 16))
  {
    v8 = sub_1A5B0E2A4(a1, a2);
    if (v9)
    {
      return sub_1A5B180A0(*(v7 + 56) + 40 * v8, a3);
    }
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  sub_1A5B16774();
  swift_allocError();
  sub_1A5D286A4(0xD00000000000001CLL, 0x80000001A605AFC0, v11);

  return swift_willThrow();
}

uint64_t sub_1A5D312AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for E5RTInferenceFunctionDescriptor() + 36));
  if (*(v7 + 16))
  {
    v8 = sub_1A5B0E2A4(a1, a2);
    if (v9)
    {
      return sub_1A5B180A0(*(v7 + 56) + 40 * v8, a3);
    }
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  sub_1A5B16774();
  swift_allocError();
  sub_1A5D286A4(0xD00000000000001DLL, 0x80000001A605AFE0, v11);

  return swift_willThrow();
}

uint64_t sub_1A5D313C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v10 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB27DA20 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB27DA28;
  if (*(qword_1EB27DA28 + 16) && (v15 = sub_1A5B0E2A4(a1, a2), (v16 & 1) != 0))
  {
    v29 = a1;
    v30 = a2;
    v31 = v5;
    v17 = *(*(v14 + 56) + 8 * v15);
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v18 = *(v17 + 16);
    v32 = v17;
    if (v18)
    {
      v19 = v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v20 = *(v11 + 72);

      do
      {
        sub_1A5D361F8(v19, v13);
        if (sub_1A5D45F2C(*&v13[*(v10 + 44) + 16], *&v13[*(v10 + 44) + 24], a3, a4))
        {
          *(&v36 + 1) = v10;
          v37 = sub_1A5D36774(&qword_1EB1F5DA8, type metadata accessor for E5RTInferenceFunctionDescriptor);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
          sub_1A5D362B8(v13, boxed_opaque_existential_1);
          sub_1A5B10168(&v38, &qword_1EB1F5DA0);
          v38 = v35;
          v39 = v36;
          v40 = v37;
        }

        else
        {
          sub_1A5D3625C(v13);
        }

        v19 += v20;
        --v18;
      }

      while (v18);
    }

    else
    {
    }

    sub_1A5B31A34(&v38, &v35, &qword_1EB1F5DA0);
    if (*(&v36 + 1))
    {
      sub_1A5B10168(&v35, &qword_1EB1F5DA0);
      result = sub_1A5B31A34(&v38, &v35, &qword_1EB1F5DA0);
      if (*(&v36 + 1))
      {
        sub_1A5B10168(&v38, &qword_1EB1F5DA0);

        return sub_1A5B063D4(&v35, v41);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      sub_1A5B10168(&v35, &qword_1EB1F5DA0);
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000029, 0x80000001A605B000);
      MEMORY[0x1AC554600](v29, v30);
      MEMORY[0x1AC554600](0x7372657620666F20, 0xEC000000206E6F69);
      v33 = a3;
      v34 = a4;
      sub_1A5D30870();
      v25 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v25);

      v26 = v35;
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D286A4(v26, *(&v26 + 1), v27);

      swift_willThrow();
      return sub_1A5B10168(&v38, &qword_1EB1F5DA0);
    }
  }

  else
  {
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_1A5FD46AC();

    *&v38 = 0xD000000000000029;
    *(&v38 + 1) = 0x80000001A605B000;
    MEMORY[0x1AC554600](a1, a2);
    v22 = v38;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(v22, *(&v22 + 1), v23);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A5D31830(uint64_t a1)
{
  v2 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A5D332D8(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1A5D361F8(v8, v5);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A5D332D8((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1A5D36774(&qword_1EB1F5DA8, type metadata accessor for E5RTInferenceFunctionDescriptor);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1A5D361F8(v5, boxed_opaque_existential_1);
      *(v7 + 16) = v11 + 1;
      sub_1A5B063D4(&v14, v7 + 40 * v11 + 32);
      sub_1A5D3625C(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A5D31A08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5FD353C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A5D31A70()
{

  v1 = sub_1A5D3098C(v0, sub_1A5D33258, sub_1A5B72510);

  return v1;
}

uint64_t sub_1A5D31AF0()
{

  v1 = sub_1A5D30BD8(v0);

  return v1;
}

uint64_t sub_1A5D31B44()
{

  v1 = sub_1A5D3098C(v0, sub_1A5D33258, sub_1A5B72510);

  return v1;
}

uint64_t sub_1A5D31BC0()
{

  v1 = sub_1A5D3098C(v0, sub_1A5D33298, sub_1A5B72510);

  return v1;
}

uint64_t sub_1A5D31C3C@<X0>(uint64_t a1@<X8>)
{

  v3 = sub_1A5D3098C(v2, sub_1A5D33298, sub_1A5B72510);

  if (*(v3 + 16) == 1)
  {
    sub_1A5B180A0(v3 + 32, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1A5D31CF4(uint64_t a1, uint64_t a2)
{
  result = sub_1A5D31068(a1, a2);
  if (v2)
  {
    return v4 | ((HIDWORD(v4) & 1) << 32);
  }

  return result;
}

uint64_t sub_1A5D31DC4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_1A5D31E5C(uint64_t a1)
{
  v2 = sub_1A5D36774(&qword_1EB1F5DB0, type metadata accessor for E5RTInferenceFunctionDescriptor);

  return sub_1A5D306A4(a1, v2);
}

uint64_t sub_1A5D31EC8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[0] = 46;
  v27 = v30;

  v7 = sub_1A5D350F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A5D365D8, v26, a1, a2, v6);
  v8 = *(v7 + 16);
  if (!v8)
  {

    sub_1A5FD457C();
    goto LABEL_16;
  }

  v9 = (v7 + 32 * v8);
  v10 = *v9;
  v11 = v9[1];
  v13 = v9[2];
  v12 = v9[3];

  v14 = sub_1A5FD457C();
  if (!v12)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v13 == v16 && v12 == v17 && v10 >> 16 == v14 >> 16 && v11 >> 16 == v15 >> 16)
  {

LABEL_19:
    v30[0] = 7628142;
    v30[1] = 0xE300000000000000;
    v28 = a1;
    v29 = a2;

    v28 = sub_1A5FD3E5C();
    v29 = v22;
    sub_1A5FD3DFC();
    goto LABEL_20;
  }

  v21 = sub_1A5FD4ABC();

  if (v21)
  {
    goto LABEL_19;
  }

LABEL_17:

LABEL_20:
  v23 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  v24 = sub_1A5D36774(&qword_1EB1F5DB0, type metadata accessor for E5RTInferenceFunctionDescriptor);
  sub_1A5D305A4(v23, v24, a3);
}

uint64_t sub_1A5D32118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v114 = a8;
  *&v113 = a7;
  v110 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v109 = (&v105 - v18);
  v19 = sub_1A5FD353C();
  v111 = *(v19 - 8);
  v112 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = 0;
  v129 = 0xE000000000000000;
  sub_1A5FD46AC();

  v128 = 0xD000000000000023;
  v129 = 0x80000001A605B030;
  MEMORY[0x1AC554600](a2, a3);
  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v115 = a4;
  MEMORY[0x1AC554600](a4, a5);
  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v22 = MEMORY[0x1AC554750](a6, MEMORY[0x1E69E6158]);
  MEMORY[0x1AC554600](v22);

  sub_1A5BF63A0(2, v128, v129);

  v23 = v132;
  result = (*(*a1 + 264))(a2, a3);
  if (!v23)
  {
    v132 = a5;
    v108 = v21;
    if (result)
    {
      v25 = result;
      v128 = 0;
      v129 = 0xE000000000000000;
      sub_1A5FD46AC();

      v128 = 0xD00000000000002ELL;
      v129 = 0x80000001A605B060;
      *&v125 = v25;
      type metadata accessor for E5RTFunction();
      sub_1A5D36774(&qword_1EB1F5DB8, type metadata accessor for E5RTFunction);
      v26 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v26);

      sub_1A5BF63A0(2, v128, v129);

      sub_1A5D364A0(a1, v25);
      LODWORD(v107) = v27;
      v106 = v28;
      sub_1A5BF63A0(2, 0xD000000000000035, 0x80000001A605B090);
      sub_1A5BF63A0(2, 0xD000000000000036, 0x80000001A605B0D0);
      (*(*v25 + 328))(&v125, &type metadata for ImageTensorDescriptor, v115, v132);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5DC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2E38);
      swift_dynamicCast();
      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A605B110);
      MEMORY[0x1AC554600](0xD000000000000020, 0x80000001A605B130);
      __swift_project_boxed_opaque_existential_1(&v128, v130);
      sub_1A5FD4AEC();
      sub_1A5BF63A0(2, v125, *(&v125 + 1));

      v30 = (*(*v25 + 352))(a6);
      v132 = 0;
      v31 = v30;
      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;

      sub_1A5FD46AC();

      *&v125 = 0xD000000000000037;
      *(&v125 + 1) = 0x80000001A605B160;
      v32 = MEMORY[0x1AC554750](v31, v29);
      v34 = v33;

      MEMORY[0x1AC554600](v32, v34);

      sub_1A5BF63A0(2, v125, *(&v125 + 1));

      v127 = 0;
      v125 = 0u;
      v126 = 0u;
      if (!v114)
      {
LABEL_40:
        sub_1A5BF63A0(2, 0xD000000000000042, 0x80000001A605B1A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5DC8);
        inited = swift_initStackObject();
        v113 = xmmword_1A5FF36F0;
        *(inited + 16) = xmmword_1A5FF36F0;
        v72 = v130;
        v73 = v131;
        v74 = __swift_project_boxed_opaque_existential_1(&v128, v130);
        *(inited + 56) = v72;
        *(inited + 64) = *(v73 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
        (*(*(v72 - 8) + 16))(boxed_opaque_existential_1, v74, v72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5DD0);
        v76 = swift_initStackObject();
        *(v76 + 16) = v113;
        sub_1A5B180A0(&v128, v76 + 32);
        sub_1A5B31A34(&v125, &v118, &qword_1EB1F5DD8);
        v77 = *(&v119 + 1);
        v114 = v76;
        v115 = inited;
        if (*(&v119 + 1))
        {
          v78 = v120;
          v79 = __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
          *(&v122 + 1) = v77;
          v123 = *(v78 + 8);
          v80 = __swift_allocate_boxed_opaque_existential_1(&v121);
          (*(*(v77 - 8) + 16))(v80, v79, v77);
          __swift_destroy_boxed_opaque_existential_1(&v118);
        }

        else
        {
          sub_1A5B10168(&v118, &qword_1EB1F5DD8);
          v121 = 0u;
          v122 = 0u;
          v123 = 0;
        }

        v81 = v110;
        v82 = type metadata accessor for E5RTInferenceFunctionDescriptor();
        v81[3] = v82;
        v81[4] = sub_1A5D36774(&qword_1EB1F5DE0, type metadata accessor for E5RTInferenceFunctionDescriptor);
        v83 = __swift_allocate_boxed_opaque_existential_1(v81);
        v84 = v83 + v82[6];
        *&v113 = v84;
        *(v84 + 4) = 0;
        *v84 = 0u;
        *(v84 + 1) = 0u;
        v108 = v82[7];
        v85 = v83 + v82[12];
        *(v85 + 4) = 0;
        *v85 = 0u;
        *(v85 + 1) = 0u;
        v86 = v25[2];
        v87 = *(*v86 + 120);

        *&v118 = v87(v88);
        *(&v118 + 1) = v89;
        MEMORY[0x1AC554600](58, 0xE100000000000000);
        v90 = v25[3];
        v91 = v25[4];

        MEMORY[0x1AC554600](v90, v91);

        v92 = TtTrkRpnNode::config(v118);
        v106 = v93;
        v107 = v92;
        v105 = v94;
        LODWORD(v110) = v95;
        v109 = HIDWORD(v93);
        v96 = v83 + v82[11];
        (*(v111 + 16))(v83, v86 + OBJC_IVAR____TtC6Vision18E5RTProgramLibrary_url, v112);
        *&v108[v83] = 0;

        v97 = v115;
        v98 = sub_1A5D3598C(v115);
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1(v97 + 32);
        *(v83 + v82[8]) = v98;
        v99 = sub_1A5D3598C(v31);

        *(v83 + v82[9]) = v99;
        v100 = v114;
        v101 = sub_1A5D35BC0(v114);
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1(v100 + 32);
        *(v83 + v82[10]) = v101;
        sub_1A5D35DF4(&v121, v113);

        v102 = v105;

        *(v83 + v82[5]) = v25;
        v103 = v106;
        *v96 = v107;
        *(v96 + 1) = v102;
        v104 = v109;
        *(v96 + 4) = v103;
        *(v96 + 5) = v104;
        *(v96 + 6) = v110;
        sub_1A5BF63A0(2, 0xD00000000000003ELL, 0x80000001A605AF50);

        sub_1A5B10168(&v121, &qword_1EB1F5D98);
        goto LABEL_44;
      }

      v35 = v132;
      (*(*v25 + 320))(&v121, v113);
      v132 = v35;
      if (v35)
      {

LABEL_44:
        sub_1A5B10168(&v125, &qword_1EB1F5DD8);
        return __swift_destroy_boxed_opaque_existential_1(&v128);
      }

      v36 = a11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5DE8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v120 = 0;
        v118 = 0u;
        v119 = 0u;
      }

      sub_1A5B88C44(&v118, &v125, &qword_1EB1F5DD8);
      v37 = v108;
      v38 = v109;
      if (a11)
      {
        v39 = type metadata accessor for E5RTInferenceFunctionDescriptor();
        v40 = sub_1A5D36774(&qword_1EB1F5DB0, type metadata accessor for E5RTInferenceFunctionDescriptor);
        v41 = v132;
        sub_1A5D305A4(v39, v40, v38);
        if (v41)
        {

          sub_1A5B10168(&v125, &qword_1EB1F5DD8);
          return __swift_destroy_boxed_opaque_existential_1(&v128);
        }

        v43 = v111;
        v42 = v112;
        result = (*(v111 + 48))(v38, 1, v112);
        if (result == 1)
        {
          goto LABEL_50;
        }

        (*(v43 + 32))(v37, v38, v42);
        result = sub_1A5B31A34(&v125, &v118, &qword_1EB1F5DD8);
        v44 = *(&v119 + 1);
        if (!*(&v119 + 1))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v32 = v120;
        v45 = __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
        v46 = v44;
        v36 = v45;
        result = sub_1A5D49EBC(v46, v32, &v116);
        v132 = 0;
        if (!v117)
        {
LABEL_52:
          __break(1u);
          return result;
        }

        (*(v111 + 8))(v37, v112);
        sub_1A5B063D4(&v116, &v121);
        sub_1A5B88C44(&v121, &v125, &qword_1EB1F5DD8);
        __swift_destroy_boxed_opaque_existential_1(&v118);
      }

      *&v113 = *(v31 + 16);
      v115 = v31;
      if (v113)
      {
        v47 = v31;
        v48 = 0;
        v49 = (v47 + 32);
        while (v48 < v115[2])
        {
          sub_1A5B180A0(v49, &v121);
          v50 = *(&v126 + 1);
          if (*(&v126 + 1))
          {
            v51 = v127;
            v52 = __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
            v114 = &v105;
            v53 = *(v50 - 8);
            v54 = MEMORY[0x1EEE9AC00](v52);
            v56 = &v105 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v53 + 16))(v56, v54);
            v38 = (*(*(v51 + 8) + 40))(v50);
            v32 = v57;
            (*(v53 + 8))(v56, v50);
          }

          else
          {
            v38 = 0;
            v32 = 0;
          }

          v58 = *(&v122 + 1);
          v59 = v123;
          __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
          v60 = (*(v59 + 40))(v58, v59);
          v36 = v61;
          if (v32)
          {
            if (v38 == v60 && v32 == v61)
            {

              __swift_destroy_boxed_opaque_existential_1(&v121);
              goto LABEL_39;
            }

            v63 = sub_1A5FD4B0C();

            __swift_destroy_boxed_opaque_existential_1(&v121);
            if (v63)
            {
              goto LABEL_39;
            }
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v121);
          }

          v48 = (v48 + 1);
          v49 += 40;
          if (v113 == v48)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_46:
        isUniquelyReferenced_nonNull_native = sub_1A5D33CD4(0, v48[2] + 1, 1, v48);
        v48 = isUniquelyReferenced_nonNull_native;
        v124 = isUniquelyReferenced_nonNull_native;
LABEL_35:
        v68 = v48[2];
        v67 = v48[3];
        if (v68 >= v67 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1A5D33CD4((v67 > 1), v68 + 1, 1, v48);
          v115 = isUniquelyReferenced_nonNull_native;
          v124 = isUniquelyReferenced_nonNull_native;
        }

        else
        {
          v115 = v48;
        }

        v69 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
        v70 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        v109(v70, v49, v36, v69);
        sub_1A5B20684(v68, v70, &v124, v36, *(v113 + 8));
        (*(v38 + 8))(v49, v36);
        __swift_destroy_boxed_opaque_existential_1(&v121);
LABEL_39:
        v31 = v115;
        goto LABEL_40;
      }

LABEL_33:
      result = sub_1A5B31A34(&v125, &v121, &qword_1EB1F5DD8);
      v36 = *(&v122 + 1);
      if (*(&v122 + 1))
      {
        *&v113 = v123;
        v64 = __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        v38 = *(v36 - 8);
        v32 = *(v38 + 64);
        v65 = MEMORY[0x1EEE9AC00](v64);
        v49 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        v109 = *(v38 + 16);
        (v109)(v49, v65);
        v48 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = v48;
        v114 = &v105;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_35;
        }

        goto LABEL_46;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  return result;
}

uint64_t sub_1A5D331EC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

void *sub_1A5D33258(void *a1, int64_t a2, char a3)
{
  result = sub_1A5D33318(a1, a2, a3, *v3, &qword_1EB1F5DC8, &unk_1A6032CB8, &qword_1EB1F5DC0);
  *v3 = result;
  return result;
}

void *sub_1A5D33298(void *a1, int64_t a2, char a3)
{
  result = sub_1A5D33318(a1, a2, a3, *v3, &qword_1EB1F5DD0, &unk_1A6032CC0, &qword_1EB1F2E38);
  *v3 = result;
  return result;
}

void *sub_1A5D332D8(void *a1, int64_t a2, char a3)
{
  result = sub_1A5D33318(a1, a2, a3, *v3, &qword_1EB1F5E48, &unk_1A6032E00, &qword_1EB1F5E50);
  *v3 = result;
  return result;
}

void *sub_1A5D33318(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
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

size_t sub_1A5D33460(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5E58);
  v10 = *(type metadata accessor for E5RTInferenceFunctionDescriptor() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for E5RTInferenceFunctionDescriptor() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A5D33638(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_1A5FD486C();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_1A5B180A0(v27, v38);
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();
      result = sub_1A5FD4C6C();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

void *sub_1A5D33908(uint64_t *a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v3;
  v6 = sub_1A5FD485C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_1A5B180A0(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

char *sub_1A5D33AAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5E68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_1A5D33BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5E40);
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

void *sub_1A5D33CD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5DC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5DC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A5D33E1C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2D90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_1A5D33EA0(void **a1)
{
  v2 = *(type metadata accessor for E5RTInferenceFunctionDescriptor() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A5D3560C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1A5D33F48(v5);
  *a1 = v3;
}

void sub_1A5D33F48(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A5FD4AAC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for E5RTInferenceFunctionDescriptor();
        v6 = sub_1A5FD3F9C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for E5RTInferenceFunctionDescriptor() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A5D342C0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A5D34074(0, v2, 1, a1);
  }
}

void sub_1A5D34074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v33 = -v17;
    v34 = v16;
    v19 = a1 - a3;
    v27 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v20;
    v30 = v19;
    v21 = v36;
    while (1)
    {
      sub_1A5D361F8(v20, v15);
      sub_1A5D361F8(v18, v11);
      v22 = *(v21 + 44);
      v23 = sub_1A5D46210(*&v15[v22 + 16] | (*&v15[v22 + 20] << 32), *&v15[v22 + 24], *&v11[v22 + 16] | (*&v11[v22 + 20] << 32), *&v11[v22 + 24]);
      sub_1A5D3625C(v11);
      sub_1A5D3625C(v15);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v19 = v30 - 1;
        v20 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v24 = v35;
      sub_1A5D362B8(v20, v35);
      v21 = v36;
      swift_arrayInitWithTakeFrontToBack();
      sub_1A5D362B8(v24, v18);
      v18 += v33;
      v20 += v33;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A5D342C0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v9 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  v125 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v112 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v112 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v129 = &v112 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      v133 = v20;
      v107 = *(v20 + 16);
      if (v107 >= 2)
      {
        while (*a3)
        {
          v108 = *(v20 + 16 * v107);
          v109 = v20;
          v110 = *(v20 + 16 * (v107 - 1) + 32);
          v20 = *(v20 + 16 * (v107 - 1) + 40);
          sub_1A5D34B68(*a3 + *(v125 + 72) * v108, *a3 + *(v125 + 72) * v110, *a3 + *(v125 + 72) * v20, v5);
          if (v6)
          {
            goto LABEL_104;
          }

          if (v20 < v108)
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1A5B85644(v109);
          }

          if (v107 - 2 >= *(v109 + 2))
          {
            goto LABEL_120;
          }

          v111 = &v109[16 * v107];
          *v111 = v108;
          *(v111 + 1) = v20;
          v133 = v109;
          sub_1A5B855B8(v107 - 1);
          v20 = v133;
          v107 = *(v133 + 16);
          if (v107 <= 1)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_130;
      }

LABEL_104:

      return;
    }

LABEL_126:
    v20 = sub_1A5B85644(v20);
    goto LABEL_96;
  }

  v131 = v16;
  v113 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v112 = a3;
  while (1)
  {
    v21 = v19++;
    v117 = v20;
    if (v19 < v18)
    {
      v22 = *a3;
      v23 = *(v125 + 72);
      v5 = *a3 + v23 * v19;
      v24 = v129;
      sub_1A5D361F8(v5, v129);
      v25 = v22 + v23 * v21;
      v115 = v21;
      v26 = v130;
      sub_1A5D361F8(v25, v130);
      LODWORD(v132) = sub_1A5D46210(*(v24 + *(v131 + 44) + 16), *(v24 + *(v131 + 44) + 24), *(v26 + *(v131 + 44) + 16), *(v26 + *(v131 + 44) + 24));
      v27 = v26;
      v21 = v115;
      sub_1A5D3625C(v27);
      sub_1A5D3625C(v24);
      v19 = v21 + 2;
      if (v21 + 2 < v18)
      {
        v114 = v6;
        v28 = v22 + v23 * v19;
        while (1)
        {
          v29 = v18;
          v30 = v19;
          v31 = v129;
          sub_1A5D361F8(v28, v129);
          v32 = v130;
          sub_1A5D361F8(v5, v130);
          v33 = sub_1A5D46210(*(v31 + *(v131 + 44) + 16), *(v31 + *(v131 + 44) + 24), *(v32 + *(v131 + 44) + 16), *(v32 + *(v131 + 44) + 24)) & 1;
          sub_1A5D3625C(v32);
          sub_1A5D3625C(v31);
          if ((v132 & 1) != v33)
          {
            break;
          }

          v19 = v30 + 1;
          v5 += v23;
          v28 += v23;
          v18 = v29;
          if (v29 == v19)
          {
            v19 = v29;
            a3 = v112;
            goto LABEL_11;
          }
        }

        a3 = v112;
        v19 = v30;
LABEL_11:
        v6 = v114;
        v21 = v115;
      }

      if (v132)
      {
        if (v19 < v21)
        {
          goto LABEL_123;
        }

        if (v21 < v19)
        {
          v114 = v6;
          v34 = v23 * (v19 - 1);
          v35 = v19 * v23;
          v124 = v19;
          v36 = v19;
          v37 = v21;
          v38 = v21 * v23;
          do
          {
            if (v37 != --v36)
            {
              v39 = a3;
              v40 = *a3;
              if (!v40)
              {
                goto LABEL_129;
              }

              v5 = v40 + v38;
              sub_1A5D362B8(v40 + v38, v120);
              if (v38 < v34 || v5 >= v40 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1A5D362B8(v120, v40 + v34);
              a3 = v39;
              v20 = v117;
            }

            ++v37;
            v34 -= v23;
            v35 -= v23;
            v38 += v23;
          }

          while (v37 < v36);
          v6 = v114;
          v21 = v115;
          v19 = v124;
        }
      }
    }

    v41 = a3[1];
    if (v19 < v41)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_122;
      }

      if (v19 - v21 < v113)
      {
        break;
      }
    }

LABEL_43:
    if (v19 < v21)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1A5B84474(0, *(v20 + 16) + 1, 1, v20);
    }

    v63 = *(v20 + 16);
    v62 = *(v20 + 24);
    v5 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v20 = sub_1A5B84474((v62 > 1), v63 + 1, 1, v20);
    }

    *(v20 + 16) = v5;
    v64 = v20 + 16 * v63;
    *(v64 + 32) = v21;
    *(v64 + 40) = v19;
    v65 = *v116;
    if (!*v116)
    {
      goto LABEL_131;
    }

    if (v63)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v20 + 32);
          v68 = *(v20 + 40);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_63:
          if (v70)
          {
            goto LABEL_110;
          }

          v83 = (v20 + 16 * v5);
          v85 = *v83;
          v84 = v83[1];
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_113;
          }

          v89 = (v20 + 32 + 16 * v66);
          v91 = *v89;
          v90 = v89[1];
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_117;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v93 = (v20 + 16 * v5);
        v95 = *v93;
        v94 = v93[1];
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_77:
        if (v88)
        {
          goto LABEL_112;
        }

        v96 = v20 + 16 * v66;
        v98 = *(v96 + 32);
        v97 = *(v96 + 40);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_115;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_84:
        v104 = v66 - 1;
        if (v66 - 1 >= v5)
        {
          __break(1u);
LABEL_106:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v105 = *(v20 + 32 + 16 * v104);
        v5 = *(v20 + 32 + 16 * v66 + 8);
        sub_1A5D34B68(*a3 + *(v125 + 72) * v105, *a3 + *(v125 + 72) * *(v20 + 32 + 16 * v66), *a3 + *(v125 + 72) * v5, v65);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v5 < v105)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1A5B85644(v20);
        }

        if (v104 >= *(v20 + 16))
        {
          goto LABEL_107;
        }

        v106 = v20 + 16 * v104;
        *(v106 + 32) = v105;
        *(v106 + 40) = v5;
        v133 = v20;
        sub_1A5B855B8(v66);
        v20 = v133;
        v5 = *(v133 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = v20 + 32 + 16 * v5;
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_108;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_109;
      }

      v78 = (v20 + 16 * v5);
      v80 = *v78;
      v79 = v78[1];
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_111;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_114;
      }

      if (v82 >= v74)
      {
        v100 = (v20 + 32 + 16 * v66);
        v102 = *v100;
        v101 = v100[1];
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_118;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v18 = a3[1];
    if (v19 >= v18)
    {
      goto LABEL_94;
    }
  }

  v42 = v21 + v113;
  if (__OFADD__(v21, v113))
  {
    goto LABEL_124;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v21)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v19 == v42)
  {
    goto LABEL_43;
  }

  v114 = v6;
  v115 = v21;
  v43 = 0;
  v44 = *a3;
  v45 = *(v125 + 72);
  v46 = *a3 + v45 * (v19 - 1);
  v126 = -v45;
  v127 = v44;
  v47 = v21 - v19;
  v118 = v45;
  v119 = v42;
  v5 = v44 + v19 * v45;
LABEL_37:
  v123 = v46;
  v124 = v19;
  v121 = v5;
  v122 = v47;
  v48 = v131;
  while (1)
  {
    v132 = v43;
    v49 = v129;
    sub_1A5D361F8(v5, v129);
    v50 = v130;
    sub_1A5D361F8(v46, v130);
    v51 = *(v48 + 44);
    v52 = (v49 + v51);
    v53 = v50 + v51;
    v54 = v52[6];
    v55 = v52[4] | (v52[5] << 32);
    LODWORD(v52) = *(v53 + 16);
    v57 = v53 + 20;
    v56 = *(v53 + 20);
    v58 = v56 << 32;
    v59 = sub_1A5D46210(v55, v54, v52 | v132 | (v56 << 32), *(v57 + 4));
    sub_1A5D3625C(v50);
    sub_1A5D3625C(v49);
    if ((v59 & 1) == 0)
    {
      v43 = v58;
LABEL_36:
      v19 = v124 + 1;
      v46 = v123 + v118;
      v47 = v122 - 1;
      v5 = v121 + v118;
      if (v124 + 1 == v119)
      {
        v19 = v119;
        v6 = v114;
        v21 = v115;
        a3 = v112;
        v20 = v117;
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    if (!v127)
    {
      break;
    }

    v60 = v47;
    v61 = v128;
    sub_1A5D362B8(v5, v128);
    v48 = v131;
    swift_arrayInitWithTakeFrontToBack();
    sub_1A5D362B8(v61, v46);
    v46 += v126;
    v5 += v126;
    v47 = v60 + 1;
    v43 = v58;
    if (v60 == -1)
    {
      goto LABEL_36;
    }
  }

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
}

void sub_1A5D34B68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v42 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  MEMORY[0x1EEE9AC00](v42);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v46 = a1;
  v45 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v39 = v23;
      v40 = a4;
      do
      {
        v37[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v43;
          if (v26 <= a1)
          {
            v46 = v26;
            v44 = v37[0];
            goto LABEL_59;
          }

          v38 = v25;
          v43 += v23;
          v30 = v24 + v23;
          sub_1A5D361F8(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v41;
          sub_1A5D361F8(v32, v41);
          v35 = sub_1A5D46210(*(v33 + *(v42 + 44) + 16), *(v33 + *(v42 + 44) + 24), *(v34 + *(v42 + 44) + 16), *(v34 + *(v42 + 44) + 24));
          v36 = v34;
          v11 = v33;
          sub_1A5D3625C(v36);
          sub_1A5D3625C(v33);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v43 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v39;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v43 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          v23 = v39;
        }

        else
        {
          v25 = v38;
          v23 = v39;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v44 = a4 + v16;
    if (v16 >= 1 && a2 < v43)
    {
      do
      {
        sub_1A5D361F8(a2, v11);
        v20 = v41;
        sub_1A5D361F8(a4, v41);
        v21 = sub_1A5D46210(*&v11[*(v42 + 44) + 16], *&v11[*(v42 + 44) + 24], *(v20 + *(v42 + 44) + 16), *(v20 + *(v42 + 44) + 24));
        sub_1A5D3625C(v20);
        sub_1A5D3625C(v11);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v46 = a1;
      }

      while (a4 < v18 && a2 < v43);
    }
  }

LABEL_59:
  sub_1A5D35010(&v46, &v45, &v44);
}

uint64_t sub_1A5D35010(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for E5RTInferenceFunctionDescriptor();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1A5D350F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_1A5FD3E6C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1A5D33BC8(0, 1, 1, MEMORY[0x1E69E7CC0]);
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
    v14 = sub_1A5D33BC8((a7 > 1), v10, 1, v14);
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
        v19 = sub_1A5FD3E4C();
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

        v14 = sub_1A5FD3DDC();
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
        v18 = sub_1A5FD3DDC();
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
          v7 = sub_1A5FD3E6C();
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

        v14 = sub_1A5D33BC8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1A5FD3E6C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1A5D33BC8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1A5D33BC8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1A5FD3DDC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A5D354B4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1A5D35620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5E60);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A5B0E2A4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A5D35724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5E80);
    v3 = sub_1A5FD487C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A5B31A34(v4, &v13, &qword_1EB1F5E88);
      v5 = v13;
      v6 = v14;
      result = sub_1A5B0E2A4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A5B063D4(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A5D35858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5E70);
    v3 = sub_1A5FD487C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A5B31A34(v4, &v13, &qword_1EB1F5E78);
      v5 = v13;
      v6 = v14;
      result = sub_1A5B0E2A4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A5B063D4(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A5D3598C(uint64_t a1)
{
  v2 = sub_1A5D35724(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 32); ; i += 5)
  {
    v7 = i[3];
    v8 = i[4];
    __swift_project_boxed_opaque_existential_1(i, v7);
    v9 = (*(v8 + 40))(v7, v8);
    v11 = v10;
    sub_1A5B180A0(i, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v2;
    v13 = sub_1A5B0E2A4(v9, v11);
    v15 = *(v2 + 16);
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (*(v2 + 24) < v18)
    {
      sub_1A5D33638(v18, isUniquelyReferenced_nonNull_native, &qword_1EB1F5E80, &unk_1A6032E48, sub_1A5B72510);
      v13 = sub_1A5B0E2A4(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v24 = v13;
    sub_1A5D33908(&qword_1EB1F5E80, &unk_1A6032E48, sub_1A5B72510);
    v13 = v24;
    if (v19)
    {
LABEL_3:
      v5 = v13;

      v2 = v26;
      v6 = v26[7] + 40 * v5;
      __swift_destroy_boxed_opaque_existential_1(v6);
      sub_1A5B063D4(v27, v6);
      goto LABEL_4;
    }

LABEL_11:
    v2 = v26;
    v26[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v26[6] + 16 * v13);
    *v21 = v9;
    v21[1] = v11;
    sub_1A5B063D4(v27, v26[7] + 40 * v13);
    v22 = v26[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v26[2] = v23;
LABEL_4:
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1A5FD4B8C();
  __break(1u);
  return result;
}

uint64_t sub_1A5D35BC0(uint64_t a1)
{
  v2 = sub_1A5D35858(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 32); ; i += 5)
  {
    v8 = i[3];
    v7 = i[4];
    __swift_project_boxed_opaque_existential_1(i, v8);
    v9 = (*(*(v7 + 8) + 40))(v8);
    v11 = v10;
    sub_1A5B180A0(i, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v2;
    v13 = sub_1A5B0E2A4(v9, v11);
    v15 = *(v2 + 16);
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (*(v2 + 24) < v18)
    {
      sub_1A5D33638(v18, isUniquelyReferenced_nonNull_native, &qword_1EB1F5E70, &unk_1A6032E38, sub_1A5B72510);
      v13 = sub_1A5B0E2A4(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v24 = v13;
    sub_1A5D33908(&qword_1EB1F5E70, &unk_1A6032E38, sub_1A5B72510);
    v13 = v24;
    if (v19)
    {
LABEL_3:
      v5 = v13;

      v2 = v26;
      v6 = v26[7] + 40 * v5;
      __swift_destroy_boxed_opaque_existential_1(v6);
      sub_1A5B063D4(v27, v6);
      goto LABEL_4;
    }

LABEL_11:
    v2 = v26;
    v26[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v26[6] + 16 * v13);
    *v21 = v9;
    v21[1] = v11;
    sub_1A5B063D4(v27, v26[7] + 40 * v13);
    v22 = v26[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v26[2] = v23;
LABEL_4:
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1A5FD4B8C();
  __break(1u);
  return result;
}

uint64_t sub_1A5D35DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5D98);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_1A5D35E64()
{
  if (qword_1EB27DA20 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB27DA28;
  v1 = *(qword_1EB27DA28 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1A5D33E1C(*(qword_1EB27DA28 + 16), 0);
  v3 = sub_1A5D354B4(&v5, v2 + 4, v1, v0);

  sub_1A5B2E3F4();
  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

char *sub_1A5D35F54(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB27DA20 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB27DA28;
  if (*(qword_1EB27DA28 + 16) && (v10 = sub_1A5B0E2A4(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = *(v12 + 16);
    if (v13)
    {
      v26[0] = v12;
      v26[1] = v2;
      v14 = &v8[*(v5 + 44)];
      v15 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v16 = *(v6 + 72);

      a2 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1A5D361F8(v15, v8);
        v17 = *(v14 + 2);
        v18 = *(v14 + 6);
        sub_1A5D3625C(v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_1A5D33AAC(0, *(a2 + 2) + 1, 1, a2);
        }

        v20 = *(a2 + 2);
        v19 = *(a2 + 3);
        if (v20 >= v19 >> 1)
        {
          a2 = sub_1A5D33AAC((v19 > 1), v20 + 1, 1, a2);
        }

        *(a2 + 2) = v20 + 1;
        v21 = &a2[12 * v20];
        *(v21 + 4) = v17;
        *(v21 + 10) = v18;
        v15 += v16;
        --v13;
      }

      while (v13);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1A5FD46AC();

    v27 = 0xD000000000000029;
    v28 = 0x80000001A605B000;
    MEMORY[0x1AC554600](a1, a2);
    v22 = v27;
    v23 = v28;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(v22, v23, v24);

    swift_willThrow();
  }

  return a2;
}

uint64_t sub_1A5D361F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5D3625C(uint64_t a1)
{
  v2 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5D362B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for E5RTInferenceFunctionDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5D3631C(uint64_t a1, uint64_t a2)
{
  if (qword_1EB27DA20 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB27DA28;
  if (*(qword_1EB27DA28 + 16) && (v6 = sub_1A5B0E2A4(a1, a2), (v7 & 1) != 0))
  {
    v11 = *(*(v5 + 56) + 8 * v6);
    swift_bridgeObjectRetain_n();
    sub_1A5D33EA0(&v11);
    if (v2)
    {

      __break(1u);
    }

    else
    {

      v8 = sub_1A5D31830(v11);

      return v8;
    }
  }

  else
  {
    sub_1A5FD46AC();

    MEMORY[0x1AC554600](a1, a2);
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD000000000000029, 0x80000001A605B000, v10);

    return swift_willThrow();
  }

  return result;
}

void sub_1A5D364A0(uint64_t a1, uint64_t a2)
{
  sub_1A5BF63A0(2, 0xD000000000000030, 0x80000001A605B1F0);
  v5 = (*(*a1 + 256))(*(a2 + 24), *(a2 + 32));
  if (!v2)
  {
    if (!v6 || (v7 = v5, v8 = v6, sub_1A5FD46AC(), , MEMORY[0x1AC554600](v7, v8), sub_1A5BF63A0(2, 0xD000000000000031, 0x80000001A605B230), , sub_1A5D45C60(v7, v8), (v9 & 0x100000000) != 0))
    {
      sub_1A5B132D8();
    }
  }
}

uint64_t sub_1A5D365D8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A5FD4B0C() & 1;
  }
}

uint64_t sub_1A5D36630(uint64_t a1)
{
  result = sub_1A5D36774(&qword_1EB1F5DF0, type metadata accessor for E5RTInferenceFunctionDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5D36688(uint64_t a1)
{
  result = sub_1A5D36774(&qword_1EB1F5DF8, type metadata accessor for E5RTInferenceFunctionDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5D366E0(uint64_t a1)
{
  result = sub_1A5D36774(&qword_1EB1F5E00, type metadata accessor for E5RTInferenceFunctionDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5D36774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5D367F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5D36774(a4, type metadata accessor for E5RTInferenceFunctionDescriptor);
  result = sub_1A5D36774(a6, type metadata accessor for E5RTInferenceFunctionDescriptor);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5D36864(uint64_t a1)
{
  result = sub_1A5D36774(&qword_1EB1F5DA8, type metadata accessor for E5RTInferenceFunctionDescriptor);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5D368E4()
{
  sub_1A5FD353C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for E5RTFunction();
    if (v1 <= 0x3F)
    {
      sub_1A5D36A3C(319, &qword_1EB1F5E18, &qword_1EB1F5DC0);
      if (v2 <= 0x3F)
      {
        sub_1A5D36A3C(319, &qword_1EB1F5E20, &qword_1EB1F5E28);
        if (v3 <= 0x3F)
        {
          sub_1A5D36A90(319, &qword_1EB1F5E30, &qword_1EB1F5DC0);
          if (v4 <= 0x3F)
          {
            sub_1A5D36A90(319, &qword_1EB1F5E38, &qword_1EB1F2E38);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A5D36A3C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1A5FD456C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A5D36A90(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1A5FD3C5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A5D36AF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1A5D36B20()
{
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D36B94()
{
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  return sub_1A5FD4C6C();
}

int *sub_1A5D36BD8@<X0>(int *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

char *sub_1A5D36BFC(uint64_t a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t))
{
  v25[1] = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  if (!a1)
  {
LABEL_22:
    __break(1u);
  }

  v6 = a2(a1, v25);
  if (!v6)
  {
    if ((v25[0] - 0x1000000000000000) >> 61 == 7)
    {
      v12 = swift_slowAlloc();
      v13 = a4(a1, v25[0], v12);
      if (v13)
      {
        v7 = v13;
        sub_1A5B16774();
        swift_allocError();
        v9 = v14;
        v11 = 0xD000000000000016;
        v10 = 0x80000001A605B290;
        goto LABEL_7;
      }

      v16 = v25[0];
      if ((v25[0] & 0x8000000000000000) == 0)
      {
        v7 = MEMORY[0x1E69E7CC0];
        if (!v25[0])
        {
LABEL_18:
          MEMORY[0x1AC558440](v12, -1, -1);
          return v7;
        }

        v17 = v12;
        while (1)
        {
          if (!*v17++)
          {
            goto LABEL_21;
          }

          v19 = sub_1A5FD3E1C();
          v21 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1A5D2C478(0, *(v7 + 2) + 1, 1, v7);
          }

          v23 = *(v7 + 2);
          v22 = *(v7 + 3);
          if (v23 >= v22 >> 1)
          {
            v7 = sub_1A5D2C478((v22 > 1), v23 + 1, 1, v7);
          }

          *(v7 + 2) = v23 + 1;
          v24 = &v7[16 * v23];
          *(v24 + 4) = v19;
          *(v24 + 5) = v21;
          if (!--v16)
          {
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6;
  sub_1A5B16774();
  swift_allocError();
  v9 = v8;
  v10 = 0x80000001A605B270;
  v11 = 0xD000000000000015;
LABEL_7:
  sub_1A5D2879C(v11, v10, v7, v9);
  swift_willThrow();
  return v7;
}

uint64_t sub_1A5D36E44()
{
  is_tensor = e5rt_io_port_is_tensor();
  if (is_tensor)
  {
    v1 = is_tensor;
    v2 = "stringProc call failed";
    sub_1A5B16774();
    swift_allocError();
    v4 = v3;
    v5 = 0xD000000000000022;
  }

  else
  {
    is_surface = e5rt_io_port_is_surface();
    if (!is_surface)
    {
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D286A4(0xD000000000000011, 0x80000001A605B310, v9);
      return swift_willThrow();
    }

    v1 = is_surface;
    v2 = "tensor call failed";
    sub_1A5B16774();
    swift_allocError();
    v4 = v8;
    v5 = 0xD000000000000023;
  }

  sub_1A5D2879C(v5, v2 | 0x8000000000000000, v1, v4);
  return swift_willThrow();
}

char *sub_1A5D36FCC()
{
  v0 = e5rt_tensor_desc_retain_dtype();
  if (v0)
  {
    v1 = v0;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD000000000000029, 0x80000001A605B330, v1, v2);
    swift_willThrow();
  }

  else
  {
    v3 = *sub_1A5D46A14();
    component_size = e5rt_tensor_desc_dtype_get_component_size();
    if (component_size)
    {
      v1 = component_size;
      sub_1A5B16774();
      swift_allocError();
      v6 = v5;
      v7 = 0xD000000000000035;
      v8 = 0x80000001A605B360;
      v9 = v1;
    }

    else
    {
      sub_1A5D46A20();
      v11 = TtTrkRpnNode::config(v3);
      component_dtype = e5rt_tensor_desc_dtype_get_component_dtype();
      if (!component_dtype)
      {
        v15 = sub_1A5D46A44();
        v1 = TtTrkRpnNode::config((*v15 | v11));
        e5rt_tensor_desc_dtype_release();
        return v1;
      }

      v13 = component_dtype;
      v1 = "nent_size call failed";
      sub_1A5B16774();
      swift_allocError();
      v6 = v14;
      v7 = 0xD000000000000036;
      v8 = 0x80000001A605B3A0;
      v9 = v13;
    }

    sub_1A5D2879C(v7, v8, v9, v6);
    swift_willThrow();
    e5rt_tensor_desc_dtype_release();
  }

  return v1;
}

uint64_t sub_1A5D373A4(unsigned int a1)
{
  if (a1 <= 5)
  {
    return *&aV024800largbab[4 * a1];
  }

  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x4665636166727573, 0xEF203A74616D726FLL);
  v2 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0xD000000000000029, 0x80000001A605B450);
  sub_1A5B16774();
  swift_allocError();
  sub_1A5D286A4(0, 0xE000000000000000, v3);

  return swift_willThrow();
}

void type metadata accessor for e5rt_tensor_desc_component_dtype_t()
{
  if (!qword_1EB1F5E98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB1F5E98);
    }
  }
}

unint64_t sub_1A5D3751C()
{
  result = qword_1EB1F5E90;
  if (!qword_1EB1F5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5E90);
  }

  return result;
}

unint64_t sub_1A5D37590()
{
  result = qword_1EB1F5EA0;
  if (!qword_1EB1F5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5EA0);
  }

  return result;
}

uint64_t sub_1A5D375E4()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6570616873;
  v4 = 0x73656469727473;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6570795461746164;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A5D37678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D37DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5D376A0(uint64_t a1)
{
  v2 = sub_1A5D38280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D376DC(uint64_t a1)
{
  v2 = sub_1A5D38280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D37718(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5EA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D38280();
  sub_1A5FD4CDC();
  LOBYTE(v11) = 0;
  sub_1A5FD4A1C();
  if (!v2)
  {
    v11 = v3[2];
    HIBYTE(v10) = 1;
    sub_1A5D382D4();
    sub_1A5FD4A5C();
    v11 = v3[4];
    HIBYTE(v10) = 2;
    sub_1A5D38328();
    sub_1A5FD4A5C();
    v11 = v3[5];
    HIBYTE(v10) = 3;
    sub_1A5D2E510();
    sub_1A5FD4A5C();
    LOBYTE(v11) = 4;
    sub_1A5FD4A8C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A5D3793C()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  sub_1A5D38464();
  sub_1A5FD3CBC();
  sub_1A5FD4C4C();
  sub_1A5D384B8();
  sub_1A5FD3CBC();
  sub_1A5D2E564();
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D37A18()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A5D37A48@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  a1[3] = &type metadata for TensorShape;
  a1[4] = sub_1A5D37590();
  *a1 = v3;
}

uint64_t sub_1A5D37A98@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  a1[3] = &type metadata for TensorStrides;
  a1[4] = sub_1A5D2E380();
  *a1 = v3;
}

double sub_1A5D37AF0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A5D37F5C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1A5D37B50()
{
  sub_1A5FD3DBC();
  sub_1A5D38464();
  sub_1A5FD3CBC();
  sub_1A5FD4C4C();
  sub_1A5D384B8();
  sub_1A5FD3CBC();
  sub_1A5D2E564();
  return sub_1A5FD3CBC();
}

uint64_t sub_1A5D37C08()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  sub_1A5D38464();
  sub_1A5FD3CBC();
  sub_1A5FD4C4C();
  sub_1A5D384B8();
  sub_1A5FD3CBC();
  sub_1A5D2E564();
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D37CE0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1A5D3837C(v7, v8) & 1;
}

uint64_t sub_1A5D37D28(uint64_t a1)
{
  v2 = sub_1A5D38798();

  return sub_1A5D488F8(a1, v2);
}

uint64_t sub_1A5D37D64@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a6;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  return result;
}

uint64_t sub_1A5D37DA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656469727473 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A605B480 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A5D37F5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D38280();
  sub_1A5FD4CCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v9 = sub_1A5FD493C();
  v11 = v10;
  v19 = v9;
  v20 = 1;
  sub_1A5D38A78();
  sub_1A5FD497C();
  v12 = v21;
  v20 = 2;
  sub_1A5D38ACC();
  sub_1A5FD497C();
  v17 = v12;
  v18 = v21;
  v20 = 3;
  sub_1A5D2E4BC();
  sub_1A5FD497C();
  v13 = v21;
  LOBYTE(v21) = 4;
  v14 = sub_1A5FD49AC();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v19;
  *(a2 + 8) = v11;
  v16 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v13;
  return result;
}

unint64_t sub_1A5D38280()
{
  result = qword_1EB27E0C0[0];
  if (!qword_1EB27E0C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27E0C0);
  }

  return result;
}

unint64_t sub_1A5D382D4()
{
  result = qword_1EB1F5EB0;
  if (!qword_1EB1F5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5EB0);
  }

  return result;
}

unint64_t sub_1A5D38328()
{
  result = qword_1EB1F5EB8;
  if (!qword_1EB1F5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5EB8);
  }

  return result;
}

uint64_t sub_1A5D3837C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_1A5FD4B0C()) && (sub_1A5D38A24(), sub_1A5FD3EBC(), sub_1A5FD3EBC(), v8 == v7) && *(a1 + 24) == *(a2 + 24) && (sub_1A5D2D714(*(a1 + 32), *(a2 + 32)))
  {
    v5 = sub_1A5D2D714(*(a1 + 40), *(a2 + 40));
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1A5D38464()
{
  result = qword_1EB1F5EC0;
  if (!qword_1EB1F5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5EC0);
  }

  return result;
}

unint64_t sub_1A5D384B8()
{
  result = qword_1EB1F5EC8;
  if (!qword_1EB1F5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5EC8);
  }

  return result;
}

unint64_t sub_1A5D3850C(void *a1)
{
  a1[1] = sub_1A5D3854C();
  a1[2] = sub_1A5D385A0();
  a1[3] = sub_1A5D385F4();
  result = sub_1A5D38648();
  a1[4] = result;
  return result;
}

unint64_t sub_1A5D3854C()
{
  result = qword_1EB1F5ED0;
  if (!qword_1EB1F5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5ED0);
  }

  return result;
}

unint64_t sub_1A5D385A0()
{
  result = qword_1EB1F5ED8;
  if (!qword_1EB1F5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5ED8);
  }

  return result;
}

unint64_t sub_1A5D385F4()
{
  result = qword_1EB1F5EE0;
  if (!qword_1EB1F5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5EE0);
  }

  return result;
}

unint64_t sub_1A5D38648()
{
  result = qword_1EB1F5EE8;
  if (!qword_1EB1F5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5EE8);
  }

  return result;
}

unint64_t sub_1A5D3869C(uint64_t a1)
{
  result = sub_1A5D386C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D386C4()
{
  result = qword_1EB1F5EF0;
  if (!qword_1EB1F5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5EF0);
  }

  return result;
}

unint64_t sub_1A5D3871C()
{
  result = qword_1EB1F5EF8;
  if (!qword_1EB1F5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5EF8);
  }

  return result;
}

unint64_t sub_1A5D38770(uint64_t a1)
{
  result = sub_1A5D38798();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D38798()
{
  result = qword_1EB1F5F00;
  if (!qword_1EB1F5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5F00);
  }

  return result;
}

unint64_t sub_1A5D387EC(uint64_t a1)
{
  result = sub_1A5D38814();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D38814()
{
  result = qword_1EB1F5F08;
  if (!qword_1EB1F5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5F08);
  }

  return result;
}

uint64_t sub_1A5D38868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5D388B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A5D38920()
{
  result = qword_1EB27E650[0];
  if (!qword_1EB27E650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27E650);
  }

  return result;
}

unint64_t sub_1A5D38978()
{
  result = qword_1EB27E760;
  if (!qword_1EB27E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB27E760);
  }

  return result;
}

unint64_t sub_1A5D389D0()
{
  result = qword_1EB27E768[0];
  if (!qword_1EB27E768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB27E768);
  }

  return result;
}

unint64_t sub_1A5D38A24()
{
  result = qword_1EB1F5F10;
  if (!qword_1EB1F5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5F10);
  }

  return result;
}

unint64_t sub_1A5D38A78()
{
  result = qword_1EB1F5F20;
  if (!qword_1EB1F5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5F20);
  }

  return result;
}

unint64_t sub_1A5D38ACC()
{
  result = qword_1EB1F5F28;
  if (!qword_1EB1F5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F5F28);
  }

  return result;
}

uint64_t sub_1A5D38B20()
{
  v2 = sub_1A5D3BEA4(MEMORY[0x1E69E7CC0]);
  v3 = (*(**(v0 + 16) + 248))(*(v0 + 24), *(v0 + 32));
  if (v1)
  {
  }

  if (!v3)
  {
    v3 = sub_1A5D38BC0(v2);
  }

  v5 = v3;

  return v5;
}

unint64_t sub_1A5D38BC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F13A0);
    v2 = sub_1A5FD487C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_1A5B101C8(&v22, v24);
        sub_1A5B101C8(v24, v25);
        sub_1A5B101C8(v25, &v23);
        result = sub_1A5B0E2A4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1A5B101C8(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1A5B101C8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A5D38E14()
{
  if (!*(v0[8] + 16))
  {
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0x737475706E69, 0xE600000000000000);
    MEMORY[0x1AC554600](0xD00000000000002FLL, 0x80000001A605B4D0);

    v2 = MEMORY[0x1AC554750](v1, MEMORY[0x1E69E6158]);
    v4 = v3;

    MEMORY[0x1AC554600](v2, v4);

    sub_1A5BF63A0(2, 0, 0xE000000000000000);

    v6 = (*(*v0 + 176))(v5);
    v0[8] = sub_1A5D36BFC(v6, j__e5rt_program_function_get_num_extern_inputs, 0, j__e5rt_program_function_get_extern_input_names);

    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0x737475706E69, 0xE600000000000000);
    MEMORY[0x1AC554600](0xD00000000000002FLL, 0x80000001A605B4D0);

    v8 = MEMORY[0x1AC554750](v7, MEMORY[0x1E69E6158]);
    v10 = v9;

    MEMORY[0x1AC554600](v8, v10);

    sub_1A5BF63A0(2, 0, 0xE000000000000000);
  }

  sub_1A5FD46AC();

  v12 = MEMORY[0x1AC554750](v11, MEMORY[0x1E69E6158]);
  v14 = v13;

  MEMORY[0x1AC554600](v12, v14);

  sub_1A5BF63A0(2, 0xD000000000000027, 0x80000001A605B4A0);
}

uint64_t sub_1A5D391B0()
{
  if (!*(v0[9] + 16))
  {
    v1 = (*(*v0 + 176))();
    v0[9] = sub_1A5D36BFC(v1, j__e5rt_program_function_get_num_extern_outputs, 0, j__e5rt_program_function_get_extern_output_names);
  }
}

uint64_t sub_1A5D3929C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

void *sub_1A5D392DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[5] = MEMORY[0x1E69E7CC0];
  v8[6] = v9;
  v8[7] = 0;
  v8[8] = v9;
  v8[9] = v9;
  v8[10] = 0;
  v8[11] = 0;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  swift_beginAccess();
  v8[7] = a4;
  return v8;
}

uint64_t sub_1A5D39374()
{
  swift_beginAccess();
  e5rt_program_function_release();
  *(v0 + 56) = 0;
  swift_endAccess();

  return v0;
}

uint64_t sub_1A5D393FC()
{
  sub_1A5D39374();

  return swift_deallocClassInstance();
}

uint64_t sub_1A5D39430()
{
  v1 = v0;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000010, 0x80000001A605B530);
  type metadata accessor for E5RTProgramLibrary();
  sub_1A5FD481C();
  MEMORY[0x1AC554600](0x203A656D616E203BLL, 0xE800000000000000);
  MEMORY[0x1AC554600](v1[3], v1[4]);
  MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A605B550);
  v2 = v0[5];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5DC0);
  v4 = MEMORY[0x1AC554750](v2, v3);
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](0xD000000000000015, 0x80000001A605B570);
  v5 = MEMORY[0x1AC554750](v1[6], v3);
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A605B590);

  v7 = MEMORY[0x1E69E6158];
  v8 = MEMORY[0x1AC554750](v6, MEMORY[0x1E69E6158]);
  v10 = v9;

  MEMORY[0x1AC554600](v8, v10);

  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605B5B0);

  v12 = MEMORY[0x1AC554750](v11, v7);
  v14 = v13;

  MEMORY[0x1AC554600](v12, v14);

  MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A605B5D0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F30);
  v15 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v15);

  MEMORY[0x1AC554600](0xD00000000000001BLL, 0x80000001A605B5F0);

  v16 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v16);

  v17 = MEMORY[0x1AC554600](0x737475706E69203BLL, 0xEA0000000000203ALL);
  (*(*v1 + 160))(v17);
  v18 = MEMORY[0x1AC554750]();
  v20 = v19;

  MEMORY[0x1AC554600](v18, v20);

  v21 = MEMORY[0x1AC554600](0x74757074756F203BLL, 0xEB00000000203A73);
  (*(*v1 + 168))(v21);
  v22 = MEMORY[0x1AC554750]();
  v24 = v23;

  MEMORY[0x1AC554600](v22, v24);

  return 0;
}

uint64_t sub_1A5D39804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1A5BF63A0(2, 0xD000000000000039, 0x80000001A605B610);
  result = sub_1A5D3AC84();
  if (!v4)
  {
    result = sub_1A5BF63A0(2, 0xD000000000000038, 0x80000001A605B650);
    v9 = *(v3 + 80);
    if (!v9)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (*(v9 + 16))
    {

      v10 = sub_1A5B0E2A4(a1, a2);
      if (v11)
      {
        sub_1A5B180A0(*(v9 + 56) + 40 * v10, v22);

        v17[0] = 0;
        v17[1] = 0xE000000000000000;
        sub_1A5FD46AC();
        v20 = 0;
        v21 = 0xE000000000000000;
        MEMORY[0x1AC554600](0xD000000000000015, 0x80000001A605B6C0);
        MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A605B6E0);
        result = sub_1A5D3C010(v22, v17);
        if (v18)
        {
          __swift_project_boxed_opaque_existential_1(v17, v18);
          sub_1A5FD4AEC();
          __swift_destroy_boxed_opaque_existential_1(v17);
          sub_1A5BF63A0(2, v20, v21);

          result = sub_1A5D3C010(v22, v17);
          v12 = v18;
          if (v18)
          {
            v13 = v19;
            v14 = __swift_project_boxed_opaque_existential_1(v17, v18);
            a3[3] = v12;
            a3[4] = *(v13 + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
            (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v14, v12);
            sub_1A5D3BFA8(v22);
            return __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        return result;
      }
    }

    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_1A5FD46AC();

    MEMORY[0x1AC554600](a1, a2);
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD000000000000027, 0x80000001A605B690, v16);

    swift_willThrow();
    return sub_1A5D3BFA8(v22);
  }

  return result;
}

uint64_t sub_1A5D39AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1A5D3AC84();
  if (!v4)
  {
    v9 = *(v3 + 88);
    if (v9)
    {
      if (*(v9 + 16))
      {

        v10 = sub_1A5B0E2A4(a1, a2);
        if (v11)
        {
          sub_1A5B180A0(*(v9 + 56) + 40 * v10, v17);

          sub_1A5B063D4(v17, &v18);
          v12 = v19;
          v13 = v20;
          v14 = __swift_project_boxed_opaque_existential_1(&v18, v19);
          a3[3] = v12;
          a3[4] = *(v13 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
          (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v14, v12);
          return __swift_destroy_boxed_opaque_existential_1(&v18);
        }
      }

      sub_1A5FD46AC();

      MEMORY[0x1AC554600](a1, a2);
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D286A4(0xD000000000000028, 0x80000001A605B700, v16);

      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1A5D39CC8(uint64_t a1)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a1 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v9 = *(*v1 + 312);

    v9(v14, v7, v8);
    if (v3)
    {
      break;
    }

    sub_1A5B180A0(v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1A5D33CD4(0, v6[2] + 1, 1, v6);
    }

    v11 = v6[2];
    v10 = v6[3];
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1A5D33CD4((v10 > 1), v11 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
    v6[2] = v11 + 1;
    sub_1A5B063D4(v13, &v6[5 * v11 + 4]);
    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1A5D39E30(uint64_t a1)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a1 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v9 = *(*v1 + 320);

    v9(v14, v7, v8);
    if (v3)
    {
      break;
    }

    sub_1A5B180A0(v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1A5D33CD4(0, v6[2] + 1, 1, v6);
    }

    v11 = v6[2];
    v10 = v6[3];
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1A5D33CD4((v10 > 1), v11 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
    v6[2] = v11 + 1;
    sub_1A5B063D4(v13, &v6[5 * v11 + 4]);
    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1A5D39F98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for E5RTExecutionContext();

  return sub_1A5D3C5E8(v4, a1, a2, a3, a4);
}

uint64_t sub_1A5D3A024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5D36E44();
  if (!v4)
  {
    if (result)
    {
      if (result == 1)
      {
        (*(*v3 + 384))(&v10, a1, a2, a3);
      }

      else
      {
        (*(*v3 + 392))(&v10, a1, a2, a3);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5DC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F40);
      return swift_dynamicCast();
    }

    else
    {
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A605B730);
      v11 = 0;
      sub_1A5FD481C();
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D286A4(0, 0xE000000000000000, v9);

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1A5D3A1FC()
{
  result = (*(*v0 + 408))();
  if (!v1)
  {
    v3 = result;
    type metadata accessor for E5RTExecutionPrewarmedState();
    return sub_1A5D4738C(v3);
  }

  return result;
}

uint64_t sub_1A5D3A270()
{
  v0 = e5rt_io_port_retain_tensor_desc();
  if (v0)
  {
    v1 = v0;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD00000000000002BLL, 0x80000001A605B750, v1, v2);
    return swift_willThrow();
  }

  else
  {
    shape = e5rt_tensor_desc_get_shape();
    if (shape)
    {
      v5 = shape;
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D2879C(0xD000000000000026, 0x80000001A605B780, v5, v6);
      swift_willThrow();
      return e5rt_tensor_desc_release();
    }

    else
    {
      result = 0;
      __break(1u);
      __break(1u);
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A5D3A810@<X0>(uint64_t a1@<X1>, ValueMetadata *a2@<X2>, void *a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v7 = e5rt_io_port_retain_surface_desc();
  if (v7)
  {
    v8 = v7;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD00000000000002CLL, 0x80000001A605B810, v8, v9);
    return swift_willThrow();
  }

  width = e5rt_surface_desc_get_width();
  if (width)
  {
    v12 = width;
    sub_1A5B16774();
    swift_allocError();
    v14 = v13;
    v15 = 0xD000000000000027;
    v16 = 0x80000001A605B840;
  }

  else
  {
    height = e5rt_surface_desc_get_height();
    if (!height)
    {
      v19 = swift_slowAlloc();
      format = e5rt_surface_desc_get_format();
      if (format)
      {
        v21 = format;
        sub_1A5B16774();
        swift_allocError();
        sub_1A5D2879C(0xD000000000000028, 0x80000001A605B8A0, v21, v22);
        swift_willThrow();
      }

      else
      {
        v23 = sub_1A5D373A4(*v19);
        if (!v3)
        {
          v24 = v23;

          sub_1A5D44BB0(a1, a2, v24, 0, 0, v28);
          a3[3] = &type metadata for ImageTensorDescriptor;
          a3[4] = sub_1A5D3C080();
          v25 = swift_allocObject();
          *a3 = v25;
          v26 = v28[1];
          v25[1] = v28[0];
          v25[2] = v26;
          v27 = v28[3];
          v25[3] = v28[2];
          v25[4] = v27;
        }
      }

      MEMORY[0x1AC558440](v19, -1, -1);
      return e5rt_surface_desc_release();
    }

    v12 = height;
    sub_1A5B16774();
    swift_allocError();
    v14 = v18;
    v16 = 0x80000001A605B870;
    v15 = 0xD000000000000028;
  }

  sub_1A5D2879C(v15, v16, v12, v14);
  swift_willThrow();
  return e5rt_surface_desc_release();
}

uint64_t sub_1A5D3AAF8()
{
  (*(*v0 + 176))();
  v1 = e5rt_precompiled_compute_op_create_options_create_with_program_function();
  if (v1)
  {
    v2 = v1;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2879C(0xD000000000000053, 0x80000001A605B8D0, v2, v3);
    swift_willThrow();
  }

  else
  {
    precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
    if (precompiled_compute_operation_with_options)
    {
      v2 = precompiled_compute_operation_with_options;
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D2879C(0xD00000000000005DLL, 0x80000001A605B930, v2, v5);
      swift_willThrow();
    }

    else
    {
      sub_1A5BF63A0(2, 0xD00000000000003BLL, 0x80000001A605B990);
      v2 = 0;
    }

    e5rt_precompiled_compute_op_create_options_release();
  }

  return v2;
}

uint64_t sub_1A5D3AC84()
{
  v2 = v0;
  v56 = *MEMORY[0x1E69E9840];
  if (v0[10] && v0[11])
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD000000000000018, 0x80000001A605BBF0);
    MEMORY[0x1AC554600](0xD00000000000007CLL, 0x80000001A605BC10);
    if (v0[10])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F40);
      v3 = sub_1A5FD3C1C();
      v5 = v4;

      MEMORY[0x1AC554600](v3, v5);

      MEMORY[0x1AC554600](0xD000000000000020, 0x80000001A605BC90);
      if (v0[11])
      {

        v6 = sub_1A5FD3C1C();
        v8 = v7;

        MEMORY[0x1AC554600](v6, v8);

        sub_1A5BF63A0(2, v52, v53);
      }
    }

    else
    {
LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  sub_1A5FD46AC();

  v52 = 0xD000000000000027;
  v53 = 0x80000001A605BAA0;
  v11 = *(*v0 + 160);
  v11(v10);
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1AC554750]();
  v15 = v14;

  MEMORY[0x1AC554600](v13, v15);

  sub_1A5BF63A0(2, 0xD000000000000027, 0x80000001A605BAA0);

  v17 = (v11)(v16);
  v18 = *(v17 + 16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F40);
  v50 = MEMORY[0x1AC554430](v18, v12, v19, MEMORY[0x1E69E6168]);
  sub_1A5FD46AC();

  v52 = 0xD000000000000028;
  v53 = 0x80000001A605BAD0;
  v21 = *(*v2 + 168);
  v21(v20);
  v22 = MEMORY[0x1AC554750]();
  v24 = v23;

  MEMORY[0x1AC554600](v22, v24);

  sub_1A5BF63A0(2, 0xD000000000000028, 0x80000001A605BAD0);

  v26 = (v21)(v25);
  v49 = MEMORY[0x1AC554430](*(v26 + 16), v12, v19, MEMORY[0x1E69E6168]);
  sub_1A5FD46AC();

  v52 = 0xD000000000000022;
  v53 = 0x80000001A605BB00;
  v27 = MEMORY[0x1AC554750](v17, v12);
  MEMORY[0x1AC554600](v27);

  MEMORY[0x1AC554600](0x74757074756F203BLL, 0xEB00000000203A73);
  v28 = MEMORY[0x1AC554750](v26, v12);
  MEMORY[0x1AC554600](v28);

  sub_1A5BF63A0(2, 0xD000000000000022, 0x80000001A605BB00);

  v29 = sub_1A5BF63A0(2, 0xD000000000000051, 0x80000001A605BB30);
  v30 = (*(*v2 + 408))(v29);
  if (v1)
  {

LABEL_23:
  }

  v31 = v30;
  sub_1A5BF63A0(2, 0xD000000000000050, 0x80000001A605BB90);
  if (v31)
  {
    v48 = v26;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD000000000000018, 0x80000001A605BBF0);
    MEMORY[0x1AC554600](0xD000000000000032, 0x80000001A605BCC0);
    sub_1A5BF63A0(2, 0, 0xE000000000000000);

    v32 = *(v17 + 16);
    if (v32)
    {
      v33 = (v17 + 40);
      while (1)
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        v52 = 0;
        v53 = 0xE000000000000000;

        sub_1A5FD46AC();

        v52 = 0xD000000000000032;
        v53 = 0x80000001A605BD00;
        MEMORY[0x1AC554600](v35, v34);
        sub_1A5BF63A0(2, v52, v53);

        v55 = 0;
        sub_1A5FD3D8C();
        v36 = e5rt_execution_stream_operation_retain_input_port();

        if (v36)
        {
          break;
        }

        if (!v55)
        {
          __break(1u);
        }

        (*(*v2 + 368))(&v52, v55, v35, v34);
        *&v51[0] = 0;
        *(&v51[0] + 1) = 0xE000000000000000;
        sub_1A5FD46AC();
        MEMORY[0x1AC554600](0xD000000000000018, 0x80000001A605BBF0);
        MEMORY[0x1AC554600](0xD000000000000029, 0x80000001A605BD80);
        __swift_project_boxed_opaque_existential_1(&v52, v54);
        sub_1A5FD4AEC();
        sub_1A5BF63A0(2, *&v51[0], *(&v51[0] + 1));

        swift_beginAccess();
        sub_1A5B180A0(&v52, v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1A5D3BB38(v51, v35, v34, isUniquelyReferenced_nonNull_native);

        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v52);
        e5rt_io_port_release();
        v33 += 2;
        if (!--v32)
        {
          goto LABEL_14;
        }
      }

      sub_1A5B16774();
      v44 = swift_allocError();
      sub_1A5D2879C(0xD00000000000003DLL, 0x80000001A605BD40, v36, v45);
      swift_willThrow();
      if (v44)
      {
LABEL_22:
        e5rt_execution_stream_operation_release();

        goto LABEL_23;
      }
    }

    else
    {
LABEL_14:
      v38 = *(v48 + 16);
      if (v38)
      {
        v39 = (v48 + 40);
        while (1)
        {
          v41 = *(v39 - 1);
          v40 = *v39;
          v52 = 0;
          v53 = 0xE000000000000000;

          sub_1A5FD46AC();

          v52 = 0xD000000000000035;
          v53 = 0x80000001A605BDB0;
          MEMORY[0x1AC554600](v41, v40);
          sub_1A5BF63A0(2, v52, v53);

          v55 = 0;
          sub_1A5FD3D8C();
          v42 = e5rt_execution_stream_operation_retain_output_port();

          if (v42)
          {
            break;
          }

          if (!v55)
          {
            __break(1u);
            goto LABEL_29;
          }

          (*(*v2 + 368))(&v52, v55, v41, v40);
          *&v51[0] = 0;
          *(&v51[0] + 1) = 0xE000000000000000;
          sub_1A5FD46AC();
          MEMORY[0x1AC554600](0xD000000000000018, 0x80000001A605BBF0);
          MEMORY[0x1AC554600](0xD00000000000002ALL, 0x80000001A605BE30);
          __swift_project_boxed_opaque_existential_1(&v52, v54);
          sub_1A5FD4AEC();
          sub_1A5BF63A0(2, *&v51[0], *(&v51[0] + 1));

          swift_beginAccess();
          sub_1A5B180A0(&v52, v51);
          v43 = swift_isUniquelyReferenced_nonNull_native();
          sub_1A5D3BB38(v51, v41, v40, v43);

          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(&v52);
          e5rt_io_port_release();
          v39 += 2;
          if (!--v38)
          {
            goto LABEL_26;
          }
        }

        sub_1A5B16774();
        v46 = swift_allocError();
        sub_1A5D2879C(0xD00000000000003ELL, 0x80000001A605BDF0, v42, v47);
        swift_willThrow();
        if (v46)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_26:
    e5rt_execution_stream_operation_release();
    swift_beginAccess();
    v2[10] = v50;

    swift_beginAccess();
    v2[11] = v49;
  }

LABEL_31:

  __break(1u);
  return result;
}

uint64_t sub_1A5D3B874(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F50);
  v33 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1A5B063D4(v24, v34);
      }

      else
      {
        sub_1A5B180A0(v24, v34);
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();
      result = sub_1A5FD4C6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A5B063D4(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A5D3BB38(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A5B0E2A4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A5D3BCFC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A5D3B874(v16, a4 & 1);
    v11 = sub_1A5B0E2A4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A5FD4B8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1A5B063D4(a1, v22);
  }

  else
  {
    sub_1A5D3BC8C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1A5D3BC8C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A5B063D4(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1A5D3BCFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5F50);
  v2 = *v0;
  v3 = sub_1A5FD485C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 40 * v17;
        sub_1A5B180A0(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A5B063D4(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}