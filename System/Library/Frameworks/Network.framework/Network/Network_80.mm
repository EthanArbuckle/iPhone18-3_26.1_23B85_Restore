unint64_t sub_181F6D32C()
{
  result = qword_1EA838B68;
  if (!qword_1EA838B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B68);
  }

  return result;
}

void sub_181F6D388()
{
  v0 = nw_protocol_copy_tls_definition();
  type metadata accessor for NWProtocolDefinition();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v3 = sub_182AD2F88();
  v5 = v4;

  v1[2] = v3;
  v1[3] = v5;
  qword_1EA836840 = v1;
}

uint64_t static NWProtocolTLS.definition.getter()
{
  if (qword_1EA836838 != -1)
  {
    swift_once();
  }
}

uint64_t NWProtocolTLS.Options.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = nw_tls_create_options();
  return v0;
}

void InputHandlerLinkage.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
}

uint64_t OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(uint64_t a1, char a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *v2;
  v7 = *(v2 + 8);
  v9 = *(v2 + 16);
  if (v9 > 2)
  {
    if (*(v2 + 16) > 4u)
    {
      if (v9 == 5)
      {

        sub_181FE8374(0xD00000000000001DLL, 0x8000000182BD57F0);
        if (sub_181F73D10(*(v8 + 16), *(v8 + 24), *(v8 + 32), v5, v4, v6))
        {
          v13 = *(v8 + 16);
          v14 = *(v8 + 24);
          v15 = *(v8 + 32);
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
          *(v8 + 32) = 6;
          sub_181F68E5C(v13, v14, v15);
        }

        sub_181FE8710();
        v16 = v8;
        v17 = v7;
        v18 = 5;
        goto LABEL_17;
      }
    }

    else
    {
      if (v9 == 3)
      {
        ObjectType = swift_getObjectType();
        *&v22 = v5;
        *(&v22 + 1) = v4;
        v23 = v6;
        v11 = v7[2];
        swift_unknownObjectRetain();
        v12 = v11(&v22, a2 & 1, ObjectType, v7);
        sub_181F68E5C(v8, v7, 3u);
        return v12 & 1;
      }

      v19 = v7;
      output_handler = nw_protocol_swift_wrapper_get_output_handler(v8, v19);
      if (output_handler && nw_protocol_remove_input_handler_quiet(output_handler, v8))
      {
        nw_protocol_destroy_output_linkage_handle(v8, v19);
        v16 = v8;
        v17 = v7;
        v18 = 4;
LABEL_17:
        sub_181F68E5C(v16, v17, v18);
        v12 = 1;
        return v12 & 1;
      }

      sub_181F68E5C(v8, v7, 4u);
    }

    v12 = 0;
    return v12 & 1;
  }

  if (*(v2 + 16))
  {
    *&v22 = *a1;
    *(&v22 + 1) = v4;
    v23 = v6;
    if (v9 == 1)
    {

      v12 = sub_1822935B8(&v22, a2 & 1);
      sub_181F68E5C(v8, v7, 1u);
    }

    else
    {

      v12 = sub_1822935B8(&v22, a2 & 1);
      sub_181F68E5C(v8, v7, 2u);
    }
  }

  else
  {
    *&v22 = *a1;
    *(&v22 + 1) = v4;
    v23 = v6;

    v12 = sub_1822935B8(&v22, a2 & 1);
    sub_181F68E5C(v8, v7, 0);
  }

  return v12 & 1;
}

uint64_t OutputHandlerLinkage.invokeConnect(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 > 2)
  {
    if (*(v1 + 16) > 4u)
    {
      if (v7 == 5)
      {

        sub_181FE8374(0xD000000000000010, 0x8000000182BD5810);
        v11 = *(v6 + 16);
        v12 = *(v6 + 24);
        v13 = *(v6 + 32);
        v30 = v11;
        v31 = v12;
        v32 = v13;
        v27 = v6;
        v28 = v5;
        v29 = 5;
        sub_181F68EA8(v11, v12, v13);
        InputHandlerLinkage.invokeConnected(_:)(&v27);
        sub_181F68E5C(v6, v5, 5u);
        sub_181F68E5C(v11, v12, v13);
        v10 = 1;
        return v10 & 1;
      }
    }

    else
    {
      if (v7 == 3)
      {
        ObjectType = swift_getObjectType();
        v30 = v3;
        v31 = v2;
        v32 = v4;
        v9 = v5[4];
        swift_unknownObjectRetain();
        v10 = v9(&v30, ObjectType, v5);
        sub_181F68E5C(v6, v5, 3u);
        return v10 & 1;
      }

      output_handler = nw_protocol_swift_wrapper_get_output_handler(v6, v5);
      if (output_handler)
      {
        v10 = nw_protocol_connect_quiet(output_handler, v6);
        sub_181F68E5C(v6, v5, 4u);
        return v10 & 1;
      }

      sub_181F68E5C(v6, v5, 4u);
    }

    v10 = 0;
    return v10 & 1;
  }

  if (*(v1 + 16))
  {
    if (v7 == 1)
    {
      v30 = *a1;
      v31 = v2;
      v32 = v4;

      sub_182292F88(&v30, 0x287463656E6E6F63, 0xEB00000000293A5FLL, &v27);
      v15 = *(v6 + 40);
      v16 = *(v6 + 48);
      v17 = *(v6 + 56);
      v30 = v15;
      v31 = v16;
      v32 = v17;
      sub_181F68EA8(v15, v16, v17);
      sub_182292A10(&v27);
      v18 = v27;
      v19 = v28;
      v20 = v29;
      v25[0] = v27;
      v25[1] = v28;
      v26 = v29;
      v10 = OutputHandlerLinkage.invokeConnect(_:)(v25);
      v21 = v6;
      v22 = v5;
      v23 = 1;
    }

    else
    {
      v30 = *a1;
      v31 = v2;
      v32 = v4;

      sub_182292F88(&v30, 0x287463656E6E6F63, 0xEB00000000293A5FLL, &v27);
      v15 = *(v6 + 40);
      v16 = *(v6 + 48);
      v17 = *(v6 + 56);
      v30 = v15;
      v31 = v16;
      v32 = v17;
      if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
      {
        sub_181F68EA8(v15, v16, v17);
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          *(v6 + 88) = v6;
          *(v6 + 96) = 0;
          *(v6 + 104) = 2;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v15, v16, v17);
      }

      v18 = *(v6 + 88);
      v19 = *(v6 + 96);
      v20 = *(v6 + 104);
      v27 = v18;
      v28 = v19;
      v29 = v20;
      sub_181F68EA8(v18, v19, v20);
      v10 = OutputHandlerLinkage.invokeConnect(_:)(&v27);
      v21 = v6;
      v22 = v5;
      v23 = 2;
    }
  }

  else
  {
    v30 = *a1;
    v31 = v2;
    v32 = v4;

    sub_182292F88(&v30, 0x287463656E6E6F63, 0xEB00000000293A5FLL, &v27);
    v15 = *(v6 + 40);
    v16 = *(v6 + 48);
    v17 = *(v6 + 56);
    v30 = v15;
    v31 = v16;
    v32 = v17;
    if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
    {
      sub_181F68EA8(v15, v16, v17);
      if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
      {
        *(v6 + 88) = v6;
        *(v6 + 96) = 0;
        *(v6 + 104) = 0;

        sub_181F68E5C(0, 0, 6u);
      }
    }

    else
    {
      sub_181F68EA8(v15, v16, v17);
    }

    v18 = *(v6 + 88);
    v19 = *(v6 + 96);
    v20 = *(v6 + 104);
    v27 = v18;
    v28 = v19;
    v29 = v20;
    sub_181F68EA8(v18, v19, v20);
    v10 = OutputHandlerLinkage.invokeConnect(_:)(&v27);
    v21 = v6;
    v22 = v5;
    v23 = 0;
  }

  sub_181F68E5C(v21, v22, v23);
  sub_181F68E5C(v18, v19, v20);
  sub_181F68E5C(v15, v16, v17);
  return v10 & 1;
}

void OutputHandlerLinkage.invokeDisconnect(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v31 = *a1;
        v32 = v2;
        v33 = v4;

        sub_182292F88(&v31, 0x656E6E6F63736964, 0xEE00293A5F287463, &v28);
        v17 = *(v6 + 40);
        v18 = *(v6 + 48);
        v19 = *(v6 + 56);
        v31 = v17;
        v32 = v18;
        v33 = v19;
        sub_181F68EA8(v17, v18, v19);
        sub_182292A10(&v28);
        v20 = v28;
        v21 = v29;
        v22 = v30;
        v26[0] = v28;
        v26[1] = v29;
        v27 = v30;
        OutputHandlerLinkage.invokeDisconnect(_:)(v26);
        v23 = v6;
        v24 = v5;
        v25 = 1;
      }

      else
      {
        v31 = *a1;
        v32 = v2;
        v33 = v4;

        sub_182292F88(&v31, 0x656E6E6F63736964, 0xEE00293A5F287463, &v28);
        v17 = *(v6 + 40);
        v18 = *(v6 + 48);
        v19 = *(v6 + 56);
        v31 = v17;
        v32 = v18;
        v33 = v19;
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          sub_181F68EA8(v17, v18, v19);
          if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
          {
            *(v6 + 88) = v6;
            *(v6 + 96) = 0;
            *(v6 + 104) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v17, v18, v19);
        }

        v20 = *(v6 + 88);
        v21 = *(v6 + 96);
        v22 = *(v6 + 104);
        v28 = v20;
        v29 = v21;
        v30 = v22;
        sub_181F68EA8(v20, v21, v22);
        OutputHandlerLinkage.invokeDisconnect(_:)(&v28);
        v23 = v6;
        v24 = v5;
        v25 = 2;
      }
    }

    else
    {
      v31 = *a1;
      v32 = v2;
      v33 = v4;

      sub_182292F88(&v31, 0x656E6E6F63736964, 0xEE00293A5F287463, &v28);
      v17 = *(v6 + 40);
      v18 = *(v6 + 48);
      v19 = *(v6 + 56);
      v31 = v17;
      v32 = v18;
      v33 = v19;
      if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
      {
        sub_181F68EA8(v17, v18, v19);
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          *(v6 + 88) = v6;
          *(v6 + 96) = 0;
          *(v6 + 104) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v17, v18, v19);
      }

      v20 = *(v6 + 88);
      v21 = *(v6 + 96);
      v22 = *(v6 + 104);
      v28 = v20;
      v29 = v21;
      v30 = v22;
      sub_181F68EA8(v20, v21, v22);
      OutputHandlerLinkage.invokeDisconnect(_:)(&v28);
      v23 = v6;
      v24 = v5;
      v25 = 0;
    }

    sub_181F68E5C(v23, v24, v25);
    v13 = v20;
    v14 = v21;
    v15 = v22;
  }

  else
  {
    if (*(v1 + 16) <= 4u)
    {
      if (v7 == 3)
      {
        ObjectType = swift_getObjectType();
        v31 = v3;
        v32 = v2;
        v33 = v4;
        v9 = v5[5];
        swift_unknownObjectRetain();
        v9(&v31, ObjectType, v5);
        v10 = v6;
        v11 = v5;
        v12 = 3;
      }

      else
      {
        output_handler = nw_protocol_swift_wrapper_get_output_handler(v6, v5);
        if (output_handler)
        {
          nw_protocol_disconnect_quiet(output_handler, v6);
        }

        v10 = v6;
        v11 = v5;
        v12 = 4;
      }

      goto LABEL_25;
    }

    if (v7 != 5)
    {
      return;
    }

    sub_181FE8374(0xD000000000000013, 0x8000000182BD5830);
    v17 = *(v6 + 16);
    v18 = *(v6 + 24);
    v19 = *(v6 + 32);
    v31 = v17;
    v32 = v18;
    v33 = v19;
    v28 = v6;
    v29 = v5;
    v30 = 5;
    sub_181F68EA8(v17, v18, v19);
    InputHandlerLinkage.invokeDisconnected(_:)(&v28);
    v13 = v6;
    v14 = v5;
    v15 = 5;
  }

  sub_181F68E5C(v13, v14, v15);
  v10 = v17;
  v11 = v18;
  v12 = v19;
LABEL_25:
  sub_181F68E5C(v10, v11, v12);
}

void InputHandlerLinkage.invokeConnected(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v31 = *a1;
        v32 = v2;
        v33 = v4;

        sub_182293124(&v31, 0x657463656E6E6F63, 0xED0000293A5F2864, &v28);
        if ((*(v6 + 312) & 0x400) == 0)
        {
          sub_182094100();
        }

        v17 = *(v6 + 16);
        v18 = *(v6 + 24);
        v19 = *(v6 + 32);
        v31 = v17;
        v32 = v18;
        v33 = v19;
        sub_181F68EA8(v17, v18, v19);
        sub_182292B80(&v28);
        v20 = v28;
        v21 = v29;
        v22 = v30;
        v26[0] = v28;
        v26[1] = v29;
        v27 = v30;
        InputHandlerLinkage.invokeConnected(_:)(v26);
        v23 = v6;
        v24 = v5;
        v25 = 1;
      }

      else
      {
        v31 = *a1;
        v32 = v2;
        v33 = v4;

        sub_182293124(&v31, 0x657463656E6E6F63, 0xED0000293A5F2864, &v28);
        v17 = *(v6 + 16);
        v18 = *(v6 + 24);
        v19 = *(v6 + 32);
        v31 = v17;
        v32 = v18;
        v33 = v19;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v17, v18, v19);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v17, v18, v19);
        }

        v20 = *(v6 + 112);
        v21 = *(v6 + 120);
        v22 = *(v6 + 128);
        v28 = v20;
        v29 = v21;
        v30 = v22;
        sub_181F68EA8(v20, v21, v22);
        InputHandlerLinkage.invokeConnected(_:)(&v28);
        v23 = v6;
        v24 = v5;
        v25 = 2;
      }
    }

    else
    {
      v31 = *a1;
      v32 = v2;
      v33 = v4;

      sub_182293124(&v31, 0x657463656E6E6F63, 0xED0000293A5F2864, &v28);
      v17 = *(v6 + 16);
      v18 = *(v6 + 24);
      v19 = *(v6 + 32);
      v31 = v17;
      v32 = v18;
      v33 = v19;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v17, v18, v19);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v17, v18, v19);
      }

      v20 = *(v6 + 112);
      v21 = *(v6 + 120);
      v22 = *(v6 + 128);
      v28 = v20;
      v29 = v21;
      v30 = v22;
      sub_181F68EA8(v20, v21, v22);
      InputHandlerLinkage.invokeConnected(_:)(&v28);
      v23 = v6;
      v24 = v5;
      v25 = 0;
    }

    sub_181F68E5C(v23, v24, v25);
    sub_181F68E5C(v20, v21, v22);
    v11 = v17;
    v12 = v18;
    v13 = v19;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE62E8(0xD000000000000012, 0x8000000182BD5850);
    v14 = *(v6 + 832);
    if (v14)
    {

      v14(1);
      sub_181A554F4(v14);
      v15 = *(v6 + 832);
      *(v6 + 832) = 0;
      *(v6 + 840) = 0;
      sub_181A554F4(v15);
    }

    v11 = v6;
    v12 = v5;
    v13 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v31 = v3;
    v32 = v2;
    v33 = v4;
    v9 = v5[2];
    v10 = *(v9 + 16);
    swift_unknownObjectRetain();
    v10(&v31, ObjectType, v9);
    v11 = v6;
    v12 = v5;
    v13 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_connected_quiet(input_handler, v6);
    }

    v11 = v6;
    v12 = v5;
    v13 = 4;
  }

  sub_181F68E5C(v11, v12, v13);
}

void InputHandlerLinkage.invokeDisconnected(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v29 = *a1;
        v30 = v2;
        v31 = v4;

        sub_182293124(&v29, 0xD000000000000010, 0x8000000182BD5870, &v26);
        v15 = *(v6 + 16);
        v16 = *(v6 + 24);
        v17 = *(v6 + 32);
        v29 = v15;
        v30 = v16;
        v31 = v17;
        sub_181F68EA8(v15, v16, v17);
        sub_182292B80(&v26);
        v18 = v26;
        v19 = v27;
        v20 = v28;
        v24[0] = v26;
        v24[1] = v27;
        v25 = v28;
        InputHandlerLinkage.invokeDisconnected(_:)(v24);
        v21 = v6;
        v22 = v5;
        v23 = 1;
      }

      else
      {
        v29 = *a1;
        v30 = v2;
        v31 = v4;

        sub_182293124(&v29, 0xD000000000000010, 0x8000000182BD5870, &v26);
        v15 = *(v6 + 16);
        v16 = *(v6 + 24);
        v17 = *(v6 + 32);
        v29 = v15;
        v30 = v16;
        v31 = v17;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v15, v16, v17);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v15, v16, v17);
        }

        v18 = *(v6 + 112);
        v19 = *(v6 + 120);
        v20 = *(v6 + 128);
        v26 = v18;
        v27 = v19;
        v28 = v20;
        sub_181F68EA8(v18, v19, v20);
        InputHandlerLinkage.invokeDisconnected(_:)(&v26);
        v21 = v6;
        v22 = v5;
        v23 = 2;
      }
    }

    else
    {
      v29 = *a1;
      v30 = v2;
      v31 = v4;

      sub_182293124(&v29, 0xD000000000000010, 0x8000000182BD5870, &v26);
      v15 = *(v6 + 16);
      v16 = *(v6 + 24);
      v17 = *(v6 + 32);
      v29 = v15;
      v30 = v16;
      v31 = v17;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v15, v16, v17);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v15, v16, v17);
      }

      v18 = *(v6 + 112);
      v19 = *(v6 + 120);
      v20 = *(v6 + 128);
      v26 = v18;
      v27 = v19;
      v28 = v20;
      sub_181F68EA8(v18, v19, v20);
      InputHandlerLinkage.invokeDisconnected(_:)(&v26);
      v21 = v6;
      v22 = v5;
      v23 = 0;
    }

    sub_181F68E5C(v21, v22, v23);
    sub_181F68E5C(v18, v19, v20);
    v11 = v15;
    v12 = v16;
    v13 = v17;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    v29 = *a1;
    v30 = v2;
    v31 = v4;

    InputHarnessProtocol.disconnected(_:)();
    v11 = v6;
    v12 = v5;
    v13 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v29 = v3;
    v30 = v2;
    v31 = v4;
    v9 = v5[2];
    v10 = *(v9 + 24);
    swift_unknownObjectRetain();
    v10(&v29, ObjectType, v9);
    v11 = v6;
    v12 = v5;
    v13 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_disconnected_quiet(input_handler, v6);
    }

    v11 = v6;
    v12 = v5;
    v13 = 4;
  }

  sub_181F68E5C(v11, v12, v13);
}

