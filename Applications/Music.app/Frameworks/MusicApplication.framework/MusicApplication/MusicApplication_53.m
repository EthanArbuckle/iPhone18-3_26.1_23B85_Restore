id sub_481088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8820;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  isa = sub_AB9740().super.isa;
  v5 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &unk_E03780);
  v6 = sub_2BAFF8();
  v7 = [v5 propertySetByCombiningWithPropertySet:v6];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v10 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v11 = [v9 propertySetByCombiningWithPropertySet:v10];

  v12 = [v7 propertySetByCombiningWithPropertySet:v11];
  v13 = sub_10F414();
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  v15 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
  v16 = [v14 propertySetByCombiningWithPropertySet:v15];

  return v16;
}

id sub_4812B8()
{
  result = sub_4812D8();
  qword_E71A20 = result;
  return result;
}

id sub_4812D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = objc_opt_self();
  v7 = [v6 propertySetWithProperties:isa];

  sub_13C80(0, &qword_DED7C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v10 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v11 = [v9 propertySetByCombiningWithPropertySet:v10];

  v12 = [v7 propertySetByCombiningWithPropertySet:v11];
  v13 = sub_10F414();
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 32) = sub_AB92A0();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_AB92A0();
  *(v15 + 56) = v17;
  v18 = sub_AB9740().super.isa;
  v19 = [v6 propertySetWithProperties:v18];

  v20 = [v14 propertySetByCombiningWithPropertySet:v19];
  return v20;
}

id sub_481564()
{
  result = sub_481584();
  qword_E71A28 = result;
  return result;
}

id sub_481584()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DA0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  isa = sub_AB9740().super.isa;
  v8 = [objc_opt_self() propertySetWithProperties:isa];

  return v8;
}

void sub_48169C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  isa = sub_AB9740().super.isa;
  v4 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E71A30 = v4;
}

uint64_t sub_48176C()
{
  sub_489D30(v0, v10);
  if (v12)
  {
    if (v12 == 1)
    {
      v8[0] = v10[0];
      v8[1] = v10[1];
      v9 = v11;
      sub_15F84(v8, v5, &unk_E00060);
      v1 = v6;
      if (v6)
      {
        v2 = v7;
        __swift_project_boxed_opaque_existential_1(v5, v6);
        v3 = (*(v2 + 8))(v1, v2);
        __swift_destroy_boxed_opaque_existential_0(v5);
      }

      else
      {
        sub_12E1C(v5, &unk_E00060);
        v3 = 0x746C757365526F6ELL;
      }

      sub_12E1C(v8, &unk_E00060);
      return v3;
    }

    else
    {
      return 0x6948686372616573;
    }
  }

  else if (LOBYTE(v10[0]))
  {
    return 0x72617453646C6F63;
  }

  else
  {
    return 0x746E65636572;
  }
}

uint64_t sub_4818EC()
{
  sub_AB93F0();
}

uint64_t sub_4819E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_48C5DC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_481A14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6579297;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  v7 = 0xE600000000000000;
  v8 = 0x7463656C6573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000000B48D50;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000797265;
  v10 = 0x75516C65636E6163;
  if (v2 != 1)
  {
    v10 = 0x7865547261656C63;
    v9 = 0xE900000000000074;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_481AD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v33[-v6];
  v8 = type metadata accessor for Search.Item(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v33[-v12];
  v14 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v14);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_487D68(v1, v16, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_70DF8(v16, &v34);
      v22 = *&v35[8];
      __swift_project_boxed_opaque_existential_1(&v34, *&v35[8]);
      v20 = (*(*(&v22 + 1) + 8))(v22, *(&v22 + 1));
      __swift_destroy_boxed_opaque_existential_0(&v34);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (v16[1])
      {
        v20 = *aSearch_11;
      }

      else
      {
        *&v34 = *(v16 + 1);
        v20 = sub_ABB330();
      }
    }

    else if (*v16)
    {
      return 0x7262694C72756F59;
    }

    else
    {
      static ApplicationCapabilities.shared.getter(&v34);
      v24 = *&v35[16];

      sub_70C54(&v34);
      v25 = sub_472A84(2, v24);

      if (v25)
      {
        return 0x73754D656C707041;
      }

      else
      {
        return 0x6F69646152;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8) + 64);
      sub_489CC8(v16, v13, type metadata accessor for Search.Item);
      sub_36B0C(v16 + v18, v7, &unk_E00050);
      sub_487D68(v13, v11, type metadata accessor for Search.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_486014(v11, type metadata accessor for Search.Item);
        sub_15F84(v7, v5, &unk_E00050);
        v19 = type metadata accessor for Search.ResultContext(0);
        if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
        {
          sub_12E1C(v5, &unk_E00050);
        }

        else
        {
          v26 = Search.ResultContext.source(for:)(v13);
          sub_486014(v5, type metadata accessor for Search.ResultContext);
          if (v26 != 2)
          {
            if (v26)
            {
              sub_12E1C(v7, &unk_E00050);
              sub_486014(v13, type metadata accessor for Search.Item);
              return 0x497972617262696CLL;
            }

            v27 = Search.Item.modelObject.getter();
            if (v27)
            {
              v28 = v27;
              v29 = [v27 innermostModelObject];

              v20 = MPModelObject.bestIdentifier(for:)(3, 2u);
              v31 = v30;

              if (v31)
              {
                sub_12E1C(v7, &unk_E00050);
                sub_486014(v13, type metadata accessor for Search.Item);
                return v20;
              }
            }

            sub_12E1C(v7, &unk_E00050);
            sub_486014(v13, type metadata accessor for Search.Item);

            return 0;
          }
        }

        sub_12E1C(v7, &unk_E00050);
        sub_486014(v13, type metadata accessor for Search.Item);
        return 0;
      }

      sub_12E1C(v7, &unk_E00050);
      sub_486014(v13, type metadata accessor for Search.Item);
      v20 = *v11;
    }

    else
    {
      v23 = v16[1];
      v34 = *v16;
      *v35 = v23;
      *&v35[9] = *(v16 + 25);
      sub_15F84(&v34, v33, &qword_DFE5D0);
      if (v33[40] == 255)
      {
        sub_12E1C(v33, &qword_DFE5D0);
        v20 = 0x72617453646C6F63;
      }

      else
      {
        v20 = sub_48176C();
        sub_30E4AC(v33);
      }

      sub_12E1C(&v34, &qword_DFE5D0);
    }
  }

  else
  {
    v21 = *v16;
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        return 0x686372616573;
      }

      else if (v21 == 4)
      {
        return 0x7463656C6573;
      }

      else
      {
        return 0xD000000000000015;
      }
    }

    else if (*v16)
    {
      if (v21 == 1)
      {
        return 0x75516C65636E6163;
      }

      else
      {
        return 0x7865547261656C63;
      }
    }

    else
    {
      return 6579297;
    }
  }

  return v20;
}

uint64_t sub_482220()
{
  v1 = v0;
  v2 = type metadata accessor for Search.Item(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v7, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_486014(v7, type metadata accessor for Search.Event);
      return 9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8);
      v10 = v7[*(v9 + 48)];
      sub_489CC8(v7, v4, type metadata accessor for Search.Item);
      if (v10)
      {
        v15 = &v7[*(v9 + 64)];
        v16 = sub_ABB3C0();

        if ((v16 & 1) == 0)
        {
          if (v10 > 4)
          {
          }

          else
          {
            v17 = sub_ABB3C0();

            if ((v17 & 1) == 0)
            {
              v18 = Search.Item.modelObject.getter();
              sub_486014(v4, type metadata accessor for Search.Item);
              if (v18)
              {

                v19 = 19;
              }

              else
              {
                v19 = 11;
              }

              sub_12E1C(v15, &unk_E00050);
              return v19;
            }
          }
        }
      }

      else
      {
        v14 = *(v9 + 64);

        v15 = &v7[v14];
      }

      sub_486014(v4, type metadata accessor for Search.Item);
      sub_12E1C(v15, &unk_E00050);
    }

    else
    {
      sub_486014(v7, type metadata accessor for Search.Event);
    }

    return 5;
  }

  v12 = *v7;

  if (v12 == 27)
  {
    v13 = 12;
  }

  else
  {
    v13 = 5;
  }

  if (v12 == 26)
  {
    return 11;
  }

  else
  {
    return v13;
  }
}

unint64_t sub_482604()
{
  v1 = v0;
  v2 = type metadata accessor for Search.Item(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v7, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_486014(v7, type metadata accessor for Search.Event);
      return 28;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v12 = *v7;
    }

    else
    {
      return 28;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8);
      v10 = v7[*(v9 + 48)];
      v11 = *(v9 + 64);
      sub_489CC8(v7, v4, type metadata accessor for Search.Item);
      if (v10 == 5)
      {
        sub_486014(v4, type metadata accessor for Search.Item);
        sub_12E1C(&v7[v11], &unk_E00050);
        return 44;
      }

      else if (v10)
      {
        v13 = Search.Item.modelObject.getter();
        if (v13)
        {
          v14 = v13;
          v15 = [v13 innermostModelObject];
          sub_486014(v4, type metadata accessor for Search.Item);

          swift_getObjectType();
          v16 = swift_conformsToProtocol2();

          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            v12 = 28;
          }

          else
          {
            v12 = 31;
          }

          sub_12E1C(&v7[v11], &unk_E00050);
        }

        else
        {
          sub_486014(v4, type metadata accessor for Search.Item);
          sub_12E1C(&v7[v11], &unk_E00050);
          return 26;
        }
      }

      else
      {
        sub_486014(v4, type metadata accessor for Search.Item);
        sub_12E1C(&v7[v11], &unk_E00050);
        return 5;
      }
    }

    else
    {
      sub_486014(v7, type metadata accessor for Search.Event);
      return 0;
    }
  }

  else
  {
    return 0xD2C36100905uLL >> (8 * *v7);
  }

  return v12;
}

uint64_t sub_482930()
{
  v1 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v0, v3, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
  }

  else if (EnumCaseMultiPayload)
  {
    sub_486014(v3, type metadata accessor for Search.Event);
  }

  return 0;
}

id sub_482A2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - v7;
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = type metadata accessor for Search.Item(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v16, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    return *(v16 + 3);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22 = type metadata accessor for Search.Event;
    v23 = v16;
LABEL_9:
    sub_486014(v23, v22);
    return 0;
  }

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8) + 64);
  sub_489CC8(v16, v13, type metadata accessor for Search.Item);
  sub_36B0C(&v16[v18], v10, &unk_E00050);
  sub_15F84(v10, v8, &unk_E00050);
  v19 = type metadata accessor for Search.ResultContext(0);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v8, 1, v19) == 1)
  {
    sub_12E1C(v10, &unk_E00050);
    sub_486014(v13, type metadata accessor for Search.Item);
    sub_12E1C(v8, &unk_E00050);
    return 0;
  }

  v24 = Search.ResultContext.source(for:)(v13);
  sub_486014(v8, type metadata accessor for Search.ResultContext);
  if (v24 == 2)
  {
LABEL_8:
    sub_12E1C(v10, &unk_E00050);
    v22 = type metadata accessor for Search.Item;
    v23 = v13;
    goto LABEL_9;
  }

  if (v24)
  {
    sub_12E1C(v10, &unk_E00050);
    sub_486014(v13, type metadata accessor for Search.Item);
    return 0;
  }

  v25 = Search.Item.modelObject.getter();
  if (!v25)
  {
    goto LABEL_8;
  }

  v38 = v25;
  v26 = [v25 identifiers];
  v27 = MPIdentifierSet.bestStoreIdentifier.getter();
  if (v28)
  {
    v29 = v28;
    v30 = v27;

    sub_15F84(v10, v5, &unk_E00050);
    if (v20(v5, 1, v19) == 1)
    {

      sub_12E1C(v10, &unk_E00050);
      sub_486014(v13, type metadata accessor for Search.Item);
      sub_12E1C(v5, &unk_E00050);
    }

    else
    {
      v31 = *&v5[*(v19 + 32)];

      sub_486014(v5, type metadata accessor for Search.ResultContext);
      if (v31)
      {
        if (*(v31 + 16) && (v32 = sub_2EBF88(v30, v29), (v33 & 1) != 0))
        {
          sub_9ACA0(*(v31 + 56) + 40 * v32, &v40);
        }

        else
        {
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
        }

        if (*(&v41 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
          if (swift_dynamicCast())
          {
            v34 = v39;
            if (*(v39 + 16) && (v35 = sub_2EBF88(0x73636972796CLL, 0xE600000000000000), (v36 & 1) != 0))
            {
              sub_808B0(*(v34 + 56) + 32 * v35, &v40);
              sub_12E1C(v10, &unk_E00050);
              sub_486014(v13, type metadata accessor for Search.Item);
              swift_dynamicCast();
            }

            else
            {
              sub_12E1C(v10, &unk_E00050);
              sub_486014(v13, type metadata accessor for Search.Item);
            }
          }

          else
          {
            sub_12E1C(v10, &unk_E00050);
            sub_486014(v13, type metadata accessor for Search.Item);
          }

          return v38;
        }

        sub_12E1C(v10, &unk_E00050);
        sub_486014(v13, type metadata accessor for Search.Item);
        goto LABEL_31;
      }

      sub_12E1C(v10, &unk_E00050);
      sub_486014(v13, type metadata accessor for Search.Item);
    }

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
LABEL_31:
    sub_12E1C(&v40, &qword_DF2BD0);
    return v38;
  }

  sub_12E1C(v10, &unk_E00050);
  sub_486014(v13, type metadata accessor for Search.Item);

  return v38;
}

uint64_t sub_4831AC()
{
  v1 = type metadata accessor for Search.Item(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v0, v6, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09918);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF8820;
    *(inited + 32) = 25705;
    *(inited + 40) = 0xE200000000000000;
    v32 = 0x737265746C6966;
    v33 = 0xE700000000000000;
    sub_ABAD10();
    strcpy((inited + 88), "locationType");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    v32 = 0x666C656873;
    v33 = 0xE500000000000000;
    sub_ABAD10();
    *(inited + 144) = 0xD000000000000010;
    *(inited + 152) = 0x8000000000B66470;
    v32 = 0;
    sub_ABAD10();
    v15 = sub_988FC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBE8);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_AF4EC0;
    *(v16 + 32) = sub_3E92E8(v15);

    sub_486014(v6, type metadata accessor for Search.Event);
    return v16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_486014(v6, type metadata accessor for Search.Event);
    return 0;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8);
  v9 = v6[*(v8 + 48)];
  v10 = *(v8 + 64);
  sub_489CC8(v6, v3, type metadata accessor for Search.Item);
  v11 = Search.Item.modelObject.getter();
  if (!v11)
  {
    sub_486014(v3, type metadata accessor for Search.Item);
LABEL_18:
    sub_12E1C(&v6[v10], &unk_E00050);
    return 0;
  }

  v12 = v11;
  v13 = [v11 innermostModelObject];

  if (v9)
  {
    v18 = sub_ABB3C0();

    if (v18)
    {
      goto LABEL_11;
    }

    sub_486014(v3, type metadata accessor for Search.Item);

    goto LABEL_18;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09918);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_AF85D0;
  *(v19 + 32) = 25705;
  *(v19 + 40) = 0xE200000000000000;
  v20 = MPModelObject.bestIdentifier(for:)(0, 2u);
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (v21)
  {
    v23 = v21;
  }

  v32 = v22;
  v33 = v23;
  v31 = v13;
  sub_ABAD10();
  *(v19 + 88) = 1701667182;
  *(v19 + 96) = 0xE400000000000000;
  v24 = sub_482604();
  v32 = MetricsEvent.Click.ActionType.rawValue.getter(v24);
  v33 = v25;
  sub_ABAD10();
  strcpy((v19 + 144), "locationType");
  *(v19 + 157) = 0;
  *(v19 + 158) = -5120;
  v26 = sub_482220();
  v32 = MetricsEvent.TargetType.rawValue.getter(v26);
  v33 = v27;
  sub_ABAD10();
  *(v19 + 200) = 0xD000000000000010;
  *(v19 + 208) = 0x8000000000B66470;
  v32 = 0;
  sub_ABAD10();
  v28 = sub_988FC(v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBE8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_AF4EC0;
  *(v29 + 32) = sub_3E92E8(v28);
  sub_486014(v3, type metadata accessor for Search.Item);

  sub_12E1C(&v6[v10], &unk_E00050);
  return v29;
}

uint64_t sub_483824()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.search);
  __swift_project_value_buffer(v0, static Logger.search);
  return static Logger.music(_:)();
}

uint64_t static Logger.search.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.search);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_48394C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  sub_15F84(a1, v9, &unk_E00060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060);
  if (swift_dynamicCast())
  {
    v6 = v8;
  }

  else
  {
    v6 = 8;
  }

  return sub_4BFCDC(v6, v4, v5, a2);
}

