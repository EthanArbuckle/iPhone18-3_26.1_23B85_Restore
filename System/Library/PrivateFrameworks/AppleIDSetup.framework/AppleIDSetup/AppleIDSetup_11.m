uint64_t sub_24067B968(uint64_t a1)
{
  v2 = sub_24068657C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067B9A4(uint64_t a1)
{
  v2 = sub_24068657C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067B9E0(uint64_t a1)
{
  v2 = sub_240686678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067BA1C(uint64_t a1)
{
  v2 = sub_240686678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067BA58(uint64_t a1)
{
  v2 = sub_2406866CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067BA94(uint64_t a1)
{
  v2 = sub_2406866CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067BAD0(uint64_t a1)
{
  v2 = sub_240686624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067BB0C(uint64_t a1)
{
  v2 = sub_240686624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFA8, &qword_240770B98);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFB0, &qword_240770BA0);
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v37 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFB8, &qword_240770BA8);
  v41 = *(v43 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFC0, &qword_240770BB0);
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFC8, &qword_240770BB8);
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v19 = v1[1];
  v49 = *v1;
  v50 = v19;
  v20 = v1[2];
  v22 = v1[4];
  v21 = v1[5];
  v51 = v1[3];
  v52 = v22;
  v47 = v21;
  v48 = v20;
  v23 = *(v1 + 48);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24068657C();
  sub_24075AF74();
  v25 = (v23 >> 3) & 3;
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      LOBYTE(v55) = 3;
      sub_2406865D0();
      v14 = v44;
      v28 = v54;
      sub_24075AB54();
      v55 = v49;
      LOBYTE(v56) = v50 & 1;
      v57 = v48;
      v58 = v51;
      v59 = v52;
      LOWORD(v60) = v47 & 0x101;
      sub_2406863D8();
      v11 = v46;
      sub_24075ABE4();
      v29 = v45;
      goto LABEL_6;
    }

    LOBYTE(v55) = 2;
    sub_240686624();
    v35 = v39;
    v36 = v54;
    sub_24075AB54();
    (*(v40 + 8))(v35, v42);
    return (*(v53 + 8))(v18, v36);
  }

  else
  {
    if (!v25)
    {
      v26 = v49;
      v27 = v49 >> 8;
      LOBYTE(v55) = 0;
      sub_2406866CC();
      v28 = v54;
      sub_24075AB54();
      LOBYTE(v55) = v26 & 1;
      BYTE1(v55) = v27;
      BYTE2(v55) = BYTE2(v26) & 1;
      v56 = v50;
      v57 = v48;
      v58 = v51;
      LOBYTE(v59) = v52;
      sub_240686330();
      sub_24075ABE4();
      v29 = v38;
LABEL_6:
      (*(v29 + 8))(v14, v11);
      return (*(v53 + 8))(v18, v28);
    }

    v31 = v48 >> 8;
    v32 = v48 & 1;
    LOBYTE(v55) = 1;
    sub_240686678();
    v33 = v54;
    sub_24075AB54();
    v55 = v49;
    v56 = v50;
    LOBYTE(v57) = v32;
    BYTE1(v57) = v31;
    v58 = v51;
    v59 = v52;
    v60 = v47;
    v61 = v23 & 0xE7;
    sub_240686384();
    v34 = v43;
    sub_24075ABE4();
    (*(v41 + 8))(v10, v34);
    return (*(v53 + 8))(v18, v33);
  }
}

uint64_t DiscoveryModel.State.hash(into:)(__int128 *a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = (*(v1 + 48) >> 3) & 3;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      MEMORY[0x245CC6BA0](3);
      return DiscoveryModel.ChooseFamilyMember.hash(into:)(a1);
    }

    else
    {
      return MEMORY[0x245CC6BA0](2);
    }
  }

  else
  {
    if (v9)
    {
      MEMORY[0x245CC6BA0](1);
      sub_2405ED0F0(a1, v4);
      sub_2405F115C(a1, v3);
      sub_24075AE94();
      if ((v6 & 0xFF00) != 0x200)
      {
        sub_24075AE94();
      }

      sub_24075AE94();
    }

    else
    {
      MEMORY[0x245CC6BA0](0);
      sub_24075AE94();
      if ((v4 & 0xFF00) != 0x200)
      {
        sub_24075AE94();
      }

      sub_24075AE94();
      sub_24075AE94();
    }

    return DiscoveryModel.PairingState.hash(into:)(a1);
  }
}

uint64_t DiscoveryModel.State.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  *&v4[13] = *(v0 + 32);
  v5 = v1;
  sub_24075AE64();
  DiscoveryModel.State.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAFF8, &qword_240770BC0);
  v59 = *(v64 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB000, &qword_240770BC8);
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB008, &qword_240770BD0);
  v60 = *(v62 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB010, &qword_240770BD8);
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB018, &qword_240770BE0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24068657C();
  v22 = v66;
  sub_24075AF34();
  if (!v22)
  {
    v23 = v14;
    v54 = v11;
    v24 = v62;
    v55 = 0;
    v26 = v63;
    v25 = v64;
    v66 = v16;
    v27 = v65;
    v28 = sub_24075AB34();
    v29 = (2 * *(v28 + 16)) | 1;
    v73 = v28;
    v74 = v28 + 32;
    v75 = 0;
    v76 = v29;
    v30 = sub_2405B8AF8();
    if (v30 == 4 || v75 != v76 >> 1)
    {
      v40 = v19;
      v41 = sub_24075A8C4();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v43 = &type metadata for DiscoveryModel.State;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v66 + 8))(v40, v15);
LABEL_11:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v77);
    }

    if (v30 <= 1u)
    {
      if (!v30)
      {
        LOBYTE(v67) = 0;
        sub_2406866CC();
        v31 = v55;
        sub_24075AA54();
        if (!v31)
        {
          sub_240686480();
          v32 = v54;
          sub_24075AAF4();
          (*(v56 + 8))(v23, v32);
          (*(v66 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 0;
          v35 = v68;
          v36 = v69;
          v37 = v70;
          v38 = 0x10000;
          if (!BYTE2(v67))
          {
            v38 = 0;
          }

          v39 = v67 | (BYTE1(v67) << 8) | v38;
          goto LABEL_25;
        }

        goto LABEL_15;
      }

      LOBYTE(v67) = 1;
      sub_240686678();
      v49 = v55;
      sub_24075AA54();
      if (!v49)
      {
        sub_2406864D4();
        sub_24075AAF4();
        (*(v60 + 8))(v10, v24);
        (*(v66 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v39 = v67;
        v35 = v68;
        v36 = v69;
        v37 = v70;
        v33 = v71;
        v34 = v72 & 0xE3 | 8;
LABEL_25:
        *v27 = v39;
        *(v27 + 8) = v35;
        *(v27 + 16) = v36;
        *(v27 + 32) = v37;
        *(v27 + 40) = v33;
        *(v27 + 48) = v34;
        return __swift_destroy_boxed_opaque_existential_1(v77);
      }

      goto LABEL_15;
    }

    if (v30 == 2)
    {
      LOBYTE(v67) = 2;
      sub_240686624();
      v46 = v61;
      v47 = v55;
      sub_24075AA54();
      v48 = v66;
      if (!v47)
      {
        (*(v57 + 8))(v46, v58);
        (*(v48 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v39 = 0;
        v35 = 0;
        v37 = 0;
        v33 = 0;
        v36 = 0uLL;
        v34 = 24;
        goto LABEL_25;
      }

LABEL_15:
      (*(v66 + 8))(v19, v15);
      goto LABEL_11;
    }

    LOBYTE(v67) = 3;
    sub_2406865D0();
    v50 = v55;
    sub_24075AA54();
    v51 = v66;
    if (!v50)
    {
      sub_240686528();
      sub_24075AAF4();
      (*(v59 + 8))(v26, v25);
      (*(v51 + 8))(v19, v15);
      swift_unknownObjectRelease();
      v39 = v67;
      v35 = v68;
      v36 = v69;
      v37 = v70;
      v52 = 256;
      if (!BYTE1(v71))
      {
        v52 = 0;
      }

      v33 = v52 | v71;
      v34 = 16;
      goto LABEL_25;
    }

    (*(v66 + 8))(v19, v15);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_24067CBF0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  *&v4[13] = *(v0 + 32);
  v5 = v1;
  sub_24075AE64();
  DiscoveryModel.State.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_24067CC50()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *&v4[9] = *v0;
  *&v4[11] = v2;
  *&v4[13] = *(v0 + 32);
  v5 = v1;
  sub_24075AE64();
  DiscoveryModel.State.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.Discovering.pairingState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 32);
  *(a1 + 24) = v5;
  return sub_2406771E0(v2, v3, v4, v5);
}

__n128 DiscoveryModel.Discovering.pairingState.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_240604AE0(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = v5;
  *(v1 + 8) = v5;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t static DiscoveryModel.PairingState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v43[0] = *a1;
  v43[1] = v3;
  v43[2] = v4;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v10 = v5 >> 5;
  v48 = v9;
  if (v5 >> 5 > 2)
  {
    if (v10 != 3)
    {
      if (v10 == 4)
      {
        if ((v9 & 0xE0) == 0x80)
        {
          v35 = *(v2 + 16);
          v36 = *(v2 + 24);
          v37 = *(v2 + 32);
          v12 = *(v6 + 24);
          v13 = *(v6 + 32);
          v38 = *(v6 + 40);
          v34 = *(v2 + 40);
          v33 = *(v6 + 16);
          if (v34 <= 0xFB)
          {
            v41[0] = *(v2 + 16);
            v41[1] = v36;
            v41[2] = v37;
            v42 = v34;
            if (v38 <= 0xFB)
            {
              v39[0] = v33;
              v39[1] = v12;
              v39[2] = v13;
              v40 = v38;
              sub_2406771E0(v6, v7, v8, v9);
              sub_2406771E0(v2, v3, v4, v5);
              sub_240686788(v33, v12, v13, v38);
              sub_240686788(v35, v36, v37, v34);
              sub_240686788(v35, v36, v37, v34);
              v26 = static DiscoveryModel.PairingState.== infix(_:_:)(v41, v39);
              sub_240604AE0(v33, v12, v13, v38);
              sub_240604AE0(v35, v36, v37, v34);
              sub_24068679C(v35, v36, v37, v34);
              sub_240686720(v43);
              return (v26 & 1) != 0;
            }

            sub_2406771E0(v6, v7, v8, v9);
            sub_2406771E0(v2, v3, v4, v5);
            v14 = v33;
            sub_240686788(v33, v12, v13, v38);
            v16 = v35;
            v15 = v36;
            v17 = v37;
            v18 = v34;
            sub_240686788(v35, v36, v37, v34);
            sub_240686788(v35, v36, v37, v34);
            sub_240604AE0(v35, v36, v37, v34);
          }

          else
          {
            sub_2406771E0(v6, v7, v8, v9);
            sub_2406771E0(v2, v3, v4, v5);
            v14 = v33;
            sub_240686788(v33, v12, v13, v38);
            v16 = v35;
            v15 = v36;
            v17 = v37;
            v18 = v34;
            sub_240686788(v35, v36, v37, v34);
            if (v38 > 0xFB)
            {
              sub_24068679C(v35, v36, v37, v34);
              goto LABEL_44;
            }
          }

          sub_24068679C(v16, v15, v17, v18);
          sub_24068679C(v14, v12, v13, v38);
          goto LABEL_48;
        }
      }

      else if ((v9 & 0xE0) == 0xA0 && !(v7 | v6 | v8) && v9 == 160)
      {
        goto LABEL_44;
      }

LABEL_46:
      v21 = v6;
      v22 = v7;
      v23 = v8;
      v24 = v9;
LABEL_47:
      sub_2406771E0(v21, v22, v23, v24);
LABEL_48:
      sub_240686720(v43);
      return 0;
    }

    if ((v9 & 0xE0) != 0x60)
    {
LABEL_32:

      goto LABEL_46;
    }

    if ((v2 != v6 || v3 != v7) && (sub_24075ACF4() & 1) == 0)
    {
      goto LABEL_97;
    }

    v20 = v9 & 0x1F;
    if ((v5 & 0x1F) == 0)
    {
      sub_2406771E0(v6, v7, v8, v9);
      sub_2406771E0(v2, v3, v4, v5);
      sub_240686720(v43);
      if ((v9 & 0x1F) != 0)
      {
        return 0;
      }

      return v4 == v8;
    }

    if ((v5 & 0x1F) == 1)
    {
      sub_2406771E0(v6, v7, v8, v9);
      sub_2406771E0(v2, v3, v4, v5);
      sub_240686720(v43);
      if (v20 != 1)
      {
        return 0;
      }

      return v4 == v8;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        if (v20 == 2 && v8 == 1)
        {
          sub_2406771E0(v6, v7, 1, v9);
          sub_2406771E0(v2, v3, 1, v5);
          sub_240686720(v43);
          return 1;
        }

        goto LABEL_97;
      }

      if (v20 == 2 && v8 == 2)
      {
        sub_2406771E0(v6, v7, 2, v9);
        v30 = v2;
        v31 = v3;
        v32 = 2;
        goto LABEL_96;
      }
    }

    else if (v20 == 2 && !v8)
    {
      sub_2406771E0(v6, v7, 0, v9);
      v30 = v2;
      v31 = v3;
      v32 = 0;
LABEL_96:
      sub_2406771E0(v30, v31, v32, v5);
      goto LABEL_44;
    }

LABEL_97:
    sub_2406771E0(v6, v7, v8, v9);
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    goto LABEL_47;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      if ((v9 & 0xE0) == 0x20)
      {
        v11 = v7;
        if (v3)
        {
          if (v3 == 1)
          {
            goto LABEL_7;
          }

          goto LABEL_36;
        }

LABEL_51:
        sub_240686720(v43);
        if (!v11)
        {
          return v2 == v6;
        }

        return 0;
      }
    }

    else if ((v9 & 0xE0) == 0x40)
    {
      v11 = v7;
      if (v3)
      {
        if (v3 == 1)
        {
LABEL_7:
          sub_240686720(v43);
          if (v11 != 1)
          {
            return 0;
          }

          return v2 == v6;
        }

LABEL_36:
        if (v2)
        {
          if (v2 == 1)
          {
            sub_240686720(v43);
            if (v11 != 2 || v6 != 1)
            {
              return 0;
            }
          }

          else
          {
            sub_240686720(v43);
            if (v11 != 2 || v6 != 2)
            {
              return 0;
            }
          }
        }

        else
        {
          sub_240686720(v43);
          if (v11 != 2 || v6)
          {
            return 0;
          }
        }

        return 1;
      }

      goto LABEL_51;
    }

    goto LABEL_46;
  }

  if (v9 >= 0x20)
  {
    goto LABEL_32;
  }

  if ((v2 != v6 || v3 != v7) && (sub_24075ACF4() & 1) == 0)
  {
    goto LABEL_97;
  }

  if (!v5)
  {
    if (!v9)
    {
      sub_2406771E0(v6, v7, v8, 0);
      sub_2406771E0(v2, v3, v4, 0);
      sub_240686720(v43);
      return v4 == v8;
    }

    sub_2406771E0(v6, v7, v8, v9);
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v24 = 0;
    goto LABEL_47;
  }

  if (v5 == 1)
  {
    if (v9 == 1)
    {
      v19 = 1;
      sub_2406771E0(v6, v7, v8, 1u);
      sub_2406771E0(v2, v3, v4, 1u);
      sub_240686720(v43);
      if (v4 == v8)
      {
        return v19;
      }

      return 0;
    }

    sub_2406771E0(v6, v7, v8, v9);
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v24 = 1;
    goto LABEL_47;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v9 == 2 && v8 == 1)
      {
        v19 = 1;
        sub_2406771E0(v6, v7, 1, 2u);
        sub_2406771E0(v2, v3, 1, 2u);
        sub_240686720(v43);
        return v19;
      }

      sub_2406771E0(v6, v7, v8, v9);
      v21 = v2;
      v22 = v3;
      v23 = 1;
      v24 = 2;
      goto LABEL_47;
    }

    if (v9 != 2 || v8 != 2)
    {
      sub_2406771E0(v6, v7, v8, v9);
      v21 = v2;
      v22 = v3;
      v23 = 2;
      v24 = 2;
      goto LABEL_47;
    }

    sub_2406771E0(v6, v7, 2, 2u);
    v27 = v2;
    v28 = v3;
    v29 = 2;
  }

  else
  {
    if (v9 != 2 || v8)
    {
      sub_2406771E0(v6, v7, v8, v9);
      v21 = v2;
      v22 = v3;
      v23 = 0;
      v24 = 2;
      goto LABEL_47;
    }

    sub_2406771E0(v6, v7, 0, 2u);
    v27 = v2;
    v28 = v3;
    v29 = 0;
  }

  sub_2406771E0(v27, v28, v29, 2u);
LABEL_44:
  sub_240686720(v43);
  return 1;
}

