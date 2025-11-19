void sub_20E4AA778(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_20E4AA984()
{
  result = qword_280C72A98[0];
  if (!qword_280C72A98[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280C72A98);
  }

  return result;
}

void sub_20E4AA9E8()
{
  if (!qword_280C72110)
  {
    v0 = sub_20E4C6780();
    if (!v1)
    {
      atomic_store(v0, &qword_280C72110);
    }
  }
}

unint64_t sub_20E4AAA38(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = sub_20E4C6470();
    if (v6 <= 0x3F)
    {
      result = sub_20E4AA984();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20E4AAAFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = (v6 + v8) & ~v8;
  v11 = v10 + v6;
  if (v7 < a2)
  {
    v12 = ((((v11 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 43;
    v13 = (((((v11 + v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 43) & 0xFFFFFFFB;
    v14 = (a2 - v7 + 0xFFFFFF) >> 24;
    v15 = v13 == 3 ? v14 + 1 : 2;
    v16 = v15 < 0x100 ? 1 : 2;
    v17 = v15 >= 2 ? v16 : 0;
    if (v17)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v12);
        if (*(a1 + v12))
        {
LABEL_18:
          v19 = (v18 << 24) - 0x1000000;
          if (v13 == 3)
          {
            v22 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v19 = 0;
            v22 = *a1;
          }

          return v7 + (v22 | v19) + 1;
        }
      }

      else
      {
        v18 = *(a1 + v12);
        if (*(a1 + v12))
        {
          goto LABEL_18;
        }
      }
    }
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v21 = *(((((a1 + v9) & ~v8) + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  return (v21 + 1);
}

void sub_20E4AAC6C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = *(v6 + 80);
  v11 = v9 + v10;
  v12 = (v9 + v10) & ~v10;
  v13 = v12 + v9;
  v14 = ((((v13 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 43;
  if (v8 >= a3)
  {
    v18 = 0;
    if (v8 >= a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = (a3 - v8 + 0xFFFFFF) >> 24;
    if (((((v13 + v12 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v8 >= a2)
    {
LABEL_15:
      if (v18)
      {
        if (v18 != 2)
        {
          a1[v14] = 0;
          if (!a2)
          {
            return;
          }

LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v22 = (((&a1[v11] & ~v10) + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v22 = a2 & 0x7FFFFFFF;
              v22[1] = 0;
            }

            else
            {
              v22[1] = a2 - 1;
            }
          }

          else
          {
            v21 = *(v6 + 56);

            v21();
          }

          return;
        }

        *&a1[v14] = 0;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }
  }

  v19 = ~v8 + a2;
  bzero(a1, v14);
  if (v14 == 3)
  {
    v20 = HIBYTE(v19) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v14 == 3)
  {
    *a1 = v19;
    a1[2] = BYTE2(v19);
    if (!v18)
    {
      return;
    }
  }

  else
  {
    *a1 = v19;
    if (!v18)
    {
      return;
    }
  }

  if (v18 == 2)
  {
    *&a1[v14] = v20;
  }

  else
  {
    a1[v14] = v20;
  }
}

uint64_t sub_20E4AAE84(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_280C764B0 != -1)
  {
    swift_once();
  }

  v6 = sub_20E4C61D0();
  __swift_project_value_buffer(v6, qword_280C75D78);

  v7 = sub_20E4C61B0();
  v8 = sub_20E4C66B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_20E4294A8(a1, a2, &v15);
    _os_log_impl(&dword_20E415000, v7, v8, "Fetching effective value for %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F32FA80](v10, -1, -1);
    MEMORY[0x20F32FA80](v9, -1, -1);
  }

  v12 = *(v3 + 32);
  v11 = *(v3 + 40);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v3;

  v12(sub_20E4B4478, v13);
}

void sub_20E4AB040(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v55 = a4;
  v11 = sub_20E4C6350();
  v56 = *(v11 - 8);
  isa = v56[8].isa;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20E4C6370();
  v16 = *(v54 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v54, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x100) != 0)
  {
    if (qword_280C764B0 != -1)
    {
      swift_once();
    }

    v34 = sub_20E4C61D0();
    __swift_project_value_buffer(v34, qword_280C75D78);

    sub_20E4B44A0(a1, a2, a3, 1);
    v56 = sub_20E4C61B0();
    v35 = sub_20E4C66C0();

    sub_20E4B44AC(a1, a2, a3, 1);
    if (os_log_type_enabled(v56, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_20E4294A8(v55, a5, &aBlock);
      *(v36 + 12) = 2082;
      v63 = a1;
      v38 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEF00, &qword_20E4C8398);
      v39 = sub_20E4C6510();
      v41 = sub_20E4294A8(v39, v40, &aBlock);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_20E415000, v56, v35, "Failed to fetch effective value for %{public}s: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F32FA80](v37, -1, -1);
      MEMORY[0x20F32FA80](v36, -1, -1);
    }

    else
    {
      v46 = v56;
    }
  }

  else
  {
    v52 = a6;
    v53 = v20;
    if (qword_280C764B0 != -1)
    {
      swift_once();
    }

    v21 = sub_20E4C61D0();
    __swift_project_value_buffer(v21, qword_280C75D78);

    v22 = sub_20E4C61B0();
    v23 = sub_20E4C66B0();

    v50 = v23;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v49 = v16;
      v25 = v24;
      v48 = swift_slowAlloc();
      v63 = v48;
      *v25 = 136446466;
      aBlock = a1;
      v58 = a2;
      v51 = a3 & 1;
      LOBYTE(v59) = a3 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF958, &qword_20E4CD2F8);
      v26 = sub_20E4C6510();
      v28 = v11;
      v29 = a1;
      v30 = sub_20E4294A8(v26, v27, &v63);

      *(v25 + 4) = v30;
      a1 = v29;
      v11 = v28;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_20E4294A8(v55, a5, &v63);
      v31 = v22;
      _os_log_impl(&dword_20E415000, v22, v50, "Setting effective value %{public}s for %{public}s", v25, 0x16u);
      v32 = v48;
      swift_arrayDestroy();
      MEMORY[0x20F32FA80](v32, -1, -1);
      v33 = v25;
      v16 = v49;
      MEMORY[0x20F32FA80](v33, -1, -1);
    }

    else
    {

      v51 = a3 & 1;
    }

    sub_20E442990();
    v42 = sub_20E4C66F0();
    v43 = swift_allocObject();
    *(v43 + 16) = v52;
    *(v43 + 24) = a1;
    *(v43 + 32) = a2;
    *(v43 + 40) = v51;
    v61 = sub_20E4B44B8;
    v62 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_20E45FDE8;
    v60 = &block_descriptor_5;
    v44 = _Block_copy(&aBlock);

    v45 = v53;
    sub_20E4C6360();
    aBlock = MEMORY[0x277D84F90];
    sub_20E442A2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF258, &unk_20E4C9300);
    sub_20E442A84();
    sub_20E4C67B0();
    MEMORY[0x20F32F030](0, v45, v15, v44);
    _Block_release(v44);

    (v56[1].isa)(v15, v11);
    (*(v16 + 8))(v45, v54);
  }
}

uint64_t sub_20E4AB674(uint64_t result, uint64_t a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = v2;
    v4 = *(v2 + 48);
    v5 = *(v3 + 56);
    *(v3 + 48) = result;
    *(v3 + 56) = a2;

    sub_20E441944(v4);
    result = sub_20E4AAE84(0x6C616974696E49, 0xE700000000000000);
    v6 = *(v3 + 16);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      do
      {
        sub_20E442818(v8, v15);
        v10 = v16;
        v9 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v11 = swift_allocObject();
        swift_weakInit();
        sub_20E442818(v15, v14);
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        sub_20E41B858(v14, v12 + 24);
        v13 = *(v9 + 16);

        v13(sub_20E4B446C, v12, v10, v9);

        __swift_destroy_boxed_opaque_existential_0(v15);

        v8 += 40;
        --v7;
      }

      while (v7);
    }

    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_20E4AB7F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v4);
    v6 = (*(v5 + 8))(v4, v5);
    v7 = sub_20E4C64C0();
    v9 = v8;

    sub_20E4AAE84(v7, v9);
  }

  return result;
}

uint64_t ManagedSettingsStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_20E4C69C0();
  MEMORY[0x20F32F300](v1);
  return sub_20E4C69F0();
}

uint64_t ManagedSettingsStore.Name.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_20E4AB988@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_20E4AB994@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_20E4AB9A0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20E4C6910();
  }
}

uint64_t sub_20E4AB9D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E4ABA1C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_20E4C6530();
}

uint64_t sub_20E4ABA24()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t ManagedSettingsStore.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ManagedSettingsStore.init()();
  return v3;
}

uint64_t ManagedSettingsStore.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8F8, &qword_20E4CCE40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF900, &qword_20E4CCE48);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33 - v12;
  v14 = OBJC_IVAR____TtC15ManagedSettings20ManagedSettingsStore__effectiveDenyExplicitContent;
  LOBYTE(v34) = 0;
  sub_20E4C62C0();
  (*(v9 + 32))(v1 + v14, v13, v8);
  v15 = OBJC_IVAR____TtC15ManagedSettings20ManagedSettingsStore__effectiveMaximumMovieRating;
  v34 = 1000;
  sub_20E4C62C0();
  v16 = *(v3 + 32);
  v16(v1 + v15, v7, v2);
  v17 = OBJC_IVAR____TtC15ManagedSettings20ManagedSettingsStore__effectiveMaximumTVShowRating;
  v34 = 1000;
  sub_20E4C62C0();
  v16(v1 + v17, v7, v2);
  *(v1 + 24) = 0x746C7561666544;
  *(v1 + 32) = 0xE700000000000000;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0x746C7561666544;
  *(v1 + 64) = 0xE700000000000000;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0x746C7561666544;
  *(v1 + 96) = 0xE700000000000000;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0x746C7561666544;
  *(v1 + 128) = 0xE700000000000000;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0x746C7561666544;
  *(v1 + 160) = 0xE700000000000000;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0x746C7561666544;
  *(v1 + 192) = 0xE700000000000000;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0x746C7561666544;
  *(v1 + 224) = 0xE700000000000000;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0x746C7561666544;
  *(v1 + 256) = 0xE700000000000000;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0x746C7561666544;
  *(v1 + 288) = 0xE700000000000000;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0x746C7561666544;
  *(v1 + 320) = 0xE700000000000000;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0x746C7561666544;
  *(v1 + 352) = 0xE700000000000000;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0x746C7561666544;
  *(v1 + 384) = 0xE700000000000000;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0x746C7561666544;
  *(v1 + 416) = 0xE700000000000000;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0x746C7561666544;
  *(v1 + 448) = 0xE700000000000000;
  *(v1 + 456) = 0u;
  *(v1 + 472) = 0x746C7561666544;
  *(v1 + 480) = 0xE700000000000000;
  *(v1 + 488) = 0u;
  *(v1 + 504) = 0x746C7561666544;
  *(v1 + 512) = 0xE700000000000000;
  *(v1 + 520) = 0u;
  *(v1 + 536) = 0x746C7561666544;
  *(v1 + 544) = 0xE700000000000000;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0x746C7561666544;
  *(v1 + 576) = 0xE700000000000000;
  *(v1 + 584) = 0u;
  *(v1 + 600) = 0x746C7561666544;
  *(v1 + 608) = 0xE700000000000000;
  *(v1 + 616) = 0u;
  *(v1 + 632) = 0x746C7561666544;
  *(v1 + 640) = 0xE700000000000000;
  *(v1 + 648) = 0u;
  *(v1 + 664) = 0x746C7561666544;
  *(v1 + 672) = 0xE700000000000000;
  *(v1 + 680) = 0u;
  *(v1 + 696) = 0x746C7561666544;
  *(v1 + 704) = 0xE700000000000000;
  *(v1 + 712) = 0u;
  *(v1 + 728) = 0x746C7561666544;
  *(v1 + 736) = 0xE700000000000000;
  *(v1 + 744) = 0u;
  *(v1 + 760) = 0x746C7561666544;
  *(v1 + 768) = 0xE700000000000000;
  *(v1 + 776) = 0u;
  *(v1 + 792) = 0x746C7561666544;
  *(v1 + 800) = 0xE700000000000000;
  *(v1 + 808) = 0u;
  *(v1 + 824) = 0x746C7561666544;
  *(v1 + 832) = 0xE700000000000000;
  *(v1 + 840) = 0u;
  *(v1 + 856) = 0x746C7561666544;
  *(v1 + 864) = 0xE700000000000000;
  *(v1 + 872) = 0u;
  *(v1 + 888) = 0x746C7561666544;
  *(v1 + 896) = 0xE700000000000000;
  *(v1 + 904) = 0u;
  *(v1 + 920) = 0x746C7561666544;
  *(v1 + 928) = 0xE700000000000000;
  *(v1 + 936) = 0u;
  *(v1 + 952) = 0x746C7561666544;
  *(v1 + 960) = 0xE700000000000000;
  *(v1 + 968) = 0u;
  *(v1 + 984) = 0x746C7561666544;
  *(v1 + 992) = 0xE700000000000000;
  *(v1 + 1000) = 0u;
  *(v1 + 1016) = 0x746C7561666544;
  *(v1 + 1024) = 0xE700000000000000;
  *(v1 + 1032) = 0u;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF908, &qword_20E4CCE50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E4C7710;
  v19 = qword_280C75728;
  swift_bridgeObjectRetain_n();
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_280C75730;
  v21 = type metadata accessor for DarwinNotificationReceiver();
  v22 = swift_allocObject();
  *(v22 + 24) = -1;
  *(v22 + 16) = v20;
  *(v18 + 56) = v21;
  *(v18 + 64) = &off_282545E98;
  *(v18 + 32) = v22;
  v23 = type metadata accessor for NotificationCenterReceiver();
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = 0;
  *(v18 + 96) = v23;
  *(v18 + 104) = &off_282545E78;
  *(v18 + 72) = v24;
  v25 = qword_280C75F10;
  v26 = v20;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = qword_280C75F18;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20E4AC0A0;
  *(v28 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF910, &qword_20E4CCE58);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 16) = v18;
  *(v29 + 32) = sub_20E4AC16C;
  *(v29 + 40) = v28;
  *(v1 + 16) = v29;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_20E4ACB00;
  *(v31 + 24) = v30;

  sub_20E4AB674(sub_20E4ACB08, v31);

  return v1;
}

uint64_t sub_20E4AC0D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1, uint64_t a2, __int16 a3), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_20E4B44DC, v6);
}

char *ManagedSettingsStore.__allocating_init(named:)(uint64_t *a1)
{
  v1 = a1[1];
  v6[0] = *a1;
  v6[1] = v1;
  v2 = type metadata accessor for ManagedSettingsStore();
  v6[2] = 0;
  v6[3] = 0;
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_20E4AC274(v6);
}

char *ManagedSettingsStore.__allocating_init(sharedContainer:)(uint64_t a1, uint64_t a2)
{
  v6[0] = 0x746C7561666544;
  v6[1] = 0xE700000000000000;
  v6[2] = a1;
  v6[3] = a2;
  v2 = type metadata accessor for ManagedSettingsStore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_20E4AC274(v6);
}

char *ManagedSettingsStore.__allocating_init(named:sharedContainer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = a2;
  v8[3] = a3;
  v4 = type metadata accessor for ManagedSettingsStore();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_20E4AC274(v8);
}

char *sub_20E4AC274(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8F8, &qword_20E4CCE40);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF900, &qword_20E4CCE48);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v39 - v13;
  v16 = *a1;
  v15 = a1[1];
  v18 = a1[2];
  v17 = a1[3];
  v19 = OBJC_IVAR____TtC15ManagedSettings20ManagedSettingsStore__effectiveDenyExplicitContent;
  LOBYTE(v42) = 0;
  sub_20E4C62C0();
  (*(v10 + 32))(&v2[v19], v14, v9);
  v20 = OBJC_IVAR____TtC15ManagedSettings20ManagedSettingsStore__effectiveMaximumMovieRating;
  v42 = 1000;
  sub_20E4C62C0();
  v21 = v41;
  v22 = *(v40 + 32);
  v22(&v2[v20], v8, v41);
  v23 = OBJC_IVAR____TtC15ManagedSettings20ManagedSettingsStore__effectiveMaximumTVShowRating;
  v42 = 1000;
  sub_20E4C62C0();
  v22(&v2[v23], v8, v21);
  *(v2 + 3) = v16;
  *(v2 + 4) = v15;
  *(v2 + 5) = v18;
  *(v2 + 6) = v17;
  *(v2 + 7) = v16;
  *(v2 + 8) = v15;
  *(v2 + 9) = v18;
  *(v2 + 10) = v17;
  *(v2 + 11) = v16;
  *(v2 + 12) = v15;
  *(v2 + 13) = v18;
  *(v2 + 14) = v17;
  *(v2 + 15) = v16;
  *(v2 + 16) = v15;
  *(v2 + 17) = v18;
  *(v2 + 18) = v17;
  *(v2 + 19) = v16;
  *(v2 + 20) = v15;
  *(v2 + 21) = v18;
  *(v2 + 22) = v17;
  *(v2 + 23) = v16;
  *(v2 + 24) = v15;
  *(v2 + 25) = v18;
  *(v2 + 26) = v17;
  *(v2 + 27) = v16;
  *(v2 + 28) = v15;
  *(v2 + 29) = v18;
  *(v2 + 30) = v17;
  *(v2 + 31) = v16;
  *(v2 + 32) = v15;
  *(v2 + 33) = v18;
  *(v2 + 34) = v17;
  *(v2 + 35) = v16;
  *(v2 + 36) = v15;
  *(v2 + 37) = v18;
  *(v2 + 38) = v17;
  *(v2 + 39) = v16;
  *(v2 + 40) = v15;
  *(v2 + 41) = v18;
  *(v2 + 42) = v17;
  *(v2 + 43) = v16;
  *(v2 + 44) = v15;
  *(v2 + 45) = v18;
  *(v2 + 46) = v17;
  *(v2 + 47) = v16;
  *(v2 + 48) = v15;
  *(v2 + 49) = v18;
  *(v2 + 50) = v17;
  *(v2 + 51) = v16;
  *(v2 + 52) = v15;
  *(v2 + 53) = v18;
  *(v2 + 54) = v17;
  *(v2 + 55) = v16;
  *(v2 + 56) = v15;
  *(v2 + 57) = v18;
  *(v2 + 58) = v17;
  *(v2 + 59) = v16;
  *(v2 + 60) = v15;
  *(v2 + 61) = v18;
  *(v2 + 62) = v17;
  *(v2 + 63) = v16;
  *(v2 + 64) = v15;
  *(v2 + 65) = v18;
  *(v2 + 66) = v17;
  *(v2 + 67) = v16;
  *(v2 + 68) = v15;
  *(v2 + 69) = v18;
  *(v2 + 70) = v17;
  *(v2 + 71) = v16;
  *(v2 + 72) = v15;
  *(v2 + 73) = v18;
  *(v2 + 74) = v17;
  *(v2 + 75) = v16;
  *(v2 + 76) = v15;
  *(v2 + 77) = v18;
  *(v2 + 78) = v17;
  *(v2 + 79) = v16;
  *(v2 + 80) = v15;
  *(v2 + 81) = v18;
  *(v2 + 82) = v17;
  *(v2 + 83) = v16;
  *(v2 + 84) = v15;
  *(v2 + 85) = v18;
  *(v2 + 86) = v17;
  *(v2 + 87) = v16;
  *(v2 + 88) = v15;
  *(v2 + 89) = v18;
  *(v2 + 90) = v17;
  *(v2 + 91) = v16;
  *(v2 + 92) = v15;
  *(v2 + 93) = v18;
  *(v2 + 94) = v17;
  *(v2 + 95) = v16;
  *(v2 + 96) = v15;
  *(v2 + 97) = v18;
  *(v2 + 98) = v17;
  *(v2 + 99) = v16;
  *(v2 + 100) = v15;
  *(v2 + 101) = v18;
  *(v2 + 102) = v17;
  *(v2 + 103) = v16;
  *(v2 + 104) = v15;
  *(v2 + 105) = v18;
  *(v2 + 106) = v17;
  *(v2 + 107) = v16;
  *(v2 + 108) = v15;
  *(v2 + 109) = v18;
  *(v2 + 110) = v17;
  *(v2 + 111) = v16;
  *(v2 + 112) = v15;
  *(v2 + 113) = v18;
  *(v2 + 114) = v17;
  *(v2 + 115) = v16;
  *(v2 + 116) = v15;
  *(v2 + 117) = v18;
  *(v2 + 118) = v17;
  *(v2 + 119) = v16;
  *(v2 + 120) = v15;
  *(v2 + 121) = v18;
  *(v2 + 122) = v17;
  *(v2 + 123) = v16;
  *(v2 + 124) = v15;
  *(v2 + 125) = v18;
  *(v2 + 126) = v17;
  *(v2 + 127) = v16;
  *(v2 + 128) = v15;
  *(v2 + 129) = v18;
  *(v2 + 130) = v17;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF908, &qword_20E4CCE50);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20E4C7710;
  v25 = qword_280C75728;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_280C75730;
  v27 = type metadata accessor for DarwinNotificationReceiver();
  v28 = swift_allocObject();
  *(v28 + 24) = -1;
  *(v28 + 16) = v26;
  *(v24 + 56) = v27;
  *(v24 + 64) = &off_282545E98;
  *(v24 + 32) = v28;
  v29 = type metadata accessor for NotificationCenterReceiver();
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  *(v30 + 24) = 0;
  *(v24 + 96) = v29;
  *(v24 + 104) = &off_282545E78;
  *(v24 + 72) = v30;
  v31 = qword_280C75F10;
  v32 = v26;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = qword_280C75F18;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20E4B4400;
  *(v34 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF910, &qword_20E4CCE58);
  v35 = swift_allocObject();
  *(v35 + 24) = 0;
  *(v35 + 48) = 0;
  *(v35 + 56) = 0;
  *(v35 + 16) = v24;
  *(v35 + 32) = sub_20E4B451C;
  *(v35 + 40) = v34;
  *(v2 + 2) = v35;
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_20E4B4520;
  *(v37 + 24) = v36;

  sub_20E4AB674(sub_20E4B452C, v37);

  return v2;
}

