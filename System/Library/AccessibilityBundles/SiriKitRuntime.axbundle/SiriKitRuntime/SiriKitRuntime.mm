id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22E96D8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t AXIsPluginAllowedInClarity()
{
  v0 = sub_29C34B0A8();
  v2 = v1;
  v3 = sub_29C34B0B8();
  LOBYTE(v0) = sub_29C34AAC0(v0, v2, v3);

  return v0 & 1;
}

uint64_t sub_29C34AAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1792050, &qword_29C34B3E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x2A1C7C4A8])();
  v6 = &v23[-v5];
  v7 = sub_29C34B098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x2A1C7C4A8])();
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v23[-v13];
  sub_29C34B078();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_29C34AF0C(v6);
LABEL_20:
    v20 = 1;
    return v20 & 1;
  }

  (*(v8 + 32))(v14, v6, v7);
  v15 = sub_29C34B088();
  if (!v16)
  {
    (*(v8 + 8))(v14, v7);
    goto LABEL_20;
  }

  v17 = v15;
  v18 = v16;
  (*(v8 + 16))(v12, v14, v7);
  v19 = (*(v8 + 88))(v12, v7);
  if (v19 == *MEMORY[0x29EDC66F0] || v19 == *MEMORY[0x29EDC6708] || v19 == *MEMORY[0x29EDC6710] || v19 == *MEMORY[0x29EDC66F8] || v19 == *MEMORY[0x29EDC66E0] || v19 == *MEMORY[0x29EDC6700] || v19 == *MEMORY[0x29EDC66D0] || v19 == *MEMORY[0x29EDC66D8] || v19 == *MEMORY[0x29EDC66E8] || v19 == *MEMORY[0x29EDC6718] || v19 == *MEMORY[0x29EDC6720] || v19 == *MEMORY[0x29EDC6728] || v19 == *MEMORY[0x29EDC6740])
  {
LABEL_22:
    v24[0] = v17;
    v24[1] = v18;
    MEMORY[0x2A1C7C4A8](v19);
    *&v23[-16] = v24;
    v20 = sub_29C34AF74(sub_29C34B020, &v23[-32], a3);
    (*(v8 + 8))(v14, v7);

    return v20 & 1;
  }

  if (v19 != *MEMORY[0x29EDC6730])
  {
    if (v19 != *MEMORY[0x29EDC6738])
    {
      v22 = *(v8 + 8);
      v22(v14, v7);

      v22(v12, v7);
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  (*(v8 + 8))(v14, v7);

  v20 = 0;
  return v20 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_29C34AF0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1792050, &qword_29C34B3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C34AF74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_29C34B020(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_29C34B0C8() & 1;
  }
}