void sub_483A84(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v6 = *v3;
  v5 = v3[1];
  v7 = [objc_opt_self() standardUserDefaults];
  a3(&_swiftEmptySetSingleton, v6, v5);
}

unint64_t sub_483B0C()
{
  result = qword_E09298;
  if (!qword_E09298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E09290);
    sub_483B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09298);
  }

  return result;
}

unint64_t sub_483B90()
{
  result = qword_E092A0;
  if (!qword_E092A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092A0);
  }

  return result;
}

uint64_t sub_483C44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_483C84()
{
  result = qword_E092A8;
  if (!qword_E092A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092A8);
  }

  return result;
}

unint64_t sub_483CD8()
{
  result = qword_E092B8;
  if (!qword_E092B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092B8);
  }

  return result;
}

Swift::Int sub_483D2C(void **a1)
{
  v2 = *(type metadata accessor for Search.Recents.Result.Item(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_163E1C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_483DD4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_483DD4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_ABB2B0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Search.Recents.Result.Item(0);
        v6 = sub_AB97D0();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Search.Recents.Result.Item(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_484164(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_483F00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_483F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Search.Recents.Result.Item(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_487D68(v23, v17, type metadata accessor for Search.Recents.Result.Item);
      sub_487D68(v20, v13, type metadata accessor for Search.Recents.Result.Item);
      v24 = sub_AB3380();
      sub_486014(v13, type metadata accessor for Search.Recents.Result.Item);
      result = sub_486014(v17, type metadata accessor for Search.Recents.Result.Item);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_489CC8(v23, v35, type metadata accessor for Search.Recents.Result.Item);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_489CC8(v25, v20, type metadata accessor for Search.Recents.Result.Item);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_484164(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for Search.Recents.Result.Item(0);
  v112 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v116 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_163DA4(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_484AC8(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_163DA4(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_163D18(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_487D68(v110 + v24 * v23, v18, type metadata accessor for Search.Recents.Result.Item);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_487D68(v26, v116, type metadata accessor for Search.Recents.Result.Item);
      LODWORD(v111) = sub_AB3380();
      sub_486014(v28, type metadata accessor for Search.Recents.Result.Item);
      result = sub_486014(v18, type metadata accessor for Search.Recents.Result.Item);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_487D68(v30, v18, type metadata accessor for Search.Recents.Result.Item);
        v31 = v116;
        sub_487D68(v5, v116, type metadata accessor for Search.Recents.Result.Item);
        v32 = sub_AB3380() & 1;
        sub_486014(v31, type metadata accessor for Search.Recents.Result.Item);
        result = sub_486014(v18, type metadata accessor for Search.Recents.Result.Item);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_489CC8(v39 + v38, v107, type metadata accessor for Search.Recents.Result.Item);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_489CC8(v107, v39 + v33, type metadata accessor for Search.Recents.Result.Item);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_6A6C0(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_6A6C0((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_484AC8(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_163DA4(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_163D18(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_487D68(v5, v18, type metadata accessor for Search.Recents.Result.Item);
    v93 = v116;
    sub_487D68(v90, v116, type metadata accessor for Search.Recents.Result.Item);
    a4 = sub_AB3380();
    sub_486014(v93, type metadata accessor for Search.Recents.Result.Item);
    result = sub_486014(v18, type metadata accessor for Search.Recents.Result.Item);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for Search.Recents.Result.Item;
    v94 = v115;
    sub_489CC8(v5, v115, type metadata accessor for Search.Recents.Result.Item);
    swift_arrayInitWithTakeFrontToBack();
    sub_489CC8(v94, v90, type metadata accessor for Search.Recents.Result.Item);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_484AC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for Search.Recents.Result.Item(0);
  v8 = __chkstk_darwin(v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
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

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_487D68(v30, v43, type metadata accessor for Search.Recents.Result.Item);
          v32 = v44;
          sub_487D68(v27, v44, type metadata accessor for Search.Recents.Result.Item);
          v33 = sub_AB3380();
          sub_486014(v32, type metadata accessor for Search.Recents.Result.Item);
          sub_486014(v31, type metadata accessor for Search.Recents.Result.Item);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
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

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_487D68(a2, v43, type metadata accessor for Search.Recents.Result.Item);
        v21 = v44;
        sub_487D68(a4, v44, type metadata accessor for Search.Recents.Result.Item);
        v22 = sub_AB3380();
        sub_486014(v21, type metadata accessor for Search.Recents.Result.Item);
        sub_486014(v20, type metadata accessor for Search.Recents.Result.Item);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_484FF8(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_484FF8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Search.Recents.Result.Item(0);
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

uint64_t sub_4850DC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Search.Recents.Result.Item(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v11 = v27 - v10;
  if (a1 < 0)
  {
    goto LABEL_30;
  }

  if (!a1)
  {
    return a2;
  }

  v12 = a2[2];
  if (!v12)
  {

    a2 = _swiftEmptyArrayStorage;
LABEL_26:

    return a2;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v27[1] = a2;
  v15 = a2 + v14;
  v16 = *(v9 + 72);
  v17 = v12 - 1;
  a2 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  v29 = v7;
  v30 = v14;
  v31 = v27 - v10;
  v28 = a1;
  while (1)
  {
    result = sub_487D68(v15, v11, type metadata accessor for Search.Recents.Result.Item);
    v22 = v18[2];
    if (v22 < a1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_6D8F8(0, v22 + 1, 1);
        v7 = v29;
        v18 = v32;
      }

      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        sub_6D8F8(v19 > 1, v20 + 1, 1);
        v7 = v29;
        v18 = v32;
      }

      v18[2] = v20 + 1;
      v14 = v30;
      v21 = v18 + v30 + v20 * v16;
      v11 = v31;
      sub_489CC8(v31, v21, type metadata accessor for Search.Recents.Result.Item);
LABEL_8:
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

    if (v13 >= v22)
    {
      break;
    }

    sub_487D68(v18 + v14 + v16 * v13, v7, type metadata accessor for Search.Recents.Result.Item);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v33 = a2;
    if ((v24 & 1) == 0)
    {
      sub_6D8F8(0, a2[2] + 1, 1);
      v7 = v29;
      a2 = v33;
    }

    v26 = a2[2];
    v25 = a2[3];
    if (v26 >= v25 >> 1)
    {
      sub_6D8F8(v25 > 1, v26 + 1, 1);
      v7 = v29;
      a2 = v33;
    }

    a2[2] = v26 + 1;
    v14 = v30;
    sub_489CC8(v7, a2 + v30 + v26 * v16, type metadata accessor for Search.Recents.Result.Item);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_163E1C(v18);
      v18 = result;
    }

    v11 = v31;
    if (v13 >= v18[2])
    {
      goto LABEL_29;
    }

    sub_48A0C8(v31, v18 + v14 + v16 * v13++);
    a1 = v28;
    if (v13 < v28)
    {
      goto LABEL_8;
    }

    if (!v17)
    {
LABEL_24:

      goto LABEL_26;
    }

    v13 = 0;
LABEL_9:
    --v17;
    v15 += v16;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_48541C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_808B0(*(a3 + 56) + 32 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s16MusicApplication6SearchC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_13C80(0, &qword_DFE5D8);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  if ((sub_ABA790() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v10 = *(a2 + 64);

  return sub_4C9E88(v9, v10);
}

uint64_t _s16MusicApplication6SearchC21ResultSnapshotRequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_23;
    }

    sub_13C80(0, &qword_DFE5D8);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v5)
  {
    goto LABEL_23;
  }

  sub_13C80(0, &qword_DFA720);
  if ((sub_ABA790() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_4C9E88(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(a1 + 80))
  {
    v9 = 0x7972617262696CLL;
  }

  else
  {
    v9 = 0x676F6C61746163;
  }

  if (*(a2 + 80))
  {
    v10 = 0x7972617262696CLL;
  }

  else
  {
    v10 = 0x676F6C61746163;
  }

  if (v9 == v10)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_18;
  }

  v11 = sub_ABB3C0();
  swift_bridgeObjectRelease_n();
  if (v11)
  {
LABEL_18:
    if ((*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_23;
    }

    if (*(a1 + 104))
    {
      if (!*(a2 + 104))
      {
        goto LABEL_23;
      }
    }

    else if (*(a2 + 104))
    {
      goto LABEL_23;
    }

    sub_15F84(a1 + 112, v23, &unk_E00060);
    v14 = v24;
    if (v24)
    {
      v15 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v16 = (*(v15 + 8))(v14, v15);
      v14 = v17;
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v23, &unk_E00060);
      v16 = 0;
    }

    sub_15F84(a2 + 112, v23, &unk_E00060);
    v18 = v24;
    if (v24)
    {
      v19 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v20 = (*(v19 + 8))(v18, v19);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_0(v23);
      if (v14)
      {
        if (v22)
        {
          if (v16 == v20 && v14 == v22)
          {

            v12 = 1;
          }

          else
          {
            v12 = sub_ABB3C0();
          }

          goto LABEL_41;
        }

        goto LABEL_36;
      }

      if (v22)
      {
        v12 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      sub_12E1C(v23, &unk_E00060);
      if (v14)
      {
LABEL_36:
        v12 = 0;
LABEL_41:

        return v12 & 1;
      }
    }

    v12 = 1;
    return v12 & 1;
  }

LABEL_23:
  v12 = 0;
  return v12 & 1;
}

BOOL _s16MusicApplication6SearchC31RecentlySearchedSnapshotRequestV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_13C80(0, &qword_DFE5D8);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  return (sub_ABA790() & 1) != 0 && *(a1 + 16) == *(a2 + 16) && (sub_4C9E88(*(a1 + 64), *(a2 + 64)) & 1) != 0;
}

uint64_t _s16MusicApplication6SearchC4ItemO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin(v39);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Search.Item(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v16 = (&v39 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09970);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v39 - v19;
  v21 = (&v39 + *(v18 + 56) - v19);
  sub_487D68(a1, &v39 - v19, type metadata accessor for Search.Item);
  sub_487D68(a2, v21, type metadata accessor for Search.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_487D68(v20, v16, type metadata accessor for Search.Item);
    v25 = *v16;
    v24 = v16[1];
    v27 = v16[2];
    v26 = v16[3];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_16:
      sub_12E1C(v20, &qword_E09970);
LABEL_19:
      v23 = 0;
      return v23 & 1;
    }

    v35 = v21[2];
    v34 = v21[3];
    v36 = v25 == *v21 && v24 == v21[1];
    if (v36 || (sub_ABB3C0() & 1) != 0)
    {
      if (v27 == v35 && v26 == v34)
      {

        goto LABEL_33;
      }

      v38 = sub_ABB3C0();

      if (v38)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

LABEL_18:
    sub_486014(v20, type metadata accessor for Search.Item);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_487D68(v20, v11, type metadata accessor for Search.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_486014(v11, type metadata accessor for Search.Recents.Result.Item);
      goto LABEL_16;
    }

    v28 = v40;
    sub_489CC8(v21, v40, type metadata accessor for Search.Recents.Result.Item);
    sub_13C80(0, &qword_DEDE20);
    if (static SnapshotIdentifier.== infix(_:_:)() & 1) != 0 && (sub_AB33E0())
    {
      if (v29 = *(v39 + 24), v30 = *&v11[v29], v31 = *&v11[v29 + 8], v32 = (v28 + v29), v30 == *v32) && v31 == v32[1] || (sub_ABB3C0())
      {
        sub_486014(v28, type metadata accessor for Search.Recents.Result.Item);
        sub_486014(v11, type metadata accessor for Search.Recents.Result.Item);
LABEL_33:
        sub_486014(v20, type metadata accessor for Search.Item);
        v23 = 1;
        return v23 & 1;
      }
    }

    sub_486014(v28, type metadata accessor for Search.Recents.Result.Item);
    sub_486014(v11, type metadata accessor for Search.Recents.Result.Item);
    goto LABEL_18;
  }

  sub_487D68(v20, v14, type metadata accessor for Search.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_12E1C(v14, &unk_E00040);
    goto LABEL_16;
  }

  sub_36B0C(v21, v7, &unk_E00040);
  sub_13C80(0, &qword_DEDE20);
  v23 = static SnapshotIdentifier.== infix(_:_:)();
  sub_12E1C(v7, &unk_E00040);
  sub_12E1C(v14, &unk_E00040);
  sub_486014(v20, type metadata accessor for Search.Item);
  return v23 & 1;
}

uint64_t sub_485F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_485F94()
{

  return swift_deallocObject();
}

uint64_t sub_486014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_486074()
{
  result = qword_E092C8;
  if (!qword_E092C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092C8);
  }

  return result;
}

uint64_t sub_4860C8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_13C80(0, &qword_DFE5D8);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  if (sub_ABA790() & 1) != 0 && *(a1 + 16) == *(a2 + 16) && (sub_4C9E88(*(a1 + 64), *(a2 + 64)))
  {
    v9 = *(a1 + 80);
    v10 = *(a2 + 80);
    if (v9)
    {
      if (v10)
      {

        v11 = sub_4740B4(v9, v10);

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_4861E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0)
  {
    v12 = 0x7972617262696CLL;
  }

  else
  {
    v12 = 0x676F6C61746163;
  }

  if (a6 < 0)
  {
    v13 = 0x7972617262696CLL;
  }

  else
  {
    v13 = 0x676F6C61746163;
  }

  if (v12 == v13)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v14 = sub_ABB3C0();
    swift_bridgeObjectRelease_n();
    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = a3 & 0x7FFFFFFFFFFFFFFFLL;

  v17 = a3 < 0;
  if (a3 < 0)
  {
    v18 = &_s7LibraryVN;
  }

  else
  {
    v18 = &_s7CatalogVN;
  }

  if (v17)
  {
    v19 = &off_D17228;
  }

  else
  {
    v19 = &off_D00048;
  }

  v34 = v18;
  v35 = v19;
  v31 = a1;
  v32 = a2;
  v33 = v16;
  __swift_project_boxed_opaque_existential_1(&v31, v18);
  v20 = (v19[1])(v18, v19);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_0(&v31);
  v23 = a6 & 0x7FFFFFFFFFFFFFFFLL;

  v24 = a6 < 0;
  if (a6 < 0)
  {
    v25 = &off_D17228;
  }

  else
  {
    v25 = &off_D00048;
  }

  v35 = v25;
  if (v24)
  {
    v26 = &_s7LibraryVN;
  }

  else
  {
    v26 = &_s7CatalogVN;
  }

  v31 = a4;
  v32 = a5;
  v33 = v23;
  v34 = v26;
  __swift_project_boxed_opaque_existential_1(&v31, v26);
  v27 = (v25[1])(v26, v25);
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_0(&v31);
  if (v20 == v27 && v22 == v29)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_ABB3C0();
  }

  return v15 & 1;
}

uint64_t sub_486410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v38 - v11;
  v39 = v12;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (sub_AB9800())
  {
    sub_ABAD60();
    v15 = sub_ABAD50();
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v43 = sub_AB9860();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_AB97E0();
    sub_AB9790();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_ABAE10();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_AB90D0();
    v22 = v15;
    v23 = -1 << v15[32];
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *&v49[8 * (v24 >> 6)];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = sub_AB91C0();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *&v49[8 * (v24 >> 6)];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *&v49[8 * v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_4867CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v34 = _swiftEmptyArrayStorage;
  sub_6D7C0(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  v29 = v5 + 56;
  v6 = sub_ABABC0();
  v7 = 0;
  v30 = *(v5 + 36);
  v26 = v5 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    if (v30 != *(v5 + 36))
    {
      goto LABEL_25;
    }

    v28 = v7;
    v11 = v5;
    v31 = *(*(v5 + 48) + v6);
    sub_4773AC(&v31, a2, &v32);
    if (v2)
    {
      goto LABEL_29;
    }

    v12 = v32;
    v13 = v33;
    v34 = v4;
    v15 = v4[2];
    v14 = v4[3];
    if (v15 >= v14 >> 1)
    {
      v25 = v32;
      sub_6D7C0((v14 > 1), v15 + 1, 1);
      v12 = v25;
      v4 = v34;
    }

    v4[2] = v15 + 1;
    v16 = &v4[3 * v15];
    *(v16 + 2) = v12;
    v16[6] = v13;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_26;
    }

    v17 = *(v29 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_27;
    }

    v5 = v11;
    if (v30 != *(v11 + 36))
    {
      goto LABEL_28;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v28;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (v26 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_E1798(v6, v30, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_21;
        }
      }

      sub_E1798(v6, v30, 0);
LABEL_21:
      v9 = v28;
    }

    v7 = v9 + 1;
    v6 = v8;
    v2 = 0;
    if (v7 == v3)
    {
      return v4;
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
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_486A50(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_ABB5C0();
  sub_ABB5D0(0);
  v2 = sub_ABB610() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

uint64_t sub_486AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  *&v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098F8);
  sub_48BBDC(&qword_E09900, &qword_E09908);
  v7 = sub_AB2AE0();
  v9 = v8;

  if (!v3)
  {
    LOBYTE(v16) = 1;
    sub_35BCD8();
    sub_36A48();
    NSUserDefaults.subscript.getter(&v14);
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8);
      if (swift_dynamicCast())
      {
        v11 = v16;
LABEL_7:
        sub_90090(v7, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v14 = v11;
        sub_94300(v7, v9, a2, a3, isUniquelyReferenced_nonNull_native);
        v13 = v14;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8);
        *&v14 = v13;
        LOBYTE(v16) = 1;
        NSUserDefaults.subscript.setter(&v14, &v16, &_s9SearchKeyON);
        return sub_466B8(v7, v9);
      }
    }

    else
    {
      sub_12E1C(&v14, &unk_DE8E40);
    }

    v11 = sub_98EDC(_swiftEmptyArrayStorage);
    goto LABEL_7;
  }

  return result;
}

void sub_486D08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v119 = a7;
  v124 = a3;
  v125 = a4;
  v11 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v15 = __chkstk_darwin(v14 - 8);
  v123 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v105 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v105 - v21;
  v23 = __chkstk_darwin(v20);
  v121 = &v105 - v24;
  __chkstk_darwin(v23);
  v122 = &v105 - v25;
  v26 = type metadata accessor for MetricsEvent.Click(0);
  v27 = __chkstk_darwin(v26 - 8);
  v120 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v105 - v29;
  v31 = type metadata accessor for Search.Event(0);
  __chkstk_darwin(v31);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(a1, v33, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v40 = *a2;
    v41 = a2[1];
    v42 = a2[2];
    v43 = a2[3];
    v44 = type metadata accessor for MetricsPageProperties();
    sub_15F84(a2 + *(v44 + 24), v22, &unk_DF2AE0);
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v40, v41, v42, v43, v22, *(a2 + *(v44 + 28)), v124, v125, v13, 1, 0, 0, 2);

    v45 = MetricsReportingController.shared.unsafeMutableAddressor();
    v46 = *(&stru_68.reloff + (swift_isaMask & **v45));
    v47 = *v45;
    v46(v13, 0, 0, 0, 0, 0);
    sub_486014(v13, type metadata accessor for MetricsEvent.Page);

LABEL_68:
    sub_486014(v33, type metadata accessor for Search.Event);
    return;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v35 = *MetricsReportingController.shared.unsafeMutableAddressor();
    if (a5 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = a5;
    }

    if (a5 == 1)
    {
      v37 = 0;
    }

    else
    {
      v37 = a6;
    }

    v127 = v36;
    v38 = v35;
    sub_489C80(a5);
    v39 = sub_4831AC();
    if (v39)
    {
      if (v36)
      {
        sub_198A4(v39);
      }

      else
      {
        v127 = v39;
      }
    }

    v53 = sub_481AD4();
    v120 = v54;
    LODWORD(v118) = sub_482220();
    v117 = sub_482604();
    v55 = sub_AB31C0();
    v56 = *(*(v55 - 8) + 56);
    v56(v122, 1, 1, v55);
    v116 = v127;

    sub_482930();
    v115 = v57;
    v58 = sub_482A2C();
    v113 = v60;
    v114 = v59;
    v112 = v61;
    v62 = a2[1];
    v111 = *a2;
    v63 = a2[3];
    v109 = a2[2];
    v123 = v63;
    v56(v121, 1, 1, v55);
    v110 = v62;
    if (!v37)
    {
      v37 = v119;
      if (!v119)
      {

        v64 = v123;

        v71 = v116;

        v66 = 0;
        goto LABEL_63;
      }
    }

    v64 = v123;
    if (v37 >> 62)
    {
      v65 = sub_ABB060();
      if (v65)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v65 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
      if (v65)
      {
LABEL_28:
        v126 = _swiftEmptyArrayStorage;

        sub_6D410(0, v65 & ~(v65 >> 63), 0);
        if ((v65 & 0x8000000000000000) == 0)
        {
          v107 = v58;
          v108 = v53;
          v119 = v38;
          v66 = v126;
          if ((v37 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v65; ++i)
            {
              v68 = *(sub_35FC58(i, v37) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

              swift_unknownObjectRelease();
              v126 = v66;
              v70 = v66[2];
              v69 = v66[3];
              if (v70 >= v69 >> 1)
              {
                sub_6D410((v69 > 1), v70 + 1, 1);
                v66 = v126;
              }

              v66[2] = v70 + 1;
              v66[v70 + 4] = v68;
            }

            v71 = v116;

            v38 = v119;
            v58 = v107;
            v53 = v108;
          }

          else
          {
            v91 = 32;
            do
            {
              v92 = *(*(v37 + v91) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
              v126 = v66;
              v93 = v66[2];
              v94 = v66[3];

              if (v93 >= v94 >> 1)
              {
                sub_6D410((v94 > 1), v93 + 1, 1);
                v66 = v126;
              }

              v66[2] = v93 + 1;
              v66[v93 + 4] = v92;
              v91 += 8;
              --v65;
            }

            while (v65);
            v71 = v116;

            v38 = v119;
            v58 = v107;
            v53 = v108;
            v64 = v123;
          }

          goto LABEL_63;
        }

        __break(1u);
        goto LABEL_70;
      }
    }

    v71 = v116;

    v66 = _swiftEmptyArrayStorage;
LABEL_63:
    *(&v103 + 1) = v114;
    *&v103 = v58;
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v53, v120, v118, v117, v122, v71, 0, v115, v30, v103, v113, v112, v111, v110, v109, v64, v121, 0, 1, 2, v66, v124, v125);
    v100 = *(&stru_68.reserved2 + (swift_isaMask & *v38));

    v100(v30, 0, 0);
    sub_486014(v30, type metadata accessor for MetricsEvent.Click);

    return;
  }

  v122 = v19;
  v48 = *MetricsReportingController.shared.unsafeMutableAddressor();
  if (a5 == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = a5;
  }

  if (a5 == 1)
  {
    v50 = 0;
  }

  else
  {
    v50 = a6;
  }

  v127 = v49;
  sub_489C80(a5);
  v51 = v48;
  v52 = sub_4831AC();
  if (v52)
  {
    if (v49)
    {
      sub_198A4(v52);
    }

    else
    {
      v127 = v52;
    }
  }

  v72 = sub_481AD4();
  v118 = v73;
  v117 = sub_482220();
  LODWORD(v116) = sub_482604();
  v74 = sub_AB31C0();
  v75 = *(*(v74 - 8) + 56);
  v75(v122, 1, 1, v74);
  v121 = v127;

  sub_482930();
  v115 = v76;
  v77 = sub_482A2C();
  v113 = v79;
  v114 = v78;
  v112 = v80;
  v81 = a2[1];
  v111 = *a2;
  v82 = a2[2];
  v83 = a2[3];
  v109 = v82;
  v75(v123, 1, 1, v74);
  v110 = v81;
  if (!v50)
  {
    v50 = v119;
    if (!v119)
    {

      v86 = 0;
      v99 = v124;
      v84 = v122;
LABEL_67:
      v101 = v120;
      *(&v104 + 1) = v114;
      *&v104 = v77;
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v72, v118, v117, v116, v84, v121, 0, v115, v120, v104, v113, v112, v111, v110, v109, v83, v123, 0, 1, 2, v86, v99, v125);
      v102 = *&stru_B8.sectname[swift_isaMask & *v51];

      v102(v101, 0, 0, 0, 0, 0);
      sub_486014(v101, type metadata accessor for MetricsEvent.Click);

      goto LABEL_68;
    }
  }

  v84 = v122;
  if (!(v50 >> 62))
  {
    v85 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
    if (v85)
    {
      goto LABEL_41;
    }

LABEL_65:

    v86 = _swiftEmptyArrayStorage;
LABEL_66:
    v99 = v124;
    goto LABEL_67;
  }

  v85 = sub_ABB060();
  if (!v85)
  {
    goto LABEL_65;
  }

LABEL_41:
  v126 = _swiftEmptyArrayStorage;

  v119 = v83;

  sub_6D410(0, v85 & ~(v85 >> 63), 0);
  if ((v85 & 0x8000000000000000) == 0)
  {
    v106 = v77;
    v107 = v72;
    v108 = v51;
    v86 = v126;
    if ((v50 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v85; ++j)
      {
        v88 = *(sub_35FC58(j, v50) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

        swift_unknownObjectRelease();
        v126 = v86;
        v90 = v86[2];
        v89 = v86[3];
        if (v90 >= v89 >> 1)
        {
          sub_6D410((v89 > 1), v90 + 1, 1);
          v86 = v126;
        }

        v86[2] = v90 + 1;
        v86[v90 + 4] = v88;
      }
    }

    else
    {
      v95 = 32;
      do
      {
        v96 = *(*(v50 + v95) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
        v126 = v86;
        v98 = v86[2];
        v97 = v86[3];

        if (v98 >= v97 >> 1)
        {
          sub_6D410((v97 > 1), v98 + 1, 1);
          v86 = v126;
        }

        v86[2] = v98 + 1;
        v86[v98 + 4] = v96;
        v95 += 8;
        --v85;
      }

      while (v85);

      v84 = v122;
    }

    v72 = v107;
    v51 = v108;
    v77 = v106;
    v83 = v119;
    goto LABEL_66;
  }

LABEL_70:
  __break(1u);
}

uint64_t sub_4878E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v10 = *(a2 + 88);
  v9 = *(a2 + 96);
  v11 = *(a2 + 104);
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  sub_15F84(a2 + 24, &v33, &qword_DF4F58);
  v29[0] = v10;
  v29[1] = v9;
  v30 = v11;
  v31 = v13;
  v32 = v12;
  sub_1D3210(v29, v27);

  v14 = v13;
  RequestResponse.Controller.request.setter(v27);
  sub_30E3FC(a2, v27);
  sub_30E3FC(v27, v26);
  v15 = swift_allocObject();
  v16 = v27[7];
  *(v15 + 120) = v27[6];
  *(v15 + 136) = v16;
  *(v15 + 152) = v27[8];
  v17 = v27[3];
  *(v15 + 56) = v27[2];
  *(v15 + 72) = v17;
  v18 = v27[5];
  *(v15 + 88) = v27[4];
  *(v15 + 104) = v18;
  v19 = v27[1];
  *(v15 + 24) = v27[0];
  *(v15 + 16) = a3;
  v20 = v28;
  *(v15 + 40) = v19;
  *(v15 + 168) = v20;
  *(v15 + 176) = a4;
  *(v15 + 184) = a5;
  swift_retain_n();
  swift_retain_n();
  RequestResponse.Controller.revision.getter();
  v21 = RequestResponse.Revision.isValid.getter();

  if (v21)
  {
    v22 = RequestResponse.Controller.revision.getter();
    sub_47A910(a1, v22, a3, v26, a4, a5);

    sub_30E458(v26);
  }

  else
  {

    sub_30E458(v26);

    v23 = swift_allocObject();
    *(v23 + 16) = sub_489DC0;
    *(v23 + 24) = v15;

    RequestResponse.Controller.setNeedsReload(_:)(sub_489DD0, v23);
  }

  sub_489DF8(v29);
}

uint64_t sub_487B1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v10 = *(a2 + 88);
  v9 = *(a2 + 96);
  v11 = *(a2 + 104);
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  sub_15F84(a2 + 24, &v33, &qword_DF4F58);
  v29[0] = v10;
  v29[1] = v9;
  v30 = v11;
  v31 = v13;
  v32 = v12;
  sub_489E6C(v29, v27);

  v14 = v13;
  RequestResponse.Controller.request.setter(v27);
  sub_30E3FC(a2, v27);
  sub_30E3FC(v27, v26);
  v15 = swift_allocObject();
  v16 = v27[7];
  *(v15 + 120) = v27[6];
  *(v15 + 136) = v16;
  *(v15 + 152) = v27[8];
  v17 = v27[3];
  *(v15 + 56) = v27[2];
  *(v15 + 72) = v17;
  v18 = v27[5];
  *(v15 + 88) = v27[4];
  *(v15 + 104) = v18;
  v19 = v27[1];
  *(v15 + 24) = v27[0];
  *(v15 + 16) = a3;
  v20 = v28;
  *(v15 + 40) = v19;
  *(v15 + 168) = v20;
  *(v15 + 176) = a4;
  *(v15 + 184) = a5;
  swift_retain_n();
  swift_retain_n();
  RequestResponse.Controller.revision.getter();
  v21 = RequestResponse.Revision.isValid.getter();

  if (v21)
  {
    v22 = RequestResponse.Controller.revision.getter();
    sub_47A32C(a1, v22, a3, v26, a4, a5);

    sub_30E458(v26);
  }

  else
  {

    sub_30E458(v26);

    v23 = swift_allocObject();
    *(v23 + 16) = sub_489F50;
    *(v23 + 24) = v15;

    RequestResponse.Controller.setNeedsReload(_:)(sub_48C62C, v23);
  }

  sub_489F60(v29);
}

uint64_t sub_487D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_2BB90();
  }

  return result;
}

uint64_t sub_487D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_487DE8()
{
  result = qword_E092D0;
  if (!qword_E092D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092D0);
  }

  return result;
}

unint64_t sub_487E54()
{
  result = qword_E092E0;
  if (!qword_E092E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092E0);
  }

  return result;
}

unint64_t sub_487EAC()
{
  result = qword_E092F0;
  if (!qword_E092F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092F0);
  }

  return result;
}

unint64_t sub_487F04()
{
  result = qword_E092F8;
  if (!qword_E092F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092F8);
  }

  return result;
}

unint64_t sub_487F5C()
{
  result = qword_E09300;
  if (!qword_E09300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09300);
  }

  return result;
}

unint64_t sub_487FB4()
{
  result = qword_E09308;
  if (!qword_E09308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09308);
  }

  return result;
}

unint64_t sub_488050(uint64_t a1)
{
  result = sub_488078();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_488078()
{
  result = qword_E09348;
  if (!qword_E09348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09348);
  }

  return result;
}

unint64_t sub_4880CC(uint64_t a1)
{
  result = sub_4880F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4880F4()
{
  result = qword_E09380;
  if (!qword_E09380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09380);
  }

  return result;
}

uint64_t sub_4881CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_48828C()
{
  sub_488794(319, &unk_E09550, &qword_DEDE20, MPModelObject_ptr, type metadata accessor for SnapshotIdentifier);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Search.Recents.Result.Item(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_48835C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_488448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_488510()
{
  sub_488678();
  if (v0 <= 0x3F)
  {
    sub_48C430(319, &qword_DF0B70);
    if (v1 <= 0x3F)
    {
      sub_48C430(319, &qword_E095F0);
      if (v2 <= 0x3F)
      {
        sub_48C430(319, &qword_E095F8);
        if (v3 <= 0x3F)
        {
          sub_488730();
          if (v4 <= 0x3F)
          {
            sub_488794(319, &qword_E09608, &qword_E09610, ICURLPerformanceMetrics_ptr, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_48C430(319, &unk_E09618);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_488678()
{
  if (!qword_E095E8)
  {
    type metadata accessor for Search.Item(255);
    sub_1D30D0();
    sub_485F14(&qword_DF4FB0, type metadata accessor for Search.Item);
    v0 = sub_AB5120();
    if (!v1)
    {
      atomic_store(v0, &qword_E095E8);
    }
  }
}

void sub_488730()
{
  if (!qword_E09600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E00000);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E09600);
    }
  }
}

void sub_488794(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_13C80(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication17SearchResultScope_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_488834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_48887C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_488900()
{
  result = sub_13C80(319, &unk_DE8180);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_AB3430();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_4889B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + v12 + ((v10 + 8) & ~v10)) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (a1 + v10 + 8) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, v5);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_488C58(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_54:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v25 = &a1[v12 + 8] & ~v12;
    if (v9 == v16)
    {
      v26 = *(v29 + 56);

      v26(v25, a2, v9, v7);
    }

    else
    {
      v27 = *(v11 + 56);
      v28 = (v25 + v13 + v14) & ~v14;

      v27(v28, a2);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = (a2 - 1);
    }

    *a1 = v24;
  }
}

uint64_t sub_488FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_AB3430();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_4890E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_AB3430();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_489200()
{
  sub_488794(319, &unk_E09550, &qword_DEDE20, MPModelObject_ptr, type metadata accessor for SnapshotIdentifier);
  if (v0 <= 0x3F)
  {
    sub_AB3430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_4892D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 24))
  {
    return (*a1 + 63);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) & 1 | (2 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_489328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0x7000000000000007;
    }
  }

  return result;
}

uint64_t sub_4893C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_48941C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Search.SnapshotError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_489544(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_489558(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_489578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_4895C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_489668()
{
  result = qword_E09878;
  if (!qword_E09878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09878);
  }

  return result;
}

unint64_t sub_4896C0()
{
  result = qword_E09880;
  if (!qword_E09880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09880);
  }

  return result;
}

unint64_t sub_489718()
{
  result = qword_E09888;
  if (!qword_E09888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09888);
  }

  return result;
}

unint64_t sub_48976C(uint64_t a1)
{
  result = sub_489794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_489794()
{
  result = qword_E098C0;
  if (!qword_E098C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E098C0);
  }

  return result;
}

unint64_t sub_489824()
{
  result = qword_E098C8;
  if (!qword_E098C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E098C8);
  }

  return result;
}

uint64_t sub_4898B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  *&v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098D0);
  sub_489AE8(&qword_E098D8, &qword_E098E0);
  v7 = sub_AB2AE0();
  v9 = v8;

  if (!v3)
  {
    LOBYTE(v16) = 1;
    sub_35BCD8();
    sub_36A48();
    NSUserDefaults.subscript.getter(&v14);
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8);
      if (swift_dynamicCast())
      {
        v11 = v16;
LABEL_7:
        sub_90090(v7, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v14 = v11;
        sub_94300(v7, v9, a2, a3, isUniquelyReferenced_nonNull_native);
        v13 = v14;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8);
        *&v14 = v13;
        LOBYTE(v16) = 1;
        NSUserDefaults.subscript.setter(&v14, &v16, &_s9SearchKeyON);
        return sub_466B8(v7, v9);
      }
    }

    else
    {
      sub_12E1C(&v14, &unk_DE8E40);
    }

    v11 = sub_98EDC(_swiftEmptyArrayStorage);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_489AE8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E098D0);
    sub_36A00(a2, &unk_DFEF20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_489B80()
{
  result = qword_E098F0;
  if (!qword_E098F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E098F0);
  }

  return result;
}

unint64_t sub_489BD4()
{
  result = qword_E09910;
  if (!qword_E09910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09910);
  }

  return result;
}

uint64_t sub_489C28()
{

  return swift_deallocObject();
}

uint64_t sub_489C80(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_489CC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_489D68()
{
  result = qword_E09930;
  if (!qword_E09930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09930);
  }

  return result;
}

uint64_t objectdestroy_150Tm()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  }

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  }

  return swift_deallocObject();
}

uint64_t sub_489FB4()
{

  return swift_deallocObject();
}

uint64_t sub_48A010()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_156Tm()
{

  return swift_deallocObject();
}

uint64_t sub_48A0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Search.Recents.Result.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_48A12C(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_ABAE50();
  v47 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v41 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  LOBYTE(v51) = 1;
  sub_35BCD8();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v49);
  if (!v50)
  {
    sub_12E1C(&v49, &unk_DE8E40);
    return &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  v16 = v51;
  if (!*(v51 + 16) || (v17 = sub_2EBF88(v48, a2), (v18 & 1) == 0))
  {
LABEL_12:

    return &_swiftEmptySetSingleton;
  }

  v43 = a2;
  v19 = (*(v16 + 56) + 16 * v17);
  v21 = *v19;
  v20 = v19[1];
  v45 = v16;
  v46 = v20;
  sub_AB2AD0();
  swift_allocObject();
  sub_90090(v21, v20);
  sub_AB2AC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098D0);
  sub_489AE8(&qword_E09960, &qword_E09968);
  v44 = v21;
  v22 = v46;
  sub_AB2AB0();
  if (v2)
  {

    *&v49 = v2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    if (swift_dynamicCast())
    {

      v23 = v47;
      (*(v47 + 32))(v13, v15, v4);
      if (qword_DE6D48 != -1)
      {
        swift_once();
      }

      v24 = sub_AB4BC0();
      __swift_project_value_buffer(v24, static Logger.search);
      v25 = v23;
      v26 = *(v23 + 16);
      v26(v10, v13, v4);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      v42 = v27;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v51 = v41;
        *v29 = 136315138;
        v26(v7, v10, v4);
        v30 = sub_AB9350();
        v32 = v31;
        v33 = *(v25 + 8);
        v33(v10, v4);
        v34 = sub_425E68(v30, v32, &v51);

        *(v29 + 4) = v34;
        v35 = v28;
        v36 = v42;
        _os_log_impl(&dword_0, v42, v35, "Error decoding recently searched items from user defaults: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
      }

      else
      {
        v33 = *(v23 + 8);
        v33(v10, v4);
      }

      v38 = v46;
      v39 = v44;
      v40 = [objc_opt_self() standardUserDefaults];
      sub_4898B8(&_swiftEmptySetSingleton, v48, v43);

      v33(v13, v4);

      sub_466B8(v39, v38);
      goto LABEL_12;
    }

    swift_willThrow();
    sub_466B8(v44, v46);
  }

  else
  {

    sub_466B8(v44, v22);

    return v49;
  }
}

void *sub_48A764(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_ABAE50();
  v47 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v41 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  LOBYTE(v51) = 1;
  sub_35BCD8();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v49);
  if (!v50)
  {
    sub_12E1C(&v49, &unk_DE8E40);
    return &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  v16 = v51;
  if (!*(v51 + 16) || (v17 = sub_2EBF88(v48, a2), (v18 & 1) == 0))
  {
LABEL_12:

    return &_swiftEmptySetSingleton;
  }

  v43 = a2;
  v19 = (*(v16 + 56) + 16 * v17);
  v21 = *v19;
  v20 = v19[1];
  v45 = v16;
  v46 = v20;
  sub_AB2AD0();
  swift_allocObject();
  sub_90090(v21, v20);
  sub_AB2AC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098F8);
  sub_48BBDC(&qword_E09948, &qword_E09950);
  v44 = v21;
  v22 = v46;
  sub_AB2AB0();
  if (v2)
  {

    *&v49 = v2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    if (swift_dynamicCast())
    {

      v23 = v47;
      (*(v47 + 32))(v13, v15, v4);
      if (qword_DE6D48 != -1)
      {
        swift_once();
      }

      v24 = sub_AB4BC0();
      __swift_project_value_buffer(v24, static Logger.search);
      v25 = v23;
      v26 = *(v23 + 16);
      v26(v10, v13, v4);
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();
      v42 = v27;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v51 = v41;
        *v29 = 136315138;
        v26(v7, v10, v4);
        v30 = sub_AB9350();
        v32 = v31;
        v33 = *(v25 + 8);
        v33(v10, v4);
        v34 = sub_425E68(v30, v32, &v51);

        *(v29 + 4) = v34;
        v35 = v28;
        v36 = v42;
        _os_log_impl(&dword_0, v42, v35, "Error decoding recently searched items from user defaults: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
      }

      else
      {
        v33 = *(v23 + 8);
        v33(v10, v4);
      }

      v38 = v46;
      v39 = v44;
      v40 = [objc_opt_self() standardUserDefaults];
      sub_486AD8(&_swiftEmptySetSingleton, v48, v43);

      v33(v13, v4);

      sub_466B8(v39, v38);
      goto LABEL_12;
    }

    swift_willThrow();
    sub_466B8(v44, v46);
  }

  else
  {

    sub_466B8(v44, v22);

    return v49;
  }
}

uint64_t objectdestroy_177Tm()
{

  return swift_deallocObject();
}

void sub_48AE48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v74 = a7;
  v75 = a8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09958);
  v14 = __chkstk_darwin(v73);
  v72 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v58 - v16;
  v17 = type metadata accessor for Search.Recents.Result.Item(0);
  v69 = *(v17 - 8);
  v70 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v79 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    swift_willThrowTypedImpl();
LABEL_24:
    dispatch_group_leave(a6);
    return;
  }

  v62 = a2;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (!v21)
  {
LABEL_23:
    __chkstk_darwin(v18);
    *(&v58 - 8) = v55;
    *(&v58 - 7) = v22;
    *(&v58 - 6) = v56;
    *(&v58 - 5) = a1;
    *(&v58 - 4) = v62;
    *(&v58 - 3) = v57;
    *(&v58 - 2) = a4;
    *(&v58 - 1) = a5;
    UnfairLock.locked<A>(_:)(sub_48C680);

    goto LABEL_24;
  }

  v59 = a4;
  v60 = a5;
  v61 = a6;
  v79 = _swiftEmptyArrayStorage;
  sub_6D8F8(0, v21, 0);
  v22 = v79;
  v23 = a1 + 64;
  v24 = sub_ABABC0();
  v25 = 0;
  v26 = *(a1 + 36);
  v63 = a1 + 72;
  v64 = v21;
  v65 = v26;
  v66 = a1 + 64;
  v67 = a1;
  v68 = v20;
  while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(a1 + 32))
  {
    if ((*(v23 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
    {
      goto LABEL_26;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v77 = 1 << v24;
    v78 = v24 >> 6;
    v76 = v25;
    v28 = v73;
    v29 = *(v73 + 48);
    v30 = *(a1 + 48);
    v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20) - 8);
    v32 = v22;
    v33 = v71;
    sub_15F84(v30 + *(*v31 + 72) * v24, v71, &unk_DFEF20);
    v34 = *(a1 + 56);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
    sub_15F84(v34 + *(*(v35 - 8) + 72) * v24, v33 + v29, &unk_E00040);
    v36 = v72;
    sub_36B0C(v33, v72, &unk_DFEF20);
    v37 = *(v28 + 48);
    v38 = v68;
    v39 = v33 + v29;
    v22 = v32;
    sub_36B0C(v39, v36 + v37, &unk_E00040);
    sub_15F84(v36 + v37, v38, &unk_E00040);
    v40 = v31[12];
    v41 = v70;
    v42 = *(v70 + 20);
    v43 = sub_AB3430();
    (*(*(v43 - 8) + 16))(v38 + v42, v36 + v40, v43);
    v44 = (v38 + *(v41 + 24));
    v45 = v75;
    *v44 = v74;
    v44[1] = v45;

    sub_12E1C(v36, &qword_E09958);
    v79 = v22;
    v47 = v22[2];
    v46 = v22[3];
    if (v47 >= v46 >> 1)
    {
      sub_6D8F8(v46 > 1, v47 + 1, 1);
      v22 = v79;
    }

    v22[2] = v47 + 1;
    v18 = sub_489CC8(v38, v22 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v47, type metadata accessor for Search.Recents.Result.Item);
    a1 = v67;
    v27 = 1 << *(v67 + 32);
    if (v24 >= v27)
    {
      goto LABEL_28;
    }

    v23 = v66;
    v48 = *(v66 + 8 * v78);
    if ((v48 & v77) == 0)
    {
      goto LABEL_29;
    }

    LODWORD(v26) = v65;
    if (v65 != *(v67 + 36))
    {
      goto LABEL_30;
    }

    v49 = v48 & (-2 << (v24 & 0x3F));
    if (v49)
    {
      v27 = __clz(__rbit64(v49)) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v50 = v78 << 6;
      v51 = v78 + 1;
      v52 = (v63 + 8 * v78);
      while (v51 < (v27 + 63) >> 6)
      {
        v54 = *v52++;
        v53 = v54;
        v50 += 64;
        ++v51;
        if (v54)
        {
          v18 = sub_E1798(v24, v65, 0);
          v27 = __clz(__rbit64(v53)) + v50;
          goto LABEL_6;
        }
      }

      v18 = sub_E1798(v24, v65, 0);
    }

LABEL_6:
    v25 = v76 + 1;
    v24 = v27;
    if (v76 + 1 == v64)
    {
      a5 = v60;
      a6 = v61;
      a4 = v59;
      goto LABEL_23;
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
}

void sub_48B3E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v74 = a7;
  v75 = a8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09940);
  v14 = __chkstk_darwin(v73);
  v72 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v58 - v16;
  v17 = type metadata accessor for Search.Recents.Result.Item(0);
  v69 = *(v17 - 8);
  v70 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v79 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    swift_willThrowTypedImpl();
LABEL_24:
    dispatch_group_leave(a6);
    return;
  }

  v62 = a2;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (!v21)
  {
LABEL_23:
    __chkstk_darwin(v18);
    *(&v58 - 8) = v55;
    *(&v58 - 7) = v22;
    *(&v58 - 6) = v56;
    *(&v58 - 5) = a1;
    *(&v58 - 4) = v62;
    *(&v58 - 3) = v57;
    *(&v58 - 2) = a4;
    *(&v58 - 1) = a5;
    UnfairLock.locked<A>(_:)(sub_48B988);

    goto LABEL_24;
  }

  v59 = a4;
  v60 = a5;
  v61 = a6;
  v79 = _swiftEmptyArrayStorage;
  sub_6D8F8(0, v21, 0);
  v22 = v79;
  v23 = a1 + 64;
  v24 = sub_ABABC0();
  v25 = 0;
  v26 = *(a1 + 36);
  v63 = a1 + 72;
  v64 = v21;
  v65 = v26;
  v66 = a1 + 64;
  v67 = a1;
  v68 = v20;
  while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(a1 + 32))
  {
    if ((*(v23 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
    {
      goto LABEL_26;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v77 = 1 << v24;
    v78 = v24 >> 6;
    v76 = v25;
    v28 = v73;
    v29 = *(v73 + 48);
    v30 = *(a1 + 48);
    v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0) - 8);
    v32 = v22;
    v33 = v71;
    sub_15F84(v30 + *(*v31 + 72) * v24, v71, &unk_DFEEE0);
    v34 = *(a1 + 56);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
    sub_15F84(v34 + *(*(v35 - 8) + 72) * v24, v33 + v29, &unk_E00040);
    v36 = v72;
    sub_36B0C(v33, v72, &unk_DFEEE0);
    v37 = *(v28 + 48);
    v38 = v68;
    v39 = v33 + v29;
    v22 = v32;
    sub_36B0C(v39, v36 + v37, &unk_E00040);
    sub_15F84(v36 + v37, v38, &unk_E00040);
    v40 = v31[12];
    v41 = v70;
    v42 = *(v70 + 20);
    v43 = sub_AB3430();
    (*(*(v43 - 8) + 16))(v38 + v42, v36 + v40, v43);
    v44 = (v38 + *(v41 + 24));
    v45 = v75;
    *v44 = v74;
    v44[1] = v45;

    sub_12E1C(v36, &qword_E09940);
    v79 = v22;
    v47 = v22[2];
    v46 = v22[3];
    if (v47 >= v46 >> 1)
    {
      sub_6D8F8(v46 > 1, v47 + 1, 1);
      v22 = v79;
    }

    v22[2] = v47 + 1;
    v18 = sub_489CC8(v38, v22 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v47, type metadata accessor for Search.Recents.Result.Item);
    a1 = v67;
    v27 = 1 << *(v67 + 32);
    if (v24 >= v27)
    {
      goto LABEL_28;
    }

    v23 = v66;
    v48 = *(v66 + 8 * v78);
    if ((v48 & v77) == 0)
    {
      goto LABEL_29;
    }

    LODWORD(v26) = v65;
    if (v65 != *(v67 + 36))
    {
      goto LABEL_30;
    }

    v49 = v48 & (-2 << (v24 & 0x3F));
    if (v49)
    {
      v27 = __clz(__rbit64(v49)) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v50 = v78 << 6;
      v51 = v78 + 1;
      v52 = (v63 + 8 * v78);
      while (v51 < (v27 + 63) >> 6)
      {
        v54 = *v52++;
        v53 = v54;
        v50 += 64;
        ++v51;
        if (v54)
        {
          v18 = sub_E1798(v24, v65, 0);
          v27 = __clz(__rbit64(v53)) + v50;
          goto LABEL_6;
        }
      }

      v18 = sub_E1798(v24, v65, 0);
    }

LABEL_6:
    v25 = v76 + 1;
    v24 = v27;
    if (v76 + 1 == v64)
    {
      a5 = v60;
      a6 = v61;
      a4 = v59;
      goto LABEL_23;
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
}

uint64_t sub_48B9A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v43 = a1;
  v44 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v45 = v8;
  v46 = 0;
  v47 = v11 & v9;
  v48 = a2;
  v49 = a3;

  sub_1B62F4(&v38);
  v12 = v39;
  if (!v39)
  {
LABEL_18:
    sub_1D4508();
  }

  while (1)
  {
    v15 = v38;
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v16 = *a5;
    v17 = sub_2EBF88(v38, v12);
    v19 = *(v16 + 16);
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (*(v16 + 24) < v22)
    {
      sub_32A910(v22, a4 & 1);
      v17 = sub_2EBF88(v15, v12);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v23)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v32 = v17;
    sub_332E78();
    v17 = v32;
    if (v23)
    {
LABEL_6:
      v13 = *a5;
      v14 = 40 * v17;
      sub_9ACA0(*(*a5 + 56) + 40 * v17, v34);
      sub_8085C(&v35);

      sub_9AD68(v34, *(v13 + 56) + v14);
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v26 = (v25[6] + 16 * v17);
    *v26 = v15;
    v26[1] = v12;
    v27 = v25[7] + 40 * v17;
    v28 = v35;
    v29 = v36;
    *(v27 + 32) = v37;
    *v27 = v28;
    *(v27 + 16) = v29;
    v30 = v25[2];
    v21 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v25[2] = v31;
LABEL_7:
    sub_1B62F4(&v38);
    v12 = v39;
    a4 = 1;
    if (!v39)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

uint64_t sub_48BBDC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E098F8);
    sub_36A00(a2, &unk_DFEEE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_48BCC4()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6CE8 != -1)
    {
      swift_once();
    }

    v0 = qword_E719D8;
LABEL_45:

    return v0;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6CF0 != -1)
    {
      swift_once();
    }

    v0 = qword_E719E0;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6CF8 != -1)
    {
      swift_once();
    }

    v0 = qword_E719E8;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D28 != -1)
    {
      swift_once();
    }

    v0 = qword_E71A18;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D00 != -1)
    {
      swift_once();
    }

    v0 = qword_E719F0;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D20 != -1)
    {
      swift_once();
    }

    v0 = qword_E71A10;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D18 != -1)
    {
      swift_once();
    }

    v0 = qword_E71A08;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D08 != -1)
    {
      swift_once();
    }

    v0 = qword_E719F8;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D10 != -1)
    {
      swift_once();
    }

    v0 = qword_E71A00;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D40 != -1)
    {
      swift_once();
    }

    v0 = qword_E71A30;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6CE0 != -1)
    {
      swift_once();
    }

    v0 = qword_E719D0;
    goto LABEL_45;
  }

  v2 = [objc_opt_self() emptyPropertySet];

  return v2;
}