unint64_t sub_24067D5E8()
{
  v1 = 0x614D73776F6C6C61;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x53676E6972696170;
  }

  if (*v0)
  {
    v1 = 0x64657463656C6573;
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

uint64_t sub_24067D684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24068A83C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24067D6AC(uint64_t a1)
{
  v2 = sub_2406867B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067D6E8(uint64_t a1)
{
  v2 = sub_2406867B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.Discovering.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB028, &qword_240770BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v28 = v1[1];
  v22 = v1[2];
  v9 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = v9;
  v19 = *(v1 + 3);
  v10 = v1[32];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406867B0();
  sub_24075AF74();
  LOBYTE(v24) = 0;
  v12 = v23;
  sub_24075ABC4();
  if (!v12)
  {
    v13 = v10;
    v15 = v19;
    v14 = v20;
    v16 = v21;
    LOBYTE(v24) = 1;
    sub_24075AB74();
    LOBYTE(v24) = 2;
    sub_24075ABC4();
    v23 = 0;
    v24 = v16;
    v25 = v14;
    v26 = v15;
    v27 = v13;
    v29 = 3;
    sub_2406771E0(v16, v14, v15, v13);
    sub_240686804();
    sub_24075ABE4();
    sub_240604AE0(v24, v25, v26, v27);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t DiscoveryModel.Discovering.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = v1[32];
  sub_24075AE94();
  if (v4 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  return DiscoveryModel.PairingState.hash(into:)(a1);
}

uint64_t DiscoveryModel.Discovering.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = v0[32];
  sub_24075AE64();
  sub_24075AE94();
  if (v2 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(v9);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.Discovering.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB040, &qword_240770BF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406867B0();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v11 = sub_24075AAD4();
  LOBYTE(v20) = 1;
  v12 = sub_24075AA84();
  LOBYTE(v20) = 2;
  v24 = sub_24075AAD4();
  v25 = 3;
  sub_240686858();
  sub_24075AAF4();
  v19 = v11 & 1;
  v24 &= 1u;
  (*(v6 + 8))(v9, v5);
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  *a2 = v19;
  *(a2 + 1) = v12;
  *(a2 + 2) = v24;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  sub_2406771E0(v13, v14, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_240604AE0(v13, v14, v15, v16);
}

uint64_t sub_24067DD98()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[72] = *v0;
  v6[73] = v1;
  v6[74] = v2;
  v7 = *(v0 + 8);
  v8 = v3;
  v9 = v4;
  sub_24075AE64();
  DiscoveryModel.Discovering.hash(into:)(v6);
  return sub_24075AED4();
}

uint64_t sub_24067DE10()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[72] = *v0;
  v6[73] = v1;
  v6[74] = v2;
  v7 = *(v0 + 8);
  v8 = v3;
  v9 = v4;
  sub_24075AE64();
  DiscoveryModel.Discovering.hash(into:)(v6);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.Discovered.pairingState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_2406771E0(v2, v3, v4, v5);
}

__n128 DiscoveryModel.Discovered.pairingState.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_240604AE0(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t DiscoveryModel.Discovered.account(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v35 = a2;
  v3 = type metadata accessor for IdMSAccount();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v34 - v9;
  v10 = *v2 + 56;
  v11 = 1 << *(*v2 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(*v2 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v36 = v14;
  v40 = v4;
  v41 = v3;
  v38 = result;
  v39 = v8;
  while (v13)
  {
LABEL_11:
    v18 = v37;
    sub_240618544(*(result + 48) + *(v4 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v37);
    sub_24061A408(v18, v8);
    v19 = *&v8[*(v3 + 28)];
    if (*(v19 + 16))
    {
      v20 = *(v19 + 40);
      sub_24075A0B4();
      sub_24075AE64();
      sub_24075A114();
      v21 = sub_24075AED4();

      v22 = -1 << *(v19 + 32);
      v23 = v21 & ~v22;
      if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (1)
        {
          v25 = *(*(v19 + 48) + 8 * v23);
          v26 = sub_24075A0B4();
          v28 = v27;
          if (v26 == sub_24075A0B4() && v28 == v29)
          {

            goto LABEL_24;
          }

          v31 = sub_24075ACF4();

          if (v31)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

LABEL_24:
        v33 = v35;
        sub_24061A408(v39, v35);
        v32 = 0;
        v4 = v40;
        v3 = v41;
        return (*(v4 + 56))(v33, v32, 1, v3);
      }
    }

LABEL_5:
    v13 &= v13 - 1;
    v8 = v39;
    sub_240618890(v39);
    v4 = v40;
    v3 = v41;
    result = v38;
    v14 = v36;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      v32 = 1;
      v33 = v35;
      return (*(v4 + 56))(v33, v32, 1, v3);
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24067E298()
{
  v1 = *v0;
  v2 = 0x73746E756F636361;
  v3 = 0xD000000000000027;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x53676E6972696170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7365636976726573;
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

uint64_t sub_24067E348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24068A9B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24067E370(uint64_t a1)
{
  v2 = sub_2406868AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067E3AC(uint64_t a1)
{
  v2 = sub_2406868AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.Discovered.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB050, &qword_240770C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v20 = *(v1 + 8);
  v25 = *(v1 + 16);
  v19 = *(v1 + 17);
  v10 = *(v1 + 32);
  v18 = *(v1 + 24);
  v11 = *(v1 + 40);
  v15 = v10;
  v16 = v11;
  v17 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406868AC();

  sub_24075AF74();
  v21 = v9;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB060, &unk_240770C08);
  sub_240686900(&qword_27E4BB068, &qword_27E4B6438);
  sub_24075ABE4();
  if (v2)
  {
  }

  else
  {
    v13 = v18;

    v21 = v20;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    sub_24068699C(&qword_27E4B8280, &qword_27E4B6470);
    sub_24075ABE4();
    LOBYTE(v21) = 2;
    sub_24075ABC4();
    LOBYTE(v21) = 3;
    sub_24075AB74();
    v21 = v13;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v26 = 4;
    sub_2406771E0(v13, v15, v16, v17);
    sub_240686804();
    sub_24075ABE4();
    sub_240604AE0(v21, v22, v23, v24);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DiscoveryModel.Discovered.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  sub_2405ED0F0(a1, *v1);
  sub_2405F115C(a1, v3);
  sub_24075AE94();
  if (v5 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  return DiscoveryModel.PairingState.hash(into:)(a1);
}

uint64_t DiscoveryModel.Discovered.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  sub_24075AE64();
  sub_2405ED0F0(v10, v1);
  sub_2405F115C(v10, v2);
  sub_24075AE94();
  if (v4 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(v10);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.Discovered.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB070, &qword_240770C18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406868AC();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB060, &unk_240770C08);
  LOBYTE(v23) = 0;
  sub_240686900(&qword_27E4BB078, &qword_27E4B6480);
  sub_24075AAF4();
  v11 = v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
  LOBYTE(v23) = 1;
  sub_24068699C(&qword_27E4B82F8, &qword_27E4B64A0);
  sub_24075AAF4();
  v22 = v27[0];
  LOBYTE(v27[0]) = 2;
  v37 = sub_24075AAD4();
  LOBYTE(v27[0]) = 3;
  v21 = sub_24075AA84();
  v38 = 4;
  sub_240686858();
  sub_24075AAF4();
  v37 &= 1u;
  v12 = v37;
  (*(v6 + 8))(v9, v5);
  v20 = *(&v35 + 1);
  v13 = v35;
  v14 = v22;
  *&v23 = v11;
  *(&v23 + 1) = v22;
  LOBYTE(v24) = v12;
  v15 = v21;
  BYTE1(v24) = v21;
  *(&v24 + 1) = v34;
  v25 = v35;
  v16 = v34;
  v17 = v36;
  v26 = v36;
  *(a2 + 48) = v36;
  v18 = v24;
  *a2 = v23;
  *(a2 + 16) = v18;
  *(a2 + 32) = v25;
  sub_2406771A8(&v23, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v11;
  v27[1] = v14;
  v28 = v37;
  v29 = v15;
  v30 = v16;
  v31 = v13;
  v32 = v20;
  v33 = v17;
  return sub_240686258(v27);
}

uint64_t sub_24067ECD0()
{
  sub_24075AE64();
  DiscoveryModel.Discovered.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24067ED14()
{
  sub_24075AE64();
  DiscoveryModel.Discovered.hash(into:)(v1);
  return sub_24075AED4();
}

void *DiscoveryModel.ChooseFamilyMember.selectedMember.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_24067715C(v2, v3, v4);
}

__n128 DiscoveryModel.ChooseFamilyMember.selectedMember.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_2406769C4(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = v4;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

unint64_t sub_24067EE3C()
{
  v1 = *v0;
  v2 = 0x737265626D656DLL;
  v3 = 0x64657463656C6573;
  v4 = 0x7250646C756F6873;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_24067EEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24068AB78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24067EF24(uint64_t a1)
{
  v2 = sub_240686A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067EF60(uint64_t a1)
{
  v2 = sub_240686A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.ChooseFamilyMember.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB080, &qword_240770C20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = *v1;
  v23 = *(v1 + 8);
  v10 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v10;
  v17 = *(v1 + 32);
  LODWORD(v10) = *(v1 + 40);
  v16[2] = *(v1 + 41);
  v16[3] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240686A80();

  sub_24075AF74();
  v20 = v9;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB090, &qword_240770C28);
  sub_240686AD4(&qword_27E4BB098, sub_24061AF78);
  sub_24075ABE4();
  if (v2)
  {
  }

  else
  {
    v13 = v17;
    v12 = v18;
    v14 = v19;

    LOBYTE(v20) = 1;
    sub_24075ABC4();
    v20 = v14;
    v21 = v12;
    v22 = v13;
    v24 = 2;
    sub_24067715C(v14, v12, v13);
    sub_24061AF78();
    sub_24075AB94();
    sub_2406769C4(v20, v21, v22);
    LOBYTE(v20) = 3;
    sub_24075ABC4();
    LOBYTE(v20) = 4;
    sub_24075ABC4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DiscoveryModel.ChooseFamilyMember.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  sub_240682EF0(a1, *v1);
  sub_24075AE94();
  if (v4 == 1)
  {
    goto LABEL_5;
  }

  sub_24075AE94();
  sub_24075AE94();
  if (v4)
  {
    v8 = v4;
    sub_24075A6E4();
  }

  if (v5 >> 60 == 15)
  {
LABEL_5:
    sub_24075AE94();
  }

  else
  {
    sub_24075AE94();
    sub_2407596D4();
  }

  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t DiscoveryModel.ChooseFamilyMember.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 1);
  v10 = v2;
  v11 = v3;
  v12 = v4;
  sub_24075AE64();
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v6);
  return sub_24075AED4();
}

void *DiscoveryModel.ChooseFamilyMember.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0A0, &qword_240770C30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240686A80();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v17 = 0;
    v18 = 0;
    v16 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB090, &qword_240770C28);
    v27 = 0;
    sub_240686AD4(&qword_27E4BB0A8, sub_24061AF24);
    sub_24075AAF4();
    v21 = v23;
    LOBYTE(v23) = 1;
    v26 = sub_24075AAD4();
    v27 = 2;
    sub_24061AF24();
    sub_24075AAA4();
    v12 = v23;
    v22 = v24;
    v13 = v25;
    sub_2406769C4(1, 0, 0);
    LOBYTE(v23) = 3;
    v20 = sub_24075AAD4();
    LOBYTE(v23) = 4;
    v14 = sub_24075AAD4();
    v19 = v26 & 1;
    v26 = v20 & 1;
    (*(v6 + 8))(v9, v5);
    v15 = v22;
    *a2 = v21;
    *(a2 + 8) = v19;
    *(a2 + 16) = v12;
    *(a2 + 24) = v15;
    *(a2 + 32) = v13;
    *(a2 + 40) = v26;
    *(a2 + 41) = v14 & 1;

    sub_24067715C(v12, v15, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v16 = v12;
    v17 = v15;
    v18 = v13;
  }

  return sub_2406769C4(v16, v17, v18);
}

uint64_t sub_24067F780()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 1);
  v10 = v2;
  v11 = v3;
  v12 = v4;
  sub_24075AE64();
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v6);
  return sub_24075AED4();
}

uint64_t sub_24067F7F8()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 1);
  v10 = v2;
  v11 = v3;
  v12 = v4;
  sub_24075AE64();
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v6);
  return sub_24075AED4();
}

uint64_t sub_24067F868(uint64_t a1)
{
  v2 = sub_240686BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067F8A4(uint64_t a1)
{
  v2 = sub_240686BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067F8E0(uint64_t a1)
{
  v2 = sub_240686C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067F91C(uint64_t a1)
{
  v2 = sub_240686C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067F958(uint64_t a1)
{
  v2 = sub_240686BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067F994(uint64_t a1)
{
  v2 = sub_240686BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067F9D0(uint64_t a1)
{
  v2 = sub_240686C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067FA0C(uint64_t a1)
{
  v2 = sub_240686C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067FA48()
{
  v1 = *v0;
  v2 = 0x7472617453746F6ELL;
  v3 = 0x65676E616863;
  v4 = 0x6465726577736E61;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 2003789939;
  if (v1 != 1)
  {
    v5 = 7041889;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24067FAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24068AD44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24067FB20(uint64_t a1)
{
  v2 = sub_240686B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067FB5C(uint64_t a1)
{
  v2 = sub_240686B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067FB98(uint64_t a1)
{
  v2 = sub_240686D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067FBD4(uint64_t a1)
{
  v2 = sub_240686D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067FC10(uint64_t a1)
{
  v2 = sub_240686CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067FC4C(uint64_t a1)
{
  v2 = sub_240686CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.PairingState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0B0, &qword_240770C38);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v48 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0B8, &qword_240770C40);
  v59 = *(v61 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v58 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0C0, &qword_240770C48);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0C8, &qword_240770C50);
  v51 = *(v54 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v50 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0D0, &qword_240770C58);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0D8, &qword_240770C60);
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB0E0, &qword_240770C68);
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = *v1;
  v64 = *(v1 + 8);
  v65 = v25;
  v48 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240686B4C();
  sub_24075AF74();
  v28 = v26 >> 5;
  if (v26 >> 5 > 2)
  {
    if (v28 == 3)
    {
      LOBYTE(v69) = 4;
      sub_240686BF4();
      v44 = v58;
      v45 = v67;
      sub_24075AB54();
      LOBYTE(v69) = 0;
      v46 = v61;
      v47 = v68;
      sub_24075ABB4();
      if (!v47)
      {
        v69 = v48;
        LOBYTE(v70) = v26 & 0x1F;
        v73 = 1;
        sub_240684A34();
        sub_24075ABE4();
      }

      (*(v59 + 8))(v44, v46);
      return (*(v66 + 8))(v24, v45);
    }

    else
    {
      v34 = v67;
      if (v28 == 4)
      {
        v36 = *(v65 + 16);
        v35 = *(v65 + 24);
        v37 = *(v65 + 32);
        v38 = *(v65 + 40);
        LOBYTE(v69) = 5;
        sub_240686788(v36, v35, v37, v38);
        sub_240686BA0();
        v39 = v60;
        sub_24075AB54();
        v65 = v36;
        v69 = v36;
        v70 = v35;
        v71 = v37;
        v72 = v38;
        sub_240686804();
        v40 = v63;
        sub_24075AB94();
        (*(v62 + 8))(v39, v40);
        (*(v66 + 8))(v24, v34);
        return sub_24068679C(v65, v35, v37, v38);
      }

      else
      {
        LOBYTE(v69) = 0;
        sub_240686D44();
        sub_24075AB54();
        (*(v49 + 8))(v20, v17);
        return (*(v66 + 8))(v24, v34);
      }
    }
  }

  else
  {
    if (v28)
    {
      if (v28 == 1)
      {
        LOBYTE(v69) = 2;
        sub_240686C9C();
        v29 = v50;
        v30 = v67;
        v31 = v24;
        sub_24075AB54();
        v69 = v65;
        LOBYTE(v70) = v64;
        sub_240684A34();
        v32 = v54;
        sub_24075ABE4();
        v33 = v51;
      }

      else
      {
        LOBYTE(v69) = 3;
        sub_240686C48();
        v29 = v55;
        v30 = v67;
        v31 = v24;
        sub_24075AB54();
        v69 = v65;
        LOBYTE(v70) = v64;
        sub_240684A34();
        v32 = v57;
        sub_24075ABE4();
        v33 = v56;
      }

      (*(v33 + 8))(v29, v32);
    }

    else
    {
      LOBYTE(v69) = 1;
      sub_240686CF0();
      v30 = v67;
      v31 = v24;
      sub_24075AB54();
      LOBYTE(v69) = 0;
      v42 = v53;
      v43 = v68;
      sub_24075ABB4();
      if (!v43)
      {
        v69 = v48;
        LOBYTE(v70) = v26;
        v73 = 1;
        sub_240684A34();
        sub_24075ABE4();
      }

      (*(v52 + 8))(v16, v42);
    }

    return (*(v66 + 8))(v31, v30);
  }
}

uint64_t DiscoveryModel.PairingState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v6 >> 5;
  if (v6 >> 5 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        MEMORY[0x245CC6BA0](2);
        if (v4)
        {
          if (v4 == 1)
          {
LABEL_6:
            v8 = 2;
LABEL_28:
            MEMORY[0x245CC6BA0](v8);
            v15 = v3;
            return MEMORY[0x245CC6BA0](v15);
          }

LABEL_21:
          if (v3)
          {
            if (v3 != 1)
            {
              goto LABEL_23;
            }

            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      else
      {
        MEMORY[0x245CC6BA0](3);
        if (v4)
        {
          if (v4 == 1)
          {
            goto LABEL_6;
          }

          goto LABEL_21;
        }
      }

      v8 = 1;
      goto LABEL_28;
    }

    MEMORY[0x245CC6BA0](1);
    sub_24075A114();
    if (v6)
    {
      if (v6 == 1)
      {
LABEL_13:
        v14 = 2;
LABEL_26:
        MEMORY[0x245CC6BA0](v14);
        v15 = v5;
        return MEMORY[0x245CC6BA0](v15);
      }

LABEL_16:
      if (v5)
      {
        if (v5 != 1)
        {
LABEL_23:
          v15 = 4;
          return MEMORY[0x245CC6BA0](v15);
        }

LABEL_18:
        v15 = 3;
        return MEMORY[0x245CC6BA0](v15);
      }

LABEL_24:
      v15 = 0;
      return MEMORY[0x245CC6BA0](v15);
    }

    goto LABEL_25;
  }

  if (v7 == 3)
  {
    MEMORY[0x245CC6BA0](4);
    sub_24075A114();
    if ((v6 & 0x1F) != 0)
    {
      if ((v6 & 0x1F) == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

LABEL_25:
    v14 = 1;
    goto LABEL_26;
  }

  if (v7 != 4)
  {
    goto LABEL_24;
  }

  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  MEMORY[0x245CC6BA0](5);
  if (v12 > 0xFB)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_2406771E0(v9, v10, v11, v12);
  DiscoveryModel.PairingState.hash(into:)(a1);

  return sub_240604AE0(v9, v10, v11, v12);
}

uint64_t DiscoveryModel.PairingState.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  DiscoveryModel.PairingState.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.PairingState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB120, &qword_240770C70);
  v70 = *(v68 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  v75 = &v59 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB128, &qword_240770C78);
  v69 = *(v67 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v74 = &v59 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB130, &qword_240770C80);
  v66 = *(v64 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v73 = &v59 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB138, &qword_240770C88);
  v62 = *(v63 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v71 = &v59 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB140, &qword_240770C90);
  v65 = *(v60 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v60);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB148, &qword_240770C98);
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB150, &qword_240770CA0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_240686B4C();
  v25 = v76;
  sub_24075AF34();
  if (!v25)
  {
    v26 = v17;
    v59 = v14;
    v76 = 0;
    v27 = v13;
    v29 = v73;
    v28 = v74;
    v30 = v75;
    v31 = sub_24075AB34();
    v32 = (2 * *(v31 + 16)) | 1;
    v80 = v31;
    v81 = v31 + 32;
    v82 = 0;
    v83 = v32;
    v33 = sub_2405B8B00();
    if (v33 == 6 || v82 != v83 >> 1)
    {
      v36 = sub_24075A8C4();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v38 = &type metadata for DiscoveryModel.PairingState;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
    }

    else if (v33 > 2u)
    {
      if (v33 == 3)
      {
        LOBYTE(v78) = 3;
        sub_240686C48();
        v45 = v76;
        sub_24075AA54();
        v46 = v72;
        if (!v45)
        {
          sub_240684BD8();
          v47 = v64;
          sub_24075AAF4();
          (*(v66 + 8))(v29, v47);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v57 = 0;
          v53 = v78;
          v55 = v79;
          v58 = 64;
LABEL_25:
          *v46 = v53;
          *(v46 + 8) = v55;
          *(v46 + 16) = v57;
          *(v46 + 24) = v58;
          return __swift_destroy_boxed_opaque_existential_1(v77);
        }
      }

      else
      {
        v41 = v76;
        if (v33 == 4)
        {
          LOBYTE(v78) = 4;
          sub_240686BF4();
          v42 = v28;
          sub_24075AA54();
          if (!v41)
          {
            LOBYTE(v78) = 0;
            v43 = v67;
            v53 = sub_24075AAC4();
            v55 = v56;
            v84 = 1;
            sub_240684BD8();
            sub_24075AAF4();
            (*(v69 + 8))(v42, v43);
            (*(v19 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v57 = v78;
            v58 = v79 | 0x60;
            goto LABEL_24;
          }
        }

        else
        {
          LOBYTE(v78) = 5;
          sub_240686BA0();
          v51 = v30;
          sub_24075AA54();
          if (!v41)
          {
            v53 = swift_allocObject();
            sub_240686858();
            v52 = v68;
            sub_24075AAA4();
            (*(v70 + 8))(v51, v52);
            (*(v19 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v55 = 0;
            v57 = 0;
            v58 = 0x80;
            goto LABEL_24;
          }
        }
      }
    }

    else if (v33)
    {
      if (v33 == 1)
      {
        LOBYTE(v78) = 1;
        sub_240686CF0();
        v34 = v76;
        sub_24075AA54();
        if (!v34)
        {
          LOBYTE(v78) = 0;
          v35 = v60;
          v53 = sub_24075AAC4();
          v55 = v54;
          v84 = 1;
          sub_240684BD8();
          sub_24075AAF4();
          (*(v65 + 8))(v27, v35);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v57 = v78;
          v58 = v79;
LABEL_24:
          v46 = v72;
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v78) = 2;
        sub_240686C9C();
        v48 = v71;
        v49 = v76;
        sub_24075AA54();
        if (!v49)
        {
          sub_240684BD8();
          v50 = v63;
          sub_24075AAF4();
          (*(v62 + 8))(v48, v50);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v57 = 0;
          v53 = v78;
          v55 = v79;
          v58 = 32;
          goto LABEL_24;
        }
      }
    }

    else
    {
      LOBYTE(v78) = 0;
      sub_240686D44();
      v44 = v76;
      sub_24075AA54();
      if (!v44)
      {
        (*(v61 + 8))(v26, v59);
        (*(v19 + 8))(v22, v18);
        swift_unknownObjectRelease();
        v53 = 0;
        v55 = 0;
        v57 = 0;
        v58 = -96;
        goto LABEL_24;
      }
    }

    (*(v19 + 8))(v22, v18);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_240681310()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  DiscoveryModel.PairingState.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_240681370()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  DiscoveryModel.PairingState.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.CodeType.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) && *(v0 + 8) != 1)
  {
    v4 = 0x6F436C6175736976;
    if (v1 != 1)
    {
      v4 = 0x65646F437271;
    }

    if (v1)
    {
      return v4;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    sub_24075A864();

    v2 = sub_24075AC34();
    MEMORY[0x245CC5E60](v2);

    return 0xD000000000000015;
  }
}

uint64_t sub_240681500(uint64_t a1)
{
  v2 = sub_240686EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24068153C(uint64_t a1)
{
  v2 = sub_240686EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240681578()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646F437469676964;
  v4 = 0x6F436C6175736976;
  if (v1 != 3)
  {
    v4 = 0x65646F437271;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646F436168706C61;
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

uint64_t sub_24068161C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24068AF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240681644(uint64_t a1)
{
  v2 = sub_240686D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240681680(uint64_t a1)
{
  v2 = sub_240686D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406816BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24075ACF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_240681740(uint64_t a1)
{
  v2 = sub_240686E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24068177C(uint64_t a1)
{
  v2 = sub_240686E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406817B8(uint64_t a1)
{
  v2 = sub_240686DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406817F4(uint64_t a1)
{
  v2 = sub_240686DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240681830(uint64_t a1)
{
  v2 = sub_240686F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24068186C(uint64_t a1)
{
  v2 = sub_240686F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406818A8(uint64_t a1)
{
  v2 = sub_240686E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406818E4(uint64_t a1)
{
  v2 = sub_240686E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.CodeType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB158, &qword_240770CA8);
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB160, &qword_240770CB0);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB168, &qword_240770CB8);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB170, &qword_240770CC0);
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB178, &qword_240770CC8);
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = *(v39 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB180, &qword_240770CD0);
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v26 = *v2;
  v27 = *(v2 + 8);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240686D98();
  sub_24075AF74();
  if (v27)
  {
    if (v27 == 1)
    {
      v55 = 2;
      sub_240686E94();
      v29 = v52;
      sub_24075AB54();
      v30 = v50;
      sub_24075ABD4();
      (*(v49 + 8))(v13, v30);
      return (*(v51 + 8))(v25, v29);
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v56 = 3;
          sub_240686E40();
          v34 = v41;
          v35 = v52;
          sub_24075AB54();
          v37 = v42;
          v36 = v43;
        }

        else
        {
          v57 = 4;
          sub_240686DEC();
          v34 = v44;
          v35 = v52;
          sub_24075AB54();
          v37 = v45;
          v36 = v46;
        }

        (*(v37 + 8))(v34, v36);
      }

      else
      {
        v53 = 0;
        sub_240686F3C();
        v35 = v52;
        sub_24075AB54();
        (*(v39 + 8))(v21, v40);
      }

      return (*(v51 + 8))(v25, v35);
    }
  }

  else
  {
    v54 = 1;
    sub_240686EE8();
    v32 = v52;
    sub_24075AB54();
    v33 = v48;
    sub_24075ABD4();
    (*(v47 + 8))(v17, v33);
    return (*(v51 + 8))(v25, v32);
  }
}

uint64_t DiscoveryModel.CodeType.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x245CC6BA0](2);
    }

    else
    {
      v1 = qword_240774388[v1];
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
  }

  return MEMORY[0x245CC6BA0](v1);
}

uint64_t DiscoveryModel.CodeType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24075AE64();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x245CC6BA0](2);
    }

    else
    {
      v1 = qword_240774388[v1];
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
  }

  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.CodeType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1B8, &qword_240770CD8);
  v52 = *(v56 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v56);
  v57 = &v46 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1C0, &qword_240770CE0);
  v55 = *(v53 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v59 = &v46 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1C8, &qword_240770CE8);
  v54 = *(v49 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v49);
  v58 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1D0, &qword_240770CF0);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1D8, &qword_240770CF8);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB1E0, &qword_240770D00);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_240686D98();
  v24 = v62;
  sub_24075AF34();
  if (!v24)
  {
    v25 = v16;
    v47 = v13;
    v27 = v58;
    v26 = v59;
    v62 = v18;
    v28 = v60;
    v29 = sub_24075AB34();
    v30 = (2 * *(v29 + 16)) | 1;
    v63 = v29;
    v64 = v29 + 32;
    v65 = 0;
    v66 = v30;
    v31 = sub_2405B8AFC();
    if (v31 != 5 && v65 == v66 >> 1)
    {
      if (v31 <= 1u)
      {
        if (v31)
        {
          v67 = 1;
          sub_240686EE8();
          sub_24075AA54();
          v45 = v51;
          v34 = sub_24075AAE4();
          (*(v50 + 8))(v12, v45);
          (*(v62 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v33 = 0;
          goto LABEL_17;
        }

        v67 = 0;
        sub_240686F3C();
        sub_24075AA54();
        (*(v48 + 8))(v25, v47);
        (*(v62 + 8))(v21, v17);
        swift_unknownObjectRelease();
        v34 = 0;
      }

      else
      {
        if (v31 == 2)
        {
          v67 = 2;
          sub_240686E94();
          sub_24075AA54();
          v42 = v62;
          v43 = v49;
          v34 = sub_24075AAE4();
          (*(v54 + 8))(v27, v43);
          (*(v42 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v33 = 1;
          goto LABEL_17;
        }

        v32 = v62;
        if (v31 == 3)
        {
          v67 = 3;
          sub_240686E40();
          sub_24075AA54();
          (*(v55 + 8))(v26, v53);
          (*(v32 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v33 = 2;
          v34 = 1;
LABEL_17:
          v40 = v61;
          *v28 = v34;
          *(v28 + 8) = v33;
          return __swift_destroy_boxed_opaque_existential_1(v40);
        }

        v67 = 4;
        sub_240686DEC();
        v44 = v57;
        sub_24075AA54();
        (*(v52 + 8))(v44, v56);
        (*(v32 + 8))(v21, v17);
        swift_unknownObjectRelease();
        v34 = 2;
      }

      v33 = 2;
      goto LABEL_17;
    }

    v35 = sub_24075A8C4();
    swift_allocError();
    v37 = v36;
    v38 = v21;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v37 = &type metadata for DiscoveryModel.CodeType;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v62 + 8))(v38, v17);
    swift_unknownObjectRelease();
  }

  v40 = v61;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_240682820()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x245CC6BA0](2);
    }

    else
    {
      v1 = qword_240774388[v1];
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
  }

  return MEMORY[0x245CC6BA0](v1);
}

uint64_t sub_240682884()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24075AE64();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x245CC6BA0](2);
    }

    else
    {
      v1 = qword_240774388[v1];
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
  }

  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.description.getter()
{
  v24 = *v0;
  v25 = v0[1];
  v26 = *(v0 + 2);
  v27 = *(v0 + 1);
  v28 = *(v0 + 4);
  v29 = *(v0 + 3);
  v31 = *(v0 + 5);
  v30 = v0[48];
  v32 = v0[49];
  v37 = *(v0 + 8);
  v38 = *(v0 + 7);
  v1 = v0[72];
  v20 = v0[80];
  v19 = v0[81];
  v18 = v0[82];
  v3 = *(v0 + 11);
  v2 = *(v0 + 12);
  v4 = *(v0 + 13);
  v5 = v0[112];
  v6 = *(v0 + 136);
  v55 = *(v0 + 120);
  v56 = v6;
  v57 = *(v0 + 152);
  v58 = v0[168];
  v7 = *(v0 + 22);
  v23 = v0[184];
  v8 = *(v0 + 25);
  v21 = *(v0 + 26);
  v22 = *(v0 + 24);
  v17 = v0[216];
  v9 = v0[217];
  v35 = *(v0 + 29);
  v36 = *(v0 + 28);
  v46 = 0;
  v47 = 0xE000000000000000;
  v33 = *(v0 + 31);
  v34 = *(v0 + 30);
  v39 = *(v0 + 33);
  v40 = *(v0 + 32);
  v41 = *(v0 + 35);
  v42 = *(v0 + 34);
  v43 = *(v0 + 36);
  v44 = *(v0 + 37);
  v45 = v0[304];
  sub_24075A864();
  v53 = 0;
  v54 = 0xE000000000000000;
  MEMORY[0x245CC5E60](0x7461747320202020, 0xEB00000000203A65);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v7 = 0;
      v3 = 0;
      v2 = 0;
      v4 = 0;
      v5 = 0;
      v11 = 0;
      v1 = 24;
    }

    else
    {
      v12 = 256;
      if (!v9)
      {
        v12 = 0;
      }

      v11 = v12 | v17;

      v5 = v21;
      v2 = v22;
      sub_24067715C(v22, v8, v21);
      v1 = 16;
      v3 = v23;
      v4 = v8;
    }
  }

  else if (v1)
  {
    v3 = *(&v55 + 1);
    v7 = v55;
    v4 = *(&v56 + 1);
    v2 = v56;
    v11 = *(&v57 + 1);
    v5 = v57;
    v1 = v58 & 0xE3 | 8;
    sub_2406771A8(&v55, &v46);
  }

  else
  {
    v10 = 0x10000;
    if (!v18)
    {
      v10 = 0;
    }

    v7 = v20 | (v19 << 8) | v10;
    sub_2406771E0(v3, v2, v4, v5);
    v11 = 0;
  }

  v46 = v7;
  v47 = v3;
  v48 = v2;
  v49 = v4;
  v50 = v5;
  v51 = v11;
  v52 = v1;
  sub_24075A994();
  sub_2406768E0(v7, v3, v2, v4, v5, v11, v1);
  MEMORY[0x245CC5E60](0xD000000000000010, 0x80000002407885B0);
  LOBYTE(v46) = v24;
  sub_24075A994();
  MEMORY[0x245CC5E60](0x6C6F72202020200ALL, 0xEB00000000203A65);
  LOBYTE(v46) = v25;
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000014, 0x80000002407885D0);
  v46 = v27;
  v47 = v26;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0x786966202020200ALL, 0xEF203A6E69506465);
  v46 = v29;
  v47 = v28;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0x646F63202020200ALL, 0xEF203A6570795465);
  v46 = v31;
  LOBYTE(v47) = v30;
  v13 = DiscoveryModel.CodeType.description.getter();
  MEMORY[0x245CC5E60](v13);

  MEMORY[0x245CC5E60](0xD00000000000001DLL, 0x80000002407885F0);
  if (v32)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v32)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v14, v15);

  MEMORY[0x245CC5E60](0x746C61202020200ALL, 0xEE00203A44495344);
  v46 = v38;
  v47 = v37;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD000000000000014, 0x8000000240788610);
  v46 = v36;
  v47 = v35;
  v48 = v34;
  v49 = v33;
  sub_2406424AC(v36, v35);
  sub_240686F90();
  sub_24075ACD4();
  sub_240609C34(v46, v47);
  MEMORY[0x245CC5E60](0x6D616E202020200ALL, 0xEB00000000203A65);
  v46 = v40;
  v47 = v39;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD000000000000018, 0x8000000240788630);
  v46 = v42;
  v47 = v41;
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0xD00000000000001CLL, 0x8000000240788650);
  v46 = v43;
  type metadata accessor for AKUserAgeRange(0);
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000019, 0x8000000240788670);
  v46 = v44;
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000016, 0x8000000240788690);
  LOBYTE(v46) = v45;
  sub_24075A994();
  return v53;
}

