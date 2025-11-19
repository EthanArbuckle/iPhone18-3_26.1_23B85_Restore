uint64_t sub_1B72BBC7C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B72BBD14()
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = 0;
  next_header = archive_read_next_header();
  if (next_header == 1)
  {
    return 0;
  }

  if (!next_header)
  {
    goto LABEL_9;
  }

  if (next_header != -20)
  {
    sub_1B72BBAB4();
    v15 = swift_allocError();
    v17 = v16;
    v18 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v19 = "17ArchiveDiskReader";
      v20 = 0xD000000000000021;
LABEL_17:
      v22 = sub_1B7800A28();
      *v17 = v18;
      *(v17 + 8) = v22;
      *(v17 + 16) = v23;
      sub_1B72BBB70();
      swift_allocError();
      *v24 = v15;
      *(v24 + 8) = v20;
      *(v24 + 16) = v19 | 0x8000000000000000;
      *(v24 + 24) = 1;
      return swift_willThrow();
    }

    goto LABEL_19;
  }

  archive_errno();
  result = archive_error_string();
  if (!result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2 = sub_1B7800A28();
  v4 = v3;
  v25 = sub_1B7802068();
  v26 = v5;
  MEMORY[0x1B8CA4D30](8250, 0xE200000000000000);
  MEMORY[0x1B8CA4D30](v2, v4);

  v7 = v25;
  v6 = v26;
  if (qword_1EB98EA08 != -1)
  {
    swift_once();
  }

  v8 = sub_1B78000B8();
  __swift_project_value_buffer(v8, qword_1EB9947C8);

  v9 = sub_1B7800098();
  v10 = sub_1B78011D8();

  if (!os_log_type_enabled(v9, v10))
  {

    goto LABEL_15;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v25 = v12;
  *v11 = 136315138;
  v13 = sub_1B71A3EF8(v7, v6, &v25);

  *(v11 + 4) = v13;
  _os_log_impl(&dword_1B7198000, v9, v10, "Read the header for the next entry with a warning: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v12);
  MEMORY[0x1B8CA7A40](v12, -1, -1);
  MEMORY[0x1B8CA7A40](v11, -1, -1);

LABEL_9:
  v14 = v27;
  if (v27)
  {
    type metadata accessor for ArchiveEntry();
    result = swift_allocObject();
    *(result + 16) = v14;
    return result;
  }

LABEL_15:
  sub_1B72BBAB4();
  v15 = swift_allocError();
  v17 = v21;
  v18 = archive_errno();
  result = archive_error_string();
  if (result)
  {
    v20 = 0xD000000000000012;
    v19 = "next entry header";
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B72BC070()
{
  v1 = archive_read_new();
  if (!v1)
  {
    sub_1B72BBB70();
    swift_allocError();
    *v13 = 0xD000000000000017;
    *(v13 + 8) = 0x80000001B7877F60;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = v1;
  if (archive_read_support_format_zip())
  {
    sub_1B72BBAB4();
    v3 = swift_allocError();
    v5 = v4;
    v6 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v8 = sub_1B7800A28();
      *v5 = v6;
      *(v5 + 8) = v8;
      *(v5 + 16) = v9;
      v10 = 0x80000001B7877F80;
      sub_1B72BBB70();
      swift_allocError();
      v12 = 0xD00000000000001BLL;
LABEL_5:
      *v11 = v3;
      *(v11 + 8) = v12;
      *(v11 + 16) = v10;
      *(v11 + 24) = 1;
      swift_willThrow();
      archive_read_free();
LABEL_7:
      swift_deallocPartialClassInstance();
      return v0;
    }

    __break(1u);
  }

  else
  {
    support_filter_compress = archive_read_support_filter_compress();
    if (support_filter_compress == -20 || !support_filter_compress)
    {
      *(v0 + 16) = v2;
      return v0;
    }

    sub_1B72BBAB4();
    v3 = swift_allocError();
    v16 = v15;
    v17 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v18 = sub_1B7800A28();
      *v16 = v17;
      *(v16 + 8) = v18;
      *(v16 + 16) = v19;
      v10 = 0x80000001B7877FA0;
      sub_1B72BBB70();
      swift_allocError();
      v12 = 0xD00000000000001CLL;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72BC298()
{
  result = archive_read_open_memory();
  if (result)
  {
    sub_1B72BBAB4();
    v1 = swift_allocError();
    v3 = v2;
    v4 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v5 = sub_1B7800A28();
      *v3 = v4;
      *(v3 + 8) = v5;
      *(v3 + 16) = v6;
      sub_1B72BBB70();
      swift_allocError();
      *v7 = v1;
      *(v7 + 8) = 0xD000000000000020;
      *(v7 + 16) = 0x80000001B7877F30;
      *(v7 + 24) = 1;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B72BC3A8()
{
  disk_new = archive_read_disk_new();
  if (!disk_new)
  {
    sub_1B72BBB70();
    swift_allocError();
    *v13 = 0xD000000000000017;
    *(v13 + 8) = 0x80000001B7877F60;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    swift_willThrow();
LABEL_10:
    swift_deallocPartialClassInstance();
    return v0;
  }

  v2 = disk_new;
  if (archive_read_disk_set_standard_lookup())
  {
    sub_1B72BBAB4();
    v3 = swift_allocError();
    v5 = v4;
    v6 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v8 = sub_1B7800A28();
      *v5 = v6;
      *(v5 + 8) = v8;
      *(v5 + 16) = v9;
      v10 = 0x80000001B7878020;
      sub_1B72BBB70();
      swift_allocError();
      v12 = 0xD000000000000025;
LABEL_9:
      *v11 = v3;
      *(v11 + 8) = v12;
      *(v11 + 16) = v10;
      *(v11 + 24) = 1;
      swift_willThrow();
      archive_read_free();
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    if (!archive_read_disk_set_symlink_physical())
    {
      *(v0 + 16) = v2;
      return v0;
    }

    sub_1B72BBAB4();
    v3 = swift_allocError();
    v15 = v14;
    v16 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v17 = sub_1B7800A28();
      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v18;
      v10 = 0x80000001B7878050;
      sub_1B72BBB70();
      swift_allocError();
      v12 = 0xD000000000000021;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72BC5C8()
{
  result = sub_1B7800268();
  if (v8)
  {
    sub_1B72BBAB4();
    v1 = swift_allocError();
    v3 = v2;
    v4 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v5 = sub_1B7800A28();
      *v3 = v4;
      *(v3 + 8) = v5;
      *(v3 + 16) = v6;
      sub_1B72BBB70();
      swift_allocError();
      *v7 = v1;
      *(v7 + 8) = 0xD000000000000023;
      *(v7 + 16) = 0x80000001B7877FF0;
      *(v7 + 24) = 1;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B72BC6D0()
{
  result = archive_read_close();
  if (result)
  {
    sub_1B72BBAB4();
    v1 = swift_allocError();
    v3 = v2;
    v4 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v5 = sub_1B7800A28();
      *v3 = v4;
      *(v3 + 8) = v5;
      *(v3 + 16) = v6;
      sub_1B72BBB70();
      swift_allocError();
      *v7 = v1;
      *(v7 + 8) = 0xD000000000000021;
      *(v7 + 16) = 0x80000001B7877FC0;
      *(v7 + 24) = 1;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B72BC7A8()
{
  archive_read_free();

  return swift_deallocClassInstance();
}

uint64_t sub_1B72BC804@<X0>(_DWORD *a1@<X8>)
{
  result = archive_read_disk_open();
  *a1 = result;
  return result;
}

uint64_t ArchiveWritingError.errorDescription.getter()
{
  v1 = v0[1];
  if ((v0[3] & 1) == 0)
  {
    v1 = *v0;
  }

  return v1;
}

unint64_t sub_1B72BC894()
{
  result = qword_1EB990E20;
  if (!qword_1EB990E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990E20);
  }

  return result;
}

uint64_t sub_1B72BC938()
{
  result = archive_write_header();
  if (result)
  {
    sub_1B72BBAB4();
    v1 = swift_allocError();
    v3 = v2;
    v4 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v5 = sub_1B7800A28();
      *v3 = v4;
      *(v3 + 8) = v5;
      *(v3 + 16) = v6;
      sub_1B72BC894();
      swift_allocError();
      *v7 = v1;
      *(v7 + 8) = 0xD00000000000001CLL;
      *(v7 + 16) = 0x80000001B7878130;
      *(v7 + 24) = 1;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B72BCA14()
{
  result = archive_write_finish_entry();
  if (result)
  {
    sub_1B72BBAB4();
    v1 = swift_allocError();
    v3 = v2;
    v4 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v5 = sub_1B7800A28();
      *v3 = v4;
      *(v3 + 8) = v5;
      *(v3 + 16) = v6;
      sub_1B72BC894();
      swift_allocError();
      *v7 = v1;
      *(v7 + 8) = 0xD000000000000016;
      *(v7 + 16) = 0x80000001B7878110;
      *(v7 + 24) = 1;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B72BCAEC()
{
  v1 = archive_write_disk_new();
  if (!v1)
  {
    sub_1B72BC894();
    swift_allocError();
    *v13 = 0xD00000000000001CLL;
    *(v13 + 8) = 0x80000001B7878150;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    swift_willThrow();
LABEL_10:
    swift_deallocPartialClassInstance();
    return v0;
  }

  v2 = v1;
  if (archive_write_disk_set_options())
  {
    sub_1B72BBAB4();
    v3 = swift_allocError();
    v5 = v4;
    v6 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v8 = sub_1B7800A28();
      *v5 = v6;
      *(v5 + 8) = v8;
      *(v5 + 16) = v9;
      v10 = 0x80000001B7878170;
      sub_1B72BC894();
      swift_allocError();
      v12 = 0xD000000000000024;
LABEL_9:
      *v11 = v3;
      *(v11 + 8) = v12;
      *(v11 + 16) = v10;
      *(v11 + 24) = 1;
      swift_willThrow();
      archive_write_free();
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    if (!archive_write_disk_set_standard_lookup())
    {
      *(v0 + 16) = v2;
      return v0;
    }

    sub_1B72BBAB4();
    v3 = swift_allocError();
    v15 = v14;
    v16 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v17 = sub_1B7800A28();
      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v18;
      v10 = 0x80000001B78781A0;
      sub_1B72BC894();
      swift_allocError();
      v12 = 0xD000000000000027;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B72BCD10()
{
  archive_write_free();

  return swift_deallocClassInstance();
}

uint64_t sub_1B72BCD6C()
{
  v1 = archive_write_new();
  if (!v1)
  {
    sub_1B72BC894();
    swift_allocError();
    *v13 = 0xD00000000000001FLL;
    *(v13 + 8) = 0x80000001B78781D0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    swift_willThrow();
LABEL_13:
    swift_deallocPartialClassInstance();
    return v0;
  }

  v2 = v1;
  if (archive_write_set_format_zip())
  {
    sub_1B72BBAB4();
    v3 = swift_allocError();
    v5 = v4;
    v6 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v8 = sub_1B7800A28();
      *v5 = v6;
      *(v5 + 8) = v8;
      *(v5 + 16) = v9;
      v10 = 0x80000001B78781F0;
      sub_1B72BC894();
      swift_allocError();
      v12 = 0xD000000000000023;
LABEL_12:
      *v11 = v3;
      *(v11 + 8) = v12;
      *(v11 + 16) = v10;
      *(v11 + 24) = 1;
      swift_willThrow();
      archive_write_free();
      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (archive_write_set_format_option())
  {
    sub_1B72BBAB4();
    v3 = swift_allocError();
    v15 = v14;
    v16 = archive_errno();
    result = archive_error_string();
    if (result)
    {
      v17 = sub_1B7800A28();
      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v18;
      v10 = 0x80000001B7878230;
      sub_1B72BC894();
      swift_allocError();
      v12 = 0xD000000000000030;
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if (!archive_write_open_fd())
  {
    *(v0 + 16) = v2;
    return v0;
  }

  sub_1B72BBAB4();
  v3 = swift_allocError();
  v20 = v19;
  v21 = archive_errno();
  result = archive_error_string();
  if (result)
  {
    v22 = sub_1B7800A28();
    *v20 = v21;
    *(v20 + 8) = v22;
    *(v20 + 16) = v23;
    v10 = 0x80000001B7878270;
    sub_1B72BC894();
    swift_allocError();
    v12 = 0xD00000000000001ELL;
    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B72BD080(uint64_t a1)
{
  v2 = sub_1B72BD96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72BD0BC(uint64_t a1)
{
  v2 = sub_1B72BD96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72BD0F8(uint64_t a1)
{
  v2 = sub_1B72BD918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72BD134(uint64_t a1)
{
  v2 = sub_1B72BD918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72BD170()
{
  v1 = 0x6365747A61;
  v2 = 0x373134666470;
  if (*v0 != 2)
  {
    v2 = 0x65646F437271;
  }

  if (*v0)
  {
    v1 = 0x38323165646F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B72BD1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72BF210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72BD208(uint64_t a1)
{
  v2 = sub_1B72BD81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72BD244(uint64_t a1)
{
  v2 = sub_1B72BD81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72BD280(uint64_t a1)
{
  v2 = sub_1B72BD8C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72BD2BC(uint64_t a1)
{
  v2 = sub_1B72BD8C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72BD2F8(uint64_t a1)
{
  v2 = sub_1B72BD870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72BD334(uint64_t a1)
{
  v2 = sub_1B72BD870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BarcodeFormat.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t BarcodeFormat.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E28);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E30);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E38);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E40);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E48);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72BD81C();
  sub_1B78023F8();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1B72BD8C4();
      v18 = v27;
      sub_1B7801ED8();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1B72BD870();
      v18 = v30;
      sub_1B7801ED8();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1B72BD918();
    v18 = v24;
    sub_1B7801ED8();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1B72BD96C();
  sub_1B7801ED8();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1B72BD81C()
{
  result = qword_1EB990E50;
  if (!qword_1EB990E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990E50);
  }

  return result;
}

unint64_t sub_1B72BD870()
{
  result = qword_1EB990E58;
  if (!qword_1EB990E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990E58);
  }

  return result;
}

unint64_t sub_1B72BD8C4()
{
  result = qword_1EB990E60;
  if (!qword_1EB990E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990E60);
  }

  return result;
}

unint64_t sub_1B72BD918()
{
  result = qword_1EB990E68;
  if (!qword_1EB990E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990E68);
  }

  return result;
}

unint64_t sub_1B72BD96C()
{
  result = qword_1EB990E70;
  if (!qword_1EB990E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990E70);
  }

  return result;
}

uint64_t BarcodeFormat.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E78);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E80);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E88);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E90);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990E98);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B72BD81C();
  v15 = v46;
  sub_1B78023C8();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1B7801E98();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1B721CE50();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1B7801B18();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v28 = &type metadata for BarcodeFormat;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1B72BD918();
        v32 = v35;
        sub_1B7801D38();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1B72BD96C();
        v25 = v35;
        sub_1B7801D38();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1B72BD8C4();
      v31 = v35;
      sub_1B7801D38();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1B72BD870();
      v33 = v35;
      sub_1B7801D38();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t Barcode.altText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Barcode.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Barcode.messageEncoding.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall Barcode.init(altText:format:message:messageEncoding:)(FinanceKit::Barcode *__return_ptr retstr, Swift::String_optional altText, FinanceKit::BarcodeFormat format, Swift::String message, Swift::String messageEncoding)
{
  v5 = *format;
  retstr->altText = altText;
  retstr->format = v5;
  retstr->message = message;
  retstr->messageEncoding = messageEncoding;
}

uint64_t sub_1B72BE104()
{
  v1 = 0x74786554746C61;
  v2 = 0x6567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 0x456567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x74616D726F66;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B72BE188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72BF368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72BE1B0(uint64_t a1)
{
  v2 = sub_1B72BEAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72BE1EC(uint64_t a1)
{
  v2 = sub_1B72BEAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Barcode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990EA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v12 = *(v1 + 16);
  v7 = *(v1 + 24);
  v11[2] = *(v1 + 32);
  v11[3] = v7;
  v8 = *(v1 + 40);
  v11[0] = *(v1 + 48);
  v11[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72BEAD8();
  sub_1B78023F8();
  v18 = 0;
  v9 = v13;
  sub_1B7801EF8();
  if (!v9)
  {
    v17 = v12;
    v16 = 1;
    sub_1B72BEB2C();
    sub_1B7801FC8();
    v15 = 2;
    sub_1B7801F78();
    v14 = 3;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Barcode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990EB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72BEAD8();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_1B7801D78();
  v11 = v10;
  v24 = v9;
  v27 = 1;
  sub_1B72BEB80();
  sub_1B7801E48();
  v12 = v28;
  v26 = 2;
  v13 = sub_1B7801DF8();
  v16 = v15;
  v22 = v12;
  v23 = v13;
  v25 = 3;
  v17 = sub_1B7801DF8();
  v19 = v18;
  v20 = *(v6 + 8);
  v21 = v17;
  v20(v8, v5);
  *a2 = v24;
  *(a2 + 8) = v11;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v16;
  *(a2 + 40) = v21;
  *(a2 + 48) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Barcode.data.getter()
{
  v0 = sub_1B78008E8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7800838();
  v5 = CFStringConvertIANACharSetNameToEncoding(v4);

  if (v5 == -1)
  {
    return 0;
  }

  CFStringConvertEncodingToNSStringEncoding(v5);
  sub_1B78008D8();
  v6 = sub_1B7800878();
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t Barcode.init(_:previewResourceLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  sub_1B719B06C(a2, v20);
  if (v6)
  {
    v19 = v7;
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v18 = *(v13 + 8);

    v14 = v13;
    v7 = v19;
    v5 = v18(v5, v6, v12, v14);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    v16 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);

  *a3 = v5;
  *(a3 + 8) = v16;
  *(a3 + 16) = 0x1000203u >> (8 * v7);
  *(a3 + 24) = v9;
  *(a3 + 32) = v8;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  return result;
}

uint64_t _s10FinanceKit7BarcodeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (!v3)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v9)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v9)
  {
    v16 = sub_1B78020F8();
    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    if (v4 != v10)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v4 != v10)
  {
    return 0;
  }

LABEL_11:
  if ((v5 != v11 || v6 != v12) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  if (v7 == v13 && v8 == v14)
  {
    return 1;
  }

  return sub_1B78020F8();
}

unint64_t sub_1B72BEAD8()
{
  result = qword_1EB990EA8;
  if (!qword_1EB990EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990EA8);
  }

  return result;
}

unint64_t sub_1B72BEB2C()
{
  result = qword_1EB990EB0;
  if (!qword_1EB990EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990EB0);
  }

  return result;
}

unint64_t sub_1B72BEB80()
{
  result = qword_1EB990EC0;
  if (!qword_1EB990EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990EC0);
  }

  return result;
}

unint64_t sub_1B72BEBD8()
{
  result = qword_1EB990EC8;
  if (!qword_1EB990EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990EC8);
  }

  return result;
}

uint64_t sub_1B72BEC3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B72BEC84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B72BED44()
{
  result = qword_1EB990ED0;
  if (!qword_1EB990ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990ED0);
  }

  return result;
}

unint64_t sub_1B72BED9C()
{
  result = qword_1EB990ED8;
  if (!qword_1EB990ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990ED8);
  }

  return result;
}

unint64_t sub_1B72BEDF4()
{
  result = qword_1EB990EE0;
  if (!qword_1EB990EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990EE0);
  }

  return result;
}

unint64_t sub_1B72BEE4C()
{
  result = qword_1EB990EE8;
  if (!qword_1EB990EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990EE8);
  }

  return result;
}

unint64_t sub_1B72BEEA4()
{
  result = qword_1EB990EF0;
  if (!qword_1EB990EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990EF0);
  }

  return result;
}

unint64_t sub_1B72BEEFC()
{
  result = qword_1EB990EF8;
  if (!qword_1EB990EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990EF8);
  }

  return result;
}

unint64_t sub_1B72BEF54()
{
  result = qword_1EB990F00;
  if (!qword_1EB990F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F00);
  }

  return result;
}

unint64_t sub_1B72BEFAC()
{
  result = qword_1EB990F08;
  if (!qword_1EB990F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F08);
  }

  return result;
}

unint64_t sub_1B72BF004()
{
  result = qword_1EB990F10;
  if (!qword_1EB990F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F10);
  }

  return result;
}

unint64_t sub_1B72BF05C()
{
  result = qword_1EB990F18;
  if (!qword_1EB990F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F18);
  }

  return result;
}

unint64_t sub_1B72BF0B4()
{
  result = qword_1EB990F20;
  if (!qword_1EB990F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F20);
  }

  return result;
}

unint64_t sub_1B72BF10C()
{
  result = qword_1EB990F28;
  if (!qword_1EB990F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F28);
  }

  return result;
}

unint64_t sub_1B72BF164()
{
  result = qword_1EB990F30;
  if (!qword_1EB990F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F30);
  }

  return result;
}

unint64_t sub_1B72BF1BC()
{
  result = qword_1EB990F38;
  if (!qword_1EB990F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F38);
  }

  return result;
}

uint64_t sub_1B72BF210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6365747A61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x38323165646F63 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x373134666470 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F437271 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B72BF368(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74786554746C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456567617373656DLL && a2 == 0xEF676E69646F636ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B72BF51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = 0xE400000000000000;
      v9 = 1801807223;
      if (a4 <= 2)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (a2 != 4)
    {
      if (a2 == 5)
      {
        v8 = 0xE400000000000000;
        v9 = 1918985593;
        if (a4 <= 2)
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }

LABEL_16:
      v9 = a1;
      v8 = a2;
      if (a4 <= 2)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v8 = 0xE500000000000000;
    v9 = 0x68746E6F6DLL;
    if (a4 > 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!a2)
    {
      v8 = 0xE600000000000000;
      v9 = 0x6574756E696DLL;
      if (a4 <= 2)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v8 = 0xE300000000000000;
        v9 = 7954788;
        if (a4 <= 2)
        {
          goto LABEL_27;
        }

LABEL_19:
        switch(a4)
        {
          case 3:
            v10 = 0xE400000000000000;
            if (v9 != 1801807223)
            {
              goto LABEL_41;
            }

            break;
          case 4:
            v10 = 0xE500000000000000;
            if (v9 != 0x68746E6F6DLL)
            {
              goto LABEL_41;
            }

            goto LABEL_39;
          case 5:
            v10 = 0xE400000000000000;
            if (v9 != 1918985593)
            {
              goto LABEL_41;
            }

            break;
          default:
            goto LABEL_34;
        }

        goto LABEL_39;
      }

      goto LABEL_16;
    }

    v8 = 0xE400000000000000;
    v9 = 1920298856;
    if (a4 > 2)
    {
      goto LABEL_19;
    }
  }

LABEL_27:
  if (!a4)
  {
    v10 = 0xE600000000000000;
    if (v9 != 0x6574756E696DLL)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v10 = 0xE300000000000000;
      if (v9 != 7954788)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_34:
    v10 = a4;
    if (v9 != a3)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v10 = 0xE400000000000000;
  if (v9 != 1920298856)
  {
LABEL_41:
    v11 = sub_1B78020F8();
    goto LABEL_42;
  }

LABEL_39:
  if (v8 != v10)
  {
    goto LABEL_41;
  }

  v11 = 1;
LABEL_42:
  a5();
  (a5)(a3, a4);

  return v11 & 1;
}

uint64_t sub_1B72BF764(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001B7873890;
    }

    else
    {
      v5 = 0x80000001B78738B0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C61767265746E69;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x80000001B7873870;
    }
  }

  v6 = 0xD000000000000011;
  v7 = 0x80000001B78738B0;
  if (a2 == 2)
  {
    v7 = 0x80000001B7873890;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (a2)
  {
    v2 = 0x6C61767265746E69;
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x80000001B7873870;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B72BF888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = 0xEC0000006E6F6974;
  v9 = 0x7069726373627573;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v10 = 0xE500000000000000;
        v11 = 0x726568746FLL;
        if (a4 <= 1)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

LABEL_10:
      v11 = a1;
      v10 = a2;
      if (a4 <= 1)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v11 = 0x6D6C6C6174736E69;
    v10 = 0xEB00000000746E65;
    if (a4 > 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE700000000000000;
        v11 = 0x676E696C6C6962;
        if (a4 <= 1)
        {
          goto LABEL_18;
        }

LABEL_13:
        if (a4 == 2)
        {
          v8 = 0xEB00000000746E65;
          if (v11 != 0x6D6C6C6174736E69)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        if (a4 == 3)
        {
          v8 = 0xE500000000000000;
          if (v11 != 0x726568746FLL)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v11 = 0x7069726373627573;
    v10 = 0xEC0000006E6F6974;
    if (a4 > 1)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  if (!a4)
  {
    goto LABEL_23;
  }

  if (a4 == 1)
  {
    v8 = 0xE700000000000000;
    if (v11 != 0x676E696C6C6962)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_22:
  v9 = a3;
  v8 = a4;
LABEL_23:
  if (v11 != v9)
  {
LABEL_27:
    v12 = sub_1B78020F8();
    goto LABEL_28;
  }

LABEL_24:
  if (v10 != v8)
  {
    goto LABEL_27;
  }

  v12 = 1;
LABEL_28:
  a5();
  (a5)(a3, a4);

  return v12 & 1;
}

uint64_t sub_1B72BFA7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 <= 2u)
  {
    v10 = 0xE500000000000000;
    v11 = 0x6C6562616CLL;
    if (a1 != 1)
    {
      v11 = 0x6D614E6567616D69;
      v10 = 0xE900000000000065;
    }

    if (a1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x696669746E656469;
    }

    if (v4)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xEA00000000007265;
    }
  }

  else
  {
    if (a1 > 4u)
    {
      v5 = 0xD000000000000016;
      v6 = 0x80000001B7873910;
      v7 = 0x80000001B7873930;
      v8 = 0xD00000000000001DLL;
      v9 = a1 == 5;
    }

    else
    {
      v5 = 0x54746E656D796170;
      v6 = 0xEB00000000657079;
      v7 = 0x80000001B78738F0;
      v8 = 0xD000000000000017;
      v9 = a1 == 3;
    }

    if (v9)
    {
      v12 = v5;
    }

    else
    {
      v12 = v8;
    }

    if (v9)
    {
      v13 = v6;
    }

    else
    {
      v13 = v7;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v12 != 0x6C6562616CLL)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x6D614E6567616D69;
      v2 = 0xE900000000000065;
    }

    if (v12 != v3)
    {
LABEL_41:
      v15 = sub_1B78020F8();
      goto LABEL_42;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v14 = 0xD000000000000016;
    }

    else
    {
      v14 = 0xD00000000000001DLL;
    }

    if (a2 == 5)
    {
      v2 = 0x80000001B7873910;
    }

    else
    {
      v2 = 0x80000001B7873930;
    }

    if (v12 != v14)
    {
      goto LABEL_41;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xEB00000000657079;
    if (v12 != 0x54746E656D796170)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v2 = 0x80000001B78738F0;
    if (v12 != 0xD000000000000017)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v13 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1B72BFCB4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v8 = 0x6465727265666564;
  v9 = 0x6974616D6F747561;
  v10 = 0xEF64616F6C655263;
  if (a2 != 2)
  {
    v9 = a1;
    v10 = a2;
  }

  if (a2 == 1)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v8 = v9;
    v11 = v10;
  }

  if (a2)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0x6E69727275636572;
  }

  if (a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE900000000000067;
  }

  v14 = 0xE800000000000000;
  v15 = 0x6465727265666564;
  v16 = 0x6974616D6F747561;
  v17 = 0xEF64616F6C655263;
  if (a4 != 2)
  {
    v16 = a3;
    v17 = a4;
  }

  if (a4 != 1)
  {
    v15 = v16;
    v14 = v17;
  }

  if (a4)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0x6E69727275636572;
  }

  if (a4)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0xE900000000000067;
  }

  if (v12 == v18 && v13 == v19)
  {
    v20 = 1;
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v23 = sub_1B78020F8();
    a2 = v22;
    v20 = v23;
    a1 = v21;
  }

  a5(a1, a2);
  a5(a3, a4);

  return v20 & 1;
}

uint64_t sub_1B72BFE28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6D657449656E696CLL;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE900000000000073;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x497972616D6D7573;
    v6 = 0xEC000000736D6574;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6F6D416C61746F74;
    }

    else
    {
      v5 = 0x44746E656D796170;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000746E75;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  v7 = 0x497972616D6D7573;
  v8 = 0xEC000000736D6574;
  v9 = 0x6F6D416C61746F74;
  v10 = 0xEB00000000746E75;
  if (a2 != 3)
  {
    v9 = 0x44746E656D796170;
    v10 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x6D657449656E696CLL;
    v2 = 0xE900000000000073;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B78020F8();
  }

  return v13 & 1;
}

uint64_t sub_1B72BFFE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697372;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x746E61686372656DLL;
    v13 = 0xEC000000656D614ELL;
    if (a1 != 2)
    {
      v12 = 0xD000000000000010;
      v13 = 0x80000001B78739B0;
    }

    v14 = 0x80000001B7873980;
    v15 = 0xD000000000000017;
    if (!a1)
    {
      v15 = 0x6556616D65686373;
      v14 = 0xED00006E6F697372;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v12;
    }

    if (v3 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v4 = 0x80000001B78739F0;
    v5 = 0xD000000000000015;
    v6 = 0x80000001B7873A10;
    v7 = 0x6974617269707865;
    if (a1 == 7)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xEE00657461446E6FLL;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x80000001B78739D0;
    v9 = 0x6D79615074736170;
    if (a1 == 4)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xEC00000073746E65;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001B7873980;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_52;
        }
      }

      else if (v10 != 0x6556616D65686373)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (a2 != 2)
    {
      v16 = "merchantLogoName";
LABEL_44:
      v2 = (v16 - 32) | 0x8000000000000000;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v17 = 0x746E61686372656DLL;
    v18 = 1701667150;
LABEL_49:
    v2 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v10 != v17)
    {
LABEL_52:
      v19 = sub_1B78020F8();
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v16 = "upcomingPayments";
      goto LABEL_44;
    }

    v17 = 0x6D79615074736170;
    v18 = 1937010277;
    goto LABEL_49;
  }

  if (a2 != 6)
  {
    if (a2 != 7)
    {
      v2 = 0xEE00657461446E6FLL;
      if (v10 != 0x6974617269707865)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = "modificationDate";
    goto LABEL_44;
  }

  v2 = 0x80000001B78739F0;
  if (v10 != 0xD000000000000015)
  {
    goto LABEL_52;
  }

LABEL_50:
  if (v11 != v2)
  {
    goto LABEL_52;
  }

  v19 = 1;
LABEL_53:

  return v19 & 1;
}

uint64_t sub_1B72C02AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = 0xD000000000000011;
  v7 = 0x80000001B78768C0;
  v8 = 0x80000001B78768E0;
  if (a2 == 2)
  {
    v9 = 0xD000000000000011;
  }

  else
  {
    v9 = a1;
  }

  if (a2 == 2)
  {
    v10 = 0x80000001B78768E0;
  }

  else
  {
    v10 = a2;
  }

  if (a2 == 1)
  {
    v9 = 0xD000000000000011;
    v10 = 0x80000001B78768C0;
  }

  if (a2)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0x7961705F6F747561;
    v11 = 0xEC000000746E656DLL;
  }

  if (a4 == 2)
  {
    v12 = 0xD000000000000011;
  }

  else
  {
    v12 = a3;
  }

  if (a4 != 2)
  {
    v8 = a4;
  }

  if (a4 != 1)
  {
    v6 = v12;
    v7 = v8;
  }

  if (a4)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0x7961705F6F747561;
  }

  if (a4)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0xEC000000746E656DLL;
  }

  if (v9 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = a1;
    v17 = a2;
    v18 = sub_1B78020F8();
    a2 = v17;
    v15 = v18;
    a1 = v16;
  }

  sub_1B71E4C5C(a1, a2);
  sub_1B71E4C5C(a3, a4);

  return v15 & 1;
}