uint64_t sub_48C0F0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2;
  }

  if (a1 == 0xD000000000000025 && 0x8000000000B66510 == a2 || (sub_ABB3C0() & 1) != 0)
  {

    return 0;
  }

  if (a1 == 0xD000000000000025 && 0x8000000000B664E0 == a2)
  {

    return 1;
  }

  v5 = sub_ABB3C0();

  if (v5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication6SearchC4PageO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_48C228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_48C264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_48C2B0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

void sub_48C2E8()
{
  sub_48C3A8();
  if (v0 <= 0x3F)
  {
    sub_48C430(319, &qword_E09A00);
    if (v1 <= 0x3F)
    {
      sub_48C47C();
      if (v2 <= 0x3F)
      {
        sub_48C4E0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_48C3A8()
{
  if (!qword_E099F8)
  {
    type metadata accessor for Search.Item(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E00050);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_E099F8);
    }
  }
}

void sub_48C430(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_ABA9C0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_48C47C()
{
  result = qword_E09A08;
  if (!qword_E09A08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_E09A08);
  }

  return result;
}

void sub_48C4E0()
{
  if (!qword_E09A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DF1320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DEE6F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_E09A10);
    }
  }
}

unint64_t sub_48C588()
{
  result = qword_E09A40;
  if (!qword_E09A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09A40);
  }

  return result;
}