void InputHandlerLinkage.invokeInputAvailable(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v30 = *a1;
        v31 = v2;
        v32 = v4;

        sub_182293124(&v30, 0xD000000000000012, 0x8000000182BD58B0, &v27);
        v16 = *(v6 + 16);
        v17 = *(v6 + 24);
        v18 = *(v6 + 32);
        v30 = v16;
        v31 = v17;
        v32 = v18;
        sub_181F68EA8(v16, v17, v18);
        sub_182292B80(&v27);
        v19 = v27;
        v20 = v28;
        v21 = v29;
        v25[0] = v27;
        v25[1] = v28;
        v26 = v29;
        InputHandlerLinkage.invokeInputAvailable(_:)(v25);
        v22 = v6;
        v23 = v5;
        v24 = 1;
      }

      else
      {
        v30 = *a1;
        v31 = v2;
        v32 = v4;

        sub_182293124(&v30, 0xD000000000000012, 0x8000000182BD58B0, &v27);
        v16 = *(v6 + 16);
        v17 = *(v6 + 24);
        v18 = *(v6 + 32);
        v30 = v16;
        v31 = v17;
        v32 = v18;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v16, v17, v18);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v16, v17, v18);
        }

        v19 = *(v6 + 112);
        v20 = *(v6 + 120);
        v21 = *(v6 + 128);
        v27 = v19;
        v28 = v20;
        v29 = v21;
        sub_181F68EA8(v19, v20, v21);
        InputHandlerLinkage.invokeInputAvailable(_:)(&v27);
        v22 = v6;
        v23 = v5;
        v24 = 2;
      }
    }

    else
    {
      v30 = *a1;
      v31 = v2;
      v32 = v4;

      sub_182293124(&v30, 0xD000000000000012, 0x8000000182BD58B0, &v27);
      v16 = *(v6 + 16);
      v17 = *(v6 + 24);
      v18 = *(v6 + 32);
      v30 = v16;
      v31 = v17;
      v32 = v18;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v16, v17, v18);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v16, v17, v18);
      }

      v19 = *(v6 + 112);
      v20 = *(v6 + 120);
      v21 = *(v6 + 128);
      v27 = v19;
      v28 = v20;
      v29 = v21;
      sub_181F68EA8(v19, v20, v21);
      InputHandlerLinkage.invokeInputAvailable(_:)(&v27);
      v22 = v6;
      v23 = v5;
      v24 = 0;
    }

    sub_181F68E5C(v22, v23, v24);
    sub_181F68E5C(v19, v20, v21);
    v10 = v16;
    v11 = v17;
    v12 = v18;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE62E8(0xD000000000000018, 0x8000000182BD5890);
    v13 = *(v6 + 848);
    if (v13)
    {

      v13(1);
      sub_181A554F4(v13);
      v14 = *(v6 + 848);
      *(v6 + 848) = 0;
      *(v6 + 856) = 0;
      sub_181A554F4(v14);
    }

    v10 = v6;
    v11 = v5;
    v12 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v30 = v3;
    v31 = v2;
    v32 = v4;
    v9 = v5[3];
    swift_unknownObjectRetain();
    v9(&v30, ObjectType, v5);
    v10 = v6;
    v11 = v5;
    v12 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_input_available_quiet(input_handler, v6);
    }

    v10 = v6;
    v11 = v5;
    v12 = 4;
  }

  sub_181F68E5C(v10, v11, v12);
}

void sub_181F6EE30(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = *(v1 + 16);
  if (v6 <= 2)
  {
    v13 = *(v5 + 16);
    v14 = *(v5 + 24);
    v15 = *(v5 + 32);
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v17[0] = v3;
    v17[1] = v2;
    v18 = v4;
    sub_181F68EA8(v13, v14, v15);
    sub_181F6EE30(v17);
    v10 = v13;
    v11 = v14;
    v12 = v15;
  }

  else
  {
    v7 = *(v1 + 8);
    if (*(v1 + 16) > 4u)
    {
      if (v6 != 5)
      {
        return;
      }

      sub_181FE62E8(0xD000000000000014, 0x8000000182BD5B60);
      v10 = v5;
      v11 = v7;
      v12 = 5;
    }

    else if (v6 == 3)
    {
      ObjectType = swift_getObjectType();
      v19 = v3;
      v20 = v2;
      v21 = v4;
      v9 = v7[6];
      swift_unknownObjectRetain();
      v9(&v19, ObjectType, v7);
      v10 = v5;
      v11 = v7;
      v12 = 3;
    }

    else
    {
      input_handler = nw_protocol_swift_wrapper_get_input_handler(v5, v7);
      if (input_handler)
      {
        nw_protocol_input_flush_quiet(input_handler, v5);
      }

      v10 = v5;
      v11 = v7;
      v12 = 4;
    }
  }

  sub_181F68E5C(v10, v11, v12);
}

void InputHandlerLinkage.invokeOutputAvailable(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182293124(&v28, 0xD000000000000013, 0x8000000182BD58F0, &v25);
        v14 = *(v6 + 16);
        v15 = *(v6 + 24);
        v16 = *(v6 + 32);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        sub_181F68EA8(v14, v15, v16);
        sub_182292B80(&v25);
        v17 = v25;
        v18 = v26;
        v19 = v27;
        v23[0] = v25;
        v23[1] = v26;
        v24 = v27;
        InputHandlerLinkage.invokeOutputAvailable(_:)(v23);
        v20 = v6;
        v21 = v5;
        v22 = 1;
      }

      else
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182293124(&v28, 0xD000000000000013, 0x8000000182BD58F0, &v25);
        v14 = *(v6 + 16);
        v15 = *(v6 + 24);
        v16 = *(v6 + 32);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v14, v15, v16);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v14, v15, v16);
        }

        v17 = *(v6 + 112);
        v18 = *(v6 + 120);
        v19 = *(v6 + 128);
        v25 = v17;
        v26 = v18;
        v27 = v19;
        sub_181F68EA8(v17, v18, v19);
        InputHandlerLinkage.invokeOutputAvailable(_:)(&v25);
        v20 = v6;
        v21 = v5;
        v22 = 2;
      }
    }

    else
    {
      v28 = *a1;
      v29 = v2;
      v30 = v4;

      sub_182293124(&v28, 0xD000000000000013, 0x8000000182BD58F0, &v25);
      v14 = *(v6 + 16);
      v15 = *(v6 + 24);
      v16 = *(v6 + 32);
      v28 = v14;
      v29 = v15;
      v30 = v16;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v14, v15, v16);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v14, v15, v16);
      }

      v17 = *(v6 + 112);
      v18 = *(v6 + 120);
      v19 = *(v6 + 128);
      v25 = v17;
      v26 = v18;
      v27 = v19;
      sub_181F68EA8(v17, v18, v19);
      InputHandlerLinkage.invokeOutputAvailable(_:)(&v25);
      v20 = v6;
      v21 = v5;
      v22 = 0;
    }

    sub_181F68E5C(v20, v21, v22);
    sub_181F68E5C(v17, v18, v19);
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE62E8(0xD000000000000019, 0x8000000182BD58D0);
    v10 = v6;
    v11 = v5;
    v12 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v28 = v3;
    v29 = v2;
    v30 = v4;
    v9 = v5[4];
    swift_unknownObjectRetain();
    v9(&v28, ObjectType, v5);
    v10 = v6;
    v11 = v5;
    v12 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_output_available_quiet(input_handler, v6);
    }

    v10 = v6;
    v11 = v5;
    v12 = 4;
  }

  sub_181F68E5C(v10, v11, v12);
}

void InputHandlerLinkage.invokeError(_:error:)(uint64_t a1, int *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = *v2;
  v9 = *(v2 + 16);
  if (v9 <= 2)
  {
    v17 = *(v8 + 16);
    v18 = *(v8 + 24);
    v19 = *(v8 + 32);
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v23[0] = v4;
    v23[1] = v3;
    v24 = v5;
    v21 = v6;
    v22 = v7;
    sub_181F68EA8(v17, v18, v19);
    InputHandlerLinkage.invokeError(_:error:)(v23, &v21);
    v14 = v17;
    v15 = v18;
    v16 = v19;
  }

  else
  {
    v10 = *(v2 + 8);
    if (*(v2 + 16) > 4u)
    {
      if (v9 != 5)
      {
        return;
      }

      sub_181FE62E8(0x6465766965636552, 0xEE00726F72726520);
      v14 = v8;
      v15 = v10;
      v16 = 5;
    }

    else if (v9 == 3)
    {
      ObjectType = swift_getObjectType();
      v25 = v4;
      v26 = v3;
      v27 = v5;
      LODWORD(v23[0]) = v6;
      BYTE4(v23[0]) = v7;
      v12 = v10[2];
      v13 = *(v12 + 32);
      swift_unknownObjectRetain();
      v13(&v25, v23, ObjectType, v12);
      v14 = v8;
      v15 = v10;
      v16 = 3;
    }

    else
    {
      input_handler = nw_protocol_swift_wrapper_get_input_handler(v8, v10);
      if (input_handler)
      {
        nw_protocol_error_quiet(input_handler, v8);
      }

      v14 = v8;
      v15 = v10;
      v16 = 4;
    }
  }

  sub_181F68E5C(v14, v15, v16);
}

void OutputHandlerLinkage.invokeGetMessageProperties(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *v2;
  v7 = *(v2 + 8);
  v9 = *(v2 + 16);
  if (v9 <= 2)
  {
    if (*(v2 + 16))
    {
      if (v9 == 1)
      {
        v34 = *a1;
        v35 = v4;
        v36 = v6;

        sub_182292F88(&v34, 0xD000000000000018, 0x8000000182BD5910, &v37);
        swift_beginAccess();
        v32 = *(v8 + 304);
        sub_181F68E5C(v8, v7, 1u);
        v33 = 4000;
        if (v32 > 0)
        {
          v33 = v32;
        }

        if (v33 > 0xFFFFFFFFLL)
        {
          __break(1u);
        }

        *(a2 + 6) = 0;
        *a2 = v33;
        v15 = 1;
        goto LABEL_9;
      }

      v34 = *a1;
      v35 = v4;
      v36 = v6;

      sub_182292F88(&v34, 0xD000000000000018, 0x8000000182BD5910, &v37);
      v23 = *(v8 + 40);
      v24 = *(v8 + 48);
      v25 = *(v8 + 56);
      v34 = v23;
      v35 = v24;
      v36 = v25;
      if (*(v8 + 104) == 6 && *(v8 + 88) == 0)
      {
        sub_181F68EA8(v23, v24, v25);
        if (*(v8 + 104) == 6 && *(v8 + 88) == 0)
        {
          *(v8 + 88) = v8;
          *(v8 + 96) = 0;
          *(v8 + 104) = 2;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v23, v24, v25);
      }

      v26 = *(v8 + 88);
      v27 = *(v8 + 96);
      v28 = *(v8 + 104);
      v37 = v26;
      v38 = v27;
      v39 = v28;
      sub_181F68EA8(v26, v27, v28);
      OutputHandlerLinkage.invokeGetMessageProperties(_:)(&v37);
      v29 = v8;
      v30 = v7;
      v31 = 2;
    }

    else
    {
      v34 = *a1;
      v35 = v4;
      v36 = v6;

      sub_182292F88(&v34, 0xD000000000000018, 0x8000000182BD5910, &v37);
      v23 = *(v8 + 40);
      v24 = *(v8 + 48);
      v25 = *(v8 + 56);
      v34 = v23;
      v35 = v24;
      v36 = v25;
      if (*(v8 + 104) == 6 && *(v8 + 88) == 0)
      {
        sub_181F68EA8(v23, v24, v25);
        if (*(v8 + 104) == 6 && *(v8 + 88) == 0)
        {
          *(v8 + 88) = v8;
          *(v8 + 96) = 0;
          *(v8 + 104) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v23, v24, v25);
      }

      v26 = *(v8 + 88);
      v27 = *(v8 + 96);
      v28 = *(v8 + 104);
      v37 = v26;
      v38 = v27;
      v39 = v28;
      sub_181F68EA8(v26, v27, v28);
      OutputHandlerLinkage.invokeGetMessageProperties(_:)(&v37);
      v29 = v8;
      v30 = v7;
      v31 = 0;
    }

    sub_181F68E5C(v29, v30, v31);
    sub_181F68E5C(v26, v27, v28);
    v12 = v23;
    v13 = v24;
    v14 = v25;
    goto LABEL_29;
  }

  if (*(v2 + 16) > 4u)
  {
LABEL_8:
    *(a2 + 6) = 0;
    *a2 = 0;
    v15 = 2;
LABEL_9:
    *(a2 + 4) = v15;
    return;
  }

  if (v9 == 3)
  {
    ObjectType = swift_getObjectType();
    v34 = v5;
    v35 = v4;
    v36 = v6;
    v11 = v7[11];
    swift_unknownObjectRetain();
    v11(&v34, ObjectType, v7);
    v12 = v8;
    v13 = v7;
    v14 = 3;
LABEL_29:
    sub_181F68E5C(v12, v13, v14);
    return;
  }

  output_handler = nw_protocol_swift_wrapper_get_output_handler(v8, v7);
  if (!output_handler)
  {
    sub_181F68E5C(v8, v7, 4u);
    goto LABEL_8;
  }

  v34 = 0;
  nw_protocol_get_message_properties_quiet(output_handler, v8, &v34);
  v17 = v34;
  v18 = v34 | (HIDWORD(v34) << 32);
  v19 = sub_181F73C94(v18);
  v20 = sub_181F73C9C(v18);
  v21 = sub_181F73CA4(v18);
  sub_181F68E5C(v8, v7, 4u);
  v22 = 256;
  if ((v20 & 1) == 0)
  {
    v22 = 0;
  }

  *a2 = v17;
  *(a2 + 4) = ((v19 & 1) != 0) | WORD2(v17) | v22;
  *(a2 + 6) = (v21 & 1) != 0;
}

void OutputHandlerLinkage.invokeGetInputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = *v5;
  v13 = *(v5 + 8);
  v14 = *(v5 + 16);
  if (v14 <= 2)
  {
    if (*(v5 + 16))
    {
      if (v14 == 1)
      {
        *&v37 = *a1;
        *(&v37 + 1) = v10;
        LOBYTE(v38) = v11;

        sub_182292F88(&v37, 0xD00000000000003ELL, 0x8000000182BD5950, v52);
        UDPProtocol.UDPInstance.getInputFrames(minimumBytes:maximumBytes:maximumFrameCount:)(a2, a3, a4, a5);
        sub_181F68E5C(v12, v13, 1u);
        return;
      }

      *&v37 = *a1;
      *(&v37 + 1) = v10;
      LOBYTE(v38) = v11;

      sub_182292F88(&v37, 0xD00000000000003ELL, 0x8000000182BD5950, v52);
      v19 = v12;
      v20 = v13;
      v21 = 2;
    }

    else
    {
      *&v37 = *a1;
      *(&v37 + 1) = v10;
      LOBYTE(v38) = v11;

      sub_182292F88(&v37, 0xD00000000000003ELL, 0x8000000182BD5950, v52);
      v19 = v12;
      v20 = v13;
      v21 = 0;
    }

    goto LABEL_34;
  }

  if (*(v5 + 16) <= 4u)
  {
    if (v14 == 3)
    {
      v15 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      *&v53 = v9;
      *(&v53 + 1) = v10;
      LOBYTE(v54) = v11;
      v17 = v15[8];
      swift_unknownObjectRetain();
      v17(&v53, a2, a3, a4, ObjectType, v15);
      sub_181F68E5C(v12, v15, 3u);
      return;
    }

    output_handler = nw_protocol_swift_wrapper_get_output_handler(v12, v13);
    if (!output_handler)
    {
LABEL_33:
      v19 = v12;
      v20 = v13;
      v21 = 4;
      goto LABEL_34;
    }

    v23 = output_handler;
    v52[0] = 0;
    v52[1] = 0;
    nw_frame_array_init(v52);
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a2 = 0xFFFFFFFFLL;
      v24 = a4;
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = a4;
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (HIDWORD(a2))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_16:
        a3 = 0xFFFFFFFFLL;
        v25 = 0xFFFFFFFFLL;
        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_30:
          if (nw_protocol_get_input_frames_quiet(v23, v12, a2, a3, v25, v52))
          {
            sub_182285C4C(v52, 1, &v37);
            sub_181F68E5C(v12, v13, 4u);
            v65 = v49;
            v66 = v50;
            v67 = v51;
            v61 = v45;
            v62 = v46;
            v63 = v47;
            v64 = v48;
            v57 = v41;
            v58 = v42;
            v59 = v43;
            v60 = v44;
            v53 = v37;
            v54 = v38;
            v55 = v39;
            v56 = v40;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

LABEL_27:
        if ((v24 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v24))
          {
            v25 = v24;
            goto LABEL_30;
          }

LABEL_42:
          __break(1u);
        }

        goto LABEL_40;
      }
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(a3))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = 0xFFFFFFFFLL;
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    goto LABEL_38;
  }

  if (v14 != 5)
  {
LABEL_35:
    sub_181F73CAC(&v53);
    goto LABEL_36;
  }

  sub_181FE8374(0xD000000000000019, 0x8000000182BD5930);
  v18 = *(v12 + 48);
  if (*(v12 + 64))
  {
    v19 = v12;
    v20 = v13;
    v21 = 5;
LABEL_34:
    sub_181F68E5C(v19, v20, v21);
    goto LABEL_35;
  }

  if (v18)
  {
    v26 = *(v12 + 56) - v18;
    LOBYTE(v37) = 1;
    LOBYTE(v52[0]) = 1;
    v27 = Frame.bufferLength.getter();
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 1;
    sub_181F68E5C(v12, v13, 5u);
    *&v53 = v18;
    *(&v53 + 1) = v26;
    *&v54 = 0;
    BYTE8(v54) = 0;
    v55 = xmmword_182AE69F0;
    LOBYTE(v56) = 2;
    *(&v56 + 1) = 0;
    *&v57 = 0;
    *(&v57 + 1) = v27;
    *&v58 = 0;
    BYTE8(v58) = 0;
    v59 = 0u;
    v60 = 0u;
    *&v61 = 0;
    DWORD2(v61) = 2;
    BYTE12(v61) = 1;
    v62 = 0uLL;
    LOBYTE(v63) = 1;
    *(&v63 + 1) = 0;
    v64 = 0uLL;
    LOWORD(v65) = 256;
    BYTE2(v65) = 0;
    *(&v65 + 1) = 0;
    LOBYTE(v66) = -1;
    *(&v66 + 1) = 0;
    v67 = 0;
LABEL_32:
    nullsub_41(&v53);
LABEL_36:
    v28 = v66;
    *(a5 + 192) = v65;
    *(a5 + 208) = v28;
    *(a5 + 224) = v67;
    v29 = v62;
    *(a5 + 128) = v61;
    *(a5 + 144) = v29;
    v30 = v64;
    *(a5 + 160) = v63;
    *(a5 + 176) = v30;
    v31 = v58;
    *(a5 + 64) = v57;
    *(a5 + 80) = v31;
    v32 = v60;
    *(a5 + 96) = v59;
    *(a5 + 112) = v32;
    v33 = v54;
    *a5 = v53;
    *(a5 + 16) = v33;
    v34 = v56;
    *(a5 + 32) = v55;
    *(a5 + 48) = v34;
    return;
  }

  __break(1u);
}