uint64_t sub_240682EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x245CC6BA0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      sub_24075AE94();
      if (v7)
      {
        v9 = v7;
        sub_240618C78(v6, v8);
        v10 = v9;
        sub_24075A6E4();
      }

      else
      {
        sub_240618C78(v6, v8);
      }

      sub_24075AE94();
      if (v8 >> 60 != 15)
      {
        sub_2407596D4();
      }

      v5 += 3;

      result = sub_24058C9E4(v6, v8);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_240682FF8(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x245CC6BA0](v4);
  v25 = v4;
  if (v4)
  {
    v6 = 0;
    v24 = a2 + 32;
    do
    {
      v7 = (v24 + 80 * v6);
      v8 = *v7;
      v9 = v7[2];
      v26 = v7[1];
      v27 = v7[3];
      v10 = v7[5];
      v12 = v7[6];
      v11 = v7[7];
      v14 = v7[8];
      v13 = v7[9];
      v15 = v7[4];

      v30 = v10;
      sub_240618FD8(v10, v12);
      v29 = v13;

      sub_240620D20(a1, v8);
      if (v9)
      {
        sub_24075AE94();
        sub_24075A114();
        if (v15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_24075AE94();
        if (v15)
        {
LABEL_7:
          sub_24075AE94();
          sub_24075A114();
          v28 = v12;
          if (v12)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_24075AE94();
      v28 = v12;
      if (v12)
      {
LABEL_11:
        sub_24075AE94();
        sub_24075A114();
        MEMORY[0x245CC6BA0](*(v11 + 16));
        v16 = *(v11 + 16);
        if (v16)
        {
          v17 = (v11 + 40);
          do
          {
            v18 = *(v17 - 1);
            v19 = *v17;

            sub_24075A114();

            v17 += 2;
            --v16;
          }

          while (v16);
        }

        MEMORY[0x245CC6BA0](*(v14 + 16));
        v20 = *(v14 + 16);
        if (v20)
        {
          v21 = (v14 + 40);
          do
          {
            v22 = *(v21 - 1);
            v23 = *v21;

            sub_24075A114();

            v21 += 2;
            --v20;
          }

          while (v20);
        }

        goto LABEL_4;
      }

LABEL_3:
      sub_24075AE94();
LABEL_4:
      ++v6;
      sub_240682FF8(a1, v29);

      sub_240604C2C(v30, v28);
    }

    while (v6 != v25);
  }

  return result;
}

uint64_t _s12AppleIDSetup14DiscoveryModelV11DiscoveringV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    v2 = 0;
    return v2 & 1;
  }

  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = a1[32];
  v8 = a2[1];
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = a2[32];
  if (v3 == 2)
  {
    v2 = 0;
    if (v8 != 2)
    {
      return v2 & 1;
    }
  }

  else
  {
    v2 = 0;
    if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
    {
      return v2 & 1;
    }
  }

  if (((a1[2] ^ a2[2]) & 1) == 0)
  {
    v16[0] = *(a1 + 1);
    v16[1] = v5;
    v16[2] = v6;
    v17 = v7;
    v14[0] = v9;
    v14[1] = v10;
    v14[2] = v11;
    v15 = v12;
    sub_2406771E0(v4, v5, v6, v7);
    sub_2406771E0(v9, v10, v11, v12);
    v2 = static DiscoveryModel.PairingState.== infix(_:_:)(v16, v14);
    sub_240604AE0(v9, v10, v11, v12);
    sub_240604AE0(v4, v5, v6, v7);
  }

  return v2 & 1;
}