uint64_t sub_1B72C03D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = 0xD00000000000001FLL;
  v4 = "rmedAtForPendingConsent";
  v5 = a1;
  if (a1 == 4)
  {
    v6 = "updateCloudAccountMatch";
  }

  else
  {
    v6 = "deleteLocalAccountMatch";
  }

  if (a1 == 3)
  {
    v7 = "mergeCloudAccountMatch";
  }

  else
  {
    v7 = v6;
  }

  if (a1 == 1)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v8 = 0xD000000000000016;
  }

  if (v5 == 1)
  {
    v9 = "insertOrUpdateLocalAccountMatch";
  }

  else
  {
    v9 = "insertCloudAccountMatch";
  }

  if (v5)
  {
    v3 = v8;
  }

  else
  {
    v9 = "rmedAtForPendingConsent";
  }

  if (v5 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xD000000000000017;
  }

  if (v5 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v4 = "mergeCloudAccountMatch";
    }

    else if (a2 == 4)
    {
      v4 = "updateCloudAccountMatch";
    }

    else
    {
      v4 = "deleteLocalAccountMatch";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v4 = "insertOrUpdateLocalAccountMatch";
    }

    else
    {
      v2 = 0xD000000000000016;
      v4 = "insertCloudAccountMatch";
    }
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (v10 == v2 && (v11 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B78020F8();
  }

  return v12 & 1;
}