void OutputHandlerLinkage.invokeGetOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94[3] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  if (v13 <= 2)
  {
    if (*(v5 + 16))
    {
      v48 = *(v5 + 8);
      if (v13 == 1)
      {
        *&v64 = *a1;
        *(&v64 + 1) = v9;
        LOBYTE(v65) = v10;

        sub_182292F88(&v64, 0xD00000000000003FLL, 0x8000000182BD59B0, v94);
        v27 = *(v11 + 312);
        if ((v27 & 2) != 0)
        {
          v21 = v48;
          if ((v27 & 4) == 0)
          {
            *(v11 + 312) = v27 | 4;
          }

          v20 = v11;
          v22 = 1;
          goto LABEL_44;
        }

        if (!__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a2))
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
          if (0x7FFFFFFFFFFFFFFFLL - a2 >= 8)
          {
            v28 = a2 + 8;
            if (__OFADD__(a2, 8))
            {
              goto LABEL_70;
            }
          }

          if (!__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a3))
          {
            if ((0x7FFFFFFFFFFFFFFFLL - a3) >= 8)
            {
              v29 = a3 + 8;
              if (__OFADD__(a3, 8))
              {
                goto LABEL_71;
              }
            }

            else
            {
              v29 = 0x7FFFFFFFFFFFFFFFLL;
            }

            sub_1822955B4(v28, v29, a4, &v49);
            v91 = v61;
            v92 = v62;
            v93 = v63;
            v87 = v57;
            v88 = v58;
            v89 = v59;
            v90 = v60;
            v83 = v53;
            v84 = v54;
            v85 = v55;
            v86 = v56;
            v79 = v49;
            v80 = v50;
            v81 = v51;
            v82 = v52;
            if (sub_181F3D1E4(&v79) != 1 && (v63 & 1) == 0)
            {
              Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1);
              if (*(&v62 + 1))
              {
                v38 = *(*(&v62 + 1) + 32);
                if (*(*(&v62 + 1) + 16) >= *(*(&v62 + 1) + 24) + v38)
                {
                  v39 = *(*(&v62 + 1) + 24) + v38;
                }

                else
                {
                  v39 = *(*(&v62 + 1) + 16);
                }

                *&v64 = *(&v62 + 1);
                *(&v64 + 1) = v38;
                *&v65 = v39;
                v40 = swift_retain_n();
                while (1)
                {
                  if (v38 == v39)
                  {
                    if ((sub_181AC81FC(v40) & 1) == 0)
                    {

                      break;
                    }

                    v38 = *(&v64 + 1);
                    v39 = v65;
                  }

                  *(&v64 + 1) = v38 + 1;
                  swift_beginAccess();

                  Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1);
                  swift_endAccess();

                  ++v38;
                }
              }
            }

            sub_181F68E5C(v11, v48, 1u);
            v41 = v62;
            *(a5 + 192) = v61;
            *(a5 + 208) = v41;
            *(a5 + 224) = v63;
            v42 = v58;
            *(a5 + 128) = v57;
            *(a5 + 144) = v42;
            v43 = v60;
            *(a5 + 160) = v59;
            *(a5 + 176) = v43;
            v44 = v54;
            *(a5 + 64) = v53;
            *(a5 + 80) = v44;
            v45 = v56;
            *(a5 + 96) = v55;
            *(a5 + 112) = v45;
            v46 = v50;
            *a5 = v49;
            *(a5 + 16) = v46;
            v37 = v51;
            v36 = v52;
            goto LABEL_47;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      *&v64 = *a1;
      *(&v64 + 1) = v9;
      LOBYTE(v65) = v10;

      sub_182292F88(&v64, 0xD00000000000003FLL, 0x8000000182BD59B0, v94);
      v20 = v11;
      v21 = v48;
      v22 = 2;
    }

    else
    {
      *&v64 = *a1;
      *(&v64 + 1) = v9;
      LOBYTE(v65) = v10;

      sub_182292F88(&v64, 0xD00000000000003FLL, 0x8000000182BD59B0, v94);
      v20 = v11;
      v21 = v12;
      v22 = 0;
    }

LABEL_44:
    sub_181F68E5C(v20, v21, v22);
    goto LABEL_45;
  }

  if (*(v5 + 16) > 4u)
  {
    if (v13 == 5)
    {

      sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5990);
      swift_beginAccess();
      if (*(v11 + 88) >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *(v11 + 88);
      }

      Frame.init(capacity:)(v19, &v64);
      sub_181F68E5C(v11, v12, 5u);
      v89 = v74;
      v90 = v75;
      v91 = v76;
      v85 = v70;
      v86 = v71;
      v87 = v72;
      v88 = v73;
      v81 = v66;
      v82 = v67;
      v83 = v68;
      v84 = v69;
      v79 = v64;
      v80 = v65;
      v92 = v77;
      v93 = 0;
      goto LABEL_39;
    }

LABEL_45:
    sub_181F73CAC(&v79);
    goto LABEL_46;
  }

  v14 = a3;
  if (v13 == 3)
  {
    ObjectType = swift_getObjectType();
    *&v79 = v8;
    *(&v79 + 1) = v9;
    LOBYTE(v80) = v10;
    v17 = v12[9];
    swift_unknownObjectRetain();
    v17(&v79, a2, v14, a4, ObjectType, v12);
    sub_181F68E5C(v11, v12, 3u);
    return;
  }

  v23 = v12;
  output_handler = nw_protocol_swift_wrapper_get_output_handler(v11, v12);
  if (!output_handler)
  {
    goto LABEL_40;
  }

  v25 = output_handler;
  v94[0] = 0;
  v94[1] = 0;
  nw_frame_array_init(v94);
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a2 = 0xFFFFFFFFLL;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a2 < 0)
    {
      __break(1u);
      goto LABEL_63;
    }

    if (HIDWORD(a2))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_18:
      v14 = 0xFFFFFFFFLL;
      v26 = 0xFFFFFFFFLL;
      if (a4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (HIDWORD(v14))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0xFFFFFFFFLL;
    goto LABEL_37;
  }

LABEL_34:
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (HIDWORD(a4))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v26 = a4;
LABEL_37:
  if (!nw_protocol_get_output_frames_quiet(v25, v11, a2, v14, v26, v94))
  {
LABEL_40:
    v20 = v11;
    v21 = v23;
    v22 = 4;
    goto LABEL_44;
  }

  sub_182285C4C(v94, 1, &v64);
  sub_181F68E5C(v11, v23, 4u);
  v91 = v76;
  v92 = v77;
  v93 = v78;
  v87 = v72;
  v88 = v73;
  v89 = v74;
  v90 = v75;
  v83 = v68;
  v84 = v69;
  v85 = v70;
  v86 = v71;
  v79 = v64;
  v80 = v65;
  v81 = v66;
  v82 = v67;
LABEL_39:
  nullsub_41(&v79);
LABEL_46:
  v30 = v92;
  *(a5 + 192) = v91;
  *(a5 + 208) = v30;
  *(a5 + 224) = v93;
  v31 = v88;
  *(a5 + 128) = v87;
  *(a5 + 144) = v31;
  v32 = v90;
  *(a5 + 160) = v89;
  *(a5 + 176) = v32;
  v33 = v84;
  *(a5 + 64) = v83;
  *(a5 + 80) = v33;
  v34 = v86;
  *(a5 + 96) = v85;
  *(a5 + 112) = v34;
  v35 = v80;
  *a5 = v79;
  *(a5 + 16) = v35;
  v37 = v81;
  v36 = v82;
LABEL_47:
  *(a5 + 32) = v37;
  *(a5 + 48) = v36;
}

uint64_t OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(uint64_t *a1, uint64_t a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a2 + 112);
  v85 = *(a2 + 96);
  v86 = v6;
  v7 = *(a2 + 48);
  v81 = *(a2 + 32);
  v82 = v7;
  v8 = *(a2 + 80);
  v83 = *(a2 + 64);
  v84 = v8;
  v9 = *(a2 + 16);
  v79 = *a2;
  v80 = v9;
  v10 = *(a2 + 160);
  *(&v89 + 1) = *(a2 + 161);
  DWORD1(v89) = *(a2 + 164);
  v11 = *(a2 + 168);
  v12 = *(a2 + 192);
  v90 = *(a2 + 176);
  v91 = v12;
  v13 = *(a2 + 208);
  v14 = *(a2 + 216);
  v15 = *(a2 + 224);
  v16 = *(a2 + 144);
  v87 = *(a2 + 128);
  v88 = v16;
  LOBYTE(v89) = v10;
  *(&v89 + 1) = v11;
  v92 = v13;
  v93 = v14;
  v94 = v15;
  v18 = *v2;
  v17 = *(v2 + 8);
  v19 = *(v2 + 16);
  if (v19 <= 2)
  {
    if (*(v2 + 16))
    {
      *&v63 = v4;
      *(&v63 + 1) = v3;
      LOBYTE(v64) = v5;
      if (v19 == 1)
      {

        v22 = sub_182295DCC(&v63, &v79);
        v23 = v18;
        v24 = v17;
        v25 = 1;
      }

      else
      {

        v22 = sub_182295DCC(&v63, &v79);
        v23 = v18;
        v24 = v17;
        v25 = 2;
      }
    }

    else
    {
      *&v63 = v4;
      *(&v63 + 1) = v3;
      LOBYTE(v64) = v5;

      v22 = sub_182295DCC(&v63, &v79);
      v23 = v18;
      v24 = v17;
      v25 = 0;
    }

    goto LABEL_22;
  }

  if (*(v2 + 16) <= 4u)
  {
    if (v19 == 3)
    {
      ObjectType = swift_getObjectType();
      *&v63 = v4;
      *(&v63 + 1) = v3;
      LOBYTE(v64) = v5;
      v21 = v17[10];
      swift_unknownObjectRetain();
      v22 = v21(&v63, &v79, ObjectType, v17);
      v23 = v18;
      v24 = v17;
      v25 = 3;
LABEL_22:
      sub_181F68E5C(v23, v24, v25);
      return v22 & 1;
    }

    v59 = v16;
    output_handler = nw_protocol_swift_wrapper_get_output_handler(v18, v17);
    if (output_handler)
    {
      v34 = output_handler;
      v60 = 0;
      v61 = 0;
      nw_frame_array_init(&v60);
      if (v15)
      {
        v58 = v59.n128_u64[0];
      }

      else
      {
        do
        {
          FrameArray.popFirst()(&v63);
          v50 = sub_1822860AC(0);
          nw_frame_array_append(&v60, 1, v50);
          swift_unknownObjectRelease();
          v51 = v63;
          v52 = v64;
          v53 = BYTE8(v64);
          v54 = v65;
          v55 = v66;
          if (v66 != 2 || v65 != 0)
          {
            sub_181F68EF4(v63, *(&v63 + 1), v64, BYTE8(v64));

            sub_181F68F3C(v54, *(&v54 + 1), v55);
            __break(1u);
          }

          if ((v73 & 1) == 0 && v72.n128_u64[0])
          {
            MEMORY[0x1865DF520](v72.n128_u64[0], -1, -1);
          }

          sub_181F68EF4(v51, *(&v51 + 1), v52, v53);
        }

        while ((v94 & 1) == 0);
        v58 = v88.n128_u64[0];
        v10 = v89;
      }

      v22 = nw_protocol_finalize_output_frames_quiet(v34, &v60);
      sub_181F68E5C(v18, v17, 4u);
      v18 = *(&v79 + 1);
      v17 = v79;
      v45 = v80;
      v59.n128_u8[0] = BYTE8(v80);
      v44 = *(&v81 + 1);
      v43 = v81;
      LODWORD(v40) = v82;

      if (v40 == 2 && __PAIR128__(v44, v43) == 0)
      {
        if ((v10 & 1) == 0)
        {
          if (v58)
          {
            MEMORY[0x1865DF520](v58, -1, -1);
          }
        }

        sub_181F68EF4(v17, v18, v45, v59.n128_u8[0]);

        return v22 & 1;
      }

      goto LABEL_61;
    }

    sub_181F68E5C(v18, v17, 4u);

    v36 = *(&v79 + 1);
    v35 = v79;
    v37 = v80;
    v38 = BYTE8(v80);
    v45 = *(&v81 + 1);
    v17 = v81;
    LOBYTE(v18) = v82;
    if (v82 != 2 || v81 != 0)
    {
      goto LABEL_62;
    }

LABEL_38:
    if ((v10 & 1) == 0 && v59.n128_u64[0])
    {
      v46 = v35;
      v47 = v36;
      v48 = v37;
      v49 = v38;
      MEMORY[0x1865DF520](v59.n128_u64[0], -1, -1, v59);
      v35 = v46;
      v36 = v47;
      v37 = v48;
      v38 = v49;
    }

    sub_181F68EF4(v35, v36, v37, v38);

    v22 = 0;
    return v22 & 1;
  }

  if (v19 == 5)
  {
    v73 = v89;
    v74 = v90;
    v75 = v91;
    v69 = v85;
    v70 = v86;
    v71 = v87;
    v72 = v88;
    v65 = v81;
    v66 = v82;
    v67 = v83;
    v68 = v84;
    v63 = v79;
    v64 = v80;
    v76 = v92;
    v77 = v14;
    v78 = v15;

    sub_181FE8374(0xD00000000000001FLL, 0x8000000182BD59F0);
    if (v15 & 1) == 0 && (sub_181FE8904(&v63, v18))
    {
      if (v14)
      {
        v26 = v14[4];
        v27 = v14[3] + v26;
        if (v14[2] < v27)
        {
          v27 = v14[2];
        }

        v60 = v14;
        v61 = v26;
        v62 = v27;

        v29 = v14;
        while (1)
        {
          if (v26 == v62)
          {
            if ((sub_181AC81FC(v28) & 1) == 0)
            {
LABEL_19:

              goto LABEL_29;
            }

            v29 = v60;
            v26 = v61;
          }

          v30 = v26 + 1;
          v61 = v26 + 1;
          v31 = v29[v26 + 5];
          swift_beginAccess();

          v32 = sub_181FE8904(v31 + 16, v18);
          swift_endAccess();

          v26 = v30;
          if ((v32 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
    v59 = v16;

    v36 = *(&v79 + 1);
    v35 = v79;
    v37 = v80;
    v38 = BYTE8(v80);
    v17 = v81;
    v18 = v82;
    if (v82 == 2 && v81 == 0)
    {
      goto LABEL_38;
    }

    sub_181F68EF4(v79, *(&v79 + 1), v80, BYTE8(v80));

    sub_181F68F3C(v81, *(&v81 + 1), v82);
    __break(1u);
  }

LABEL_29:

LABEL_30:
  v39 = v63;
  v40 = v64;
  v41 = BYTE8(v64);
  v43 = *(&v65 + 1);
  v42 = v65;
  v44 = v66;
  v45 = *(&v73 + 1);
  if (v66 == 2 && v65 == 0)
  {
    if ((v73 & 1) == 0 && v72.n128_u64[0])
    {
      MEMORY[0x1865DF520](v72.n128_u64[0], -1, -1);
    }

    sub_181F68EF4(v39, *(&v39 + 1), v40, v41);

    sub_181F68E5C(v18, v17, 5u);
    v22 = 1;
    return v22 & 1;
  }

  sub_181F68EF4(v63, *(&v63 + 1), v64, BYTE8(v64));

  sub_181F68F3C(v42, v43, v44);
  __break(1u);
LABEL_61:
  sub_181F68EF4(v17, v18, v45, v59.n128_u8[0]);

  v35 = sub_181F68F3C(v43, v44, v40);
  __break(1u);
LABEL_62:
  sub_181F68EF4(v35, v36, v37, v38);

  result = sub_181F68F3C(v17, v45, v18);
  __break(1u);
  return result;
}

uint64_t ProtocolInstanceReference.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for IPProtocol.IPInstance();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = 0;
  }

  else
  {
    type metadata accessor for UDPProtocol.UDPInstance();
    result = swift_dynamicCastClass();
    if (result)
    {
      v7 = 0x2000000000000000;
    }

    else
    {
      type metadata accessor for TCPProtocol.TCPInstance();
      result = swift_dynamicCastClass();
      v7 = 0x4000000000000000;
      if (!result)
      {
        result = a1;
        v7 = a2 | 0x6000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t Parameters.protocolOptions<A>(for:)(__int128 *a1)
{
  v2 = *a1;
  result = sub_181F6433C(&v2);
  if (result)
  {
    type metadata accessor for ProtocolOptions();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t Parameters.protocolOptions<A>(for:)(uint64_t a1, ValueMetadata *a2)
{
  sub_181F636F0(a1, v4);
  if (!v4[0])
  {
    return 0;
  }

  type metadata accessor for ProtocolOptions();
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  if (a2 == &type metadata for QUICStreamProtocol)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C50);
    if (swift_dynamicCastClass())
    {
      sub_18228121C();
      goto LABEL_9;
    }

LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  if (a2 != &type metadata for UDPProtocol)
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DF0);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_11;
  }

  ProtocolOptions<>.udpOptions()();
LABEL_9:
  swift_unknownObjectRelease();
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  return 0;
}

double ProtocolInstanceReference.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_182AE7580;
  return result;
}

uint64_t ProtocolInstanceReference.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0x2000000000000000;
  return result;
}

{
  *a2 = result;
  a2[1] = 0xA000000000000000;
  return result;
}

void sub_181F70FF8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *v2;
  v7 = v2[1];
  v9 = v7 >> 61;
  if ((v7 >> 61) <= 2)
  {
    v16 = *a1;
    v17 = v4;
    v18 = v6;

    sub_1822932C0(&v16, a2);
    goto LABEL_6;
  }

  if (v9 <= 4)
  {
    if (v9 == 3)
    {
      ObjectType = swift_getObjectType();
      v16 = v5;
      v17 = v4;
      v18 = v6;
      v11 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      swift_unknownObjectRetain();
      v11(&v16, ObjectType, v7 & 0x1FFFFFFFFFFFFFFFLL);
LABEL_6:
      sub_181F749D0(v8, v7);
      return;
    }

    goto LABEL_9;
  }

  if (v9 != 5)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
    v15 = -1;
    goto LABEL_10;
  }

  sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5AA0);
  v12 = *(v8 + 16);
  v13 = *(v8 + 24);
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  v14 = *(v8 + 32);
  *(v8 + 32) = v6;
  sub_181F68EA8(v5, v4, v6);
  sub_181F68E5C(v12, v13, v14);
  *a2 = v8;
  *(a2 + 8) = 0;
  v15 = 5;
LABEL_10:
  *(a2 + 16) = v15;
}