uint64_t sub_20E4AC834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *))
{
  sub_20E467B30();
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  XPCConnectable.remoteObjectProxy(retryCount:proxyHandler:)(1, a5, v11, ObjectType, v9);
  swift_unknownObjectRelease();
}

uint64_t sub_20E4AC8E4(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20E4C62F0();

    if (v7 != a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v7 = a1;

      sub_20E4C6300();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_20E4C62F0();

    if (v7 != a2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v7) = a2;

      sub_20E4C6300();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_20E4C62F0();

    if (v7 == (a3 & 1))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_20E4C6300();
    }
  }

  return result;
}

uint64_t type metadata accessor for ManagedSettingsStore()
{
  result = qword_280C76538;
  if (!qword_280C76538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *ManagedSettingsStore.deinit()
{
  v1 = v0;
  v2 = *(v0 + 2);

  sub_20E442700();

  v3 = *(v1 + 2);

  v4 = *(v1 + 4);
  v5 = *(v1 + 6);

  v6 = *(v1 + 8);
  v7 = *(v1 + 10);

  v8 = *(v1 + 12);
  v9 = *(v1 + 14);

  v10 = *(v1 + 16);
  v11 = *(v1 + 18);

  v12 = *(v1 + 20);
  v13 = *(v1 + 22);

  v14 = *(v1 + 24);
  v15 = *(v1 + 26);

  v16 = *(v1 + 28);
  v17 = *(v1 + 30);

  v18 = *(v1 + 32);
  v19 = *(v1 + 34);

  v20 = *(v1 + 36);
  v21 = *(v1 + 38);

  v22 = *(v1 + 40);
  v23 = *(v1 + 42);

  v24 = *(v1 + 44);
  v25 = *(v1 + 46);

  v26 = *(v1 + 48);
  v27 = *(v1 + 50);

  v28 = *(v1 + 52);
  v29 = *(v1 + 54);

  v30 = *(v1 + 56);
  v31 = *(v1 + 58);

  v32 = *(v1 + 60);
  v33 = *(v1 + 62);

  v34 = *(v1 + 64);
  v35 = *(v1 + 66);

  v36 = *(v1 + 68);
  v37 = *(v1 + 70);

  v38 = *(v1 + 72);
  v39 = *(v1 + 74);

  v40 = *(v1 + 76);
  v41 = *(v1 + 78);

  v42 = *(v1 + 80);
  v43 = *(v1 + 82);

  v44 = *(v1 + 84);
  v45 = *(v1 + 86);

  v46 = *(v1 + 88);
  v47 = *(v1 + 90);

  v48 = *(v1 + 92);
  v49 = *(v1 + 94);

  v50 = *(v1 + 96);
  v51 = *(v1 + 98);

  v52 = *(v1 + 100);
  v53 = *(v1 + 102);

  v54 = *(v1 + 104);
  v55 = *(v1 + 106);

  v56 = *(v1 + 108);
  v57 = *(v1 + 110);

  v58 = *(v1 + 112);
  v59 = *(v1 + 114);

  v60 = *(v1 + 116);
  v61 = *(v1 + 118);

  v62 = *(v1 + 120);
  v63 = *(v1 + 122);

  v64 = *(v1 + 124);
  v65 = *(v1 + 126);

  v66 = *(v1 + 128);
  v67 = *(v1 + 130);

  v68 = OBJC_IVAR____TtC15ManagedSettings20ManagedSettingsStore__effectiveDenyExplicitContent;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF900, &qword_20E4CCE48);
  (*(*(v69 - 8) + 8))(&v1[v68], v69);
  v70 = OBJC_IVAR____TtC15ManagedSettings20ManagedSettingsStore__effectiveMaximumMovieRating;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8F8, &qword_20E4CCE40);
  v72 = *(*(v71 - 8) + 8);
  v72(&v1[v70], v71);
  v72(&v1[OBJC_IVAR____TtC15ManagedSettings20ManagedSettingsStore__effectiveMaximumTVShowRating], v71);
  return v1;
}

uint64_t ManagedSettingsStore.__deallocating_deinit()
{
  ManagedSettingsStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_20E4ACF3C()
{
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_280C72C08;
  if (off_280C72C08)
  {
    v2 = v0[4];
    v4 = v0[5];
    v3 = v0[6];
    v10[0] = v0[3];
    v10[1] = v2;
    v10[2] = v4;
    v10[3] = v3;

    v5 = sub_20E42695C(v10);

    if (*(v5 + 16) && (v6 = sub_20E429BA0(0x657669746361, 0xE600000000000000), (v7 & 1) != 0))
    {
      v1 = *(*(v5 + 56) + 8 * v6);
    }

    else
    {

      v1 = 0;
    }
  }

  v8 = _sSb15ManagedSettingsE5value4fromSbSgSo8NSObjectCSg_tFZ_0(v1);

  return (v8 == 2) | v8 & 1u;
}

void (*sub_20E4AD08C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_20E4ACF3C() & 1;
  return sub_20E4AD0D8;
}

uint64_t sub_20E4AD100()
{
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_280C72C08;
  if (off_280C72C08)
  {
    v2 = v0[4];
    v4 = v0[5];
    v3 = v0[6];
    v10[0] = v0[3];
    v10[1] = v2;
    v10[2] = v4;
    v10[3] = v3;

    v5 = sub_20E42695C(v10);

    if (*(v5 + 16) && (v6 = sub_20E429BA0(0x61576F54636E7973, 0xEB00000000686374), (v7 & 1) != 0))
    {
      v1 = *(*(v5 + 56) + 8 * v6);
    }

    else
    {

      v1 = 0;
    }
  }

  v8 = _sSb15ManagedSettingsE5value4fromSbSgSo8NSObjectCSg_tFZ_0(v1);

  return v8 & 1;
}

void sub_20E4AD258(char a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF918, &qword_20E4CCE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20E4C7720;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    *(inited + 48) = v6;

    v8 = v6;
    v9 = sub_20E42CD48(inited);
    swift_setDeallocating();
    sub_20E424DA8(inited + 32, &qword_27C8CF920, &qword_20E4CCE68);
    v10 = v3[4];
    v12 = v3[5];
    v11 = v3[6];
    v13[0] = v3[3];
    v13[1] = v10;
    v13[2] = v12;
    v13[3] = v11;

    sub_20E426BF0(v9, v13);
  }

  else
  {
  }
}

void (*sub_20E4AD3E4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_20E4AD100() & 1;
  return sub_20E4AD430;
}

uint64_t sub_20E4AD458@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[8];
  v6 = v3[9];
  v5 = v3[10];
  *a2 = v3[7];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AD4BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[8];
  v8 = v6[10];
  v6[7] = v3;
  v6[8] = v2;
  v6[9] = v5;
  v6[10] = v4;
}

uint64_t sub_20E4AD548@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[8];
  v5 = v1[9];
  v4 = v1[10];
  *a1 = v1[7];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AD5A8(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  *(v1 + 56) = v7;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
}

uint64_t sub_20E4AD664@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[12];
  v6 = v3[13];
  v5 = v3[14];
  *a2 = v3[11];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AD6C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[12];
  v8 = v6[14];
  v6[11] = v3;
  v6[12] = v2;
  v6[13] = v5;
  v6[14] = v4;
}

uint64_t sub_20E4AD754@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[12];
  v5 = v1[13];
  v4 = v1[14];
  *a1 = v1[11];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AD7B4(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = *(v1 + 112);
  *(v1 + 88) = v7;
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
}

uint64_t sub_20E4AD870@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[16];
  v6 = v3[17];
  v5 = v3[18];
  *a2 = v3[15];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AD8D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[16];
  v8 = v6[18];
  v6[15] = v3;
  v6[16] = v2;
  v6[17] = v5;
  v6[18] = v4;
}

uint64_t sub_20E4AD960@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[16];
  v5 = v1[17];
  v4 = v1[18];
  *a1 = v1[15];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AD9C0(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 128);
  v5 = *(v1 + 144);
  *(v1 + 120) = v7;
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
}

uint64_t sub_20E4ADA7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[20];
  v6 = v3[21];
  v5 = v3[22];
  *a2 = v3[19];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4ADAE0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[20];
  v8 = v6[22];
  v6[19] = v3;
  v6[20] = v2;
  v6[21] = v5;
  v6[22] = v4;
}

uint64_t sub_20E4ADB6C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[20];
  v5 = v1[21];
  v4 = v1[22];
  *a1 = v1[19];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4ADBCC(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 160);
  v5 = *(v1 + 176);
  *(v1 + 152) = v7;
  *(v1 + 168) = v2;
  *(v1 + 176) = v3;
}

uint64_t sub_20E4ADC88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[24];
  v6 = v3[25];
  v5 = v3[26];
  *a2 = v3[23];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4ADCEC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[24];
  v8 = v6[26];
  v6[23] = v3;
  v6[24] = v2;
  v6[25] = v5;
  v6[26] = v4;
}

uint64_t sub_20E4ADD78@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[24];
  v5 = v1[25];
  v4 = v1[26];
  *a1 = v1[23];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4ADDD8(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 192);
  v5 = *(v1 + 208);
  *(v1 + 184) = v7;
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
}

uint64_t sub_20E4ADE94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[28];
  v6 = v3[29];
  v5 = v3[30];
  *a2 = v3[27];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4ADEF8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[28];
  v8 = v6[30];
  v6[27] = v3;
  v6[28] = v2;
  v6[29] = v5;
  v6[30] = v4;
}

uint64_t sub_20E4ADF84@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[28];
  v5 = v1[29];
  v4 = v1[30];
  *a1 = v1[27];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4ADFE4(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 224);
  v5 = *(v1 + 240);
  *(v1 + 216) = v7;
  *(v1 + 232) = v2;
  *(v1 + 240) = v3;
}

uint64_t sub_20E4AE0A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[32];
  v6 = v3[33];
  v5 = v3[34];
  *a2 = v3[31];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AE104(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[32];
  v8 = v6[34];
  v6[31] = v3;
  v6[32] = v2;
  v6[33] = v5;
  v6[34] = v4;
}

uint64_t sub_20E4AE190@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[32];
  v5 = v1[33];
  v4 = v1[34];
  *a1 = v1[31];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AE1F0(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 256);
  v5 = *(v1 + 272);
  *(v1 + 248) = v7;
  *(v1 + 264) = v2;
  *(v1 + 272) = v3;
}

uint64_t sub_20E4AE2AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[36];
  v6 = v3[37];
  v5 = v3[38];
  *a2 = v3[35];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AE310(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[36];
  v8 = v6[38];
  v6[35] = v3;
  v6[36] = v2;
  v6[37] = v5;
  v6[38] = v4;
}

uint64_t sub_20E4AE39C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[36];
  v5 = v1[37];
  v4 = v1[38];
  *a1 = v1[35];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AE3FC(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 288);
  v5 = *(v1 + 304);
  *(v1 + 280) = v7;
  *(v1 + 296) = v2;
  *(v1 + 304) = v3;
}

uint64_t sub_20E4AE4C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[40];
  v6 = v3[41];
  v5 = v3[42];
  *a2 = v3[39];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AE528(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[40];
  v8 = v6[42];
  v6[39] = v3;
  v6[40] = v2;
  v6[41] = v5;
  v6[42] = v4;
}

uint64_t sub_20E4AE5B4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[40];
  v5 = v1[41];
  v4 = v1[42];
  *a1 = v1[39];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AE614(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 320);
  v5 = *(v1 + 336);
  *(v1 + 312) = v7;
  *(v1 + 328) = v2;
  *(v1 + 336) = v3;
}

uint64_t sub_20E4AE6DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[44];
  v6 = v3[45];
  v5 = v3[46];
  *a2 = v3[43];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AE740(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[44];
  v8 = v6[46];
  v6[43] = v3;
  v6[44] = v2;
  v6[45] = v5;
  v6[46] = v4;
}

uint64_t sub_20E4AE7CC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[44];
  v5 = v1[45];
  v4 = v1[46];
  *a1 = v1[43];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AE82C(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 352);
  v5 = *(v1 + 368);
  *(v1 + 344) = v7;
  *(v1 + 360) = v2;
  *(v1 + 368) = v3;
}

uint64_t sub_20E4AE8F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[48];
  v6 = v3[49];
  v5 = v3[50];
  *a2 = v3[47];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AE958(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[48];
  v8 = v6[50];
  v6[47] = v3;
  v6[48] = v2;
  v6[49] = v5;
  v6[50] = v4;
}

uint64_t sub_20E4AE9E4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[48];
  v5 = v1[49];
  v4 = v1[50];
  *a1 = v1[47];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AEA44(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 384);
  v5 = *(v1 + 400);
  *(v1 + 376) = v7;
  *(v1 + 392) = v2;
  *(v1 + 400) = v3;
}

uint64_t sub_20E4AEB0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[52];
  v6 = v3[53];
  v5 = v3[54];
  *a2 = v3[51];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AEB70(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[52];
  v8 = v6[54];
  v6[51] = v3;
  v6[52] = v2;
  v6[53] = v5;
  v6[54] = v4;
}

uint64_t sub_20E4AEBFC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[52];
  v5 = v1[53];
  v4 = v1[54];
  *a1 = v1[51];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AEC5C(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 416);
  v5 = *(v1 + 432);
  *(v1 + 408) = v7;
  *(v1 + 424) = v2;
  *(v1 + 432) = v3;
}

uint64_t sub_20E4AED24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[56];
  v6 = v3[57];
  v5 = v3[58];
  *a2 = v3[55];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AED88(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[56];
  v8 = v6[58];
  v6[55] = v3;
  v6[56] = v2;
  v6[57] = v5;
  v6[58] = v4;
}

uint64_t sub_20E4AEE14@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[56];
  v5 = v1[57];
  v4 = v1[58];
  *a1 = v1[55];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AEE74(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 448);
  v5 = *(v1 + 464);
  *(v1 + 440) = v7;
  *(v1 + 456) = v2;
  *(v1 + 464) = v3;
}

uint64_t sub_20E4AEF3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[60];
  v6 = v3[61];
  v5 = v3[62];
  *a2 = v3[59];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_20E4AEFA0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[60];
  v8 = v6[62];
  v6[59] = v3;
  v6[60] = v2;
  v6[61] = v5;
  v6[62] = v4;
}

uint64_t sub_20E4AF02C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[60];
  v5 = v1[61];
  v4 = v1[62];
  *a1 = v1[59];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_20E4AF08C(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 480);
  v5 = *(v1 + 496);
  *(v1 + 472) = v7;
  *(v1 + 488) = v2;
  *(v1 + 496) = v3;
}

uint64_t sub_20E4AF154@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[64];
  v5 = v3[65];
  v6 = v3[66];
  *a2 = v3[63];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4AF1BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[64];
  v8 = v6[66];
  v6[63] = v3;
  v6[64] = v2;
  v6[65] = v5;
  v6[66] = v4;
}

uint64_t sub_20E4AF24C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[64];
  v4 = v1[65];
  v5 = v1[66];
  *a1 = v1[63];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4AF2B0(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 512);
  v5 = *(v1 + 528);
  *(v1 + 504) = v7;
  *(v1 + 520) = v2;
  *(v1 + 528) = v3;
}

uint64_t sub_20E4AF37C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[68];
  v5 = v3[69];
  v6 = v3[70];
  *a2 = v3[67];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4AF3E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[68];
  v8 = v6[70];
  v6[67] = v3;
  v6[68] = v2;
  v6[69] = v5;
  v6[70] = v4;
}

uint64_t sub_20E4AF47C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[68];
  v4 = v1[69];
  v5 = v1[70];
  *a1 = v1[67];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4AF4E4(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 544);
  v5 = *(v1 + 560);
  *(v1 + 536) = v7;
  *(v1 + 552) = v2;
  *(v1 + 560) = v3;
}

uint64_t sub_20E4AF5B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[72];
  v5 = v3[73];
  v6 = v3[74];
  *a2 = v3[71];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4AF61C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[72];
  v8 = v6[74];
  v6[71] = v3;
  v6[72] = v2;
  v6[73] = v5;
  v6[74] = v4;
}

uint64_t sub_20E4AF6B0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[72];
  v4 = v1[73];
  v5 = v1[74];
  *a1 = v1[71];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4AF718(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 576);
  v5 = *(v1 + 592);
  *(v1 + 568) = v7;
  *(v1 + 584) = v2;
  *(v1 + 592) = v3;
}

uint64_t sub_20E4AF7E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[76];
  v5 = v3[77];
  v6 = v3[78];
  *a2 = v3[75];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4AF850(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[76];
  v8 = v6[78];
  v6[75] = v3;
  v6[76] = v2;
  v6[77] = v5;
  v6[78] = v4;
}

uint64_t sub_20E4AF8E4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[76];
  v4 = v1[77];
  v5 = v1[78];
  *a1 = v1[75];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4AF94C(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 608);
  v5 = *(v1 + 624);
  *(v1 + 600) = v7;
  *(v1 + 616) = v2;
  *(v1 + 624) = v3;
}

uint64_t sub_20E4AFA18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[80];
  v5 = v3[81];
  v6 = v3[82];
  *a2 = v3[79];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4AFA84(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[80];
  v8 = v6[82];
  v6[79] = v3;
  v6[80] = v2;
  v6[81] = v5;
  v6[82] = v4;
}

uint64_t sub_20E4AFB18@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[80];
  v4 = v1[81];
  v5 = v1[82];
  *a1 = v1[79];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4AFB80(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 640);
  v5 = *(v1 + 656);
  *(v1 + 632) = v7;
  *(v1 + 648) = v2;
  *(v1 + 656) = v3;
}

uint64_t sub_20E4AFC4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[84];
  v5 = v3[85];
  v6 = v3[86];
  *a2 = v3[83];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4AFCB8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[84];
  v8 = v6[86];
  v6[83] = v3;
  v6[84] = v2;
  v6[85] = v5;
  v6[86] = v4;
}

uint64_t sub_20E4AFD4C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[84];
  v4 = v1[85];
  v5 = v1[86];
  *a1 = v1[83];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4AFDB4(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 672);
  v5 = *(v1 + 688);
  *(v1 + 664) = v7;
  *(v1 + 680) = v2;
  *(v1 + 688) = v3;
}

uint64_t sub_20E4AFE80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[88];
  v5 = v3[89];
  v6 = v3[90];
  *a2 = v3[87];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4AFEEC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[88];
  v8 = v6[90];
  v6[87] = v3;
  v6[88] = v2;
  v6[89] = v5;
  v6[90] = v4;
}

uint64_t sub_20E4AFF80@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[88];
  v4 = v1[89];
  v5 = v1[90];
  *a1 = v1[87];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4AFFE8(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 704);
  v5 = *(v1 + 720);
  *(v1 + 696) = v7;
  *(v1 + 712) = v2;
  *(v1 + 720) = v3;
}

uint64_t sub_20E4B00B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[92];
  v5 = v3[93];
  v6 = v3[94];
  *a2 = v3[91];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B0120(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[92];
  v8 = v6[94];
  v6[91] = v3;
  v6[92] = v2;
  v6[93] = v5;
  v6[94] = v4;
}

uint64_t sub_20E4B01B4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[92];
  v4 = v1[93];
  v5 = v1[94];
  *a1 = v1[91];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B021C(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 736);
  v5 = *(v1 + 752);
  *(v1 + 728) = v7;
  *(v1 + 744) = v2;
  *(v1 + 752) = v3;
}

uint64_t sub_20E4B02E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[96];
  v5 = v3[97];
  v6 = v3[98];
  *a2 = v3[95];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B0354(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[96];
  v8 = v6[98];
  v6[95] = v3;
  v6[96] = v2;
  v6[97] = v5;
  v6[98] = v4;
}

uint64_t sub_20E4B03E8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[96];
  v4 = v1[97];
  v5 = v1[98];
  *a1 = v1[95];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B0450(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 768);
  v5 = *(v1 + 784);
  *(v1 + 760) = v7;
  *(v1 + 776) = v2;
  *(v1 + 784) = v3;
}