uint64_t sub_48C5DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF1A50;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_48C6A0(void (*a1)(uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_60044();

  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = sub_AB7CF0();
  result = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v14 = swift_allocObject();
      v14[2] = sub_48D3B0;
      v14[3] = v11;
      v14[4] = v3;
      v14[5] = v6;

      BagProvider.getBag(completion:)(sub_48D3DC, v14);
    }

    else
    {
      a1(result, v3[4]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_48C8C4(void (*a1)(uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_60044();

  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = sub_AB7CF0();
  result = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v14 = swift_allocObject();
      v14[2] = sub_48D458;
      v14[3] = v11;
      v14[4] = v3;
      v14[5] = v6;

      BagProvider.getBag(completion:)(sub_48D4C4, v14);
    }

    else
    {
      a1(result, v3[2]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_48CAE8(uint64_t (*a1)(uint64_t, double, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_60044();
  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_AB7CF0();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = a2;
      v13[4] = v3;
      v13[5] = v6;

      BagProvider.getBag(completion:)(sub_48D4C4, v13);
    }

    else
    {
      return a1(result, v3[2], v3[4]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_48CCF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = sub_AB7C10();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB7C50();
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_60044();
  v22 = sub_ABA150();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v21;
  aBlock[4] = sub_48D430;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_149;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_AB7C30();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_D1010();
  sub_ABABB0();
  v19 = v22;
  sub_ABA160();
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v23);
  _Block_release(v17);
}

uint64_t sub_48CFA0(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = sub_AB9260();
  v8 = [a1 dictionaryForBagKey:v7];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = sub_AB8FF0();

  sub_ABAD10();
  if (*(v9 + 16) && (v10 = sub_2EC004(v21), (v11 & 1) != 0))
  {
    sub_808B0(*(v9 + 56) + 32 * v10, v22);
    sub_8085C(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    if (swift_dynamicCast())
    {
      sub_ABAD10();
      if (MEMORY[0x6973736572706D79])
      {
        v12 = sub_2EC004(v21);
        if (v13)
        {
          sub_808B0(MEMORY[0x6973736572706DA1] + 32 * v12, v22);
          sub_8085C(v21);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_20:

            goto LABEL_13;
          }

          sub_ABAD10();
          if (MEMORY[0x6973736572706D79])
          {
            v14 = sub_2EC004(v21);
            if (v15)
            {
              sub_808B0(MEMORY[0x6973736572706DA1] + 32 * v14, v22);
              sub_8085C(v21);
              if (swift_dynamicCast())
              {
                *(a4 + 16) = 0xD000000000000011;
                *(a4 + 24) = 0;
                *(a4 + 32) = 0xD000000000000012;
                *(a4 + 40) = 0;
                a2(-2.31584178e77);
              }

              goto LABEL_20;
            }
          }
        }
      }

      sub_8085C(v21);
      goto LABEL_20;
    }
  }

  else
  {
    sub_8085C(v21);
  }

LABEL_13:

LABEL_14:
  if (qword_DE6888 != -1)
  {
    swift_once();
  }

  v17 = sub_AB4BC0();
  __swift_project_value_buffer(v17, qword_E70EB0);
  v18 = sub_AB4BA0();
  v19 = sub_AB9F30();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Error serializing impression keys from bag.  Returning default values.", v20, 2u);
  }

  return (a2)(1000.0, 0.5);
}

uint64_t sub_48D378()
{

  return swift_deallocObject();
}

uint64_t sub_48D3E8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

void sub_48D4FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  sub_AB3790();
  swift_unknownObjectRetain();
  v13 = a3;
  v12(a2, v11, a4);
  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
}

void sub_48D644(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  sub_AB3790();
  v13 = a2;
  v14 = a3;
  v12(v11, v14, a4);

  (*(v9 + 8))(v11, v8);
}

uint64_t sub_48D83C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  return sub_ABA790() & 1;
}

uint64_t sub_48D8C4()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

double sub_48DA20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  sub_AB9250();
  v7 = __chkstk_darwin(a1);
  v8 = *(v7 + 16);
  v38 = *v7;
  v39 = v8;
  v9 = *(v7 + 48);
  v32 = *(v7 + 32);
  v33 = v9;
  v34 = *(v7 + 64);
  v35 = *(v7 + 80);
  if (a2 == 1)
  {
    sub_576EC(v7, v36);
    sub_12E1C(&v38, &unk_DEE6F0);
    sub_AB91E0();
    sub_AB3550();
    v10 = 0;
    v11 = 0;
  }

  else
  {
    sub_576EC(v7, v36);
    sub_AB91E0();
    sub_AB3550();
    v10 = sub_AB9320();
    v11 = v12;
    sub_12E1C(&v38, &unk_DEE6F0);
    static ApplicationCapabilities.shared.getter(v36);
    sub_70C54(v36);
    if (v37 != 2)
    {
      sub_ABB3C0();
    }

    sub_AB91E0();
    sub_AB3550();
  }

  v13 = sub_AB9320();
  v15 = v14;
  sub_12E1C(&v39, &unk_DEE6F0);
  *&v21 = v10;
  *(&v21 + 1) = v11;
  *&v22 = v13;
  *(&v22 + 1) = v15;
  v23 = v32;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v27[0] = v10;
  v27[1] = v11;
  v27[2] = v13;
  v27[3] = v15;
  v31 = v35;
  v30 = v34;
  v29 = v33;
  v28 = v32;
  sub_576EC(&v21, &v20);
  sub_57748(v27);
  v16 = v24;
  v17 = v25;
  *(a3 + 32) = v23;
  *(a3 + 48) = v16;
  *(a3 + 64) = v17;
  *(a3 + 80) = v26;
  result = *&v21;
  v19 = v22;
  *a3 = v21;
  *(a3 + 16) = v19;
  return result;
}

id sub_48DDCC(char *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = sub_AB35C0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_AB9250();
  __chkstk_darwin(v12 - 8);
  *&v6[qword_E09B28] = 0;
  *&v6[qword_E09B30] = 0;
  *&v6[qword_E09B48] = 0;
  v6[qword_E09B50] = 0;
  *&v6[qword_E09B58] = 0;
  v13 = qword_E09B60;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  (*(*(v14 - 8) + 56))(&v6[v13], 1, 1, v14);
  *&v6[qword_E09B68] = 0;
  *&v6[qword_E09B70] = 0;
  *&v6[qword_E09B78] = _swiftEmptyArrayStorage;
  v15 = &v6[qword_E09B80];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v6[qword_E09B88] = 0;
  *&v6[qword_E09B90] = 0;
  v6[qword_E09B98] = 0;
  v16 = &v6[qword_E09B38];
  *v16 = a1;
  v16[8] = a2 & 1;
  *&v6[qword_E09B40] = a5;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  v17 = a5;
  if (a1 == &dword_0 + 1)
  {
    v18 = &off_CEFD70;
  }

  else
  {
    sub_31828(a1);
    v18 = &off_CEFD48;
  }

  *&v6[qword_E09B20] = sub_225174(v18, 0, 0);
  v31.receiver = v6;
  v31.super_class = type metadata accessor for PlaylistsViewController();
  v19 = objc_msgSendSuper2(&v31, "init");
  v20 = v19;
  if (!a4)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
  }

  v21 = sub_AB9260();

  [v19 setTitle:v21];

  v22 = [v19 navigationItem];
  [v22 _setSupportsTwoLineLargeTitles:1];

  sub_31828(a1);
  v23 = sub_AB9260();
  sub_31838(a1);

  [v19 setPlayActivityFeatureName:v23];

  v24 = objc_opt_self();
  v25 = [v24 currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (!v26)
  {
    v27 = sub_AB9260();
    [v19 setRestorationIdentifier:v27];
  }

  v28 = [v24 currentDevice];
  v29 = [v28 userInterfaceIdiom];

  if (!v29)
  {
    _s16MusicApplication16RestorationClassCMa_3();
    [v19 setRestorationClass:swift_getObjCClassFromMetadata()];
  }

  sub_31838(a1);
  return v19;
}

void sub_48E298(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PlaylistsViewController();
  objc_msgSendSuper2(&v12, "encodeRestorableStateWithCoder:", a1);
  v3 = [v1 title];
  v4 = sub_AB9260();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *&v1[qword_E09B38];
  if (v5 >= 2)
  {
    v6 = type metadata accessor for CodableModelIdentity();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model] = v5;
    sub_31828(v5);
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = v5;
    v9 = objc_msgSendSuper2(&v11, "init");
    v10 = sub_AB9260();
    [a1 encodeObject:v9 forKey:{v10, v11.receiver, v11.super_class}];

    sub_31838(v5);
  }
}

void sub_48E3F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_48E298(v4);
}

void sub_48E45C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DB0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v10 = MPModelRelationshipPlaylistCurator;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  v14 = v10;
  isa = sub_AB9740().super.isa;
  v16 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v16;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v17 = objc_allocWithZone(MPPropertySet);
  v18 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v19 = sub_AB8FD0().super.isa;

  v20 = [v17 initWithProperties:v18 relationships:v19];

  qword_E71A50 = v20;
}