uint64_t sub_181F7116C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 5)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 3)
  {
    v4 = result;
  }

  else
  {
    v4 = a2;
  }

  if (a3 <= 4u)
  {
    v3 = v4;
  }

  if (a3 > 2u)
  {
    return v3;
  }

  return result;
}

void InputHandlerLinkage.invokeGetParameters()(void *a1@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    *__src = v9;
    *&__src[8] = v10;
    __src[16] = v11;
    v12 = sub_181F68EA8(v9, v10, v11);
    InputHandlerLinkage.invokeGetParameters()(v12);
    sub_181F68E5C(v9, v10, v11);
    return;
  }

  v5 = *(v1 + 8);
  if (*(v1 + 16) > 4u)
  {
    if (v4 == 5)
    {

      sub_181FE62E8(0xD00000000000001BLL, 0x8000000182BD5A10);
      memcpy(__dst, (v3 + 56), 0x188uLL);
      sub_181F481DC(__dst, __src);
      sub_181F68E5C(v3, v5, 5u);
      memcpy(__src, __dst, sizeof(__src));
LABEL_16:
      nullsub_41(__src);
      goto LABEL_17;
    }
  }

  else
  {
    if (v4 == 3)
    {
      ObjectType = swift_getObjectType();
      v7 = v5[2];
      v8 = *(v7 + 40);
      swift_unknownObjectRetain();
      v8(ObjectType, v7);
      sub_181F68E5C(v3, v5, 3u);
      return;
    }

    input_handler = nw_protocol_swift_wrapper_get_input_handler(v3, v5);
    if (input_handler)
    {
      v14 = nw_protocol_get_parameters_quiet(input_handler);
      if (v14)
      {
        v15 = v14;
        sub_181F68E5C(v3, v5, 4u);
        v16 = *&v15[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];

        if (v16 < 0)
        {
          memcpy(__src, ((v16 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__src));
          sub_181F481DC(__src, __dst);

          v18 = *&__src[384];
          v20 = *&__src[352];
          v19 = *&__src[368];
          v21 = *&__src[344];
          v22 = *&__src[336];
          v25 = *&__src[120];
          v41.i32[0] = *&__src[113];
          v27 = vmovl_u8(v41).u64[0];
          v28 = *&__src[104];
          v29 = __src[112];
          v30 = *&__src[88];
          v31 = __src[96];
          v32 = *&__src[72];
          v33 = __src[80];
          v34 = *&__src[36];
          v35 = *&__src[52];
          v36 = __src[68];
          v37 = *&__src[17];
          v38 = __src[33];
          v39 = *__src;
          v40 = __src[16];
          v24 = *&__src[304];
          v23 = *&__src[320];
        }

        else
        {
          swift_beginAccess();
          memcpy(__src, (v16 + 16), sizeof(__src));
          sub_181F481DC(__src, __dst);

          v18 = *&__src[384];
          v20 = *&__src[352];
          v19 = *&__src[368];
          v21 = *&__src[344];
          v22 = *&__src[336];
          v24 = *&__src[304];
          v23 = *&__src[320];
          v25 = *&__src[120];
          v26.i32[0] = *&__src[113];
          v27 = vmovl_u8(v26).u64[0];
          v28 = *&__src[104];
          v29 = __src[112];
          v30 = *&__src[88];
          v31 = __src[96];
          v32 = *&__src[72];
          v33 = __src[80];
          v34 = *&__src[36];
          v35 = *&__src[52];
          v36 = __src[68];
          v37 = *&__src[17];
          v38 = __src[33];
          v39 = *__src;
          v40 = __src[16];
        }

        v17.i32[0] = *&__src[216];
        __dst[2] = *&__src[160];
        __dst[3] = *&__src[176];
        *(&__dst[3] + 12) = *&__src[188];
        __dst[0] = *&__src[128];
        __dst[1] = *&__src[144];
        *v42 = __dst[3];
        *&v42[12] = *&__src[188];
        *&v42[36] = *&__src[212];
        *&v42[28] = *&__src[204];
        *__src = v39;
        __src[16] = v40;
        *&__src[17] = v37;
        __src[33] = v38;
        *&__src[36] = v34;
        *&__src[52] = v35;
        __src[68] = v36;
        *&__src[72] = v32;
        __src[80] = v33;
        *&__src[88] = v30;
        __src[96] = v31;
        *&__src[104] = v28;
        __src[112] = v29;
        *&__src[113] = vuzp1_s8(v27, *&v19).u32[0];
        *&__src[120] = v25;
        *&__src[208] = *&v42[32];
        *&__src[176] = *v42;
        *&__src[192] = *&v42[16];
        *&__src[216] = vuzp1_s8(*&vmovl_u8(v17), *&v19).u32[0];
        *&__src[304] = v24;
        *&__src[320] = v23;
        *&__src[336] = v22;
        *&__src[344] = v21;
        *&__src[352] = v20;
        *&__src[368] = v19;
        *&__src[384] = v18;
        goto LABEL_16;
      }
    }

    sub_181F68E5C(v3, v5, 4u);
  }

  sub_181F74038(__src);
LABEL_17:
  memcpy(a1, __src, 0x188uLL);
}

uint64_t InputHandlerLinkage.getOptions(from:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_181F73BE0(a1, a2, v3, ObjectType, a3);
}

id InputHandlerLinkage.invokeGetRemoteEndpoint()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v3 == 1)
      {

        v7 = sub_182294680();
        v8 = v2;
        v9 = v1;
        v10 = 1;
      }

      else
      {

        v7 = sub_182294680();
        v8 = v2;
        v9 = v1;
        v10 = 2;
      }
    }

    else
    {

      v7 = sub_182294680();
      v8 = v2;
      v9 = v1;
      v10 = 0;
    }

    goto LABEL_12;
  }

  if (*(v0 + 16) > 4u)
  {
    if (v3 == 5)
    {

      sub_181FE62E8(0xD000000000000020, 0x8000000182BD5A30);
      v11 = *(v2 + 48);
      v12 = v2;
      v13 = v1;
      v14 = 5;
LABEL_16:
      sub_181F68E5C(v12, v13, v14);
      return v11;
    }
  }

  else
  {
    if (v3 == 3)
    {
      ObjectType = swift_getObjectType();
      v5 = v1[2];
      v6 = *(v5 + 48);
      swift_unknownObjectRetain();
      v7 = v6(ObjectType, v5);
      v8 = v2;
      v9 = v1;
      v10 = 3;
LABEL_12:
      sub_181F68E5C(v8, v9, v10);
      return v7;
    }

    input_handler = nw_protocol_swift_wrapper_get_input_handler(v2, v1);
    if (input_handler)
    {
      v17 = nw_protocol_get_remote_endpoint_quiet(input_handler);
      if (v17)
      {
        v11 = v17;
        v12 = v2;
        v13 = v1;
        v14 = 4;
        goto LABEL_16;
      }
    }

    sub_181F68E5C(v2, v1, 4u);
  }

  return 0;
}

id InputHandlerLinkage.invokeGetLocalEndpoint()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v3 == 1)
      {

        v7 = sub_1822948BC();
        v8 = v2;
        v9 = v1;
        v10 = 1;
      }

      else
      {

        v7 = sub_1822948BC();
        v8 = v2;
        v9 = v1;
        v10 = 2;
      }
    }

    else
    {

      v7 = sub_1822948BC();
      v8 = v2;
      v9 = v1;
      v10 = 0;
    }

    goto LABEL_12;
  }

  if (*(v0 + 16) > 4u)
  {
    if (v3 == 5)
    {

      sub_181FE62E8(0xD00000000000001FLL, 0x8000000182BD5A60);
      v11 = *(v2 + 40);
      v12 = v2;
      v13 = v1;
      v14 = 5;
LABEL_16:
      sub_181F68E5C(v12, v13, v14);
      return v11;
    }
  }

  else
  {
    if (v3 == 3)
    {
      ObjectType = swift_getObjectType();
      v5 = v1[2];
      v6 = *(v5 + 56);
      swift_unknownObjectRetain();
      v7 = v6(ObjectType, v5);
      v8 = v2;
      v9 = v1;
      v10 = 3;
LABEL_12:
      sub_181F68E5C(v8, v9, v10);
      return v7;
    }

    input_handler = nw_protocol_swift_wrapper_get_input_handler(v2, v1);
    if (input_handler)
    {
      v17 = nw_protocol_get_local_endpoint_quiet(input_handler);
      if (v17)
      {
        v11 = v17;
        v12 = v2;
        v13 = v1;
        v14 = 4;
        goto LABEL_16;
      }
    }

    sub_181F68E5C(v2, v1, 4u);
  }

  return 0;
}

void InputHandlerLinkage.invokeGetPath()(void *a1@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    *&__src[0] = v9;
    *(&__src[0] + 1) = v10;
    LOBYTE(__src[1]) = v11;
    v12 = sub_181F68EA8(v9, v10, v11);
    InputHandlerLinkage.invokeGetPath()(v12);
    sub_181F68E5C(v9, v10, v11);
    return;
  }

  v5 = *(v1 + 8);
  if (*(v1 + 16) <= 4u)
  {
    if (v4 == 3)
    {
      ObjectType = swift_getObjectType();
      v7 = v5[2];
      v8 = *(v7 + 64);
      swift_unknownObjectRetain();
      v8(ObjectType, v7);
      sub_181F68E5C(v3, v5, 3u);
      return;
    }

    input_handler = nw_protocol_swift_wrapper_get_input_handler(v3, v5);
    if (input_handler)
    {
      v14 = nw_protocol_get_path_quiet(input_handler);
      if (v14)
      {
        v15 = v14;
        sub_181F68E5C(v3, v5, 4u);
        swift_unknownObjectRelease();
        v16 = OBJC_IVAR____TtC7Network8__NWPath_path;
        swift_beginAccess();
        memcpy(__dst, v15 + v16, 0x17AuLL);
        sub_181A3DF5C(__dst, __src);

        goto LABEL_11;
      }
    }

    sub_181F68E5C(v3, v5, 4u);
LABEL_13:
    sub_181F74108(__src);
    goto LABEL_14;
  }

  if (v4 != 5)
  {
    goto LABEL_13;
  }

  sub_181FE62E8(0xD000000000000015, 0x8000000182BD5A80);
  memcpy(__dst, (v3 + 448), 0x17AuLL);
  sub_181A3DF5C(__dst, __src);
  sub_181F68E5C(v3, v5, 5u);
LABEL_11:
  memcpy(__src, __dst, 0x17AuLL);
  nullsub_41(__src);
LABEL_14:
  memcpy(a1, __src, 0x17AuLL);
}

void sub_181F71CEC(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182293124(&v28, 0xD000000000000011, 0x8000000182BD5B40, &v25);
        v14 = *(v6 + 16);
        v15 = *(v6 + 24);
        v16 = *(v6 + 32);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        sub_181F68EA8(v14, v15, v16);
        sub_182292B80(&v25);
        v17 = v25;
        v18 = v26;
        v19 = v27;
        v23[0] = v25;
        v23[1] = v26;
        v24 = v27;
        sub_181F71CEC(v23);
        v20 = v6;
        v21 = v5;
        v22 = 1;
      }

      else
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182293124(&v28, 0xD000000000000011, 0x8000000182BD5B40, &v25);
        v14 = *(v6 + 16);
        v15 = *(v6 + 24);
        v16 = *(v6 + 32);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          sub_181F68EA8(v14, v15, v16);
          if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
          {
            *(v6 + 112) = v6;
            *(v6 + 120) = 0;
            *(v6 + 128) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v14, v15, v16);
        }

        v17 = *(v6 + 112);
        v18 = *(v6 + 120);
        v19 = *(v6 + 128);
        v25 = v17;
        v26 = v18;
        v27 = v19;
        sub_181F68EA8(v17, v18, v19);
        sub_181F71CEC(&v25);
        v20 = v6;
        v21 = v5;
        v22 = 2;
      }
    }

    else
    {
      v28 = *a1;
      v29 = v2;
      v30 = v4;

      sub_182293124(&v28, 0xD000000000000011, 0x8000000182BD5B40, &v25);
      v14 = *(v6 + 16);
      v15 = *(v6 + 24);
      v16 = *(v6 + 32);
      v28 = v14;
      v29 = v15;
      v30 = v16;
      if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
      {
        sub_181F68EA8(v14, v15, v16);
        if (*(v6 + 128) == 6 && *(v6 + 112) == 0)
        {
          *(v6 + 112) = v6;
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v14, v15, v16);
      }

      v17 = *(v6 + 112);
      v18 = *(v6 + 120);
      v19 = *(v6 + 128);
      v25 = v17;
      v26 = v18;
      v27 = v19;
      sub_181F68EA8(v17, v18, v19);
      sub_181F71CEC(&v25);
      v20 = v6;
      v21 = v5;
      v22 = 0;
    }

    sub_181F68E5C(v20, v21, v22);
    sub_181F68E5C(v17, v18, v19);
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE62E8(0xD000000000000017, 0x8000000182BD5B20);
    v10 = v6;
    v11 = v5;
    v12 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v28 = v3;
    v29 = v2;
    v30 = v4;
    v9 = v5[5];
    swift_unknownObjectRetain();
    v9(&v28, ObjectType, v5);
    v10 = v6;
    v11 = v5;
    v12 = 3;
  }

  else
  {
    input_handler = nw_protocol_swift_wrapper_get_input_handler(v6, v5);
    if (input_handler)
    {
      nw_protocol_input_finished_quiet(input_handler, v6);
    }

    v10 = v6;
    v11 = v5;
    v12 = 4;
  }

  sub_181F68E5C(v10, v11, v12);
}

uint64_t sub_181F72168(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  sub_182AD44E8();
  if (a3(v5, v6, v7))
  {
    MEMORY[0x1865DB070]();
  }

  return sub_182AD4558();
}

uint64_t _s7Network19InputHandlerLinkageV4hash4intoys6HasherVz_tF_0()
{
  v1 = *(v0 + 16);
  if (v1 <= 3)
  {
    return MEMORY[0x1865DB070](*v0);
  }

  if (v1 == 4)
  {
    v0 += 8;
    return MEMORY[0x1865DB070](*v0);
  }

  if (v1 == 5)
  {
    return MEMORY[0x1865DB070](*v0);
  }

  return result;
}

uint64_t sub_181F72240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 16);
  sub_182AD44E8();
  if (a4(v6, v7, v8))
  {
    MEMORY[0x1865DB070]();
  }

  return sub_182AD4558();
}

void OutputHandlerLinkage.invokeAddInputHandler(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *v2;
  v7 = *(v2 + 8);
  v9 = *(v2 + 16);
  if (v9 > 2)
  {
    if (*(v2 + 16) > 4u)
    {
      if (v9 == 5)
      {

        sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5AA0);
        v13 = *(v8 + 16);
        v14 = *(v8 + 24);
        *(v8 + 16) = v5;
        *(v8 + 24) = v4;
        v15 = *(v8 + 32);
        *(v8 + 32) = v6;
        sub_181F68EA8(v5, v4, v6);
        sub_181F68E5C(v13, v14, v15);
        *a2 = v8;
        *(a2 + 8) = v7;
        v16 = 5;
LABEL_18:
        *(a2 + 16) = v16;
        return;
      }
    }

    else
    {
      if (v9 == 3)
      {
        ObjectType = swift_getObjectType();
        v21 = v5;
        v22 = v4;
        v23 = v6;
        v11 = v7[1];
        v12 = *(v11 + 16);
        swift_unknownObjectRetain();
        v12(&v21, ObjectType, v11);
        sub_181F68E5C(v8, v7, 3u);
        return;
      }

      if (qword_1EA8371A0 != -1)
      {
        swift_once();
      }

      v17 = sub_182AD2698();
      __swift_project_value_buffer(v17, qword_1EA843348);
      v18 = sub_182AD2678();
      v19 = sub_182AD38B8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_181A37000, v18, v19, "Adding input handler incorrectly", v20, 2u);
        MEMORY[0x1865DF520](v20, -1, -1);
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    v16 = -1;
    goto LABEL_18;
  }

  if (*(v2 + 16))
  {
    v21 = *a1;
    v22 = v4;
    v23 = v6;
    if (v9 == 1)
    {

      sub_1822932C0(&v21, a2);
      sub_181F68E5C(v8, v7, 1u);
    }

    else
    {

      sub_1822932C0(&v21, a2);
      sub_181F68E5C(v8, v7, 2u);
    }
  }

  else
  {
    v21 = *a1;
    v22 = v4;
    v23 = v6;

    sub_1822932C0(&v21, a2);
    sub_181F68E5C(v8, v7, 0);
  }
}