uint64_t sub_20E4B051C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[100];
  v5 = v3[101];
  v6 = v3[102];
  *a2 = v3[99];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B0588(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[100];
  v8 = v6[102];
  v6[99] = v3;
  v6[100] = v2;
  v6[101] = v5;
  v6[102] = v4;
}

uint64_t sub_20E4B061C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[100];
  v4 = v1[101];
  v5 = v1[102];
  *a1 = v1[99];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B0684(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 800);
  v5 = *(v1 + 816);
  *(v1 + 792) = v7;
  *(v1 + 808) = v2;
  *(v1 + 816) = v3;
}

uint64_t sub_20E4B0750@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[104];
  v5 = v3[105];
  v6 = v3[106];
  *a2 = v3[103];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B07BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[104];
  v8 = v6[106];
  v6[103] = v3;
  v6[104] = v2;
  v6[105] = v5;
  v6[106] = v4;
}

uint64_t sub_20E4B0850@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[104];
  v4 = v1[105];
  v5 = v1[106];
  *a1 = v1[103];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B08B8(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 832);
  v5 = *(v1 + 848);
  *(v1 + 824) = v7;
  *(v1 + 840) = v2;
  *(v1 + 848) = v3;
}

uint64_t sub_20E4B0984@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[108];
  v5 = v3[109];
  v6 = v3[110];
  *a2 = v3[107];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B09F0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[108];
  v8 = v6[110];
  v6[107] = v3;
  v6[108] = v2;
  v6[109] = v5;
  v6[110] = v4;
}

uint64_t sub_20E4B0A84@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[108];
  v4 = v1[109];
  v5 = v1[110];
  *a1 = v1[107];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B0AEC(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 864);
  v5 = *(v1 + 880);
  *(v1 + 856) = v7;
  *(v1 + 872) = v2;
  *(v1 + 880) = v3;
}

uint64_t sub_20E4B0BB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[112];
  v5 = v3[113];
  v6 = v3[114];
  *a2 = v3[111];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B0C24(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[112];
  v8 = v6[114];
  v6[111] = v3;
  v6[112] = v2;
  v6[113] = v5;
  v6[114] = v4;
}

uint64_t sub_20E4B0CB8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[112];
  v4 = v1[113];
  v5 = v1[114];
  *a1 = v1[111];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B0D20(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 896);
  v5 = *(v1 + 912);
  *(v1 + 888) = v7;
  *(v1 + 904) = v2;
  *(v1 + 912) = v3;
}

uint64_t sub_20E4B0DEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[116];
  v5 = v3[117];
  v6 = v3[118];
  *a2 = v3[115];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B0E58(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[116];
  v8 = v6[118];
  v6[115] = v3;
  v6[116] = v2;
  v6[117] = v5;
  v6[118] = v4;
}

uint64_t sub_20E4B0EEC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[116];
  v4 = v1[117];
  v5 = v1[118];
  *a1 = v1[115];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B0F54(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 928);
  v5 = *(v1 + 944);
  *(v1 + 920) = v7;
  *(v1 + 936) = v2;
  *(v1 + 944) = v3;
}

uint64_t sub_20E4B1020@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[120];
  v5 = v3[121];
  v6 = v3[122];
  *a2 = v3[119];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B108C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[120];
  v8 = v6[122];
  v6[119] = v3;
  v6[120] = v2;
  v6[121] = v5;
  v6[122] = v4;
}

uint64_t sub_20E4B1120@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[120];
  v4 = v1[121];
  v5 = v1[122];
  *a1 = v1[119];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B1188(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 960);
  v5 = *(v1 + 976);
  *(v1 + 952) = v7;
  *(v1 + 968) = v2;
  *(v1 + 976) = v3;
}

uint64_t sub_20E4B1254@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[124];
  v5 = v3[125];
  v6 = v3[126];
  *a2 = v3[123];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B12C0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[124];
  v8 = v6[126];
  v6[123] = v3;
  v6[124] = v2;
  v6[125] = v5;
  v6[126] = v4;
}

uint64_t sub_20E4B1354@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[124];
  v4 = v1[125];
  v5 = v1[126];
  *a1 = v1[123];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B13BC(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 992);
  v5 = *(v1 + 1008);
  *(v1 + 984) = v7;
  *(v1 + 1000) = v2;
  *(v1 + 1008) = v3;
}

uint64_t sub_20E4B1488@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[128];
  v5 = v3[129];
  v6 = v3[130];
  *a2 = v3[127];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_20E4B14F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[128];
  v8 = v6[130];
  v6[127] = v3;
  v6[128] = v2;
  v6[129] = v5;
  v6[130] = v4;
}

uint64_t sub_20E4B1588@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[128];
  v4 = v1[129];
  v5 = v1[130];
  *a1 = v1[127];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_20E4B15F0(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v4 = *(v1 + 1024);
  v5 = *(v1 + 1040);
  *(v1 + 1016) = v7;
  *(v1 + 1032) = v2;
  *(v1 + 1040) = v3;
}

uint64_t sub_20E4B16BC()
{
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (off_280C72C08)
  {
    v2 = v0[4];
    v4 = v0[5];
    v3 = v0[6];
    v5[0] = v0[3];
    v5[1] = v2;
    v5[2] = v4;
    v5[3] = v3;

    sub_20E4261B4(v5);
  }

  return result;
}

uint64_t sub_20E4B1788()
{
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (off_280C72C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF928, &unk_20E4CCE70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20E4C7720;
    v3 = v0[4];
    *(inited + 32) = v0[3];
    *(inited + 40) = v3;

    v4 = sub_20E4B2C84(inited);
    swift_setDeallocating();
    sub_20E4B2DEC(inited + 32);
    sub_20E426520(v4, v0[5], v0[6]);
  }

  return result;
}

uint64_t static ManagedSettingsStore.delete(stores:)(uint64_t a1)
{
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (off_280C72C08)
  {

    sub_20E426520(a1, 0, 0);
  }

  return result;
}

uint64_t static ManagedSettingsStore.delete(stores:for:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    v5 = result;
    if (qword_280C72C00 != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    if (off_280C72C08)
    {

      sub_20E426520(v5, a2, a3);
    }
  }

  return result;
}

uint64_t static ManagedSettingsStore.stores.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0 - 8, v3);
  v5 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - v7;
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = MEMORY[0x277D84FA0];
  if (off_280C72C08)
  {
    v10 = *(off_280C72C08 + 2);
    v11 = *(off_280C72C08 + 3);

    v21 = v10;
    sub_20E4258D0(v10, v11, v8);
    if (qword_280C75F10 != -1)
    {
      swift_once();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    sub_20E467B30();
    v20 = v13;
    ObjectType = swift_getObjectType();
    sub_20E424E74(v8, v5, &qword_27C8CED28, &qword_20E4C7E30);
    v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v15 = (v2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v21;
    *(v16 + 24) = v11;
    sub_20E42E138(v5, v16 + v14);
    *(v16 + v15) = v12;

    XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, sub_20E42E1A8, v16, ObjectType, v20);

    swift_unknownObjectRelease();
    sub_20E424DA8(v8, &qword_27C8CED28, &qword_20E4C7E30);
    swift_beginAccess();
    v9 = *(v12 + 16);
  }

  return v9;
}

uint64_t static ManagedSettingsStore.stores(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!off_280C72C08)
  {
    return MEMORY[0x277D84FA0];
  }

  v4 = sub_20E426F74(a1, a2);

  return v4;
}

uint64_t sub_20E4B1D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20E4C62F0();

  *a2 = v5;
  return result;
}

uint64_t sub_20E4B1DEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20E4C6300();
}

uint64_t sub_20E4B1E60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20E4C62F0();

  return v1;
}

uint64_t sub_20E4B1ED4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF950, &qword_20E4CD2E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF900, &qword_20E4CCE48);
  sub_20E4C62E0();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_20E4B20B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF948, &qword_20E4CD2E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - v16;
  v18 = *(v9 + 16);
  v18(&v22 - v16, a1, v8);
  v19 = *a2;
  v18(v14, v17, v8);
  v20 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8F8, &qword_20E4CCE40);
  sub_20E4C62E0();
  swift_endAccess();
  return (*(v9 + 8))(v17, v8);
}

uint64_t sub_20E4B226C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20E4C62F0();

  *a2 = v5;
  return result;
}

uint64_t sub_20E4B22FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_20E4C6300();
}

uint64_t sub_20E4B2380()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20E4C62F0();

  return v1;
}

uint64_t sub_20E4B23EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_20E4C62D0();
  return swift_endAccess();
}

uint64_t sub_20E4B2484(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_20E4C62D0();
  return swift_endAccess();
}

uint64_t static ManagedSettingsStore.effectivePublisher(for:)@<X0>(void *a1@<X8>)
{

  return sub_20E495CE4(v2, a1);
}

uint64_t sub_20E4B2534(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v70 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &ObjectType - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &ObjectType - v19;
  if (qword_280C72688 != -1)
  {
    swift_once();
  }

  v21 = off_280C72690;
  if (!*(off_280C72690 + 2) || (v22 = sub_20E429BA0(v70, a3), (v23 & 1) == 0))
  {
    sub_20E470D40();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  sub_20E442818(v21[7] + 40 * v22, v67);
  sub_20E424E74(a1, &v62, &qword_27C8CF930, &qword_20E4CCF58);
  v61 = a3;
  if (!v63)
  {
    sub_20E424DA8(&v62, &qword_27C8CF930, &qword_20E4CCF58);
LABEL_10:
    if (qword_280C72C00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = off_280C72C08;
    if (off_280C72C08)
    {
      sub_20E424E74(a1, v64, &qword_27C8CF930, &qword_20E4CCF58);
      v27 = v65;
      v58 = v13;
      v57 = v26;
      v55 = v17;
      v59 = v20;
      if (v65)
      {
        v28 = v66;
        __swift_project_boxed_opaque_existential_1(v64, v65);
        v29 = *(v28 + 16);

        v53 = v29(v27, v28);
        __swift_destroy_boxed_opaque_existential_0(v64);
      }

      else
      {

        sub_20E424DA8(v64, &qword_27C8CF930, &qword_20E4CCF58);
        v53 = 0;
      }

      v30 = v5[4];
      v52 = v5[3];
      v31 = v5[6];
      v60 = v5[5];
      v32 = v68;
      v33 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v34 = *(v33 + 64);
      swift_bridgeObjectRetain_n();
      v56 = v30;

      v51 = v34(v32, v33);
      v54 = v31;
      if (v31)
      {
        v35 = v31;
        v36 = v57;
        v37 = v60;
      }

      else
      {
        v36 = v57;
        v37 = v57[2];
        v35 = v57[3];
      }

      v38 = v59;
      sub_20E4258D0(v37, v35, v59);
      if (qword_280C75F10 != -1)
      {
        swift_once();
      }

      v39 = swift_allocBox();
      v41 = v40;
      sub_20E424E74(v38, v40, &qword_27C8CED28, &qword_20E4C7E30);
      sub_20E467B30();
      v50 = v42;
      ObjectType = swift_getObjectType();
      v43 = swift_allocObject();
      v44 = v53;
      *(v43 + 16) = v53;
      *(v43 + 24) = v51 & 1;
      v45 = v61;
      *(v43 + 32) = v70;
      *(v43 + 40) = v45;
      v60 = v37;
      *(v43 + 48) = v37;
      *(v43 + 56) = v35;
      v46 = v56;
      *(v43 + 64) = v52;
      *(v43 + 72) = v46;
      *(v43 + 80) = v39;
      v70 = v44;

      XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, sub_20E424F34, v43, ObjectType, v50);
      swift_unknownObjectRelease();

      swift_beginAccess();
      v47 = v55;
      sub_20E424E74(v41, v55, &qword_27C8CED28, &qword_20E4C7E30);

      [v36[5] lock];
      v48 = v58;
      sub_20E424E74(v47, v58, &qword_27C8CED28, &qword_20E4C7E30);
      swift_beginAccess();

      sub_20E425A70(v48, v60, v35);
      swift_endAccess();
      [v36[5] unlock];

      sub_20E424DA8(v47, &qword_27C8CED28, &qword_20E4C7E30);
      sub_20E424DA8(v59, &qword_27C8CED28, &qword_20E4C7E30);
    }

    return __swift_destroy_boxed_opaque_existential_0(v67);
  }

  sub_20E41B858(&v62, v64);
  __swift_project_boxed_opaque_existential_1(v67, v68);
  sub_20E4AA148(v64);
  __swift_destroy_boxed_opaque_existential_0(v64);
  if (!v4)
  {
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t static ManagedSettingsStore.collectDiagnostics()@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C75F10 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_20E470594(a1);
}

uint64_t sub_20E4B2BC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManagedSettingsStore();
  result = sub_20E4C6290();
  *a1 = result;
  return result;
}

uint64_t sub_20E4B2C08(uint64_t result, __int128 *a2)
{
  v2 = *(a2 + 16);
  v5 = *a2;
  v6 = v2;
  v3 = *(result + 48);
  if (v3)
  {
    v4 = *(result + 56);

    v3(&v5);

    return sub_20E441944(v3);
  }

  return result;
}

uint64_t sub_20E4B2C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF300, &qword_20E4CD2F0);
    v3 = sub_20E4C6800();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_20E4C69C0();

      sub_20E4C6530();
      result = sub_20E4C69F0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_20E4C6910();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_20E4B2E20()
{
  result = qword_27C8CF938;
  if (!qword_27C8CF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF938);
  }

  return result;
}

unint64_t sub_20E4B2E78()
{
  result = qword_27C8CF940;
  if (!qword_27C8CF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF940);
  }

  return result;
}

void sub_20E4B2EF0()
{
  sub_20E4B4300(319, &qword_280C721C8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_20E4B4300(319, &qword_280C75D58);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_20E4B4300(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20E4C6310();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_20E4B434C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20E4B4394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20E4B4438(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

id sub_20E4B44A0(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return result;
  }

  return result;
}

void sub_20E4B44AC(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20E4B44DC(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 0x1FF;
  return v4(v7);
}

uint64_t sub_20E4B4534(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000024;
  v3 = "faceTime.denySharePlay";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (a1 == 4)
  {
    v6 = "DistributionAppInstallation";
  }

  else
  {
    v6 = "appStore.maximumRating";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002BLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "ketplaceAppInstallation";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000027;
  if (v4 == 1)
  {
    v9 = 0xD00000000000001BLL;
    v10 = "StoreAppInstallation";
  }

  else
  {
    v10 = "appStore.denyInAppPurchases";
  }

  if (!v4)
  {
    v9 = 0xD000000000000024;
    v10 = "faceTime.denySharePlay";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000002BLL;
      v3 = "ketplaceAppInstallation";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v3 = "DistributionAppInstallation";
    }

    else
    {
      v3 = "appStore.maximumRating";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "StoreAppInstallation";
    }

    else
    {
      v2 = 0xD000000000000027;
      v3 = "appStore.denyInAppPurchases";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_20E4C6910();
  }

  return v12 & 1;
}

uint64_t sub_20E4B469C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = 0xD000000000000013;
  v4 = "user.sharingPolicy";
  v5 = a1;
  v6 = 0xD00000000000001ALL;
  if (a1 == 4)
  {
    v6 = 0xD000000000000011;
    v7 = "shield.unshieldableWebDomains";
  }

  else
  {
    v7 = "shield.webDomains";
  }

  if (a1 == 3)
  {
    v8 = 0xD00000000000001DLL;
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 3)
  {
    v7 = "shield.unshieldableApplications";
  }

  v9 = 0xD00000000000001CLL;
  if (v5 == 1)
  {
    v10 = "shield.applications";
  }

  else
  {
    v9 = 0xD00000000000001FLL;
    v10 = "shield.applicationCategories";
  }

  if (v5)
  {
    v3 = v9;
  }

  else
  {
    v10 = "user.sharingPolicy";
  }

  if (v5 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001DLL;
      v4 = "shield.unshieldableApplications";
    }

    else if (a2 == 4)
    {
      v4 = "shield.unshieldableWebDomains";
    }

    else
    {
      v2 = 0xD00000000000001ALL;
      v4 = "shield.webDomains";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001CLL;
      v4 = "shield.applications";
    }

    else
    {
      v2 = 0xD00000000000001FLL;
      v4 = "shield.applicationCategories";
    }
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_20E4C6910();
  }

  return v13 & 1;
}

uint64_t sub_20E4B4810(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "ingPolicy";
  v4 = a1;
  if (a1 <= 4u)
  {
    v10 = "safari.denyAutoFill";
    v11 = 0xD00000000000001ALL;
    v12 = "safari.denyHistoryClearing";
    v13 = 0xD000000000000015;
    if (a1 != 3)
    {
      v13 = 0xD000000000000011;
      v12 = "safari.denyJavaScript";
    }

    if (a1 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    v14 = "safari.cookiePolicy";
    if (!a1)
    {
      v14 = "ingPolicy";
    }

    if (a1 <= 1u)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 1)
    {
      v15 = v14;
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v5 = "safari.denySummary";
      v6 = "safari.forceFraudWarning";
      v16 = 0xD000000000000017;
      if (a1 != 9)
      {
        v16 = 0xD000000000000016;
        v6 = "safari.managedBookmarks";
      }

      v8 = a1 == 8;
      if (a1 == 8)
      {
        v9 = 0xD000000000000018;
      }

      else
      {
        v9 = v16;
      }
    }

    else
    {
      v5 = "safari.denyPopups";
      v6 = "safari.denyPrivateBrowsing";
      if (a1 == 6)
      {
        v7 = 0xD000000000000011;
      }

      else
      {
        v7 = 0xD000000000000012;
      }

      if (a1 != 6)
      {
        v6 = "safari.denySafari";
      }

      v8 = a1 == 5;
      if (a1 == 5)
      {
        v9 = 0xD00000000000001ALL;
      }

      else
      {
        v9 = v7;
      }
    }

    if (v8)
    {
      v15 = v5;
    }

    else
    {
      v15 = v6;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v3 = "safari.cookiePolicy";
      }

      v2 = 0xD000000000000013;
    }

    else
    {
      if (a2 == 2)
      {
        v17 = "safari.denyHistoryClearing";
        goto LABEL_48;
      }

      if (a2 == 3)
      {
        v3 = "safari.denyHistoryClearing";
        v2 = 0xD000000000000015;
      }

      else
      {
        v3 = "safari.denyJavaScript";
      }
    }
  }

  else
  {
    if (a2 <= 7u)
    {
      if (a2 != 5)
      {
        if (a2 == 6)
        {
          v3 = "safari.denyPrivateBrowsing";
        }

        else
        {
          v3 = "safari.denySafari";
          v2 = 0xD000000000000012;
        }

        goto LABEL_53;
      }

      v17 = "safari.denyPrivateBrowsing";
LABEL_48:
      v3 = (v17 - 32);
      v2 = 0xD00000000000001ALL;
      goto LABEL_53;
    }

    if (a2 == 8)
    {
      v3 = "safari.denySummary";
      v2 = 0xD000000000000018;
    }

    else if (a2 == 9)
    {
      v3 = "safari.forceFraudWarning";
      v2 = 0xD000000000000017;
    }

    else
    {
      v3 = "safari.managedBookmarks";
      v2 = 0xD000000000000016;
    }
  }

LABEL_53:
  if (v9 == v2 && (v15 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_20E4C6910();
  }

  return v18 & 1;
}

uint64_t sub_20E4B4AAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726576656ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x5764657469736976;
    }

    else
    {
      v4 = 0x737961776C61;
    }

    if (v3 == 2)
    {
      v5 = 0xEF73657469736265;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x57746E6572727563;
    }

    else
    {
      v4 = 0x726576656ELL;
    }

    if (v3)
    {
      v5 = 0xEE00657469736265;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x5764657469736976;
  v8 = 0xEF73657469736265;
  if (a2 != 2)
  {
    v7 = 0x737961776C61;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x57746E6572727563;
    v6 = 0xEE00657469736265;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E4B4C14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "cellular.lockESIM";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000031;
    }

    if (v3)
    {
      v4 = "genceIntegrations";
    }

    else
    {
      v4 = "cellular.lockESIM";
    }
  }

  else if (a1 == 2)
  {
    v4 = "intelligence.denyGenmoji";
    v5 = 0xD000000000000020;
  }

  else if (a1 == 3)
  {
    v4 = "yImagePlayground";
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = "intelligence.denyImageWand";
    v5 = 0xD00000000000001DLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000018;
    }

    else
    {
      v6 = 0xD000000000000031;
    }

    if (a2)
    {
      v2 = "genceIntegrations";
    }
  }

  else if (a2 == 2)
  {
    v2 = "intelligence.denyGenmoji";
    v6 = 0xD000000000000020;
  }

  else if (a2 == 3)
  {
    v2 = "yImagePlayground";
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = "intelligence.denyImageWand";
    v6 = 0xD00000000000001DLL;
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_20E4C6910();
  }

  return v7 & 1;
}