_BYTE *sub_48E708()
{
  v1 = qword_E09B28;
  v2 = *(v0 + qword_E09B28);
  if (v2)
  {
    v3 = *(v0 + qword_E09B28);
  }

  else
  {
    v4 = *(v0 + qword_E09B38);
    objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
    if (v4 == 1)
    {
      v5 = 6;
    }

    else
    {
      v5 = 8;
    }

    v6 = v0;
    v7 = sub_4F4944(v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_48E79C()
{
  v1 = qword_E09B30;
  if (*&v0[qword_E09B30])
  {
    v2 = *&v0[qword_E09B30];
  }

  else
  {
    v3 = *&v0[qword_E09B38];
    sub_31828(v3);
    v4 = sub_48D8C4();
    v6 = v5;
    sub_31838(v3);
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v7 = v0;
    v2 = sub_4309D4(v4, v6);

    *&v0[v1] = v2;
  }

  return v2;
}

void sub_48E870()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  __chkstk_darwin(v1);
  v3 = v65 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v5 = __chkstk_darwin(v4 - 8);
  v78 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v65 - v8;
  v10 = __chkstk_darwin(v7);
  v79 = v65 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v65 - v13;
  __chkstk_darwin(v12);
  v16 = v65 - v15;
  v17 = sub_AB3820();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  __chkstk_darwin(v22);
  if (v0[qword_E09B50] == 1)
  {
    v25 = *&v0[qword_E09B48];
    if (v25)
    {
      *&v0[qword_E09B48] = 0;
      v26 = *&v0[qword_DFE2F0];
      if (!v26)
      {

        (*(v18 + 56))(v16, 1, 1, v17);
LABEL_11:
        sub_12E1C(v16, &unk_DE8E20);
        return;
      }

      v75 = v65 - v23;
      v76 = v24;
      v73 = v3;
      v77 = v18;
      v27 = [v26 results];
      if (v27)
      {
        v28 = v27;
        v74 = v25;
        v29 = [v25 identifiers];
        v30 = [v28 indexPathForItemWithIdentifiersIntersectingSet:v29];

        if (v30)
        {
          sub_AB3790();

          v31 = v77;
          v32 = *(v77 + 56);
          v33 = v14;
          v34 = 0;
        }

        else
        {
          v31 = v77;
          v32 = *(v77 + 56);
          v33 = v14;
          v34 = 1;
        }

        v72 = v32;
        v32(v33, v34, 1, v17);
        sub_36B0C(v14, v16, &unk_DE8E20);
        v36 = v31 + 6;
        v35 = v31[6];
        if (v35(v16, 1, v17) == 1)
        {

          goto LABEL_11;
        }

        v71 = v35;
        v37 = v75;
        v66 = v31[4];
        v67 = v31 + 4;
        v66(v75, v16, v17);
        v39 = v31 + 2;
        v38 = v31[2];
        v38(v76, v37, v17);
        [v0 loadViewIfNeeded];
        v40 = *&v0[qword_DFE2F8];
        if (v40)
        {
          v70 = v38;
          v68 = qword_DFE2F8;
          v41 = v40;
          v42 = [v41 indexPathsForSelectedItems];
          v69 = v36;
          if (v42)
          {
            v65[1] = v39;
            v43 = v42;
            v44 = sub_AB9760();

            if (*(v44 + 16))
            {
              v45 = v44 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
              v46 = v79;
              v47 = v70;
              v65[0] = v44;
              v70(v79, v45, v17);
              v48 = v72;
              v72(v46, 0, 1, v17);

              v47(v9, v76, v17);
            }

            else
            {
              v46 = v79;
              v48 = v72;
              v72(v79, 1, 1, v17);

              v70(v9, v76, v17);
            }
          }

          else
          {

            v46 = v79;
            v48 = v72;
            v72(v79, 1, 1, v17);
            v70(v9, v76, v17);
          }

          v48(v9, 0, 1, v17);
          v49 = *(v1 + 48);
          v50 = v73;
          sub_15F84(v46, v73, &unk_DE8E20);
          sub_15F84(v9, v50 + v49, &unk_DE8E20);
          v51 = v71;
          if (v71(v50, 1, v17) == 1)
          {
            sub_12E1C(v9, &unk_DE8E20);
            sub_12E1C(v46, &unk_DE8E20);
            v52 = v51(v50 + v49, 1, v17);
            v53 = v50;
            v54 = v77;
            if (v52 == 1)
            {
              sub_12E1C(v50, &unk_DE8E20);
LABEL_28:

              v64 = *(v54 + 8);
              v64(v76, v17);
              v64(v75, v17);
              return;
            }
          }

          else
          {
            v55 = v78;
            sub_15F84(v50, v78, &unk_DE8E20);
            v56 = v51(v50 + v49, 1, v17);
            v53 = v50;
            v54 = v77;
            if (v56 != 1)
            {
              v66(v21, (v50 + v49), v17);
              sub_497890(&qword_DF7940, &type metadata accessor for IndexPath);
              v62 = sub_AB91C0();
              v63 = *(v54 + 8);
              v63(v21, v17);
              sub_12E1C(v9, &unk_DE8E20);
              sub_12E1C(v79, &unk_DE8E20);
              v63(v78, v17);
              sub_12E1C(v50, &unk_DE8E20);
              if (v62)
              {
                goto LABEL_28;
              }

              goto LABEL_25;
            }

            sub_12E1C(v9, &unk_DE8E20);
            sub_12E1C(v79, &unk_DE8E20);
            (*(v54 + 8))(v55, v17);
          }

          sub_12E1C(v53, &unk_DF7930);
LABEL_25:
          [v0 loadViewIfNeeded];
          v57 = *&v0[v68];
          if (v57)
          {
            v58 = v57;
            v59 = v76;
            isa = sub_AB3770().super.isa;
            [v58 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

            v61 = *(v54 + 8);
            v61(v59, v17);
            v61(v75, v17);

            return;
          }

          goto LABEL_32;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_48F140()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PlaylistsViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v1 = *&v0[qword_E09B20];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = v1[8];
  v1[8] = sub_497F9C;
  v1[9] = v2;

  sub_17654(v3);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v1[6];
  v1[6] = sub_141790;
  v1[7] = v4;

  sub_17654(v5);

  v6 = sub_48E79C();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v6 + 88);
  *(v6 + 88) = sub_49805C;
  *(v6 + 96) = v7;

  sub_17654(v8);

  v9 = [v0 navigationItem];
  v10 = [v9 rightBarButtonItems];
  if (v10)
  {
    v11 = v10;
    sub_13C80(0, &unk_DF12E0);
    v12 = sub_AB9760();

    v9 = v11;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  *&v0[qword_E09B78] = v12;

  sub_494A24(0);
}

void sub_48F344()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_4923B0();
  }
}

void sub_48F398(void *a1)
{
  v1 = a1;
  sub_48F140();
}

void sub_48F3E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PlaylistsViewController();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewWillAppear:", a3);
  if (v4[qword_DFE2A0] == 1)
  {
    [v4 loadViewIfNeeded];
    v5 = *&v4[qword_E09B48];
    *&v4[qword_E09B48] = 0;

    sub_48E870();
  }
}

void sub_48F484(char a1)
{
  v3 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaylistsViewController();
  v10.receiver = v1;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v7 = *&v1[qword_E09B38];
  if (v7 == 1)
  {
    v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v9 = MetricsEvent.Page.libraryMadeForYou.unsafeMutableAddressor();
  }

  else
  {
    if (v7)
    {
      return;
    }

    v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v9 = MetricsEvent.Page.libraryPlaylistsList.unsafeMutableAddressor();
  }

  sub_497ED4(v9, v5, type metadata accessor for MetricsEvent.Page);
  (*(&stru_68.reloff + (swift_isaMask & *v8)))(v5, 0, 0, 0, 0, 0);
  sub_497F3C(v5, type metadata accessor for MetricsEvent.Page);
}

void sub_48F5E4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_48F484(a3);
}

void sub_48F638(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for PlaylistsViewController();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  if (*&v4[qword_E09B38] == 1)
  {
    sub_4933E8();
  }
}

void sub_48F6B4(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PlaylistsViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if ([v1 isViewLoaded])
  {
    if (a1)
    {
      v3 = [a1 horizontalSizeClass];
    }

    else
    {
      v3 = 0;
    }

    v4 = [v1 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (!a1 || v3 != v5)
    {
      [v1 loadViewIfNeeded];
      v6 = *&v1[qword_DFE2F8];
      if (v6)
      {
        v7 = [v6 collectionViewLayout];
        sub_492904(v7);

        sub_494A24(0);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_48F7C4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_48F6B4(a3);
}

uint64_t sub_48F830(void *a1)
{
  sub_3B316C(a1);
  [a1 setAlwaysBounceHorizontal:0];
  [a1 setShowsHorizontalScrollIndicator:0];
  type metadata accessor for PlayIntentControlsReusableView();
  sub_AB92A0();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  type metadata accessor for AlbumCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  sub_13C80(0, &unk_DF0CF0);
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();
}

void sub_48F974()
{
  v1 = v0;
  *(v0 + qword_E09B50) = 1;
  sub_48E870();
  sub_493D58();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_48E79C();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v12 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_E09B30) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v13)
  {
    goto LABEL_10;
  }

LABEL_11:

  sub_4964C8();
}

char *sub_48FA90(uint64_t a1, uint64_t a2, void *a3)
{
  object = v3;
  v7 = sub_AB35C0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_AB9250();
  __chkstk_darwin(v8 - 8);
  v9 = sub_AB9230();
  __chkstk_darwin(v9 - 8);
  if (sub_AB92A0() == a2 && v10 == a3)
  {
    goto LABEL_7;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
    sub_ABAD90(66);
    v46._countAndFlagsBits = 0xD000000000000026;
    v46._object = 0x8000000000B58540;
    sub_AB94A0(v46);
    v47._countAndFlagsBits = a2;
    v47._object = a3;
    sub_AB94A0(v47);
    v48._object = 0x8000000000B58570;
    v48._countAndFlagsBits = 0xD000000000000018;
    sub_AB94A0(v48);
    sub_AB3820();
    sub_497890(&qword_DF9260, &type metadata accessor for IndexPath);
    v49._countAndFlagsBits = sub_ABB330();
    object = v49._object;
    sub_AB94A0(v49);

    sub_ABAFD0();
    __break(1u);
LABEL_7:
  }

  type metadata accessor for PlayIntentControlsReusableView();
  static UICollectionReusableView.reuseIdentifier.getter();
  v13 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  v14 = *&object[direct field offset for BrowseCollectionViewController.textDrawingCache];
  *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textDrawingCache] = v14;
  swift_retain_n();

  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView];
  v16 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v17 = *(v15 + v16);
  *(v15 + v16) = v14;
  swift_retain_n();
  sub_2E6210(v17);

  sub_AB9220();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_AB9210(v50);
  v18 = qword_E09B88;
  sub_AB91F0();
  v51._countAndFlagsBits = 0x73696C79616C5020;
  v51._object = 0xEC00000029732874;
  sub_AB9210(v51);
  sub_AB9240();
  sub_AB3550();
  v19 = sub_AB9320();
  v20 = &v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title];
  *v20 = v19;
  v20[1] = v21;

  sub_413638();
  v22 = [object traitCollection];
  v23 = UITraitCollection.isMediaPicker.getter();

  v24 = 1;
  if (!v23 && *&object[qword_E09B38] > 1uLL)
  {
    v24 = *&object[v18] == 0;
  }

  v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shouldHide] = v24;
  [v13 setHidden:?];
  v25 = v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden];
  v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden] = 1;
  if ((v25 & 1) == 0)
  {
    [*&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView] setHidden:1];
  }

  v26 = v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden];
  v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden] = 1;
  if ((v26 & 1) == 0)
  {
    [*&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView] setHidden:1];
  }

  v27 = [object traitCollection];
  v28 = [v27 horizontalSizeClass];

  if (v28 == &dword_0 + 2 || (v29 = *&object[qword_DFE290]) != 0 && *(v29 + 32) == 1)
  {
    v30 = v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment];
    v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment] = 1;
    if (v30)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v45 = v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment];
  v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment] = 0;
  if (v45 == 1)
  {
LABEL_19:
    [v13 setNeedsLayout];
  }

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA940);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_AF4EC0;
  *(v31 + 32) = 0;
  v32 = [object traitCollection];
  v33 = [v32 horizontalSizeClass];

  if (v33 == &dword_0 + 2)
  {
    v31 = sub_6B7E4(&dword_0 + 1, 2, 1, v31);
    *(v31 + 16) = 2;
    *(v31 + 33) = 1;
  }

  v34 = *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
  *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents] = v31;
  if ((sub_12D0A4(v31, v34) & 1) == 0)
  {
    sub_413EB8();
    [v13 setNeedsLayout];
  }

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v13;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_497218;
  *(v37 + 24) = v36;
  v38 = &v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  v39 = *&v13[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  *v38 = sub_140E00;
  v38[1] = v37;
  v40 = v13;

  sub_17654(v39);
  sub_413EB8();
  [v40 setNeedsLayout];

  v41 = swift_allocObject();
  *(v41 + 16) = sub_497218;
  *(v41 + 24) = v36;
  v42 = &v40[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  v43 = *&v40[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  *v42 = sub_140E2C;
  v42[1] = v41;

  sub_17654(v43);
  sub_413EB8();
  [v40 setNeedsLayout];

  return v40;
}

void sub_49024C(uint64_t a1, uint64_t a2, void *a3)
{
  v57 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v4 - 8);
  v56 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - v7;
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v12);
  v15 = &v54 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v54 - v17;
  __chkstk_darwin(v16);
  v58 = &v54 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  sub_495EF4(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_12E1C(v8, &unk_DEA510);
    return;
  }

  v22 = v8;
  v23 = v58;
  sub_28E998(v22, v58, type metadata accessor for PlaybackIntentDescriptor);
  v24 = v21;
  [a3 bounds];
  v69[0] = a3;
  v69[1] = v25;
  v69[2] = v26;
  v69[3] = v27;
  v69[4] = v28;
  v70 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v69, 15, v61);
  v65[0] = v61[0];
  v65[1] = v61[1];
  v66 = v62;
  v67 = v63;
  v68 = v64;
  v29 = v24;
  v30 = a3;
  v55 = v29;
  PresentationSource.init(viewController:position:)(v29, v65, v60);
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  sub_497ED4(v23, v18, type metadata accessor for PlaybackIntentDescriptor);
  v31 = v15;
  sub_497ED4(v18, v15, type metadata accessor for PlaybackIntentDescriptor);
  v32 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_497ED4(v18, v32, type metadata accessor for PlaybackIntentDescriptor);
  v33 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v34 = swift_allocObject();
  sub_28E998(v18, v34 + v33, type metadata accessor for PlaybackIntentDescriptor);
  v35 = v57;
  *(v34 + ((v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;
  v36 = sub_10AC20(0);
  v37 = sub_10CB1C(0, 0, v36);
  ExplicitRestrictionsController.shared.unsafeMutableAddressor();

  ExplicitRestrictionsController.explicitContentIsAllowed.getter();

  if (v37)
  {
    goto LABEL_7;
  }

  if (v36 > 4)
  {
    if (v36 <= 6)
    {
      if (v36 != (&dword_4 + 1))
      {
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_15F28(v60, v59);
        v53 = swift_allocObject();
        v53[2] = v52;
        v53[3] = 0;
        sub_17704(v59, (v53 + 4));
        v53[16] = sub_21B5C4;
        v53[17] = v34;

        sub_10DB34(sub_111AA8, v53);

        goto LABEL_8;
      }

      v50 = sub_10FB2C(0, 0);
      v51 = v50;
      goto LABEL_29;
    }

    if (v36 == (&dword_4 + 3))
    {
LABEL_33:
      sub_1101F4(0, v60);
      goto LABEL_8;
    }

    if (v36 == &dword_8)
    {
      v46 = sub_AB9990();
      v47 = v56;
      (*(*(v46 - 8) + 56))(v56, 1, 1, v46);
      sub_15F28(v60, v59);
      sub_AB9940();
      v48 = sub_AB9930();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = &protocol witness table for MainActor;
      sub_17704(v59, v49 + 32);
      sub_DBDC8(0, 0, v47, &unk_AF79B0, v49);

      goto LABEL_8;
    }

    if (v36 == (&dword_8 + 1))
    {
      sub_10FFD8();
      goto LABEL_8;
    }

LABEL_35:
    sub_497F3C(v32, type metadata accessor for PlaybackIntentDescriptor);
    sub_497F3C(v31, type metadata accessor for PlaybackIntentDescriptor);
    v59[0] = v36;
    sub_ABB450();
    __break(1u);
    return;
  }

  if (v36 > 1)
  {
    if (v36 == (&dword_0 + 2))
    {
      sub_10F978();
      goto LABEL_8;
    }

    if (v36 == (&dword_0 + 3))
    {
      static Alert.cellularRestrictedAlert(model:)(0, v59);
    }

    else
    {
      static Alert.networkUnavailableAlert(model:traitCollection:)(0, 0, v59);
    }

    v51 = Alert.uiAlertController.getter();
    sub_111904(v59);
    v50 = v51;
LABEL_29:
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v50, 1, 1, 0, 0);
    UIViewController.dismiss(after:)(480.0);

    goto LABEL_9;
  }

  if (v36)
  {
    if (v36 == (&dword_0 + 1))
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_7:
  v39 = PlaybackIntentDescriptor.intent.getter(v38);
  [v39 setShuffleMode:v35];

  v41 = PlaybackIntentDescriptor.intent.getter(v40);
  [v41 setRepeatMode:0];

  sub_37D3DC(0);
LABEL_8:

LABEL_9:
  sub_497F3C(v32, type metadata accessor for PlaybackIntentDescriptor);
  sub_497F3C(v31, type metadata accessor for PlaybackIntentDescriptor);
  v42 = v55;
  v43 = [v55 navigationItem];

  v44 = [v43 searchController];
  if (v44)
  {
    v45 = v44;

    v43 = [v45 searchBar];
    [v43 resignFirstResponder];
  }

  sub_1611C(v60);
  sub_497F3C(v58, type metadata accessor for PlaybackIntentDescriptor);
}

char *sub_490AB0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = sub_48FA90(v16, v13, v15);

  (*(v10 + 8))(v12, v9);

  return v20;
}

char *sub_490C10(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A420);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v94 = v82 - v11;
  v95 = sub_AB3820();
  v12 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  if (result)
  {
    v15 = result;
    [result music_inheritedLayoutInsets];

    result = [v3 view];
    if (result)
    {
      v16 = result;
      [result effectiveUserInterfaceLayoutDirection];

      sub_AB9E90();
      v17 = v95;
      v18 = v96;
      (*(v12 + 16))(v96, a2, v95);
      v19 = *&v3[qword_DFE2F0];
      if (v19)
      {
        v20 = v19;
        v21 = [v20 results];
        if (v21)
        {
          v22 = v21;
          v92 = v7;
          v93 = a1;

          v23 = v96;
          isa = sub_AB3770().super.isa;
          v25 = [v22 itemAtIndexPath:isa];

          v26 = v25;
          if (v25)
          {
            objc_opt_self();
            v27 = swift_dynamicCastObjCClass();
            if (v27)
            {
              v28 = v27;
              v29 = *&v3[qword_E09B38];
              v30 = v3[qword_E09B38 + 8];
              sub_31828(v29);
              v89 = v26;
              if (v30)
              {
                v85 = sub_1506B4();
                v86 = v31;
LABEL_18:
                sub_31838(v29);
                goto LABEL_21;
              }

              v33 = [v28 curator];
              if (v33)
              {
                v34 = v33;
                v35 = [v33 name];
                if (v35)
                {
                  v36 = v35;
                  v85 = sub_AB92A0();
                  v86 = v37;

                  goto LABEL_18;
                }
              }

              sub_31838(v29);
              v85 = 0;
              v86 = 0;
LABEL_21:
              v38 = static Artwork.Placeholder.playlist(ofType:)([v28 type], &v102);
              v87 = *(&v102 + 1);
              v39 = v104;
              v90 = v102;
              v91 = v103;
              v40 = v105;
              v84 = v106;
              v41 = [v3 traitCollection];
              v42 = [v41 horizontalSizeClass];

              v88 = v39;
              if (v42 == &dword_0 + 1)
              {
                v43 = v96;
                v32 = sub_3B36A4();
                __chkstk_darwin(v32);
                v44 = v85;
                v82[-4] = v28;
                v82[-3] = v44;
                v82[-2] = v86;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A428);
                sub_497084();
                sub_AB6780();

                sub_AB6AD0();
                v45 = v94;
                sub_AB6770();
                v46 = v92[1];
                v46(v10, v6);
                sub_AB6AF0();
                *(&v111 + 1) = v6;
                *&v112 = sub_36A00(&qword_E0A448, &qword_E0A420);
                __swift_allocate_boxed_opaque_existential_0(&v110);
                sub_AB6770();
                v46(v45, v6);
                sub_ABA2B0();
                swift_unknownObjectRelease();
                v100[0] = v90;
                sub_12E1C(v100, &unk_DFDE40);
                v97[0] = v87;
                sub_12E1C(v97, &unk_DFDE40);
                v101[0] = v91;
                sub_12E1C(v101, &unk_E00030);

                (*(v12 + 8))(v43, v95);
              }

              else
              {
                v94 = v40;
                v47 = v91;
                v48 = sub_3B34DC(v96);
                v49 = [v28 name];
                v83 = v28;
                if (v49)
                {
                  v50 = v49;
                  v51 = sub_AB92A0();
                  v53 = v52;
                }

                else
                {
                  v51 = 0;
                  v53 = 0xE000000000000000;
                }

                v54 = &v48[OBJC_IVAR____TtC16MusicApplication9AlbumCell_title];
                swift_beginAccess();
                v55 = *v54;
                v56 = v54[1];
                *v54 = v51;
                v54[1] = v53;
                sub_1AE488(v55, v56);

                if (v86)
                {
                  v57 = v85;
                }

                else
                {
                  v57 = 0;
                }

                if (v86)
                {
                  v58 = v86;
                }

                else
                {
                  v58 = 0xE000000000000000;
                }

                v59 = &v48[OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName];
                swift_beginAccess();
                v60 = *v59;
                v61 = v59[1];
                *v59 = v57;
                v59[1] = v58;
                sub_1AE788(v60, v61);

                v62 = v90;
                v108 = v87;
                v109 = v90;
                v63 = v87;
                v107 = v47;
                v64 = &v48[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
                swift_beginAccess();
                v65 = *v64;
                v92 = *(v64 + 1);
                v93 = v65;
                v66 = *(v64 + 2);
                v85 = *(v64 + 3);
                v86 = v66;
                v67 = *(v64 + 4);
                v82[0] = *(v64 + 5);
                v82[1] = v67;
                sub_15F84(&v109, &v110, &unk_DFDE40);
                sub_15F84(&v108, &v110, &unk_DFDE40);
                sub_15F84(&v107, &v110, &unk_E00030);
                v68 = v88;
                v69 = v88;
                sub_15F84(&v109, &v110, &unk_DFDE40);
                sub_15F84(&v108, &v110, &unk_DFDE40);
                sub_15F84(&v107, &v110, &unk_E00030);
                *v64 = v62;
                *(v64 + 1) = v63;
                v70 = v63;
                v71 = v91;
                *(v64 + 2) = v91;
                *(v64 + 3) = v68;
                v72 = v94;
                v73 = v84;
                *(v64 + 4) = v94;
                *(v64 + 5) = v73;
                v74 = v69;
                v32 = v48;
                sub_2F1C8(v93, v92, v86, v85);
                v75 = *&v32[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
                v76 = *(v75 + 168);
                v110 = *(v75 + 152);
                v111 = v76;
                v112 = *(v75 + 184);
                *(v75 + 152) = v90;
                *(v75 + 160) = v70;
                *(v75 + 168) = v71;
                *(v75 + 176) = v68;
                *(v75 + 184) = v72;
                *(v75 + 192) = v73;
                sub_15F84(&v109, v100, &unk_DFDE40);
                sub_15F84(&v108, v100, &unk_DFDE40);
                sub_15F84(&v107, v100, &unk_E00030);
                v77 = v74;
                sub_15F84(&v109, v100, &unk_DFDE40);
                sub_15F84(&v108, v100, &unk_DFDE40);
                sub_15F84(&v107, v100, &unk_E00030);
                v78 = v77;
                sub_75948(&v110);
                sub_12E1C(&v110, &unk_DF8690);
                sub_12E1C(&v109, &unk_DFDE40);
                sub_12E1C(&v108, &unk_DFDE40);
                sub_12E1C(&v107, &unk_E00030);

                sub_12E1C(&v109, &unk_DFDE40);
                sub_12E1C(&v108, &unk_DFDE40);
                sub_12E1C(&v107, &unk_E00030);

                v100[3] = sub_13C80(0, &unk_DE8EA0);
                v100[4] = &off_D17A48;
                v100[0] = v83;
                sub_15F84(v100, v97, &unk_DE9C60);
                v79 = v98;
                if (v98)
                {
                  v80 = v99;
                  __swift_project_boxed_opaque_existential_1(v97, v98);
                  swift_unknownObjectRetain();
                  v81 = sub_4CAA30(&off_CEFDE8, v79, v80);
                  __swift_destroy_boxed_opaque_existential_0(v97);
                }

                else
                {
                  swift_unknownObjectRetain();
                  sub_12E1C(v97, &unk_DE9C60);
                  v81 = _swiftEmptyArrayStorage;
                }

                sub_1783C8(v81);
                swift_unknownObjectRelease();

                sub_12E1C(&v109, &unk_DFDE40);
                sub_12E1C(&v108, &unk_DFDE40);
                sub_12E1C(&v107, &unk_E00030);

                (*(v12 + 8))(v96, v95);
                sub_12E1C(v100, &unk_DE9C60);
              }

              return v32;
            }

            swift_unknownObjectRelease();
            (*(v12 + 8))(v96, v95);
          }

          else
          {
            (*(v12 + 8))(v23, v95);
          }
        }

        else
        {
          (*(v12 + 8))(v96, v95);
        }
      }

      else
      {
        (*(v12 + 8))(v18, v17);
      }

      sub_13C80(0, &unk_DF0CF0);
      static UICollectionReusableView.reuseIdentifier.getter();
      v32 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

      return v32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_49176C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v31 = a4;
  v30 = sub_AB6CD0();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MediumPlaylistCell();
  __chkstk_darwin(v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    v28 = sub_AB92A0();
    v15 = v14;
  }

  else
  {
    v28 = 0;
    v15 = 0;
  }

  v16 = MPModelPlaylist.preferredArtworkCatalog.getter();
  v17 = v9[7];
  MPModelPlaylistType.variant.getter([a1 type], v11 + v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F20);
  (*(*(v18 - 8) + 56))(v11 + v17, 0, 11, v18);
  v19 = [a1 isFavorite];
  v20 = sub_AB74D0();
  v21 = sub_AB6B70();
  v22 = v29;
  *v11 = v28;
  v11[1] = v15;
  v11[2] = v22;
  v11[3] = a3;
  v11[4] = v16;
  v23 = v11 + v9[8];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  *(v11 + v9[9]) = v20;
  *(v11 + v9[10]) = v21;
  *(v11 + v9[11]) = 1;
  *(v11 + v9[12]) = 0;
  *(v11 + v9[13]) = v19;
  *(v11 + v9[14]) = 0;
  v32 = 0x4020000000000000;
  (*(v6 + 104))(v8, enum case for Font.TextStyle.largeTitle(_:), v30);
  sub_8150C();
  sub_AB58E0();
  v24 = v9[16];
  *(v11 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8A0);
  v25 = swift_storeEnumTagMultiPayload();
  __chkstk_darwin(v25);
  *(&v27 - 2) = a1;
  sub_497890(&qword_E0A438, type metadata accessor for MediumPlaylistCell);
  View.placeholderStyle(_:)(sub_497198);
  return sub_497F3C(v11, type metadata accessor for MediumPlaylistCell);
}

uint64_t sub_491ADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 type];
  if (v3 == &dword_8 + 1 || v3 == &dword_0 + 3)
  {
    v5 = ArtworkImage.Placeholder.View.Style.accentuated.unsafeMutableAddressor();
    sub_497ED4(v5, a2, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

char *sub_491B8C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  v14 = sub_490C10(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

void sub_491CB4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3B38B0(a1, a2, a3);
  (*(v8 + 16))(v10, a3, v7);
  v11 = *(v3 + qword_DFE2F0);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v12 results];
  if (!v13)
  {
    (*(v8 + 8))(v10, v7);

    return;
  }

  v14 = v13;

  isa = sub_AB3770().super.isa;
  v16 = [v14 itemAtIndexPath:isa];

  if (!v16)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_9:
    (*(v8 + 8))(v10, v7);
    return;
  }

  v17 = MPModelPlaylist.preferredArtworkCatalog.getter();
  type metadata accessor for HorizontalLockupCollectionViewCell();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = *(&stru_1F8.flags + (swift_isaMask & *v18));
    v21 = v17;
    v20(v17);
    v22 = *(v19 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton);
    *(v19 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = 0;
    sub_203DB8(v22);

LABEL_13:
    (*(v8 + 8))(v10, v7);
    swift_unknownObjectRelease();
    return;
  }

  type metadata accessor for VerticalLockupCollectionViewCell();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    (*(&stru_108.reloff + (swift_isaMask & *v23)))(v17);
    goto LABEL_13;
  }

  (*(v8 + 8))(v10, v7);
  swift_unknownObjectRelease();
}

void sub_491FA8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_491CB4(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_4920CC(void *a1, uint64_t a2)
{
  sub_3B41F4(a1, a2);
  isa = sub_AB3770().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  sub_494F20();
}

void sub_49213C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];

  sub_494F20();
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_492284(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  swift_unknownObjectRetain();
  v13 = a1;
  LOBYTE(a1) = sub_497B80(v11, v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);

  return a1 & 1;
}

void sub_4923B0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &qword_DE9C10);
  v3 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v4 = [v0 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

  if ((rawValue & 2) != 0 || (v6 = [v1 traitCollection], v7 = UITraitCollection.isMediaPicker.getter(), v6, v7))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = *&v1[qword_E09B38];
  if (v9 == &dword_0 + 1)
  {
    v10 = 64;
  }

  else
  {
    sub_31828(*&v1[qword_E09B38]);
    v10 = static MPModelPlaylistVariants.playlistsAndFolders.getter();
  }

  v11 = (*(sub_48E79C() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;

    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      if (v9 < 2)
      {
        v10 &= ~8uLL;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v15 = objc_opt_self();
  v16 = v2;
  v17 = [v15 kindWithVariants:v10 playlistEntryKind:v3 options:v8];
  [v16 setItemKind:v17];

  v18 = sub_AB9260();
  [v16 setLabel:v18];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  isa = sub_AB9740().super.isa;
  v22 = [objc_opt_self() propertySetWithProperties:isa];

  [v16 setSectionProperties:v22];
  if (qword_DE6D50 != -1)
  {
    swift_once();
  }

  [v16 setItemProperties:qword_E71A50];
  sub_13C80(0, &unk_DFDE50);

  v23 = sub_AB9740().super.isa;

  [v16 setItemSortDescriptors:v23];

  v24 = sub_48E708();
  v25 = v24;
  if (v24[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
  {
    v26 = v24[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType];

    v27 = qword_B11E98[v26];
  }

  else
  {
    v27 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  [v16 setFilteringOptions:v27];
  sub_495CA0(v16, 1);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30[4] = sub_497848;
  v30[5] = v28;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_151E0;
  v30[3] = &block_descriptor_158_0;
  v29 = _Block_copy(v30);

  [v16 performWithResponseHandler:v29];

  _Block_release(v29);
  sub_31838(v9);
}

uint64_t sub_49283C(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_13C80(0, &qword_DE8ED0);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = a1;
    v5 = a1;
    v6 = v3;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_15C864, v4);
  }

  return result;
}

void sub_492904(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = v4;
  v6 = &v1[qword_E09B80];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = qword_DFE2F8;
  if (!*&v1[qword_DFE2F8])
  {
    v11 = a1;
    goto LABEL_13;
  }

  if ([v4 horizontalSizeClass] == &dword_0 + 1)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      [v1 loadViewIfNeeded];
      v8 = *&v1[v7];
      if (!v8)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = v8;
      v10 = sub_49414C();
      goto LABEL_10;
    }
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      [v1 loadViewIfNeeded];
      v12 = *&v1[v7];
      if (!v12)
      {
LABEL_23:
        __break(1u);
        return;
      }

      v13 = objc_allocWithZone(UICollectionViewFlowLayout);
      v9 = v12;
      v10 = [v13 init];
LABEL_10:
      v14 = v10;
      [v9 setCollectionViewLayout:v10];
    }
  }

  [v2 loadViewIfNeeded];
  v15 = *&v2[v7];
  if (!v15)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = [v15 collectionViewLayout];
LABEL_13:
  v16 = v11;
  sub_13C80(0, &qword_E0A450);
  v20 = v16;
  LOBYTE(v16) = sub_ABA790();

  if ((v16 & 1) == 0)
  {
    [v2 loadViewIfNeeded];
    v19 = *&v2[v7];
    if (v19)
    {
      v18 = v19;
      [v18 reloadData];
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50);
  swift_dynamicCastMetatypeUnconditional();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v20 invalidateLayoutWithContext:v17];
  v18 = v20;
  v20 = v17;
LABEL_17:
}

double sub_492BAC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  v17 = sub_495B60();

  (*(v10 + 8))(v12, v9);
  return v17;
}