uint64_t _s12AppleIDSetup14DiscoveryModelV10DiscoveredV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v17 = *(a1 + 32);
  v18 = *(a1 + 24);
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((sub_240745F04(*a1, *a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = sub_240753B98(v2, v5);
  v13 = 0;
  if ((v12 & 1) != 0 && ((v3 ^ v6) & 1) == 0)
  {
    if (v4 == 2)
    {
      if (v7 != 2)
      {
LABEL_6:
        v13 = 0;
        return v13 & 1;
      }

LABEL_10:
      v21[0] = v18;
      v21[1] = v17;
      v21[2] = v16;
      v22 = v15;
      v19[0] = v8;
      v19[1] = v9;
      v19[2] = v10;
      v20 = v11;
      sub_2406771E0(v18, v17, v16, v15);
      sub_2406771E0(v8, v9, v10, v11);
      v13 = static DiscoveryModel.PairingState.== infix(_:_:)(v21, v19);
      sub_240604AE0(v8, v9, v10, v11);
      sub_240604AE0(v18, v17, v16, v15);
      return v13 & 1;
    }

    v13 = 0;
    if (v7 != 2 && ((v7 ^ v4) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  return v13 & 1;
}

uint64_t _s12AppleIDSetup14DiscoveryModelV18ChooseFamilyMemberV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v19 = *(a2 + 41);
  v20 = *(a1 + 41);
  v12 = sub_2406E47A8(*a1, *a2);
  result = 0;
  if ((v12 & 1) != 0 && ((v2 ^ v7) & 1) == 0)
  {
    if (v4 == 1)
    {
      sub_24067715C(1, v3, v5);
      if (v9 == 1)
      {
        sub_24067715C(1, v8, v10);
        sub_2406769C4(1, v3, v5);
        if (v6 == v11)
        {
          return v20 ^ v19 ^ 1u;
        }

        return 0;
      }

      sub_24067715C(v9, v8, v10);
LABEL_10:
      sub_2406769C4(v4, v3, v5);
      sub_2406769C4(v9, v8, v10);
      return 0;
    }

    v24 = v4;
    v25 = v3;
    v26 = v5;
    if (v9 == 1)
    {
      sub_24067715C(v4, v3, v5);
      sub_24067715C(1, v8, v10);
      sub_24067715C(v4, v3, v5);

      sub_24058C9E4(v3, v5);
      goto LABEL_10;
    }

    v21 = v9;
    v22 = v8;
    v23 = v10;
    sub_24067715C(v4, v3, v5);
    sub_24067715C(v9, v8, v10);
    sub_24067715C(v4, v3, v5);
    v14 = _s12AppleIDSetup11IdMSAccountV12FamilyMemberV2eeoiySbAE_AEtFZ_0(&v24, &v21);
    v15 = v22;
    v16 = v23;

    sub_24058C9E4(v15, v16);
    v17 = v25;
    v18 = v26;

    sub_24058C9E4(v17, v18);
    sub_2406769C4(v4, v3, v5);
    result = 0;
    if (v14 && ((v6 ^ v11) & 1) == 0)
    {
      return v20 ^ v19 ^ 1u;
    }
  }

  return result;
}

uint64_t _s12AppleIDSetup14DiscoveryModelV13BindableStateV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = a1[40];
  v12 = *(a1 + 4);
  v63 = *(a1 + 3);
  v64 = v12;
  v65 = *(a1 + 5);
  v66 = a1[96];
  v13 = *(a1 + 13);
  v14 = a1[112];
  v15 = *(a1 + 15);
  v16 = *(a1 + 16);
  v17 = *(a1 + 17);
  v18 = a1[144];
  v19 = a1[145];
  v20 = *a2;
  v21 = a2[8];
  v22 = a2[9];
  v23 = a2[10];
  v24 = *(a2 + 2);
  v25 = *(a2 + 3);
  v26 = *(a2 + 4);
  v27 = a2[40];
  v28 = *(a2 + 4);
  v67 = *(a2 + 3);
  v68 = v28;
  v69 = *(a2 + 5);
  v70 = a2[96];
  if (v4 != v20)
  {
    goto LABEL_5;
  }

  v44 = v19;
  v45 = v18;
  v40 = *(a2 + 13);
  v39 = a2[112];
  v43 = *(a2 + 15);
  v42 = *(a2 + 16);
  v41 = *(a2 + 17);
  v37 = a2[145];
  v38 = a2[144];
  LOBYTE(v59) = v5;
  BYTE1(v59) = v6;
  BYTE2(v59) = v7;
  *(&v59 + 1) = v8;
  *&v60 = v9;
  *(&v60 + 1) = v10;
  LOBYTE(v61) = v11;
  LOBYTE(v55) = v21;
  BYTE1(v55) = v22;
  BYTE2(v55) = v23;
  *(&v55 + 1) = v24;
  *&v56 = v25;
  *(&v56 + 1) = v26;
  LOBYTE(v57) = v27;
  sub_2406771E0(v8, v9, v10, v11);
  sub_2406771E0(v24, v25, v26, v27);
  v29 = _s12AppleIDSetup14DiscoveryModelV11DiscoveringV2eeoiySbAE_AEtFZ_0(&v59, &v55);
  sub_240604AE0(*(&v55 + 1), v56, *(&v56 + 1), v57);
  sub_240604AE0(*(&v59 + 1), v60, *(&v60 + 1), v61);
  if ((v29 & 1) == 0)
  {
    goto LABEL_5;
  }

  v51 = v63;
  v52 = v64;
  v53 = v65;
  v54 = v66;
  v47 = v67;
  v48 = v68;
  v49 = v69;
  v50 = v70;
  sub_2406771A8(&v63, v46);
  sub_2406771A8(&v67, v46);
  v30 = _s12AppleIDSetup14DiscoveryModelV10DiscoveredV2eeoiySbAE_AEtFZ_0(&v51, &v47);
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  sub_240686258(&v55);
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  sub_240686258(&v59);
  if (v30)
  {
    *&v51 = v13;
    BYTE8(v51) = v14;
    *&v52 = v15;
    *(&v52 + 1) = v16;
    *&v53 = v17;
    BYTE8(v53) = v45;
    BYTE9(v53) = v44;
    *&v47 = v40;
    BYTE8(v47) = v39;
    *&v48 = v43;
    *(&v48 + 1) = v42;
    *&v49 = v41;
    BYTE8(v49) = v38;
    BYTE9(v49) = v37;

    sub_24067715C(v15, v16, v17);

    sub_24067715C(v43, v42, v41);
    v31 = _s12AppleIDSetup14DiscoveryModelV18ChooseFamilyMemberV2eeoiySbAE_AEtFZ_0(&v51, &v47);
    v32 = v48;
    v33 = v49;

    sub_2406769C4(v32, *(&v32 + 1), v33);
    v34 = v52;
    v35 = v53;

    sub_2406769C4(v34, *(&v34 + 1), v35);
  }

  else
  {
LABEL_5:
    v31 = 0;
  }

  return v31 & 1;
}

BOOL _s12AppleIDSetup14DiscoveryModelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  v5 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 1);
  v7 = *(a1 + 2);
  v119 = *(a1 + 3);
  v124 = *(a1 + 4);
  v118 = *(a1 + 5);
  v122 = a1[48];
  v9 = a1[49];
  v10 = *(a1 + 7);
  v11 = *(a1 + 8);
  v12 = *(a1 + 200);
  v151[7] = *(a1 + 184);
  v151[8] = v12;
  v152 = *(a1 + 108);
  v151[3] = *(a1 + 120);
  v151[5] = *(a1 + 152);
  v151[1] = *(a1 + 88);
  v14 = *(a1 + 28);
  v13 = *(a1 + 29);
  v16 = *(a1 + 30);
  v15 = *(a1 + 31);
  v17 = *(a1 + 32);
  v18 = *(a1 + 33);
  v20 = *(a1 + 34);
  v19 = *(a1 + 35);
  v22 = *(a1 + 36);
  v21 = *(a1 + 37);
  v23 = a1[304];
  v24 = *a2;
  v25 = a2[1];
  v26 = *(a2 + 1);
  v27 = *(a2 + 2);
  v28 = *(a2 + 200);
  v153[7] = *(a2 + 184);
  v153[8] = v28;
  v154 = *(a2 + 108);
  v153[3] = *(a2 + 120);
  v153[5] = *(a2 + 152);
  v153[1] = *(a2 + 88);
  v30 = *(a2 + 3);
  v29 = *(a2 + 4);
  v117 = *(a2 + 5);
  v120 = a2[48];
  v116 = a2[49];
  v115 = *(a2 + 7);
  v31 = *(a2 + 8);
  v151[6] = *(a1 + 168);
  v151[2] = *(a1 + 104);
  v151[4] = *(a1 + 136);
  v151[0] = *(a1 + 72);
  v153[6] = *(a2 + 168);
  v153[2] = *(a2 + 104);
  v153[4] = *(a2 + 136);
  v153[0] = *(a2 + 72);
  if (v5 == v24)
  {
    v113 = v31;
    v114 = v11;
    v112 = v10;
    if (((v6 ^ v25) & 1) == 0)
    {
      v111 = v9;
      v33 = *(a2 + 28);
      v32 = *(a2 + 29);
      v34 = *(a2 + 30);
      v35 = *(a2 + 31);
      v109 = *(a2 + 32);
      v110 = *(a2 + 33);
      v37 = *(a2 + 34);
      v36 = *(a2 + 35);
      v39 = *(a2 + 36);
      v38 = *(a2 + 37);
      v40 = a2[304];
      if (v7)
      {
        if (!v27)
        {
          return 0;
        }

        v108 = *(a2 + 29);
        if (v8 != v26 || v7 != v27)
        {
          v98 = v20;
          v101 = v19;
          v87 = v23;
          v84 = v15;
          v104 = v18;
          v107 = *(a2 + 30);
          v41 = v13;
          v78 = v21;
          v80 = v17;
          v89 = *(a2 + 37);
          v92 = *(a2 + 36);
          v95 = *(a2 + 34);
          v82 = *(a2 + 31);
          v42 = v22;
          v43 = a2[304];
          v44 = *(a2 + 35);
          v45 = sub_24075ACF4();
          v36 = v44;
          v40 = v43;
          v19 = v101;
          v18 = v104;
          v22 = v42;
          v17 = v80;
          v35 = v82;
          v39 = v92;
          v37 = v95;
          v23 = v87;
          v38 = v89;
          v20 = v98;
          v21 = v78;
          v13 = v41;
          v15 = v84;
          if ((v45 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v108 = *(a2 + 29);
        if (v27)
        {
          return 0;
        }
      }

      if (v124)
      {
        if (!v29)
        {
          return 0;
        }

        if (v119 != v30 || v124 != v29)
        {
          v99 = v20;
          v102 = v19;
          v86 = v14;
          v85 = v15;
          v105 = v18;
          v46 = v13;
          v47 = v21;
          v48 = v22;
          v90 = v38;
          v93 = v39;
          v96 = v37;
          v83 = v35;
          v49 = v17;
          v50 = v40;
          v51 = v36;
          v52 = sub_24075ACF4();
          v36 = v51;
          v40 = v50;
          v19 = v102;
          v18 = v105;
          v17 = v49;
          v35 = v83;
          v15 = v85;
          v39 = v93;
          v37 = v96;
          v38 = v90;
          v22 = v48;
          v21 = v47;
          v13 = v46;
          v14 = v86;
          v20 = v99;
          if ((v52 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v29)
      {
        return 0;
      }

      if (!v122)
      {
        if (v120)
        {
          return 0;
        }

        goto LABEL_22;
      }

      if (v122 == 1)
      {
        if (v120 != 1)
        {
          return 0;
        }

LABEL_22:
        result = 0;
        if (v118 != v117)
        {
          return result;
        }

LABEL_34:
        if ((v111 ^ v116))
        {
          return result;
        }

        if (v114)
        {
          if (!v113)
          {
            return 0;
          }

          v53 = v33;
          v106 = v18;
          v94 = v39;
          v97 = v37;
          v121 = v40;
          v123 = v36;
          v91 = v38;
          v79 = v21;
          v81 = v17;
          v100 = v20;
          v103 = v19;
          v125 = v22;
          v54 = v13;
          v55 = v15;
          if ((v112 != v115 || v114 != v113) && (sub_24075ACF4() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v53 = v33;
          v106 = v18;
          v94 = v39;
          v97 = v37;
          v121 = v40;
          v123 = v36;
          v91 = v38;
          v79 = v21;
          v81 = v17;
          v100 = v20;
          v103 = v19;
          v125 = v22;
          v54 = v13;
          v55 = v15;
          if (v113)
          {
            return 0;
          }
        }

        v88 = v23;
        v56 = v14;
        v57 = *(a1 + 184);
        v143 = *(a1 + 168);
        v144 = v57;
        v145 = *(a1 + 200);
        v146 = *(a1 + 108);
        v58 = *(a1 + 120);
        v139 = *(a1 + 104);
        v140 = v58;
        v59 = *(a1 + 152);
        v141 = *(a1 + 136);
        v142 = v59;
        v60 = *(a1 + 88);
        v137 = *(a1 + 72);
        v138 = v60;
        v61 = *(a2 + 184);
        v133 = *(a2 + 168);
        v134 = v61;
        v135 = *(a2 + 200);
        v136 = *(a2 + 108);
        v62 = *(a2 + 120);
        v129 = *(a2 + 104);
        v130 = v62;
        v63 = *(a2 + 152);
        v131 = *(a2 + 136);
        v132 = v63;
        v64 = *(a2 + 88);
        v127 = *(a2 + 72);
        v128 = v64;
        sub_2406770F4(v151, v126);
        sub_2406770F4(v153, v126);
        v65 = _s12AppleIDSetup14DiscoveryModelV13BindableStateV2eeoiySbAE_AEtFZ_0(&v137, &v127);
        v147[6] = v133;
        v147[7] = v134;
        v147[8] = v135;
        v148 = v136;
        v147[2] = v129;
        v147[3] = v130;
        v147[4] = v131;
        v147[5] = v132;
        v147[0] = v127;
        v147[1] = v128;
        sub_24067712C(v147);
        v149[6] = v143;
        v149[7] = v144;
        v149[8] = v145;
        v150 = v146;
        v149[2] = v139;
        v149[3] = v140;
        v149[4] = v141;
        v149[5] = v142;
        v149[0] = v137;
        v149[1] = v138;
        sub_24067712C(v149);
        if ((v65 & 1) == 0)
        {
          return 0;
        }

        v66 = v54;
        if (v54)
        {
          v67 = v55;
          v68 = v56;
          if (v108)
          {
            if (v56 == v53 && v54 == v108 || (v69 = sub_24075ACF4(), v66 = v54, (v69 & 1) != 0))
            {
              v70 = v56;
              v71 = v56;
              v72 = v66;
              sub_2406424AC(v70, v66);
              sub_2406424AC(v53, v108);
              sub_2406424AC(v71, v72);
              v73 = sub_2406B7F50(v67, v35);
              sub_240609C34(v53, v108);

              sub_240609C34(v71, v72);
              if ((v73 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_58;
            }

            sub_2406424AC(v56, v54);
            sub_2406424AC(v53, v108);
            sub_2406424AC(v56, v54);
            sub_240609C34(v53, v108);

            v76 = v56;
            v77 = v54;
LABEL_54:
            sub_240609C34(v76, v77);
            return 0;
          }

          sub_2406424AC(v56, v54);
          sub_2406424AC(v53, 0);
          sub_2406424AC(v56, v54);

          v75 = v54;
          v74 = 0;
        }

        else
        {
          v68 = v56;
          sub_2406424AC(v56, 0);
          v74 = v108;
          if (!v108)
          {
            sub_2406424AC(v53, 0);
            sub_240609C34(v68, 0);
LABEL_58:
            if (v106)
            {
              if (!v110 || (v81 != v109 || v106 != v110) && (sub_24075ACF4() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v110)
            {
              return 0;
            }

            if (v103)
            {
              if (!v123 || (v100 != v97 || v103 != v123) && (sub_24075ACF4() & 1) == 0)
              {
                return 0;
              }

LABEL_73:
              if (v125 == v94 && v79 == v91)
              {
                return qword_2407743A0[v88] == qword_2407743A0[v121];
              }

              return 0;
            }

            if (!v123)
            {
              goto LABEL_73;
            }

            return 0;
          }

          sub_2406424AC(v53, v108);
          v75 = 0;
        }

        sub_240609C34(v68, v75);
        v76 = v53;
        v77 = v74;
        goto LABEL_54;
      }

      if (v118)
      {
        if (v118 == 1)
        {
          result = 0;
          if (v120 == 2 && v117 == 1)
          {
            goto LABEL_34;
          }
        }

        else
        {
          result = 0;
          if (v120 == 2 && v117 == 2)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        result = 0;
        if (v120 == 2 && !v117)
        {
          goto LABEL_34;
        }
      }
    }
  }

  return result;
}

uint64_t _s12AppleIDSetup14DiscoveryModelV5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = (v8 >> 3) & 3;
  v17 = v15 & 0x18;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      if (v17 == 16)
      {
        v76 = *a1;
        LOBYTE(v77) = v3 & 1;
        v78 = v5;
        v79 = v4;
        v28 = v4;
        v80 = v6;
        LOWORD(v81) = v7 & 0x101;
        v69 = v10;
        LOBYTE(v70) = v9 & 1;
        v71 = v11;
        v72 = v12;
        v59 = v6;
        v61 = v12;
        v73 = v13;
        v52 = v13;
        LOWORD(v74) = v14 & 0x101;
        v57 = v10;
        v29 = v10;
        v30 = v12;
        v31 = v6;
        v32 = v13;
        v33 = v8;
        v63 = v15;
        v34 = v9;
        sub_24068B110(v29, v9, v11, v30, v32, v14, v15);
        sub_24068B110(v2, v3, v5, v28, v31, v7, v33);
        v55 = v33;
        sub_24068B110(v2, v3, v5, v28, v31, v7, v33);
        sub_24068B110(v57, v34, v11, v61, v52, v14, v63);
        v35 = _s12AppleIDSetup14DiscoveryModelV18ChooseFamilyMemberV2eeoiySbAE_AEtFZ_0(&v76, &v69);
        v36 = v7;
        v54 = v7;
        v23 = v35;
        sub_2406768E0(v2, v3, v5, v28, v59, v36, v33);
        sub_2406768E0(v57, v34, v11, v61, v52, v14, v63);
        sub_2406768E0(v57, v34, v11, v61, v52, v14, v63);
        v24 = v2;
        v25 = v3;
        v26 = v5;
        v27 = v28;
        goto LABEL_10;
      }
    }

    else if (v17 == 24 && !(v9 | v10 | v11 | v12 | v13 | v14) && v15 == 24)
    {
      sub_2406768E0(*a1, v3, v5, v4, v6, v7, v8);
      sub_2406768E0(0, 0, v11, v12, v13, v14, 0x18u);
      v23 = 1;
      return v23 & 1;
    }

LABEL_16:
    v67 = *(a1 + 16);
    v68 = *(a1 + 24);
    v65 = *a1;
    v66 = *(a1 + 8);
    v45 = *(a1 + 32);
    v46 = *(a2 + 24);
    v47 = *(a1 + 48);
    v48 = *(a2 + 48);
    v49 = *(a2 + 8);
    sub_24068B110(*a1, v66, v67, v4, v6, v7, v8);
    sub_24068B110(v10, v49, v11, v46, v13, v14, v48);
    sub_2406768E0(v65, v66, v67, v68, v45, v7, v47);
    sub_2406768E0(v10, v49, v11, v46, v13, v14, v48);
    v23 = 0;
    return v23 & 1;
  }

  if (v16)
  {
    if (v17 == 8)
    {
      v76 = *a1;
      v77 = v3;
      v64 = v15;
      LOWORD(v78) = v5 & 0xFF01;
      v37 = v4;
      v79 = v4;
      v80 = v6;
      v53 = v13;
      v54 = v7;
      v81 = v7;
      v82 = v8 & 0xE7;
      v69 = v10;
      v70 = v9;
      LOWORD(v71) = v11 & 0xFF01;
      v59 = v6;
      v72 = v12;
      v73 = v13;
      v74 = v14;
      v75 = v15 & 0xE7;
      v58 = v10;
      v38 = v10;
      v39 = v6;
      v40 = v13;
      v41 = v8;
      v42 = v9;
      sub_24068B110(v38, v9, v11, v12, v40, v14, v15);
      sub_24068B110(v2, v3, v5, v37, v39, v54, v41);
      v43 = v39;
      LODWORD(v39) = v41;
      v55 = v41;
      sub_24068B110(v2, v3, v5, v37, v43, v54, v41);
      sub_24068B110(v58, v42, v11, v12, v53, v14, v64);
      v23 = _s12AppleIDSetup14DiscoveryModelV10DiscoveredV2eeoiySbAE_AEtFZ_0(&v76, &v69);
      sub_2406768E0(v2, v3, v5, v37, v59, v54, v39);
      sub_2406768E0(v58, v42, v11, v12, v53, v14, v64);
      sub_2406768E0(v58, v42, v11, v12, v53, v14, v64);
      v24 = v2;
      v25 = v3;
      v26 = v5;
      v27 = v37;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if ((v15 & 0x18) != 0)
  {
    goto LABEL_16;
  }

  LOWORD(v76) = v2 & 0xFF01;
  BYTE2(v76) = BYTE2(v2) & 1;
  v77 = v3;
  v78 = v5;
  v18 = v4;
  v79 = v4;
  LOBYTE(v80) = v6;
  LOWORD(v69) = v10 & 0xFF01;
  BYTE2(v69) = BYTE2(v10) & 1;
  v70 = v9;
  v71 = v11;
  v19 = v12;
  v60 = v12;
  v72 = v12;
  LOBYTE(v73) = v13;
  v20 = v10;
  v21 = v10;
  v56 = v10;
  v22 = v6;
  v51 = v9;
  v55 = v8;
  v62 = v15;
  sub_24068B110(v21, v9, v11, v19, v13, v14, v15);
  sub_24068B110(v2, v3, v5, v18, v22, v7, v55);
  v59 = v22;
  sub_24068B110(v2, v3, v5, v18, v22, v7, v55);
  sub_24068B110(v20, v51, v11, v60, v13, v14, v62);
  v54 = v7;
  v23 = _s12AppleIDSetup14DiscoveryModelV11DiscoveringV2eeoiySbAE_AEtFZ_0(&v76, &v69);
  sub_2406768E0(v2, v3, v5, v18, v22, v54, v55);
  sub_2406768E0(v56, v51, v11, v60, v13, v14, v62);
  sub_2406768E0(v56, v51, v11, v60, v13, v14, v62);
  v24 = v2;
  v25 = v3;
  v26 = v5;
  v27 = v18;
LABEL_10:
  sub_2406768E0(v24, v25, v26, v27, v59, v54, v55);
  return v23 & 1;
}

uint64_t _s12AppleIDSetup14DiscoveryModelV8CodeTypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) != 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v4 != 2 || v3 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2 || v3 != 2)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v4 == 1)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t sub_240684938()
{
  result = qword_27E4BADF8;
  if (!qword_27E4BADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BADF8);
  }

  return result;
}

unint64_t sub_24068498C()
{
  result = qword_27E4BAE00;
  if (!qword_27E4BAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE00);
  }

  return result;
}

unint64_t sub_2406849E0()
{
  result = qword_27E4BAE08;
  if (!qword_27E4BAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE08);
  }

  return result;
}

unint64_t sub_240684A34()
{
  result = qword_27E4BAE10;
  if (!qword_27E4BAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE10);
  }

  return result;
}

unint64_t sub_240684A88()
{
  result = qword_27E4BAE18;
  if (!qword_27E4BAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE18);
  }

  return result;
}

unint64_t sub_240684ADC()
{
  result = qword_27E4BAE20;
  if (!qword_27E4BAE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE20);
  }

  return result;
}

unint64_t sub_240684B30()
{
  result = qword_27E4BAE30;
  if (!qword_27E4BAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE30);
  }

  return result;
}

unint64_t sub_240684B84()
{
  result = qword_27E4BAE38;
  if (!qword_27E4BAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE38);
  }

  return result;
}

unint64_t sub_240684BD8()
{
  result = qword_27E4BAE40;
  if (!qword_27E4BAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE40);
  }

  return result;
}

unint64_t sub_240684C2C()
{
  result = qword_27E4BAE48;
  if (!qword_27E4BAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE48);
  }

  return result;
}