uint64_t OutputHandlerLinkage.invokeGetMetadata<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = *(v3 + 16);
  if (v9 <= 2)
  {
    if (*(v3 + 16))
    {
      *&v23 = *a1;
      *(&v23 + 1) = v4;
      v24 = v6;
      if (v9 == 1)
      {

        v15 = DefaultOneToOneProtocol.getMetadata<A>(_:)(&v23, a2, a3);
        v16 = v8;
        v17 = v7;
        v18 = 1;
      }

      else
      {

        v15 = DefaultOneToOneProtocol.getMetadata<A>(_:)(&v23, a2, a3);
        v16 = v8;
        v17 = v7;
        v18 = 2;
      }
    }

    else
    {
      *&v23 = *a1;
      *(&v23 + 1) = v4;
      v24 = v6;

      v15 = DefaultOneToOneProtocol.getMetadata<A>(_:)(&v23, a2, a3);
      v16 = v8;
      v17 = v7;
      v18 = 0;
    }

LABEL_12:
    sub_181F68E5C(v16, v17, v18);
    return v15;
  }

  result = 0;
  if (*(v3 + 16) <= 4u)
  {
    if (v9 != 3)
    {
      return result;
    }

    ObjectType = swift_getObjectType();
    *&v23 = v5;
    *(&v23 + 1) = v4;
    v24 = v6;
    v14 = v7[12];
    swift_unknownObjectRetain();
    v15 = v14(&v23, a2, a3, ObjectType, v7);
    v16 = v8;
    v17 = v7;
    v18 = 3;
    goto LABEL_12;
  }

  if (v9 == 5)
  {
    *&v23 = v5;
    *(&v23 + 1) = v4;
    v24 = v6;
    return _s7Network21OutputHarnessProtocolC11getMetadatayAA0dF0CyxGSgAA19InputHandlerLinkageVAA0aD0RzlF_0();
  }

  return result;
}

void OutputHandlerLinkage.invokeOutputFinished(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v7 == 1)
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182292F88(&v28, 0xD000000000000012, 0x8000000182BD5AE0, &v25);
        v14 = *(v6 + 40);
        v15 = *(v6 + 48);
        v16 = *(v6 + 56);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        sub_181F68EA8(v14, v15, v16);
        sub_182292A10(&v25);
        v17 = v25;
        v18 = v26;
        v19 = v27;
        v23[0] = v25;
        v23[1] = v26;
        v24 = v27;
        OutputHandlerLinkage.invokeOutputFinished(_:)(v23);
        v20 = v6;
        v21 = v5;
        v22 = 1;
      }

      else
      {
        v28 = *a1;
        v29 = v2;
        v30 = v4;

        sub_182292F88(&v28, 0xD000000000000012, 0x8000000182BD5AE0, &v25);
        v14 = *(v6 + 40);
        v15 = *(v6 + 48);
        v16 = *(v6 + 56);
        v28 = v14;
        v29 = v15;
        v30 = v16;
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          sub_181F68EA8(v14, v15, v16);
          if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
          {
            *(v6 + 88) = v6;
            *(v6 + 96) = 0;
            *(v6 + 104) = 2;

            sub_181F68E5C(0, 0, 6u);
          }
        }

        else
        {
          sub_181F68EA8(v14, v15, v16);
        }

        v17 = *(v6 + 88);
        v18 = *(v6 + 96);
        v19 = *(v6 + 104);
        v25 = v17;
        v26 = v18;
        v27 = v19;
        sub_181F68EA8(v17, v18, v19);
        OutputHandlerLinkage.invokeOutputFinished(_:)(&v25);
        v20 = v6;
        v21 = v5;
        v22 = 2;
      }
    }

    else
    {
      v28 = *a1;
      v29 = v2;
      v30 = v4;

      sub_182292F88(&v28, 0xD000000000000012, 0x8000000182BD5AE0, &v25);
      v14 = *(v6 + 40);
      v15 = *(v6 + 48);
      v16 = *(v6 + 56);
      v28 = v14;
      v29 = v15;
      v30 = v16;
      if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
      {
        sub_181F68EA8(v14, v15, v16);
        if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
        {
          *(v6 + 88) = v6;
          *(v6 + 96) = 0;
          *(v6 + 104) = 0;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v14, v15, v16);
      }

      v17 = *(v6 + 88);
      v18 = *(v6 + 96);
      v19 = *(v6 + 104);
      v25 = v17;
      v26 = v18;
      v27 = v19;
      sub_181F68EA8(v17, v18, v19);
      OutputHandlerLinkage.invokeOutputFinished(_:)(&v25);
      v20 = v6;
      v21 = v5;
      v22 = 0;
    }

    sub_181F68E5C(v20, v21, v22);
    sub_181F68E5C(v17, v18, v19);
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v7 != 5)
    {
      return;
    }

    sub_181FE8374(0xD000000000000018, 0x8000000182BD5AC0);
    v10 = v6;
    v11 = v5;
    v12 = 5;
  }

  else if (v7 == 3)
  {
    ObjectType = swift_getObjectType();
    v28 = v3;
    v29 = v2;
    v30 = v4;
    v9 = v5[7];
    swift_unknownObjectRetain();
    v9(&v28, ObjectType, v5);
    v10 = v6;
    v11 = v5;
    v12 = 3;
  }

  else
  {
    output_handler = nw_protocol_swift_wrapper_get_output_handler(v6, v5);
    if (output_handler)
    {
      nw_protocol_output_finished_quiet(output_handler, v6);
    }

    v10 = v6;
    v11 = v5;
    v12 = 4;
  }

  sub_181F68E5C(v10, v11, v12);
}

uint64_t OutputHandlerLinkage.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t _s7Network19InputHandlerLinkageV05inputC0AcA0bC0_p_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for IPProtocol.IPInstance();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    type metadata accessor for UDPProtocol.UDPInstance();
    result = swift_dynamicCastClass();
    if (result)
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      type metadata accessor for TCPProtocol.TCPInstance();
      result = swift_dynamicCastClass();
      v9 = result == 0;
      if (result)
      {
        v7 = 0;
      }

      else
      {
        result = a1;
        v7 = a2;
      }

      if (v9)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t _s7Network19InputHandlerLinkageV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_182AD44E8();
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v1 = v2;
    }

    else if (v3 != 5)
    {
      return sub_182AD4558();
    }
  }

  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_181F72C48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_182AD44E8();
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v1 = v2;
    }

    else if (v3 != 5)
    {
      return sub_182AD4558();
    }
  }

  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

double NewFlowHandlerLinkage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_182AE3CA0;
  return result;
}

uint64_t NewFlowHandlerLinkage.invokeNewFlow(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = v1[1];
  if (v5 >> 62)
  {
    if (v5 >> 62 != 1)
    {
      v10 = 0;
      return v10 & 1;
    }

    v12 = *a1;
    v13 = v2;
    v14 = v4;

    v7 = ListenerHarnessProtocol.handleNewFlow(_:)(&v12);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v12 = v3;
    v13 = v2;
    v14 = v4;
    v9 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7 = v9(&v12, ObjectType, v5);
  }

  v10 = v7;
  sub_181F74148(v6, v5);
  return v10 & 1;
}

void *NewFlowHandlerLinkage.invokeGetParameters()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {

      sub_181FE8FDC(0xD00000000000001BLL, 0x8000000182BD5A10);
      memcpy(v9, (v4 + 48), sizeof(v9));
      sub_181F481DC(v9, __dst);
      sub_181F74148(v4, v3);
      memcpy(__dst, v9, sizeof(__dst));
      nullsub_41(__dst);
    }

    else
    {
      sub_181F74038(__dst);
    }

    return memcpy(a1, __dst, 0x188uLL);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 8);
    v7 = *(v6 + 40);
    swift_unknownObjectRetain();
    v7(ObjectType, v6);

    return sub_181F74148(v4, v3);
  }
}

uint64_t NewFlowHandlerLinkage.getOptions(from:for:)(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  ObjectType = swift_getObjectType();
  return sub_181F73B1C(a2, __dst, ObjectType, a3);
}

id NewFlowHandlerLinkage.invokeGetRemoteEndpoint()()
{
  v2 = *v0;
  v1 = v0[1];
  if (!(v1 >> 62))
  {
    ObjectType = swift_getObjectType();
    v5 = *(v1 + 8);
    v6 = *(v5 + 48);
    swift_unknownObjectRetain();
    v3 = v6(ObjectType, v5);
    goto LABEL_5;
  }

  if (v1 >> 62 == 1)
  {

    sub_181FE8FDC(0xD000000000000020, 0x8000000182BD5A30);
    v3 = *(v2 + 40);
LABEL_5:
    v7 = v3;
    sub_181F74148(v2, v1);
    return v7;
  }

  return 0;
}

id NewFlowHandlerLinkage.invokeGetLocalEndpoint()()
{
  v2 = *v0;
  v1 = v0[1];
  if (!(v1 >> 62))
  {
    ObjectType = swift_getObjectType();
    v5 = *(v1 + 8);
    v6 = *(v5 + 56);
    swift_unknownObjectRetain();
    v3 = v6(ObjectType, v5);
    goto LABEL_5;
  }

  if (v1 >> 62 == 1)
  {

    sub_181FE8FDC(0xD00000000000001FLL, 0x8000000182BD5A60);
    v3 = *(v2 + 32);
LABEL_5:
    v7 = v3;
    sub_181F74148(v2, v1);
    return v7;
  }

  return 0;
}

void *NewFlowHandlerLinkage.invokeGetPath()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {

      sub_181FE8FDC(0xD000000000000015, 0x8000000182BD5A80);
      memcpy(v9, (v4 + 440), 0x17AuLL);
      sub_181A3DF5C(v9, __dst);
      sub_181F74148(v4, v3);
      memcpy(__dst, v9, 0x17AuLL);
      nullsub_41(__dst);
    }

    else
    {
      sub_181F74108(__dst);
    }

    return memcpy(a1, __dst, 0x17AuLL);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 8);
    v7 = *(v6 + 64);
    swift_unknownObjectRetain();
    v7(ObjectType, v6);

    return sub_181F74148(v4, v3);
  }
}

Swift::Void __swiftcall NewFlowHandlerLinkage.invokeConnected()()
{
  v2 = *v0;
  v1 = v0[1];
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {

      sub_181FE8FDC(0xD000000000000012, 0x8000000182BD5850);
      v3 = *(v2 + 824);
      if (v3)
      {

        v3(1);
        sub_181A554F4(v3);
        v4 = *(v2 + 824);
        *(v2 + 824) = 0;
        *(v2 + 832) = 0;
        sub_181A554F4(v4);
      }

      sub_181F74148(v2, v1);
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    v8 = 0;
    v9 = 0;
    v10 = 6;
    v6 = *(v1 + 8);
    v7 = *(v6 + 16);
    swift_unknownObjectRetain();
    v7(&v8, ObjectType, v6);
    sub_181F74148(v2, v1);
    sub_181F68E5C(v8, v9, v10);
  }
}

Swift::Void __swiftcall NewFlowHandlerLinkage.invokeDisconnected()()
{
  v2 = *v0;
  v1 = v0[1];
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {

      sub_181FE8FDC(0xD000000000000015, 0x8000000182BD5B00);
      v3 = *(v2 + 824);
      if (v3)
      {

        v3(0);
        sub_181A554F4(v3);
        v4 = *(v2 + 824);
        *(v2 + 824) = 0;
        *(v2 + 832) = 0;
        sub_181A554F4(v4);
      }

      sub_181F74148(v2, v1);
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    v8 = 0;
    v9 = 0;
    v10 = 6;
    v6 = *(v1 + 8);
    v7 = *(v6 + 24);
    swift_unknownObjectRetain();
    v7(&v8, ObjectType, v6);
    sub_181F74148(v2, v1);
    sub_181F68E5C(v8, v9, v10);
  }
}

void NewFlowHandlerLinkage.invokeError(error:)(int *a1)
{
  v3 = *v1;
  v2 = v1[1];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {

      sub_181FE8FDC(0x6465766965636552, 0xEE00726F72726520);

      sub_181F74148(v3, v2);
    }
  }

  else
  {
    v4 = *(a1 + 4);
    v5 = *a1;
    ObjectType = swift_getObjectType();
    v11 = 0;
    v12 = 0;
    v13 = 6;
    v9 = v5;
    v10 = v4;
    v7 = *(v2 + 8);
    v8 = *(v7 + 32);
    swift_unknownObjectRetain();
    v8(&v11, &v9, ObjectType, v7);
    sub_181F74148(v3, v2);
    sub_181F68E5C(v11, v12, v13);
  }
}

uint64_t NewFlowHandlerLinkage.hash(into:)()
{
  if ((v0[1] & 0x8000000000000000) == 0)
  {
    return MEMORY[0x1865DB070](*v0);
  }

  return result;
}

uint64_t NewFlowHandlerLinkage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_182AD44E8();
  if ((v2 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_181F736AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_182AD44E8();
  if ((v2 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_181F736F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_182AD44E8();
  if ((v2 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t ListenHandlerLinkage.init(listenHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double ListenHandlerLinkage.invokeAddNewFlowHandler(_:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (*v2)
  {
    v3 = v2[1];
    v5 = *a1;
    v4 = a1[1];
    ObjectType = swift_getObjectType();
    v9[0] = v5;
    v9[1] = v4;
    v7 = *(v3 + 16);
    swift_unknownObjectRetain();
    v7(v9, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    *&result = 1;
    *a2 = xmmword_182AE69F0;
  }

  return result;
}

uint64_t ListenHandlerLinkage.invokeRemoveNewFlowHandler(_:)(uint64_t *a1)
{
  if (*v1)
  {
    v2 = v1[1];
    v4 = *a1;
    v3 = a1[1];
    ObjectType = swift_getObjectType();
    v9[0] = v4;
    v9[1] = v3;
    v6 = *(v2 + 24);
    swift_unknownObjectRetain();
    v7 = v6(v9, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ListenHandlerLinkage.invokeConnect(_:)(uint64_t *a1)
{
  if (*v1)
  {
    v2 = v1[1];
    v4 = *a1;
    v3 = a1[1];
    ObjectType = swift_getObjectType();
    v9[0] = v4;
    v9[1] = v3;
    v6 = *(v2 + 32);
    swift_unknownObjectRetain();
    v7 = v6(v9, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t *ListenHandlerLinkage.invokeDisconnect(_:)(uint64_t *result)
{
  if (*v1)
  {
    v2 = v1[1];
    v4 = *result;
    v3 = result[1];
    ObjectType = swift_getObjectType();
    v7[0] = v4;
    v7[1] = v3;
    v6 = *(v2 + 40);
    swift_unknownObjectRetain();
    v6(v7, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ListenHandlerLinkage.hash(into:)()
{
  result = *v0;
  if (*v0)
  {
    return MEMORY[0x1865DB070]();
  }

  return result;
}

uint64_t ListenHandlerLinkage.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_181F73A48()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_181F73A94()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    MEMORY[0x1865DB070](v1);
  }

  return sub_182AD4558();
}

uint64_t sub_181F73B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IPProtocol.IPInstance();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    type metadata accessor for UDPProtocol.UDPInstance();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = 0x2000000000000000;
    }

    else
    {
      type metadata accessor for TCPProtocol.TCPInstance();
      v6 = swift_dynamicCastClass();
      v7 = 0x4000000000000000;
      if (!v6)
      {
        v6 = a1;
        v7 = a4 | 0x6000000000000000;
      }
    }
  }

  v10[0] = v6;
  v10[1] = v7;
  swift_unknownObjectRetain();
  v8 = sub_181F6433C(v10);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_181F73BE0(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __src[43];
  if (*(a3 + 16) == 4)
  {
    sub_181F636F0(*a3, __dst);
    return __dst[0];
  }

  else
  {
    memcpy(__dst, __src, 0x158uLL);
    __dst[43] = v5;
    v11 = *(__src + 23);
    v13 = *(__src + 22);
    v14 = v11;
    v15 = __src[48];
    return sub_181F73B1C(a2, __dst, a4, a5);
  }
}

double sub_181F73CAC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  return result;
}

uint64_t _s7Network20ListenHandlerLinkageV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_181F73D10(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 == 5)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 3)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (a3 <= 4u)
  {
    v6 = v7;
  }

  if (a3 <= 2u)
  {
    v8 = a1;
  }

  else
  {
    v8 = v6;
  }

  if (a6 == 5)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (a6 == 3)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (a6 <= 4u)
  {
    v9 = v10;
  }

  if (a6 <= 2u)
  {
    v11 = a4;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 == 0;
  if (v11)
  {
    v13 = v8 == v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if (v8)
  {
    return v14;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_181F73D74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 62 == 1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (a2 >> 62)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (a4 >> 62 == 1)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (a4 >> 62)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  v8 = v7 == 0;
  if (v7)
  {
    v9 = v5 == v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v5)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

BOOL _s7Network21NewFlowHandlerLinkageV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if ((a1[1] & 0x8000000000000000) == 0)
  {
    v4 = *a1;
    if (v3 < 0)
    {
      if (!v4)
      {
        return 1;
      }
    }

    else
    {
      if (v4)
      {
        return v2 && v4 == v2;
      }

      if (!v2)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 1;
  if ((v3 & 0x8000000000000000) == 0 && v2)
  {
    return 0;
  }

  return result;
}

BOOL sub_181F73E08(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v4)
    {
      if (v4 != 1 || a4 >> 61 != 1)
      {
        return 0;
      }
    }

    else if (a4 >> 61)
    {
      return 0;
    }

    return a1 == a3;
  }

  if (v4 == 2)
  {
    if (a4 >> 61 != 2)
    {
      return 0;
    }

    return a1 == a3;
  }

  if (v4 != 3)
  {
    return v4 == 6 && !a1 && a2 == 0xC000000000000000 && (a4 & 0xE000000000000000) == 0xC000000000000000 && !a3 && a4 == 0xC000000000000000;
  }

  if (a4 >> 61 == 3)
  {
    return a1 == a3;
  }

  return 0;
}

uint64_t _s7Network25ProtocolInstanceReferenceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (v6)
    {
      v13 = v5 >> 61;
      if (v6 != 1 || v13 != 1 || v2 != v4)
      {
        return 0;
      }
    }

    else
    {
      if (v5 >> 61)
      {
        v18 = 0;
      }

      else
      {
        v18 = v2 == v4;
      }

      if (!v18)
      {
        return 0;
      }
    }
  }

  else if (v6 == 2)
  {
    if (v5 >> 61 != 2 || v2 != v4)
    {
      return 0;
    }
  }

  else if (v6 == 3)
  {
    if (v5 >> 61 != 3 || v2 != v4)
    {
      return 0;
    }
  }

  else if (v6 != 6 || v2 != 0 || v3 != 0xC000000000000000 || (v5 & 0xE000000000000000) != 0xC000000000000000 || v4 != 0 || v5 != 0xC000000000000000)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_181F73F5C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IPProtocol.IPInstance();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    type metadata accessor for UDPProtocol.UDPInstance();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = 0x2000000000000000;
    }

    else
    {
      type metadata accessor for TCPProtocol.TCPInstance();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = 0x4000000000000000;
      }

      else
      {
        v4 = a1;
        v5 = a2 | 0x6000000000000000;
      }
    }
  }

  *&v9 = v4;
  *(&v9 + 1) = v5;
  v6 = v4;
  swift_unknownObjectRetain();
  v7 = Parameters.protocolOptions<A>(for:)(&v9);
  sub_181F749D0(v6, v5);
  return v7;
}

double sub_181F74038(uint64_t a1)
{
  *(a1 + 384) = 0;
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_181F74074(void *__src, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  if (*(v4 + 16) == 4)
  {
    return Parameters.protocolOptions<A>(for:)(*v4, a4);
  }

  memcpy(__dst, __src, sizeof(__dst));
  return sub_181F73F5C(a2, a3);
}

double sub_181F74108(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 362) = 0u;
  return result;
}

uint64_t sub_181F74148(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  if (!(a2 >> 62))
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_181F741D4()
{
  result = qword_1EA838B70;
  if (!qword_1EA838B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B70);
  }

  return result;
}

unint64_t sub_181F7422C()
{
  result = qword_1EA838B78;
  if (!qword_1EA838B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B78);
  }

  return result;
}

unint64_t sub_181F74284()
{
  result = qword_1EA838B80;
  if (!qword_1EA838B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B80);
  }

  return result;
}

unint64_t sub_181F742DC()
{
  result = qword_1EA838B88;
  if (!qword_1EA838B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B88);
  }

  return result;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProtocolMessageProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
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

uint64_t storeEnumTagSinglePayload for ProtocolMessageProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_7Network25ProtocolInstanceReferenceV01_bcD0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

unint64_t get_enum_tag_for_layout_string_7Network21NewFlowHandlerLinkageV01_bcD0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_181F746D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_181F74734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_181F747C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_181F7480C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_181F74874()
{
  result = qword_1EA838B90;
  if (!qword_1EA838B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B90);
  }

  return result;
}

unint64_t sub_181F748CC()
{
  result = qword_1EA838B98;
  if (!qword_1EA838B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B98);
  }

  return result;
}

unint64_t sub_181F74924()
{
  result = qword_1EA838BA0;
  if (!qword_1EA838BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838BA0);
  }

  return result;
}

unint64_t sub_181F7497C()
{
  result = qword_1EA838BA8;
  if (!qword_1EA838BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838BA8);
  }

  return result;
}

uint64_t sub_181F749D0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v2 > 2)
    {
      return result;
    }
  }

  if (v2 == 3)
  {
    return swift_unknownObjectRelease();
  }

  if (v2 == 4 || v2 == 5)
  {
  }

  return result;
}