void sub_492CE0(void *a1)
{
  v1 = a1;
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 music_inheritedLayoutInsets];
  }

  else
  {
    __break(1u);
  }
}

double sub_492D60(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_497D90(v6);
  v10 = v9;

  return v10;
}

uint64_t sub_492DD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v4 = *(v2 + qword_DFE2F0);
    if (v4 && (v5 = [v4 results]) != 0 && (v6 = v5, v7 = objc_msgSend(v5, "numberOfSections"), v6, v7 >= 1) && sub_497570() >= 1)
    {
      sub_AB37C0();
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = sub_AB3820();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, v8, 1, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class sub_492EC0(void *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = a3;
  v9 = a1;
  sub_492DD0(a3, v7);

  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = sub_AB3770().super.isa;
    (*(v11 + 8))(v7, v10);
    v13 = isa;
  }

  return v13;
}

void *sub_493000()
{
  v1 = qword_E09B58;
  if (*&v0[qword_E09B58])
  {
    v2 = *&v0[qword_E09B58];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A388);
    swift_allocObject();
    v2 = sub_2BF850(v0, v4, 1, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_4930CC@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A418);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v19[-v10];
  v12 = qword_E09B60;
  swift_beginAccess();
  sub_15F84(v1 + v12, v11, &qword_E0A418);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_36B0C(v11, a1, &unk_DF1330);
  }

  sub_12E1C(v11, &qword_E0A418);
  if (*(v1 + qword_E09B38) == 1)
  {
    v15 = sub_AB31C0();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x59726F466564614DLL, 0xEA0000000000756FLL, 0x7972617262694CLL, 0xE700000000000000, v5, 0, 0, 0, a1);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = type metadata accessor for MetricsPageProperties();
  (*(*(v18 - 8) + 56))(a1, v16, 1, v18);
  sub_15F84(a1, v9, &unk_DF1330);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_4977D8(v9, v1 + v12);
  return swift_endAccess();
}