uint64_t sub_1B72C0524(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = "valid";
  v4 = a1;
  if (a1 <= 4u)
  {
    v9 = "deleteLocalConsent";
    v10 = 0xD000000000000014;
    v11 = "deletePendingConsent";
    v12 = 0xD00000000000001CLL;
    if (a1 == 3)
    {
      v12 = 0xD000000000000012;
    }

    else
    {
      v11 = "insertCloudConsent";
    }

    if (a1 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    v13 = "deleteCloudConsent";
    if (!a1)
    {
      v13 = "valid";
    }

    if (a1 <= 1u)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v10;
    }

    if (v4 <= 1)
    {
      v8 = v13;
    }

    else
    {
      v8 = v9;
    }
  }

  else if (a1 > 7u)
  {
    v14 = "rmedAtForLocalConsent";
    v15 = 0xD000000000000037;
    if (a1 == 9)
    {
      v15 = 0xD000000000000035;
    }

    else
    {
      v14 = "rmedAtForCloudConsent";
    }

    if (a1 == 8)
    {
      v7 = 0xD000000000000035;
    }

    else
    {
      v7 = v15;
    }

    if (v4 == 8)
    {
      v8 = "ntWithLocalPendingConsent";
    }

    else
    {
      v8 = v14;
    }
  }

  else
  {
    v5 = "mergeCloudConsent";
    v6 = 0xD000000000000022;
    if (a1 != 6)
    {
      v6 = 0xD000000000000029;
      v5 = "ntWithLocalConsent";
    }

    if (a1 == 5)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v6;
    }

    if (v4 == 5)
    {
      v8 = "insertOrUpdatePendingConsent";
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v3 = "deleteCloudConsent";
      }
    }

    else if (a2 == 2)
    {
      v3 = "deleteLocalConsent";
      v2 = 0xD000000000000014;
    }

    else if (a2 == 3)
    {
      v3 = "deletePendingConsent";
    }

    else
    {
      v3 = "insertCloudConsent";
      v2 = 0xD00000000000001CLL;
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v16 = "updateBackgroundRefreshLastConfirmedAtForLocalConsent";
    }

    else
    {
      if (a2 != 9)
      {
        v3 = "rmedAtForCloudConsent";
        v2 = 0xD000000000000037;
        goto LABEL_54;
      }

      v16 = "updateBackgroundRefreshLastConfirmedAtForCloudConsent";
    }

    v3 = (v16 - 32);
    v2 = 0xD000000000000035;
  }

  else if (a2 == 5)
  {
    v3 = "insertOrUpdatePendingConsent";
    v2 = 0xD000000000000011;
  }

  else if (a2 == 6)
  {
    v3 = "mergeCloudConsent";
    v2 = 0xD000000000000022;
  }

  else
  {
    v3 = "ntWithLocalConsent";
    v2 = 0xD000000000000029;
  }