uint64_t NWActorSystemInvocationEncoder.recordGenericSubstitution<A>(_:)()
{
  result = sub_182AD3E48();
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = *v0;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_181E59474(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      result = sub_181E59474((v6 > 1), v7 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v7 + 1;
    v8 = v5 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    *v0 = v5;
  }

  return result;
}

uint64_t NWActorSystemInvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_conformsToProtocol();
  v5 = swift_conformsToProtocol();
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_182AD2308();
  sub_182AD22F8();
  v13 = (v2 + 8);
  v12 = *(v2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_181F59E34(0, v12[2] + 1, 1, v12);
    *v13 = v12;
  }

  v16 = v12[2];
  v15 = v12[3];
  if (v16 >= v15 >> 1)
  {
    v12 = sub_181F59E34((v15 > 1), v16 + 1, 1, v12);
    *v13 = v12;
  }

  (*(v6 + 16))(v8, v11, a2);
  sub_181F74E2C(v16, v8, v13, a2, v4, v5);
  result = (*(v6 + 8))(v11, a2);
  *v13 = v12;
  return result;
}

uint64_t sub_181F74D7C(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return NWActorSystemInvocationEncoder.recordArgument<A>(_:)(a1, a2);
}

uint64_t sub_181F74DDC()
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return NWActorSystemInvocationEncoder.recordReturnType<A>(_:)();
}

_OWORD *sub_181F74E2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0Tm, a2, a4);
  v11 = *a3;
  *(v11 + 16) = a1 + 1;
  return sub_181F753CC(&v13, (v11 + 48 * a1 + 32));
}

char *sub_181F74ED8(uint64_t a1, uint64_t a2)
{
  v6 = sub_182AD3E78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NWFileSerializationContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v2 + 8);
  sub_181F75240(a1, v12);
  sub_181F752A4(a2, &v12[*(v10 + 5)], type metadata accessor for NWActorID);
  sub_182AD1C98();
  swift_allocObject();
  v13 = sub_182AD1C88();
  if (qword_1EA8372B0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = __swift_project_value_buffer(v6, qword_1EA843458);
    (*(v7 + 16))(v9, v14, v6);
    v30 = v10;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v29);
    sub_181F752A4(v12, boxed_opaque_existential_0Tm, type metadata accessor for NWFileSerializationContext);
    v10 = v31;
    v16 = sub_182AD1C78();
    sub_1820FA1B8(v29, v9);
    v16(v31, 0);
    sub_181F7530C(v12);
    v17 = v32;
    v18 = *(v32 + 16);
    if (!v18)
    {
      break;
    }

    v7 = 0;
    v6 = v32 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v28 = v13;
    while (v7 < *(v17 + 16))
    {
      sub_181F75368(v6, v29);
      v19 = v30;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v20 = sub_1821782FC(v13, v19);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v29);

        goto LABEL_14;
      }

      v22 = v20;
      v12 = v21;
      __swift_destroy_boxed_opaque_existential_1(v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_181F59F7C(0, *(v9 + 2) + 1, 1, v9);
      }

      v24 = *(v9 + 2);
      v23 = *(v9 + 3);
      v10 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v9 = sub_181F59F7C((v23 > 1), v24 + 1, 1, v9);
      }

      ++v7;
      *(v9 + 2) = v10;
      v25 = &v9[16 * v24];
      *(v25 + 4) = v22;
      *(v25 + 5) = v12;
      v6 += 48;
      v17 = v32;
      v13 = v28;
      if (v18 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_14:

  return v9;
}