void *sub_4933E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v2 - 8);
  v4 = &v30[-v3 - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = &v30[-v6 - 8];
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v1 + qword_E09B38) == 1)
  {
    v29 = v4;
    sub_493000();
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_AB3420();
    sub_15F84(v31, v30, &qword_DF2BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
    v13 = sub_AB3820();
    v14 = swift_dynamicCast();
    (*(*(v13 - 8) + 56))(v7, v14 ^ 1u, 1, v13);
    v15 = sub_2CBD5C(2u, v12, v7);
    (*(v9 + 8))(v12, v8);
    sub_12E1C(v31, &qword_DF2BD0);
    sub_12E1C(v7, &unk_DE8E20);

    if (!v15)
    {
LABEL_20:

      sub_2E4810(v28);
    }

    if (v15 >> 62)
    {
      v16 = sub_ABB060();
      if (v16)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      if (v16)
      {
LABEL_5:
        *&v31[0] = _swiftEmptyArrayStorage;
        result = sub_6D410(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          return result;
        }

        v17 = *&v31[0];
        if ((v15 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v16; ++i)
          {
            v19 = *(sub_35FC58(i, v15) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

            swift_unknownObjectRelease();
            *&v31[0] = v17;
            v21 = v17[2];
            v20 = v17[3];
            if (v21 >= v20 >> 1)
            {
              sub_6D410((v20 > 1), v21 + 1, 1);
              v17 = *&v31[0];
            }

            v17[2] = v21 + 1;
            v17[v21 + 4] = v19;
          }
        }

        else
        {
          v22 = (v15 + 32);
          do
          {
            v23 = *(*v22 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
            *&v31[0] = v17;
            v25 = v17[2];
            v24 = v17[3];

            if (v25 >= v24 >> 1)
            {
              sub_6D410((v24 > 1), v25 + 1, 1);
              v17 = *&v31[0];
            }

            v17[2] = v25 + 1;
            v17[v25 + 4] = v23;
            ++v22;
            --v16;
          }

          while (v16);
        }

        goto LABEL_19;
      }
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_19:
    v26 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v27 = v29;
    sub_4930CC(v29);
    (*(&stru_68.flags + (swift_isaMask & *v26)))(v17, v27, 0, 0, 0, 0, 0);
    sub_12E1C(v27, &unk_DF1330);

    goto LABEL_20;
  }

  return result;
}

void sub_49388C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = *&v2[qword_DFE2F0];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v10 results];
  if (!v11)
  {
    (*(v6 + 8))(v8, v5);

    goto LABEL_12;
  }

  v12 = v11;
  v13 = v2;

  isa = sub_AB3770().super.isa;
  v15 = [v12 itemAtIndexPath:isa];

  if (!v15)
  {
LABEL_11:
    (*(v6 + 8))(v8, v5);
    goto LABEL_12;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v17 = v16;
  [v13 loadViewIfNeeded];
  v18 = *&v13[qword_DFE2F8];
  if (v18)
  {
    v19 = v18;
    v20 = UICollectionView.globalIndex(for:)();
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      v34 = v20;
      sub_27A160(v17, &v71);
      v74 = v72;
      v75 = v71;
      v69 = v71;
      v70 = v72;
      v27 = v73;
      v28 = sub_279AC8(v73);
      HIDWORD(v33) = v27;
      if (v28 == 0x497972617262696CLL && v29 == 0xEB000000006D6574)
      {
        v30 = 0;
      }

      else
      {
        v30 = sub_ABB3C0() ^ 1;
      }

      sub_15F84(&v75, &v76, &unk_DEE6F0);
      sub_15F84(&v74, &v76, &unk_DEE6F0);

      (*(v6 + 8))(v8, v5);
      sub_28D048(&v71);
      v35 = v69;
      v36 = v70;
      v31 = v34;
      *&v37 = 3;
      *(&v37 + 1) = v34;
      LOWORD(v38[0]) = 512;
      v32 = BYTE4(v33);
      BYTE2(v38[0]) = BYTE4(v33);
      *(v38 + 3) = v67;
      BYTE7(v38[0]) = v68;
      *(v38 + 8) = 0u;
      *(&v38[1] + 8) = 0u;
      *(&v38[2] + 8) = 0u;
      *(&v38[3] + 8) = 0u;
      *(&v38[4] + 1) = 0;
      LOBYTE(v39[0]) = v30 & 1;
      *(v39 + 1) = *v66;
      DWORD1(v39[0]) = *&v66[3];
      *(&v39[0] + 1) = 0;
      *&v39[1] = 0;
      BYTE8(v39[1]) = 2;
      sub_465F4(&v35, &v76);
      swift_unknownObjectRelease();
      v40[0] = v69;
      v40[1] = v70;
      v41 = 3;
      v42 = v31;
      v43 = 512;
      v44 = v32;
      v45 = v67;
      v46 = v68;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0;
      v52 = v30 & 1;
      *v53 = *v66;
      *&v53[3] = *&v66[3];
      v54 = 0;
      v55 = 0;
      v56 = 2;
      sub_46650(v40);
      v63 = v38[3];
      v64 = v38[4];
      v65[0] = v39[0];
      *(v65 + 9) = *(v39 + 9);
      v59 = v37;
      v60 = v38[0];
      v61 = v38[1];
      v62 = v38[2];
      v57 = v35;
      v58 = v36;
      UIScreen.Dimensions.size.getter(*&v35);
      v82 = v63;
      v83 = v64;
      v84[0] = v65[0];
      *(v84 + 9) = *(v65 + 9);
      v78 = v59;
      v79 = v60;
      v80 = v61;
      v81 = v62;
      v76 = v57;
      v77 = v58;
      goto LABEL_13;
    }

    (*(v6 + 8))(v8, v5);
    swift_unknownObjectRelease();
LABEL_12:
    sub_465CC(&v76);
LABEL_13:
    v23 = v83;
    a2[6] = v82;
    a2[7] = v23;
    a2[8] = v84[0];
    *(a2 + 137) = *(v84 + 9);
    v24 = v79;
    a2[2] = v78;
    a2[3] = v24;
    v25 = v81;
    a2[4] = v80;
    a2[5] = v25;
    v26 = v77;
    *a2 = v76;
    a2[1] = v26;
    return;
  }

  __break(1u);
}

void *sub_493D58()
{
  v1 = qword_E09B68;
  if (*&v0[qword_E09B68])
  {
    v2 = *&v0[qword_E09B68];
  }

  else
  {
    v2 = sub_493DC0(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_493DC0(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v3[27];
    v3[27] = sub_497568;
    v3[28] = v6;

    sub_17654(v7);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_493EFC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = sub_48E79C();

  v7 = (*(v6 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v8 = v7[1];
  if (!v8)
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = *v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v11 = v10 != 0;
LABEL_8:
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12 && (v13 = v12, v14 = sub_48E708(), v13, sub_4F4414(v11, v32), v14, *(&v32[0] + 1) != 1))
  {
    v17 = v34;
    v15 = v35;
    v16 = v33;
    v24 = v32[2];
    v23 = v32[3];
    v25 = v32[1];
    v26 = v32[0];
  }

  else
  {
    if (v11)
    {
      if (qword_DE6BD0 != -1)
      {
        swift_once();
      }

      v39 = xmmword_E717A8;
      v40 = xmmword_E717B8;
      v37 = xmmword_E71788;
      v38 = xmmword_E71798;
      v36 = xmmword_E71778;
      v15 = qword_E717C8;
      v41 = qword_E717C8;
      v17 = *(&xmmword_E717B8 + 1);
      v16 = xmmword_E717B8;
      v29 = xmmword_E71798;
      v30 = xmmword_E717A8;
      v27 = xmmword_E71778;
      v28 = xmmword_E71788;
      v18 = &v36;
      v19 = &v31;
      goto LABEL_18;
    }

    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (!v20)
    {
      v17 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = *(a1 + 64);
      v29 = *(a1 + 32);
      v30 = *(a1 + 48);
      v27 = *a1;
      v28 = *(a1 + 16);
      v19 = &v36;
      v18 = a1;
LABEL_18:
      sub_576EC(v18, v19);
      v26 = v27;
      v25 = v28;
      v24 = v29;
      v23 = v30;
      goto LABEL_19;
    }

    v21 = *(v20 + qword_E09B38);
    v22 = v20;
    sub_31828(v21);

    sub_48DA20(a1, v21, &v36);
    sub_31838(v21);
    v17 = *(&v40 + 1);
    v15 = v41;
    v16 = v40;
    v24 = v38;
    v23 = v39;
    v26 = v36;
    v25 = v37;
  }

LABEL_19:
  *a2 = v26;
  *(a2 + 16) = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v23;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  *(a2 + 80) = v15;
}

id sub_49414C()
{
  v1 = qword_E09B70;
  v2 = *(v0 + qword_E09B70);
  if (v2)
  {
    v3 = *(v0 + qword_E09B70);
  }

  else
  {
    v4 = sub_4941B0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_4941B0(uint64_t a1)
{
  v18[1] = a1;
  v18[0] = sub_AB52B0();
  v1 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB5170();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB5290();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB5320();
  v12 = swift_allocBox();
  (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v8);
  sub_AB52C0();
  (*(v5 + 104))(v7, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v4);
  v13 = sub_AB5270();
  sub_AB5130();
  v13(aBlock, 0);
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v18[0]);
  sub_AB52E0();
  sub_AB5300();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_AB5310();
  v14 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_497560;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_496F34;
  aBlock[3] = &block_descriptor_152_0;
  v15 = _Block_copy(aBlock);

  v16 = [v14 initWithSectionProvider:v15];
  _Block_release(v15);

  return v16;
}

void sub_49452C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      [v6 music_inheritedLayoutInsets];

      v8 = [v5 view];
      if (v8)
      {
        v9 = v8;
        [v8 effectiveUserInterfaceLayoutDirection];

        sub_AB9E90();
        v11 = [v5 traitCollection];

        v12 = [v11 preferredContentSizeCategory];
        sub_ABA320();

        v13 = sub_AB5180();
        (*(*(v13 - 8) + 16))(a2, a1, v13);
        sub_AB5140();
        sub_AB5160();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v10 = sub_AB5180();
    (*(*(v10 - 8) + 16))(a2, a1, v10);
  }
}

void *sub_49476C(uint64_t a1, void *a2)
{
  v4 = sub_AB5320();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  sub_13C80(0, &qword_DF0D20);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_ABA400();
  (*(v5 + 8))(v7, v4);
  v10 = [a2 traitCollection];
  LOBYTE(a2) = UITraitCollection.isMediaPicker.getter();

  if (a2)
  {
    sub_13C80(0, &qword_DF9290);
    isa = sub_AB9740().super.isa;
    [v9 setBoundarySupplementaryItems:isa];
  }

  else if (!a1)
  {
    v12 = [v9 boundarySupplementaryItems];
    sub_13C80(0, &qword_DF9290);
    v13 = sub_AB9760();
    v14 = v13;
    if (v13 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = sub_361458(v16, v14);
        }

        else
        {
          if (v16 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_15;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        [v17 setPinToVisibleBounds:0];

        ++v16;
        if (v19 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return v9;
}

void sub_494A24(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v18 = *&v1[qword_E09B78];

  v5 = sub_48E708();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  v8 = *&v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  *v7 = sub_49750C;
  v7[1] = v6;

  sub_17654(v8);

  v9 = *&v2[qword_E09B20];
  v10 = *&v2[qword_E09B28];
  v11 = sub_4F46B0();
  sub_13C80(0, &qword_DF1D50);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;

  isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, (&dword_0 + 1), 0, sub_14176C, v13).super.super.isa;

  UIBarButtonItem.primaryActionKind.setter(isa, 1);

  v15 = *&v10[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem];
  sub_AB9730();
  if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v16 = [v2 navigationItem];
  sub_13C80(0, &unk_DF12E0);
  v17 = sub_AB9740().super.isa;

  [v16 setRightBarButtonItems:v17 animated:a1 & 1];
}

void sub_494CF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_4923B0();
  }
}

void sub_494D44()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 traitCollection];
    v13 = sub_45B2C4(v12, v5, v7, v9, v11);

    [v3 music_inheritedLayoutInsets];
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    Width = CGRectGetWidth(v16);
    sub_471A4();
    sub_AB38F0();
    v14 = [v1 traitCollection];
    [v14 displayScale];

    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    CGRectGetWidth(v17);
    if (!__OFSUB__(v13, 1))
    {
      sub_AB3A00();

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_494F20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v2 - 8);
  v4 = &v82 - v3;
  v5 = sub_AB3430();
  v89 = *(v5 - 8);
  v90 = v5;
  __chkstk_darwin(v5);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v8 - 8);
  v92 = &v82 - v9;
  v10 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  __chkstk_darwin(v13 - 8);
  v15 = &v82 - v14;
  v16 = type metadata accessor for MetricsPageProperties();
  v94 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v93 = (&v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v91 = &v82 - v19;
  v20 = *&v0[qword_DFE2F0];
  if (!v20)
  {
    return;
  }

  v21 = [v20 results];
  if (!v21)
  {
    goto LABEL_54;
  }

  v22 = v21;
  isa = sub_AB3770().super.isa;
  v24 = [v22 itemAtIndexPath:isa];

  if (!v24)
  {
    return;
  }

  v87 = v12;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = v25;
  if ([v25 type] == &dword_0 + 3)
  {
    swift_unknownObjectRetain();
    v27 = [v26 name];
    if (v27)
    {
      v28 = v27;
      v29 = sub_AB92A0();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v46 = *&v1[qword_E09B38];
    if (v46 >= 2)
    {
      v47 = v46;
    }

    else
    {
      v46 = 0;
    }

    v48 = objc_allocWithZone(type metadata accessor for PlaylistsViewController());
    v49 = sub_48DDCC(v26, 0, v29, v31, v46);
    v50 = [v1 navigationController];
    if (v50)
    {
      v51 = v50;
      [v50 pushViewController:v49 animated:1];
    }

    else
    {
    }

LABEL_21:

    swift_unknownObjectRelease();
    return;
  }

  v32 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v88 = v24;
  v86 = v1;
  v33 = v32;
  sub_13C80(0, &qword_DE9C10);
  v34 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v35 = objc_opt_self();
  v36 = v33;
  v37 = [v35 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v34 options:0];
  [v36 setSectionKind:v37];

  v84 = v34;
  [v36 setItemKind:v34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_AF82B0;
  *(v38 + 32) = v26;
  sub_13C80(0, &qword_DEDE20);
  swift_unknownObjectRetain_n();
  v39 = sub_AB9740().super.isa;

  [v36 setScopedContainers:v39];

  v85 = v36;
  sub_495CA0(v36, 0);
  type metadata accessor for JSContainerDetailComponentController();
  swift_unknownObjectRetain();
  v40 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v26, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (v40)
  {
    v41 = v40;
    v42 = *&v40[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
  }

  else
  {
    v52 = MPModelPropertyPlaylistType;
    swift_unknownObjectRetain();
    if (![v26 hasLoadedValueForKey:v52] || objc_msgSend(v26, "type") != &dword_8 + 1)
    {
      swift_unknownObjectRelease();
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v45 = 0xF000000000000000;
      goto LABEL_25;
    }

    v41 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0);
    v42 = *(v41 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
    swift_unknownObjectRelease();
  }

  v43 = JSViewModel.playActivityRecommendationData.getter();
  v45 = v44;
LABEL_25:
  sub_466A4(0, 0xF000000000000000);
  v101[0] = v85;
  v101[1] = v42;
  v101[2] = v26;
  v101[3] = 0;
  v101[5] = 0;
  v101[6] = 0;
  v101[4] = v41;
  v102 = 1;
  v103 = v43;
  v104 = v45;
  v97[0] = v85;
  v97[1] = v42;
  v97[2] = v26;
  v97[3] = 0;
  v97[5] = 0;
  v97[6] = 0;
  v97[4] = v41;
  v98 = 1;
  v99 = v43;
  v100 = v45;
  sub_70EB0(v101, v96);
  sub_70F0C(v97);
  v53 = v86;
  if (*&v86[qword_E09B38] == 1)
  {
    v54 = MPModelObject.bestIdentifier(for:)(0, 2u);
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      sub_4930CC(v15);
      if ((*(v94 + 48))(v15, 1, v16) == 1)
      {

        sub_12E1C(v15, &unk_DF1330);
        goto LABEL_48;
      }

      v83 = v56;
      v94 = v57;
      v58 = v91;
      sub_28E998(v15, v91, type metadata accessor for MetricsPageProperties);
      v59 = sub_AB31C0();
      v60 = v92;
      (*(*(v59 - 8) + 56))(v92, 1, 1, v59);
      sub_497ED4(v58, v93, type metadata accessor for MetricsPageProperties);
      sub_493000();
      memset(v96, 0, 40);
      sub_AB3420();
      sub_15F84(v96, &v95, &qword_DF2BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0);
      v61 = sub_AB3820();
      v62 = swift_dynamicCast();
      (*(*(v61 - 8) + 56))(v4, v62 ^ 1u, 1, v61);
      v63 = sub_2CBD5C(1u, v7, v4);
      (*(v89 + 8))(v7, v90);
      sub_12E1C(v96, &qword_DF2BD0);
      sub_12E1C(v4, &unk_DE8E20);

      if (v63)
      {
        v64 = v87;
        if (v63 >> 62)
        {
          v65 = sub_ABB060();
          v53 = v86;
          if (v65)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v65 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
          v53 = v86;
          if (v65)
          {
LABEL_32:
            v96[0] = _swiftEmptyArrayStorage;
            sub_6D410(0, v65 & ~(v65 >> 63), 0);
            if ((v65 & 0x8000000000000000) == 0)
            {
              v66 = v96[0];
              if ((v63 & 0xC000000000000001) != 0)
              {
                for (i = 0; i != v65; ++i)
                {
                  v68 = *(sub_35FC58(i, v63) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                  swift_unknownObjectRelease();
                  v96[0] = v66;
                  v70 = v66[2];
                  v69 = v66[3];
                  if (v70 >= v69 >> 1)
                  {
                    sub_6D410((v69 > 1), v70 + 1, 1);
                    v66 = v96[0];
                  }

                  v66[2] = v70 + 1;
                  v66[v70 + 4] = v68;
                }
              }

              else
              {
                v71 = (v63 + 32);
                do
                {
                  v72 = *(*v71 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                  v96[0] = v66;
                  v74 = v66[2];
                  v73 = v66[3];

                  if (v74 >= v73 >> 1)
                  {
                    sub_6D410((v73 > 1), v74 + 1, 1);
                    v66 = v96[0];
                  }

                  v66[2] = v74 + 1;
                  v66[v74 + 4] = v72;
                  ++v71;
                  --v65;
                }

                while (v65);
              }

              v53 = v86;
              v64 = v87;
              v58 = v91;
              v60 = v92;
              goto LABEL_47;
            }

            __break(1u);
LABEL_54:
            __break(1u);
            return;
          }
        }

        v66 = _swiftEmptyArrayStorage;
      }

      else
      {
        v66 = 0;
        v53 = v86;
        v64 = v87;
      }

LABEL_47:
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v83, v94, 17, 28, v60, 0, 0, 12, v64, 0, 0, 0xFF00u, v93, v66);
      v75 = MetricsReportingController.shared.unsafeMutableAddressor();
      v76 = *&stru_B8.sectname[swift_isaMask & **v75];
      v77 = *v75;
      v76(v64, 0, 0, 0, 0, 0);
      sub_497F3C(v64, type metadata accessor for MetricsEvent.Click);
      sub_497F3C(v58, type metadata accessor for MetricsPageProperties);
    }
  }

LABEL_48:
  v78 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());
  sub_70EB0(v101, v96);
  v79 = sub_39891C(v101, 0);
  v80 = [v53 navigationController];
  if (v80)
  {
    v81 = v80;
    [v80 pushViewController:v79 animated:1];
    sub_70F0C(v101);
  }

  else
  {
    sub_70F0C(v101);
  }

  swift_unknownObjectRelease();
}