LABEL_54:
  if (v7 == v2 && (v8 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1B78020F8();
  }

  return v17 & 1;
}

uint64_t sub_1B72C07B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6465766F72707061;
    }

    else
    {
      v3 = 0x676E69646E6570;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0x6574656C706D6F63;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v3 = 0x656C6C65636E6163;
LABEL_12:
      v4 = 0xE900000000000064;
      goto LABEL_14;
    }

    v4 = 0xE600000000000000;
    v3 = 0x64656C696166;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6465766F72707061;
    }

    else
    {
      v9 = 0x676E69646E6570;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x656C6C65636E6163;
    v6 = 0xE900000000000064;
    if (a2 != 3)
    {
      v5 = 0x64656C696166;
      v6 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6574656C706D6F63;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE900000000000064;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v8)
  {
LABEL_34:
    v10 = sub_1B78020F8();
    goto LABEL_35;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_1B72C0940(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF657079546E6F69;
  v3 = 0x746361736E617274;
  v4 = a1;
  v5 = 0x74706965636572;
  v6 = 0xE800000000000000;
  if (a1 == 6)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x7374706965636572;
  }

  v7 = 0x4164657461657263;
  v8 = 0xE900000000000074;
  if (a1 != 4)
  {
    v7 = 0xD00000000000001DLL;
    v8 = 0x80000001B7874420;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x4D746E656D796170;
  v10 = 0xED0000646F687465;
  v11 = 0xE600000000000000;
  if (a1 != 2)
  {
    v9 = 0x746E756F6D61;
    v10 = 0xE600000000000000;
  }

  v12 = 0x737574617473;
  if (!a1)
  {
    v12 = 0x746361736E617274;
    v11 = 0xEF657079546E6F69;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x74706965636572)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x7374706965636572)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE900000000000074;
      if (v13 != 0x4164657461657263)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0x80000001B7874420;
      if (v13 != 0xD00000000000001DLL)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED0000646F687465;
        if (v13 != 0x4D746E656D796170)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v2 = 0xE600000000000000;
      v3 = 0x746E756F6D61;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x737574617473)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = sub_1B78020F8();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v2)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_1B72C0BB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7265696669746ELL;
  v3 = 0x656449726564726FLL;
  if (a1 > 3u)
  {
    v4 = 0x80000001B7873F00;
    v5 = 0xD000000000000017;
    if (a1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x80000001B7873F20;
    }

    v6 = 0x644170756B636970;
    v7 = 0xED00007373657264;
    if (a1 != 4)
    {
      v6 = 0x6F4C70756B636970;
      v7 = 0xEE006E6F69746163;
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = 0x80000001B7873EB0;
    v5 = 0xD000000000000019;
    if (a1 != 2)
    {
      v5 = 0x695770756B636970;
      v4 = 0xEC000000776F646ELL;
    }

    v6 = 0xD000000000000010;
    v7 = 0x80000001B7873E90;
    if (!a1)
    {
      v6 = 0x656449726564726FLL;
      v7 = 0xEF7265696669746ELL;
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001B7873F00;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x80000001B7873F20;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00007373657264;
      if (v9 != 0x644170756B636970)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xEE006E6F69746163;
      if (v9 != 0x6F4C70756B636970)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001B7873EB0;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x695770756B636970;
      v2 = 0xEC000000776F646ELL;
    }

    else if (a2)
    {
      v2 = 0x80000001B7873E90;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v9 != v3)
    {
LABEL_41:
      v11 = sub_1B78020F8();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v10 != v2)
  {
    goto LABEL_41;
  }

  v11 = 1;
LABEL_42:

  return v11 & 1;
}

uint64_t sub_1B72C0E98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x705564656B636970;
  v6 = 0xE500000000000000;
  v7 = 0x6575737369;
  if (a1 != 4)
  {
    v7 = 0x656C6C65636E6163;
    v6 = 0xE900000000000064;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x69737365636F7270;
  v9 = 0xEA0000000000676ELL;
  if (a1 != 1)
  {
    v8 = 0x726F467964616572;
    v9 = 0xEE0070756B636950;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1852141679;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x705564656B636970)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6575737369)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x656C6C65636E6163)
      {
LABEL_34:
        v13 = sub_1B78020F8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA0000000000676ELL;
      if (v10 != 0x69737365636F7270)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE0070756B636950;
      if (v10 != 0x726F467964616572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1852141679)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1B72C1098(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "epay";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (v3 == 2)
    {
      v4 = "localOrderHistoryToken";
    }

    else
    {
      v4 = "dropboxHistoryToken";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "cloudOrderHistoryToken";
    }

    else
    {
      v4 = "epay";
    }

    v5 = 0xD000000000000016;
  }

  v6 = "localOrderHistoryToken";
  v7 = 0xD000000000000013;
  if (a2 != 2)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "dropboxHistoryToken";
  }

  if (a2)
  {
    v2 = "cloudOrderHistoryToken";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B78020F8();
  }

  return v10 & 1;
}

uint64_t sub_1B72C11B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1852141679;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0xE500000000000000;
  v6 = 0x6575737369;
  if (a1 != 6)
  {
    v6 = 0x656C6C65636E6163;
    v5 = 0xE900000000000064;
  }

  v7 = 0x6544726F4674756FLL;
  v8 = 0xEE0079726576696CLL;
  if (a1 != 4)
  {
    v7 = 0x65726576696C6564;
    v8 = 0xE900000000000064;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x64657070696873;
  if (a1 != 2)
  {
    v10 = 0x7961576568546E6FLL;
    v9 = 0xE800000000000000;
  }

  v11 = 0x69737365636F7270;
  if (a1)
  {
    v4 = 0xEA0000000000676ELL;
  }

  else
  {
    v11 = 1852141679;
  }

  if (a1 > 1u)
  {
    v4 = v9;
  }

  else
  {
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v3 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = 0xE500000000000000;
        v2 = 0x6575737369;
        goto LABEL_37;
      }

      v2 = 0x656C6C65636E6163;
    }

    else
    {
      if (a2 == 4)
      {
        v2 = 0x6544726F4674756FLL;
        v14 = 0xEE0079726576696CLL;
        goto LABEL_37;
      }

      v2 = 0x65726576696C6564;
    }

    v14 = 0xE900000000000064;
    goto LABEL_37;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 0xE700000000000000;
      v2 = 0x64657070696873;
    }

    else
    {
      v14 = 0xE800000000000000;
      v2 = 0x7961576568546E6FLL;
    }
  }

  else if (a2)
  {
    v2 = 0x69737365636F7270;
    v14 = 0xEA0000000000676ELL;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

LABEL_37:
  if (v12 == v2 && v13 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B78020F8();
  }

  return v15 & 1;
}

uint64_t sub_1B72C1410(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1852141679;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0xE500000000000000;
  v6 = 0x6575737369;
  v7 = 0x6574656C706D6F63;
  if (a1 != 4)
  {
    v7 = 0x656C6C65636E6163;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = 0xE900000000000064;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7961576568546E6FLL;
  if (a1 != 1)
  {
    v9 = 0x69737365636F7270;
    v8 = 0xEA0000000000676ELL;
  }

  if (a1)
  {
    v4 = v8;
  }

  else
  {
    v9 = 1852141679;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v3 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      v2 = 0x6575737369;
    }

    else
    {
      if (a2 == 4)
      {
        v2 = 0x6574656C706D6F63;
      }

      else
      {
        v2 = 0x656C6C65636E6163;
      }

      v12 = 0xE900000000000064;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      v2 = 0x7961576568546E6FLL;
    }

    else
    {
      v2 = 0x69737365636F7270;
      v12 = 0xEA0000000000676ELL;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  if (v10 == v2 && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B78020F8();
  }

  return v13 & 1;
}

uint64_t sub_1B72C15D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "FinancialLab_Localizable";
      v3 = 0xD000000000000016;
    }

    else
    {
      v4 = "FinanceKit_Localizable";
      v3 = 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2)
    {
      v4 = "BankConnect_Localizable";
    }

    else
    {
      v4 = "";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v6 = "FinancialLab_Localizable";
    }

    else
    {
      v6 = "FinanceKit_Localizable";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000017;
    }

    if (a2)
    {
      v6 = "BankConnect_Localizable";
    }

    else
    {
      v6 = "";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();
  }

  return v7 & 1;
}

uint64_t sub_1B72C1700(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x524F485455414E55;
    }

    if (v2)
    {
      v3 = 0x80000001B7873450;
    }

    else
    {
      v3 = 0xEC00000044455A49;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000001B7873470;
    v4 = 0xD000000000000010;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001B7873490;
    v4 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x524F485455414E55;
    }

    if (a2)
    {
      v5 = 0x80000001B7873450;
    }

    else
    {
      v5 = 0xEC00000044455A49;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001B7873470;
    if (v4 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001B7873490;
    if (v4 != 0xD000000000000018)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v4 != 0x6E776F6E6B6E75)
    {
LABEL_31:
      v7 = sub_1B78020F8();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1B72C18A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF534B4E4952445FLL;
  v3 = 0x444E415F444F4F46;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x4C4556415254;
  if (a1 != 6)
  {
    v6 = 0x4E574F4E4B4E55;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x474E4950504F4853;
  if (a1 != 4)
  {
    v8 = 0x524F50534E415254;
    v7 = 0xE900000000000054;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x48544C414548;
  if (a1 != 2)
  {
    v10 = 0x5345434956524553;
    v9 = 0xE800000000000000;
  }

  v11 = 0xE300000000000000;
  v12 = 5133638;
  if (!a1)
  {
    v12 = 0x444E415F444F4F46;
    v11 = 0xEF534B4E4952445FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x4C4556415254)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x4E574F4E4B4E55)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v13 != 0x474E4950504F4853)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE900000000000054;
      if (v13 != 0x524F50534E415254)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x48544C414548)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      v3 = 0x5345434956524553;
    }

    else if (a2)
    {
      v2 = 0xE300000000000000;
      if (v13 != 5133638)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1B78020F8();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1B72C1B00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004445;
  v3 = 0x5A49524F48545541;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1330464077;
    }

    else
    {
      v5 = 0x5A49524F48545541;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEA00000000004445;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x474E49444E4550;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x44454B4F4F42;
    }

    else
    {
      v5 = 0x44455443454A4552;
    }

    if (v4 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x474E49444E4550;
  v9 = 0xE600000000000000;
  v10 = 0x44454B4F4F42;
  if (a2 != 3)
  {
    v10 = 0x44455443454A4552;
    v9 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 1330464077;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B78020F8();
  }

  return v13 & 1;
}