uint64_t sub_20E4B4D7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = "te";
  v4 = a1;
  v5 = 0xD000000000000024;
  if (a1 == 4)
  {
    v6 = "application.denyAppRemoval";
  }

  else
  {
    v5 = 0xD000000000000023;
    v6 = "BackgroundAppRefresh";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001ALL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "application.denyAppInstallation";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000018;
  }

  else
  {
    v9 = 0xD00000000000001FLL;
  }

  if (v4 == 1)
  {
    v10 = "application.blockedApplications";
  }

  else
  {
    v10 = "application.denyAppClips";
  }

  if (!v4)
  {
    v9 = 0xD00000000000001FLL;
    v10 = "te";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001ALL;
      v3 = "application.denyAppInstallation";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000024;
      v3 = "application.denyAppRemoval";
    }

    else
    {
      v2 = 0xD000000000000023;
      v3 = "BackgroundAppRefresh";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000018;
      v3 = "application.blockedApplications";
    }

    else
    {
      v3 = "application.denyAppClips";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_20E4C6910();
  }

  return v12 & 1;
}

uint64_t sub_20E4B4EE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x73746361746E6F63;
    }

    else
    {
      v4 = 0x706F7244726961;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x736567617373656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x736F746F6870;
  }

  else
  {
    v4 = 0x696F566F65646976;
    v3 = 0xEE006C69614D6563;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x73746361746E6F63;
    }

    else
    {
      v9 = 0x706F7244726961;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x736F746F6870;
    if (a2 != 3)
    {
      v6 = 0x696F566F65646976;
      v5 = 0xEE006C69614D6563;
    }

    if (a2 == 2)
    {
      v7 = 0x736567617373656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_20E4C6910();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_20E4B5080(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 1852989815;
    }

    else
    {
      v2 = 1701736302;
    }

    v3 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v2 = 7041889;
  }

  else if (a1 == 3)
  {
    v2 = 0x69646E65506B7361;
    v3 = 0xEA0000000000676ELL;
  }

  else
  {
    v3 = 0xE700000000000000;
    v2 = 0x64656B636F6C62;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1852989815;
    }

    else
    {
      v8 = 1701736302;
    }

    v7 = 0xE400000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x69646E65506B7361;
    v5 = 0xEA0000000000676ELL;
    if (a2 != 3)
    {
      v4 = 0x64656B636F6C62;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v6 = 7041889;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_20E4C6910();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_20E4B51EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = "allowedClient.tokenKeys";
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xD000000000000022;
    v13 = "gameCenter.denyAddingFriends";
    v14 = 0xD000000000000019;
    if (a1 != 2)
    {
      v14 = 0xD000000000000020;
      v13 = "gameCenter.denyGameCenter";
    }

    v15 = "edOtherPlayerTypes";
    if (a1)
    {
      v12 = 0xD00000000000001CLL;
    }

    else
    {
      v15 = "allowedClient.tokenKeys";
    }

    if (a1 <= 1u)
    {
      v10 = v12;
    }

    else
    {
      v10 = v14;
    }

    if (v4 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = "gameCenter.denyPrivateMessaging";
    v6 = "gameCenter.lockFriendsSharing";
    v7 = 0xD000000000000016;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001DLL;
      v6 = "gameCenter.lockProfile";
    }

    if (a1 == 6)
    {
      v7 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = v6;
    }

    v8 = "ultiplayerGaming";
    v9 = 0xD000000000000020;
    if (a1 != 4)
    {
      v9 = 0xD00000000000001FLL;
      v8 = "earbyMultiplayer";
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v17 = "gameCenter.lockFriendsSharing";
      }

      else
      {
        if (a2 == 7)
        {
          v3 = "gameCenter.lockFriendsSharing";
          v2 = 0xD000000000000016;
          goto LABEL_45;
        }

        v17 = "gameCenter.lockProfilePrivacy";
      }

      v3 = (v17 - 32);
      goto LABEL_45;
    }

    if (a2 != 4)
    {
      v3 = "earbyMultiplayer";
      v2 = 0xD00000000000001FLL;
      goto LABEL_45;
    }

    v16 = "gameCenter.denyNearbyMultiplayer";
LABEL_41:
    v3 = (v16 - 32);
    v2 = 0xD000000000000020;
    goto LABEL_45;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "gameCenter.denyAddingFriends";
      v2 = 0xD000000000000019;
      goto LABEL_45;
    }

    v16 = "gameCenter.denyMultiplayerGaming";
    goto LABEL_41;
  }

  if (a2)
  {
    v3 = "edOtherPlayerTypes";
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000022;
  }

LABEL_45:
  if (v10 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_20E4C6910();
  }

  return v18 & 1;
}

uint64_t sub_20E4B541C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = "carPlay.denyCarPlay";
  v4 = a1;
  if (a1 == 5)
  {
    v5 = 0xD00000000000001DLL;
  }

  else
  {
    v5 = 0xD00000000000002BLL;
  }

  if (a1 == 5)
  {
    v6 = "calculator.denyModeProgrammer";
  }

  else
  {
    v6 = "calculator.denyModeScientific";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (v4 == 3)
  {
    v8 = "calculator.denyMathPaperSolving";
  }

  else
  {
    v8 = "calculator.denyModeMathPaper";
  }

  if (v4 > 4)
  {
    v7 = v5;
    v8 = v6;
  }

  v9 = 0xD000000000000026;
  if (v4 == 1)
  {
    v10 = "calculator.denyInputModeRPN";
  }

  else
  {
    v9 = 0xD00000000000001FLL;
    v10 = "nputModeUnitConversion";
  }

  if (!v4)
  {
    v9 = 0xD00000000000001BLL;
    v10 = "carPlay.denyCarPlay";
  }

  if (v4 > 2)
  {
    v11 = v8;
  }

  else
  {
    v7 = v9;
    v11 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000026;
        v3 = "calculator.denyInputModeRPN";
      }

      else
      {
        v2 = 0xD00000000000001FLL;
        v3 = "nputModeUnitConversion";
      }
    }

    else
    {
      v2 = 0xD00000000000001BLL;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v3 = "calculator.denyModeProgrammer";
    }

    else
    {
      v2 = 0xD00000000000002BLL;
      v3 = "calculator.denyModeScientific";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD00000000000001CLL;
    v3 = "calculator.denyMathPaperSolving";
  }

  else
  {
    v3 = "calculator.denyModeMathPaper";
  }

  if (v7 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_20E4C6910();
  }

  return v12 & 1;
}

uint64_t sub_20E4B55B8()
{
  sub_20E4C6530();
}

uint64_t sub_20E4B5718()
{
  sub_20E4C6530();
}

void __swiftcall Bookmark.init(title:children:)(ManagedSettings::Bookmark *__return_ptr retstr, Swift::String title, Swift::OpaquePointer children)
{
  retstr->title = title;
  retstr->url.value._countAndFlagsBits = 0;
  retstr->url.value._object = 0;
  retstr->children.value = children;
}

void __swiftcall Bookmark.init(title:url:)(ManagedSettings::Bookmark *__return_ptr retstr, Swift::String title, Swift::String url)
{
  retstr->title = title;
  retstr->url.value = url;
  retstr->children.value._rawValue = 0;
}

void __swiftcall BookmarkSource.init(sourceIdentifier:title:children:)(ManagedSettings::BookmarkSource *__return_ptr retstr, Swift::String sourceIdentifier, Swift::String title, Swift::OpaquePointer children)
{
  retstr->sourceIdentifier = sourceIdentifier;
  retstr->title = title;
  retstr->children = children;
}

uint64_t SafariSettings.CookiePolicy.rawValue.getter()
{
  v1 = 0x726576656ELL;
  v2 = 0x5764657469736976;
  if (*v0 != 2)
  {
    v2 = 0x737961776C61;
  }

  if (*v0)
  {
    v1 = 0x57746E6572727563;
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

ManagedSettings::SafariSettings::CookiePolicy_optional __swiftcall SafariSettings.CookiePolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

Swift::Bool __swiftcall Bookmark.contains(_:)(ManagedSettings::Bookmark *a1)
{
  countAndFlagsBits = a1->title._countAndFlagsBits;
  object = a1->title._object;
  v4 = a1->url.value._countAndFlagsBits;
  v5 = a1->url.value._object;
  rawValue = a1->children.value._rawValue;
  v7 = *(v1 + 8);
  v8 = *(v1 + 32);
  *&v18.children.is_nil = *v1;
  v19 = v7;
  v20 = *(v1 + 16);
  v21 = v8;
  v17 = countAndFlagsBits;
  v18.title._countAndFlagsBits = countAndFlagsBits;
  v18.title._object = object;
  v18.url.value._countAndFlagsBits = v4;
  v18.url.value._object = v5;
  v18.children.value._rawValue = rawValue;
  result = _s15ManagedSettings8BookmarkV2eeoiySbAC_ACtFZ_0(&v18.children.is_nil, &v18);
  if (result)
  {
    return 1;
  }

  if (!v8)
  {
    return 0;
  }

  v11 = (v8 + 64);
  v12 = -*(v8 + 16);
  v13 = -1;
  do
  {
    v10 = v12 + v13 != -1;
    if (v12 + v13 == -1)
    {
      break;
    }

    if (++v13 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = v11 + 5;
    v15 = *v11;
    v16 = *(v11 - 3);
    *&v18.children.is_nil = *(v11 - 4);
    v19 = v16;
    v20 = *(v11 - 1);
    v21 = v15;
    v18.title._countAndFlagsBits = v17;
    v18.title._object = object;
    v18.url.value._countAndFlagsBits = v4;
    v18.url.value._object = v5;
    v18.children.value._rawValue = rawValue;
    result = Bookmark.contains(_:)(&v18);
    v11 = v14;
  }

  while (!result);
  return v10;
}

uint64_t WebNewPage.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 16))
  {
    strcpy(v4, "homepage(");
    WORD1(v4[1]) = 0;
    HIDWORD(v4[1]) = -385875968;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_20E4C6830();

    strcpy(v4, "extensionPage(");
    HIBYTE(v4[1]) = -18;
LABEL_5:
    MEMORY[0x20F32EE70](v1, v2);
    MEMORY[0x20F32EE70](41, 0xE100000000000000);
    return v4[0];
  }

  return 0x6761507472617473;
}

uint64_t Bookmark.url.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BookmarkSource.sourceIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BookmarkSource.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BookmarkSource.children.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t static BookmarkSource.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_20E4C6910() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_20E4C6910() & 1) == 0)
  {
    return 0;
  }

  return sub_20E4B5D14(v3, v7);
}

uint64_t sub_20E4B5D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (*(i - 4) != *(v3 - 4) || *(i - 3) != *(v3 - 3))
      {
        v12 = *(i - 3);
        v13 = *(v3 - 3);
        v14 = *v3;
        v15 = *(i - 2);
        v22 = *(i - 1);
        v16 = *i;
        v17 = *(v3 - 1);
        v18 = *(v3 - 2);
        v19 = sub_20E4C6910();
        v8 = v18;
        v9 = v17;
        v7 = v16;
        v6 = v22;
        v5 = v15;
        v10 = v14;
        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      if (v6)
      {
        if (!v9 || (v5 != v8 || v6 != v9) && (sub_20E4C6910() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10)
        {
          return 0;
        }

        swift_bridgeObjectRetain_n();

        v20 = sub_20E4B5D14(v7, v10);

        swift_bridgeObjectRelease_n();
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20E4B5EE0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_20E4C6910() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_20E4C6910() & 1) == 0)
  {
    return 0;
  }

  return sub_20E4B5D14(v3, v7);
}

ManagedSettings::SafariSettings::Name_optional __swiftcall SafariSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SafariSettings.Name.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  if (v2 <= 4)
  {
    v6 = 0xD00000000000001ALL;
    v7 = 0xD000000000000015;
    if (v2 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (v2 != 2)
    {
      v6 = v7;
    }

    *v0;
    if (*v0 <= 1u)
    {
      return 0xD000000000000013;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD000000000000018;
    v4 = 0xD000000000000017;
    if (v2 != 9)
    {
      v4 = 0xD000000000000016;
    }

    if (v2 != 8)
    {
      v3 = v4;
    }

    if (v2 != 6)
    {
      v1 = 0xD000000000000012;
    }

    if (v2 == 5)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (*v0 <= 7u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_20E4B6144()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4B55B8();
  return sub_20E4C69F0();
}

uint64_t sub_20E4B6194()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4B55B8();
  return sub_20E4C69F0();
}

unint64_t sub_20E4B61E4@<X0>(unint64_t *a1@<X8>)
{
  result = SafariSettings.Name.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t SafariSettings.CookiePolicy.description.getter()
{
  v1 = 0x726576654ELL;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x737961776C41;
  }

  if (*v0)
  {
    v1 = 0x20746E6572727543;
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

uint64_t sub_20E4B62C0()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4B6394()
{
  *v0;
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4B6454()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E4B6530(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726576656ELL;
  v4 = 0xEF73657469736265;
  v5 = 0x5764657469736976;
  if (*v1 != 2)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x57746E6572727563;
    v2 = 0xEE00657469736265;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_20E4B65C0()
{
  v1 = 0x726576654ELL;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x737961776C41;
  }

  if (*v0)
  {
    v1 = 0x20746E6572727543;
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

uint64_t SafariSettings.cookiePolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C73D18 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C73D28;
    v6 = unk_280C73D30;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C73D62;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  static SafariSettings.CookiePolicy.value(from:)(v8, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED50, &qword_20E4C7C40);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 4;
  }

  return result;
}

void SafariSettings.cookiePolicy.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_280C73D18 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_20E41EBD4(v2, &byte_280C73D20, v3, v4, v5, v6);
}

void (*SafariSettings.cookiePolicy.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  SafariSettings.cookiePolicy.getter((a1 + 8));
  return sub_20E4B6890;
}

void sub_20E4B6890(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (qword_280C73D18 != -1)
  {
    v8 = v2;
    v9 = v1;
    swift_once();
    v1 = v9;
    v2 = v8;
  }

  v3 = *v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);

  sub_20E41EBD4(v2, &byte_280C73D20, v4, v5, v6, v7);
}

uint64_t SafariSettings.effectiveCookiePolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280C73D18 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return sub_20E420560(&byte_280C73D20, a1);
}

uint64_t sub_20E4B698C()
{
  byte_280C73D20 = 3;
  qword_280C73D28 = 0xD000000000000013;
  unk_280C73D30 = 0x800000020E4CF310;
  qword_280C73D50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF488, &unk_20E4CA020);
  result = sub_20E430A50(&qword_280C725F0, &qword_27C8CF488, &unk_20E4CA020);
  qword_280C73D58 = result;
  byte_280C73D38 = 0;
  word_280C73D60 = 257;
  byte_280C73D62 = 0;
  qword_280C73D68 = 0;
  byte_280C73D70 = 1;
  return result;
}

uint64_t static SafariSettings.cookiePolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C73D18 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&byte_280C73D20, v1, &qword_27C8CF960, &qword_20E4CD310);
}

void (*SafariSettings.denyAutoFill.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73CB8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73CC0, v3, v4, v5, v6);
  return sub_20E4B6BBC;
}

void sub_20E4B6BEC()
{
  byte_280C73CC0 = 0;
  qword_280C73CC8 = 0xD000000000000013;
  unk_280C73CD0 = 0x800000020E4CF330;
  qword_280C73CF0 = &type metadata for BoolCombineOperator;
  unk_280C73CF8 = &protocol witness table for BoolCombineOperator;
  byte_280C73CD8 = 0;
  word_280C73D00 = 257;
  byte_280C73D02 = 0;
  qword_280C73D08 = 0;
  byte_280C73D10 = 1;
}

void (*SafariSettings.denyHistoryClearing.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73AC8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73AD0, v3, v4, v5, v6);
  return sub_20E4B6D70;
}

void sub_20E4B6DA0()
{
  byte_280C73AD0 = 0;
  qword_280C73AD8 = 0xD00000000000001ALL;
  unk_280C73AE0 = 0x800000020E4CF350;
  qword_280C73B00 = &type metadata for BoolCombineOperator;
  unk_280C73B08 = &protocol witness table for BoolCombineOperator;
  byte_280C73AE8 = 0;
  word_280C73B10 = 256;
  byte_280C73B12 = 0;
  qword_280C73B18 = 0;
  byte_280C73B20 = 1;
}

void (*SafariSettings.denyJavaScript.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73C58 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73C60, v3, v4, v5, v6);
  return sub_20E4B6F24;
}

void sub_20E4B6F54()
{
  byte_280C73C60 = 0;
  qword_280C73C68 = 0xD000000000000015;
  unk_280C73C70 = 0x800000020E4CF370;
  qword_280C73C90 = &type metadata for BoolCombineOperator;
  unk_280C73C98 = &protocol witness table for BoolCombineOperator;
  byte_280C73C78 = 0;
  word_280C73CA0 = 256;
  byte_280C73CA2 = 0;
  qword_280C73CA8 = 0;
  byte_280C73CB0 = 1;
}

void (*SafariSettings.denyPopups.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73E00 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73E08, v3, v4, v5, v6);
  return sub_20E4B70D8;
}

void sub_20E4B7108()
{
  byte_280C73E08 = 0;
  qword_280C73E10 = 0xD000000000000011;
  unk_280C73E18 = 0x800000020E4CF390;
  qword_280C73E38 = &type metadata for BoolCombineOperator;
  unk_280C73E40 = &protocol witness table for BoolCombineOperator;
  byte_280C73E20 = 0;
  word_280C73E48 = 256;
  byte_280C73E4A = 0;
  qword_280C73E50 = 0;
  byte_280C73E58 = 1;
}

void (*SafariSettings.denyPrivateBrowsing.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73A68 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73A70, v3, v4, v5, v6);
  return sub_20E4B728C;
}

void sub_20E4B72BC()
{
  byte_280C73A70 = 0;
  qword_280C73A78 = 0xD00000000000001ALL;
  unk_280C73A80 = 0x800000020E4CF3B0;
  qword_280C73AA0 = &type metadata for BoolCombineOperator;
  unk_280C73AA8 = &protocol witness table for BoolCombineOperator;
  byte_280C73A88 = 0;
  word_280C73AB0 = 256;
  byte_280C73AB2 = 0;
  qword_280C73AB8 = 0;
  byte_280C73AC0 = 1;
}

void (*SafariSettings.denySafari.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73E60 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73E68, v3, v4, v5, v6);
  return sub_20E4B7440;
}

void sub_20E4B7470()
{
  byte_280C73E68 = 0;
  qword_280C73E70 = 0xD000000000000011;
  unk_280C73E78 = 0x800000020E4CF3D0;
  qword_280C73E98 = &type metadata for BoolCombineOperator;
  unk_280C73EA0 = &protocol witness table for BoolCombineOperator;
  byte_280C73E80 = 0;
  word_280C73EA8 = 256;
  byte_280C73EAA = 0;
  qword_280C73EB0 = 0;
  byte_280C73EB8 = 1;
}

void (*SafariSettings.denySummary.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73DA0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73DA8, v3, v4, v5, v6);
  return sub_20E4B75F4;
}

void sub_20E4B7624()
{
  byte_280C73DA8 = 0;
  qword_280C73DB0 = 0xD000000000000012;
  unk_280C73DB8 = 0x800000020E4CF3F0;
  qword_280C73DD8 = &type metadata for BoolCombineOperator;
  unk_280C73DE0 = &protocol witness table for BoolCombineOperator;
  byte_280C73DC0 = 0;
  word_280C73DE8 = 256;
  byte_280C73DEA = 0;
  qword_280C73DF0 = 0;
  byte_280C73DF8 = 1;
}

uint64_t sub_20E4B76C8(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = *a1;
  if (*a5 != -1)
  {
    v13 = a2;
    v14 = a7;
    swift_once();
    a7 = v14;
    a2 = v13;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];

  return a7();
}

void (*SafariSettings.forceFraudWarning.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73B28 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73B30, v3, v4, v5, v6);
  return sub_20E4B7830;
}

void sub_20E4B7860()
{
  byte_280C73B30 = 0;
  qword_280C73B38 = 0xD000000000000018;
  unk_280C73B40 = 0x800000020E4CF410;
  qword_280C73B60 = &type metadata for BoolCombineOperator;
  unk_280C73B68 = &protocol witness table for BoolCombineOperator;
  byte_280C73B48 = 0;
  word_280C73B70 = 256;
  byte_280C73B72 = 0;
  qword_280C73B78 = 0;
  byte_280C73B80 = 1;
}

uint64_t SafariSettings.managedBookmarks.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C73B88 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41C5C0(&qword_280C73B90, v1, v2, v3, v4);
}

uint64_t sub_20E4B7974@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C73B88 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41C5C0(&qword_280C73B90, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E4B7A0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280C73B88 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);

  sub_20E41F070(v3, &qword_280C73B90, v4, v5, v6, v7);
}

uint64_t SafariSettings.managedBookmarks.setter(uint64_t a1)
{
  if (qword_280C73B88 != -1)
  {
    swift_once();
  }

  sub_20E41F070(a1, &qword_280C73B90, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
}

uint64_t (*SafariSettings.managedBookmarks.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73B88 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41C5C0(&qword_280C73B90, v3, v4, v5, v6);
  return sub_20E4B7BC4;
}

uint64_t sub_20E4B7BC4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (a2)
  {
    v8 = *a1;

    sub_20E41F070(v9, &qword_280C73B90, v4, v5, v6, v7);
  }

  else
  {
    sub_20E41F070(*a1, &qword_280C73B90, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  }
}

uint64_t SafariSettings.effectiveManagedBookmarks.getter()
{
  if (qword_280C73B88 != -1)
  {
    swift_once();
  }

  return sub_20E4206C0(&qword_280C73B90);
}

uint64_t sub_20E4B7CC0()
{
  qword_280C73B90 = MEMORY[0x277D84F90];
  qword_280C73B98 = 0xD000000000000017;
  qword_280C73BA0 = 0x800000020E4CF430;
  qword_280C73BC0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF448, &qword_20E4C9FD8);
  result = sub_20E430A50(qword_280C72730, &qword_27C8CF448, &qword_20E4C9FD8);
  qword_280C73BC8 = result;
  byte_280C73BA8 = 0;
  word_280C73BD0 = 256;
  byte_280C73BD2 = 0;
  qword_280C73BD8 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C73BE0 = 0;
  return result;
}