unint64_t sub_240684C80()
{
  result = qword_27E4BAE50;
  if (!qword_27E4BAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE50);
  }

  return result;
}

unint64_t sub_240684D3C()
{
  result = qword_27E4BAE70;
  if (!qword_27E4BAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE70);
  }

  return result;
}

unint64_t sub_240684D90()
{
  result = qword_27E4BAE78;
  if (!qword_27E4BAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE78);
  }

  return result;
}

unint64_t sub_240684DE4()
{
  result = qword_27E4BAE80;
  if (!qword_27E4BAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE80);
  }

  return result;
}

uint64_t sub_240684E38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E694B776F6C66 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7541746567726174 && a2 == 0xED00006761546874 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E69506465786966 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6570795465646F63 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002407886B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C6261646E6962 && a2 == 0xED00006574617453 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x526D6F74706D7973 && a2 == 0xED000074726F7065 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002407886D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002407886F0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240788710 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6976654472656570 && a2 == 0xEF7373616C436563)
  {

    return 13;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_2406852B8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5D0, &qword_240774368);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5D8, &qword_240774370);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5E0, &unk_240774378);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240684D3C();
  v15 = v32;
  sub_24075AF34();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24075AB34();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_2405B8AF4();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24075A8C4();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v24 = &type metadata for DiscoveryModel.Role;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_240684D90();
    sub_24075AA54();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_240684DE4();
    sub_24075AA54();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_240685774()
{
  result = qword_27E4BAEB0;
  if (!qword_27E4BAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAEB0);
  }

  return result;
}

unint64_t sub_2406857C8()
{
  result = qword_27E4BAEB8;
  if (!qword_27E4BAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAEB8);
  }

  return result;
}

unint64_t sub_24068581C()
{
  result = qword_27E4BAEC0;
  if (!qword_27E4BAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAEC0);
  }

  return result;
}

unint64_t sub_240685870()
{
  result = qword_27E4BAEC8;
  if (!qword_27E4BAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAEC8);
  }

  return result;
}

unint64_t sub_2406858C4()
{
  result = qword_27E4BAED0;
  if (!qword_27E4BAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAED0);
  }

  return result;
}

uint64_t sub_240685918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7075746573 && a2 == 0xE500000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726961706572 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617267694D656761 && a2 == 0xEC0000006E6F6974 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646578696DLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

void *sub_240685A74(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5A8, &qword_240774340);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5B0, &qword_240774348);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5B8, &qword_240774350);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5C0, &qword_240774358);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5C8, &qword_240774360);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_240685774();
  v21 = v50;
  sub_24075AF34();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_24075AB34();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_2405B8AF8();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_240685870();
        v36 = v40;
        sub_24075AA54();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_2406858C4();
        v29 = v40;
        sub_24075AA54();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_24068581C();
      v35 = v40;
      sub_24075AA54();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_2406857C8();
      v37 = v40;
      sub_24075AA54();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_24075A8C4();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
  *v15 = &type metadata for DiscoveryModel.FlowKind;
  sub_24075AA64();
  sub_24075A8A4();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_2406860B4()
{
  result = qword_27E4BAF00;
  if (!qword_27E4BAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF00);
  }

  return result;
}

unint64_t sub_240686108()
{
  result = qword_27E4BAF08;
  if (!qword_27E4BAF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF08);
  }

  return result;
}

unint64_t sub_24068615C()
{
  result = qword_27E4BAF10;
  if (!qword_27E4BAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF10);
  }

  return result;
}

unint64_t sub_2406861B0()
{
  result = qword_27E4BAF18;
  if (!qword_27E4BAF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF18);
  }

  return result;
}

unint64_t sub_240686204()
{
  result = qword_27E4BAF20;
  if (!qword_27E4BAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF20);
  }

  return result;
}

unint64_t sub_240686288()
{
  result = qword_27E4BAF58;
  if (!qword_27E4BAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF58);
  }

  return result;
}

unint64_t sub_2406862DC()
{
  result = qword_27E4BAF60;
  if (!qword_27E4BAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF60);
  }

  return result;
}

unint64_t sub_240686330()
{
  result = qword_27E4BAF68;
  if (!qword_27E4BAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF68);
  }

  return result;
}

unint64_t sub_240686384()
{
  result = qword_27E4BAF70;
  if (!qword_27E4BAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF70);
  }

  return result;
}

unint64_t sub_2406863D8()
{
  result = qword_27E4BAF78;
  if (!qword_27E4BAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF78);
  }

  return result;
}

unint64_t sub_24068642C()
{
  result = qword_27E4BAF88;
  if (!qword_27E4BAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF88);
  }

  return result;
}

unint64_t sub_240686480()
{
  result = qword_27E4BAF90;
  if (!qword_27E4BAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF90);
  }

  return result;
}

unint64_t sub_2406864D4()
{
  result = qword_27E4BAF98;
  if (!qword_27E4BAF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF98);
  }

  return result;
}

unint64_t sub_240686528()
{
  result = qword_27E4BAFA0;
  if (!qword_27E4BAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFA0);
  }

  return result;
}

unint64_t sub_24068657C()
{
  result = qword_27E4BAFD0;
  if (!qword_27E4BAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFD0);
  }

  return result;
}

unint64_t sub_2406865D0()
{
  result = qword_27E4BAFD8;
  if (!qword_27E4BAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFD8);
  }

  return result;
}

unint64_t sub_240686624()
{
  result = qword_27E4BAFE0;
  if (!qword_27E4BAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFE0);
  }

  return result;
}

unint64_t sub_240686678()
{
  result = qword_27E4BAFE8;
  if (!qword_27E4BAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFE8);
  }

  return result;
}

unint64_t sub_2406866CC()
{
  result = qword_27E4BAFF0;
  if (!qword_27E4BAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFF0);
  }

  return result;
}

uint64_t sub_240686720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB020, &qword_240770BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240686788(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_2406771E0(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_24068679C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_240604AE0(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t sub_2406867B0()
{
  result = qword_27E4BB030;
  if (!qword_27E4BB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB030);
  }

  return result;
}

unint64_t sub_240686804()
{
  result = qword_27E4BB038;
  if (!qword_27E4BB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB038);
  }

  return result;
}

unint64_t sub_240686858()
{
  result = qword_27E4BB048;
  if (!qword_27E4BB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB048);
  }

  return result;
}

unint64_t sub_2406868AC()
{
  result = qword_27E4BB058;
  if (!qword_27E4BB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB058);
  }

  return result;
}