uint64_t sub_1B72C1C6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "scheduled-payments";
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      v6 = "4f-ae5b-ef58636aa1a1";
      v7 = "da-9956-4a1769ca75d2";
      v8 = a1 == 6;
    }

    else
    {
      v6 = "ce-b5b2-f451a02dbdaa";
      v7 = "09-a67a-beb31cf3b464";
      v8 = a1 == 4;
    }

    if (v8)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v3 = "82-80db-b19522b86b29";
    if (a1 != 2)
    {
      v3 = "93-b89e-b7e974a05e7b";
    }

    v4 = "f4-9604-04092216df15";
    if (!a1)
    {
      v4 = "scheduled-payments";
    }

    if (a1 <= 1u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v9 = "033c00e6-fc7a-40da-9956-4a1769ca75d2";
      }

      else
      {
        v9 = "fc7c6c1e-097b-4efa-a499-0e54302279c6";
      }
    }

    else if (a2 == 4)
    {
      v9 = "bbafc3b2-0d29-4409-a67a-beb31cf3b464";
    }

    else
    {
      v9 = "33aa6b32-f140-4f4f-ae5b-ef58636aa1a1";
    }

    goto LABEL_30;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = "97129731-08c4-4393-b89e-b7e974a05e7b";
    }

    else
    {
      v9 = "a0a0501f-2e22-43ce-b5b2-f451a02dbdaa";
    }

LABEL_30:
    v2 = (v9 - 32);
    goto LABEL_31;
  }

  if (a2)
  {
    v2 = "f4-9604-04092216df15";
  }

LABEL_31:
  if ((v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B78020F8();
  }

  return v10 & 1;
}

uint64_t sub_1B72C1E14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1312899657;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1312899657;
    }

    else
    {
      v4 = 5128528;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v4 = 0xD000000000000018;
    if (v3)
    {
      v5 = 0x80000001B7874D70;
    }

    else
    {
      v5 = 0x80000001B7874D50;
    }
  }

  v6 = 0xE400000000000000;
  if (a2 != 2)
  {
    v2 = 5128528;
    v6 = 0xE300000000000000;
  }

  v7 = 0x80000001B7874D70;
  if (!a2)
  {
    v7 = 0x80000001B7874D50;
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000018;
  }

  else
  {
    v8 = v2;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B78020F8();
  }

  return v10 & 1;
}

uint64_t sub_1B72C1F40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x454C554445484353;
  v3 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE700000000000000;
      v5 = 0x44455249505845;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0x44454C494146;
      }

      else
      {
        v5 = 0x45535345434F5250;
      }

      if (v3 == 4)
      {
        v6 = 0xE600000000000000;
      }

      else
      {
        v6 = 0xE900000000000044;
      }
    }
  }

  else
  {
    v4 = 0x454C4C45434E4143;
    if (a1 != 1)
    {
      v4 = 0x45444E4550535553;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x454C554445484353;
    }

    v6 = 0xE900000000000044;
  }

  v7 = 0xE700000000000000;
  v8 = 0x44455249505845;
  v9 = 0xE600000000000000;
  v10 = 0x44454C494146;
  if (a2 != 4)
  {
    v10 = 0x45535345434F5250;
    v9 = 0xE900000000000044;
  }

  if (a2 != 3)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0x454C4C45434E4143;
  if (a2 != 1)
  {
    v11 = 0x45444E4550535553;
  }

  if (a2)
  {
    v2 = v11;
  }

  if (a2 <= 2u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    v13 = 0xE900000000000044;
  }

  else
  {
    v13 = v7;
  }

  if (v5 == v12 && v6 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1B78020F8();
  }

  return v14 & 1;
}

uint64_t sub_1B72C20D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x455649544341;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x44455249505845;
  v7 = 0xE600000000000000;
  v8 = 0x44454C494146;
  if (a1 != 4)
  {
    v8 = 0x45535345434F5250;
    v7 = 0xE900000000000044;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x454C4C45434E4143;
  if (a1 != 1)
  {
    v9 = 0x45444E4550535553;
  }

  if (a1)
  {
    v4 = 0xE900000000000044;
  }

  else
  {
    v9 = 0x455649544341;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v3 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      v2 = 0x44455249505845;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0x45535345434F5250;
LABEL_27:
        v12 = 0xE900000000000044;
        goto LABEL_28;
      }

      v12 = 0xE600000000000000;
      v2 = 0x44454C494146;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x454C4C45434E4143;
      }

      else
      {
        v2 = 0x45444E4550535553;
      }

      goto LABEL_27;
    }

    v12 = 0xE600000000000000;
  }

LABEL_28:
  if (v10 == v2 && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B78020F8();
  }

  return v13 & 1;
}