uint64_t static SafariSettings.managedBookmarks.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C73B88 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C73B90, v1, &qword_27C8CF968, &unk_20E4CDF20);
}

uint64_t SafariSettings.newTabStartPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C73BE8 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C73C08;
    v6 = unk_280C73C10;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C73C42;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  static WebNewPage.value(from:)(v8, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF768, &qword_20E4CBBA8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  return result;
}

void sub_20E4B7F54(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (qword_280C73BE8 != -1)
  {
    v11 = v4;
    v12 = a2;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    swift_once();
    v6 = v14;
    v5 = v13;
    a2 = v12;
    v4 = v11;
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  sub_20E499D3C(v4, v5, v6, &qword_280C73BF0, v7, v8, v9, v10);
}

uint64_t SafariSettings.newTabStartPage.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (qword_280C73BE8 != -1)
  {
    swift_once();
  }

  sub_20E499D3C(v2, v3, v4, &qword_280C73BF0, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));

  return sub_20E49B8F4(v2, v3, v4);
}

uint64_t (*SafariSettings.newTabStartPage.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  SafariSettings.newTabStartPage.getter(a1);
  return sub_20E4B80FC;
}

uint64_t sub_20E4B80FC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_20E49B8C8(*a1, v4, v5);
    if (qword_280C73BE8 != -1)
    {
      swift_once();
    }

    sub_20E499D3C(v3, v4, v5, &qword_280C73BF0, **(a1 + 24), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16), *(*(a1 + 24) + 24));
    sub_20E49B8F4(v3, v4, v5);
  }

  else
  {
    if (qword_280C73BE8 != -1)
    {
      swift_once();
    }

    sub_20E499D3C(v3, v4, v5, &qword_280C73BF0, **(a1 + 24), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16), *(*(a1 + 24) + 24));
  }

  return sub_20E49B8F4(v3, v4, v5);
}

uint64_t SafariSettings.effectiveNewTabStartPage.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C73BE8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return sub_20E49A288(&qword_280C73BF0, a1);
}

uint64_t sub_20E4B8284()
{
  qword_280C73C30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF9B8, &qword_20E4CD7E8);
  result = sub_20E430A50(&qword_280C72368, &qword_27C8CF9B8, &qword_20E4CD7E8);
  qword_280C73C38 = result;
  byte_280C73C18 = 0;
  qword_280C73BF0 = 0;
  *algn_280C73BF8 = 0;
  byte_280C73C00 = -1;
  qword_280C73C08 = 0xD000000000000016;
  unk_280C73C10 = 0x800000020E4CF450;
  word_280C73C40 = 256;
  byte_280C73C42 = 0;
  qword_280C73C48 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C73C50 = 0;
  return result;
}

uint64_t static SafariSettings.newTabStartPage.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C73BE8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C73BF0, v1, &qword_27C8CF970, &unk_20E4CDF30);
}

uint64_t SafariSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_20E4C6A10();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v59 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v71 = *v1;
  v72 = v13;
  v73 = v14;
  v74 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4CD300;
  v17 = qword_280C73D18;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_280C73D30;
  *(v16 + 32) = qword_280C73D28;
  *(v16 + 40) = v18;
  v67 = v12;
  v68 = v13;
  v69 = v14;
  v70 = v15;

  SafariSettings.cookiePolicy.getter(v65);
  v19 = v65[0];
  sub_20E420560(&byte_280C73D20, v63);
  v20 = v63[0];
  *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF978, &qword_20E4CD318);
  *(v16 + 48) = v19;
  *(v16 + 49) = v20;
  if (qword_280C73CB8 != -1)
  {
    swift_once();
  }

  v21 = unk_280C73CD0;
  *(v16 + 80) = qword_280C73CC8;
  *(v16 + 88) = v21;

  v22 = sub_20E41BCBC(&byte_280C73CC0, v12, v13, v14, v15);
  v23 = sub_20E41FA28(&byte_280C73CC0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v16 + 120) = v24;
  *(v16 + 96) = v22;
  *(v16 + 97) = v23;
  if (qword_280C73AC8 != -1)
  {
    swift_once();
  }

  v25 = unk_280C73AE0;
  *(v16 + 128) = qword_280C73AD8;
  *(v16 + 136) = v25;

  v26 = sub_20E41BCBC(&byte_280C73AD0, v12, v13, v14, v15);
  v27 = sub_20E41FA28(&byte_280C73AD0);
  *(v16 + 168) = v24;
  *(v16 + 144) = v26;
  *(v16 + 145) = v27;
  if (qword_280C73C58 != -1)
  {
    swift_once();
  }

  v28 = unk_280C73C70;
  *(v16 + 176) = qword_280C73C68;
  *(v16 + 184) = v28;

  v29 = sub_20E41BCBC(&byte_280C73C60, v12, v13, v14, v15);
  v30 = sub_20E41FA28(&byte_280C73C60);
  *(v16 + 216) = v24;
  *(v16 + 192) = v29;
  *(v16 + 193) = v30;
  if (qword_280C73E00 != -1)
  {
    swift_once();
  }

  v31 = unk_280C73E18;
  *(v16 + 224) = qword_280C73E10;
  *(v16 + 232) = v31;

  v32 = sub_20E41BCBC(&byte_280C73E08, v12, v13, v14, v15);
  v33 = sub_20E41FA28(&byte_280C73E08);
  *(v16 + 264) = v24;
  *(v16 + 240) = v32;
  *(v16 + 241) = v33;
  if (qword_280C73A68 != -1)
  {
    swift_once();
  }

  v34 = unk_280C73A80;
  *(v16 + 272) = qword_280C73A78;
  *(v16 + 280) = v34;

  v35 = sub_20E41BCBC(&byte_280C73A70, v12, v13, v14, v15);
  v36 = sub_20E41FA28(&byte_280C73A70);
  *(v16 + 312) = v24;
  *(v16 + 288) = v35;
  *(v16 + 289) = v36;
  if (qword_280C73E60 != -1)
  {
    swift_once();
  }

  v37 = unk_280C73E78;
  *(v16 + 320) = qword_280C73E70;
  *(v16 + 328) = v37;

  v38 = sub_20E41BCBC(&byte_280C73E68, v12, v13, v14, v15);
  v39 = sub_20E41FA28(&byte_280C73E68);
  *(v16 + 360) = v24;
  *(v16 + 336) = v38;
  *(v16 + 337) = v39;
  if (qword_280C73DA0 != -1)
  {
    swift_once();
  }

  v40 = unk_280C73DB8;
  *(v16 + 368) = qword_280C73DB0;
  *(v16 + 376) = v40;

  v41 = sub_20E41BCBC(&byte_280C73DA8, v12, v13, v14, v15);
  v42 = sub_20E41FA28(&byte_280C73DA8);
  *(v16 + 408) = v24;
  *(v16 + 384) = v41;
  *(v16 + 385) = v42;
  if (qword_280C73B28 != -1)
  {
    swift_once();
  }

  v43 = unk_280C73B40;
  *(v16 + 416) = qword_280C73B38;
  *(v16 + 424) = v43;

  v44 = sub_20E41BCBC(&byte_280C73B30, v12, v13, v14, v15);
  v45 = sub_20E41FA28(&byte_280C73B30);
  *(v16 + 456) = v24;
  *(v16 + 432) = v44;
  *(v16 + 433) = v45;
  if (qword_280C73B88 != -1)
  {
    swift_once();
  }

  v46 = qword_280C73BA0;
  *(v16 + 464) = qword_280C73B98;
  *(v16 + 472) = v46;

  v47 = sub_20E41C5C0(&qword_280C73B90, v12, v13, v14, v15);
  v48 = sub_20E4206C0(&qword_280C73B90);
  *(v16 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF980, &qword_20E4CD320);
  *(v16 + 480) = v47;
  *(v16 + 488) = v48;
  if (qword_280C73BE8 != -1)
  {
    swift_once();
  }

  v49 = unk_280C73C10;
  *(v16 + 512) = qword_280C73C08;
  *(v16 + 520) = v49;
  v67 = v12;
  v68 = v13;
  v69 = v14;
  v70 = v15;

  SafariSettings.newTabStartPage.getter(v65);
  v50 = v65[0];
  v51 = v65[1];
  v52 = v66;
  sub_20E49A288(&qword_280C73BF0, v63);
  v53 = v63[0];
  v54 = v63[1];
  v55 = v64;
  *(v16 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF988, &qword_20E4CD328);
  v56 = swift_allocObject();
  *(v16 + 528) = v56;
  *(v56 + 16) = v50;
  *(v56 + 24) = v51;
  *(v56 + 32) = v52;
  *(v56 + 40) = v53;
  *(v56 + 48) = v54;
  *(v56 + 56) = v55;
  v57 = sub_20E4C6A00();
  (*(*(v57 - 8) + 56))(v11, 1, 1, v57);
  (*(v60 + 104))(v6, *MEMORY[0x277D84C38], v61);
  return sub_20E4C6A20();
}

uint64_t _s15ManagedSettings10WebNewPageO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_20E4C6910();
        sub_20E49B8DC(v6, v5, 0);
        sub_20E49B8DC(v3, v2, 0);
        sub_20E49B908(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_20E49B8DC(v14, v2, 0);
      sub_20E49B8DC(v3, v2, 0);
      sub_20E49B908(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_20E4C6910();
        sub_20E49B8DC(v6, v5, 1u);
        sub_20E49B8DC(v3, v2, 1u);
        sub_20E49B908(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_20E49B908(v11, v12, v13);
        return v10 & 1;
      }

      sub_20E49B8DC(v8, v2, 1u);
      sub_20E49B8DC(v3, v2, 1u);
      sub_20E49B908(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_20E49B8DC(*a2, *(a2 + 8), v7);
    sub_20E49B8DC(v3, v2, v4);
    sub_20E49B908(v3, v2, v4);
    sub_20E49B908(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_20E49B908(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_20E49B908(v18, v19, v20);
  return 1;
}

uint64_t _s15ManagedSettings8BookmarkV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_20E4C6910() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v9 = v2 == v6 && v4 == v5;
    if (!v9 && (sub_20E4C6910() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v3)
  {
    if (v7)
    {

      v10 = sub_20E4B5D14(v3, v7);

      if (v10)
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_20E4B8E2C()
{
  result = qword_27C8CF990;
  if (!qword_27C8CF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF990);
  }

  return result;
}

unint64_t sub_20E4B8EC4()
{
  result = qword_280C73D78;
  if (!qword_280C73D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C73D78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ManagedSettings10WebNewPageO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20E4B8FAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20E4B8FF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafariSettings.Name(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafariSettings.Name(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

ManagedSettings::CameraSettings::Name_optional __swiftcall CameraSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t CameraSettings.Name.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_20E4B9278(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = "safari.newTabStartPage";
  }

  else
  {
    v5 = "camera.denyCamera";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001ALL;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (*a2)
  {
    v8 = "camera.denyCamera";
  }

  else
  {
    v8 = "safari.newTabStartPage";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20E4C6910();
  }

  return v10 & 1;
}

uint64_t sub_20E4B9324()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4B93A4()
{
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4B9410()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4B948C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_20E4B94EC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "camera.denyCamera";
  }

  else
  {
    v3 = "safari.newTabStartPage";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void (*CameraSettings.denyCamera.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73F80 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73F88, v3, v4, v5, v6);
  return sub_20E4B9640;
}

void sub_20E4B9670()
{
  byte_280C73F88 = 0;
  qword_280C73F90 = 0xD000000000000011;
  unk_280C73F98 = 0x800000020E4CF470;
  qword_280C73FB8 = &type metadata for BoolCombineOperator;
  unk_280C73FC0 = &protocol witness table for BoolCombineOperator;
  byte_280C73FA0 = 0;
  word_280C73FC8 = 256;
  byte_280C73FCA = 0;
  qword_280C73FD0 = 0;
  byte_280C73FD8 = 1;
}

void (*CameraSettings.denyScreenRecording.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73F20 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73F28, v3, v4, v5, v6);
  return sub_20E4B97F4;
}

void sub_20E4B9824()
{
  byte_280C73F28 = 0;
  qword_280C73F30 = 0xD00000000000001ALL;
  unk_280C73F38 = 0x800000020E4CF490;
  qword_280C73F58 = &type metadata for BoolCombineOperator;
  unk_280C73F60 = &protocol witness table for BoolCombineOperator;
  byte_280C73F40 = 0;
  word_280C73F68 = 256;
  byte_280C73F6A = 0;
  qword_280C73F70 = 0;
  byte_280C73F78 = 1;
}

uint64_t CameraSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_20E4C6A10();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v27 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v31 = *v1;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4C7710;
  v17 = qword_280C73F80;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_280C73F98;
  *(v16 + 32) = qword_280C73F90;
  *(v16 + 40) = v18;

  v19 = sub_20E41BCBC(&byte_280C73F88, v12, v13, v14, v15);
  v20 = sub_20E41FA28(&byte_280C73F88);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v16 + 72) = v21;
  *(v16 + 48) = v19;
  *(v16 + 49) = v20;
  if (qword_280C73F20 != -1)
  {
    swift_once();
  }

  v22 = unk_280C73F38;
  *(v16 + 80) = qword_280C73F30;
  *(v16 + 88) = v22;

  v23 = sub_20E41BCBC(&byte_280C73F28, v12, v13, v14, v15);
  v24 = sub_20E41FA28(&byte_280C73F28);
  *(v16 + 120) = v21;
  *(v16 + 96) = v23;
  *(v16 + 97) = v24;
  v25 = sub_20E4C6A00();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  (*(v28 + 104))(v6, *MEMORY[0x277D84C38], v29);
  return sub_20E4C6A20();
}

unint64_t sub_20E4B9B88()
{
  result = qword_27C8CF9C0;
  if (!qword_27C8CF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF9C0);
  }

  return result;
}

unint64_t sub_20E4B9BE0()
{
  result = qword_27C8CF9C8;
  if (!qword_27C8CF9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF9D0, &qword_20E4CD890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF9C8);
  }

  return result;
}

ManagedSettings::SiriSettings::Name_optional __swiftcall SiriSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SiriSettings.Name.rawValue.getter()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65642E69726973;
  }
}

uint64_t sub_20E4B9D44(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = *a1;
  v4 = 0x800000020E4CF4C0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (v3 == 1)
  {
    v6 = 0x800000020E4CF4C0;
  }

  else
  {
    v6 = 0x800000020E4CF4F0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E65642E69726973;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED00006972695379;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000021;
  }

  else
  {
    v4 = 0x800000020E4CF4F0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6E65642E69726973;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED00006972695379;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E4B9E2C()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4B9EE8()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4B9F90()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E4BA054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006972695379;
  v4 = 0x800000020E4CF4C0;
  v5 = 0xD000000000000021;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001DLL;
    v4 = 0x800000020E4CF4F0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E65642E69726973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void (*SiriSettings.denySiri.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74728 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74730, v3, v4, v5, v6);
  return sub_20E4BA1E0;
}

void sub_20E4BA210()
{
  byte_280C74730 = 0;
  strcpy(&qword_280C74738, "siri.denySiri");
  unk_280C74746 = -4864;
  qword_280C74760 = &type metadata for BoolCombineOperator;
  unk_280C74768 = &protocol witness table for BoolCombineOperator;
  byte_280C74748 = 0;
  word_280C74770 = 257;
  byte_280C74772 = 0;
  qword_280C74778 = 0;
  byte_280C74780 = 1;
}

void (*SiriSettings.denySiriUserGeneratedContent.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C746C8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C746D0, v3, v4, v5, v6);
  return sub_20E4BA39C;
}

void sub_20E4BA3CC()
{
  byte_280C746D0 = 0;
  qword_280C746D8 = 0xD000000000000021;
  unk_280C746E0 = 0x800000020E4CF4C0;
  qword_280C74700 = &type metadata for BoolCombineOperator;
  unk_280C74708 = &protocol witness table for BoolCombineOperator;
  byte_280C746E8 = 0;
  word_280C74710 = 256;
  byte_280C74712 = 0;
  qword_280C74718 = 0;
  byte_280C74720 = 1;
}

void (*SiriSettings.forceSiriProfanityFilter.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74668 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74670, v3, v4, v5, v6);
  return sub_20E4BA550;
}

void sub_20E4BA580()
{
  byte_280C74670 = 0;
  qword_280C74678 = 0xD00000000000001DLL;
  unk_280C74680 = 0x800000020E4CF4F0;
  qword_280C746A0 = &type metadata for BoolCombineOperator;
  unk_280C746A8 = &protocol witness table for BoolCombineOperator;
  byte_280C74688 = 0;
  word_280C746B0 = 256;
  byte_280C746B2 = 0;
  qword_280C746B8 = 0;
  byte_280C746C0 = 1;
}

uint64_t SiriSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_20E4C6A10();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v30 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v34 = *v1;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4C7D30;
  v17 = qword_280C74728;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_280C74740;
  *(v16 + 32) = qword_280C74738;
  *(v16 + 40) = v18;

  v19 = sub_20E41BCBC(&byte_280C74730, v12, v13, v14, v15);
  v20 = sub_20E41FA28(&byte_280C74730);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v16 + 72) = v21;
  *(v16 + 48) = v19;
  *(v16 + 49) = v20;
  if (qword_280C746C8 != -1)
  {
    swift_once();
  }

  v22 = unk_280C746E0;
  *(v16 + 80) = qword_280C746D8;
  *(v16 + 88) = v22;

  v23 = sub_20E41BCBC(&byte_280C746D0, v12, v13, v14, v15);
  v24 = sub_20E41FA28(&byte_280C746D0);
  *(v16 + 120) = v21;
  *(v16 + 96) = v23;
  *(v16 + 97) = v24;
  if (qword_280C74668 != -1)
  {
    swift_once();
  }

  v25 = unk_280C74680;
  *(v16 + 128) = qword_280C74678;
  *(v16 + 136) = v25;

  v26 = sub_20E41BCBC(&byte_280C74670, v12, v13, v14, v15);
  v27 = sub_20E41FA28(&byte_280C74670);
  *(v16 + 168) = v21;
  *(v16 + 144) = v26;
  *(v16 + 145) = v27;
  v28 = sub_20E4C6A00();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  (*(v31 + 104))(v6, *MEMORY[0x277D84C38], v32);
  return sub_20E4C6A20();
}

unint64_t sub_20E4BA958()
{
  result = qword_27C8CF9D8;
  if (!qword_27C8CF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF9D8);
  }

  return result;
}

unint64_t sub_20E4BA9B0()
{
  result = qword_27C8CF9E0;
  if (!qword_27C8CF9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF9E8, &qword_20E4CD9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF9E0);
  }

  return result;
}

uint64_t AirDropSettings.Name.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E4BAAB8()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E4BAB2C()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E4BAB80@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  *a2 = v5 != 0;
  return result;
}

uint64_t AirDropSettings.denyAirDrop.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C73598 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C735A0, v1, v2, v3, v4);
}

uint64_t sub_20E4BAC98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C73598 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C735A0, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E4BAD30(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C73598 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C735A0, v4, v5, v6, v7);
}

void AirDropSettings.denyAirDrop.setter(unsigned __int8 a1)
{
  if (qword_280C73598 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C735A0, v2, v3, v4, v5);
}

void (*AirDropSettings.denyAirDrop.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73598 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C735A0, v3, v4, v5, v6);
  return sub_20E4BAEE8;
}

uint64_t AirDropSettings.effectiveDenyAirDrop.getter()
{
  if (qword_280C73598 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C735A0);
}

void sub_20E4BAF60()
{
  byte_280C735A0 = 0;
  qword_280C735A8 = 0xD000000000000013;
  unk_280C735B0 = 0x800000020E4CF510;
  qword_280C735D0 = &type metadata for BoolCombineOperator;
  unk_280C735D8 = &protocol witness table for BoolCombineOperator;
  byte_280C735B8 = 0;
  word_280C735E0 = 256;
  byte_280C735E2 = 0;
  qword_280C735E8 = 0;
  byte_280C735F0 = 1;
}

uint64_t static AirDropSettings.denyAirDrop.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280C73598 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_20E431094(&byte_280C735A0, v2);
}

uint64_t AirDropSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_20E4C6A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v24[2] = *v1;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20E4C7720;
  v18 = qword_280C73598;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_280C735B0;
  *(v17 + 32) = qword_280C735A8;
  *(v17 + 40) = v19;

  v20 = sub_20E41BCBC(&byte_280C735A0, v13, v14, v15, v16);
  v21 = sub_20E41FA28(&byte_280C735A0);
  *(v17 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v17 + 48) = v20;
  *(v17 + 49) = v21;
  v22 = sub_20E4C6A00();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_20E4C6A20();
}