uint64_t sub_240686900(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BB060, &unk_240770C08);
    sub_240686A38(a2, type metadata accessor for IdMSAccount);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24068699C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8278, &qword_240765670);
    sub_240686A38(a2, type metadata accessor for AIDAServiceType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240686A38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_240686A80()
{
  result = qword_27E4BB088;
  if (!qword_27E4BB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB088);
  }

  return result;
}

uint64_t sub_240686AD4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BB090, &qword_240770C28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240686B4C()
{
  result = qword_27E4BB0E8;
  if (!qword_27E4BB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB0E8);
  }

  return result;
}

unint64_t sub_240686BA0()
{
  result = qword_27E4BB0F0;
  if (!qword_27E4BB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB0F0);
  }

  return result;
}

unint64_t sub_240686BF4()
{
  result = qword_27E4BB0F8;
  if (!qword_27E4BB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB0F8);
  }

  return result;
}

unint64_t sub_240686C48()
{
  result = qword_27E4BB100;
  if (!qword_27E4BB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB100);
  }

  return result;
}

unint64_t sub_240686C9C()
{
  result = qword_27E4BB108;
  if (!qword_27E4BB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB108);
  }

  return result;
}

unint64_t sub_240686CF0()
{
  result = qword_27E4BB110;
  if (!qword_27E4BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB110);
  }

  return result;
}

unint64_t sub_240686D44()
{
  result = qword_27E4BB118;
  if (!qword_27E4BB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB118);
  }

  return result;
}

unint64_t sub_240686D98()
{
  result = qword_27E4BB188;
  if (!qword_27E4BB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB188);
  }

  return result;
}

unint64_t sub_240686DEC()
{
  result = qword_27E4BB190;
  if (!qword_27E4BB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB190);
  }

  return result;
}

unint64_t sub_240686E40()
{
  result = qword_27E4BB198;
  if (!qword_27E4BB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB198);
  }

  return result;
}

unint64_t sub_240686E94()
{
  result = qword_27E4BB1A0;
  if (!qword_27E4BB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1A0);
  }

  return result;
}

unint64_t sub_240686EE8()
{
  result = qword_27E4BB1A8;
  if (!qword_27E4BB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1A8);
  }

  return result;
}

unint64_t sub_240686F3C()
{
  result = qword_27E4BB1B0;
  if (!qword_27E4BB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1B0);
  }

  return result;
}

unint64_t sub_240686F90()
{
  result = qword_27E4BB1E8;
  if (!qword_27E4BB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1E8);
  }

  return result;
}

unint64_t sub_240687024()
{
  result = qword_27E4BB1F0;
  if (!qword_27E4BB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1F0);
  }

  return result;
}

unint64_t sub_240687078()
{
  result = qword_27E4BB1F8;
  if (!qword_27E4BB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1F8);
  }

  return result;
}

unint64_t sub_2406870CC()
{
  result = qword_27E4BB200;
  if (!qword_27E4BB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB200);
  }

  return result;
}

unint64_t sub_240687124()
{
  result = qword_27E4BB208;
  if (!qword_27E4BB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB208);
  }

  return result;
}

unint64_t sub_24068717C()
{
  result = qword_27E4BB210;
  if (!qword_27E4BB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB210);
  }

  return result;
}

unint64_t sub_240687210()
{
  result = qword_27E4BB218;
  if (!qword_27E4BB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB218);
  }

  return result;
}

unint64_t sub_240687268()
{
  result = qword_27E4BB220;
  if (!qword_27E4BB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB220);
  }

  return result;
}

unint64_t sub_2406872FC()
{
  result = qword_27E4BB228;
  if (!qword_27E4BB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB228);
  }

  return result;
}

unint64_t sub_240687354()
{
  result = qword_27E4BB230;
  if (!qword_27E4BB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB230);
  }

  return result;
}

unint64_t sub_2406873E8()
{
  result = qword_27E4BB238;
  if (!qword_27E4BB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB238);
  }

  return result;
}

unint64_t sub_24068747C()
{
  result = qword_27E4BB240;
  if (!qword_27E4BB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB240);
  }

  return result;
}

unint64_t sub_2406874D4()
{
  result = qword_27E4BB248;
  if (!qword_27E4BB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB248);
  }

  return result;
}

unint64_t sub_240687568()
{
  result = qword_27E4BB250;
  if (!qword_27E4BB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB250);
  }

  return result;
}

unint64_t sub_2406875BC()
{
  result = qword_27E4BB258;
  if (!qword_27E4BB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB258);
  }

  return result;
}

unint64_t sub_240687610()
{
  result = qword_27E4BB260;
  if (!qword_27E4BB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB260);
  }

  return result;
}

unint64_t sub_240687668()
{
  result = qword_27E4BB268;
  if (!qword_27E4BB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB268);
  }

  return result;
}

unint64_t sub_2406876FC()
{
  result = qword_27E4BB270;
  if (!qword_27E4BB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB270);
  }

  return result;
}

unint64_t sub_240687754()
{
  result = qword_27E4BB278;
  if (!qword_27E4BB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB278);
  }

  return result;
}

unint64_t sub_2406877E8()
{
  result = qword_27E4BB280;
  if (!qword_27E4BB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB280);
  }

  return result;
}

unint64_t sub_240687840()
{
  result = qword_27E4BB288;
  if (!qword_27E4BB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB288);
  }

  return result;
}

unint64_t sub_2406878D4()
{
  result = qword_27E4BB290;
  if (!qword_27E4BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB290);
  }

  return result;
}

unint64_t sub_24068792C()
{
  result = qword_27E4BB298;
  if (!qword_27E4BB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB298);
  }

  return result;
}

unint64_t sub_2406879C0()
{
  result = qword_27E4BB2A0;
  if (!qword_27E4BB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2A0);
  }

  return result;
}

unint64_t sub_240687A18()
{
  result = qword_27E4BB2A8;
  if (!qword_27E4BB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2A8);
  }

  return result;
}

uint64_t sub_240687AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_240687B00()
{
  result = qword_27E4BB2B0;
  if (!qword_27E4BB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2B0);
  }

  return result;
}

unint64_t sub_240687B58()
{
  result = qword_27E4BB2B8;
  if (!qword_27E4BB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup14DiscoveryModelV12PairingStateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV12FamilyMemberVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_240687BF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240687C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 305) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_240687D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240687D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup14DiscoveryModelV5StateO(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 3) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_240687E3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 5 && *(a1 + 49))
  {
    return (*a1 + 5);
  }

  v3 = (*(a1 + 48) & 4 | (*(a1 + 48) >> 3) & 3) ^ 7;
  if (v3 >= 4)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_240687E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 4)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 5;
    if (a3 >= 5)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 5)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (8 * ((3 * a2) & 3)) | 4;
    }
  }

  return result;
}

uint64_t sub_240687F04(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 48) = *(result + 48) & 0xE3 | (8 * a2);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 24;
  }

  return result;
}

uint64_t sub_240687F50(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_240687FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_240687FFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_240688044(uint64_t result, int a2, int a3)
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
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2406880B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_240688100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24068815C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3B && *(a1 + 25))
  {
    return (*a1 + 59);
  }

  v3 = ((*(a1 + 24) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 24) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2406881B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 59;
    if (a3 >= 0x3B)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_24068821C(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 24) = *(result + 24) & 3 | (32 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 5;
    *(result + 24) = -96;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiscoveryModel.CodeType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DiscoveryModel.CodeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2406882E8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_240688300(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_24068856C()
{
  result = qword_27E4BB2C0;
  if (!qword_27E4BB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2C0);
  }

  return result;
}

unint64_t sub_2406885C4()
{
  result = qword_27E4BB2C8;
  if (!qword_27E4BB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2C8);
  }

  return result;
}

unint64_t sub_24068861C()
{
  result = qword_27E4BB2D0;
  if (!qword_27E4BB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2D0);
  }

  return result;
}

unint64_t sub_240688674()
{
  result = qword_27E4BB2D8;
  if (!qword_27E4BB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2D8);
  }

  return result;
}

unint64_t sub_2406886CC()
{
  result = qword_27E4BB2E0;
  if (!qword_27E4BB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2E0);
  }

  return result;
}

unint64_t sub_240688724()
{
  result = qword_27E4BB2E8;
  if (!qword_27E4BB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2E8);
  }

  return result;
}

unint64_t sub_24068877C()
{
  result = qword_27E4BB2F0;
  if (!qword_27E4BB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2F0);
  }

  return result;
}

unint64_t sub_2406887D4()
{
  result = qword_27E4BB2F8;
  if (!qword_27E4BB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2F8);
  }

  return result;
}

unint64_t sub_24068882C()
{
  result = qword_27E4BB300;
  if (!qword_27E4BB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB300);
  }

  return result;
}

unint64_t sub_240688884()
{
  result = qword_27E4BB308;
  if (!qword_27E4BB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB308);
  }

  return result;
}

unint64_t sub_2406888DC()
{
  result = qword_27E4BB310;
  if (!qword_27E4BB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB310);
  }

  return result;
}

unint64_t sub_240688934()
{
  result = qword_27E4BB318;
  if (!qword_27E4BB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB318);
  }

  return result;
}

unint64_t sub_24068898C()
{
  result = qword_27E4BB320;
  if (!qword_27E4BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB320);
  }

  return result;
}

unint64_t sub_2406889E4()
{
  result = qword_27E4BB328;
  if (!qword_27E4BB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB328);
  }

  return result;
}

unint64_t sub_240688A3C()
{
  result = qword_27E4BB330;
  if (!qword_27E4BB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB330);
  }

  return result;
}

unint64_t sub_240688A94()
{
  result = qword_27E4BB338;
  if (!qword_27E4BB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB338);
  }

  return result;
}

unint64_t sub_240688AEC()
{
  result = qword_27E4BB340;
  if (!qword_27E4BB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB340);
  }

  return result;
}

unint64_t sub_240688B44()
{
  result = qword_27E4BB348;
  if (!qword_27E4BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB348);
  }

  return result;
}

unint64_t sub_240688B9C()
{
  result = qword_27E4BB350;
  if (!qword_27E4BB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB350);
  }

  return result;
}

unint64_t sub_240688BF4()
{
  result = qword_27E4BB358;
  if (!qword_27E4BB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB358);
  }

  return result;
}

unint64_t sub_240688C4C()
{
  result = qword_27E4BB360;
  if (!qword_27E4BB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB360);
  }

  return result;
}

unint64_t sub_240688CA4()
{
  result = qword_27E4BB368;
  if (!qword_27E4BB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB368);
  }

  return result;
}

unint64_t sub_240688CFC()
{
  result = qword_27E4BB370;
  if (!qword_27E4BB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB370);
  }

  return result;
}

unint64_t sub_240688D54()
{
  result = qword_27E4BB378;
  if (!qword_27E4BB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB378);
  }

  return result;
}

unint64_t sub_240688DAC()
{
  result = qword_27E4BB380;
  if (!qword_27E4BB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB380);
  }

  return result;
}

unint64_t sub_240688E04()
{
  result = qword_27E4BB388;
  if (!qword_27E4BB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB388);
  }

  return result;
}

unint64_t sub_240688E5C()
{
  result = qword_27E4BB390;
  if (!qword_27E4BB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB390);
  }

  return result;
}

unint64_t sub_240688EB4()
{
  result = qword_27E4BB398;
  if (!qword_27E4BB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB398);
  }

  return result;
}

unint64_t sub_240688F0C()
{
  result = qword_27E4BB3A0;
  if (!qword_27E4BB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3A0);
  }

  return result;
}

unint64_t sub_240688F64()
{
  result = qword_27E4BB3A8;
  if (!qword_27E4BB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3A8);
  }

  return result;
}

unint64_t sub_240688FBC()
{
  result = qword_27E4BB3B0;
  if (!qword_27E4BB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3B0);
  }

  return result;
}

unint64_t sub_240689014()
{
  result = qword_27E4BB3B8;
  if (!qword_27E4BB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3B8);
  }

  return result;
}

unint64_t sub_24068906C()
{
  result = qword_27E4BB3C0;
  if (!qword_27E4BB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3C0);
  }

  return result;
}

unint64_t sub_2406890C4()
{
  result = qword_27E4BB3C8;
  if (!qword_27E4BB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3C8);
  }

  return result;
}

unint64_t sub_24068911C()
{
  result = qword_27E4BB3D0;
  if (!qword_27E4BB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3D0);
  }

  return result;
}

unint64_t sub_240689174()
{
  result = qword_27E4BB3D8;
  if (!qword_27E4BB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3D8);
  }

  return result;
}

unint64_t sub_2406891CC()
{
  result = qword_27E4BB3E0;
  if (!qword_27E4BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3E0);
  }

  return result;
}

unint64_t sub_240689224()
{
  result = qword_27E4BB3E8;
  if (!qword_27E4BB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3E8);
  }

  return result;
}

unint64_t sub_24068927C()
{
  result = qword_27E4BB3F0;
  if (!qword_27E4BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3F0);
  }

  return result;
}

unint64_t sub_2406892D4()
{
  result = qword_27E4BB3F8;
  if (!qword_27E4BB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3F8);
  }

  return result;
}

unint64_t sub_24068932C()
{
  result = qword_27E4BB400;
  if (!qword_27E4BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB400);
  }

  return result;
}

unint64_t sub_240689384()
{
  result = qword_27E4BB408;
  if (!qword_27E4BB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB408);
  }

  return result;
}

unint64_t sub_2406893DC()
{
  result = qword_27E4BB410;
  if (!qword_27E4BB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB410);
  }

  return result;
}

unint64_t sub_240689434()
{
  result = qword_27E4BB418;
  if (!qword_27E4BB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB418);
  }

  return result;
}

unint64_t sub_24068948C()
{
  result = qword_27E4BB420;
  if (!qword_27E4BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB420);
  }

  return result;
}

unint64_t sub_2406894E4()
{
  result = qword_27E4BB428;
  if (!qword_27E4BB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB428);
  }

  return result;
}

unint64_t sub_24068953C()
{
  result = qword_27E4BB430;
  if (!qword_27E4BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB430);
  }

  return result;
}

unint64_t sub_240689594()
{
  result = qword_27E4BB438;
  if (!qword_27E4BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB438);
  }

  return result;
}

unint64_t sub_2406895EC()
{
  result = qword_27E4BB440;
  if (!qword_27E4BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB440);
  }

  return result;
}

unint64_t sub_240689644()
{
  result = qword_27E4BB448;
  if (!qword_27E4BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB448);
  }

  return result;
}

unint64_t sub_24068969C()
{
  result = qword_27E4BB450;
  if (!qword_27E4BB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB450);
  }

  return result;
}

unint64_t sub_2406896F4()
{
  result = qword_27E4BB458;
  if (!qword_27E4BB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB458);
  }

  return result;
}

unint64_t sub_24068974C()
{
  result = qword_27E4BB460;
  if (!qword_27E4BB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB460);
  }

  return result;
}

unint64_t sub_2406897A4()
{
  result = qword_27E4BB468;
  if (!qword_27E4BB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB468);
  }

  return result;
}

unint64_t sub_2406897FC()
{
  result = qword_27E4BB470;
  if (!qword_27E4BB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB470);
  }

  return result;
}

unint64_t sub_240689854()
{
  result = qword_27E4BB478;
  if (!qword_27E4BB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB478);
  }

  return result;
}

unint64_t sub_2406898AC()
{
  result = qword_27E4BB480;
  if (!qword_27E4BB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB480);
  }

  return result;
}

unint64_t sub_240689904()
{
  result = qword_27E4BB488;
  if (!qword_27E4BB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB488);
  }

  return result;
}

unint64_t sub_24068995C()
{
  result = qword_27E4BB490;
  if (!qword_27E4BB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB490);
  }

  return result;
}

unint64_t sub_2406899B4()
{
  result = qword_27E4BB498;
  if (!qword_27E4BB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB498);
  }

  return result;
}

unint64_t sub_240689A0C()
{
  result = qword_27E4BB4A0;
  if (!qword_27E4BB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4A0);
  }

  return result;
}

unint64_t sub_240689A64()
{
  result = qword_27E4BB4A8;
  if (!qword_27E4BB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4A8);
  }

  return result;
}

unint64_t sub_240689ABC()
{
  result = qword_27E4BB4B0;
  if (!qword_27E4BB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4B0);
  }

  return result;
}

unint64_t sub_240689B14()
{
  result = qword_27E4BB4B8;
  if (!qword_27E4BB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4B8);
  }

  return result;
}

unint64_t sub_240689B6C()
{
  result = qword_27E4BB4C0;
  if (!qword_27E4BB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4C0);
  }

  return result;
}

unint64_t sub_240689BC4()
{
  result = qword_27E4BB4C8;
  if (!qword_27E4BB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4C8);
  }

  return result;
}

unint64_t sub_240689C1C()
{
  result = qword_27E4BB4D0;
  if (!qword_27E4BB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4D0);
  }

  return result;
}

unint64_t sub_240689C74()
{
  result = qword_27E4BB4D8;
  if (!qword_27E4BB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4D8);
  }

  return result;
}

unint64_t sub_240689CCC()
{
  result = qword_27E4BB4E0;
  if (!qword_27E4BB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4E0);
  }

  return result;
}

unint64_t sub_240689D24()
{
  result = qword_27E4BB4E8;
  if (!qword_27E4BB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4E8);
  }

  return result;
}