uint64_t sub_1B72C228C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x45544147454C4544;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1162628947;
    }

    else
    {
      v4 = 0x4E574F4E4B4E55;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x544E494F4ALL;
    }

    else
    {
      v4 = 0x45544147454C4544;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE400000000000000;
  v8 = 1162628947;
  if (a2 != 2)
  {
    v8 = 0x4E574F4E4B4E55;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x544E494F4ALL;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B72C23B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000534E4F49;
  v3 = 0x544341534E415254;
  if (a1 > 3u)
  {
    v4 = 0xE700000000000000;
    v5 = 0x53445241574552;
    if (a1 != 6)
    {
      v5 = 0x4E454D4554415453;
      v4 = 0xEA00000000005354;
    }

    v6 = 0x80000001B7873D00;
    v7 = 0xD00000000000001ALL;
    if (a1 != 4)
    {
      v7 = 0x544341534E415254;
      v6 = 0xEC000000534E4F49;
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = 0x80000001B7873CC0;
    v5 = 0xD00000000000001BLL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000017;
      v4 = 0x80000001B7873CE0;
    }

    v6 = 0x80000001B7873C80;
    v7 = 0xD000000000000013;
    if (a1)
    {
      v7 = 0xD000000000000010;
      v6 = 0x80000001B7873CA0;
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        if (v9 != 0x53445241574552)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xEA00000000005354;
        if (v9 != 0x4E454D4554415453)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 4)
    {
      v2 = 0x80000001B7873D00;
      if (v9 != 0xD00000000000001ALL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001B7873CA0;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x80000001B7873C80;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 2)
    {
      v2 = 0x80000001B7873CC0;
      if (v9 != 0xD00000000000001BLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x80000001B7873CE0;
    v3 = 0xD000000000000017;
  }

  if (v9 != v3)
  {
LABEL_40:
    v11 = sub_1B78020F8();
    goto LABEL_41;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v11 = 1;
LABEL_41:

  return v11 & 1;
}

uint64_t sub_1B72C262C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6E726574746170;
    }

    else
    {
      v5 = 1701667182;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x616C706552696970;
    v4 = 0xEE00746E656D6563;
  }

  else if (a1 == 3)
  {
    v4 = 0xE800000000000000;
    v5 = 0x6C61626F6C477369;
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x73656C61636F6CLL;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE400000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x6E726574746170;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x616C706552696970;
    v6 = 0xEE00746E656D6563;
    v7 = 0xE800000000000000;
    v8 = 0x6C61626F6C477369;
    if (a2 != 3)
    {
      v8 = 0x73656C61636F6CLL;
      v7 = 0xE700000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B78020F8();
  }

  return v12 & 1;
}

uint64_t sub_1B72C27B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 7695219;
  if (a1 != 5)
  {
    v5 = 1852404839;
    v4 = 0xE400000000000000;
  }

  v6 = 0x656C746974;
  if (a1 != 3)
  {
    v6 = 0x6563697270;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE500000000000000;
  }

  v7 = 0x797469746E617571;
  if (a1 != 1)
  {
    v7 = 0x656C746974627573;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v7 = 0x6567616D69;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v10 = 0xE800000000000000;
      if (a2 == 1)
      {
        if (v8 != 0x797469746E617571)
        {
          goto LABEL_39;
        }
      }

      else if (v8 != 0x656C746974627573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0xE500000000000000;
      if (v8 != 0x6567616D69)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v10 = 0xE300000000000000;
      if (v8 != 7695219)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (v8 != 1852404839)
      {
LABEL_39:
        v12 = sub_1B78020F8();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v10 = 0xE500000000000000;
    if (a2 == 3)
    {
      v11 = 1819568500;
    }

    else
    {
      v11 = 1667854960;
    }

    if (v8 != (v11 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
    {
      goto LABEL_39;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1B72C29A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6365747A61;
    }

    else
    {
      v3 = 0x38323165646F63;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x373134666470;
    }

    else
    {
      v3 = 29297;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 29297;
  v7 = 0xE500000000000000;
  v8 = 0x6365747A61;
  if (a2 != 2)
  {
    v8 = 0x38323165646F63;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v6 = 0x373134666470;
    v5 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B72C2ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8();
  }
}

uint64_t sub_1B72C2AEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465646E75666572;
  v6 = 0xE800000000000000;
  v7 = 0x64656E696C636564;
  if (a1 != 4)
  {
    v7 = 0x646564696F76;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x7A69726F68747561;
  v9 = 0xEA00000000006465;
  if (a1 != 1)
  {
    v8 = 1684627824;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x676E69646E6570;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEA00000000006465;
        if (v10 != 0x7A69726F68747561)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1684627824)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E69646E6570)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    v13 = 0x646E75666572;
LABEL_27:
    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v12 = 0xE800000000000000;
    v13 = 0x6E696C636564;
    goto LABEL_27;
  }

  v12 = 0xE600000000000000;
  if (v10 != 0x646564696F76)
  {
LABEL_34:
    v14 = sub_1B78020F8();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

uint64_t sub_1B72C2CB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = "T_NUMBER";
  v4 = a1;
  v5 = 0xD000000000000028;
  if (a1 == 4)
  {
    v6 = "ed.service.bankconnect";
  }

  else
  {
    v5 = 0xD00000000000001CLL;
    v6 = "ed.service.coredatastore";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000026;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "ed.service.financestore";
  }

  v8 = 0xD000000000000020;
  if (a1 == 1)
  {
    v9 = "com.apple.aps.financed";
  }

  else
  {
    v8 = 0xD000000000000027;
    v9 = "ed.service.store";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD000000000000016;
    v10 = "T_NUMBER";
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000026;
      v3 = "ed.service.financestore";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000028;
      v3 = "ed.service.bankconnect";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v3 = "ed.service.coredatastore";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000020;
      v3 = "com.apple.aps.financed";
    }

    else
    {
      v2 = 0xD000000000000027;
      v3 = "ed.service.store";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B78020F8();
  }

  return v13 & 1;
}

uint64_t sub_1B72C2E28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65657267;
    }

    else
    {
      v4 = 6579570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702194274;
  if (a2 != 2)
  {
    v8 = 0x6168706C61;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65657267;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B72C2F40(char a1, char a2)
{
  if (qword_1B7811618[a1] == qword_1B7811618[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B78020F8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B72C2FA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4554454C4544;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1414745936;
    }

    else
    {
      v4 = 5526864;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 5522759;
    }

    else
    {
      v4 = 0x4554454C4544;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE400000000000000;
  v8 = 1414745936;
  if (a2 != 2)
  {
    v8 = 5526864;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 5522759;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B72C30B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "cloudOrderLatestMigratedSchema";
  v4 = a1;
  v5 = 0xD00000000000001ELL;
  if (a1 == 4)
  {
    v6 = "com.apple.finance.internal.read";
  }

  else
  {
    v5 = 0xD000000000000031;
    v6 = "ekit.financial-connection.host";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002ELL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "ekit.background-delivery";
  }

  v8 = 0xD000000000000019;
  if (a1 == 1)
  {
    v9 = "com.apple.finance.store";
  }

  else
  {
    v8 = 0xD00000000000001FLL;
    v9 = "com.apple.finance.private";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD000000000000017;
    v10 = "cloudOrderLatestMigratedSchema";
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000002ELL;
      v3 = "ekit.background-delivery";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001ELL;
      v3 = "com.apple.finance.internal.read";
    }

    else
    {
      v2 = 0xD000000000000031;
      v3 = "ekit.financial-connection.host";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000019;
      v3 = "com.apple.finance.store";
    }

    else
    {
      v2 = 0xD00000000000001FLL;
      v3 = "com.apple.finance.private";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B78020F8();
  }

  return v13 & 1;
}

uint64_t sub_1B72C3224(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000022;
  v3 = "modificationDate";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "ekit.maps-insights";
      v5 = 0xD000000000000027;
    }

    else
    {
      v6 = "ekit.financial-insights";
      v5 = 0xD000000000000028;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000022;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (v4)
    {
      v6 = "ekit.financial-connection-ui";
    }

    else
    {
      v6 = "modificationDate";
    }
  }

  if (a2 > 1u)
  {
    v3 = "ekit.maps-insights";
    v7 = 0xD000000000000027;
    v8 = "ekit.financial-insights";
    v2 = 0xD000000000000028;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD00000000000002CLL;
    v8 = "ekit.financial-connection-ui";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B78020F8();
  }

  return v12 & 1;
}

uint64_t sub_1B72C3344(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE004749464E4F43;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5F45434E414E4946;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (v3 == 2)
    {
      v4 = 0xEF504F4F4B534F42;
    }

    else
    {
      v4 = 0x80000001B7872F00;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEF58494E454F4850;
    }

    else
    {
      v4 = 0xEE004749464E4F43;
    }

    v5 = 0x5F45434E414E4946;
  }

  v6 = 0xD000000000000018;
  v7 = 0x80000001B7872F00;
  if (a2 == 2)
  {
    v6 = 0x5F45434E414E4946;
    v7 = 0xEF504F4F4B534F42;
  }

  if (a2)
  {
    v2 = 0xEF58494E454F4850;
  }

  if (a2 <= 1u)
  {
    v8 = 0x5F45434E414E4946;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B78020F8();
  }

  return v10 & 1;
}

uint64_t TransactionCategory.init(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  switch(result)
  {
    case 0:
      goto LABEL_14;
    case 1:
      v2 = 1;
      goto LABEL_14;
    case 2:
      v2 = 2;
      goto LABEL_14;
    case 3:
      v2 = 3;
      goto LABEL_14;
    case 4:
      v2 = 4;
      goto LABEL_14;
    case 5:
      v2 = 5;
      goto LABEL_14;
    case 6:
      v2 = 6;
      goto LABEL_14;
    case 7:
      v2 = 7;
      goto LABEL_14;
    case 8:
      v2 = 8;
      goto LABEL_14;
    case 9:
      v2 = 9;
      goto LABEL_14;
    case 10:
      v2 = 10;
      goto LABEL_14;
    case 11:
      v2 = 11;
      goto LABEL_14;
    case 12:
      v2 = 12;
LABEL_14:
      *a2 = v2;
      return result;
    case 13:
      sub_1B7801A78();
      MEMORY[0x1B8CA4D30](0xD000000000000026, 0x80000001B78782F0);
      type metadata accessor for FKPaymentTransactionCategory(0);
      sub_1B7801C48();
      goto LABEL_17;
    default:
      sub_1B7801A78();
      MEMORY[0x1B8CA4D30](0xD000000000000026, 0x80000001B78782C0);
      type metadata accessor for FKPaymentTransactionCategory(0);
      sub_1B7801C48();
LABEL_17:
      result = sub_1B7801C88();
      __break(1u);
      return result;
  }
}

FinanceKit::TransactionCategory_optional __swiftcall TransactionCategory.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xDu)
  {
    v2 = 13;
  }

  *v1 = v2;
  return rawValue;
}

FinanceKit::TransactionCategorySource_optional __swiftcall TransactionCategorySource.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

FinanceKit::TransactionCategoryAndSource __swiftcall TransactionCategoryAndSource.init(category:source:)(FinanceKit::TransactionCategory category, FinanceKit::TransactionCategorySource source)
{
  v3 = *source;
  *v2 = *category;
  v2[1] = v3;
  result.category = category;
  return result;
}

uint64_t sub_1B72C36C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B77FE748();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1B72C6084(&qword_1EB98FFD0, MEMORY[0x1E6967E70]), v7 = sub_1B7800758(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1B72C6084(&qword_1EB98F1C8, MEMORY[0x1E6967E70]);
      v15 = sub_1B7800828();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B72C38DC(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1B78022F8();
  Order.ShippingRecipient.hash(into:)();
  v4 = sub_1B7802368();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = a1[1];
    v34 = *a1;
    v9 = a1[3];
    v28 = a1[4];
    v30 = a1[2];
    v31 = a1[5];
    v29 = a1[6];
    v32 = ~v5;
    v33 = v9;
    do
    {
      v10 = (*(a2 + 48) + 56 * v6);
      v12 = v10[1];
      v11 = v10[2];
      v14 = v10[3];
      v13 = v10[4];
      v16 = v10[5];
      v15 = v10[6];
      if (v12)
      {
        if (!v8)
        {
          goto LABEL_5;
        }

        if (*v10 != v34 || v12 != v8)
        {
          v18 = sub_1B78020F8();
          v7 = v32;
          v9 = v33;
          if ((v18 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v8)
      {
        goto LABEL_5;
      }

      if (v14)
      {
        if (!v9)
        {
          goto LABEL_5;
        }

        if (v11 != v30 || v14 != v9)
        {
          v20 = sub_1B78020F8();
          v7 = v32;
          v9 = v33;
          if ((v20 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v9)
      {
        goto LABEL_5;
      }

      if (v16)
      {
        if (!v31)
        {
          goto LABEL_5;
        }

        if (v13 != v28 || v16 != v31)
        {
          v22 = sub_1B78020F8();
          v7 = v32;
          v9 = v33;
          if ((v22 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v31)
      {
        goto LABEL_5;
      }

      if (v15)
      {
        if (v29)
        {
          sub_1B72C6038();

          v23 = v15;
          v24 = v29;
          v25 = v23;

          v26 = sub_1B7801558();

          v7 = v32;
          v9 = v33;
          if (v26)
          {
            return 1;
          }
        }
      }

      else if (!v29)
      {
        return 1;
      }

LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return 0;
}

BOOL sub_1B72C3B78(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1B78022F8();
  sub_1B7802328();
  v4 = sub_1B7802368();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1B72C3C44(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = 0x676E69646E6570, sub_1B78022F8(), sub_1B7800798(), , v5 = sub_1B7802368(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v23 = ~v6;
    v8 = 0x656C6C65636E6163;
    v9 = 0xE700000000000000;
    v10 = 0xE600000000000000;
    while (1)
    {
      v11 = *(*(a2 + 48) + v7);
      if (v11 <= 1)
      {
        if (*(*(a2 + 48) + v7))
        {
          v12 = 0x6465766F72707061;
        }

        else
        {
          v12 = v4;
        }

        if (*(*(a2 + 48) + v7))
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0xE700000000000000;
        }
      }

      else if (v11 == 2)
      {
        v12 = 0x6574656C706D6F63;
        v13 = 0xE900000000000064;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = v8;
        }

        else
        {
          v12 = 0x64656C696166;
        }

        if (v11 == 3)
        {
          v13 = 0xE900000000000064;
        }

        else
        {
          v13 = 0xE600000000000000;
        }
      }

      if (a1 == 3)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0x64656C696166;
      }

      if (a1 == 3)
      {
        v10 = 0xE900000000000064;
      }

      if (a1 == 2)
      {
        v14 = 0x6574656C706D6F63;
        v10 = 0xE900000000000064;
      }

      v15 = v4;
      if (a1)
      {
        v16 = 0x6465766F72707061;
      }

      else
      {
        v16 = v4;
      }

      if (a1)
      {
        v9 = 0xE800000000000000;
      }

      v17 = a1 <= 1u ? v16 : v14;
      v18 = a1 <= 1u ? v9 : v10;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = a1;
      v20 = v8;
      v21 = sub_1B78020F8();

      if ((v21 & 1) == 0)
      {
        v7 = (v7 + 1) & v23;
        v4 = v15;
        v8 = v20;
        a1 = v19;
        v9 = 0xE700000000000000;
        v10 = 0xE600000000000000;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v21 & 1;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1B72C3EFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B77FFA18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1B72C6084(&qword_1EB99DAF0, MEMORY[0x1E69695A8]), v7 = sub_1B7800758(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1B72C6084(&qword_1EB99DBE0, MEMORY[0x1E69695A8]);
      v15 = sub_1B7800828();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B72C4120()
{
  sub_1B78022F8();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t sub_1B72C4168()
{
  sub_1B78022F8();
  sub_1B7802328();
  return sub_1B7802368();
}

unint64_t TransactionCategory.description.getter()
{
  sub_1B7801A78();

  v0 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v0);

  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  return 0xD000000000000014;
}

void sub_1B72C431C(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 24) = MEMORY[0x1E69E7290];
  *a1 = v2;
}

uint64_t TransactionCategory.localizedDescription.getter()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();

  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

BOOL TransactionCategory.isSpendingCategory.getter()
{
  v1 = *v0;
  if (qword_1EB98E960 != -1)
  {
    v3 = *v0;
    swift_once();
    v1 = v3;
  }

  return sub_1B72C3B78(v1, off_1EB990F40);
}

uint64_t sub_1B72C4604()
{
  result = sub_1B7546178(&unk_1F2F421F8);
  qword_1EB990F48 = result;
  return result;
}

void TransactionCategory.displayCategory.getter(char *a1@<X8>)
{
  if (*v1 == 8)
  {
    v2 = 4;
  }

  else
  {
    v2 = *v1;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 9;
  }

  *a1 = v3;
}

uint64_t TransactionCategory.componentCategories.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990F60);
  if (v1 == 4)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7808C50;
    *(inited + 32) = 2052;
  }

  else
  {
    inited = swift_initStackObject();
    if (v1 == 9)
    {
      *(inited + 16) = xmmword_1B7808C50;
      *(inited + 32) = 9;
    }

    else
    {
      *(inited + 16) = xmmword_1B7807CD0;
      *(inited + 32) = v1;
    }
  }

  v3 = sub_1B7546178(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t sub_1B72C475C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1B723B5B0(&unk_1F2F421C8);
  if (*a2 != -1)
  {
    swift_once();
  }

  if (*(*a3 + 16) <= *(v7 + 16) >> 3)
  {

    sub_1B7239968(v10);
  }

  else
  {

    v7 = sub_1B72C52B0(v8, v7);
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1B72C4848()
{
  result = sub_1B7546178(&unk_1F2F42220);
  qword_1EB990F58 = result;
  return result;
}

uint64_t sub_1B72C4894(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

_WORD *sub_1B72C4900@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t TransactionCategorySource.description.getter()
{
  sub_1B7801A78();

  v0 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v0);

  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t TransactionCategorySource.init(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      v2 = 0;
LABEL_5:
      *a2 = v2;
      return result;
    case 1:
      v2 = 1;
      goto LABEL_5;
    case 2:
      sub_1B7801A78();
      MEMORY[0x1B8CA4D30](0xD00000000000002CLL, 0x80000001B7878560);
      break;
    default:
      sub_1B7801A78();
      MEMORY[0x1B8CA4D30](0xD00000000000002CLL, 0x80000001B7878530);
      break;
  }

  type metadata accessor for FKPaymentTransactionCategorySource(0);
  sub_1B7801C48();
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

FinanceKit::TransactionCategoryAndSource __swiftcall TransactionCategoryAndSource.init(_:)(FKPaymentTransactionCategoryAndSource a1)
{
  isa = a1.super.isa;
  v3 = v1;
  TransactionCategory.init(_:)([(objc_class *)a1.super.isa category], &v8);
  v4 = v8;
  TransactionCategorySource.init(_:)([(objc_class *)isa source], &v7);

  v6 = v7;
  *v3 = v4;
  v3[1] = v6;
  return v5;
}

uint64_t sub_1B72C4D08()
{
  if (*v0)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1B72C4D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B72C4E18(uint64_t a1)
{
  v2 = sub_1B72C5904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C4E54(uint64_t a1)
{
  v2 = sub_1B72C5904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransactionCategoryAndSource.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990F68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72C5904();
  sub_1B78023F8();
  v15 = v8;
  v14 = 0;
  sub_1B72C5958();
  sub_1B7801FC8();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1B72C59AC();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TransactionCategoryAndSource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990F80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72C5904();
  sub_1B78023C8();
  if (!v2)
  {
    v15 = 0;
    sub_1B72C5A00();
    sub_1B7801E48();
    v9 = v16;
    v13 = 1;
    sub_1B72C5A54();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

FKPaymentTransactionCategoryAndSource __swiftcall FKPaymentTransactionCategoryAndSource.init(_:)(FinanceKit::TransactionCategoryAndSource a1)
{
  v1 = **&a1.category;
  v2 = *(*&a1.category + 1);
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v4 = [v3 initWithCategory:v1 source:v2];
  result._source = v6;
  result._category = v5;
  result.super.isa = v4;
  return result;
}

uint64_t sub_1B72C52B0(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v53 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + (v18 | (v47 << 6)));
        sub_1B78022F8();
        sub_1B7802328();
        v19 = sub_1B7802368();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v45;
    v51 = v47;
    v52 = v11;
    v49[0] = v46;
    v49[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v5);
      v40 = sub_1B72C5730(v39, v14, v6, v2, v49);

      MEMORY[0x1B8CA7A40](v39, -1, -1);
      v45 = v50;
      v47 = v51;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v14;
    v43 = &v41;
    MEMORY[0x1EEE9AC00](v22);
    v14 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + (v29 | (v47 << 6)));
      sub_1B78022F8();
      v2 = &v48;
      sub_1B7802328();
      v30 = sub_1B7802368();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_1B723A884(v14, v42, v44, v6);
LABEL_43:
    sub_1B71B7B58();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

uint64_t sub_1B72C5730(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_1B78022F8();
    sub_1B7802328();
    result = sub_1B7802368();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_1B723A884(v7, a2, v9, a3);
}

unint64_t sub_1B72C5904()
{
  result = qword_1EB990F70;
  if (!qword_1EB990F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F70);
  }

  return result;
}

unint64_t sub_1B72C5958()
{
  result = qword_1EB99D090;
  if (!qword_1EB99D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D090);
  }

  return result;
}

unint64_t sub_1B72C59AC()
{
  result = qword_1EB990F78;
  if (!qword_1EB990F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F78);
  }

  return result;
}

unint64_t sub_1B72C5A00()
{
  result = qword_1EB99D0B0;
  if (!qword_1EB99D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99D0B0);
  }

  return result;
}

unint64_t sub_1B72C5A54()
{
  result = qword_1EB990F88;
  if (!qword_1EB990F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F88);
  }

  return result;
}

unint64_t sub_1B72C5AAC()
{
  result = qword_1EB990F90;
  if (!qword_1EB990F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990F90);
  }

  return result;
}

unint64_t sub_1B72C5B34()
{
  result = qword_1EB990FA8;
  if (!qword_1EB990FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990FA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s30ShippingDisplayStatusTypeModelVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s30ShippingDisplayStatusTypeModelVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B72C5E8C()
{
  result = qword_1EB990FC0;
  if (!qword_1EB990FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990FC0);
  }

  return result;
}

unint64_t sub_1B72C5EE4()
{
  result = qword_1EB990FC8;
  if (!qword_1EB990FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990FC8);
  }

  return result;
}

unint64_t sub_1B72C5F3C()
{
  result = qword_1EB990FD0;
  if (!qword_1EB990FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990FD0);
  }

  return result;
}

unint64_t sub_1B72C5F90()
{
  result = qword_1EB990FD8;
  if (!qword_1EB990FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990FD8);
  }

  return result;
}

unint64_t sub_1B72C5FE4()
{
  result = qword_1EB990FE0;
  if (!qword_1EB990FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990FE0);
  }

  return result;
}

unint64_t sub_1B72C6038()
{
  result = qword_1EDAFAF20;
  if (!qword_1EDAFAF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAFAF20);
  }

  return result;
}

uint64_t sub_1B72C6084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FinanceStore.setTransactionCategory(_:forTransactionIDs:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  *(v3 + 96) = type metadata accessor for FinanceStore.Message();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 128) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B72C6180, 0, 0);
}

uint64_t sub_1B72C6180()
{
  v8 = v0;
  static DeviceInfo.deviceType.getter(&v7);
  if (v7)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();

    v2 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  *(v0 + 112) = *(*(v0 + 88) + 24);
  *v4 = v3;
  *(v4 + 8) = v5;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B72C6294, 0, 0);
}

uint64_t sub_1B72C6294()
{
  v1 = v0[14];
  v0[2] = v0;
  v0[3] = sub_1B72C6338;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B72C6338()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B72C64C4;
  }

  else
  {
    v2 = sub_1B72C6454;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B72C6454()
{
  sub_1B72A820C(*(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B72C64C4()
{
  sub_1B72A820C(*(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B72C6530()
{
  type metadata accessor for TransactionIconCache();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v0 + 16) = v1;
  v2 = v1;
  [v2 setCountLimit_];

  qword_1EBA45910 = v0;
}

uint64_t sub_1B72C65A0()
{

  return swift_deallocClassInstance();
}

id sub_1B72C662C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconHolder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B72C66D4()
{
  if (qword_1EDAF8978 != -1)
  {
    swift_once();
  }

  v0 = *(off_1EDAF8980 + 2);
  v1 = type metadata accessor for BankConnectPushNotificationHandler();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC10FinanceKit34BankConnectPushNotificationHandler_store] = v0;
  v4.receiver = v2;
  v4.super_class = v1;

  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1B72C6814(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  if (qword_1EDAFA648 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&dword_1B7198000, "bankConnect/notificationHandler", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v12);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAF65B0);

  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    v8 = sub_1B7800738();
    v10 = sub_1B71A3EF8(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B7198000, v4, v5, "Received a push notification with payload %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  sub_1B72C6AC0(a1);
  sub_1B72C7364();
  os_activity_scope_leave(&v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B72C6AC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B78000B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = 0x746E657665;
  v30[1] = 0xE500000000000000;
  sub_1B78019E8();
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v8 = sub_1B7245898(&v31);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1B719BDE4(*(a1 + 56) + 32 * v8, &v32);
  sub_1B720494C(&v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990FF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = v30[0];
  if (!v30[0])
  {
    goto LABEL_16;
  }

  strcpy(v30, "eventType");
  WORD1(v30[1]) = 0;
  HIDWORD(v30[1]) = -385875968;
  sub_1B78019E8();
  if (!*(v10 + 16) || (v11 = sub_1B7245898(&v31), (v12 & 1) == 0))
  {

LABEL_15:
    sub_1B720494C(&v31);
LABEL_16:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_17;
  }

  sub_1B719BDE4(*(v10 + 56) + 32 * v11, &v32);
  sub_1B720494C(&v31);

  if (!*(&v33 + 1))
  {
LABEL_17:
    sub_1B7205418(&v32, &qword_1EB98FCB0);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_1EDAF65B0);
    v14 = sub_1B7800098();
    v15 = sub_1B78011D8();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_23;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Push notification's payload is not valid. The event type is missed";
    goto LABEL_22;
  }

  v13 = sub_1B7801D18();

  if (v13 >= 3)
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_1EDAF65B0);
    v14 = sub_1B7800098();
    v15 = sub_1B78011D8();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_23;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Push notification's payload is not valid. The event type is not supported.";
LABEL_22:
    _os_log_impl(&dword_1B7198000, v14, v15, v17, v16, 2u);
    MEMORY[0x1B8CA7A40](v16, -1, -1);
LABEL_23:
  }

  strcpy(v30, "subscriptionId");
  HIBYTE(v30[1]) = -18;
  sub_1B78019E8();
  if (*(a1 + 16) && (v18 = sub_1B7245898(&v31), (v19 & 1) != 0))
  {
    sub_1B719BDE4(*(a1 + 56) + 32 * v18, &v32);
    sub_1B720494C(&v31);
    if (swift_dynamicCast())
    {
      v21 = v30[0];
      v20 = v30[1];
      goto LABEL_34;
    }
  }

  else
  {
    sub_1B720494C(&v31);
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EDAF65B0);
  v22 = sub_1B7800098();
  v23 = sub_1B78011D8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1B7198000, v22, v23, "Push notification's payload is not valid. subscriptionId is missed.", v24, 2u);
    MEMORY[0x1B8CA7A40](v24, -1, -1);
  }

  v21 = 0;
  v20 = 0;
LABEL_34:
  v25 = [*(*(v2 + OBJC_IVAR____TtC10FinanceKit34BankConnectPushNotificationHandler_store) + 16) newBackgroundContext];
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v4, qword_1EDAF65B0);
  v27 = (*(v5 + 16))(v7, v26, v4);
  MEMORY[0x1EEE9AC00](v27);
  *(&v29 - 4) = v21;
  *(&v29 - 3) = v20;
  *(&v29 - 2) = v25;
  *(&v29 - 1) = v7;
  sub_1B7801468();

  return (*(v5 + 8))(v7, v4);
}

void sub_1B72C7218(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    type metadata accessor for ManagedConsentNotificationSubscription();
    v5 = static ManagedConsentNotificationSubscription.existingSubscription(withSubscriptionID:in:)(a1, a2);
    if (!v2)
    {
      if (v5)
      {
      }

      else
      {

        v6 = sub_1B7800098();
        v7 = sub_1B78011D8();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v10 = v9;
          *v8 = 136315138;
          *(v8 + 4) = sub_1B71A3EF8(a1, a2, &v10);
          _os_log_impl(&dword_1B7198000, v6, v7, "Push notification's payload is not valid.\nSubscription with subscriptionId %s doesn't exist.", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v9);
          MEMORY[0x1B8CA7A40](v9, -1, -1);
          MEMORY[0x1B8CA7A40](v8, -1, -1);
        }
      }
    }
  }
}

uint64_t sub_1B72C7364()
{
  v1 = sub_1B78000B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [*(*(v0 + OBJC_IVAR____TtC10FinanceKit34BankConnectPushNotificationHandler_store) + 16) newBackgroundContext];
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_1EDAF65B0);
  v7 = (*(v2 + 16))(v4, v6, v1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  *&v11[-16] = v5;
  *&v11[-8] = v4;
  MEMORY[0x1EEE9AC00](v8);
  *&v11[-32] = sub_1B72C7B2C;
  *&v11[-24] = v9;
  *&v11[-16] = v5;
  sub_1B7801468();

  return (*(v2 + 8))(v4, v1);
}

void sub_1B72C765C(__objc2_prot **a1)
{
  v23 = *MEMORY[0x1E69E9840];
  type metadata accessor for ManagedConsentNotificationSubscription();
  v22.receiver = swift_getObjCClassFromMetadata();
  v22.super_class = &OBJC_METACLASS____TtC10FinanceKit38ManagedConsentNotificationSubscription;
  v3 = objc_msgSendSuper2(&v22, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B729D790();
  *(v4 + 32) = sub_1B78010E8();
  *(v4 + 40) = sub_1B78010E8();
  v5 = sub_1B7800C18();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  v7 = sub_1B7801498();
  if (v1)
  {
    goto LABEL_2;
  }

  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_17:

    v16 = sub_1B7800098();
    v17 = sub_1B78011D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B7198000, v16, v17, "Failed to handle push notification. There are no active subscriptions.", v18, 2u);
      MEMORY[0x1B8CA7A40](v18, -1, -1);
    }

    goto LABEL_2;
  }

LABEL_16:
  v9 = sub_1B7801958();
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_5:
  v19 = a1;
  v20 = v3;
  if (v9 < 1)
  {
    __break(1u);
  }

  v10 = 0;
  v3 = &off_1E7CAF000;
  a1 = &off_1E7CAF000;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B8CA5DC0](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = [v11 updateSequenceNumber];
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    ++v10;
    [v12 setUpdateSequenceNumber_];
    [v12 setRequestAttemptCount_];
    [v12 setLastRequestAttemptDate_];
  }

  while (v9 != v10);

  v21 = 0;
  if ([v19 save_])
  {
    v14 = v21;

    return;
  }

  v15 = v21;
  sub_1B77FF318();

  swift_willThrow();
  v3 = v20;
LABEL_2:
}

id BankConnectPushNotificationHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectPushNotificationHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectPushNotificationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B72C7B68(uint64_t a1)
{
  v2 = sub_1B72C81F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C7BA4(uint64_t a1)
{
  v2 = sub_1B72C81F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72C7BE0(uint64_t a1)
{
  v2 = sub_1B72C8248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C7C1C(uint64_t a1)
{
  v2 = sub_1B72C8248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72C7C58()
{
  v1 = 0x42746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0x746361736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E756F636361;
  }
}

uint64_t sub_1B72C7CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72CB6FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72C7CF0(uint64_t a1)
{
  v2 = sub_1B72C814C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C7D2C(uint64_t a1)
{
  v2 = sub_1B72C814C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72C7D68(uint64_t a1)
{
  v2 = sub_1B72C81A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C7DA4(uint64_t a1)
{
  v2 = sub_1B72C81A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FinanceStore.BackgroundDataType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991000);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991008);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991010);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991018);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72C814C();
  sub_1B78023F8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B72C81F4();
      v9 = v21;
      sub_1B7801ED8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B72C81A0();
      v9 = v24;
      sub_1B7801ED8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B72C8248();
    sub_1B7801ED8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B72C814C()
{
  result = qword_1EDAF9FD0;
  if (!qword_1EDAF9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9FD0);
  }

  return result;
}

unint64_t sub_1B72C81A0()
{
  result = qword_1EDAF9F98;
  if (!qword_1EDAF9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9F98);
  }

  return result;
}

unint64_t sub_1B72C81F4()
{
  result = qword_1EB991020;
  if (!qword_1EB991020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991020);
  }

  return result;
}

unint64_t sub_1B72C8248()
{
  result = qword_1EB991028;
  if (!qword_1EB991028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991028);
  }

  return result;
}

uint64_t FinanceStore.BackgroundDataType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991030);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991038);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991040);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991048);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B72C814C();
  v15 = v36;
  sub_1B78023C8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B721CE54();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v24 = &type metadata for FinanceStore.BackgroundDataType;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B72C81F4();
          sub_1B7801D38();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B72C81A0();
          v26 = v17;
          sub_1B7801D38();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B72C8248();
        sub_1B7801D38();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1B72C8850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72CB820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72C8878(uint64_t a1)
{
  v2 = sub_1B72C8F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C88B4(uint64_t a1)
{
  v2 = sub_1B72C8F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72C88F0(uint64_t a1)
{
  v2 = sub_1B72C8FB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C892C(uint64_t a1)
{
  v2 = sub_1B72C8FB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72C8968(uint64_t a1)
{
  v2 = sub_1B72C9004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C89A4(uint64_t a1)
{
  v2 = sub_1B72C9004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72C89E0(uint64_t a1)
{
  v2 = sub_1B72C9058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C8A1C(uint64_t a1)
{
  v2 = sub_1B72C9058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72C8A58(uint64_t a1)
{
  v2 = sub_1B72C8F5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72C8A94(uint64_t a1)
{
  v2 = sub_1B72C8F5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FinanceStore.UpdateFrequency.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991058);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991060);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991068);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991070);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB991078);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72C8F08();
  sub_1B78023F8();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1B72C8FB0();
      v18 = v27;
      sub_1B7801ED8();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1B72C8F5C();
      v18 = v30;
      sub_1B7801ED8();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1B72C9004();
    v18 = v24;
    sub_1B7801ED8();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1B72C9058();
  sub_1B7801ED8();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1B72C8F08()
{
  result = qword_1EDAFA040;
  if (!qword_1EDAFA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFA040);
  }

  return result;
}

unint64_t sub_1B72C8F5C()
{
  result = qword_1EB991088;
  if (!qword_1EB991088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991088);
  }

  return result;
}

unint64_t sub_1B72C8FB0()
{
  result = qword_1EB991090;
  if (!qword_1EB991090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991090);
  }

  return result;
}

unint64_t sub_1B72C9004()
{
  result = qword_1EB991098;
  if (!qword_1EB991098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991098);
  }

  return result;
}

unint64_t sub_1B72C9058()
{
  result = qword_1EDAF9FF0;
  if (!qword_1EDAF9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9FF0);
  }

  return result;
}

uint64_t FinanceStore.UpdateFrequency.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9910A8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9910B0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9910B8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9910C0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9910C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B72C8F08();
  v15 = v46;
  sub_1B78023C8();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1B7801E98();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1B721CE50();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1B7801B18();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v28 = &type metadata for FinanceStore.UpdateFrequency;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1B72C9004();
        v32 = v35;
        sub_1B7801D38();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1B72C9058();
        v25 = v35;
        sub_1B7801D38();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1B72C8FB0();
      v31 = v35;
      sub_1B7801D38();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1B72C8F5C();
      v33 = v35;
      sub_1B7801D38();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t FinanceStore.enableBackgroundDelivery(for:frequency:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *a2;
  *v6 = a1;
  v6[8] = v5;
  swift_storeEnumTagMultiPayload();

  sub_1B72C9DC8(v6, sub_1B72CA9AC, "XPC async call failed, retrying");
  return sub_1B72A820C(v6);
}

Swift::Void __swiftcall FinanceStore.disableBackgroundDelivery(for:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4->_rawValue = a1._rawValue;
  swift_storeEnumTagMultiPayload();

  sub_1B72C9DC8(v4, sub_1B72CA9AC, "XPC async call failed, retrying");
  sub_1B72A820C(v4);
}

Swift::Void __swiftcall FinanceStore.disableAllBackgroundDelivery()()
{
  v0 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1B72C9DC8(v2, sub_1B72CA9AC, "XPC async call failed, retrying");
  sub_1B72A820C(v2);
}

void sub_1B72C9DC8(uint64_t a1, void (*a2)(uint64_t), const char *a3)
{
  v18 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_1B7800168();
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1);
  if (v4)
  {
    v20 = v4;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {
      sub_1B72CB980(v3 + *(*v3 + 120), v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        if (qword_1EDAFAF50 != -1)
        {
          swift_once();
        }

        v14 = sub_1B78000B8();
        __swift_project_value_buffer(v14, qword_1EDAFAF58);
        v15 = sub_1B7800098();
        v16 = sub_1B78011F8();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1B7198000, v15, v16, v18, v17, 2u);
          MEMORY[0x1B8CA7A40](v17, -1, -1);
        }

        a2(a1);
      }

      else
      {
        sub_1B7205418(v9, &qword_1EB990570);
      }

      (*(v19 + 8))(v12, v10);
    }
  }
}

uint64_t FinanceStore.enableBackgroundDelivery(for:frequency:bundleIdentifier:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *a2;
  *v10 = a1;
  v10[8] = v9;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1B72C9DC8(v10, sub_1B75FCDE0, "XPC sync call failed, retrying");
  sub_1B72A820C(v10);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinanceStore.disableBackgroundDelivery(for:bundleIdentifier:)(Swift::OpaquePointer a1, Swift::String bundleIdentifier)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  v5 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7->_rawValue = a1._rawValue;
  v7[1]._rawValue = countAndFlagsBits;
  v7[2]._rawValue = object;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1B72C9DC8(v7, sub_1B75FCDE0, "XPC sync call failed, retrying");
  sub_1B72A820C(v7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinanceStore.disableAllBackgroundDelivery(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  v3 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = countAndFlagsBits;
  v5[1] = object;
  swift_storeEnumTagMultiPayload();

  sub_1B72C9DC8(v5, sub_1B75FCDE0, "XPC sync call failed, retrying");
  sub_1B72A820C(v5);
}

id FinanceStore.BackgroundDataType.XPCArray.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___XPCBackgroundDataType_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id FinanceStore.BackgroundDataType.XPCArray.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___XPCBackgroundDataType_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id FinanceStore.BackgroundDataType.XPCArray.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7207F58(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id FinanceStore.BackgroundDataType.XPCArray.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7207F58(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id FinanceStore.BackgroundDataType.XPCArray.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanceStore.BackgroundDataType.XPCArray.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B72CA6AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___XPCBackgroundDataType_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id Array<A>.xpcValue.getter(uint64_t a1)
{
  v2 = type metadata accessor for FinanceStore.BackgroundDataType.XPCArray();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___XPCBackgroundDataType_value] = a1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

{
  v2 = type metadata accessor for Transaction.XPCArray();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___XPCTransactions_value] = a1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t FinanceStore.BackgroundDataType.identifier.getter()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t FinanceStore.BackgroundDataType.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001B78787A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v6 = 0;
LABEL_5:

    *a3 = v6;
    return result;
  }

  if (a1 == 0xD00000000000001CLL && 0x80000001B7878780 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v6 = 1;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000019 && 0x80000001B7878760 == a2 || (sub_1B78020F8() & 1) != 0)
  {
    v6 = 2;
    goto LABEL_5;
  }

  sub_1B7801A78();

  MEMORY[0x1B8CA4D30](a1, a2);
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t FinanceStore.UpdateFrequency.description.getter()
{
  v1 = 0x74616964656D6D69;
  v2 = 0x796C696164;
  if (*v0 != 2)
  {
    v2 = 0x796C6B656577;
  }

  if (*v0)
  {
    v1 = 0x796C72756F68;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1B72CA9AC(uint64_t a1)
{
  v3 = v1;
  v13[5] = a1;
  v4 = sub_1B7800168();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = *(v1 + 16);
  v13[8] = v3;
  v13[9] = v11;
  sub_1B7801338();
  if (v2)
  {
    goto LABEL_2;
  }

  v13[3] = v10;
  v13[4] = v12;
  v13[1] = v5;
  v13[2] = v8;
  swift_beginAccess();
  if (*(v11 + 16))
  {

    type metadata accessor for FinanceStore.Message();
    sub_1B719BE88(&qword_1EDAFA640, type metadata accessor for FinanceStore.Message);
    sub_1B7800108();
LABEL_2:

    return;
  }

  __break(1u);
}

uint64_t sub_1B72CADE0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;

    sub_1B7800118();

    *(v4 + 24) = 0;
  }

  return result;
}

unint64_t sub_1B72CAE94()
{
  result = qword_1EB9910E0;
  if (!qword_1EB9910E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9910E0);
  }

  return result;
}

unint64_t sub_1B72CAEEC()
{
  result = qword_1EB9910E8;
  if (!qword_1EB9910E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9910E8);
  }

  return result;
}

unint64_t sub_1B72CB020()
{
  result = qword_1EB9910F8;
  if (!qword_1EB9910F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9910F8);
  }

  return result;
}

unint64_t sub_1B72CB078()
{
  result = qword_1EB991100;
  if (!qword_1EB991100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991100);
  }

  return result;
}