unint64_t sub_20E4BB29C()
{
  result = qword_27C8CF9F0;
  if (!qword_27C8CF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF9F0);
  }

  return result;
}

unint64_t sub_20E4BB2F4()
{
  result = qword_27C8CF9F8;
  if (!qword_27C8CF9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CFA00, &qword_20E4CDB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF9F8);
  }

  return result;
}

ManagedSettings::ManagedSettingsSettings::Name_optional __swiftcall ManagedSettingsSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ManagedSettingsSettings.Name.rawValue.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001ELL;
  }

  *v0;
  return result;
}

uint64_t sub_20E4BB448(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "managedSettings.allowedClients";
  v4 = 0xD000000000000020;
  if (v2 == 1)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD000000000000021;
  }

  if (v2 == 1)
  {
    v6 = "managedSettings.allowedClients";
  }

  else
  {
    v6 = "tokenEncodingKey";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001ELL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "airDrop.denyAirDrop";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000021;
    v3 = "tokenEncodingKey";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "airDrop.denyAirDrop";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E4BB520()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4BB5BC()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4BB644()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E4BB6E8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ELL;
  v3 = "managedSettings.allowedClients";
  v4 = 0xD000000000000020;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000021;
    v3 = "tokenEncodingKey";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "airDrop.denyAirDrop";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t (*ManagedSettingsSettings.allowedClients.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C72D08 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41BDF8(&qword_280C72D10, v3, v4, v5, v6);
  return sub_20E4BB87C;
}

uint64_t sub_20E4BB8D4()
{
  qword_280C72D10 = MEMORY[0x277D84FA0];
  qword_280C72D18 = 0xD00000000000001ELL;
  qword_280C72D20 = 0x800000020E4CF530;
  qword_280C72D40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEE0, &unk_20E4CCBC0);
  result = sub_20E430A50(qword_280C75880, &qword_27C8CEEE0, &unk_20E4CCBC0);
  qword_280C72D48 = result;
  byte_280C72D28 = 1;
  word_280C72D50 = 256;
  byte_280C72D52 = 0;
  qword_280C72D58 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C72D60 = 0;
  return result;
}

uint64_t static ManagedSettingsSettings.allowedClients.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C72D08 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C72D10, v1, &qword_27C8CEEB8, &unk_20E4C7EC0);
}

uint64_t ManagedSettingsSettings.tokenEncodingKey.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v8 = *(v0 + 16);
  if (qword_280C72CA0 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v3 = qword_280C72CB8;
    v4 = unk_280C72CC0;
    v9[0] = v1;
    v9[1] = v2;
    v10 = v8;
    v5 = byte_280C72CF2;

    v6 = sub_20E425F00(v3, v4, v9, v5);
  }

  else
  {
    v6 = 0;
  }

  static Data.value(from:)(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED38, &qword_20E4C7C28);
  if (swift_dynamicCast())
  {
    return v9[0];
  }

  else
  {
    return 0;
  }
}

void sub_20E4BBB74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (qword_280C72CA0 != -1)
  {
    v10 = v4;
    v11 = a2;
    v12 = v5;
    swift_once();
    v5 = v12;
    a2 = v11;
    v4 = v10;
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  sub_20E41F0C0(v4, v5, &xmmword_280C72CA8, v6, v7, v8, v9);
}

uint64_t ManagedSettingsSettings.tokenEncodingKey.setter(uint64_t a1, unint64_t a2)
{
  if (qword_280C72CA0 != -1)
  {
    v10 = a2;
    swift_once();
    a2 = v10;
  }

  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = a2;
  sub_20E41F0C0(a1, a2, &xmmword_280C72CA8, v4, v5, v6, v7);

  return sub_20E424F94(a1, v8);
}

uint64_t (*ManagedSettingsSettings.tokenEncodingKey.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  *a1 = ManagedSettingsSettings.tokenEncodingKey.getter();
  a1[1] = v3;
  return sub_20E4BBD0C;
}

uint64_t sub_20E4BBD0C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_20E41B8A8(*a1, v4);
    if (qword_280C72CA0 != -1)
    {
      swift_once();
    }

    sub_20E41F0C0(v3, v4, &xmmword_280C72CA8, **(a1 + 16), *(*(a1 + 16) + 8), *(*(a1 + 16) + 16), *(*(a1 + 16) + 24));
    sub_20E424F94(v3, v4);
  }

  else
  {
    if (qword_280C72CA0 != -1)
    {
      swift_once();
    }

    sub_20E41F0C0(v3, v4, &xmmword_280C72CA8, **(a1 + 16), *(*(a1 + 16) + 8), *(*(a1 + 16) + 16), *(*(a1 + 16) + 24));
  }

  return sub_20E424F94(v3, v4);
}

uint64_t ManagedSettingsSettings.effectiveTokenEncodingKey.getter()
{
  if (qword_280C72CA0 != -1)
  {
    swift_once();
  }

  sub_20E4207E4(&xmmword_280C72CA8, &v1);
  return v1;
}

uint64_t sub_20E4BBE70()
{
  xmmword_280C72CA8 = xmmword_20E4CDC30;
  qword_280C72CB8 = 0xD000000000000020;
  unk_280C72CC0 = 0x800000020E4CF550;
  qword_280C72CE0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF4A8, &unk_20E4CA040);
  result = sub_20E430A50(qword_280C72370, &qword_27C8CF4A8, &unk_20E4CA040);
  qword_280C72CE8 = result;
  byte_280C72CC8 = 0;
  word_280C72CF0 = 256;
  byte_280C72CF2 = 0;
  qword_280C72CF8 = 0;
  byte_280C72D00 = 1;
  return result;
}

uint64_t static ManagedSettingsSettings.tokenEncodingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C72CA0 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&xmmword_280C72CA8, v1, &qword_27C8CFA08, &qword_20E4CDC40);
}

uint64_t sub_20E4BBFD8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  if (*a1 != -1)
  {
    v11 = *v3;
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  return a3(a2);
}

uint64_t sub_20E4BC070@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  if (*a2 == -1)
  {
    result = a4(a3);
  }

  else
  {
    v8 = *a1;
    v10 = a1[1];
    v11 = a1[2];
    v12 = a1[3];
    swift_once();
    result = a4(a3);
  }

  *a5 = result;
  return result;
}

uint64_t sub_20E4BC10C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = *a1;
  if (*a5 != -1)
  {
    v13 = a2;
    v14 = a7;
    swift_once();
    a7 = v14;
    a2 = v13;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];

  return a7();
}

uint64_t sub_20E4BC1CC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  a4();
}

uint64_t (*ManagedSettingsSettings.tokenDecodingKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C72C40 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41BF44(&qword_280C72C48, v3, v4, v5, v6);
  return sub_20E4BC300;
}

uint64_t sub_20E4BC320(uint64_t *a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = *a1;
  if (a2)
  {

    a4(v12, a3, v7, v8, v9, v10);
  }

  else
  {
    a4(v11, a3, *v6, v6[1], v6[2], v6[3]);
  }
}

uint64_t sub_20E4BC404(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*a1 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  return a3(a2);
}

uint64_t sub_20E4BC464()
{
  qword_280C72C48 = MEMORY[0x277D84FA0];
  qword_280C72C50 = 0xD000000000000021;
  qword_280C72C58 = 0x800000020E4CF580;
  qword_280C72C78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF458, &qword_20E4C9FF0);
  result = sub_20E430A50(qword_280C72920, &qword_27C8CF458, &qword_20E4C9FF0);
  qword_280C72C80 = result;
  byte_280C72C60 = 1;
  word_280C72C88 = 256;
  byte_280C72C8A = 0;
  qword_280C72C90 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C72C98 = 0;
  return result;
}

uint64_t static ManagedSettingsSettings.tokenDecodingKeys.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C72C40 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C72C48, v1, &qword_27C8CF4E8, &qword_20E4CDF10);
}

uint64_t ManagedSettingsSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_20E4C6A10();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v32 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v36[6] = *v1;
  v36[7] = v12;
  v36[8] = v13;
  v36[9] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20E4C7D30;
  v16 = qword_280C72D08;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_280C72D20;
  *(v15 + 32) = qword_280C72D18;
  *(v15 + 40) = v17;

  v18 = sub_20E41BDF8(&qword_280C72D10, v11, v12, v13, v14);
  v19 = sub_20E41FB38(&qword_280C72D10);
  *(v15 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEC0, &unk_20E4C7EE0);
  *(v15 + 48) = v18;
  *(v15 + 56) = v19;
  if (qword_280C72CA0 != -1)
  {
    swift_once();
  }

  v20 = unk_280C72CC0;
  *(v15 + 80) = qword_280C72CB8;
  *(v15 + 88) = v20;
  v36[2] = v11;
  v36[3] = v12;
  v36[4] = v13;
  v36[5] = v14;

  v21 = ManagedSettingsSettings.tokenEncodingKey.getter();
  v23 = v22;
  sub_20E4207E4(&xmmword_280C72CA8, v36);
  v24 = v36[0];
  v25 = v36[1];
  *(v15 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA10, &unk_20E4CDC48);
  v26 = swift_allocObject();
  *(v15 + 96) = v26;
  v26[2] = v21;
  v26[3] = v23;
  v26[4] = v24;
  v26[5] = v25;
  if (qword_280C72C40 != -1)
  {
    swift_once();
  }

  v27 = qword_280C72C58;
  *(v15 + 128) = qword_280C72C50;
  *(v15 + 136) = v27;

  v28 = sub_20E41BF44(&qword_280C72C48, v11, v12, v13, v14);
  v29 = sub_20E41FE00(&qword_280C72C48);
  *(v15 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF4F8, &qword_20E4CA880);
  *(v15 + 144) = v28;
  *(v15 + 152) = v29;
  v30 = sub_20E4C6A00();
  (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  (*(v33 + 104))(v32, *MEMORY[0x277D84C38], v34);
  return sub_20E4C6A20();
}

unint64_t sub_20E4BC934()
{
  result = qword_27C8CFA18;
  if (!qword_27C8CFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CFA18);
  }

  return result;
}

void sub_20E4BC9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_20E4C6040();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void *sub_20E4BCBC8()
{
  v1 = OBJC_IVAR____TtC15ManagedSettings32OverrideSettingsExtensionContext____lazy_storage___overrideSettingsHandler;
  v2 = *&v0[OBJC_IVAR____TtC15ManagedSettings32OverrideSettingsExtensionContext____lazy_storage___overrideSettingsHandler];
  v3 = v2;
  if (v2 == 1)
  {
    if ([v0 _principalObject])
    {
      type metadata accessor for OverrideSettingsHandler();
      v3 = swift_dynamicCastClass();
      if (!v3)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v3 = 0;
    }

    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_20E433248(v4);
  }

  sub_20E433258(v2);
  return v3;
}

id sub_20E4BCEDC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15ManagedSettings32OverrideSettingsExtensionContext____lazy_storage___overrideSettingsHandler] = 1;
  if (a1)
  {
    v2 = sub_20E4C65B0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for OverrideSettingsExtensionContext();
  v3 = objc_msgSendSuper2(&v5, sel_initWithInputItems_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_20E4BCFC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v19 - v9;
  *&v3[OBJC_IVAR____TtC15ManagedSettings32OverrideSettingsExtensionContext____lazy_storage___overrideSettingsHandler] = 1;
  if (a1)
  {
    v11 = sub_20E4C65B0();
  }

  else
  {
    v11 = 0;
  }

  sub_20E433268(a2, v10);
  v12 = sub_20E4C61A0();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_20E4C6180();
    (*(v13 + 8))(v10, v12);
  }

  v15 = type metadata accessor for OverrideSettingsExtensionContext();
  v19.receiver = v3;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_initWithInputItems_contextUUID_, v11, v14);

  v17 = v16;
  sub_20E4332D8(a2);
  if (v17)
  {
  }

  return v17;
}

id sub_20E4BD290(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v21 - v11;
  *&v4[OBJC_IVAR____TtC15ManagedSettings32OverrideSettingsExtensionContext____lazy_storage___overrideSettingsHandler] = 1;
  if (a1)
  {
    v13 = sub_20E4C65B0();
  }

  else
  {
    v13 = 0;
  }

  sub_20E433268(a3, v12);
  v14 = sub_20E4C61A0();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    v16 = sub_20E4C6180();
    (*(v15 + 8))(v12, v14);
  }

  v17 = type metadata accessor for OverrideSettingsExtensionContext();
  v21.receiver = v4;
  v21.super_class = v17;
  v18 = objc_msgSendSuper2(&v21, sel_initWithInputItems_listenerEndpoint_contextUUID_, v13, a2, v16);

  v19 = v18;
  sub_20E4332D8(a3);
  if (v19)
  {
  }

  return v19;
}

id sub_20E4BD580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverrideSettingsExtensionContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20E4BD5E8()
{
  result = qword_27C8CFA38;
  if (!qword_27C8CFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CFA38);
  }

  return result;
}

unint64_t sub_20E4BD658()
{
  result = qword_27C8CFA58;
  if (!qword_27C8CFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CFA58);
  }

  return result;
}

uint64_t static SettingMetadataDirectory.metadata(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_280C72688 != -1)
  {
    v9 = a1;
    v10 = a2;
    swift_once();
    a1 = v9;
    a2 = v10;
  }

  v4 = off_280C72690;
  if (*(off_280C72690 + 2))
  {
    v5 = sub_20E429BA0(a1, a2);
    if (v6)
    {
      return sub_20E442818(v4[7] + 40 * v5, a3);
    }
  }

  sub_20E470D40();
  swift_allocError();
  *v8 = 1;
  return swift_willThrow();
}

void *sub_20E4BD780()
{
  result = sub_20E4BD7A0();
  off_280C72690 = result;
  return result;
}