unint64_t sub_240689D7C()
{
  result = qword_27E4BB4F0;
  if (!qword_27E4BB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4F0);
  }

  return result;
}

unint64_t sub_240689DD4()
{
  result = qword_27E4BB4F8;
  if (!qword_27E4BB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4F8);
  }

  return result;
}

unint64_t sub_240689E2C()
{
  result = qword_27E4BB500;
  if (!qword_27E4BB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB500);
  }

  return result;
}

unint64_t sub_240689E84()
{
  result = qword_27E4BB508;
  if (!qword_27E4BB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB508);
  }

  return result;
}

unint64_t sub_240689EDC()
{
  result = qword_27E4BB510;
  if (!qword_27E4BB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB510);
  }

  return result;
}

unint64_t sub_240689F34()
{
  result = qword_27E4BB518;
  if (!qword_27E4BB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB518);
  }

  return result;
}

unint64_t sub_240689F8C()
{
  result = qword_27E4BB520;
  if (!qword_27E4BB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB520);
  }

  return result;
}

unint64_t sub_240689FE4()
{
  result = qword_27E4BB528;
  if (!qword_27E4BB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB528);
  }

  return result;
}

unint64_t sub_24068A03C()
{
  result = qword_27E4BB530;
  if (!qword_27E4BB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB530);
  }

  return result;
}

unint64_t sub_24068A094()
{
  result = qword_27E4BB538;
  if (!qword_27E4BB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB538);
  }

  return result;
}

unint64_t sub_24068A0EC()
{
  result = qword_27E4BB540;
  if (!qword_27E4BB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB540);
  }

  return result;
}

unint64_t sub_24068A144()
{
  result = qword_27E4BB548;
  if (!qword_27E4BB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB548);
  }

  return result;
}

unint64_t sub_24068A19C()
{
  result = qword_27E4BB550;
  if (!qword_27E4BB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB550);
  }

  return result;
}

unint64_t sub_24068A1F4()
{
  result = qword_27E4BB558;
  if (!qword_27E4BB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB558);
  }

  return result;
}

unint64_t sub_24068A24C()
{
  result = qword_27E4BB560;
  if (!qword_27E4BB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB560);
  }

  return result;
}

unint64_t sub_24068A2A4()
{
  result = qword_27E4BB568;
  if (!qword_27E4BB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB568);
  }

  return result;
}

unint64_t sub_24068A2FC()
{
  result = qword_27E4BB570;
  if (!qword_27E4BB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB570);
  }

  return result;
}

unint64_t sub_24068A354()
{
  result = qword_27E4BB578;
  if (!qword_27E4BB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB578);
  }

  return result;
}

unint64_t sub_24068A3AC()
{
  result = qword_27E4BB580;
  if (!qword_27E4BB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB580);
  }

  return result;
}

unint64_t sub_24068A404()
{
  result = qword_27E4BB588;
  if (!qword_27E4BB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB588);
  }

  return result;
}

unint64_t sub_24068A45C()
{
  result = qword_27E4BB590;
  if (!qword_27E4BB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB590);
  }

  return result;
}

unint64_t sub_24068A4B4()
{
  result = qword_27E4BB598;
  if (!qword_27E4BB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB598);
  }

  return result;
}

unint64_t sub_24068A50C()
{
  result = qword_27E4BB5A0;
  if (!qword_27E4BB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB5A0);
  }

  return result;
}

uint64_t sub_24068A560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473627573 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEB00000000676E69 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEA00000000006465 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69736F6F6863 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068A6D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7265766F63736964 && a2 == 0xEB00000000676E69;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEA00000000006465 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646572696170 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69736F6F6863 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068A83C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614D73776F6C6C61 && a2 == 0xEC0000006C61756ELL;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEE006C61756E614DLL || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240788730 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53676E6972696170 && a2 == 0xEC00000065746174)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068A9B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E756F636361 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000240788750 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240788780 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53676E6972696170 && a2 == 0xEC00000065746174)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068AB78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737265626D656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002407887A0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEE007265626D654DLL || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7250646C756F6873 && a2 == 0xED0000646565636FLL || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002407887C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068AD44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617453746F6ELL && a2 == 0xEA00000000006465;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7041889 && a2 == 0xE300000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E616863 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465726577736E61 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24068AF4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F436168706C61 && a2 == 0xE900000000000065 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F437469676964 && a2 == 0xE900000000000065 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6175736976 && a2 == 0xEA00000000006564 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F437271 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

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

void sub_24068B110(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v9 = (a7 >> 3) & 3;
  if (v9 > 1)
  {
    if (v9 == 2)
    {

      sub_24067715C(a3, a4, a5);
    }
  }

  else
  {
    if (v9)
    {
      v16 = a7;

      v13 = v16 & 0xE7;
      a2 = a4;
      v11 = a5;
      v12 = a6;
    }

    else
    {
      v11 = a3;
      v12 = a4;
      v13 = a5;
    }

    sub_2406771E0(a2, v11, v12, v13);
  }
}

uint64_t static ObjcArchivable.unarchive(from:backing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  v11 = sub_24075A714();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-v14];
  (*(a4 + 24))(a1, a3, a4);
  v20 = a3;
  v21 = a4;
  v22 = v5;
  v23 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24062239C(sub_24068B3B4, v19, v16, a3, &v24, a5);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_24068B3B4(uint64_t a1, void *a2)
{
  v5 = v2[4];
  result = (*(v2[3] + 32))(a1, v2[5], v2[2]);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t ObjcArchivableWrapper.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_24075A714();
  return (*(*(v7 - 8) + 16))(a1, &v1[v5], v7);
}

uint64_t ObjcArchivableWrapper.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_24075A714();
  (*(*(v7 - 8) + 40))(&v1[v5], a1, v7);
  return swift_endAccess();
}

uint64_t (*ObjcArchivableWrapper.wrappedValue.modify())()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL ObjcArchivableWrapper.needsUnarchivalDevelopment.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *((v2 & v1) + 0x70);
  swift_beginAccess();
  (*(v7 + 16))(v10, &v0[v11], v6);
  v12 = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness) != 1;
  (*(v7 + 8))(v10, v6);
  return v12;
}

id ObjcArchivableWrapper.__allocating_init(encoder:wrappedValue:)(uint64_t *a1, uint64_t a2)
{
  v6 = *(v2 + 10);
  v5 = *(v2 + 11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24075A714();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11 - 8];
  sub_2405F7830(a1, v18);
  (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  v13 = objc_allocWithZone(v2);
  v14 = sub_24068CB24(v18, a2, v12);
  (*(v9 + 8))(v12, v8);
  v15 = sub_24075A714();
  (*(*(v15 - 8) + 8))(a2, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

id ObjcArchivableWrapper.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = sub_24068CD90(a1);
  v4 = *(v1 + 80);
  v5 = sub_24075A714();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v3;
}

id ObjcArchivableWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v7 = sub_24075A714();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = *((v5 & v4) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_24075A714();
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = *(v34 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v36 = *(AssociatedTypeWitness - 8);
  v18 = *(v36 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v33 - v19;
  v21 = sub_24075A084();
  LODWORD(v5) = [a1 decodeBoolForKey_];

  if (!v5)
  {
    swift_getObjectType();
    (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
    v27 = sub_24068CD90(v10);
    (*(v37 + 8))(v10, v38);

    v28 = *v2;
    v29 = *MEMORY[0x277D85000];
LABEL_6:
    v30 = *((v29 & v28) + 0x30);
    v31 = *((v29 & v28) + 0x34);
    swift_deallocPartialClassInstance();
    return v27;
  }

  v22 = MEMORY[0x277D85000];
  v23 = a1;
  (*(v11 + 24))(a1, v6, v11);
  v24 = v36;
  if ((*(v36 + 48))(v17, 1, AssociatedTypeWitness) != 1)
  {
    (*(v24 + 32))(v20, v17, AssociatedTypeWitness);
    swift_getObjectType();
    v27 = sub_24068CEE0(v20);

    (*(v24 + 8))(v20, AssociatedTypeWitness);
    v28 = *v2;
    v29 = *v22;
    goto LABEL_6;
  }

  (*(v34 + 8))(v17, v35);
  swift_getObjectType();
  v25 = *((*v22 & *v2) + 0x30);
  v26 = *((*v22 & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ObjcArchivableWrapper.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v30 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_2407593D4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2407593E4();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v3 & v2) + 0x50);
  v12 = sub_24075A714();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v29 - v19;
  sub_2405B044C(&v1[*((v3 & v2) + 0x60)], &v35, &qword_27E4BB5E8, &qword_240785350);
  if (v36)
  {
    v21 = isa;
    sub_24058C9C0(&v35, v37);
    v22 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
    swift_beginAccess();
    v23 = v33;
    (*(v33 + 16))(v16, &v1[v22], v12);
    v24 = (*(v17 + 48))(v16, 1, v11);
    if (v24 == 1)
    {
      (*(v23 + 8))(v16, v12);
      v25 = v21;
    }

    else
    {
      (*(v17 + 32))(v20, v16, v11);
      v25 = v21;
      (*(*(v30 + 88) + 16))(v21, v37, v11);
      (*(v17 + 8))(v20, v11);
    }

    v28 = sub_24075A084();
    [(objc_class *)v25 encodeBool:v24 != 1 forKey:v28];

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_24068D13C(&v35);
    sub_2407593C4();
    sub_2405BD228(MEMORY[0x277D84F90]);
    sub_24068D1A4();
    sub_2407595B4();
    v26 = sub_2407593B4();
    (*(v32 + 8))(v10, v7);
    v27 = sub_2407595C4();

    [(objc_class *)isa failWithError:v27];
  }
}

void sub_24068C310(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  ObjcArchivableWrapper.encode(with:)(v4);
}

uint64_t ObjcArchivableWrapper.developingUnarchive(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v3 = *v2;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v6 = sub_24075A714();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v35 - v8;
  v41 = *((v4 & v3) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_24075A714();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v35 - v21;
  v23 = v4 & v3;
  v24 = v20;
  v25 = *(v23 + 112);
  swift_beginAccess();
  (*(v11 + 16))(v17, &v2[v25], v24);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v17, v24);
    return (*(*(v5 - 8) + 56))(v44, 1, 1, v5);
  }

  else
  {
    v36 = v11;
    v37 = v24;
    v27 = v2;
    (*(v18 + 32))(v22, v17, AssociatedTypeWitness);
    v28 = v45;
    (*(v41 + 32))(v22, v42, v5);
    v45 = v28;
    if (v28)
    {
      return (*(v18 + 8))(v22, AssociatedTypeWitness);
    }

    else
    {
      (*(v18 + 8))(v22, AssociatedTypeWitness);
      v29 = v43;
      (*(*(v5 - 8) + 56))(v43, 0, 1, v5);
      v30 = v2;
      v31 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
      swift_beginAccess();
      v33 = v39;
      v32 = v40;
      (*(v39 + 40))(&v27[v31], v29, v40);
      swift_endAccess();
      v34 = v38;
      (*(v18 + 56))(v38, 1, 1, AssociatedTypeWitness);
      swift_beginAccess();
      (*(v36 + 40))(&v30[v25], v34, v37);
      swift_endAccess();
      return (*(v33 + 16))(v44, &v30[v31], v32);
    }
  }
}

id ObjcArchivableWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ObjcArchivableWrapper.init()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_24068D1FC();
}

void sub_24068C888(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_24068D1FC();
}

uint64_t sub_24068C8CC(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  sub_24068D13C(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  v5 = *((*v3 & *a1) + 0x68);
  v6 = *((v4 & v2) + 0x50);
  v7 = sub_24075A714();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);
  v8 = *((*v3 & *a1) + 0x70);
  v9 = *((v4 & v2) + 0x58);
  swift_getAssociatedTypeWitness();
  v10 = sub_24075A714();
  v11 = *(*(v10 - 8) + 8);

  return v11(&a1[v8], v10);
}

id ObjcArchivableWrapperClassProducer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s12AppleIDSetup21ObjcArchivableWrapperCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24068CB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x277D85000];
  v8 = *v3;
  v9 = *MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v3) + 0x68);
  (*(*(*((*MEMORY[0x277D85000] & *v3) + 0x50) - 8) + 56))(&v3[v10], 1, 1, *((*MEMORY[0x277D85000] & *v3) + 0x50));
  v11 = *((*v7 & *v3) + 0x70);
  v12 = *((v9 & v8) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&v3[v11], 1, 1, AssociatedTypeWitness);
  sub_2405B044C(a1, &v3[*((*v7 & *v3) + 0x60)], &qword_27E4BB5E8, &qword_240785350);
  swift_beginAccess();
  v14 = sub_24075A714();
  (*(*(v14 - 8) + 24))(&v3[v10], a2, v14);
  swift_endAccess();
  swift_beginAccess();
  v15 = sub_24075A714();
  (*(*(v15 - 8) + 24))(&v3[v11], a3, v15);
  swift_endAccess();
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  sub_24068D13C(a1);
  return v16;
}

id sub_24068CD90(uint64_t a1)
{
  v4 = *(v1 + 10);
  v3 = *(v1 + 11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  (*(*(AssociatedTypeWitness - 8) + 56))(v14 - v9, 1, 1, AssociatedTypeWitness);
  v11 = objc_allocWithZone(v1);
  v12 = sub_24068CB24(v14, a1, v10);
  (*(v7 + 8))(v10, v6);
  return v12;
}

id sub_24068CEE0(uint64_t a1)
{
  v4 = *(v1 + 10);
  v3 = *(v1 + 11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = sub_24075A714();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  (*(*(v4 - 8) + 56))(v20 - v14, 1, 1, v4);
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 16))(v10, a1, AssociatedTypeWitness);
  (*(v16 + 56))(v10, 0, 1, AssociatedTypeWitness);
  v17 = objc_allocWithZone(v1);
  v18 = sub_24068CB24(v20, v15, v10);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  return v18;
}

uint64_t sub_24068D13C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5E8, &qword_240785350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24068D1A4()
{
  result = qword_27E4BB5F0;
  if (!qword_27E4BB5F0)
  {
    sub_2407593E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB5F0);
  }

  return result;
}

uint64_t sub_24068D27C(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = sub_24075A714();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    swift_getAssociatedTypeWitness();
    result = sub_24075A714();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24068D3EC()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BB690);
  v1 = __swift_project_value_buffer(v0, qword_27E4BB690);
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280FADA00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ModernAppleIDAuthenticationContext.__allocating_init(_:signInModelModifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___AKModernAppleIDAuthenticationContext_signInModelModifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v7[OBJC_IVAR___AKModernAppleIDAuthenticationContext_model] = a1;
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ModernAppleIDAuthenticationContext.init(_:signInModelModifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___AKModernAppleIDAuthenticationContext_signInModelModifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR___AKModernAppleIDAuthenticationContext_model] = a1;
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ModernAppleIDAuthenticationContext();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ModernAppleIDAuthenticationContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24068D708(uint64_t a1, SEL *a2)
{
  v3 = [objc_allocWithZone(v2) *a2];
  swift_unknownObjectRelease();
  return v3;
}

id ModernAppleIDAuthenticationContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernAppleIDAuthenticationContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24068D83C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for AuthenticationModel(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24068D8D0, 0, 0);
}

uint64_t sub_24068D8D0()
{
  v1 = [*(v0 + 24) username];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24075A0B4();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  v6 = [*(v0 + 24) _password];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24075A0B4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  *(v0 + 80) = *(*(v0 + 24) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v12 = sub_24075A344();
  *(v0 + 88) = v12;
  *(v0 + 96) = v11;

  return MEMORY[0x2822009F8](sub_24068DA28, v12, v11);
}

uint64_t sub_24068DA28()
{
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_24068DAE8;
  v6 = v0[10];
  v7 = v0[5];

  return sub_2405CEFE8(v7, v3, v6, ObjectType, v2);
}

uint64_t sub_24068DAE8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24068DBE4, 0, 0);
}

uint64_t sub_24068DBE4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 128) = *(v1 + *(*(v0 + 32) + 36));
  sub_24069EFD8(v1, type metadata accessor for AuthenticationModel);
  v3 = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  *(v0 + 112) = v3;
  if (v3)
  {
    [v3 _updateWithValuesFromContext_];
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v3 = sub_24068DCA4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24068DCA4()
{
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_24068DD64;
  v6 = v0[10];
  v7 = v0[5];

  return sub_2405CEFE8(v7, v3, v6, ObjectType, v2);
}

uint64_t sub_24068DD64()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24068DE60, 0, 0);
}

uint64_t sub_24068DE60()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v7 + *(*(v0 + 32) + 32));

  sub_24069EFD8(v7, type metadata accessor for AuthenticationModel);
  *(v8 + 33) = 514;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = -1;
  *v8 = v6;
  *(v8 + 8) = v5;

  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = 0;
  *(v8 + 35) = v2;
  *(v8 + 36) = 0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v9;
  *(v8 + 56) = 0;

  v10 = *(v0 + 8);

  return v10();
}