unint64_t sub_1B72CB0D0()
{
  result = qword_1EDAF9FD8;
  if (!qword_1EDAF9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9FD8);
  }

  return result;
}

unint64_t sub_1B72CB128()
{
  result = qword_1EDAF9FE0;
  if (!qword_1EDAF9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9FE0);
  }

  return result;
}

unint64_t sub_1B72CB180()
{
  result = qword_1EDAFA008;
  if (!qword_1EDAFA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFA008);
  }

  return result;
}

unint64_t sub_1B72CB1D8()
{
  result = qword_1EDAFA010;
  if (!qword_1EDAFA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFA010);
  }

  return result;
}

unint64_t sub_1B72CB230()
{
  result = qword_1EDAFA018;
  if (!qword_1EDAFA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFA018);
  }

  return result;
}

unint64_t sub_1B72CB288()
{
  result = qword_1EDAFA020;
  if (!qword_1EDAFA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFA020);
  }

  return result;
}

unint64_t sub_1B72CB2E0()
{
  result = qword_1EDAF9FF8;
  if (!qword_1EDAF9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF9FF8);
  }

  return result;
}

unint64_t sub_1B72CB338()
{
  result = qword_1EDAFA000;
  if (!qword_1EDAFA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFA000);
  }

  return result;
}

unint64_t sub_1B72CB390()
{
  result = qword_1EDAFA028;
  if (!qword_1EDAFA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAFA028);
  }

  return result;
}