unint64_t sub_20E4BD7A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA68, &qword_20E4CDF08);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20E4CDEC0;
  if (qword_280C735F8 != -1)
  {
    swift_once();
  }

  v1 = unk_280C73610;
  *(v0 + 32) = qword_280C73608;
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEC98, &unk_20E4C7740);
  *(v0 + 72) = v2;
  v3 = sub_20E4C192C();
  *(v0 + 80) = v3;
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  sub_20E424E74(&byte_280C73600, v4 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v5 = qword_280C73658;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = unk_280C73670;
  *(v0 + 88) = qword_280C73668;
  *(v0 + 96) = v6;
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  v7 = swift_allocObject();
  *(v0 + 104) = v7;
  sub_20E424E74(&byte_280C73660, v7 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v8 = qword_280C73598;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = unk_280C735B0;
  *(v0 + 144) = qword_280C735A8;
  *(v0 + 152) = v9;
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  v10 = swift_allocObject();
  *(v0 + 160) = v10;
  sub_20E424E74(&byte_280C735A0, v10 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v11 = qword_280C74970;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_280C749B0;
  *(v0 + 200) = qword_280C749A8;
  *(v0 + 208) = v12;
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF4E0, &qword_20E4CA868);
  *(v0 + 248) = sub_20E4C19A8();
  v13 = swift_allocObject();
  *(v0 + 216) = v13;
  sub_20E424E74(&qword_280C74978, v13 + 16, &qword_27C8CF4E0, &qword_20E4CA868);
  v14 = qword_280C74910;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_280C74928;
  *(v0 + 256) = qword_280C74920;
  *(v0 + 264) = v15;
  *(v0 + 296) = v2;
  *(v0 + 304) = v3;
  v16 = swift_allocObject();
  *(v0 + 272) = v16;
  sub_20E424E74(&byte_280C74918, v16 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v17 = qword_280C748B0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_280C748C8;
  *(v0 + 312) = qword_280C748C0;
  *(v0 + 320) = v18;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF4E8, &qword_20E4CDF10);
  *(v0 + 352) = v340;
  v339 = sub_20E4C2440(&qword_280C72A10, &qword_27C8CF4E8, &qword_20E4CDF10, sub_20E4C1A24);
  *(v0 + 360) = v339;
  v19 = swift_allocObject();
  *(v0 + 328) = v19;
  sub_20E424E74(&qword_280C748B8, v19 + 16, &qword_27C8CF4E8, &qword_20E4CDF10);
  v20 = qword_280C74DB8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_280C74DD0;
  *(v0 + 368) = qword_280C74DC8;
  *(v0 + 376) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEB8, &unk_20E4C7EC0);
  *(v0 + 408) = v22;
  v23 = sub_20E4C2440(&qword_280C72A08, &qword_27C8CEEB8, &unk_20E4C7EC0, sub_20E4C1AA0);
  *(v0 + 416) = v23;
  v24 = swift_allocObject();
  *(v0 + 384) = v24;
  sub_20E424E74(&qword_280C74DC0, v24 + 16, &qword_27C8CEEB8, &unk_20E4C7EC0);
  v25 = qword_280C74E78;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = unk_280C74E90;
  *(v0 + 424) = qword_280C74E88;
  *(v0 + 432) = v26;
  *(v0 + 464) = v2;
  *(v0 + 472) = v3;
  v27 = swift_allocObject();
  *(v0 + 440) = v27;
  sub_20E424E74(&byte_280C74E80, v27 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v28 = qword_280C74D58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = unk_280C74D70;
  *(v0 + 480) = qword_280C74D68;
  *(v0 + 488) = v29;
  *(v0 + 520) = v2;
  *(v0 + 528) = v3;
  v30 = swift_allocObject();
  *(v0 + 496) = v30;
  sub_20E424E74(&byte_280C74D60, v30 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v31 = qword_280C74E18;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = unk_280C74E30;
  *(v0 + 536) = qword_280C74E28;
  *(v0 + 544) = v32;
  *(v0 + 576) = v2;
  *(v0 + 584) = v3;
  v33 = swift_allocObject();
  *(v0 + 552) = v33;
  sub_20E424E74(&byte_280C74E20, v33 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v34 = qword_280C74C98;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = unk_280C74CB0;
  *(v0 + 592) = qword_280C74CA8;
  *(v0 + 600) = v35;
  *(v0 + 632) = v2;
  *(v0 + 640) = v3;
  v36 = swift_allocObject();
  *(v0 + 608) = v36;
  sub_20E424E74(&byte_280C74CA0, v36 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v37 = qword_280C74CF8;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_280C74D10;
  *(v0 + 648) = qword_280C74D08;
  *(v0 + 656) = v38;
  *(v0 + 688) = v22;
  *(v0 + 696) = v23;
  v39 = swift_allocObject();
  *(v0 + 664) = v39;
  sub_20E424E74(&qword_280C74D00, v39 + 16, &qword_27C8CEEB8, &unk_20E4C7EC0);
  v40 = qword_280C733B8;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = unk_280C733D0;
  *(v0 + 704) = qword_280C733C8;
  *(v0 + 712) = v41;
  *(v0 + 744) = v2;
  *(v0 + 752) = v3;
  v42 = swift_allocObject();
  *(v0 + 720) = v42;
  sub_20E424E74(&byte_280C733C0, v42 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v43 = qword_280C73358;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = unk_280C73370;
  *(v0 + 760) = qword_280C73368;
  *(v0 + 768) = v44;
  *(v0 + 800) = v2;
  *(v0 + 808) = v3;
  v45 = swift_allocObject();
  *(v0 + 776) = v45;
  sub_20E424E74(&byte_280C73360, v45 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v46 = qword_280C73478;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = unk_280C73490;
  *(v0 + 816) = qword_280C73488;
  *(v0 + 824) = v47;
  *(v0 + 856) = v2;
  *(v0 + 864) = v3;
  v48 = swift_allocObject();
  *(v0 + 832) = v48;
  sub_20E424E74(&byte_280C73480, v48 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v49 = qword_280C73418;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = unk_280C73430;
  *(v0 + 872) = qword_280C73428;
  *(v0 + 880) = v50;
  *(v0 + 912) = v2;
  *(v0 + 920) = v3;
  v51 = swift_allocObject();
  *(v0 + 888) = v51;
  sub_20E424E74(&byte_280C73420, v51 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v52 = qword_280C732F8;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = qword_280C73320;
  *(v0 + 928) = qword_280C73318;
  *(v0 + 936) = v53;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF0F0, &unk_20E4C8C90);
  *(v0 + 968) = v341;
  v54 = sub_20E4C1B1C();
  *(v0 + 976) = v54;
  v55 = swift_allocObject();
  *(v0 + 944) = v55;
  sub_20E424E74(&qword_280C73300, v55 + 16, &qword_27C8CF0F0, &unk_20E4C8C90);
  v56 = qword_280C73298;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = unk_280C732B0;
  *(v0 + 984) = qword_280C732A8;
  *(v0 + 992) = v57;
  *(v0 + 1024) = v2;
  *(v0 + 1032) = v3;
  v58 = swift_allocObject();
  *(v0 + 1000) = v58;
  sub_20E424E74(&byte_280C732A0, v58 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v59 = qword_280C74850;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = unk_280C74868;
  *(v0 + 1040) = qword_280C74860;
  *(v0 + 1048) = v60;
  *(v0 + 1080) = v2;
  *(v0 + 1088) = v3;
  v61 = swift_allocObject();
  *(v0 + 1056) = v61;
  sub_20E424E74(&byte_280C74858, v61 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v62 = qword_280C747E8;

  if (v62 != -1)
  {
    swift_once();
  }

  v63 = unk_280C74808;
  *(v0 + 1096) = qword_280C74800;
  *(v0 + 1104) = v63;
  *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF740, &unk_20E4CB920);
  *(v0 + 1144) = sub_20E4C2440(&qword_280C72A40, &qword_27C8CF740, &unk_20E4CB920, sub_20E4C1B98);
  v64 = swift_allocObject();
  *(v0 + 1112) = v64;
  sub_20E424E74(&qword_280C747F0, v64 + 16, &qword_27C8CF740, &unk_20E4CB920);
  v65 = qword_280C75618;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = unk_280C75630;
  *(v0 + 1152) = qword_280C75628;
  *(v0 + 1160) = v66;
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v3;
  v67 = swift_allocObject();
  *(v0 + 1168) = v67;
  sub_20E424E74(&byte_280C75620, v67 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v68 = qword_280C75438;

  if (v68 != -1)
  {
    swift_once();
  }

  v69 = unk_280C75450;
  *(v0 + 1208) = qword_280C75448;
  *(v0 + 1216) = v69;
  *(v0 + 1248) = v2;
  *(v0 + 1256) = v3;
  v70 = swift_allocObject();
  *(v0 + 1224) = v70;
  sub_20E424E74(&byte_280C75440, v70 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v71 = qword_280C75498;

  if (v71 != -1)
  {
    swift_once();
  }

  v72 = unk_280C754B0;
  *(v0 + 1264) = qword_280C754A8;
  *(v0 + 1272) = v72;
  *(v0 + 1304) = v2;
  *(v0 + 1312) = v3;
  v73 = swift_allocObject();
  *(v0 + 1280) = v73;
  sub_20E424E74(&byte_280C754A0, v73 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v74 = qword_280C755B8;

  if (v74 != -1)
  {
    swift_once();
  }

  v75 = unk_280C755D0;
  *(v0 + 1320) = qword_280C755C8;
  *(v0 + 1328) = v75;
  *(v0 + 1360) = v2;
  *(v0 + 1368) = v3;
  v76 = swift_allocObject();
  *(v0 + 1336) = v76;
  sub_20E424E74(&byte_280C755C0, v76 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v77 = qword_280C75558;

  if (v77 != -1)
  {
    swift_once();
  }

  v78 = unk_280C75570;
  *(v0 + 1376) = qword_280C75568;
  *(v0 + 1384) = v78;
  *(v0 + 1416) = v2;
  *(v0 + 1424) = v3;
  v79 = swift_allocObject();
  *(v0 + 1392) = v79;
  sub_20E424E74(&byte_280C75560, v79 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v80 = qword_280C754F8;

  if (v80 != -1)
  {
    swift_once();
  }

  v81 = unk_280C75510;
  *(v0 + 1432) = qword_280C75508;
  *(v0 + 1440) = v81;
  *(v0 + 1472) = v2;
  *(v0 + 1480) = v3;
  v82 = swift_allocObject();
  *(v0 + 1448) = v82;
  sub_20E424E74(&byte_280C75500, v82 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v83 = qword_280C75678;

  if (v83 != -1)
  {
    swift_once();
  }

  v84 = unk_280C75690;
  *(v0 + 1488) = qword_280C75688;
  *(v0 + 1496) = v84;
  *(v0 + 1528) = v2;
  *(v0 + 1536) = v3;
  v85 = swift_allocObject();
  *(v0 + 1504) = v85;
  sub_20E424E74(&byte_280C75680, v85 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v86 = qword_280C73F80;

  if (v86 != -1)
  {
    swift_once();
  }

  v87 = unk_280C73F98;
  *(v0 + 1544) = qword_280C73F90;
  *(v0 + 1552) = v87;
  *(v0 + 1584) = v2;
  *(v0 + 1592) = v3;
  v88 = swift_allocObject();
  *(v0 + 1560) = v88;
  sub_20E424E74(&byte_280C73F88, v88 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v89 = qword_280C73F20;

  if (v89 != -1)
  {
    swift_once();
  }

  v90 = unk_280C73F38;
  *(v0 + 1600) = qword_280C73F30;
  *(v0 + 1608) = v90;
  *(v0 + 1640) = v2;
  *(v0 + 1648) = v3;
  v91 = swift_allocObject();
  *(v0 + 1616) = v91;
  sub_20E424E74(&byte_280C73F28, v91 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v92 = qword_280C73538;

  if (v92 != -1)
  {
    swift_once();
  }

  v93 = unk_280C73550;
  *(v0 + 1656) = qword_280C73548;
  *(v0 + 1664) = v93;
  *(v0 + 1696) = v2;
  *(v0 + 1704) = v3;
  v94 = swift_allocObject();
  *(v0 + 1672) = v94;
  sub_20E424E74(&byte_280C73540, v94 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v95 = qword_280C731D8;

  if (v95 != -1)
  {
    swift_once();
  }

  v96 = unk_280C731F0;
  *(v0 + 1712) = qword_280C731E8;
  *(v0 + 1720) = v96;
  *(v0 + 1752) = v2;
  *(v0 + 1760) = v3;
  v97 = swift_allocObject();
  *(v0 + 1728) = v97;
  sub_20E424E74(&byte_280C731E0, v97 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v98 = qword_280C73238;

  if (v98 != -1)
  {
    swift_once();
  }

  v99 = unk_280C73250;
  *(v0 + 1768) = qword_280C73248;
  *(v0 + 1776) = v99;
  *(v0 + 1808) = v2;
  *(v0 + 1816) = v3;
  v100 = swift_allocObject();
  *(v0 + 1784) = v100;
  sub_20E424E74(&byte_280C73240, v100 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v101 = qword_280C73178;

  if (v101 != -1)
  {
    swift_once();
  }

  v102 = unk_280C73190;
  *(v0 + 1824) = qword_280C73188;
  *(v0 + 1832) = v102;
  *(v0 + 1864) = v2;
  *(v0 + 1872) = v3;
  v103 = swift_allocObject();
  *(v0 + 1840) = v103;
  sub_20E424E74(&byte_280C73180, v103 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v104 = qword_280C74C38;

  if (v104 != -1)
  {
    swift_once();
  }

  v105 = unk_280C74C50;
  *(v0 + 1880) = qword_280C74C48;
  *(v0 + 1888) = v105;
  *(v0 + 1920) = v2;
  *(v0 + 1928) = v3;
  v106 = swift_allocObject();
  *(v0 + 1896) = v106;
  sub_20E424E74(&byte_280C74C40, v106 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v107 = qword_280C75BD8;

  if (v107 != -1)
  {
    swift_once();
  }

  v108 = qword_280C75BF0;
  *(v0 + 1936) = qword_280C75BE8;
  *(v0 + 1944) = v108;
  *(v0 + 1976) = v22;
  *(v0 + 1984) = v23;
  v109 = swift_allocObject();
  *(v0 + 1952) = v109;
  sub_20E424E74(&qword_280C75BE0, v109 + 16, &qword_27C8CEEB8, &unk_20E4C7EC0);
  v110 = qword_280C75B18;

  if (v110 != -1)
  {
    swift_once();
  }

  v111 = unk_280C75B30;
  *(v0 + 1992) = qword_280C75B28;
  *(v0 + 2000) = v111;
  *(v0 + 2032) = v2;
  *(v0 + 2040) = v3;
  v112 = swift_allocObject();
  *(v0 + 2008) = v112;
  sub_20E424E74(&byte_280C75B20, v112 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v113 = qword_280C75B78;

  if (v113 != -1)
  {
    swift_once();
  }

  v114 = qword_280C75B90;
  *(v0 + 2048) = qword_280C75B88;
  *(v0 + 2056) = v114;
  *(v0 + 2088) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA70, &qword_20E4CDF18);
  *(v0 + 2096) = sub_20E4C2440(&qword_280C729E8, &qword_27C8CFA70, &qword_20E4CDF18, sub_20E4C1C14);
  v115 = swift_allocObject();
  *(v0 + 2064) = v115;
  sub_20E424E74(&qword_280C75B80, v115 + 16, &qword_27C8CFA70, &qword_20E4CDF18);
  v116 = qword_280C72ED8;

  if (v116 != -1)
  {
    swift_once();
  }

  v117 = unk_280C72EF0;
  *(v0 + 2104) = qword_280C72EE8;
  *(v0 + 2112) = v117;
  *(v0 + 2144) = v2;
  *(v0 + 2152) = v3;
  v118 = swift_allocObject();
  *(v0 + 2120) = v118;
  sub_20E424E74(&byte_280C72EE0, v118 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v119 = qword_280C73118;

  if (v119 != -1)
  {
    swift_once();
  }

  v120 = unk_280C73130;
  *(v0 + 2160) = qword_280C73128;
  *(v0 + 2168) = v120;
  *(v0 + 2200) = v2;
  *(v0 + 2208) = v3;
  v121 = swift_allocObject();
  *(v0 + 2176) = v121;
  sub_20E424E74(&byte_280C73120, v121 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v122 = qword_280C730B8;

  if (v122 != -1)
  {
    swift_once();
  }

  v123 = unk_280C730D0;
  *(v0 + 2216) = qword_280C730C8;
  *(v0 + 2224) = v123;
  *(v0 + 2256) = v2;
  *(v0 + 2264) = v3;
  v124 = swift_allocObject();
  *(v0 + 2232) = v124;
  sub_20E424E74(&byte_280C730C0, v124 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v125 = qword_280C73EC0;

  if (v125 != -1)
  {
    swift_once();
  }

  v126 = unk_280C73ED8;
  *(v0 + 2272) = qword_280C73ED0;
  *(v0 + 2280) = v126;
  *(v0 + 2312) = v2;
  *(v0 + 2320) = v3;
  v127 = swift_allocObject();
  *(v0 + 2288) = v127;
  sub_20E424E74(&byte_280C73EC8, v127 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v128 = qword_280C750D0;

  if (v128 != -1)
  {
    swift_once();
  }

  v129 = unk_280C750E8;
  *(v0 + 2328) = qword_280C750E0;
  *(v0 + 2336) = v129;
  *(v0 + 2368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF518, &unk_20E4CAA28);
  *(v0 + 2376) = sub_20E4C1C90();
  v130 = swift_allocObject();
  *(v0 + 2344) = v130;
  sub_20E424E74(&byte_280C750D8, v130 + 16, &qword_27C8CF518, &unk_20E4CAA28);
  v131 = qword_280C75310;

  if (v131 != -1)
  {
    swift_once();
  }

  v132 = unk_280C75328;
  *(v0 + 2384) = qword_280C75320;
  *(v0 + 2392) = v132;
  *(v0 + 2424) = v2;
  *(v0 + 2432) = v3;
  v133 = swift_allocObject();
  *(v0 + 2400) = v133;
  sub_20E424E74(&byte_280C75318, v133 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v134 = qword_280C753D8;

  if (v134 != -1)
  {
    swift_once();
  }

  v135 = unk_280C753F0;
  *(v0 + 2440) = qword_280C753E8;
  *(v0 + 2448) = v135;
  *(v0 + 2480) = v2;
  *(v0 + 2488) = v3;
  v136 = swift_allocObject();
  *(v0 + 2456) = v136;
  sub_20E424E74(&byte_280C753E0, v136 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v137 = qword_280C75190;

  if (v137 != -1)
  {
    swift_once();
  }

  v138 = unk_280C751A8;
  *(v0 + 2496) = qword_280C751A0;
  *(v0 + 2504) = v138;
  *(v0 + 2536) = v2;
  *(v0 + 2544) = v3;
  v139 = swift_allocObject();
  *(v0 + 2512) = v139;
  sub_20E424E74(&byte_280C75198, v139 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v140 = qword_280C75130;

  if (v140 != -1)
  {
    swift_once();
  }

  v141 = unk_280C75148;
  *(v0 + 2552) = qword_280C75140;
  *(v0 + 2560) = v141;
  *(v0 + 2592) = v2;
  *(v0 + 2600) = v3;
  v142 = swift_allocObject();
  *(v0 + 2568) = v142;
  sub_20E424E74(&byte_280C75138, v142 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v143 = qword_280C751F0;

  if (v143 != -1)
  {
    swift_once();
  }

  v144 = unk_280C75208;
  *(v0 + 2608) = qword_280C75200;
  *(v0 + 2616) = v144;
  *(v0 + 2648) = v2;
  *(v0 + 2656) = v3;
  v145 = swift_allocObject();
  *(v0 + 2624) = v145;
  sub_20E424E74(&byte_280C751F8, v145 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v146 = qword_280C752B0;

  if (v146 != -1)
  {
    swift_once();
  }

  v147 = unk_280C752C8;
  *(v0 + 2664) = qword_280C752C0;
  *(v0 + 2672) = v147;
  *(v0 + 2704) = v2;
  *(v0 + 2712) = v3;
  v148 = swift_allocObject();
  *(v0 + 2680) = v148;
  sub_20E424E74(&byte_280C752B8, v148 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v149 = qword_280C75378;

  if (v149 != -1)
  {
    swift_once();
  }

  v150 = unk_280C75390;
  *(v0 + 2720) = qword_280C75388;
  *(v0 + 2728) = v150;
  *(v0 + 2760) = v2;
  *(v0 + 2768) = v3;
  v151 = swift_allocObject();
  *(v0 + 2736) = v151;
  sub_20E424E74(&byte_280C75380, v151 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v152 = qword_280C75250;

  if (v152 != -1)
  {
    swift_once();
  }

  v153 = unk_280C75268;
  *(v0 + 2776) = qword_280C75260;
  *(v0 + 2784) = v153;
  *(v0 + 2816) = v2;
  *(v0 + 2824) = v3;
  v154 = swift_allocObject();
  *(v0 + 2792) = v154;
  sub_20E424E74(&byte_280C75258, v154 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v155 = qword_280C74B78;

  if (v155 != -1)
  {
    swift_once();
  }

  v156 = unk_280C74B90;
  *(v0 + 2832) = qword_280C74B88;
  *(v0 + 2840) = v156;
  *(v0 + 2872) = v2;
  *(v0 + 2880) = v3;
  v157 = swift_allocObject();
  *(v0 + 2848) = v157;
  sub_20E424E74(&byte_280C74B80, v157 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v158 = qword_280C74A58;

  if (v158 != -1)
  {
    swift_once();
  }

  v159 = unk_280C74A70;
  *(v0 + 2888) = qword_280C74A68;
  *(v0 + 2896) = v159;
  *(v0 + 2928) = v2;
  *(v0 + 2936) = v3;
  v160 = swift_allocObject();
  *(v0 + 2904) = v160;
  sub_20E424E74(&byte_280C74A60, v160 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v161 = qword_280C74B18;

  if (v161 != -1)
  {
    swift_once();
  }

  v162 = unk_280C74B30;
  *(v0 + 2944) = qword_280C74B28;
  *(v0 + 2952) = v162;
  *(v0 + 2984) = v2;
  *(v0 + 2992) = v3;
  v163 = swift_allocObject();
  *(v0 + 2960) = v163;
  sub_20E424E74(&byte_280C74B20, v163 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v164 = qword_280C74AB8;

  if (v164 != -1)
  {
    swift_once();
  }

  v165 = unk_280C74AD0;
  *(v0 + 3000) = qword_280C74AC8;
  *(v0 + 3008) = v165;
  *(v0 + 3040) = v2;
  *(v0 + 3048) = v3;
  v166 = swift_allocObject();
  *(v0 + 3016) = v166;
  sub_20E424E74(&byte_280C74AC0, v166 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v167 = qword_280C72FF8;

  if (v167 != -1)
  {
    swift_once();
  }

  v168 = unk_280C73010;
  *(v0 + 3056) = qword_280C73008;
  *(v0 + 3064) = v168;
  *(v0 + 3096) = v2;
  *(v0 + 3104) = v3;
  v169 = swift_allocObject();
  *(v0 + 3072) = v169;
  sub_20E424E74(&byte_280C73000, v169 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v170 = qword_280C73058;

  if (v170 != -1)
  {
    swift_once();
  }

  v171 = unk_280C73070;
  *(v0 + 3112) = qword_280C73068;
  *(v0 + 3120) = v171;
  *(v0 + 3152) = v2;
  *(v0 + 3160) = v3;
  v172 = swift_allocObject();
  *(v0 + 3128) = v172;
  sub_20E424E74(&byte_280C73060, v172 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v173 = qword_280C72D08;

  if (v173 != -1)
  {
    swift_once();
  }

  v174 = qword_280C72D20;
  *(v0 + 3168) = qword_280C72D18;
  *(v0 + 3176) = v174;
  *(v0 + 3208) = v22;
  *(v0 + 3216) = v23;
  v175 = swift_allocObject();
  *(v0 + 3184) = v175;
  sub_20E424E74(&qword_280C72D10, v175 + 16, &qword_27C8CEEB8, &unk_20E4C7EC0);
  v176 = qword_280C72C40;

  if (v176 != -1)
  {
    swift_once();
  }

  v177 = qword_280C72C58;
  *(v0 + 3224) = qword_280C72C50;
  *(v0 + 3232) = v177;
  v178 = v339;
  *(v0 + 3264) = v340;
  *(v0 + 3272) = v178;
  v179 = swift_allocObject();
  *(v0 + 3240) = v179;
  sub_20E424E74(&qword_280C72C48, v179 + 16, &qword_27C8CF4E8, &qword_20E4CDF10);
  v180 = qword_280C72CA0;

  if (v180 != -1)
  {
    swift_once();
  }

  v181 = unk_280C72CC0;
  *(v0 + 3280) = qword_280C72CB8;
  *(v0 + 3288) = v181;
  *(v0 + 3320) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA08, &qword_20E4CDC40);
  *(v0 + 3328) = sub_20E4C1D0C();
  v182 = swift_allocObject();
  *(v0 + 3296) = v182;
  sub_20E424E74(&xmmword_280C72CA8, v182 + 16, &qword_27C8CFA08, &qword_20E4CDC40);
  v183 = qword_280C74340;

  if (v183 != -1)
  {
    swift_once();
  }

  v184 = unk_280C74358;
  *(v0 + 3336) = qword_280C74350;
  *(v0 + 3344) = v184;
  *(v0 + 3376) = v2;
  *(v0 + 3384) = v3;
  v185 = swift_allocObject();
  *(v0 + 3352) = v185;
  sub_20E424E74(&byte_280C74348, v185 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v186 = qword_280C740A0;

  v187 = v341;
  if (v186 != -1)
  {
    swift_once();
  }

  v188 = unk_280C740B8;
  *(v0 + 3392) = qword_280C740B0;
  *(v0 + 3400) = v188;
  *(v0 + 3432) = v2;
  *(v0 + 3440) = v3;
  v189 = swift_allocObject();
  *(v0 + 3408) = v189;
  sub_20E424E74(&byte_280C740A8, v189 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v190 = qword_280C74160;

  if (v190 != -1)
  {
    swift_once();
  }

  v191 = unk_280C74178;
  *(v0 + 3448) = qword_280C74170;
  *(v0 + 3456) = v191;
  *(v0 + 3488) = v2;
  *(v0 + 3496) = v3;
  v192 = swift_allocObject();
  *(v0 + 3464) = v192;
  sub_20E424E74(&byte_280C74168, v192 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v193 = qword_280C74400;

  if (v193 != -1)
  {
    swift_once();
  }

  v194 = unk_280C74418;
  *(v0 + 3504) = qword_280C74410;
  *(v0 + 3512) = v194;
  *(v0 + 3544) = v2;
  *(v0 + 3552) = v3;
  v195 = swift_allocObject();
  *(v0 + 3520) = v195;
  sub_20E424E74(&byte_280C74408, v195 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v196 = qword_280C74460;

  if (v196 != -1)
  {
    swift_once();
  }

  v197 = unk_280C74478;
  *(v0 + 3560) = qword_280C74470;
  *(v0 + 3568) = v197;
  *(v0 + 3600) = v2;
  *(v0 + 3608) = v3;
  v198 = swift_allocObject();
  *(v0 + 3576) = v198;
  sub_20E424E74(&byte_280C74468, v198 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v199 = qword_280C73FE0;

  if (v199 != -1)
  {
    swift_once();
  }

  v200 = unk_280C73FF8;
  *(v0 + 3616) = qword_280C73FF0;
  *(v0 + 3624) = v200;
  *(v0 + 3656) = v2;
  *(v0 + 3664) = v3;
  v201 = swift_allocObject();
  *(v0 + 3632) = v201;
  sub_20E424E74(&byte_280C73FE8, v201 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v202 = qword_280C74220;

  if (v202 != -1)
  {
    swift_once();
  }

  v203 = unk_280C74238;
  *(v0 + 3672) = qword_280C74230;
  *(v0 + 3680) = v203;
  *(v0 + 3712) = v2;
  *(v0 + 3720) = v3;
  v204 = swift_allocObject();
  *(v0 + 3688) = v204;
  sub_20E424E74(&byte_280C74228, v204 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v205 = qword_280C74280;

  if (v205 != -1)
  {
    swift_once();
  }

  v206 = unk_280C74298;
  *(v0 + 3728) = qword_280C74290;
  *(v0 + 3736) = v206;
  *(v0 + 3768) = v2;
  *(v0 + 3776) = v3;
  v207 = swift_allocObject();
  *(v0 + 3744) = v207;
  sub_20E424E74(&byte_280C74288, v207 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v208 = qword_280C743A0;

  if (v208 != -1)
  {
    swift_once();
  }

  v209 = unk_280C743B8;
  *(v0 + 3784) = qword_280C743B0;
  *(v0 + 3792) = v209;
  *(v0 + 3824) = v2;
  *(v0 + 3832) = v3;
  v210 = swift_allocObject();
  *(v0 + 3800) = v210;
  sub_20E424E74(&byte_280C743A8, v210 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v211 = qword_280C744C0;

  if (v211 != -1)
  {
    swift_once();
  }

  v212 = unk_280C744D8;
  *(v0 + 3840) = qword_280C744D0;
  *(v0 + 3848) = v212;
  *(v0 + 3880) = v2;
  *(v0 + 3888) = v3;
  v213 = swift_allocObject();
  *(v0 + 3856) = v213;
  sub_20E424E74(&byte_280C744C8, v213 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v214 = qword_280C74040;

  if (v214 != -1)
  {
    swift_once();
  }

  v215 = unk_280C74058;
  *(v0 + 3896) = qword_280C74050;
  *(v0 + 3904) = v215;
  *(v0 + 3936) = v2;
  *(v0 + 3944) = v3;
  v216 = swift_allocObject();
  *(v0 + 3912) = v216;
  sub_20E424E74(&byte_280C74048, v216 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v217 = qword_280C742E0;

  if (v217 != -1)
  {
    swift_once();
  }

  v218 = unk_280C742F8;
  *(v0 + 3952) = qword_280C742F0;
  *(v0 + 3960) = v218;
  *(v0 + 3992) = v2;
  *(v0 + 4000) = v3;
  v219 = swift_allocObject();
  *(v0 + 3968) = v219;
  sub_20E424E74(&byte_280C742E8, v219 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v220 = qword_280C741C0;

  if (v220 != -1)
  {
    swift_once();
  }

  v221 = qword_280C741E8;
  *(v0 + 4008) = qword_280C741E0;
  *(v0 + 4016) = v221;
  *(v0 + 4048) = v187;
  *(v0 + 4056) = v54;
  v222 = swift_allocObject();
  *(v0 + 4024) = v222;
  sub_20E424E74(&qword_280C741C8, v222 + 16, &qword_27C8CF0F0, &unk_20E4C8C90);
  v223 = qword_280C74100;

  if (v223 != -1)
  {
    swift_once();
  }

  v224 = qword_280C74128;
  *(v0 + 4064) = qword_280C74120;
  *(v0 + 4072) = v224;
  *(v0 + 4104) = v187;
  *(v0 + 4112) = v54;
  v225 = swift_allocObject();
  *(v0 + 4080) = v225;
  sub_20E424E74(&qword_280C74108, v225 + 16, &qword_27C8CF0F0, &unk_20E4C8C90);
  v226 = qword_280C72F98;

  if (v226 != -1)
  {
    swift_once();
  }

  v227 = unk_280C72FB0;
  *(v0 + 4120) = qword_280C72FA8;
  *(v0 + 4128) = v227;
  *(v0 + 4160) = v2;
  *(v0 + 4168) = v3;
  v228 = swift_allocObject();
  *(v0 + 4136) = v228;
  sub_20E424E74(&byte_280C72FA0, v228 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v229 = qword_280C74788;

  if (v229 != -1)
  {
    swift_once();
  }

  v230 = unk_280C747A0;
  *(v0 + 4176) = qword_280C74798;
  *(v0 + 4184) = v230;
  *(v0 + 4216) = v2;
  *(v0 + 4224) = v3;
  v231 = swift_allocObject();
  *(v0 + 4192) = v231;
  sub_20E424E74(&byte_280C74790, v231 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v232 = qword_280C749F8;

  if (v232 != -1)
  {
    swift_once();
  }

  v233 = unk_280C74A10;
  *(v0 + 4232) = qword_280C74A08;
  *(v0 + 4240) = v233;
  *(v0 + 4272) = v2;
  *(v0 + 4280) = v3;
  v234 = swift_allocObject();
  *(v0 + 4248) = v234;
  sub_20E424E74(&byte_280C74A00, v234 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v235 = qword_280C72F38;

  if (v235 != -1)
  {
    swift_once();
  }

  v236 = unk_280C72F50;
  *(v0 + 4288) = qword_280C72F48;
  *(v0 + 4296) = v236;
  *(v0 + 4328) = v2;
  *(v0 + 4336) = v3;
  v237 = swift_allocObject();
  *(v0 + 4304) = v237;
  sub_20E424E74(&byte_280C72F40, v237 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v238 = qword_280C734D8;

  if (v238 != -1)
  {
    swift_once();
  }

  v239 = unk_280C734F0;
  *(v0 + 4344) = qword_280C734E8;
  *(v0 + 4352) = v239;
  *(v0 + 4384) = v2;
  *(v0 + 4392) = v3;
  v240 = swift_allocObject();
  *(v0 + 4360) = v240;
  sub_20E424E74(&byte_280C734E0, v240 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v241 = qword_280C73D18;

  if (v241 != -1)
  {
    swift_once();
  }

  v242 = unk_280C73D30;
  *(v0 + 4400) = qword_280C73D28;
  *(v0 + 4408) = v242;
  *(v0 + 4440) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF960, &qword_20E4CD310);
  *(v0 + 4448) = sub_20E4C1D88();
  v243 = swift_allocObject();
  *(v0 + 4416) = v243;
  sub_20E424E74(&byte_280C73D20, v243 + 16, &qword_27C8CF960, &qword_20E4CD310);
  v244 = qword_280C73CB8;

  if (v244 != -1)
  {
    swift_once();
  }

  v245 = unk_280C73CD0;
  *(v0 + 4456) = qword_280C73CC8;
  *(v0 + 4464) = v245;
  *(v0 + 4496) = v2;
  *(v0 + 4504) = v3;
  v246 = swift_allocObject();
  *(v0 + 4472) = v246;
  sub_20E424E74(&byte_280C73CC0, v246 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v247 = qword_280C73AC8;

  if (v247 != -1)
  {
    swift_once();
  }

  v248 = unk_280C73AE0;
  *(v0 + 4512) = qword_280C73AD8;
  *(v0 + 4520) = v248;
  *(v0 + 4552) = v2;
  *(v0 + 4560) = v3;
  v249 = swift_allocObject();
  *(v0 + 4528) = v249;
  sub_20E424E74(&byte_280C73AD0, v249 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v250 = qword_280C73C58;

  if (v250 != -1)
  {
    swift_once();
  }

  v251 = unk_280C73C70;
  *(v0 + 4568) = qword_280C73C68;
  *(v0 + 4576) = v251;
  *(v0 + 4608) = v2;
  *(v0 + 4616) = v3;
  v252 = swift_allocObject();
  *(v0 + 4584) = v252;
  sub_20E424E74(&byte_280C73C60, v252 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v253 = qword_280C73E00;

  if (v253 != -1)
  {
    swift_once();
  }

  v254 = unk_280C73E18;
  *(v0 + 4624) = qword_280C73E10;
  *(v0 + 4632) = v254;
  *(v0 + 4664) = v2;
  *(v0 + 4672) = v3;
  v255 = swift_allocObject();
  *(v0 + 4640) = v255;
  sub_20E424E74(&byte_280C73E08, v255 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v256 = qword_280C73A68;

  if (v256 != -1)
  {
    swift_once();
  }

  v257 = unk_280C73A80;
  *(v0 + 4680) = qword_280C73A78;
  *(v0 + 4688) = v257;
  *(v0 + 4720) = v2;
  *(v0 + 4728) = v3;
  v258 = swift_allocObject();
  *(v0 + 4696) = v258;
  sub_20E424E74(&byte_280C73A70, v258 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v259 = qword_280C73E60;

  if (v259 != -1)
  {
    swift_once();
  }

  v260 = unk_280C73E78;
  *(v0 + 4736) = qword_280C73E70;
  *(v0 + 4744) = v260;
  *(v0 + 4776) = v2;
  *(v0 + 4784) = v3;
  v261 = swift_allocObject();
  *(v0 + 4752) = v261;
  sub_20E424E74(&byte_280C73E68, v261 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v262 = qword_280C73DA0;

  if (v262 != -1)
  {
    swift_once();
  }

  v263 = unk_280C73DB8;
  *(v0 + 4792) = qword_280C73DB0;
  *(v0 + 4800) = v263;
  *(v0 + 4832) = v2;
  *(v0 + 4840) = v3;
  v264 = swift_allocObject();
  *(v0 + 4808) = v264;
  sub_20E424E74(&byte_280C73DA8, v264 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v265 = qword_280C73B28;

  if (v265 != -1)
  {
    swift_once();
  }

  v266 = unk_280C73B40;
  *(v0 + 4848) = qword_280C73B38;
  *(v0 + 4856) = v266;
  *(v0 + 4888) = v2;
  *(v0 + 4896) = v3;
  v267 = swift_allocObject();
  *(v0 + 4864) = v267;
  sub_20E424E74(&byte_280C73B30, v267 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v268 = qword_280C73B88;

  if (v268 != -1)
  {
    swift_once();
  }

  v269 = qword_280C73BA0;
  *(v0 + 4904) = qword_280C73B98;
  *(v0 + 4912) = v269;
  *(v0 + 4944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF968, &unk_20E4CDF20);
  *(v0 + 4952) = sub_20E4C2440(&qword_280C72A20, &qword_27C8CF968, &unk_20E4CDF20, sub_20E4C1E04);
  v270 = swift_allocObject();
  *(v0 + 4920) = v270;
  sub_20E424E74(&qword_280C73B90, v270 + 16, &qword_27C8CF968, &unk_20E4CDF20);
  v271 = qword_280C73BE8;

  if (v271 != -1)
  {
    swift_once();
  }

  v272 = unk_280C73C10;
  *(v0 + 4960) = qword_280C73C08;
  *(v0 + 4968) = v272;
  *(v0 + 5000) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF970, &unk_20E4CDF30);
  *(v0 + 5008) = sub_20E4C2440(&qword_280C72A50, &qword_27C8CF970, &unk_20E4CDF30, sub_20E4C1E80);
  v273 = swift_allocObject();
  *(v0 + 4976) = v273;
  sub_20E424E74(&qword_280C73BF0, v273 + 16, &qword_27C8CF970, &unk_20E4CDF30);
  v274 = qword_280C74FA8;

  if (v274 != -1)
  {
    swift_once();
  }

  v275 = qword_280C74FC0;
  *(v0 + 5016) = qword_280C74FB8;
  *(v0 + 5024) = v275;
  *(v0 + 5056) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF550, &unk_20E4CAD50);
  *(v0 + 5064) = sub_20E4C1EFC();
  v276 = swift_allocObject();
  *(v0 + 5032) = v276;
  sub_20E424E74(&qword_280C74FB0, v276 + 16, &qword_27C8CF550, &unk_20E4CAD50);
  v277 = qword_280C75068;

  if (v277 != -1)
  {
    swift_once();
  }

  v278 = qword_280C75080;
  *(v0 + 5072) = qword_280C75078;
  *(v0 + 5080) = v278;
  *(v0 + 5112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF558, &unk_20E4CDF40);
  *(v0 + 5120) = sub_20E4C1FA0();
  v279 = swift_allocObject();
  *(v0 + 5088) = v279;
  sub_20E424E74(&qword_280C75070, v279 + 16, &qword_27C8CF558, &unk_20E4CDF40);
  v280 = qword_280C75008;

  if (v280 != -1)
  {
    swift_once();
  }

  v281 = qword_280C75020;
  *(v0 + 5128) = qword_280C75018;
  *(v0 + 5136) = v281;
  *(v0 + 5168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF560, &qword_20E4CAD60);
  *(v0 + 5176) = sub_20E4C2044();
  v282 = swift_allocObject();
  *(v0 + 5144) = v282;
  sub_20E424E74(&qword_280C75010, v282 + 16, &qword_27C8CF560, &qword_20E4CAD60);
  v283 = qword_280C738C8;

  if (v283 != -1)
  {
    swift_once();
  }

  v284 = unk_280C738F0;
  *(v0 + 5184) = qword_280C738E8;
  *(v0 + 5192) = v284;
  *(v0 + 5224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF820, &unk_20E4CDF50);
  *(v0 + 5232) = sub_20E4C2440(&qword_280C72A60, &qword_27C8CF820, &unk_20E4CDF50, sub_20E4C2158);
  v285 = swift_allocObject();
  *(v0 + 5200) = v285;
  sub_20E424E74(&qword_280C738D0, v285 + 16, &qword_27C8CF820, &unk_20E4CDF50);
  v286 = qword_280C739A8;

  if (v286 != -1)
  {
    swift_once();
  }

  v287 = qword_280C739C0;
  *(v0 + 5240) = qword_280C739B8;
  *(v0 + 5248) = v287;
  *(v0 + 5280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF808, &unk_20E4CDF60);
  *(v0 + 5288) = sub_20E4C2440(&qword_280C72A00, &qword_27C8CF808, &unk_20E4CDF60, sub_20E4C21F0);
  v288 = swift_allocObject();
  *(v0 + 5256) = v288;
  sub_20E424E74(&qword_280C739B0, v288 + 16, &qword_27C8CF808, &unk_20E4CDF60);
  v289 = qword_280C73758;

  if (v289 != -1)
  {
    swift_once();
  }

  v290 = qword_280C73770;
  *(v0 + 5296) = qword_280C73768;
  *(v0 + 5304) = v290;
  *(v0 + 5336) = v22;
  *(v0 + 5344) = v23;
  v291 = swift_allocObject();
  *(v0 + 5312) = v291;
  sub_20E424E74(&qword_280C73760, v291 + 16, &qword_27C8CEEB8, &unk_20E4C7EC0);
  v292 = qword_280C737B8;

  if (v292 != -1)
  {
    swift_once();
  }

  v293 = qword_280C737D0;
  *(v0 + 5352) = qword_280C737C8;
  *(v0 + 5360) = v293;
  *(v0 + 5392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF828, &qword_20E4CC4F8);
  *(v0 + 5400) = sub_20E4C2440(&qword_280C729F0, &qword_27C8CF828, &qword_20E4CC4F8, sub_20E4C228C);
  v294 = swift_allocObject();
  *(v0 + 5368) = v294;
  sub_20E424E74(&qword_280C737C0, v294 + 16, &qword_27C8CF828, &qword_20E4CC4F8);
  v295 = qword_280C73938;

  if (v295 != -1)
  {
    swift_once();
  }

  v296 = unk_280C73960;
  *(v0 + 5408) = qword_280C73958;
  *(v0 + 5416) = v296;
  *(v0 + 5448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF848, &qword_20E4CC510);
  *(v0 + 5456) = sub_20E4C2440(&qword_280C72A58, &qword_27C8CF848, &qword_20E4CC510, sub_20E4C2308);
  v297 = swift_allocObject();
  *(v0 + 5424) = v297;
  sub_20E424E74(&qword_280C73940, v297 + 16, &qword_27C8CF848, &qword_20E4CC510);
  v298 = qword_280C73A08;

  if (v298 != -1)
  {
    swift_once();
  }

  v299 = qword_280C73A20;
  *(v0 + 5464) = qword_280C73A18;
  *(v0 + 5472) = v299;
  *(v0 + 5504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF830, &qword_20E4CC500);
  *(v0 + 5512) = sub_20E4C2440(&qword_280C729F8, &qword_27C8CF830, &qword_20E4CC500, sub_20E4C24BC);
  v300 = swift_allocObject();
  *(v0 + 5480) = v300;
  sub_20E424E74(&qword_280C73A10, v300 + 16, &qword_27C8CF830, &qword_20E4CC500);
  v301 = qword_280C74728;

  if (v301 != -1)
  {
    swift_once();
  }

  v302 = unk_280C74740;
  *(v0 + 5520) = qword_280C74738;
  *(v0 + 5528) = v302;
  *(v0 + 5560) = v2;
  *(v0 + 5568) = v3;
  v303 = swift_allocObject();
  *(v0 + 5536) = v303;
  sub_20E424E74(&byte_280C74730, v303 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v304 = qword_280C746C8;

  if (v304 != -1)
  {
    swift_once();
  }

  v305 = unk_280C746E0;
  *(v0 + 5576) = qword_280C746D8;
  *(v0 + 5584) = v305;
  *(v0 + 5616) = v2;
  *(v0 + 5624) = v3;
  v306 = swift_allocObject();
  *(v0 + 5592) = v306;
  sub_20E424E74(&byte_280C746D0, v306 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v307 = qword_280C74668;

  if (v307 != -1)
  {
    swift_once();
  }

  v308 = unk_280C74680;
  *(v0 + 5632) = qword_280C74678;
  *(v0 + 5640) = v308;
  *(v0 + 5672) = v2;
  *(v0 + 5680) = v3;
  v309 = swift_allocObject();
  *(v0 + 5648) = v309;
  sub_20E424E74(&byte_280C74670, v309 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v310 = qword_280C75CA8;

  if (v310 != -1)
  {
    swift_once();
  }

  v311 = qword_280C75CC0;
  *(v0 + 5688) = qword_280C75CB8;
  *(v0 + 5696) = v311;
  *(v0 + 5728) = v22;
  *(v0 + 5736) = v23;
  v312 = swift_allocObject();
  *(v0 + 5704) = v312;
  sub_20E424E74(&qword_280C75CB0, v312 + 16, &qword_27C8CEEB8, &unk_20E4C7EC0);
  v313 = qword_280C75C38;

  if (v313 != -1)
  {
    swift_once();
  }

  v314 = unk_280C75C60;
  *(v0 + 5744) = qword_280C75C58;
  *(v0 + 5752) = v314;
  *(v0 + 5784) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF888, &unk_20E4CC6B0);
  *(v0 + 5792) = sub_20E4C25F4();
  v315 = swift_allocObject();
  *(v0 + 5760) = v315;
  sub_20E424E74(&qword_280C75C40, v315 + 16, &qword_27C8CF888, &unk_20E4CC6B0);
  v316 = qword_280C74608;

  if (v316 != -1)
  {
    swift_once();
  }

  v317 = unk_280C74620;
  *(v0 + 5800) = qword_280C74618;
  *(v0 + 5808) = v317;
  *(v0 + 5840) = v2;
  *(v0 + 5848) = v3;
  v318 = swift_allocObject();
  *(v0 + 5816) = v318;
  sub_20E424E74(&byte_280C74610, v318 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v319 = qword_280C74520;

  if (v319 != -1)
  {
    swift_once();
  }

  v320 = unk_280C74538;
  *(v0 + 5856) = qword_280C74530;
  *(v0 + 5864) = v320;
  *(v0 + 5896) = v2;
  *(v0 + 5904) = v3;
  v321 = swift_allocObject();
  *(v0 + 5872) = v321;
  sub_20E424E74(&byte_280C74528, v321 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  v322 = qword_280C74580;

  if (v322 != -1)
  {
    swift_once();
  }

  v323 = unk_280C74598;
  *(v0 + 5912) = qword_280C74590;
  *(v0 + 5920) = v323;
  *(v0 + 5952) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF7D0, &qword_20E4CC200);
  *(v0 + 5960) = sub_20E4C26C4();
  v324 = swift_allocObject();
  *(v0 + 5928) = v324;
  sub_20E424E74(&byte_280C74588, v324 + 16, &qword_27C8CF7D0, &qword_20E4CC200);
  v325 = qword_280C74ED8;

  if (v325 != -1)
  {
    swift_once();
  }

  v326 = unk_280C74F00;
  *(v0 + 5968) = qword_280C74EF8;
  *(v0 + 5976) = v326;
  *(v0 + 6008) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CFA78, &unk_20E4CDF80);
  *(v0 + 6016) = sub_20E4C2780();
  v327 = swift_allocObject();
  *(v0 + 5984) = v327;
  sub_20E424E74(&qword_280C74EE0, v327 + 16, &qword_27C8CFA78, &unk_20E4CDF80);

  v328 = sub_20E42DCBC(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEE48, &qword_20E4C7E40);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_280C74BD8 != -1)
  {
    swift_once();
  }

  v329 = qword_280C74BE8;
  v330 = unk_280C74BF0;
  v346 = v2;
  v347 = v3;
  *&v345 = swift_allocObject();
  sub_20E424E74(&byte_280C74BE0, v345 + 16, &qword_27C8CEC98, &unk_20E4C7740);
  sub_20E41B858(&v345, v343);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v342 = v328;
  v332 = v344;
  v333 = __swift_mutable_project_boxed_opaque_existential_1(v343, v344);
  v334 = *(*(v332 - 8) + 64);
  MEMORY[0x28223BE20](v333, v333);
  v336 = &v339 - ((v335 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v337 + 16))(v336);
  sub_20E4C27FC(v336, v329, v330, isUniquelyReferenced_nonNull_native, &v342);
  __swift_destroy_boxed_opaque_existential_0(v343);
  return v342;
}