void __swiftcall AKAppleIDAuthenticationContext.init(basedOn:)(AKAppleIDAuthenticationContext *__return_ptr retstr, AKAppleIDAuthenticationContext *basedOn)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  if (v3)
  {
    v4 = v3;
    [v4 _updateWithValuesFromContext_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24068DFC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for AuthenticationModel(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24068E05C, 0, 0);
}

uint64_t sub_24068E05C()
{
  v1 = [*(v0 + 24) username];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24075A0B4();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  v6 = [*(v0 + 24) _password];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24075A0B4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  *(v0 + 80) = *(*(v0 + 24) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v12 = sub_24075A344();
  *(v0 + 88) = v12;
  *(v0 + 96) = v11;

  return MEMORY[0x2822009F8](sub_24068E1B4, v12, v11);
}

uint64_t sub_24068E1B4()
{
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_24068E274;
  v6 = v0[10];
  v7 = v0[5];

  return sub_2405CEFE8(v7, v3, v6, ObjectType, v2);
}

uint64_t sub_24068E274()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24068E370, 0, 0);
}

uint64_t sub_24068E370()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 128) = *(v1 + *(*(v0 + 32) + 36));
  sub_24069EFD8(v1, type metadata accessor for AuthenticationModel);
  v3 = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  *(v0 + 112) = v3;
  if (v3)
  {
    [v3 _updateWithValuesFromContext_];
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v3 = sub_24068E430;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24068E430()
{
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_24068E4F0;
  v6 = v0[10];
  v7 = v0[5];

  return sub_2405CEFE8(v7, v3, v6, ObjectType, v2);
}

uint64_t sub_24068E4F0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24068E5EC, 0, 0);
}

uint64_t sub_24068E5EC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v7 + *(*(v0 + 32) + 32));

  sub_24069EFD8(v7, type metadata accessor for AuthenticationModel);
  *(v8 + 33) = 514;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = -1;
  *v8 = v6;
  *(v8 + 8) = v5;

  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = 1;
  *(v8 + 35) = v2;
  *(v8 + 36) = 0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v9;
  *(v8 + 56) = 0;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t ModernAppleIDAuthenticationContext.presentBasicLoginUI()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24068E710, 0, 0);
}

uint64_t sub_24068E710()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_24068E7B4;
  v3 = *(v0 + 64);

  return sub_240698700(v0 + 16, v3);
}

uint64_t sub_24068E7B4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v9 = *(*v1 + 32);
  v10 = *(*v1 + 16);
  v5 = *(*v1 + 48);

  if (!v0)
  {
    v6 = *(v2 + 56);
    *v6 = v10;
    *(v6 + 16) = v9;
    *(v6 + 32) = v5;
  }

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_24068E8E0(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = swift_task_alloc();
  v2[35] = v3;
  *v3 = v2;
  v3[1] = sub_24068E97C;

  return sub_24068D83C((v2 + 15));
}

uint64_t sub_24068E97C()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v7 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 200);
  *(v1 + 80) = *(v1 + 184);
  *(v1 + 96) = v4;
  *(v1 + 112) = *(v1 + 216);
  v5 = *(v1 + 136);
  *(v1 + 16) = *(v1 + 120);
  *(v1 + 32) = v5;
  *(v1 + 48) = *(v1 + 152);
  *(v1 + 64) = v3;

  return MEMORY[0x2822009F8](sub_24068EAA4, 0, 0);
}

uint64_t sub_24068EAA4()
{
  v1 = v0[34];
  v0[36] = *&v1[OBJC_IVAR___AKModernAppleIDAuthenticationContext_model];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = v0 + 2;
  v3 = swift_allocObject();
  v0[38] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v6 = sub_24075A344();
  v0[39] = v6;
  v0[40] = v5;

  return MEMORY[0x2822009F8](sub_24068EBB0, v6, v5);
}

uint64_t sub_24068EBB0()
{
  v1 = v0[36];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_24068ECA4;
  v5 = v0[37];
  v6 = v0[38];
  v7 = v0[36];

  return sub_2405D1864((v0 + 28), v2, sub_24069F0E0, v5, &unk_240774870, v6, v7, &type metadata for AuthenticationModel.BasicLogin.Submission);
}

uint64_t sub_24068ECA4()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);
  if (v0)
  {
    v7 = sub_24068EF34;
  }

  else
  {
    v7 = sub_24068EDE0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24068EDE0()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);

  sub_2405AE36C(v0 + 16);

  return MEMORY[0x2822009F8](sub_24068EE58, 0, 0);
}

uint64_t sub_24068EE58()
{
  v13 = v0;
  v1 = *(v0 + 336);
  v8 = *(v0 + 224);
  v9 = *(v0 + 240);
  v10 = *(v0 + 256);
  sub_2405A26A4(v11);
  if (v1)
  {
    sub_2405B0558(v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
  }

  else
  {
    v6 = v11[1];
    v7 = v11[0];
    v3 = v12;
    v4 = *(v0 + 264);
    sub_2405B0558(v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
    *v4 = v7;
    *(v4 + 16) = v6;
    *(v4 + 32) = v3;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24068EF34()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);

  return MEMORY[0x2822009F8](sub_24068EFA4, 0, 0);
}

uint64_t sub_24068EFA4()
{
  sub_2405AE36C(v0 + 16);
  v1 = *(v0 + 336);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24068F17C(const void *a1, void *a2)
{
  *(v2 + 56) = a2;
  *(v2 + 64) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_24068F1F4, 0, 0);
}

uint64_t sub_24068F1F4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_24068F298;
  v3 = *(v0 + 56);

  return sub_240698700(v0 + 16, v3);
}

uint64_t sub_24068F298()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *v1;
  v6 = *(*v1 + 32);
  *(v3 + 88) = *(v3 + 16);
  *(v3 + 80) = v0;
  *(v3 + 104) = v6;
  *(v3 + 120) = *(v2 + 48);

  if (v0)
  {
    v7 = sub_24068F52C;
  }

  else
  {
    v7 = sub_24068F3D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24068F3D0()
{
  v1 = *(v0 + 64);

  if (!v1)
  {
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 96);

    goto LABEL_11;
  }

  if (*(v0 + 96))
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    v4 = sub_24075A084();

    if (*(v0 + 112))
    {
      goto LABEL_4;
    }

LABEL_8:
    v6 = 0;
    if (*(v0 + 120))
    {
      goto LABEL_5;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v4 = 0;
  if (!*(v0 + 112))
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v0 + 104);
  v6 = sub_24075A084();

  if (!*(v0 + 120))
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = sub_240759F54();

LABEL_10:
  v11 = *(v0 + 64);
  (v11)[2](v11, v4, v6, v7, 0);
  _Block_release(v11);

LABEL_11:
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24068F52C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 80);
    v5 = sub_2407595C4();

    (v3)[2](v3, 0, 0, 0, v5);
    _Block_release(v3);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24068F60C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069F0D8;
  v3 = *(v0 + 16);

  return sub_240699434(v3);
}

uint64_t sub_24068F6AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AuthenticationModel(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24068F740, 0, 0);
}

uint64_t sub_24068F740()
{
  v0[6] = *(v0[3] + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v2 = sub_24075A344();
  v0[7] = v2;
  v0[8] = v1;

  return MEMORY[0x2822009F8](sub_24068F818, v2, v1);
}

uint64_t sub_24068F818()
{
  v1 = v0[6];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_24068F8D4;
  v6 = v0[5];
  v7 = v0[6];

  return sub_2405CEFE8(v6, v3, v7, ObjectType, v2);
}

uint64_t sub_24068F8D4()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24068F9D0, 0, 0);
}

uint64_t sub_24068F9D0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v1 + *(v0[4] + 32));
  v0[10] = v3;

  sub_24069EFD8(v1, type metadata accessor for AuthenticationModel);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = v0[7];
  v6 = v0[8];

  return MEMORY[0x2822009F8](sub_24068FA7C, v5, v6);
}

uint64_t sub_24068FA7C()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_24068FB74;
  v5 = v0[11];
  v6 = v0[6];
  v7 = MEMORY[0x277D839B0];

  return sub_2405D1864((v0 + 14), v2, sub_24069F0A8, v5, &unk_240774860, 0, v6, v7);
}

uint64_t sub_24068FB74()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_24068FD3C;
  }

  else
  {
    v7 = sub_24068FCB0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24068FCB0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  v5 = *(v0 + 112);

  *v4 = v5;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24068FD3C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

id sub_24068FDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AuthenticationModel.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v11 = result;
    [result _updateWithValuesFromContext_];

    v9[32] = 0;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 33) = 514;
    *(v9 + 5) = v11;
    *(v9 + 6) = a3;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 11) = 0;
    v9[96] = -1;

    swift_storeEnumTagMultiPayload();
    v12 = type metadata accessor for AuthenticationModel(0);
    return sub_24069ED5C(v9, a1 + *(v12 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240690094(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_24069010C, 0, 0);
}

uint64_t sub_24069010C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406901AC;
  v3 = *(v0 + 16);

  return sub_240699434(v3);
}

uint64_t sub_2406901AC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_24069F0B0;
  }

  else
  {
    v5 = sub_24069F0C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t ModernAppleIDAuthenticationContext.presentLoginAlertWithError(_:title:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  return MEMORY[0x2822009F8](sub_2406902F0, 0, 0);
}

uint64_t sub_2406902F0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = v2;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_2406903C0;
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);

  return sub_240698D68(v0 + 16, v11, v7, v12, v9, v10, v8);
}

uint64_t sub_2406903C0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v6 = *v1;
  v11 = *(*v1 + 32);
  v12 = *(*v1 + 16);
  v7 = *(*v1 + 48);

  if (!v0)
  {
    v8 = *(v2 + 56);
    *v8 = v12;
    *(v8 + 16) = v11;
    *(v8 + 32) = v7;
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_24069052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[70] = a7;
  v7[69] = a6;
  v7[68] = a5;
  v7[67] = a4;
  v7[66] = a3;
  v7[65] = a2;
  v7[64] = a1;
  return MEMORY[0x2822009F8](sub_240690564, 0, 0);
}

uint64_t sub_240690564(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 520);
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v5 = *(v3 + 520);
  v6 = sub_2407595C4();
  v7 = [v6 ak:-7012 isAuthenticationErrorWithCode:?];

  if (!v7)
  {
    if (qword_27E4B5F68 != -1)
    {
      swift_once();
    }

    v15 = sub_240759AE4();
    *(v3 + 632) = __swift_project_value_buffer(v15, qword_27E4BB690);
    v16 = v4;
    v17 = sub_240759AC4();
    v18 = sub_24075A5C4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v4;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_240579000, v17, v18, "Failed to login with error: %@, showing alert then proceeding", v19, 0xCu);
      sub_24061DD28(v20);
      MEMORY[0x245CC76B0](v20, -1, -1);
      MEMORY[0x245CC76B0](v19, -1, -1);
    }

    v23 = *(v3 + 528);
    v24 = *(v3 + 520);
    v28 = *(v3 + 536);
    v29 = *(v3 + 552);

    *(v3 + 640) = *(v23 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
    v25 = swift_task_alloc();
    *(v3 + 648) = v25;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    *(v25 + 48) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
    sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
    v26 = sub_24075A344();
    a3 = v27;
    *(v3 + 656) = v26;
    *(v3 + 664) = v27;
    a1 = sub_240690F60;
    a2 = v26;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  if (qword_27E4B5F68 != -1)
  {
    swift_once();
  }

  v8 = sub_240759AE4();
  __swift_project_value_buffer(v8, qword_27E4BB690);
  v9 = sub_240759AC4();
  v10 = sub_24075A5C4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_240579000, v9, v10, "Username is present but password is missing and required. Client should provide us with password.", v11, 2u);
    MEMORY[0x245CC76B0](v11, -1, -1);
  }

  v12 = swift_task_alloc();
  *(v3 + 568) = v12;
  *v12 = v3;
  v12[1] = sub_2406908D4;
  v13 = *(v3 + 528);

  return sub_24068DFC8(v3 + 328);
}

uint64_t sub_2406908D4()
{
  v1 = *v0;
  v2 = (*v0 + 328);
  v3 = *(*v0 + 568);
  v8 = *v0;

  v4 = v2[2];
  *(v1 + 168) = v2[3];
  v5 = v2[5];
  *(v1 + 184) = v2[4];
  *(v1 + 200) = v5;
  v6 = v2[1];
  *(v1 + 120) = *v2;
  *(v1 + 136) = v6;
  *(v1 + 216) = *(v1 + 424);
  *(v1 + 152) = v4;

  return MEMORY[0x2822009F8](sub_240690A00, 0, 0);
}

uint64_t sub_240690A00()
{
  v1 = v0[66];
  v0[72] = *&v1[OBJC_IVAR___AKModernAppleIDAuthenticationContext_model];
  v2 = swift_task_alloc();
  v0[73] = v2;
  *(v2 + 16) = v0 + 15;
  v3 = swift_allocObject();
  v0[74] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0);
  v6 = sub_24075A344();
  v0[75] = v6;
  v0[76] = v5;

  return MEMORY[0x2822009F8](sub_240690B10, v6, v5);
}

uint64_t sub_240690B10()
{
  v1 = v0[72];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[77] = v4;
  *v4 = v0;
  v4[1] = sub_240690C08;
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[72];

  return sub_2405D1864((v0 + 59), v2, sub_24069F0E0, v6, &unk_240774848, v5, v7, &type metadata for AuthenticationModel.BasicLogin.Submission);
}

uint64_t sub_240690C08()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 624) = v0;

  v5 = *(v2 + 608);
  v6 = *(v2 + 600);
  if (v0)
  {
    v7 = sub_240690E88;
  }

  else
  {
    v7 = sub_240690D44;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_240690D44()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);

  sub_2405AE36C(v0 + 120);

  return MEMORY[0x2822009F8](sub_240690DC0, 0, 0);
}

uint64_t sub_240690DC0()
{
  v13 = v0;
  v1 = *(v0 + 624);
  v8 = *(v0 + 472);
  v9 = *(v0 + 488);
  v10 = *(v0 + 504);
  sub_2405A26A4(v11);
  v6 = v11[1];
  v7 = v11[0];
  v2 = v12;
  sub_2405B0558(v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
  if (!v1)
  {
    v4 = *(v0 + 512);
    *v4 = v7;
    *(v4 + 16) = v6;
    *(v4 + 32) = v2;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240690E88()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);

  return MEMORY[0x2822009F8](sub_240690EFC, 0, 0);
}

uint64_t sub_240690EFC()
{
  sub_2405AE36C(v0 + 120);
  v1 = *(v0 + 624);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240690F60()
{
  v1 = v0[80];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[84] = v4;
  *v4 = v0;
  v4[1] = sub_240691054;
  v5 = v0[81];
  v6 = v0[80];
  v7 = MEMORY[0x277D84F78] + 8;

  return sub_2405D1864(v4, v2, sub_24069EE60, v5, &unk_240774820, 0, v6, v7);
}

uint64_t sub_240691054()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v4 = *v1;
  *(*v1 + 680) = v0;

  v5 = *(v2 + 664);
  v6 = *(v2 + 656);
  if (v0)
  {
    v7 = sub_240691308;
  }

  else
  {
    v7 = sub_240691190;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_240691190()
{
  v1 = *(v0 + 648);

  return MEMORY[0x2822009F8](sub_2406911F8, 0, 0);
}

uint64_t sub_2406911F8()
{
  v1 = v0[79];
  v2 = sub_240759AC4();
  v3 = sub_24075A5C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "User proceeded past alert, continuing to attempt login", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[86] = v5;
  *v5 = v0;
  v5[1] = sub_240691388;
  v6 = v0[66];

  return sub_24068D83C((v0 + 28));
}

uint64_t sub_240691308()
{
  v1 = *(v0 + 648);

  return MEMORY[0x2822009F8](sub_240691370, 0, 0);
}

uint64_t sub_240691388()
{
  v1 = *v0;
  v2 = *(*v0 + 688);
  v7 = *v0;

  v3 = *(v1 + 304);
  *(v1 + 80) = *(v1 + 288);
  *(v1 + 96) = v3;
  *(v1 + 112) = *(v1 + 320);
  v4 = *(v1 + 240);
  *(v1 + 16) = *(v1 + 224);
  *(v1 + 32) = v4;
  v5 = *(v1 + 272);
  *(v1 + 48) = *(v1 + 256);
  *(v1 + 64) = v5;

  return MEMORY[0x2822009F8](sub_2406914A4, 0, 0);
}

uint64_t sub_2406914A4()
{
  v1 = v0[66];
  v2 = swift_task_alloc();
  v0[87] = v2;
  *(v2 + 16) = v0 + 2;
  v3 = swift_allocObject();
  v0[88] = v3;
  *(v3 + 16) = v1;
  v4 = v0[83];
  v5 = v0[82];
  v6 = v1;

  return MEMORY[0x2822009F8](sub_240691550, v5, v4);
}

uint64_t sub_240691550()
{
  v1 = v0[80];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[89] = v4;
  *v4 = v0;
  v4[1] = sub_240691648;
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[80];

  return sub_2405D1864((v0 + 54), v2, sub_24069EE70, v6, &unk_240774838, v5, v7, &type metadata for AuthenticationModel.BasicLogin.Submission);
}

uint64_t sub_240691648()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v4 = *v1;
  *(*v1 + 720) = v0;

  v5 = *(v2 + 664);
  v6 = *(v2 + 656);
  if (v0)
  {
    v7 = sub_2406918C4;
  }

  else
  {
    v7 = sub_240691784;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}