uint64_t sub_181F75240(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_181F752A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181F7530C(uint64_t a1)
{
  v2 = type metadata accessor for NWFileSerializationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181F75368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_181F753CC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_181F75428()
{
  MEMORY[0x1865DA850]();

  return swift_deallocClassInstance();
}

void sub_181F75494(void (*a1)(uint64_t))
{
  v3 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  a1(v1 + v3);
  os_unfair_lock_unlock((v1 + v4));
}

uint64_t sub_181F7554C(uint64_t (*a1)(__int16 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *(v6 + 24);
      v10 = *(v6 + 1);
      v11 = *(v6 + 2);
      v14 = *v6;
      v15 = v10;
      v16 = v11;
      v17 = v9;
      sub_181F49A24(v10, v11, v9);
      v12 = a1(&v14);
      sub_181F48350(v15, v16, v17);
      LOBYTE(v4) = (v3 != 0) | v12;
      if ((v3 != 0) | v12 & 1)
      {
        break;
      }

      v7 = v8 - 1;
      v6 += 16;
    }

    while (v8);
  }

  return v4 & 1;
}

void _nw_protocol_transform_replace_endpoint(uint64_t a1, void *a2)
{

  swift_beginAccess();
  if (a2)
  {
    v4 = a2;
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = a2;
}

uint64_t sub_181F75678(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  sub_181AAC800(a2, &v21);
  v4 = v21;
  v5 = v22;
  v6 = v23;
  v7 = v24;
  v8 = v25;
  v9 = *(a1 + 48);
  v17[0] = v21;
  v17[1] = v22;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16[2] = v17;
  if (sub_181F7554C(sub_181F76134, v16, v9))
  {
    sub_181F48350(v6, v7, v8);
  }

  else
  {
    v10 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 48) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_181F5A088(0, *(v10 + 2) + 1, 1, v10);
      *(a1 + 48) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_181F5A088((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[32 * v13];
    v14[32] = v4;
    v14[33] = v5;
    *(v14 + 5) = v6;
    *(v14 + 6) = v7;
    v14[56] = v8;
    *(a1 + 48) = v10;
  }

  swift_endAccess();
}

uint64_t _nw_protocol_transform_set_multipath_service(uint64_t a1, int a2)
{

  swift_beginAccess();
  *(a1 + 29) = sub_18220C6BC(a2);
}

uint64_t _nw_protocol_transform_get_multipath_service(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 29);

  return dword_182AE8208[v2];
}

uint64_t sub_181F75894(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((v4 & 8) == 0)
    {
      v5 = v4 | 8;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((v4 & 8) != 0)
  {
    v5 = v4 & 0xFFF7;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_no_proxy(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 3) & 1;
}

uint64_t sub_181F75954(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((v4 & 0x80) == 0)
    {
      v5 = v4 | 0x80;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((v4 & 0x80) != 0)
  {
    v5 = v4 & 0xFF7F;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_no_path_fallback(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 7) & 1;
}

uint64_t sub_181F75A14(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((v4 & 0x20) == 0)
    {
      v5 = v4 | 0x20;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((v4 & 0x20) != 0)
  {
    v5 = v4 & 0xFFDF;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_tfo(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 5) & 1;
}

uint64_t sub_181F75AD4(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((v4 & 0x40) == 0)
    {
      v5 = v4 | 0x40;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((v4 & 0x40) != 0)
  {
    v5 = v4 & 0xFFBF;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_tfo_no_cookie(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 6) & 1;
}

uint64_t sub_181F75B94(uint64_t a1, char a2)
{

  swift_beginAccess();
  v4 = *(a1 + 64);
  if (a2)
  {
    if ((*(a1 + 64) & 0x100) == 0)
    {
      v5 = v4 | 0x100;
LABEL_6:
      *(a1 + 64) = v5;
    }
  }

  else if ((*(a1 + 64) & 0x100) != 0)
  {
    v5 = v4 & 0xFEFF;
    goto LABEL_6;
  }
}

uint64_t _nw_protocol_transform_get_fast_open_force_enable(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 8) & 1;
}

uint64_t _nw_protocol_transform_set_traffic_class(uint64_t a1, int a2)
{

  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 28) = 0;
}

uint64_t _nw_protocol_transform_get_traffic_class(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t _nw_protocol_transform_set_data_mode(uint64_t a1, unsigned int a2)
{

  swift_beginAccess();
  if (a2 >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a1 + 30) = v4;
}

uint64_t _nw_protocol_transform_get_data_mode(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 30);

  return v2;
}

uint64_t _nw_protocol_transform_clear_match_url_schemes(uint64_t a1)
{

  swift_beginAccess();
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
}

double _nw_protocol_transform_copy(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v2;
  v9[2] = *(a1 + 48);
  v10 = *(a1 + 64);
  sub_181B29D44(v9, v6);

  sub_18221C65C(v9, v6);
  type metadata accessor for __NWProtocolTransform();
  v3 = swift_allocObject();
  v4 = v6[1];
  *(v3 + 16) = v6[0];
  *(v3 + 32) = v4;
  result = *&v7;
  *(v3 + 48) = v7;
  *(v3 + 64) = v8;
  return result;
}

uint64_t sub_181F75ECC(uint64_t a1, uint64_t a2, unsigned int a3)
{

  swift_beginAccess();
  v6 = *(a1 + 32);
  v14[0] = *(a1 + 16);
  v14[1] = v6;
  v14[2] = *(a1 + 48);
  v15 = *(a1 + 64);
  sub_181B29D44(v14, v12);

  swift_beginAccess();
  v7 = *(a2 + 32);
  v12[0] = *(a2 + 16);
  v12[1] = v7;
  v12[2] = *(a2 + 48);
  v13 = *(a2 + 64);
  sub_181B29D44(v12, v11);

  if (a3 >= 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  v11[0] = v8;
  v9 = sub_18221C154(v12, v11);
  sub_181B29DA0(v12);
  sub_181B29DA0(v14);
  return v9 & 1;
}

uint64_t _nw_protocol_transform_get_hash(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v2;
  v6[2] = *(a1 + 48);
  v7 = *(a1 + 64);
  sub_181B29D44(v6, v5);

  sub_182AD44E8();
  sub_18221C2D8(v5);
  v3 = sub_182AD4558();
  sub_181B29DA0(v6);
  return v3;
}

uint64_t sub_181F7606C(__int16 a1, uint64_t a2, uint64_t a3, char a4, __int16 a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5)
  {
    if (a4)
    {
      if (a8 & 1) != 0 && (a2 == a6 && a3 == a7 || (sub_182AD4268()))
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a2 == a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_181F76154(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C90);
  if (swift_dynamicCast())
  {
    sub_181F3CF20(v38, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_182AD1DC8();
    v38[0] = v40;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_181F49A88(v38, &unk_1EA838C98);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v38[0] = a1;
    *(&v38[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v38;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_182AD3CF8();
  }

  sub_1820F8EF8(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    v38[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v38[0] = sub_1820F9340(v8);
  *(&v38[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v38[0]);
  v10 = sub_181F7BC4C(sub_181F7D368);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v38[0] + 1) >> 62;
  if ((*(&v38[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v38[0] + 16);
      v18 = *(*&v38[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v38[0]), v38[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v38[0]) - LODWORD(v38[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v38[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v38[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v38[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_182AD20D8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v38[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_18208A330(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_182AD3168();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_182AD31C8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_182AD3CF8();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_18208A330(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_182AD3178();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_182AD2108();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_182AD2108();
    sub_181D9D680(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_181D9D680(v35, v6);
LABEL_63:
  v32 = v38[0];
  sub_181F49B58(*&v38[0], *(&v38[0] + 1));

  sub_181C1F2E4(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_181F76674(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838CC8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v5 = sub_182AD2788();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_182AD2868();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  (*(v10 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C90);
  if (!swift_dynamicCast())
  {
    v27 = v6;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_181F49A88(v29, &unk_1EA838C98);
    sub_181F7D4E0(&qword_1EA836420, MEMORY[0x1E69E7FD0]);
    sub_182AD32A8();
    if (*(&v31 + 1) >> 60 != 15)
    {
      v29[0] = v31;
      goto LABEL_33;
    }

    v26 = v31;
    v13 = sub_182AD3288();
    *&v29[0] = sub_1820F9340(v13);
    *(&v29[0] + 1) = v14;
    MEMORY[0x1EEE9AC00](*&v29[0]);
    *(&v26 - 2) = a1;
    sub_181F7BFF0(sub_181F7D4C4);
    v15 = *&v4[*(v2 + 48)];
    v16 = v27;
    (*(v27 + 32))(v8, v4, v5);
    v17 = *(&v29[0] + 1) >> 62;
    if ((*(&v29[0] + 1) >> 62) > 1)
    {
      if (v17 != 2)
      {
        if (!v15)
        {
          goto LABEL_20;
        }

        v22 = 0;
LABEL_31:
        if (v22 >= v15)
        {
          sub_182AD20D8();
          (*(v16 + 8))(v8, v5);
          goto LABEL_33;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v19 = *(*&v29[0] + 16);
      v18 = *(*&v29[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      if (v15 == v21)
      {
        goto LABEL_20;
      }
    }

    else if (v17)
    {
      if (__OFSUB__(DWORD1(v29[0]), v29[0]))
      {
        goto LABEL_37;
      }

      if (v15 == DWORD1(v29[0]) - LODWORD(v29[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v15 == BYTE14(v29[0]))
    {
LABEL_20:
      sub_181F7D4E0(&unk_1EA836428, MEMORY[0x1E69E7F18]);
      *&v31 = 0;
      *(&v31 + 7) = 0;
      sub_182AD3A08();
      if (BYTE1(v28) == 1)
      {
        goto LABEL_28;
      }

      LOBYTE(v23) = 0;
      while (1)
      {
        *(&v31 + v23) = v28;
        v23 = v23 + 1;
        if ((v23 >> 8))
        {
          break;
        }

        if (v23 == 14)
        {
          *&v28 = v31;
          *(&v28 + 6) = *(&v31 + 6);
          sub_182AD2108();
          LOBYTE(v23) = 0;
        }

        sub_182AD3A08();
        if (BYTE1(v28))
        {
          if (v23)
          {
            *&v28 = v31;
            *(&v28 + 6) = *(&v31 + 6);
            sub_182AD2108();
            sub_181D9D680(v26, *(&v26 + 1));
            (*(v27 + 8))(v8, v5);
            goto LABEL_33;
          }

LABEL_28:
          (*(v27 + 8))(v8, v5);
          sub_181D9D680(v26, *(&v26 + 1));
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    if (v17 == 2)
    {
      v22 = *(*&v29[0] + 24);
    }

    else if (v17 == 1)
    {
      v22 = *&v29[0] >> 32;
    }

    else
    {
      v22 = BYTE14(v29[0]);
    }

    goto LABEL_31;
  }

  sub_181F3CF20(v29, &v31);
  __swift_project_boxed_opaque_existential_1(&v31, v32);
  sub_182AD1DC8();
  v29[0] = v28;
  __swift_destroy_boxed_opaque_existential_1(&v31);
LABEL_33:
  v24 = *&v29[0];
  sub_181F49B58(*&v29[0], *(&v29[0] + 1));
  (*(v10 + 8))(a1, v9);
  sub_181C1F2E4(*&v29[0], *(&v29[0] + 1));
  return v24;
}

uint64_t nw_storage_copy_shared()
{
  if (qword_1EA836D38 != -1)
  {
    swift_once();
  }
}

uint64_t nw_storage_copy_shared()()
{
  if (qword_1EA836D38 != -1)
  {
    swift_once();
  }
}

uint64_t nw_storage_create_persistent(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_182AD2058();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 56);
  v8(v2, 1, 1, v3, v5);
  sub_182AD1FC8();
  sub_181F49A88(v2, &unk_1EA838BB0);
  (*(v4 + 16))(v2, v7, v3);
  (v8)(v2, 0, 1, v3);
  v9 = sub_18213B688(v2);
  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t nw_storage_create_ephemeral()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_182AD2058();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for NetworkStorage(0);
  v4 = swift_allocObject();
  if (MEMORY[0x1E697BBE0] && MEMORY[0x1E697BBF0] && MEMORY[0x1E697BBC8] && MEMORY[0x1E697BBE8] && MEMORY[0x1E697BBD0] && MEMORY[0x1E697BBD8] && MEMORY[0x1E69E8310] && MEMORY[0x1E69E8308])
  {
    v5 = v4;
    sub_181AB5D28(v2, v4 + OBJC_IVAR____TtC7Network14NetworkStorage_url, &unk_1EA838BB0);
    sub_181F49A88(v2, &unk_1EA838BB0);
    result = v5;
    v7 = v5 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage;
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
  }

  else
  {
    sub_181F49A88(v2, &unk_1EA838BB0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t nw_storage_delete_all_data(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_182AD3548();
  v6 = *(*(v5 - 8) + 56);

  v6(v4, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  sub_181F774B4(0, 0, v4, &unk_182AE8250, v7);
}

uint64_t nw_storage_delete_all_data(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_182AD3548();
  v6 = *(*(v5 - 8) + 56);

  v6(v4, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  sub_181F774B4(0, 0, v4, &unk_182AE8258, v7);
}

uint64_t sub_181F77330()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[3] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7744C, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_181F7744C()
{
  sub_182129BEC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F774B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_181AB5D28(a3, v25 - v10, &unk_1EA839850);
  v12 = sub_182AD3548();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_181F49A88(v11, &unk_1EA839850);
  }

  else
  {
    sub_182AD3538();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_182AD34A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_182AD3048() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_181F49A88(a3, &unk_1EA839850);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_181F49A88(a3, &unk_1EA839850);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t nw_storage_delete_all_data_for_registrable_domain(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;

  v5 = sub_182AD3158();
  v7 = v6;
  v8 = sub_182AD3548();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v5;
  v9[6] = v7;
  sub_181F774B4(0, 0, v4, &unk_182AE8268, v9);
}

uint64_t nw_storage_delete_all_data_for_registrable_domain(_:_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;

  v5 = sub_182AD3158();
  v7 = v6;
  v8 = sub_182AD3548();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v5;
  v9[6] = v7;
  sub_181F774B4(0, 0, v4, &unk_182AE8270, v9);
}

uint64_t sub_181F779F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F77A18, 0, 0);
}

uint64_t sub_181F77A18()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[5] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F77B34, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_181F77B34()
{
  v1 = v0[4];
  v2 = v0[3];
  sub_18212A158(v2, v1);
  sub_18212A558(v2, v1);
  sub_18212A958(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t nw_storage_lookup_http_early_data_state(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_storage_lookup_http_early_data_state(_:_:_:_:_:)(a1, a2, a3, a4, sub_181F7C7CC, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t nw_storage_lookup_http_early_data_state(_:_:_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;

  if (a2)
  {
    a2 = sub_182AD3158();
    v15 = v14;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  nw_endpoint_get_hostname(a3);
  v16 = sub_182AD3158();
  v18 = v17;
  port = nw_endpoint_get_port(a3);
  v20 = sub_182AD3548();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = v15;
  *(v21 + 56) = v16;
  *(v21 + 64) = v18;
  *(v21 + 72) = port;
  v22 = v25;
  *(v21 + 80) = a4;
  *(v21 + 88) = v22;
  *(v21 + 96) = a6;
  swift_unknownObjectRetain();

  sub_181F774B4(0, 0, v13, &unk_182AE8280, v21);
}

uint64_t sub_181F77E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v12;
  *(v8 + 152) = v11;
  *(v8 + 232) = v10;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F77E70, 0, 0);
}

uint64_t sub_181F77E70()
{
  v1 = *(v0 + 112);
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  *(v0 + 176) = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v4 = sub_182AD34A8();
    v6 = v5;
    v7 = sub_181F77F90;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 184) = xmmword_182AE8230;
    v7 = sub_181F78034;
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_181F77F90()
{
  sub_18212DF50(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 232), (v0 + 16));
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  *(v0 + 216) = v1;
  *(v0 + 224) = v2;
  *(v0 + 200) = v4;
  *(v0 + 184) = v5;

  return MEMORY[0x1EEE6DFA0](sub_181F78034, 0, 0);
}

uint64_t sub_181F78034()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  v8 = v0[21];
  v13 = v0[19];
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v1;
  v9[7] = v2;
  v9[8] = v7;
  v9[9] = v8;
  v0[12] = sub_181F7D568;
  v0[13] = v9;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_181B7D048;
  v0[11] = &block_descriptor_129;
  v10 = _Block_copy(v0 + 8);
  sub_181F7D574(v6, v5, v4, v3, v1, v2, sub_181F49B58);

  nw_queue_context_async_if_needed(v13, v10);
  _Block_release(v10);
  sub_181F7D574(v6, v5, v4, v3, v1, v2, sub_181C1F2E4);
  v11 = v0[1];

  return v11();
}

uint64_t sub_181F781D4(uint64_t *a1, uint64_t (*a2)(void *, void *, void *))
{
  v3 = a1[1];
  if (v3 >> 60 == 15)
  {
    return a2(0, 0, 0);
  }

  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[2];
  v7 = a1[3];
  sub_181F49B58(*a1, v3);
  sub_181F49B58(v8, v7);
  sub_181F49B58(v6, v5);
  v10 = sub_182AD2138();
  v12 = NWCreateDispatchDataFromNSData(v10, v11);

  v13 = sub_182AD2138();
  v15 = NWCreateDispatchDataFromNSData(v13, v14);

  v16 = sub_182AD2138();
  v18 = NWCreateDispatchDataFromNSData(v16, v17);

  a2(v12, v15, v18);
  return sub_181F49A88(a1, &unk_1EA838CD0);
}

uint64_t sub_181F78340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F78364, 0, 0);
}

uint64_t sub_181F78364()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[11] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7853C, v5, v4);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D78C;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_123;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F7853C()
{
  *(v0 + 96) = sub_18212E85C();

  return MEMORY[0x1EEE6DFA0](sub_181F785B0, 0, 0);
}

uint64_t sub_181F785B0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D78C;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_123;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

void nw_storage_store_http_early_data_state(uint64_t a1, uint64_t a2, NSObject *a3, void *a4, void *a5, void *a6)
{
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = a5;
  v14 = a6;
  nw_storage_store_http_early_data_state(_:_:_:_:_:_:)(a1, a2, a3, v12, v13, v14);
  swift_unknownObjectRelease();
}

uint64_t nw_storage_store_http_early_data_state(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_182AD2868();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;

  if (a2)
  {
    v15 = sub_182AD3158();
    v35 = v16;
    v36 = v15;
  }

  else
  {
    v35 = 0xE000000000000000;
    v36 = 0;
  }

  nw_endpoint_get_hostname(a3);
  v17 = sub_182AD3158();
  v19 = v18;
  port = nw_endpoint_get_port(a3);
  sub_182AD2818();
  v21 = sub_181F76674(v14);
  v23 = v22;
  sub_182AD2818();
  v24 = sub_181F76674(v14);
  v26 = v25;
  sub_182AD2818();
  v27 = sub_181F76674(v14);
  v29 = v28;
  v30 = sub_182AD3548();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v38;
  *(v31 + 40) = v21;
  *(v31 + 48) = v23;
  *(v31 + 56) = v24;
  *(v31 + 64) = v26;
  *(v31 + 72) = v27;
  v32 = v35;
  v33 = v36;
  *(v31 + 80) = v29;
  *(v31 + 88) = v33;
  *(v31 + 96) = v32;
  *(v31 + 104) = v17;
  *(v31 + 112) = v19;
  *(v31 + 120) = port;
  sub_181F774B4(0, 0, v11, &unk_182AE82B0, v31);
}

uint64_t sub_181F78998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 48) = a8;
  *(v8 + 56) = v10;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_181F789D0, 0, 0);
}

uint64_t sub_181F789D0()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[8] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F78AEC, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_181F78AEC()
{
  sub_18212F1D8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t nw_storage_lookup_dns_cache(uint64_t a1, NSObject *a2, uint64_t a3, const void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = _Block_copy(a4);
  v12 = _Block_copy(v11);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_endpoint_get_hostname(a2);
  v13 = sub_182AD3158();
  v15 = v14;
  port = nw_endpoint_get_port(a2);
  v17 = sub_182AD3548();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a1;
  *(v18 + 40) = v13;
  *(v18 + 48) = v15;
  *(v18 + 56) = port;
  *(v18 + 64) = a3;
  *(v18 + 72) = v12;
  swift_unknownObjectRetain();
  sub_181F774B4(0, 0, v10, &unk_182AE82C0, v18);

  _Block_release(v11);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t nw_storage_lookup_dns_cache(_:_:_:_:)(uint64_t a1, NSObject *a2, uint64_t a3, const void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);

  nw_endpoint_get_hostname(a2);
  v12 = sub_182AD3158();
  v14 = v13;
  LOWORD(a2) = nw_endpoint_get_port(a2);
  v15 = sub_182AD3548();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = v12;
  *(v16 + 48) = v14;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;
  *(v16 + 72) = v11;
  swift_unknownObjectRetain();
  sub_181F774B4(0, 0, v10, &unk_182AE82C8, v16);
}

uint64_t sub_181F78E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 96) = v10;
  *(v8 + 120) = a7;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F78E9C, 0, 0);
}

uint64_t sub_181F78E9C()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[13] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F79074, v5, v4);
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D468;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_117;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F79074()
{
  *(v0 + 112) = sub_182131B94(*(v0 + 72), *(v0 + 80), *(v0 + 120));

  return MEMORY[0x1EEE6DFA0](sub_181F790F0, 0, 0);
}

uint64_t sub_181F790F0()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D468;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_117;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_181F791FC(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = nw_array_create();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 50);
    do
    {
      v9 = *(v5 - 9);
      v10 = *(v5 - 5);
      v11 = *(v5 - 1);
      v12 = *v5;
      v13 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v13 != 2)
        {
          goto LABEL_5;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v14 = v15 - v16;
        if (__OFSUB__(v15, v16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (!v13)
        {
          v14 = BYTE6(v10);
          if (BYTE6(v10) != 16)
          {
            goto LABEL_17;
          }

          goto LABEL_3;
        }

        if (__OFSUB__(HIDWORD(v9), v9))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          sub_182AD1D78();
LABEL_38:
          __break(1u);
LABEL_39:
          sub_182AD1D78();
          __break(1u);
LABEL_40:
          __break(1u);
        }

        v14 = HIDWORD(v9) - v9;
      }

      sub_181F49B58(*(v5 - 9), *(v5 - 5));
      if (v14 != 16)
      {
LABEL_17:
        if (v14 != 4)
        {
          goto LABEL_5;
        }

        if (v13 != 2)
        {
          if (v13 == 1)
          {
            if (v9 > v9 >> 32)
            {
              goto LABEL_34;
            }

            v17 = sub_182AD1D58();
            if (!v17)
            {
              goto LABEL_39;
            }

            v18 = v17;
            v19 = sub_182AD1D88();
            if (__OFSUB__(v9, v19))
            {
              goto LABEL_36;
            }

            v20 = (v9 - v19 + v18);
            sub_182AD1D78();
            if (!v20)
            {
              goto LABEL_40;
            }

LABEL_28:
            v25 = *v20;
          }

          else
          {
            v25 = v9;
          }

          *&address.sa_len = 528;
          *address.sa_data = __rev16(v11);
          *&address.sa_data[2] = v25;
          *&address.sa_data[6] = 0;
          goto LABEL_4;
        }

        v21 = *(v9 + 16);
        v22 = sub_182AD1D58();
        if (!v22)
        {
          goto LABEL_37;
        }

        v23 = v22;
        v24 = sub_182AD1D88();
        if (__OFSUB__(v21, v24))
        {
          goto LABEL_35;
        }

        v20 = (v21 - v24 + v23);
        sub_182AD1D78();
        if (!v20)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }

LABEL_3:
      v31 = 0;
      v32 = 0;
      *&address.sa_len = v9;
      *&address.sa_data[6] = v10;
      sub_181F49B58(v9, v10);
      sub_181F7D470();
      sub_182AD1CE8();
      sub_181C1F2E4(*&address.sa_len, *&address.sa_data[6]);
      *&address.sa_len = 7708;
      *address.sa_data = __rev16(v11);
      *&address.sa_data[2] = 0;
      *&address.sa_data[6] = v31;
      v29 = v32;
      v30 = 0;
LABEL_4:
      v6 = nw_endpoint_create_address(&address);
      v7 = swift_unknownObjectRetain();
      nw_endpoint_set_priority(v7, v12);
      v8 = swift_unknownObjectRetain();
      nw_array_append(v8, v6);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
LABEL_5:
      v5 += 12;
      sub_181C1F2E4(v9, v10);
      --v4;
    }

    while (v4);
  }

  (*(a2 + 16))(a2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_181F794EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F79510, 0, 0);
}

uint64_t sub_181F79510()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[11] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F796E8, v5, v4);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D78C;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_111;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F796E8()
{
  *(v0 + 96) = sub_182132400();

  return MEMORY[0x1EEE6DFA0](sub_181F7975C, 0, 0);
}

uint64_t sub_181F7975C()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D78C;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_111;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t nw_storage_store_dns_cache(uint64_t a1, NSObject *a2, void *a3)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_storage_store_dns_cache(_:_:_:)(a1, a2, a3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t nw_storage_store_dns_cache(_:_:_:)(uint64_t a1, NSObject *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;

  nw_endpoint_get_hostname(a2);
  v21 = sub_182AD3158();
  v10 = v9;
  port = nw_endpoint_get_port(a2);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = swift_allocObject();
  *(v13 + 16) = v12 + 16;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_181F7CCC4;
  *(v14 + 24) = v13;
  aBlock[4] = sub_181F7CCCC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181F79D48;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);

  nw_array_apply(a3, v15);
  _Block_release(v15);
  v16 = sub_182AD3548();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = v21;
  *(v17 + 32) = a1;
  *(v17 + 40) = v18;
  *(v17 + 48) = v10;
  *(v17 + 56) = port;
  *(v17 + 64) = v12;

  sub_181F774B4(0, 0, v8, &unk_182AE82F0, v17);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181F79B84(uint64_t a1, NSObject *a2, char **a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v22 = 0;
  swift_unknownObjectRetain();
  nw_endpoint_fillout_v4v6_address(a2, &v20);
  if (BYTE1(v20) == 30)
  {
    v18[0] = v21;
    v18[1] = v22;
    v5 = &v19;
  }

  else
  {
    if (BYTE1(v20) != 2)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    LODWORD(v18[0]) = HIDWORD(v20);
    v5 = v18 + 4;
  }

  v6 = sub_181C1F228(v18, v5);
  v8 = v7;
  port = nw_endpoint_get_port(a2);
  priority = nw_endpoint_get_priority(a2);
  v11 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_181F5A1B0(0, *(v11 + 2) + 1, 1, v11);
    *a3 = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    *a3 = sub_181F5A1B0((v13 > 1), v14 + 1, 1, v11);
  }

  swift_unknownObjectRelease();
  v15 = *a3;
  *(v15 + 2) = v14 + 1;
  v16 = &v15[24 * v14];
  *(v16 + 4) = v6;
  *(v16 + 5) = v8;
  *(v16 + 24) = port;
  *(v16 + 25) = priority;
  return 1;
}

uint64_t sub_181F79D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_181F79DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 72) = a6;
  *(v8 + 80) = a8;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_181F79DC8, 0, 0);
}

uint64_t sub_181F79DC8()
{
  v1 = v0[10];
  v2 = v0[7];
  swift_beginAccess();
  v0[11] = *(v1 + 16);
  v3 = (v2 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);

  os_unfair_lock_lock(v3);
  v4 = sub_182128038(&v3[2], v2);
  v0[12] = v4;
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    v0[13] = type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v6 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F79F24, v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_181F79F24()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  *(v0 + 40) = *(v0 + 64);
  *(v0 + 48) = v2;
  v3 = *(v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v4 = sub_182AD3238();
  v6 = v5;
  type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal(0);
  swift_allocObject();

  sub_18213B7E4(v4, v6, v3, v1);

  sub_181F7D4E0(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  sub_181F7D4E0(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2C48();

  sub_18212B0D8();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t nw_storage_lookup_alt_svc(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_storage_lookup_alt_svc(_:_:_:_:_:)(a1, a2, a3, a4, v9);
  _Block_release(v9);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t nw_storage_lookup_alt_svc(_:_:_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, const void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = _Block_copy(a5);

  if (a2)
  {
    a2 = sub_182AD3158();
    v15 = v14;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  nw_endpoint_get_hostname(a3);
  v16 = sub_182AD3158();
  v18 = v17;
  port = nw_endpoint_get_port(a3);
  v20 = sub_182AD3548();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = v15;
  *(v21 + 56) = v16;
  *(v21 + 64) = v18;
  *(v21 + 72) = port;
  *(v21 + 80) = a4;
  *(v21 + 88) = v13;
  swift_unknownObjectRetain();
  sub_181F774B4(0, 0, v12, &unk_182AE8300, v21);
}

uint64_t sub_181F7A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v11;
  *(v8 + 112) = v12;
  *(v8 + 136) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F7A374, 0, 0);
}

uint64_t sub_181F7A374()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[15] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7A54C, v5, v4);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D40C;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_105;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F7A54C()
{
  *(v0 + 128) = sub_182135C08(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 136));

  return MEMORY[0x1EEE6DFA0](sub_181F7A5CC, 0, 0);
}

uint64_t sub_181F7A5CC()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D40C;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_105;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_181F7A6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    v20[1] = a2 + 16;
    v21 = v10;
    while (1)
    {
      v11 = sub_181F7CFF0(v9, v7);
      v12 = &v7[v4[9]];
      v14 = *v12;
      v13 = *(v12 + 1);
      MEMORY[0x1EEE9AC00](v11);
      v20[-2] = v7;
      if ((v13 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v13 & 0x2000000000000000) != 0)
      {
        v22[0] = v14;
        v22[1] = v13 & 0xFFFFFFFFFFFFFFLL;
        v15 = *&v7[v4[10]];
        v16 = v22;
      }

      else
      {
        if ((v14 & 0x1000000000000000) == 0)
        {
          break;
        }

        v15 = *&v7[v4[10]];
        v16 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v16, v15);
LABEL_9:
      v18 = v7[v4[6]];
      sub_182AD21A8();
      (*(a2 + 16))(a2, v18, host_with_numeric_port);
      swift_unknownObjectRelease();
      sub_181F7D1B0(v7);
      v9 += v21;
      if (!--v8)
      {
        return (*(a2 + 16))(a2, 0, 0, 0.0);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838CA8);
    sub_182AD3B78();
    host_with_numeric_port = v22[0];
    goto LABEL_9;
  }

  return (*(a2 + 16))(a2, 0, 0, 0.0);
}

uint64_t nw_storage_lookup_all_origins_with_http_early_data_stateTm(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a3);
  v13 = _Block_copy(v12);
  v14 = sub_182AD3548();
  v15 = *(*(v14 - 8) + 56);

  v15(v11, 1, 1, v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v13;
  swift_unknownObjectRetain_n();
  sub_181F774B4(0, 0, v11, a5, v16);

  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_181F7AA88(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(a3);
  v13 = sub_182AD3548();
  v14 = *(*(v13 - 8) + 56);

  v14(v11, 1, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v12;
  swift_unknownObjectRetain();
  sub_181F774B4(0, 0, v11, a5, v15);
}

uint64_t sub_181F7ABC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F7ABE8, 0, 0);
}

uint64_t sub_181F7ABE8()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[11] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7ADC0, v5, v4);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D3F0;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_99;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F7ADC0()
{
  *(v0 + 96) = sub_18213662C();

  return MEMORY[0x1EEE6DFA0](sub_181F7AE34, 0, 0);
}

uint64_t sub_181F7AE34()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D3F0;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_99;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_181F7AF40(uint64_t a1, uint64_t a2)
{
  v4 = nw_array_create();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v6 += 12;
      v8 = sub_182AD3048();
      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port((v8 + 32), v7);

      nw_array_append(v4, host_with_numeric_port);
      swift_unknownObjectRelease();
      --v5;
    }

    while (v5);
  }

  (*(a2 + 16))(a2, v4);

  return swift_unknownObjectRelease();
}

uint64_t nw_storage_store_alt_svc(uint64_t a1, uint64_t a2, NSObject *a3, int a4, NSObject *a5)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_storage_store_alt_svc(_:_:_:_:_:_:)(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t nw_storage_store_alt_svc(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3, int a4, NSObject *a5)
{
  v43 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v39 - v10;
  v11 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  v42 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v44 = v12;
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v48 = sub_182AD21E8();
  v16 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;

  if (a2)
  {
    v19 = sub_182AD3158();
    v40 = v20;
    v41 = v19;
  }

  else
  {
    v40 = 0xE000000000000000;
    v41 = 0;
  }

  nw_endpoint_get_hostname(a3);
  v21 = sub_182AD3158();
  v23 = v22;
  port = nw_endpoint_get_port(a3);
  nw_endpoint_get_hostname(a5);
  v25 = sub_182AD3158();
  v27 = v26;
  v28 = nw_endpoint_get_port(a5);
  sub_182AD2198();
  (*(v16 + 16))(v15, v18, v48);
  v29 = &v15[v11[5]];
  v30 = v40;
  *v29 = v41;
  *(v29 + 1) = v30;
  v15[v11[6]] = v43;
  v31 = &v15[v11[7]];
  *v31 = v21;
  v31[1] = v23;
  *&v15[v11[8]] = port;
  v32 = &v15[v11[9]];
  *v32 = v25;
  v32[1] = v27;
  *&v15[v11[10]] = v28;
  v33 = sub_182AD3548();
  v34 = v46;
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  v35 = v45;
  sub_181F7CFF0(v15, v45);
  v36 = (*(v42 + 80) + 40) & ~*(v42 + 80);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v47;
  sub_181F7D054(v35, v37 + v36);

  sub_181F774B4(0, 0, v34, &unk_182AE8328, v37);

  sub_181F7D1B0(v15);
  return (*(v16 + 8))(v18, v48);
}

uint64_t sub_181F7B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_181F54964;

  return sub_182127470(a5);
}

uint64_t nw_storage_delete_alt_svc(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;

  swift_unknownObjectRetain();
  if (a2)
  {
    a2 = sub_182AD3158();
    v10 = v9;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  nw_endpoint_get_hostname(a3);
  v11 = sub_182AD3158();
  v13 = v12;
  port = nw_endpoint_get_port(a3);
  v15 = sub_182AD3548();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = v10;
  *(v16 + 56) = v11;
  *(v16 + 64) = v13;
  *(v16 + 72) = port;
  sub_181F774B4(0, 0, v8, &unk_182AE8338, v16);
  swift_unknownObjectRelease();
}

uint64_t nw_storage_delete_alt_svc(_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;

  if (a2)
  {
    a2 = sub_182AD3158();
    v10 = v9;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  nw_endpoint_get_hostname(a3);
  v11 = sub_182AD3158();
  v13 = v12;
  port = nw_endpoint_get_port(a3);
  v15 = sub_182AD3548();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = v10;
  *(v16 + 56) = v11;
  *(v16 + 64) = v13;
  *(v16 + 72) = port;
  sub_181F774B4(0, 0, v8, &unk_182AE8340, v16);
}

uint64_t sub_181F7B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F7B7E0, 0, 0);
}

uint64_t sub_181F7B7E0()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[7] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7B8FC, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_181F7B8FC()
{
  sub_182136FA8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F7B970(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181EA9B98;

  return v6(a1);
}

uint64_t sub_181F7BA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_182AD2868();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838CC8) + 48);
    (*(v7 + 16))(v9, a2, v6);
    sub_181F7D4E0(&qword_1EA836420, MEMORY[0x1E69E7FD0]);
    result = sub_182AD3278();
    *(a3 + v10) = result;
  }

  else
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838CC8) + 48);
    (*(v7 + 16))(v9, a2, v6);
    sub_181F7D4E0(&qword_1EA836420, MEMORY[0x1E69E7FD0]);
    result = sub_182AD3278();
    *(a3 + v12) = result;
  }

  return result;
}

char *sub_181F7BC4C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_181C1F2E4(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_181C1F2E4(v6, v5);
    *v3 = xmmword_182AE7580;
    sub_181C1F2E4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_182AD1D58() && __OFSUB__(v6, sub_182AD1D88()))
      {
LABEL_26:
        __break(1u);
      }

      sub_182AD1DB8();
      swift_allocObject();
      v13 = sub_182AD1D38();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_181F7C3E8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_181C1F2E4(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_182AE7580;
    sub_181C1F2E4(0, 0xC000000000000000);
    sub_182AD2068();
    result = sub_181F7C3E8(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

uint64_t sub_181F7BFF0(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_181C1F2E4(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_182AE7580;
      sub_181C1F2E4(0, 0xC000000000000000);
      result = sub_181F7C30C(a1);
      v8 = v21;
      v9 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_181C1F2E4(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      result = (a1)(&v21, &v21 + BYTE6(v4));
      v8 = v21;
      v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    return result;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    return (a1)(&v21, &v21);
  }

  sub_181C1F2E4(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_182AE7580;
  sub_181C1F2E4(0, 0xC000000000000000);
  sub_182AD2068();
  v10 = *(&v21 + 1);
  v11 = *(v21 + 16);
  v12 = *(v21 + 24);
  result = sub_182AD1D58();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_182AD1D88();
  v15 = v11 - v14;
  if (__OFSUB__(v11, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v12, v11);
  v17 = v12 - v11;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = sub_182AD1D78();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  result = (a1)(v13 + v15, v13 + v15 + v19);
  *v2 = v21;
  v2[1] = v10 | 0x8000000000000000;
  return result;
}

void *sub_181F7C2A0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181F7C30C(void (*a1)(uint64_t, uint64_t))
{
  result = sub_182AD2098();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_182AD1D58();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_182AD1D88();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_182AD1D78();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

char *sub_181F7C3E8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_182AD1D58();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_182AD1D88();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_182AD1D78();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_181F7C49C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_182AD3BB8();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_181F7C4EC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
  v10 = sub_181AB3DCC(&qword_1EA838C88, &qword_1EA838C80);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_181FAA294(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_181F7C5C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_181F77310(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F7C6BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F779F4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_8Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F7C7E8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_181F77E2C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_181F7C8F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F78340(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_181F7C9BC(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F78998(a1, v11, v4, v5, (v1 + 5), v6, v7, v8);
}

uint64_t sub_181F7CAB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_181F78E68(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t objectdestroy_37Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  _Block_release(*(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_181F7CBFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F794EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_181F7CCF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_181F79DA0(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_181F7CDD8(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F7A338(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_181F7CED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F7ABC4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  _Block_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_181F7CFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_181F7D054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_181F7D0B8(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkStorage.AltSvcEntry(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F54964;

  return sub_181F7B428(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_181F7D1B0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181F7D20C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_181F7B7AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_64Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 64));

  return swift_deallocObject();
}

void *sub_181F7D368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_181F7C2A0(sub_181F7D3D0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_181F7D414@<X0>(const char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  result = nw_endpoint_create_host_with_numeric_port(a1, *(v5 + *(v6 + 40)));
  *a2 = result;
  return result;
}

unint64_t sub_181F7D470()
{
  result = qword_1EA838CC0;
  if (!qword_1EA838CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838CC0);
  }

  return result;
}

uint64_t sub_181F7D4E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_95Tm()
{

  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

void sub_181F7D574(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (a2 >> 60 != 15)
  {
    a7();
    (a7)(a3, a4);

    (a7)(a5, a6);
  }
}

uint64_t sub_181F7D604(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_181F5EB68;

  return sub_181F7B970(a1, v4);
}

uint64_t sub_181F7D6BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_181F54964;

  return sub_181F7B970(a1, v4);
}

uint64_t sub_181F7D7A8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = -1;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2 & 1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4 & 1;
  if (a2)
  {
    v7 = 1564760864;
    v8 = 0xE400000000000000;
  }

  else
  {
    MEMORY[0x1865D9CA0](4479776, 0xE300000000000000);
    sub_181F7D8D8();
    v9 = sub_182AD3A88();
    MEMORY[0x1865D9CA0](v9);

    v7 = 93;
    v8 = 0xE100000000000000;
  }

  MEMORY[0x1865D9CA0](v7, v8);
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t sub_181F7D87C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_181F7D8D8()
{
  result = qword_1EA839BE0;
  if (!qword_1EA839BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839BE0);
  }

  return result;
}

unint64_t sub_181F7D92C(unint64_t a1)
{
  if ((a1 & 3) == 0)
  {
    return a1 >> 2;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v2 = sub_182AD2698();
  __swift_project_value_buffer(v2, qword_1EA843418);
  v3 = sub_182AD2678();
  v4 = sub_182AD38B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_181A37000, v3, v4, "Cannot create DATAGRAM flow ID with associated stream ID %llu", v5, 0xCu);
    MEMORY[0x1865DF520](v5, -1, -1);
  }

  return 0;
}

uint64_t sub_181F7DA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_181F7DAF8();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

unint64_t sub_181F7DAA4()
{
  result = qword_1EA838CE0;
  if (!qword_1EA838CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838CE0);
  }

  return result;
}

unint64_t sub_181F7DAF8()
{
  result = qword_1EA838CE8;
  if (!qword_1EA838CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838CE8);
  }

  return result;
}

unint64_t sub_181F7DB4C()
{
  result = qword_1EA838CF0;
  if (!qword_1EA838CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838CF0);
  }

  return result;
}

uint64_t sub_181F7DBA0()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA843118);
  __swift_project_value_buffer(v0, qword_1EA843118);
  return sub_182AD2688();
}

uint64_t sub_181F7DC14()
{
  sub_182AD1F28();
  swift_getKeyPath();

  sub_182AD1F38();

  swift_getKeyPath();

  sub_182AD1F38();

  swift_getKeyPath();

  sub_182AD1F38();

  swift_getKeyPath();

  sub_182AD1F38();

  swift_getKeyPath();

  sub_182AD1F38();
}

uint64_t sub_181F7DD70()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_181F7DDA0()
{
  v1 = *(v0 + 32);

  return v1;
}

char *filterEndpoints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_unknownObjectRetain();
  v6 = sub_181F7DE40(v5, a2, a3);
  swift_unknownObjectRelease();

  return v6;
}

char *sub_181F7DE40(char *a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v72 = sub_182AD1F48();
  v5 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v73 = v65 - v16;
  v17 = sub_182AD2088();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v20, *MEMORY[0x1E6969010], v18);
  v22 = sub_181F7EFE8(a2, a3, v20);
  v24 = v23;
  sub_181F7DC14();
  sub_182AD1C48();
  swift_allocObject();
  sub_182AD1C38();
  sub_181F7F268(&qword_1EA836670);
  sub_182AD1C08();
  v70 = v14;
  v71 = v22;
  (*(v5 + 8))(v7, v72);

  (*(v12 + 56))(v10, 0, 1, v11);
  v25 = v73;
  (*(v12 + 32))(v73, v10, v11);
  p_aBlock = v12;
  v27 = v25;
  v28 = v11;
  if (qword_1EA836630 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v29 = sub_182AD2698();
    v30 = __swift_project_value_buffer(v29, qword_1EA843118);
    v31 = v70;
    p_aBlock[2](v70, v27, v28);
    v72 = v30;
    v32 = sub_182AD2678();
    v33 = sub_182AD3898();
    v34 = os_log_type_enabled(v32, v33);
    v66 = v24;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&aBlock = v36;
      *v35 = 136315138;
      sub_181F7F268(&unk_1EA836650);
      v37 = sub_182AD41B8();
      v39 = v38;
      v65[0] = p_aBlock[1];
      (v65[0])(v31, v28);
      v40 = sub_181C64FFC(v37, v39, &aBlock);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_181A37000, v32, v33, "Found predicate: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1865DF520](v36, -1, -1);
      MEMORY[0x1865DF520](v35, -1, -1);
    }

    else
    {

      v65[0] = p_aBlock[1];
      (v65[0])(v31, v28);
    }

    v41 = v71;
    v70 = v28;
    v67 = p_aBlock;
    v79 = MEMORY[0x1E69E7CC0];
    v42 = swift_allocObject();
    *(v42 + 16) = &v79;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F7F220;
    *(v43 + 24) = v42;
    v65[1] = v42;
    *v78 = sub_181F7F228;
    *&v78[8] = v43;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v77 = sub_181F79D48;
    *(&v77 + 1) = &block_descriptor_2;
    v44 = _Block_copy(&aBlock);

    v45 = v69;
    nw_array_apply(v69, v44);
    _Block_release(v44);
    count = nw_array_get_count(v45);
    v24 = sub_182AD2678();
    v47 = sub_182AD38A8();
    if (os_log_type_enabled(v24, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = count;
      _os_log_impl(&dword_181A37000, v24, v47, "Original endpoint count: %ld", v48, 0xCu);
      MEMORY[0x1865DF520](v48, -1, -1);
    }

    v28 = nw_array_create();
    v27 = v79;
    v49 = *(v79 + 2);

    if (!v49)
    {
      break;
    }

    v51 = 0;
    p_aBlock = &aBlock;
    v52 = 32;
    *&v50 = 134217984;
    v68 = v50;
    while (v51 < *(v27 + 2))
    {
      v53 = *&v27[v52];
      v54 = *&v27[v52 + 16];
      v55 = *&v27[v52 + 32];
      *&v78[13] = *&v27[v52 + 45];
      *v78 = v55;
      aBlock = v53;
      v77 = v54;
      v75[3] = &type metadata for AgentEndpoint;
      v75[4] = &off_1EEF9C488;
      v75[0] = swift_allocObject();
      memmove((v75[0] + 16), &v27[v52], 0x35uLL);
      v75[5] = v75;
      sub_181F7F230(&aBlock, v74);
      v56 = sub_182AD2278();
      __swift_destroy_boxed_opaque_existential_1(v75);
      v57 = sub_182AD2678();
      v24 = sub_182AD38A8();
      v58 = os_log_type_enabled(v57, v24);
      if (v56)
      {
        if (v58)
        {
          v59 = swift_slowAlloc();
          *v59 = v68;
          *(v59 + 4) = v51;
          _os_log_impl(&dword_181A37000, v57, v24, "Endpoint at index %ld DID match predicate, keeping endpoint", v59, 0xCu);
          MEMORY[0x1865DF520](v59, -1, -1);
        }

        v24 = nw_array_get_object_at_index(v69, v51);
        nw_array_append(v28, v24);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v58)
        {
          v60 = swift_slowAlloc();
          *v60 = v68;
          *(v60 + 4) = v51;
          _os_log_impl(&dword_181A37000, v57, v24, "Endpoint at index %ld did NOT match predicate, filtering out endpoint", v60, 0xCu);
          MEMORY[0x1865DF520](v60, -1, -1);
        }
      }

      v41 = v71;
      ++v51;
      v52 += 56;
      if (v49 == v51)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_18:

  swift_unknownObjectRetain();
  v61 = sub_182AD2678();
  v62 = sub_182AD3898();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    *(v63 + 4) = nw_array_get_count(v28);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_181A37000, v61, v62, "Filtered endpoint count: %ld", v63, 0xCu);
    MEMORY[0x1865DF520](v63, -1, -1);
    sub_181C1F2E4(v41, v66);
  }

  else
  {
    sub_181C1F2E4(v41, v66);

    swift_unknownObjectRelease();
  }

  (v65[0])(v73, v70);

  return v28;
}

uint64_t sub_181F7EA48(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    sub_181F7EE14(v5, v15);
    swift_unknownObjectRelease();
    v6 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_181F5A2F4(0, *(v6 + 2) + 1, 1, v6);
      *a3 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_181F5A2F4((v8 > 1), v9 + 1, 1, v6);
      *a3 = v6;
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[56 * v9];
    v11 = v15[0];
    v12 = v15[1];
    v13 = *v16;
    *(v10 + 77) = *&v16[13];
    *(v10 + 3) = v12;
    *(v10 + 4) = v13;
    *(v10 + 2) = v11;
  }

  return 1;
}

_BYTE **sub_181F7EB54(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_181F7EB8C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_181C64FFC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_181F7EBE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1822B094C(a1, a2);
  sub_181F7EC34(&unk_1EEF96B88);
  return v3;
}

uint64_t sub_181F7EC34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_181F7ED20(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_181F7ED20(char *result, int64_t a2, char a3, char *a4)
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

uint64_t sub_181F7EE14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (nw_endpoint_get_device_name(a1))
  {
    result = nw_endpoint_get_device_name(a1);
    if (!result)
    {
      __break(1u);
      goto LABEL_15;
    }

    v5 = sub_182AD3158();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  if (!nw_endpoint_get_device_id(a1))
  {
    v8 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_9;
  }

  result = nw_endpoint_get_device_id(a1);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = sub_182AD3158();
  v10 = v9;
LABEL_9:
  if (!nw_endpoint_get_device_model(a1))
  {
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_13;
  }

  result = nw_endpoint_get_device_model(a1);
  if (result)
  {
    v11 = sub_182AD3158();
    v13 = v12;
LABEL_13:
    result = nw_endpoint_get_device_color(a1);
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v13;
    *(a2 + 48) = result;
    *(a2 + 52) = 0;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_181F7EF04(uint64_t result, uint64_t a2)
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

    sub_182AD20C8();
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

  v3 = sub_182AD1D58();
  if (v3)
  {
    result = sub_182AD1D88();
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
  v4 = sub_182AD1D78();
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

  v8 = sub_181E68460(v3, v7);

  return v8;
}