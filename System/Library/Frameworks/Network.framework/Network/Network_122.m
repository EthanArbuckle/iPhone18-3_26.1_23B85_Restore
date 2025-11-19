uint64_t ProxyConfiguration.matchDomains.setter(uint64_t a1)
{
  sub_182291F2C(a1, nw_proxy_config_clear_match_domains, nw_proxy_config_add_match_domain);
}

void (*ProxyConfiguration.matchDomains.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *v1;
  *(v3 + 56) = MEMORY[0x1E69E7CC0];
  v6 = (v3 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_182292824;
  *(v8 + 24) = v7;
  v4[4] = sub_182292820;
  v4[5] = v8;
  *v4 = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1822902F0;
  v4[3] = &block_descriptor_72_2;
  v9 = _Block_copy(v4);
  swift_unknownObjectRetain();

  nw_proxy_config_enumerate_match_domains(v5, v9);
  swift_unknownObjectRelease();
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = *v6;

    v4[6] = v11;
    return sub_1822904D4;
  }

  return result;
}

uint64_t ProxyConfiguration.excludedDomains.getter()
{
  v1 = *v0;
  v8 = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_182292824;
  *(v3 + 24) = v2;
  aBlock[4] = sub_182292820;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822902F0;
  aBlock[3] = &block_descriptor_82_1;
  v4 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  nw_proxy_config_enumerate_match_domains(v1, v4);
  swift_unknownObjectRelease();
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t ProxyConfiguration.excludedDomains.setter(uint64_t a1)
{
  sub_182291F2C(a1, nw_proxy_config_clear_excluded_domains, nw_proxy_config_add_excluded_domain);
}

uint64_t sub_1822906D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_182AD3158();
  v5 = v4;
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if ((result & 1) == 0)
  {
    result = sub_181E59474(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
    *a2 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_181E59474((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
    *a2 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 16 * v9;
  *(v10 + 32) = v3;
  *(v10 + 40) = v5;
  return result;
}

void (*ProxyConfiguration.excludedDomains.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = *v1;
  *(v3 + 56) = MEMORY[0x1E69E7CC0];
  v6 = (v3 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_182292824;
  *(v8 + 24) = v7;
  v4[4] = sub_182292820;
  v4[5] = v8;
  *v4 = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1822902F0;
  v4[3] = &block_descriptor_94;
  v9 = _Block_copy(v4);
  swift_unknownObjectRetain();

  nw_proxy_config_enumerate_match_domains(v5, v9);
  swift_unknownObjectRelease();
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = *v6;

    v4[6] = v11;
    return sub_18229093C;
  }

  return result;
}

void sub_182290968(uint64_t a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  if (a2)
  {

    sub_182291F2C(v8, a3, a4);
  }

  else
  {
    sub_182291F2C(v7, a3, a4);
  }

  free(v6);
}

Swift::Void __swiftcall ProxyConfiguration.applyCredential(username:password:)(Swift::String username, Swift::String password)
{
  v2 = sub_182AD3048();
  v3 = sub_182AD3048();
  v4 = swift_unknownObjectRetain();
  nw_proxy_config_set_username_and_password(v4, (v2 + 32), (v3 + 32));
  swift_unknownObjectRelease();
}

NSObject *ProxyConfiguration.init(socksv5Proxy:)@<X0>(uint64_t a1@<X0>, nw_proxy_config_t *a2@<X8>)
{
  result = NWEndpoint.nw.getter();
  if (result)
  {
    socksv5 = nw_proxy_config_create_socksv5(result);
    swift_unknownObjectRelease();
    result = sub_181D8E4A8(a1, type metadata accessor for NWEndpoint);
    *a2 = socksv5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ProxyConfiguration.init(httpCONNECTProxy:tlsOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, nw_proxy_config_t *a3@<X8>)
{
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v7 = result;
    if (a2)
    {
      v8 = *(a2 + 16);
      swift_unknownObjectRetain();
    }

    else
    {
      v8 = 0;
    }

    http_connect = nw_proxy_config_create_http_connect(v7, v8);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = sub_181D8E4A8(a1, type metadata accessor for NWEndpoint);
    *a3 = http_connect;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ProxyConfiguration.RelayHop.init(http3RelayEndpoint:http2RelayEndpoint:tlsOptions:additionalHTTPHeaderFields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject **a5@<X8>)
{
  v28 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v27 = a1;
  v12 = NWEndpoint.nw.getter();
  v26 = a2;
  sub_181AB5D28(a2, v11, &qword_1EA839360);
  v13 = type metadata accessor for NWEndpoint();
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839360);
    v14 = 0;
  }

  else
  {
    v14 = NWEndpoint.nw.getter();
    sub_181D8E4A8(v11, type metadata accessor for NWEndpoint);
  }

  v15 = nw_relay_hop_create(v12, v14, *(a3 + 16));
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v17 = 0;
  v18 = 1 << *(a4 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a4 + 64);
  v21 = (v18 + 63) >> 6;
  if (v20)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      sub_181F49A88(v26, &qword_1EA839360);
      result = sub_181D8E4A8(v27, type metadata accessor for NWEndpoint);
      *v28 = v15;
      return result;
    }

    v20 = *(a4 + 64 + 8 * v22);
    ++v17;
    if (v20)
    {
      v17 = v22;
      do
      {
LABEL_12:
        v20 &= v20 - 1;
        v23 = sub_182AD3048();
        v24 = sub_182AD3048();
        nw_relay_hop_add_additional_http_header_field(v15, (v23 + 32), (v24 + 32));
      }

      while (v20);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t ProxyConfiguration.RelayHop.init(http2RelayEndpoint:tlsOptions:additionalHTTPHeaderFields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v6 = NWEndpoint.nw.getter();
  v7 = nw_relay_hop_create(0, v6, *(a2 + 16));
  result = swift_unknownObjectRelease();
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      result = sub_181D8E4A8(a1, type metadata accessor for NWEndpoint);
      *a4 = v7;
      return result;
    }

    v12 = *(a3 + 64 + 8 * v14);
    ++v9;
    if (v12)
    {
      v9 = v14;
      do
      {
LABEL_9:
        v12 &= v12 - 1;
        v15 = sub_182AD3048();
        v16 = sub_182AD3048();
        nw_relay_hop_add_additional_http_header_field(v7, (v15 + 32), (v16 + 32));
      }

      while (v12);
      continue;
    }
  }

  __break(1u);
  return result;
}

void *ProxyConfiguration.init(relayHops:)@<X0>(void *result@<X0>, nw_proxy_config_t *a2@<X8>)
{
  v3 = result[2];
  if (v3 == 1)
  {
    v4 = result[4];
    swift_unknownObjectRetain();

    relay = nw_proxy_config_create_relay(v4, 0);
LABEL_5:
    result = swift_unknownObjectRelease();
    *a2 = relay;
    return result;
  }

  if (v3 == 2)
  {
    v6 = result[4];
    v7 = result[5];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    relay = nw_proxy_config_create_relay(v6, v7);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t ProxyConfiguration.init(obliviousHTTPRelay:relayResourcePath:gatewayKeyConfig:matchDomains:)@<X0>(NSObject **a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X5>, NSObject **a5@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v10)
    {
      *gateway_key_config = a2;
      *&gateway_key_config[8] = a3;
      gateway_key_config[10] = BYTE2(a3);
      gateway_key_config[11] = BYTE3(a3);
      gateway_key_config[12] = BYTE4(a3);
      gateway_key_config[13] = BYTE5(a3);
      v11 = sub_182AD3048();
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      oblivious_http = nw_proxy_config_create_oblivious_http(v9, (v11 + 32), gateway_key_config, BYTE6(a3));

      v13 = *(a4 + 16);
      if (v13)
      {
        v14 = a4 + 40;
        do
        {
          v15 = sub_182AD3048();
          nw_proxy_config_add_match_domain(oblivious_http, (v15 + 32));

          v14 += 16;
          --v13;
        }

        while (v13);
      }

LABEL_34:
      sub_181C1F2E4(a2, a3);

      swift_unknownObjectRelease_n();
LABEL_35:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      result = swift_unknownObjectRelease();
      *a5 = oblivious_http;
      return result;
    }

    v43 = a5;
    v28 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v29 = sub_182AD1D58();
      if (!v29)
      {
        result = sub_182AD1D78();
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v30 = v29;
      v31 = sub_182AD1D88();
      if (!__OFSUB__(a2, v31))
      {
        v32 = (a2 - v31 + v30);
        result = sub_182AD1D78();
        if (v32)
        {
          if (result >= v28)
          {
            v33 = (a2 >> 32) - a2;
          }

          else
          {
            v33 = result;
          }

          v34 = sub_182AD3048();
          oblivious_http = nw_proxy_config_create_oblivious_http(v9, (v34 + 32), v32, v33);

          v35 = *(a4 + 16);
          if (v35)
          {
            v36 = a4 + 40;
            do
            {
              v37 = sub_182AD3048();
              nw_proxy_config_add_match_domain(oblivious_http, (v37 + 32));

              v36 += 16;
              --v35;
            }

            while (v35);
          }

          sub_181C1F2E4(a2, a3);

          swift_unknownObjectRelease_n();
          a5 = v43;
          goto LABEL_35;
        }

        goto LABEL_41;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  if (v10 != 2)
  {
    memset(gateway_key_config, 0, 14);
    v38 = sub_182AD3048();
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    oblivious_http = nw_proxy_config_create_oblivious_http(v9, (v38 + 32), gateway_key_config, 0);

    v39 = *(a4 + 16);
    if (v39)
    {
      v40 = a4 + 40;
      do
      {
        v41 = sub_182AD3048();
        nw_proxy_config_add_match_domain(oblivious_http, (v41 + 32));

        v40 += 16;
        --v39;
      }

      while (v39);
    }

    goto LABEL_34;
  }

  v42 = a5;
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v18 = sub_182AD1D58();
  if (v18)
  {
    v19 = sub_182AD1D88();
    if (__OFSUB__(v17, v19))
    {
      goto LABEL_39;
    }

    v18 += v17 - v19;
  }

  v20 = __OFSUB__(v16, v17);
  v21 = v16 - v17;
  if (v20)
  {
    goto LABEL_37;
  }

  result = sub_182AD1D78();
  if (v18)
  {
    if (result >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = result;
    }

    v24 = sub_182AD3048();
    oblivious_http = nw_proxy_config_create_oblivious_http(v9, (v24 + 32), v18, v23);

    v25 = *(a4 + 16);
    a5 = v42;
    if (v25)
    {
      v26 = a4 + 40;
      do
      {
        v27 = sub_182AD3048();
        nw_proxy_config_add_match_domain(oblivious_http, (v27 + 32));

        v26 += 16;
        --v25;
      }

      while (v25);
    }

    goto LABEL_34;
  }

LABEL_42:
  __break(1u);
  return result;
}

char *NSURLSessionConfiguration.proxyConfigurations.getter()
{
  v1 = [v0 proxyConfigurations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B750);
  v2 = sub_182AD33C8();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_182AD3EB8();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v10 = MEMORY[0x1E69E7CC0];
  result = sub_181FB7850(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v10;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1865DA790](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      v9 = *(v10 + 16);
      v8 = *(v10 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_181FB7850((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v10 + 16) = v9 + 1;
      *(v10 + 8 * v9 + 32) = v7;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

void NSURLSessionConfiguration.proxyConfigurations.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_182AD3D38();
    v3 = 32;
    do
    {
      swift_unknownObjectRetain();
      sub_182AD3D08();
      sub_182AD3D48();
      sub_182AD3D58();
      sub_182AD3D18();
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B750);
  v4 = sub_182AD33B8();

  [v1 setProxyConfigurations_];
}

void (*NSURLSessionConfiguration.proxyConfigurations.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NSURLSessionConfiguration.proxyConfigurations.getter();
  return sub_1822917C4;
}

void sub_1822917C4(uint64_t *a1, char a2)
{
  if (a2)
  {

    NSURLSessionConfiguration.proxyConfigurations.setter(v2);
  }

  else
  {
    NSURLSessionConfiguration.proxyConfigurations.setter(*a1);
  }
}

uint64_t sub_18229181C(uint64_t a1, unint64_t a2, void **a3)
{
  bytes[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(bytes, 0, 14);
      v6 = 0;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_18229196C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v4)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_18229196C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  bytes[0] = a1;
  LOWORD(bytes[1]) = a2;
  BYTE2(bytes[1]) = BYTE2(a2);
  BYTE3(bytes[1]) = BYTE3(a2);
  v5 = a2 >> 40;
  BYTE4(bytes[1]) = BYTE4(a2);
  v6 = BYTE6(a2);
  BYTE5(bytes[1]) = v5;
LABEL_9:
  v10 = xpc_data_create(bytes, v6);
  nw_parameters_set_custom_options(*a3, v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_18229196C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  result = sub_182AD1D58();
  v8 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = sub_182AD1D78();
  if (v8)
  {
    if (result >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = result;
    }

    v12 = xpc_data_create(v8, v11);
    nw_parameters_set_custom_options(*a4, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_182291A0C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1865DA790](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_182292758;
  }

  __break(1u);
  return result;
}

uint64_t _s7Network12NWParametersC4dtls3udpAcA13NWProtocolTLSC7OptionsCSg_AA0E3UDPCAHCtcfC_0(uint64_t a1)
{
  type metadata accessor for NWParameters();
  v2 = swift_allocObject();
  v3 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v2 + 16) = v4;
  *(v4 + 24) = 0;
  v5 = (v4 + 24);
  os_unfair_lock_lock((v4 + 24));
  nw_parameters_set_data_mode(v3, 1);
  os_unfair_lock_unlock(v5);
  os_unfair_lock_lock(v5);
  v6 = nw_parameters_copy_default_protocol_stack(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v8 = (inited + 24);
  *(inited + 16) = v6;
  v9 = (inited + 16);
  os_unfair_lock_unlock(v5);

  os_unfair_lock_lock(v8);
  sub_181C2D558(v9);
  os_unfair_lock_unlock(v8);

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_182AF1910;
    *(v11 + 32) = a1;
    MEMORY[0x1EEE9AC00](v11);

    os_unfair_lock_lock(v8);
    sub_181C4E3C0(v9);
    os_unfair_lock_unlock(v8);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    os_unfair_lock_lock(v8);
    sub_181C4E3C0(v9);
    os_unfair_lock_unlock(v8);
  }

  return v2;
}

uint64_t _s7Network12NWParametersC4quicAcA14NWProtocolQUICC7OptionsC_tcfC_0()
{
  type metadata accessor for NWParameters();
  v0 = swift_allocObject();
  v1 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  v3 = (v2 + 24);
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  os_unfair_lock_lock((v2 + 24));
  v6._os_unfair_lock_opaque = 0;
  v5 = nw_parameters_copy_default_protocol_stack(v1);
  os_unfair_lock_unlock(v3);

  os_unfair_lock_lock(&v6);
  sub_181C2D558(&v5);
  os_unfair_lock_unlock(&v6);

  os_unfair_lock_lock(v3);
  nw_parameters_set_attach_protocol_listener(v1);
  os_unfair_lock_unlock(v3);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_182291F2C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t))
{
  result = a2(*v3);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + 40;
    do
    {
      v9 = sub_182AD3048();
      v10 = swift_unknownObjectRetain();
      a3(v10, v9 + 32);
      swift_unknownObjectRelease();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

unint64_t sub_182291FBC()
{
  result = qword_1EA83BA80;
  if (!qword_1EA83BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA80);
  }

  return result;
}

unint64_t sub_182292014()
{
  result = qword_1EA83BA88;
  if (!qword_1EA83BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA88);
  }

  return result;
}

unint64_t sub_18229206C()
{
  result = qword_1EA83BA90;
  if (!qword_1EA83BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA90);
  }

  return result;
}

unint64_t sub_1822920C4()
{
  result = qword_1EA83BA98;
  if (!qword_1EA83BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA98);
  }

  return result;
}

uint64_t keypath_set_160Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t))
{

  sub_182291F2C(v8, a5, a6);
}

uint64_t type metadata accessor for NWParameters.PrivacyContext.ResolverConfiguration()
{
  result = qword_1EA83BAA8;
  if (!qword_1EA83BAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1822924D4()
{
  sub_182292580(319, &unk_1EA83BAB8, type metadata accessor for NWEndpoint);
  if (v0 <= 0x3F)
  {
    sub_182292580(319, &unk_1EA83BAC8, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_182292580(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83B420);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_182292634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DefaultOneToOneProtocol.getMetadata<A>(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v15 = *a1;
  v16 = v6;
  sub_182292F88(&v15, 0x646174654D746567, 0xEF293A5F28617461, &v13);
  if ((*(*v3 + 576))(0))
  {
    type metadata accessor for ProtocolMetadata();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  *&v15 = *(v3 + 40);
  *(&v15 + 1) = v8;
  v16 = v9;
  sub_181F68EA8(v15, v8, v9);
  sub_182292A10(&v13);
  v11 = v13;
  v12 = v14;
  v10 = OutputHandlerLinkage.invokeGetMetadata<A>(_:)(&v11, a2, a3);
  sub_181F68E5C(v11, *(&v11 + 1), v12);
  sub_181F68E5C(v15, *(&v15 + 1), v16);
  return v10;
}

uint64_t DefaultOneToOneProtocol.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 6;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 6;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return result;
}

uint64_t DefaultOneToOneProtocol.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

id sub_182292A10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  if (v2 == 6)
  {
    if (v3 | v4)
    {
LABEL_6:
      LOBYTE(v2) = 6;
      goto LABEL_7;
    }

    v5 = *(v1 + 88);
    v6 = a1;
    v7 = *(v1 + 96);
    type metadata accessor for UDPProtocol.UDPInstance();
    v8 = swift_dynamicCastClass();
    v4 = v7;
    a1 = v6;
    v9 = v8;
    v3 = v5;
    if (!v9 || (*(v1 + 88) = v9, *(v1 + 96) = 0, *(v1 + 104) = 1, , sub_181F68E5C(0, 0, 6u), a1 = v6, v2 = *(v1 + 104), v3 = *(v1 + 88), v4 = *(v1 + 96), v2 == 6))
    {
      if (v3 | v4)
      {
        goto LABEL_6;
      }

      v11 = v4;
      v12 = v3;
      type metadata accessor for IPProtocol.IPInstance();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = 0;
        v15 = 0;
      }

      else
      {
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = 0;
          v15 = 1;
        }

        else
        {
          type metadata accessor for TCPProtocol.TCPInstance();
          v13 = swift_dynamicCastClass();
          v16 = v13 == 0;
          if (!v13)
          {
            v13 = v1;
          }

          v14 = &protocol witness table for DefaultOneToOneProtocol;
          if (v16)
          {
            v15 = 3;
          }

          else
          {
            v14 = 0;
            v15 = 2;
          }
        }
      }

      *(v1 + 88) = v13;
      *(v1 + 96) = v14;
      *(v1 + 104) = v15;

      sub_181F68E5C(v12, v11, 6u);
      v3 = *(v1 + 88);
      v4 = *(v1 + 96);
      LOBYTE(v2) = *(v1 + 104);
      a1 = v6;
    }
  }

LABEL_7:
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  return sub_181F68EA8(v3, v4, v2);
}

id sub_182292B80@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  if (v2 == 6)
  {
    if (v3 | v4)
    {
LABEL_6:
      LOBYTE(v2) = 6;
      goto LABEL_7;
    }

    v5 = *(v1 + 112);
    v6 = a1;
    v7 = *(v1 + 120);
    type metadata accessor for UDPProtocol.UDPInstance();
    v8 = swift_dynamicCastClass();
    v4 = v7;
    a1 = v6;
    v9 = v8;
    v3 = v5;
    if (!v9 || (*(v1 + 112) = v9, *(v1 + 120) = 0, *(v1 + 128) = 1, , sub_181F68E5C(0, 0, 6u), a1 = v6, v2 = *(v1 + 128), v3 = *(v1 + 112), v4 = *(v1 + 120), v2 == 6))
    {
      if (v3 | v4)
      {
        goto LABEL_6;
      }

      v11 = v4;
      v12 = v3;
      type metadata accessor for IPProtocol.IPInstance();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = 0;
        v15 = 0;
      }

      else
      {
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = 0;
          v15 = 1;
        }

        else
        {
          type metadata accessor for TCPProtocol.TCPInstance();
          v13 = swift_dynamicCastClass();
          v16 = v13 == 0;
          if (!v13)
          {
            v13 = v1;
          }

          v14 = &protocol witness table for DefaultOneToOneProtocol;
          if (v16)
          {
            v15 = 3;
          }

          else
          {
            v14 = 0;
            v15 = 2;
          }
        }
      }

      *(v1 + 112) = v13;
      *(v1 + 120) = v14;
      *(v1 + 128) = v15;

      sub_181F68E5C(v12, v11, 6u);
      v3 = *(v1 + 112);
      v4 = *(v1 + 120);
      LOBYTE(v2) = *(v1 + 128);
      a1 = v6;
    }
  }

LABEL_7:
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  return sub_181F68EA8(v3, v4, v2);
}

uint64_t sub_182292CF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_182292A10(&v18);
  v4 = v18;
  v5 = v19;
  sub_181F68E5C(v18, *(&v18 + 1), v19);
  if (v5 == 6 && v4 == 0)
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  sub_182292A10(&v14);
  v12 = v14;
  v13 = v15;
  sub_181F70FF8(&v12, &v18);
  sub_181F68E5C(v12, *(&v12 + 1), v13);
  v7 = v19;
  if (v19 == 255)
  {
    return 0;
  }

  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  *(v1 + 40) = v18;
  v10 = *(v1 + 56);
  *(v1 + 56) = v7;
  sub_181F68E5C(v8, v9, v10);
  return 1;
}

void sub_182292DC8(uint64_t a1, unint64_t a2)
{
  v6 = *(v2 + 72);
  v5 = *(v2 + 80);
  v7 = qword_1EA8371A0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_182AD2698();
  __swift_project_value_buffer(v8, qword_1EA843348);

  oslog = sub_182AD2678();
  v9 = sub_182AD38B8();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315394;
    v12 = sub_181C64FFC(v6, v5, &v14);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(a1, a2, &v14);
    _os_log_impl(&dword_181A37000, oslog, v9, "%s %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_182292F88(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  result = sub_181F74A48(*a1, *(a1 + 8), *(a1 + 16), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  if ((result & 1) == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843348);

    v10 = sub_182AD2678();
    v11 = sub_182AD38C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_181C64FFC(a2, a3, &v14);
      _os_log_impl(&dword_181A37000, v10, v11, "Received '%s' from incorrect input linkage", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    *a4 = 0;
    v15 = 0;
    sub_181FEADD0();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_182293124(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  result = sub_181F74A48(*a1, *(a1 + 8), *(a1 + 16), *(v4 + 40), *(v4 + 48), *(v4 + 56));
  if ((result & 1) == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843348);

    v10 = sub_182AD2678();
    v11 = sub_182AD38C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_181C64FFC(a2, a3, &v14);
      _os_log_impl(&dword_181A37000, v10, v11, "Received '%s' from incorrect output linkage", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    *a4 = 1;
    v15 = 1;
    sub_181FEADD0();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1822932C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(v2 + 16);
  v8 = *(v3 + 24);
  *(v3 + 16) = *a1;
  *(v3 + 24) = v5;
  v9 = *(a1 + 16);
  v10 = *(v3 + 32);
  *(v3 + 32) = v9;
  sub_181F68EA8(v6, v5, v9);
  sub_181F68E5C(v7, v8, v10);
  result = (*(*v3 + 400))();
  if (result)
  {
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    __dst[0] = *(v3 + 16);
    __dst[1] = v12;
    LOBYTE(__dst[2]) = v13;
    sub_181F68EA8(__dst[0], v12, v13);
    InputHandlerLinkage.invokeGetParameters()(__src);
    sub_181F68E5C(__dst[0], __dst[1], __dst[2]);
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_182064A58(__dst) != 1)
    {
      *(v3 + 136) = __dst[35];

      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      v16 = *(v3 + 32);
      if (v16 == 4)
      {
        sub_181F68EA8(*(v3 + 16), *(v3 + 24), 4u);
        sub_181F636F0(v15, &v31);
        if (v31)
        {
          v17 = *(&v31 + 1);
          sub_181F68E5C(v15, v14, 4u);
LABEL_16:
          ObjectType = swift_getObjectType();
          v24 = (*(v17 + 144))(ObjectType, v17);
          if (v25)
          {
            v26 = 0;
          }

          else
          {
            v26 = v24;
          }

          *(v3 + 64) = v26;
          v27 = (*(v17 + 168))(ObjectType, v17);
          if (v28)
          {
            v29 = v27;
            v30 = v28;
            sub_182174B58(__src);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_182174B58(__src);
            swift_unknownObjectRelease();
            v29 = 0;
            v30 = 0xE000000000000000;
          }

          *(v3 + 72) = v29;
          *(v3 + 80) = v30;

          goto LABEL_24;
        }

        sub_181F68E5C(v15, v14, 4u);
      }

      else
      {
        type metadata accessor for IPProtocol.IPInstance();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          v20 = 0;
        }

        else
        {
          type metadata accessor for UDPProtocol.UDPInstance();
          v19 = swift_dynamicCastClass();
          if (v19)
          {
            v20 = 0x2000000000000000;
          }

          else
          {
            type metadata accessor for TCPProtocol.TCPInstance();
            v19 = swift_dynamicCastClass();
            if (v19)
            {
              v20 = 0x4000000000000000;
            }

            else
            {
              v20 = 0x60000001EEFD6190uLL;
              v19 = v3;
            }
          }
        }

        *&v31 = v19;
        *(&v31 + 1) = v20;
        sub_181F68EA8(v15, v14, v16);

        v21 = sub_181F6433C(&v31);
        v17 = v22;

        sub_181F68E5C(v15, v14, v16);
        if (v21)
        {
          goto LABEL_16;
        }
      }

      sub_182174B58(__src);
    }

LABEL_24:
    result = sub_182292B80(&v31);
    v18 = v32;
    *a2 = v31;
    goto LABEL_25;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v18 = -1;
LABEL_25:
  *(a2 + 16) = v18;
  return result;
}

uint64_t sub_1822935B8(__int128 *a1, char a2)
{
  v4 = *(a1 + 16);
  v24 = *a1;
  v25 = v4;
  sub_182292F88(&v24, 0xD00000000000001ELL, 0x8000000182BD7710, &v22);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v7 = *(v2 + 32);
  *(v2 + 32) = 6;
  sub_181F68E5C(v5, v6, v7);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  *&v24 = *(v2 + 40);
  *(&v24 + 1) = v8;
  v25 = v9;
  sub_181F68EA8(v24, v8, v9);
  sub_182292A10(&v22);
  v20 = v22;
  v21 = v23;
  OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(&v20, a2 & 1);
  sub_181F68E5C(v20, *(&v20 + 1), v21);
  sub_181F68E5C(v24, *(&v24 + 1), v25);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v12 = *(v2 + 56);
  *(v2 + 56) = 6;
  sub_181F68E5C(v10, v11, v12);
  v13 = *(v2 + 88);
  v14 = *(v2 + 96);
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  v15 = *(v2 + 104);
  *(v2 + 104) = 6;
  sub_181F68E5C(v13, v14, v15);
  v16 = *(v2 + 112);
  v17 = *(v2 + 120);
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  v18 = *(v2 + 128);
  *(v2 + 128) = 6;
  sub_181F68E5C(v16, v17, v18);
  if (a2)
  {
    (*(*v2 + 408))();
  }

  return 1;
}

void sub_182293718(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (sub_181F74A48(*(v4 + 16), *(v4 + 24), *(v4 + 32), *a1, *(a1 + 8), *(a1 + 16)))
  {
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    *(v4 + 16) = v6;
    *(v4 + 24) = v7;
    v11 = *(v4 + 32);
    *(v4 + 32) = v8;
    sub_181F68EA8(v6, v7, v8);
    sub_181F68E5C(v9, v10, v11);
    v12 = *(v4 + 24);
    v13 = *(v4 + 32);
    __dst[0] = *(v4 + 16);
    __dst[1] = v12;
    LOBYTE(__dst[2]) = v13;
    sub_181F68EA8(__dst[0], v12, v13);
    InputHandlerLinkage.invokeGetParameters()(__src);
    sub_181F68E5C(__dst[0], __dst[1], __dst[2]);
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_182064A58(__dst) != 1)
    {
      *(v4 + 136) = __dst[35];

      type metadata accessor for IPProtocol.IPInstance();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        type metadata accessor for UDPProtocol.UDPInstance();
        v14 = swift_dynamicCastClass();
        if (v14)
        {
          v15 = 0x2000000000000000;
        }

        else
        {
          type metadata accessor for TCPProtocol.TCPInstance();
          v14 = swift_dynamicCastClass();
          v15 = 0x60000001EEFD6190uLL;
          if (v14)
          {
            v15 = 0x4000000000000000;
          }

          else
          {
            v14 = v4;
          }
        }
      }

      *&v32 = v14;
      *(&v32 + 1) = v15;

      v21 = sub_181F6433C(&v32);
      v23 = v22;

      if (v21)
      {
        ObjectType = swift_getObjectType();
        v25 = (*(v23 + 144))(ObjectType, v23);
        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = v25;
        }

        *(v4 + 64) = v27;
        v28 = (*(v23 + 168))(ObjectType, v23);
        if (v29)
        {
          v30 = v28;
          v31 = v29;
          sub_182174B58(__src);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_182174B58(__src);
          swift_unknownObjectRelease();
          v30 = 0;
          v31 = 0xE000000000000000;
        }

        *(v4 + 72) = v30;
        *(v4 + 80) = v31;
      }

      else
      {
        sub_182174B58(__src);
      }
    }

    sub_182292B80(&v32);
    v20 = v33;
    *a3 = v32;
  }

  else
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v16 = sub_182AD2698();
    __swift_project_value_buffer(v16, qword_1EA843348);
    v17 = sub_182AD2678();
    v18 = sub_182AD38C8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_181A37000, v17, v18, "Old input handler does not match", v19, 2u);
      MEMORY[0x1865DF520](v19, -1, -1);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v20 = -1;
  }

  *(a3 + 16) = v20;
}

uint64_t sub_182293A28(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182293124(&v6, 0x657463656E6E6F63, 0xED0000293A5F2864, &v5);
  v3 = *(*v1 + 440);

  return v3();
}

void sub_182293AF0(void (*a1)(__int128 *))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v9 = *(v1 + 16);
  v10 = v3;
  v11 = v4;
  sub_181F68EA8(v9, v3, v4);
  sub_182292B80(&v7);
  v5 = v7;
  v6 = v8;
  a1(&v5);
  sub_181F68E5C(v5, *(&v5 + 1), v6);
  sub_181F68E5C(v9, v10, v11);
}

uint64_t sub_182293B6C(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182293124(&v6, 0xD000000000000010, 0x8000000182BD5870, &v5);
  v3 = *(*v1 + 464);

  return v3();
}

void sub_182293C2C(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v12 = *(v2 + 16);
  v13 = v6;
  v14 = v7;
  v10 = *a1;
  v11 = v3;
  v8 = v4;
  v9 = v5;
  sub_181F68EA8(v12, v6, v7);
  InputHandlerLinkage.invokeError(_:error:)(&v10, &v8);
  sub_181F68E5C(v12, v13, v14);
}

void sub_182293CA4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v12 = *(v1 + 16);
  v13 = v4;
  v14 = v5;
  sub_181F68EA8(v12, v4, v5);
  sub_182292B80(&v10);
  v8 = v10;
  v9 = v11;
  v6 = v2;
  v7 = v3;
  InputHandlerLinkage.invokeError(_:error:)(&v8, &v6);
  sub_181F68E5C(v8, *(&v8 + 1), v9);
  sub_181F68E5C(v12, v13, v14);
}

uint64_t sub_182293D34(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182292F88(&v6, 0x287463656E6E6F63, 0xEB00000000293A5FLL, &v5);
  v3 = *(*v1 + 504);

  return v3();
}

uint64_t sub_182293DE8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = v1;
  v11 = v2;
  sub_181F68EA8(v9, v1, v2);
  sub_182292A10(&v7);
  v5 = v7;
  v6 = v8;
  v3 = OutputHandlerLinkage.invokeConnect(_:)(&v5);
  sub_181F68E5C(v5, *(&v5 + 1), v6);
  sub_181F68E5C(v9, v10, v11);
  return v3 & 1;
}

uint64_t sub_182293E64(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182292F88(&v6, 0x656E6E6F63736964, 0xEE00293A5F287463, &v5);
  v3 = *(*v1 + 528);

  return v3();
}

void sub_182293F2C(void (*a1)(__int128 *))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v11 = v4;
  sub_181F68EA8(v9, v3, v4);
  sub_182292A10(&v7);
  v5 = v7;
  v6 = v8;
  a1(&v5);
  sub_181F68E5C(v5, *(&v5 + 1), v6);
  sub_181F68E5C(v9, v10, v11);
}

uint64_t sub_182293FA8(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182292F88(&v6, 0xD000000000000018, 0x8000000182BD5910, &v5);
  v3 = *(*v1 + 560);

  return v3();
}

void sub_182294078(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v11 = v4;
  sub_181F68EA8(v9, v3, v4);
  sub_182292A10(&v7);
  v5 = v7;
  v6 = v8;
  OutputHandlerLinkage.invokeGetMessageProperties(_:)(&v5, a1);
  sub_181F68E5C(v5, *(&v5 + 1), v6);
  sub_181F68E5C(v9, v10, v11);
}

uint64_t sub_1822940F4(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182293124(&v6, 0xD000000000000012, 0x8000000182BD58B0, &v5);
  v3 = *(*v1 + 592);

  return v3();
}

uint64_t sub_1822941B4(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182293124(&v6, 0xD000000000000013, 0x8000000182BD58F0, &v5);
  v3 = *(*v1 + 616);

  return v3();
}

void sub_182294274(__int128 *a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v3;
  v9 = v4;
  v5 = *a1;
  v6 = v2;
  sub_181F68EA8(v7, v3, v4);
  sub_181F6EE30(&v5);
  sub_181F68E5C(v7, v8, v9);
}

uint64_t sub_1822942D8(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182293124(&v6, 0xD000000000000011, 0x8000000182BD5B40, &v5);
  v3 = *(*v1 + 648);

  return v3();
}

uint64_t sub_182294398(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182292F88(&v6, 0xD000000000000012, 0x8000000182BD5AE0, &v5);
  v3 = *(*v1 + 672);

  return v3();
}

void sub_18229445C(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_181F68EA8(v3, v4, v5);
  InputHandlerLinkage.invokeGetParameters()(a1);
  sub_181F68E5C(v3, v4, v5);
}

uint64_t sub_1822944B0(void *__src, uint64_t a2, ValueMetadata *a3)
{
  memcpy(v9, __src, sizeof(v9));
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v10 = *(v3 + 16);
  v11 = v5;
  v12 = v6;
  sub_181F68EA8(v10, v5, v6);
  v7 = sub_181F74074(v9, v3, &protocol witness table for DefaultOneToOneProtocol, a3);
  sub_181F68E5C(v10, v11, v12);
  return v7;
}

uint64_t sub_182294548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 == 4)
  {
    sub_181F68EA8(*(v0 + 16), *(v0 + 24), 4u);
    sub_181F636F0(v1, v11);
    v4 = v11[0];
    v5 = v1;
    v6 = v2;
    v7 = 4;
  }

  else
  {
    type metadata accessor for IPProtocol.IPInstance();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      type metadata accessor for UDPProtocol.UDPInstance();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = 0x2000000000000000;
      }

      else
      {
        type metadata accessor for TCPProtocol.TCPInstance();
        v8 = swift_dynamicCastClass();
        v9 = 0x60000001EEFD6190uLL;
        if (v8)
        {
          v9 = 0x4000000000000000;
        }

        else
        {
          v8 = v0;
        }
      }
    }

    v11[0] = v8;
    v11[1] = v9;
    sub_181F68EA8(v1, v2, v3);

    v4 = sub_181F6433C(v11);

    v5 = v1;
    v6 = v2;
    v7 = v3;
  }

  sub_181F68E5C(v5, v6, v7);
  return v4;
}

id sub_182294680()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 <= 2)
  {
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    if (*(v0 + 32))
    {
      if (v3 == 1)
      {
        v13 = sub_181F68EA8(v11, v12, 1u);
        v7 = sub_182294680(v13);
        v8 = v2;
        v9 = v1;
        v10 = 1;
      }

      else
      {
        v19 = sub_181F68EA8(v11, v12, 2u);
        v7 = sub_182294680(v19);
        v8 = v2;
        v9 = v1;
        v10 = 2;
      }
    }

    else
    {
      v18 = sub_181F68EA8(v11, v12, 0);
      v7 = sub_182294680(v18);
      v8 = v2;
      v9 = v1;
      v10 = 0;
    }

    goto LABEL_12;
  }

  if (*(v0 + 32) > 4u)
  {
    if (v3 == 5)
    {
      sub_181F68EA8(v2, v1, 5u);
      sub_181FE62E8(0xD000000000000020, 0x8000000182BD5A30);
      v14 = *(v2 + 48);
      v15 = v2;
      v16 = v1;
      v17 = 5;
LABEL_16:
      sub_181F68E5C(v15, v16, v17);
      return v14;
    }
  }

  else
  {
    if (v3 == 3)
    {
      ObjectType = swift_getObjectType();
      v5 = v1[2];
      v6 = *(v5 + 48);
      sub_181F68EA8(v2, v1, 3u);
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
      v22 = nw_protocol_get_remote_endpoint_quiet(input_handler);
      if (v22)
      {
        v14 = v22;
        v15 = v2;
        v16 = v1;
        v17 = 4;
        goto LABEL_16;
      }
    }

    sub_181F68E5C(v2, v1, 4u);
  }

  return 0;
}

id sub_1822948BC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 <= 2)
  {
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    if (*(v0 + 32))
    {
      if (v3 == 1)
      {
        v13 = sub_181F68EA8(v11, v12, 1u);
        v7 = sub_1822948BC(v13);
        v8 = v2;
        v9 = v1;
        v10 = 1;
      }

      else
      {
        v19 = sub_181F68EA8(v11, v12, 2u);
        v7 = sub_1822948BC(v19);
        v8 = v2;
        v9 = v1;
        v10 = 2;
      }
    }

    else
    {
      v18 = sub_181F68EA8(v11, v12, 0);
      v7 = sub_1822948BC(v18);
      v8 = v2;
      v9 = v1;
      v10 = 0;
    }

    goto LABEL_12;
  }

  if (*(v0 + 32) > 4u)
  {
    if (v3 == 5)
    {
      sub_181F68EA8(v2, v1, 5u);
      sub_181FE62E8(0xD00000000000001FLL, 0x8000000182BD5A60);
      v14 = *(v2 + 40);
      v15 = v2;
      v16 = v1;
      v17 = 5;
LABEL_16:
      sub_181F68E5C(v15, v16, v17);
      return v14;
    }
  }

  else
  {
    if (v3 == 3)
    {
      ObjectType = swift_getObjectType();
      v5 = v1[2];
      v6 = *(v5 + 56);
      sub_181F68EA8(v2, v1, 3u);
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
      v22 = nw_protocol_get_local_endpoint_quiet(input_handler);
      if (v22)
      {
        v14 = v22;
        v15 = v2;
        v16 = v1;
        v17 = 4;
        goto LABEL_16;
      }
    }

    sub_181F68E5C(v2, v1, 4u);
  }

  return 0;
}

uint64_t sub_182294AF8(uint64_t (*a1)(id))
{
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v3 = sub_181F68EA8(v6, v7, v8);
  v4 = a1(v3);
  sub_181F68E5C(v6, v7, v8);
  return v4;
}

void sub_182294B58(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_181F68EA8(v3, v4, v5);
  InputHandlerLinkage.invokeGetPath()(a1);
  sub_181F68E5C(v3, v4, v5);
}

uint64_t sub_182294BAC(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  sub_182292F88(&v6, 0x3A5F287465736572, 0xE900000000000029, &v5);
  v3 = *(*v1 + 776);

  return v3();
}

uint64_t sub_182294C58(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v12 = *a1;
  v13 = v8;
  sub_182292F88(&v12, 0xD00000000000003ELL, 0x8000000182BD5950, &v11);
  v9 = *(*v4 + 792);

  return v9(a2, a3, a4);
}

__n128 sub_182294D9C@<Q0>(uint64_t a1@<X8>)
{
  sub_181F73CAC(v9);
  v2 = v9[13];
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v2;
  *(a1 + 224) = v10;
  v3 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v3;
  v4 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v4;
  v5 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v5;
  v6 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v6;
  v7 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  result = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = result;
  return result;
}

void sub_182294E28(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(v4 + 40);
  v9 = *(v4 + 48);
  v11 = *(v4 + 56);
  sub_181F68EA8(v10, v9, *(v4 + 56));
  sub_182292A10(&v72);
  v12 = *(&v72 + 1);
  v13 = v72;
  v14 = v73;
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v41 = v72;
        LOBYTE(v42) = v73;
        v39 = *(&v72 + 1);
        sub_182292F88(&v41, 0xD00000000000003ELL, 0x8000000182BD5950, v56);
        UDPProtocol.UDPInstance.getInputFrames(minimumBytes:maximumBytes:maximumFrameCount:)(a1, a2, a3);
        sub_181F68E5C(v13, v39, v14);
        sub_181F68E5C(v10, v9, 1u);
        return;
      }

      v41 = v72;
      LOBYTE(v42) = v73;
      v22 = *(&v72 + 1);
      sub_182292F88(&v41, 0xD00000000000003ELL, 0x8000000182BD5950, v56);
      sub_181F68E5C(v13, v22, v14);
      v19 = v10;
      v12 = v9;
      v20 = 2;
    }

    else
    {
      v41 = v72;
      LOBYTE(v42) = v73;
      v21 = *(&v72 + 1);
      sub_182292F88(&v41, 0xD00000000000003ELL, 0x8000000182BD5950, v56);
      sub_181F68E5C(v13, v21, v14);
      v19 = v10;
      v12 = v9;
      v20 = 0;
    }

    goto LABEL_35;
  }

  if (v11 <= 4)
  {
    v36 = a3;
    v38 = *(&v72 + 1);
    v15 = a2;
    if (v11 == 3)
    {
      ObjectType = swift_getObjectType();
      *&v57 = v13;
      *(&v57 + 1) = v38;
      LOBYTE(v58) = v14;
      (v9)[8](&v57, a1, a2, v36, ObjectType, v9);
      sub_181F68E5C(v10, v9, 3u);
      sub_181F68E5C(v13, v38, v14);
      return;
    }

    v23 = v73;
    output_handler = nw_protocol_swift_wrapper_get_output_handler(v10, v9);
    if (!output_handler)
    {
LABEL_34:
      sub_181F68E5C(v13, v38, v23);
      v19 = v10;
      v12 = v9;
      v20 = 4;
      goto LABEL_35;
    }

    v25 = output_handler;
    v56[0] = 0;
    v56[1] = 0;
    nw_frame_array_init(v56);
    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a1 = 0xFFFFFFFFLL;
      v26 = v36;
      if (a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v26 = v36;
      if (HIDWORD(a1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_16:
        v15 = 0xFFFFFFFFLL;
        v27 = 0xFFFFFFFFLL;
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_31:
          if (nw_protocol_get_input_frames_quiet(v25, v10, a1, v15, v27, v56))
          {
            sub_182285C4C(v56, 1, &v41);
            sub_181F68E5C(v13, v38, v23);
            sub_181F68E5C(v10, v9, 4u);
            v69 = v53;
            v70 = v54;
            v71 = v55;
            v65 = v49;
            v66 = v50;
            v67 = v51;
            v68 = v52;
            v61 = v45;
            v62 = v46;
            v63 = v47;
            v64 = v48;
            v57 = v41;
            v58 = v42;
            v59 = v43;
            v60 = v44;
            goto LABEL_33;
          }

          goto LABEL_34;
        }

LABEL_28:
        if ((v26 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v26))
          {
            v27 = v26;
            goto LABEL_31;
          }

LABEL_42:
          __break(1u);
        }

        goto LABEL_40;
      }
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(a2))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v26 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = 0xFFFFFFFFLL;
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    goto LABEL_38;
  }

  if (v11 != 5)
  {
    v19 = v72;
    v20 = v73;
    goto LABEL_35;
  }

  v17 = *(&v72 + 1);
  v37 = v73;
  sub_181FE8374(0xD000000000000019, 0x8000000182BD5930);
  v18 = *(v10 + 48);
  if (*(v10 + 64))
  {
    sub_181F68E5C(v13, v17, v14);
    v19 = v10;
    v12 = v9;
    v20 = 5;
LABEL_35:
    sub_181F68E5C(v19, v12, v20);
    sub_181F73CAC(&v57);
    goto LABEL_36;
  }

  if (v18)
  {
    v40 = *(v10 + 56) - v18;
    LOBYTE(v41) = 1;
    LOBYTE(v56[0]) = 1;
    v28 = Frame.bufferLength.getter();
    sub_181F68E5C(v13, v17, v37);
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 1;
    sub_181F68E5C(v10, v9, 5u);
    *&v57 = v18;
    *(&v57 + 1) = v40;
    *&v58 = 0;
    BYTE8(v58) = 0;
    v59 = xmmword_182AE69F0;
    LOBYTE(v60) = 2;
    *(&v60 + 1) = 0;
    *&v61 = 0;
    *(&v61 + 1) = v28;
    *&v62 = 0;
    BYTE8(v62) = 0;
    v63 = 0u;
    v64 = 0u;
    *&v65 = 0;
    DWORD2(v65) = 2;
    BYTE12(v65) = 1;
    v66 = 0uLL;
    LOBYTE(v67) = 1;
    *(&v67 + 1) = 0;
    v68 = 0uLL;
    LOWORD(v69) = 256;
    BYTE2(v69) = 0;
    *(&v69 + 1) = 0;
    LOBYTE(v70) = -1;
    *(&v70 + 1) = 0;
    v71 = 0;
LABEL_33:
    nullsub_41(&v57);
LABEL_36:
    v29 = v70;
    *(a4 + 192) = v69;
    *(a4 + 208) = v29;
    *(a4 + 224) = v71;
    v30 = v66;
    *(a4 + 128) = v65;
    *(a4 + 144) = v30;
    v31 = v68;
    *(a4 + 160) = v67;
    *(a4 + 176) = v31;
    v32 = v62;
    *(a4 + 64) = v61;
    *(a4 + 80) = v32;
    v33 = v64;
    *(a4 + 96) = v63;
    *(a4 + 112) = v33;
    v34 = v58;
    *a4 = v57;
    *(a4 + 16) = v34;
    v35 = v60;
    *(a4 + 32) = v59;
    *(a4 + 48) = v35;
    return;
  }

  __break(1u);
}

uint64_t sub_182295470(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v12 = *a1;
  v13 = v8;
  sub_182292F88(&v12, 0xD00000000000003FLL, 0x8000000182BD59B0, &v11);
  v9 = *(*v4 + 816);

  return v9(a2, a3, a4);
}

void sub_1822955B4(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = *MEMORY[0x1E69E9840];
  v10 = *(v4 + 40);
  v9 = *(v4 + 48);
  v11 = *(v4 + 56);
  sub_181F68EA8(v10, v9, *(v4 + 56));
  sub_182292A10(&v97);
  v13 = *(&v97 + 1);
  v12 = v97;
  v14 = v98;
  if (v11 > 2)
  {
    if (v11 <= 4)
    {
      v50 = v97;
      if (v11 == 3)
      {
        ObjectType = swift_getObjectType();
        *&v81 = v50;
        *(&v81 + 1) = v13;
        LOBYTE(v82) = v14;
        (v9)[9](&v81, a1, a2, a3, ObjectType, v9);
        sub_181F68E5C(v10, v9, 3u);
        sub_181F68E5C(v50, v13, v14);
        return;
      }

      v22 = v98;
      output_handler = nw_protocol_swift_wrapper_get_output_handler(v10, v9);
      if (!output_handler)
      {
LABEL_41:
        sub_181F68E5C(v50, v13, v22);
        v12 = v10;
        v26 = v9;
        v27 = 4;
        goto LABEL_45;
      }

      v24 = output_handler;
      v96[0] = 0;
      v96[1] = 0;
      nw_frame_array_init(v96);
      if (a1 == 0x7FFFFFFFFFFFFFFFLL)
      {
        a1 = 0xFFFFFFFFLL;
        if (a2 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (a1 < 0)
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (HIDWORD(a1))
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        if (a2 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_18:
          a2 = 0xFFFFFFFFLL;
          v25 = 0xFFFFFFFFLL;
          if (a3 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_38:
            if (nw_protocol_get_output_frames_quiet(v24, v10, a1, a2, v25, v96))
            {
              sub_182285C4C(v96, 1, &v66);
              sub_181F68E5C(v50, v13, v22);
              sub_181F68E5C(v10, v9, 4u);
              v93 = v78;
              v94 = v79;
              v95 = v80;
              v89 = v74;
              v90 = v75;
              v91 = v76;
              v92 = v77;
              v85 = v70;
              v86 = v71;
              v87 = v72;
              v88 = v73;
              v81 = v66;
              v82 = v67;
              v83 = v68;
              v84 = v69;
LABEL_40:
              nullsub_41(&v81);
LABEL_46:
              v31 = v94;
              *(a4 + 192) = v93;
              *(a4 + 208) = v31;
              *(a4 + 224) = v95;
              v32 = v90;
              *(a4 + 128) = v89;
              *(a4 + 144) = v32;
              v33 = v92;
              *(a4 + 160) = v91;
              *(a4 + 176) = v33;
              v34 = v86;
              *(a4 + 64) = v85;
              *(a4 + 80) = v34;
              v35 = v88;
              *(a4 + 96) = v87;
              *(a4 + 112) = v35;
              v36 = v82;
              *a4 = v81;
              *(a4 + 16) = v36;
              v38 = v83;
              v37 = v84;
              goto LABEL_47;
            }

            goto LABEL_41;
          }

LABEL_35:
          if ((a3 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(a3))
            {
              v25 = a3;
              goto LABEL_38;
            }

            goto LABEL_68;
          }

          goto LABEL_66;
        }
      }

      if ((a2 & 0x8000000000000000) == 0)
      {
        if (HIDWORD(a2))
        {
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        if (a3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0xFFFFFFFFLL;
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      goto LABEL_64;
    }

    if (v11 == 5)
    {
      v17 = v97;
      v18 = v98;
      sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5990);
      swift_beginAccess();
      if (*(v10 + 88) >= a1)
      {
        v19 = a1;
      }

      else
      {
        v19 = *(v10 + 88);
      }

      Frame.init(capacity:)(v19, &v66);
      sub_181F68E5C(v17, v13, v18);
      sub_181F68E5C(v10, v9, 5u);
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
      v81 = v66;
      v82 = v67;
      v94 = v79;
      v95 = 0;
      goto LABEL_40;
    }

    v26 = *(&v97 + 1);
    v27 = v98;
LABEL_45:
    sub_181F68E5C(v12, v26, v27);
    sub_181F73CAC(&v81);
    goto LABEL_46;
  }

  if (!v11)
  {
    v66 = v97;
    LOBYTE(v67) = v98;
    v20 = v97;
    sub_182292F88(&v66, 0xD00000000000003FLL, 0x8000000182BD59B0, v96);
    sub_181F68E5C(v20, v13, v14);
    v12 = v10;
    v26 = v9;
    v27 = 0;
    goto LABEL_45;
  }

  if (v11 != 1)
  {
    v66 = v97;
    LOBYTE(v67) = v98;
    v21 = v97;
    sub_182292F88(&v66, 0xD00000000000003FLL, 0x8000000182BD59B0, v96);
    sub_181F68E5C(v21, v13, v14);
    v12 = v10;
    v26 = v9;
    v27 = 2;
    goto LABEL_45;
  }

  v49 = a3;
  v66 = v97;
  LOBYTE(v67) = v98;
  v16 = v97;
  sub_182292F88(&v66, 0xD00000000000003FLL, 0x8000000182BD59B0, v96);
  v48 = v14;
  if ((*(v10 + 312) & 2) != 0)
  {
    sub_181F68E5C(v16, v13, v14);
    v30 = *(v10 + 312);
    v26 = v9;
    if ((v30 & 4) == 0)
    {
      *(v10 + 312) = v30 | 4;
    }

    v12 = v10;
    v27 = 1;
    goto LABEL_45;
  }

  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a1))
  {
    goto LABEL_69;
  }

  v28 = 0x7FFFFFFFFFFFFFFFLL;
  if (0x7FFFFFFFFFFFFFFFLL - a1 >= 8)
  {
    v28 = a1 + 8;
    if (__OFADD__(a1, 8))
    {
      goto LABEL_71;
    }
  }

  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a2))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  if ((0x7FFFFFFFFFFFFFFFLL - a2) >= 8)
  {
    v29 = a2 + 8;
    if (__OFADD__(a2, 8))
    {
      goto LABEL_72;
    }
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1822955B4(&v51, v28, v29, v49);
  v93 = v63;
  v94 = v64;
  v95 = v65;
  v89 = v59;
  v90 = v60;
  v91 = v61;
  v92 = v62;
  v85 = v55;
  v86 = v56;
  v87 = v57;
  v88 = v58;
  v81 = v51;
  v82 = v52;
  v83 = v53;
  v84 = v54;
  if (sub_181F3D1E4(&v81) == 1 || v65 == 1 || (Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1), !*(&v64 + 1)))
  {
    sub_181F68E5C(v16, v13, v14);
    sub_181F68E5C(v10, v9, 1u);
    goto LABEL_61;
  }

  v39 = *(*(&v64 + 1) + 32);
  if (*(*(&v64 + 1) + 16) >= *(*(&v64 + 1) + 24) + v39)
  {
    v40 = *(*(&v64 + 1) + 24) + v39;
  }

  else
  {
    v40 = *(*(&v64 + 1) + 16);
  }

  *&v66 = *(&v64 + 1);
  *(&v66 + 1) = v39;
  *&v67 = v40;
  v41 = swift_retain_n();
  while (1)
  {
    if (v39 != v40)
    {
      goto LABEL_56;
    }

    if ((sub_181AC81FC(v41) & 1) == 0)
    {
      break;
    }

    v39 = *(&v66 + 1);
    v40 = v67;
LABEL_56:
    *(&v66 + 1) = v39 + 1;
    swift_beginAccess();

    Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1);
    swift_endAccess();

    ++v39;
  }

  sub_181F68E5C(v16, v13, v48);

  sub_181F68E5C(v10, v9, 1u);

LABEL_61:
  v42 = v64;
  *(a4 + 192) = v63;
  *(a4 + 208) = v42;
  *(a4 + 224) = v65;
  v43 = v60;
  *(a4 + 128) = v59;
  *(a4 + 144) = v43;
  v44 = v62;
  *(a4 + 160) = v61;
  *(a4 + 176) = v44;
  v45 = v56;
  *(a4 + 64) = v55;
  *(a4 + 80) = v45;
  v46 = v58;
  *(a4 + 96) = v57;
  *(a4 + 112) = v46;
  v47 = v52;
  *a4 = v51;
  *(a4 + 16) = v47;
  v38 = v53;
  v37 = v54;
LABEL_47:
  *(a4 + 32) = v38;
  *(a4 + 48) = v37;
}

uint64_t sub_182295DCC(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v4;
  v5 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v5;
  v6 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v6;
  v7 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v7;
  v8 = *(a2 + 160);
  *v21 = *(a2 + 161);
  *&v21[3] = *(a2 + 164);
  v9 = *(a2 + 168);
  v10 = *(a2 + 192);
  v23 = *(a2 + 176);
  v24 = v10;
  v11 = *(a2 + 208);
  v12 = *(a2 + 216);
  v13 = *(a2 + 144);
  v14 = *(a2 + 224);
  v19[8] = *(a2 + 128);
  v19[9] = v13;
  v20 = v8;
  v22 = v9;
  v25 = v11;
  v26 = v12;
  v27 = v14;
  v17 = *a1;
  v18 = v3;
  sub_182292F88(&v17, 0xD00000000000001FLL, 0x8000000182BD9EE0, &v16);
  return (*(*v2 + 840))(v19) & 1;
}

uint64_t sub_182295F74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 144);
  v9 = *(a1 + 160);

  if (v7 != 2 || v6 | v5)
  {
    sub_181F68EF4(v1, v2, v3, v4);

    result = sub_181F68F3C(v5, v6, v7);
    __break(1u);
  }

  else
  {
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    sub_181F68EF4(v1, v2, v3, v4);

    return 0;
  }

  return result;
}

uint64_t sub_182296054(uint64_t a1)
{
  v2 = *(a1 + 208);
  v20[12] = *(a1 + 192);
  v20[13] = v2;
  v21 = *(a1 + 224);
  v3 = *(a1 + 144);
  v20[8] = *(a1 + 128);
  v20[9] = v3;
  v4 = *(a1 + 176);
  v20[10] = *(a1 + 160);
  v20[11] = v4;
  v5 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v5;
  v6 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v6;
  v7 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v7;
  v8 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v8;
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v17 = *(v1 + 40);
  v18 = v9;
  v19 = v10;
  sub_181F68EA8(v17, v9, v10);
  sub_182292A10(&v15);
  v13 = v15;
  v14 = v16;
  v11 = OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(&v13, v20);
  sub_181F68E5C(v13, *(&v13 + 1), v14);
  sub_181F68E5C(v17, v18, v19);
  return v11 & 1;
}

uint64_t ProtocolInstanceError.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t DefaultOneToOneProtocol.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t DefaultOneToOneProtocol.__deallocating_deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

unint64_t sub_1822963E8()
{
  result = qword_1EA83BB50;
  if (!qword_1EA83BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BB50);
  }

  return result;
}

unint64_t sub_182296F34(uint64_t a1, void *a2)
{
  if ((*(v2 + 240) & 2) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 176);
  v34[10] = *(a1 + 160);
  v34[11] = v4;
  v34[12] = *(a1 + 192);
  v35 = *(a1 + 208);
  v5 = *(a1 + 112);
  v34[6] = *(a1 + 96);
  v34[7] = v5;
  v6 = *(a1 + 144);
  v34[8] = *(a1 + 128);
  v34[9] = v6;
  v7 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v7;
  v8 = *(a1 + 80);
  v34[4] = *(a1 + 64);
  v34[5] = v8;
  v9 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v9;
  sub_182015D80(v34);
  v10 = *nullsub_41(v34);
  v11 = a2[134];
  result = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v26 = result;
    swift_once();
    result = v26;
  }

  v13 = qword_1EA8387E8;
  if (is_mul_ok(result, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = result;
  swift_once();
  result = v27;
LABEL_6:
  v14 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v28 = result;
  swift_once();
  result = v28;
LABEL_8:
  if (!qword_1EA8431F0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v15 = *(v2 + 288);
  v16 = result * v13 / v14 / qword_1EA8431F0;
  if (!v15)
  {
    goto LABEL_12;
  }

  v17 = v16 - v15;
  if (v16 < v15)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = swift_beginAccess();
  if (v17 < a2[21])
  {
    return 0;
  }

LABEL_12:
  v18 = vcvtd_n_f64_u64(v10, 2uLL) / v11;
  if (v18 <= 1.0)
  {
    v19 = 1;
    goto LABEL_20;
  }

  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v18 >= 128)
  {
    v19 = 128;
  }

  else
  {
    v19 = v18;
  }

LABEL_20:
  v20 = *(v2 + 272);
  if (v20 == v19)
  {
    return 0;
  }

  *(v2 + 288) = v16;
  *(v2 + 272) = v19;
  v21 = *(v2 + 296);
  if ((v21 | v19) < 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v22 = a2[29];
  v29 = xmmword_182B04F30;
  v30 = v21;
  v31 = v19;
  v32 = v22;
  v33 = 0;
  result = sub_181F82F10(2u, &v29);
  v23 = *(v2 + 296);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  *(v2 + 296) = v25;
  if (v19 < v20)
  {
    v29 = xmmword_182B04F40;
    sub_181F82F10(2u, &v29);
  }

  return 1;
}

uint64_t sub_182297230(char a1, char *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a1)
  {
    swift_beginAccess();
    v13 = a4 + 16;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    swift_beginAccess();
    v13 = a4 + 104;
LABEL_5:
    v14 = sub_18229EFF8(v13, a5, a6, a7 & 1);
    goto LABEL_6;
  }

  if ((*(a4 + 240) & 0x10) != 0)
  {
    v16 = a2;
    swift_beginAccess();
    v19 = *(a4 + 192);
    v20 = *(v19 + 16);
    if (v20)
    {

      v21 = 0;
      v22 = v20 - 1;
      v23 = 32;
      while (1)
      {
        v24 = *(v19 + v23 + 16);
        v49[0] = *(v19 + v23);
        v49[1] = v24;
        v25 = *(v19 + v23 + 32);
        v26 = *(v19 + v23 + 48);
        v27 = *(v19 + v23 + 64);
        v50 = *(v19 + v23 + 80);
        v49[3] = v26;
        v49[4] = v27;
        v49[2] = v25;
        v28 = *(&v26 + 1);
        v29 = *(v19 + v23 + 48);
        v45 = *(v19 + v23 + 32);
        v46 = v29;
        v47 = *(v19 + v23 + 64);
        v48 = *(v19 + v23 + 80);
        v30 = *(v19 + v23 + 16);
        v43 = *(v19 + v23);
        v44 = v30;
        if (v27 == 1)
        {
          if (a3)
          {
            goto LABEL_22;
          }
        }

        else if ((a3 & 1) == 0 && v28 == v16)
        {
          goto LABEL_22;
        }

        v39 = v45;
        v40 = v46;
        v41 = v47;
        v42 = v48;
        v37 = v43;
        v38 = v44;
        sub_18206AD2C(v49, v36);
        sub_18206AD88(&v37);
        if (v22 == v21)
        {
          break;
        }

        ++v21;
        v23 += 88;
        if (v21 >= *(v19 + 16))
        {
          __break(1u);
LABEL_22:
          sub_18206AD2C(v49, &v37);

          v14 = sub_18229EFF8(&v43, a5, a6, a7 & 1);
          v39 = v45;
          v40 = v46;
          v41 = v47;
          v42 = v48;
          v37 = v43;
          v38 = v44;
          sub_18206AD88(&v37);
          return v14 & 1;
        }
      }
    }

    v8 = a3 & 1;
    swift_beginAccess();
    v7 = *(a4 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }
  }

  else
  {
    swift_beginAccess();
    v16 = *(a4 + 192);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v16;
    if (v17)
    {
      if (*(v16 + 2))
      {
LABEL_11:
        v14 = sub_18229EFF8((v16 + 32), a5, a6, a7 & 1);
        *(a4 + 192) = v16;
        goto LABEL_6;
      }
    }

    else
    {
      v16 = sub_182083548(v16);
      *(a4 + 192) = v16;
      if (*(v16 + 2))
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  v7 = sub_181F598B0(0, *(v7 + 2) + 1, 1, v7);
  *(a4 + 192) = v7;
LABEL_25:
  v33 = *(v7 + 2);
  v32 = *(v7 + 3);
  if (v33 >= v32 >> 1)
  {
    v7 = sub_181F598B0((v32 > 1), v33 + 1, 1, v7);
  }

  *(v7 + 2) = v33 + 1;
  v34 = &v7[88 * v33];
  *(v34 + 4) = MEMORY[0x1E69E7CC0];
  result = (v34 + 32);
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = -1;
  *(result + 48) = -1;
  *(result + 56) = v16;
  *(result + 64) = v8;
  v35 = *(&v43 + 3);
  *(result + 65) = v43;
  *(result + 68) = v35;
  *(result + 72) = 0;
  *(result + 80) = 1;
  *(a4 + 192) = v7;
  if (v33 >= *(v7 + 2))
  {
    __break(1u);
    return result;
  }

  v14 = sub_18229EFF8(result, a5, a6, a7 & 1);
  *(a4 + 192) = v7;
LABEL_6:
  swift_endAccess();
  return v14 & 1;
}

uint64_t sub_1822975B8(char a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    swift_beginAccess();
    *a5 = *(a4 + 64);
    return 1;
  }

  if (a1 == 1)
  {
    swift_beginAccess();
    *a5 = *(a4 + 152);
    return 1;
  }

  if ((*(a4 + 240) & 0x10) != 0)
  {
    v5 = a2;
    swift_beginAccess();
    v12 = a3;
    v9 = *(a4 + 192);
    v13 = *(v9 + 2);
    if (v13)
    {
      v14 = v9 + 96;
      do
      {
        if (*v14 == 1)
        {
          if (v12)
          {
            goto LABEL_16;
          }
        }

        else if ((v12 & 1) == 0 && *(v14 - 1) == v5)
        {
LABEL_16:
          *a5 = *(v14 - 2);
          return 1;
        }

        v14 += 88;
        --v13;
      }

      while (v13);
    }

    v6 = v12 & 1;
    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v9;
    if (result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(a4 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (*(v9 + 2))
      {
LABEL_8:
        *a5 = *(v9 + 10);
        *(a4 + 192) = v9;
        goto LABEL_22;
      }
    }

    else
    {
      v9 = sub_182083548(v9);
      *(a4 + 192) = v9;
      if (*(v9 + 2))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  result = sub_181F598B0(0, *(v9 + 2) + 1, 1, v9);
  v9 = result;
  *(a4 + 192) = result;
LABEL_18:
  v16 = *(v9 + 2);
  v17 = *(v9 + 3);
  v18 = v16 + 1;
  if (v16 >= v17 >> 1)
  {
    v24 = v16 + 1;
    v22 = v9;
    v23 = *(v9 + 2);
    result = sub_181F598B0((v17 > 1), v16 + 1, 1, v22);
    v16 = v23;
    v18 = v24;
    v19 = v5;
    v9 = result;
  }

  else
  {
    v19 = v5;
  }

  *(v9 + 2) = v18;
  v20 = &v9[88 * v16];
  *(v20 + 4) = MEMORY[0x1E69E7CC0];
  v21 = v20 + 32;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 5) = -1;
  *(v21 + 6) = -1;
  *(v21 + 7) = v19;
  v21[64] = v6;
  *(v21 + 65) = *v25;
  *(v21 + 17) = *&v25[3];
  *(v21 + 9) = 0;
  v21[80] = 1;
  *(a4 + 192) = v9;
  if (v16 >= *(v9 + 2))
  {
    __break(1u);
    return result;
  }

  *a5 = *(v21 + 6);
  *(a4 + 192) = v9;
LABEL_22:
  swift_endAccess();
  return 1;
}

uint64_t sub_182297830(unsigned __int8 a1, uint64_t a2, char a3, uint64_t a4, int64_t a5, uint64_t a6)
{
  if (a1 <= 1u)
  {
    swift_beginAccess();
    sub_182299348(a5, a6);
    goto LABEL_24;
  }

  if ((*(a4 + 240) & 0x10) != 0)
  {
    v7 = a2;
    swift_beginAccess();
    v14 = *(a4 + 192);
    v15 = *(v14 + 16);
    if (v15)
    {

      v16 = 0;
      v17 = v15 - 1;
      v18 = 32;
      while (1)
      {
        v19 = *(v14 + v18 + 16);
        v44[0] = *(v14 + v18);
        v44[1] = v19;
        v20 = *(v14 + v18 + 32);
        v21 = *(v14 + v18 + 48);
        v22 = *(v14 + v18 + 64);
        v45 = *(v14 + v18 + 80);
        v44[3] = v21;
        v44[4] = v22;
        v44[2] = v20;
        v23 = *(&v21 + 1);
        v24 = *(v14 + v18 + 48);
        v40 = *(v14 + v18 + 32);
        v41 = v24;
        v42 = *(v14 + v18 + 64);
        v43 = *(v14 + v18 + 80);
        v25 = *(v14 + v18 + 16);
        v38 = *(v14 + v18);
        v39 = v25;
        if (v22 == 1)
        {
          if (a3)
          {
            goto LABEL_17;
          }
        }

        else if ((a3 & 1) == 0 && v23 == v7)
        {
          goto LABEL_17;
        }

        v34 = v40;
        v35 = v41;
        v36 = v42;
        v37 = v43;
        v32 = v38;
        v33 = v39;
        sub_18206AD2C(v44, v31);
        sub_18206AD88(&v32);
        if (v17 == v16)
        {
          break;
        }

        ++v16;
        v18 += 88;
        if (v16 >= *(v14 + 16))
        {
          __break(1u);
LABEL_17:
          sub_18206AD2C(v44, &v32);

          sub_182299348(a5, a6);
          v34 = v40;
          v35 = v41;
          v36 = v42;
          v37 = v43;
          v32 = v38;
          v33 = v39;
          sub_18206AD88(&v32);
          return 1;
        }
      }
    }

    v6 = a3 & 1;
    swift_beginAccess();
    v11 = *(a4 + 192);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v11;
    if (result)
    {
LABEL_20:
      v28 = *(v11 + 2);
      v27 = *(v11 + 3);
      if (v28 >= v27 >> 1)
      {
        result = sub_181F598B0((v27 > 1), v28 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v28 + 1;
      v29 = &v11[88 * v28];
      *(v29 + 4) = MEMORY[0x1E69E7CC0];
      v29 += 32;
      *(v29 + 8) = 0u;
      *(v29 + 24) = 0u;
      *(v29 + 5) = -1;
      *(v29 + 6) = -1;
      *(v29 + 7) = v7;
      v29[64] = v6;
      v30 = *(&v38 + 3);
      *(v29 + 65) = v38;
      *(v29 + 17) = v30;
      *(v29 + 9) = 0;
      v29[80] = 1;
      *(a4 + 192) = v11;
      if (v28 >= *(v11 + 2))
      {
        __break(1u);
        return result;
      }

      goto LABEL_23;
    }

LABEL_28:
    result = sub_181F598B0(0, *(v11 + 2) + 1, 1, v11);
    v11 = result;
    *(a4 + 192) = result;
    goto LABEL_20;
  }

  swift_beginAccess();
  v11 = *(a4 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 192) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_182083548(v11);
    *(a4 + 192) = v11;
    if (*(v11 + 2))
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (!*(v11 + 2))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_23:
  sub_182299348(a5, a6);
  *(a4 + 192) = v11;
LABEL_24:
  swift_endAccess();
  return 1;
}

uint64_t sub_182297B84(char a1, char *a2, char a3, uint64_t a4)
{
  if (!a1)
  {
    swift_beginAccess();
    *(a4 + 96) = 1;
    return 1;
  }

  if (a1 == 1)
  {
    swift_beginAccess();
    *(a4 + 184) = 1;
    return 1;
  }

  if ((*(a4 + 240) & 0x10) == 0)
  {
    swift_beginAccess();
    v7 = *(a4 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (*(v7 + 2))
      {
LABEL_8:
        v7[112] = 1;
        *(a4 + 192) = v7;
LABEL_26:
        swift_endAccess();
        return 1;
      }
    }

    else
    {
      v7 = sub_182083548(v7);
      if (*(v7 + 2))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v7 = a2;
  swift_beginAccess();
  v10 = *(a4 + 192);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = 0;
    v13 = v11 - 1;
    v14 = 32;
    while (1)
    {
      v15 = *(v10 + v14 + 16);
      v40[0] = *(v10 + v14);
      v40[1] = v15;
      v16 = *(v10 + v14 + 32);
      v17 = *(v10 + v14 + 48);
      v18 = *(v10 + v14 + 64);
      v41 = *(v10 + v14 + 80);
      v40[3] = v17;
      v40[4] = v18;
      v40[2] = v16;
      v19 = *(&v17 + 1);
      v20 = *(v10 + v14 + 48);
      v37 = *(v10 + v14 + 32);
      v38 = v20;
      v39 = *(v10 + v14 + 64);
      v21 = *(v10 + v14 + 16);
      v35 = *(v10 + v14);
      v36 = v21;
      if (v18 == 1)
      {
        if (a3)
        {
          goto LABEL_19;
        }
      }

      else if ((a3 & 1) == 0 && v19 == v7)
      {
        goto LABEL_19;
      }

      v31 = v37;
      v32 = v38;
      v33 = v39;
      v29 = v35;
      v30 = v36;
      v34 = v41;
      sub_18206AD2C(v40, v28);
      sub_18206AD88(&v29);
      if (v13 == v12)
      {
        break;
      }

      ++v12;
      v14 += 88;
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_19:
        sub_18206AD2C(v40, &v29);

        v31 = v37;
        v32 = v38;
        v33 = v39;
        v29 = v35;
        v30 = v36;
        v34 = 1;
        sub_18206AD88(&v29);
        return 1;
      }
    }
  }

  v5 = a3 & 1;
  swift_beginAccess();
  v4 = *(a4 + 192);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 192) = v4;
  if ((result & 1) == 0)
  {
LABEL_30:
    result = sub_181F598B0(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(a4 + 192) = result;
  }

  v24 = *(v4 + 16);
  v23 = *(v4 + 24);
  if (v24 >= v23 >> 1)
  {
    result = sub_181F598B0((v23 > 1), v24 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v24 + 1;
  v25 = v4 + 88 * v24;
  *(v25 + 32) = MEMORY[0x1E69E7CC0];
  v26 = v25 + 32;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 40) = -1;
  *(v26 + 48) = -1;
  *(v26 + 56) = v7;
  *(v26 + 64) = v5;
  v27 = *(&v29 + 3);
  *(v26 + 65) = v29;
  *(v26 + 68) = v27;
  *(v26 + 72) = 0;
  *(v26 + 80) = 1;
  *(a4 + 192) = v4;
  if (v24 < *(v4 + 16))
  {
    *(v26 + 80) = 1;
    *(a4 + 192) = v4;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_182297EA8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    swift_beginAccess();
    if (*(a4 + 64) < a5)
    {
      *(a4 + 64) = a5;
    }

    return 1;
  }

  if (a1 == 1)
  {
    swift_beginAccess();
    if (*(a4 + 152) < a5)
    {
      *(a4 + 152) = a5;
    }

    return 1;
  }

  if ((*(a4 + 240) & 0x10) == 0)
  {
    swift_beginAccess();
    v10 = *(a4 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (*(v10 + 2))
      {
LABEL_10:
        if (*(v10 + 10) < a5)
        {
          *(v10 + 10) = a5;
        }

        *(a4 + 192) = v10;
LABEL_35:
        swift_endAccess();
        return 1;
      }
    }

    else
    {
      v10 = sub_182083548(v10);
      if (*(v10 + 2))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v7 = a2;
  swift_beginAccess();
  v13 = *(a4 + 192);
  v14 = *(v13 + 16);
  if (v14)
  {

    v15 = 0;
    v16 = v13 + 88;
    do
    {
      v17 = *(v16 - 40);
      v41[0] = *(v16 - 56);
      v41[1] = v17;
      v18 = *(v16 - 24);
      v19 = *(v16 - 8);
      v20 = *(v16 + 8);
      v42 = *(v16 + 24);
      v41[3] = v19;
      v41[4] = v20;
      v41[2] = v18;
      v21 = v19;
      v22 = *(v16 - 40);
      v38 = *(v16 - 56);
      v39 = v22;
      v40 = *(v16 - 24);
      v37[0] = *v16;
      *(v37 + 9) = *(v16 + 9);
      if (v20 == 1)
      {
        if (a3)
        {
          goto LABEL_23;
        }
      }

      else if ((a3 & 1) == 0 && *(&v21 + 1) == v7)
      {
        goto LABEL_23;
      }

      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v21;
      v36[0] = v37[0];
      *(v36 + 9) = *(v37 + 9);
      sub_18206AD2C(v41, v31);
      sub_18206AD88(&v32);
      if (v14 - 1 == v15)
      {

        goto LABEL_28;
      }

      ++v15;
      v16 += 88;
    }

    while (v15 < *(v13 + 16));
    __break(1u);
LABEL_23:
    sub_18206AD2C(v41, &v32);

    if (v21 <= a5)
    {
      v23 = a5;
    }

    else
    {
      v23 = v21;
    }

    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v23;
    v36[0] = v37[0];
    *(v36 + 9) = *(v37 + 9);
    sub_18206AD88(&v32);
    return 1;
  }

LABEL_28:
  v6 = a3 & 1;
  swift_beginAccess();
  v5 = *(a4 + 192);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 192) = v5;
  if ((result & 1) == 0)
  {
LABEL_39:
    result = sub_181F598B0(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *(a4 + 192) = result;
  }

  v26 = *(v5 + 16);
  v25 = *(v5 + 24);
  if (v26 >= v25 >> 1)
  {
    result = sub_181F598B0((v25 > 1), v26 + 1, 1, v5);
    v27 = v7;
    v5 = result;
  }

  else
  {
    v27 = v7;
  }

  *(v5 + 16) = v26 + 1;
  v28 = v5 + 88 * v26;
  *(v28 + 32) = MEMORY[0x1E69E7CC0];
  v29 = v28 + 32;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  *(v29 + 40) = -1;
  *(v29 + 48) = -1;
  *(v29 + 56) = v27;
  *(v29 + 64) = v6;
  v30 = *(&v32 + 3);
  *(v29 + 65) = v32;
  *(v29 + 68) = v30;
  *(v29 + 72) = 0;
  *(v29 + 80) = 1;
  *(a4 + 192) = v5;
  if (v26 < *(v5 + 16))
  {
    if (*(v29 + 48) < a5)
    {
      *(v29 + 48) = a5;
    }

    *(a4 + 192) = v5;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_182298238(char a1, char *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    swift_beginAccess();
    if (*(a4 + 56) < a5)
    {
      *(a4 + 56) = a5;
    }

    return 1;
  }

  if (a1 == 1)
  {
    swift_beginAccess();
    if (*(a4 + 144) < a5)
    {
      *(a4 + 144) = a5;
    }

    return 1;
  }

  if ((*(a4 + 240) & 0x10) == 0)
  {
    swift_beginAccess();
    v9 = *(a4 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (*(v9 + 2))
      {
LABEL_10:
        if (*(v9 + 9) < a5)
        {
          *(v9 + 9) = a5;
        }

        *(a4 + 192) = v9;
LABEL_35:
        swift_endAccess();
        return 1;
      }
    }

    else
    {
      v9 = sub_182083548(v9);
      if (*(v9 + 2))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v9 = a2;
  swift_beginAccess();
  v12 = *(a4 + 192);
  v13 = *(v12 + 16);
  if (v13)
  {

    v14 = 0;
    v15 = (v12 + 80);
    v16 = v13 - 1;
    do
    {
      v17 = *(v15 - 2);
      v46[0] = *(v15 - 3);
      v46[1] = v17;
      v18 = *(v15 - 1);
      v19 = *v15;
      v20 = v15[1];
      v47 = *(v15 + 32);
      v46[3] = v19;
      v46[4] = v20;
      v46[2] = v18;
      v21 = *(&v19 + 1);
      v22 = *(&v18 + 1);
      v23 = *(v15 - 2);
      v43 = *(v15 - 3);
      v44 = v23;
      v45 = *(v15 - 2);
      v24 = v15[1];
      v40 = *v15;
      v41 = v24;
      v42 = *(v15 + 32);
      if (v20 == 1)
      {
        if (a3)
        {
          goto LABEL_23;
        }
      }

      else if ((a3 & 1) == 0 && v21 == v9)
      {
        goto LABEL_23;
      }

      v33 = v43;
      v34 = v44;
      v35 = v45;
      v36 = *(&v18 + 1);
      v37 = v40;
      v38 = v41;
      v39 = v42;
      sub_18206AD2C(v46, v32);
      sub_18206AD88(&v33);
      if (v16 == v14)
      {

        goto LABEL_28;
      }

      ++v14;
      v15 = (v15 + 88);
    }

    while (v14 < *(v12 + 16));
    __break(1u);
LABEL_23:
    sub_18206AD2C(v46, &v33);

    if (v22 <= a5)
    {
      v25 = a5;
    }

    else
    {
      v25 = v22;
    }

    v33 = v43;
    v34 = v44;
    v35 = v45;
    v36 = v25;
    v37 = v40;
    v38 = v41;
    v39 = v42;
    sub_18206AD88(&v33);
    return 1;
  }

LABEL_28:
  v6 = a3 & 1;
  swift_beginAccess();
  v5 = *(a4 + 192);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 192) = v5;
  if ((result & 1) == 0)
  {
LABEL_39:
    result = sub_181F598B0(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *(a4 + 192) = result;
  }

  v28 = *(v5 + 16);
  v27 = *(v5 + 24);
  if (v28 >= v27 >> 1)
  {
    result = sub_181F598B0((v27 > 1), v28 + 1, 1, v5);
    v5 = result;
  }

  v29 = v5 + 88 * v28;
  v30 = MEMORY[0x1E69E7CC0];
  *(v29 + 72) = -1;
  v31 = v29 + 72;
  *(v5 + 16) = v28 + 1;
  *(v31 - 40) = v30;
  *(v31 - 32) = 0u;
  *(v31 - 16) = 0u;
  *(v31 + 8) = -1;
  *(v31 + 16) = v9;
  *(v31 + 24) = v6;
  LODWORD(v30) = *(&v33 + 3);
  *(v31 + 25) = v33;
  *(v31 + 28) = v30;
  *(v31 + 32) = 0;
  *(v31 + 40) = 1;
  *(a4 + 192) = v5;
  if (v28 < *(v5 + 16))
  {
    if (*v31 < a5)
    {
      *v31 = a5;
    }

    *(a4 + 192) = v5;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_18229859C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  if ((*(v3 + 240) & 0x10) != 0)
  {
    v8 = 0;
    if ((*(v3 + 240) & 1) == 0)
    {
      return v8 & 1;
    }
  }

  else
  {
    if (!*(result + 952))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = *(a3 + 8);
    v14 = *a3;
    v15 = v6;

    v8 = sub_18229D5D4(v7, 0, 1, a2, &v14);

    if ((*(v4 + 240) & 1) == 0)
    {
      return v8 & 1;
    }
  }

  v9 = *(v4 + 232);
  if (!v9)
  {
    goto LABEL_14;
  }

  if ((*(v4 + 225) & 1) == 0)
  {
    v10 = sub_181F8BDB8(*(v4 + 224));
    if ((v11 & 1) == 0)
    {
      v12 = v10;
      swift_beginAccess();
      v13 = *(v9 + 64);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 64) = v13;
      if (result)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_18208355C(v13);
        v13 = result;
        if ((v12 & 0x8000000000000000) == 0)
        {
LABEL_11:
          if (v12 < *(v13 + 16))
          {
            *(v13 + 56 * v12 + 40) = 0;
            *(v9 + 64) = v13;
            swift_endAccess();
            if ((*(v9 + 58) & 1) == 0)
            {
              sub_181F8A570();
            }

            goto LABEL_14;
          }

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_14:
    if (*(v4 + 240))
    {
      *(v4 + 240) &= ~1u;
    }

    return v8 & 1;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1822986E8(uint64_t a1, char *a2, char *a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, char a8)
{
  v9 = v8;
  v17 = a1;
  if (sub_181F840C0(a1))
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      return 1;
    }

    v9 = 0x8000000182BE3CB0;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  if (!v17)
  {
    swift_beginAccess();
    v20 = *(v8 + 200);

    v18 = sub_18229A3B8(0, v20, 0, a4, a5, a6, a7, a8 & 1) > 0;
    *(v8 + 96) = 0;
    goto LABEL_33;
  }

  if (v17 == 1)
  {
    swift_beginAccess();
    v19 = *(v8 + 200);

    v18 = sub_18229A3B8(1uLL, v19, 0, a4, a5, a6, a7, a8 & 1) > 0;
    *(v8 + 184) = 0;
    goto LABEL_33;
  }

  if ((*(v8 + 240) & 0x10) != 0)
  {
    v63 = a5;
    oslog = a6;
    v17 = &v68;
    swift_beginAccess();
    v22 = *(v8 + 192);
    v23 = *(v22 + 16);
    if (v23)
    {
      v61 = a7;

      v24 = 0;
      v25 = v23 - 1;
      a7 = 32;
      while (1)
      {
        v26 = *(v22 + a7 + 16);
        v80[0] = *(v22 + a7);
        v80[1] = v26;
        v27 = *(v22 + a7 + 32);
        v28 = *(v22 + a7 + 48);
        v29 = *(v22 + a7 + 64);
        v81 = *(v22 + a7 + 80);
        v80[3] = v28;
        v80[4] = v29;
        v80[2] = v27;
        v30 = *(&v28 + 1);
        v31 = *(v22 + a7 + 48);
        v76 = *(v22 + a7 + 32);
        v77 = v31;
        v78 = *(v22 + a7 + 64);
        v79 = *(v22 + a7 + 80);
        v32 = *(v22 + a7 + 16);
        v74 = *(v22 + a7);
        v75 = v32;
        if (v29 == 1)
        {
          if (a3)
          {
            goto LABEL_26;
          }
        }

        else if ((a3 & 1) == 0 && v30 == a2)
        {
LABEL_26:
          sub_18206AD2C(v80, &v68);

          v33 = sub_18229A3B8(2uLL, *(v9 + 200), 0, a4, v63, oslog, v61, a8 & 1);
          v79 = 0;
          v18 = v33 > 0;
          v73 = 0;
          v70 = v76;
          v71 = v77;
          v72 = v78;
          v68 = v74;
          v69 = v75;
          sub_18206AD88(&v68);
          goto LABEL_34;
        }

        v70 = v76;
        v71 = v77;
        v72 = v78;
        v73 = v79;
        v68 = v74;
        v69 = v75;
        sub_18206AD2C(v80, v67);
        sub_18206AD88(&v68);
        if (v25 == v24)
        {
          break;
        }

        ++v24;
        a7 += 88;
        if (v24 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }
      }

      a7 = v61;
    }

    else
    {
LABEL_25:
    }

    LOBYTE(a6) = a3 & 1;
    swift_beginAccess();
    a3 = *(v9 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 192) = a3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }
  }

  else
  {
    swift_beginAccess();
    a2 = *(v8 + 192);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 192) = a2;
    if (v21)
    {
      if (*(a2 + 2))
      {
LABEL_14:
        v18 = sub_18229A3B8(2uLL, *(v8 + 200), 0, a4, a5, a6, a7, a8 & 1) > 0;
        a2[112] = 0;
        *(v8 + 192) = a2;
        goto LABEL_33;
      }
    }

    else
    {
      a2 = sub_182083548(a2);
      *(v8 + 192) = a2;
      if (*(a2 + 2))
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  a3 = sub_181F598B0(0, *(a3 + 2) + 1, 1, a3);
  *(v9 + 192) = a3;
LABEL_29:
  v36 = *(a3 + 2);
  v35 = *(a3 + 3);
  if (v36 >= v35 >> 1)
  {
    a3 = sub_181F598B0((v35 > 1), v36 + 1, 1, a3);
  }

  *(a3 + 2) = v36 + 1;
  v37 = &a3[88 * v36];
  *(v37 + 4) = MEMORY[0x1E69E7CC0];
  v38 = v37 + 32;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  *(v38 + 5) = -1;
  *(v38 + 6) = -1;
  *(v38 + 7) = a2;
  v38[64] = a6;
  v39 = *(v17 + 99);
  *(v38 + 65) = v74;
  *(v38 + 17) = v39;
  *(v38 + 9) = 0;
  v38[80] = 1;
  *(v9 + 192) = a3;
  if (v36 >= *(a3 + 2))
  {
    __break(1u);
LABEL_45:
    swift_once();
LABEL_37:
    v41 = sub_182AD2698();
    __swift_project_value_buffer(v41, qword_1EA843418);
    v42 = swift_allocObject();
    *(v42 + 16) = "assemble(for:spaceID:packetBuilder:ecnCounter:)";
    *(v42 + 24) = 47;
    *(v42 + 32) = 2;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F8C258;
    *(v43 + 24) = v42;
    v44 = swift_allocObject();
    *(v44 + 16) = 1564427099;
    *(v44 + 24) = 0xE400000000000000;
    v45 = swift_allocObject();
    *(v45 + 16) = 0xD000000000000020;
    *(v45 + 24) = v9;
    osloga = sub_182AD2678();
    v46 = sub_182AD38A8();
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v62 = swift_allocObject();
    *(v62 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C264;
    *(v47 + 24) = v43;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C27C;
    *(v48 + 24) = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_181F8C26C;
    *(v51 + 24) = v44;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_181F8C718;
    *(v52 + 24) = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_181F8C26C;
    *(v55 + 24) = v45;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_181F8C718;
    *(v56 + 24) = v55;
    if (os_log_type_enabled(osloga, v46))
    {
      v59 = v52;
      v60 = v56;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v68 = 0;
      *v57 = 770;
      v67[0] = v58;
      *&v74 = v57 + 2;
      *&v80[0] = sub_181F8C274;
      *(&v80[0] + 1) = v64;
      sub_181F73AE0(v80, &v74, &v68, v67);

      *&v80[0] = sub_181F8C728;
      *(&v80[0] + 1) = v62;
      sub_181F73AE0(v80, &v74, &v68, v67);

      *&v80[0] = sub_181F8C284;
      *(&v80[0] + 1) = v48;
      sub_181F73AE0(v80, &v74, &v68, v67);

      *&v80[0] = sub_181F8C728;
      *(&v80[0] + 1) = v49;
      sub_181F73AE0(v80, &v74, &v68, v67);

      *&v80[0] = sub_181F8C728;
      *(&v80[0] + 1) = v50;
      sub_181F73AE0(v80, &v74, &v68, v67);

      *&v80[0] = sub_181F8C714;
      *(&v80[0] + 1) = v59;
      sub_181F73AE0(v80, &v74, &v68, v67);

      *&v80[0] = sub_181F8C728;
      *(&v80[0] + 1) = v53;
      sub_181F73AE0(v80, &v74, &v68, v67);

      *&v80[0] = sub_181F8C728;
      *(&v80[0] + 1) = v54;
      sub_181F73AE0(v80, &v74, &v68, v67);

      *&v80[0] = sub_181F8C714;
      *(&v80[0] + 1) = v60;
      sub_181F73AE0(v80, &v74, &v68, v67);

      _os_log_impl(&dword_181A37000, osloga, v46, "%s %s %s", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v58, -1, -1);
      MEMORY[0x1865DF520](v57, -1, -1);
    }

    else
    {
    }

    return 1;
  }

  v18 = sub_18229A3B8(2uLL, *(v9 + 200), 0, a4, v63, oslog, a7, a8 & 1) > 0;
  v38[80] = 0;
  *(v9 + 192) = a3;
LABEL_33:
  swift_endAccess();
LABEL_34:

  return v18;
}

void sub_18229927C()
{
  v1 = *v0;
  if (*(*v0 + 2) >= 2uLL)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_13:
      v1 = sub_182083598(v1);
    }

    v2 = *(v1 + 2);
    v3 = 1;
    do
    {
      while (1)
      {
        if (v3 >= v2)
        {
          __break(1u);
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

        v4 = &v1[16 * v3 + 32];
        if (__OFSUB__(*v4, 1))
        {
          goto LABEL_12;
        }

        if (*(v4 - 1) != *v4 - 1)
        {
          break;
        }

        *(v4 - 1) = *(v4 + 1);
        memmove(v4, v4 + 16, 16 * (--v2 - v3));
        *(v1 + 2) = v2;
        if (v3 >= v2)
        {
          goto LABEL_9;
        }
      }

      ++v3;
    }

    while (v3 < v2);
LABEL_9:
    *v0 = v1;
  }
}

void sub_182299348(int64_t a1, uint64_t a2)
{
  v4 = v2;
  if (qword_1EA837250 == -1)
  {
    goto LABEL_2;
  }

LABEL_68:
  v35 = a2;
  swift_once();
  a2 = v35;
LABEL_2:
  if (byte_1EA843430 == 1)
  {
    LOBYTE(v6) = a2;
    if (__nwlog_is_datapath_logging_enabled())
    {
LABEL_70:
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x6E69646E65707061, 0xED0000206E702067);
      v73 = a1;
      v36 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v36);

      MEMORY[0x1865D9CA0](0x61707320726F6620, 0xEB00000000206563);
      LOBYTE(v73) = v6;
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0x2065636170732820, 0xEB00000000204449);
      v37 = sub_181F5F2C0(*(v4 + 56), *(v4 + 64));
      MEMORY[0x1865D9CA0](v37);

      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      v16 = v74;
      v7 = v75;
      if (qword_1EA837248 != -1)
      {
        goto LABEL_95;
      }

      goto LABEL_71;
    }
  }

  while (1)
  {
    v7 = *v4;
    v9 = *v4 + 16;
    v8 = *v9;
    if (*v9)
    {
      break;
    }

    v10 = mach_continuous_time();
    v11 = &__nwlog_fault_add_description_to_list(char const*)::mutex.__opaque[48];
    if (qword_1EA837030 != -1)
    {
      goto LABEL_78;
    }

    while (1)
    {
      v12 = &OBJC_PROTOCOL___OS_nw_connection_group;
      v13 = qword_1EA8387E8;
      if (is_mul_ok(v10, qword_1EA8387E8))
      {
        if (qword_1EA837038 == -1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        __break(1u);
      }

      v58 = v10;
      v59 = v11;
      v3 = &OBJC_PROTOCOL___OS_nw_connection_group;
      swift_once();
      v12 = &OBJC_PROTOCOL___OS_nw_connection_group;
      v11 = v59;
      v10 = v58;
LABEL_9:
      v6 = &OBJC_PROTOCOL___OS_nw_connection_group;
      v14 = qword_1EA8387F0;
      if (qword_1EA8387F0)
      {
        v3 = &__nwlog_fault_add_description_to_list(char const*)::mutex.__opaque[48];
        if (qword_1EA837010 == -1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __break(1u);
      }

      v70 = v10;
      v60 = v11;
      swift_once();
      v12 = &OBJC_PROTOCOL___OS_nw_connection_group;
      v11 = v60;
      v10 = v70;
LABEL_11:
      if (!qword_1EA8431F0)
      {
        __break(1u);
        goto LABEL_84;
      }

      *(v4 + 8) = v10 * v13 / v14 / qword_1EA8431F0;
      v8 = *v9;
      if (*v9)
      {
        v6 = 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_14;
      }

      v16 = v12;
      v15 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_181F59D00(0, 1, 1, v7);
      }

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      if (v27 >= v26 >> 1)
      {
        v7 = sub_181F59D00((v26 > 1), v27 + 1, 1, v7);
      }

      *(v7 + 2) = v27 + 1;
      *&v7[16 * v27 + 32] = vdupq_n_s64(a1);
      *v4 = v7;
      v28 = mach_continuous_time();
      if (*(v15 + 48) != -1)
      {
        v61 = v28;
        swift_once();
        v28 = v61;
      }

      v29 = *(v16 + 253);
      if (is_mul_ok(v28, v29))
      {
        if (qword_1EA837038 == -1)
        {
          v30 = qword_1EA8387F0;
          if (!qword_1EA8387F0)
          {
            goto LABEL_87;
          }

          goto LABEL_50;
        }
      }

      else
      {
        __break(1u);
      }

      v62 = v28;
      swift_once();
      v28 = v62;
      v30 = qword_1EA8387F0;
      if (!qword_1EA8387F0)
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_50:
      if (*(v3 + 2) == -1)
      {
        v31 = qword_1EA8431F0;
        if (qword_1EA8431F0)
        {
          goto LABEL_52;
        }

        goto LABEL_89;
      }

LABEL_88:
      v6 = v28;
      swift_once();
      v28 = v6;
      v31 = qword_1EA8431F0;
      if (qword_1EA8431F0)
      {
LABEL_52:
        *(v4 + 8) = v28 * v29 / v30 / v31;
        v6 = 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_53;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      v7 = sub_182083598(v7);
LABEL_55:
      if (v16 >= *(v7 + 2))
      {
        __break(1u);
LABEL_92:
        v7 = sub_182083598(v7);
        goto LABEL_60;
      }

      v32 = &v7[v15 - 8];
      v33 = *v32 - 1;
      if (!__OFSUB__(*v32, 1))
      {
        goto LABEL_62;
      }

      __break(1u);
LABEL_59:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_92;
      }

LABEL_60:
      if (v16 >= *(v7 + 2))
      {
        break;
      }

      v32 = &v7[v15];
      v34 = *&v7[v15];
      v18 = __OFADD__(v34, 1);
      v33 = v34 + 1;
      if (v18)
      {
        goto LABEL_94;
      }

LABEL_62:
      *v32 = v33;
      *v4 = v7;
      sub_18229927C();
      if (v6 >= a1)
      {
        goto LABEL_53;
      }

LABEL_33:
      v10 = mach_continuous_time();
      if (qword_1EA837030 != -1)
      {
        v53 = v10;
        swift_once();
        v10 = v53;
      }

      v9 = qword_1EA8387E8;
      if (is_mul_ok(v10, qword_1EA8387E8))
      {
        if (qword_1EA837038 == -1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        __break(1u);
      }

      v54 = v10;
      swift_once();
      v10 = v54;
LABEL_37:
      v25 = qword_1EA8387F0;
      if (!qword_1EA8387F0)
      {
        __break(1u);
LABEL_76:
        v55 = v10;
        swift_once();
        v10 = v55;
        goto LABEL_39;
      }

      if (qword_1EA837010 != -1)
      {
        goto LABEL_76;
      }

LABEL_39:
      if (qword_1EA8431F0)
      {
        *(v4 + 8) = v10 * v9 / v25 / qword_1EA8431F0;
        goto LABEL_53;
      }

      __break(1u);
LABEL_78:
      v56 = v10;
      v57 = v11;
      swift_once();
      v11 = v57;
      v10 = v56;
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    swift_once();
LABEL_71:
    v38 = sub_182AD2698();
    __swift_project_value_buffer(v38, qword_1EA843418);
    v39 = swift_allocObject();
    *(v39 + 16) = "append(_:packetNumberSpace:)";
    *(v39 + 24) = 28;
    *(v39 + 32) = 2;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_181F8C724;
    *(v40 + 24) = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = 1564427099;
    *(v41 + 24) = 0xE400000000000000;
    v42 = swift_allocObject();
    *(v42 + 16) = v16;
    *(v42 + 24) = v7;

    log = sub_182AD2678();
    v69 = sub_182AD38A8();
    v67 = swift_allocObject();
    *(v67 + 16) = 32;
    v65 = swift_allocObject();
    *(v65 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F8C71C;
    *(v43 + 24) = v40;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_181F8C718;
    *(v44 + 24) = v43;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F8C720;
    *(v46 + 24) = v41;
    v3 = swift_allocObject();
    *(v3 + 2) = sub_181F8C718;
    *(v3 + 3) = v46;
    v47 = swift_allocObject();
    *(v47 + 16) = 32;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_181F8C720;
    *(v49 + 24) = v42;
    v14 = log;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_181F8C718;
    *(v50 + 24) = v49;
    if (os_log_type_enabled(log, v69))
    {
      v63 = v50;
      v64 = v48;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v71 = v52;
      v72 = 0;
      *v51 = 770;
      v73 = v51 + 2;
      v74 = sub_181F8C728;
      v75 = v67;
      sub_181F73AE0(&v74, &v73, &v72, &v71);

      v74 = sub_181F8C728;
      v75 = v65;
      sub_181F73AE0(&v74, &v73, &v72, &v71);

      v74 = sub_181F8C714;
      v75 = v44;
      sub_181F73AE0(&v74, &v73, &v72, &v71);

      v74 = sub_181F8C728;
      v75 = v66;
      sub_181F73AE0(&v74, &v73, &v72, &v71);

      v74 = sub_181F8C728;
      v75 = v45;
      sub_181F73AE0(&v74, &v73, &v72, &v71);

      v74 = sub_181F8C714;
      v75 = v3;
      sub_181F73AE0(&v74, &v73, &v72, &v71);

      v74 = sub_181F8C728;
      v75 = v47;
      sub_181F73AE0(&v74, &v73, &v72, &v71);

      v74 = sub_181F8C728;
      v75 = v64;
      sub_181F73AE0(&v74, &v73, &v72, &v71);

      v74 = sub_181F8C714;
      v75 = v63;
      sub_181F73AE0(&v74, &v73, &v72, &v71);

      _os_log_impl(&dword_181A37000, log, v69, "%s %s %s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v52, -1, -1);
      MEMORY[0x1865DF520](v51, -1, -1);

      continue;
    }

LABEL_84:
  }

  v6 = *(v9 + 16 * v8 + 8);
LABEL_14:
  v15 = 16 * v8 + 24;
  v16 = (v8 - 1);
  while (1)
  {
    if (v8 < v16 + 1)
    {
      goto LABEL_65;
    }

    if (v16 >= v8)
    {
      goto LABEL_66;
    }

    v17 = *&v7[v15 - 8];
    if (v17 <= a1 && *&v7[v15] >= a1)
    {
      break;
    }

    if (v17)
    {
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v18)
      {
        goto LABEL_67;
      }

      if (v19 == a1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_55;
      }
    }

    v20 = *&v7[v15];
    if (v20 != 0x3FFFFFFFFFFFFFFFLL)
    {
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_70;
      }

      if (v20 + 1 == a1)
      {
        goto LABEL_59;
      }
    }

    if (v16)
    {
      v15 -= 16;
      v16 = (v16 - 1);
      if (v20 >= a1)
      {
        continue;
      }
    }

    v21 = &v7[16 * v8 + 24];
    v22 = v8;
    while (1)
    {
      v23 = v22;
      if (!v22)
      {
LABEL_31:
        sub_181FCCA64(v23, v23, a1, a1);
        goto LABEL_32;
      }

      --v22;
      if (v23 - 1 >= v8)
      {
        break;
      }

      v24 = *v21;
      v21 -= 16;
      if (v24 < a1)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_32:
  if (v6 < a1)
  {
    goto LABEL_33;
  }

LABEL_53:
  sub_18229A0D0(a1, v6);
}

void sub_18229A0D0(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x3FFFFFFFFFFFFFFFLL)
  {
    v3 = *(v2 + 72);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (!v4)
    {
LABEL_3:
      *(v2 + 72) = v5;
      return;
    }
  }

  else
  {
    if (a1 == a2)
    {
      return;
    }

    if (__OFADD__(a2, 1))
    {
      goto LABEL_13;
    }

    if (a2 + 1 == a1)
    {
      if (a1 >= a2)
      {
        return;
      }

      goto LABEL_14;
    }

    v6 = *(v2 + 72);
    v4 = __OFADD__(v6, 1);
    v5 = v6 + 1;
    if (!v4)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0x754E74656B636170, 0xED0000207265626DLL);
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](0x7365646C6F203C20, 0xEA00000000002074);
  sub_182AD3E18();
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843418);

  v8 = sub_182AD2678();
  v9 = sub_182AD38C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315650;
    v12 = sub_182AD3BF8();
    v14 = sub_181C64FFC(v12, v13, v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v16);
    *(v10 + 22) = 2080;
    v15 = sub_181C64FFC(0, 0xE000000000000000, v16);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_18229A3B8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, char a8)
{
  v11 = v8[7];
  LODWORD(v12) = *(v8 + 64);
  if ((v12 & 1) == 0 && a1 != 2)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843418);
    v14 = sub_182AD2678();
    v15 = sub_182AD38C8();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_9;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v184 = v17;
    *v16 = 136315650;
    v18 = sub_182AD3BF8();
    v20 = sub_181C64FFC(v18, v19, &v184);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v184);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_181C64FFC(0xD000000000000031, 0x8000000182BE3D30, &v184);
    _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
    swift_arrayDestroy();
    v21 = v17;
LABEL_7:
    MEMORY[0x1865DF520](v21, -1, -1);
    v22 = v16;
LABEL_8:
    MEMORY[0x1865DF520](v22, -1, -1);
LABEL_9:

    return 0;
  }

  v23 = *v8;
  v24 = &unk_1EA843000;
  if (!(*v8)[2].isa || *(v8 + 80) != 1)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      return 0;
    }

    *&v184 = 0;
    *(&v184 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BE3D70);
    LOBYTE(v179) = a1;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BE3D90);
    if (*(v8 + 80))
    {
      v35 = 1702195828;
    }

    else
    {
      v35 = 0x65736C6166;
    }

    if (*(v8 + 80))
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    MEMORY[0x1865D9CA0](v35, v36);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v37 = v184;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v38 = sub_182AD2698();
    __swift_project_value_buffer(v38, qword_1EA843418);
    v39 = swift_allocObject();
    *(v39 + 16) = "build(packetNumberSpace:delayExponent:delaySize:packetBuilder:ecnCounter:)";
    *(v39 + 24) = 74;
    *(v39 + 32) = 2;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_181F8C724;
    *(v40 + 24) = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = 1564427099;
    *(v41 + 24) = 0xE400000000000000;
    v42 = swift_allocObject();
    *(v42 + 16) = v37;

    v43 = sub_182AD2678();
    v44 = sub_182AD38A8();
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v156 = swift_allocObject();
    *(v156 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F8C71C;
    *(v46 + 24) = v40;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C718;
    *(v47 + 24) = v46;
    v48 = swift_allocObject();
    *(v48 + 16) = 32;
    v159 = swift_allocObject();
    *(v159 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_181F8C720;
    *(v49 + 24) = v41;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_181F8C718;
    *(v50 + 24) = v49;
    v163 = swift_allocObject();
    *(v163 + 16) = 32;
    v167 = swift_allocObject();
    *(v167 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_181F8C720;
    *(v51 + 24) = v42;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_181F8C718;
    *(v52 + 24) = v51;
    v151 = v44;
    v53 = v43;
    if (!os_log_type_enabled(v43, v44))
    {

      return 0;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v169[0] = 0;
    *v54 = 770;
    *&v194 = v55;
    *&v179 = v54 + 2;
    *&v184 = sub_181F8C728;
    *(&v184 + 1) = v45;
    sub_181F73AE0(&v184, &v179, v169, &v194);

    *&v184 = sub_181F8C728;
    *(&v184 + 1) = v156;
    sub_181F73AE0(&v184, &v179, v169, &v194);

    *&v184 = sub_181F8C714;
    *(&v184 + 1) = v47;
    sub_181F73AE0(&v184, &v179, v169, &v194);

    *&v184 = sub_181F8C728;
    *(&v184 + 1) = v48;
    sub_181F73AE0(&v184, &v179, v169, &v194);

    *&v184 = sub_181F8C728;
    *(&v184 + 1) = v159;
    sub_181F73AE0(&v184, &v179, v169, &v194);

    *&v184 = sub_181F8C714;
    *(&v184 + 1) = v50;
    sub_181F73AE0(&v184, &v179, v169, &v194);

    *&v184 = sub_181F8C728;
    *(&v184 + 1) = v163;
    sub_181F73AE0(&v184, &v179, v169, &v194);

    *&v184 = sub_181F8C728;
    *(&v184 + 1) = v167;
    sub_181F73AE0(&v184, &v179, v169, &v194);

    *&v184 = sub_181F8C714;
    *(&v184 + 1) = v52;
    sub_181F73AE0(&v184, &v179, v169, &v194);

    v14 = v53;
    _os_log_impl(&dword_181A37000, v53, v151, "%s %s %s", v54, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v55, -1, -1);
    v22 = v54;
    goto LABEL_8;
  }

  v25 = v8[1];
  if (!v25)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      return 0;
    }

    *&v184 = 0;
    *(&v184 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000024, 0x8000000182BE3DD0);
    LOBYTE(v179) = a1;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v26 = v184;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v27 = sub_182AD2698();
    __swift_project_value_buffer(v27, qword_1EA843418);

    v14 = sub_182AD2678();
    v28 = sub_182AD38A8();

    if (!os_log_type_enabled(v14, v28))
    {

      goto LABEL_9;
    }

    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v184 = v29;
    *v16 = 136315650;
    v30 = sub_182AD3BF8();
    v32 = sub_181C64FFC(v30, v31, &v184);

    *(v16 + 4) = v32;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v184);
    *(v16 + 22) = 2080;
    v33 = sub_181C64FFC(v26, *(&v26 + 1), &v184);

    *(v16 + 24) = v33;
    _os_log_impl(&dword_181A37000, v14, v28, "%s %s %s", v16, 0x20u);
    swift_arrayDestroy();
    v21 = v29;
    goto LABEL_7;
  }

  v150 = v8;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_285;
  }

  while (1)
  {
    while (1)
    {
      isa = v23[2].isa;
      if (!isa)
      {
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
        goto LABEL_284;
      }

      v154 = v23[2 * isa + 3].isa;
      if (a1 < 2u)
      {
        goto LABEL_42;
      }

      v152 = v150[2];
      if (!v152)
      {
        v63 = mach_continuous_time();
        if (qword_1EA837030 != -1)
        {
          swift_once();
        }

        v24 = qword_1EA8387E8;
        if (is_mul_ok(v63, qword_1EA8387E8))
        {
          if (qword_1EA837038 == -1)
          {
            goto LABEL_63;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
LABEL_63:
        v9 = qword_1EA8387F0;
        if (qword_1EA8387F0)
        {
          if (qword_1EA837010 == -1)
          {
            goto LABEL_65;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
LABEL_65:
        v64 = qword_1EA8431F0;
        if (qword_1EA8431F0)
        {
          v65 = v63 * v24 / v9 / qword_1EA8431F0;
          v66 = v65 >= v25;
          v64 = v65 - v25;
          if (v66)
          {
            if (a2 - 65 < 0xFFFFFFFFFFFFFF7FLL)
            {
              goto LABEL_42;
            }

            if ((a2 & 0x8000000000000000) == 0)
            {
              v67 = v64 >> a2;
              if (a2 >= 0x40)
              {
                v67 = 0;
              }

              goto LABEL_72;
            }

LABEL_297:
            if (a2 > 0xFFFFFFFFFFFFFFC0)
            {
              v67 = v64 << -a2;
LABEL_72:
              v152 = v67;
              goto LABEL_43;
            }

LABEL_42:
            v152 = 0;
LABEL_43:
            v150[2] = v152;
            goto LABEL_46;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_297;
      }

LABEL_46:
      v198 = 0;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      if (v12)
      {
        v59 = sub_182104788(2, 2);
        if (v59 < 0x40)
        {
          v60 = 1;
        }

        else if (v59 < 0x4000)
        {
          v60 = 2;
        }

        else if (v59 >> 30)
        {
          if (v59 >> 62)
          {
            goto LABEL_308;
          }

          v60 = 8;
        }

        else
        {
          v60 = 4;
        }
      }

      else
      {
        v61 = sub_182104788(25, 2);
        if (v61 < 0x40)
        {
          v62 = 1;
        }

        else if (v61 < 0x4000)
        {
          v62 = 2;
        }

        else if (v61 >> 30)
        {
          if (v61 >> 62)
          {
            goto LABEL_308;
          }

          v62 = 8;
        }

        else
        {
          v62 = 4;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_289;
        }

        if (v11 < 0x40)
        {
          v68 = 1;
        }

        else if (v11 < 0x4000)
        {
          v68 = 2;
        }

        else if (v11 >> 30)
        {
          if (v11 >> 62)
          {
            goto LABEL_308;
          }

          v68 = 8;
        }

        else
        {
          v68 = 4;
        }

        v60 = v68 + v62;
      }

      if (a3 < 1)
      {
        break;
      }

      if ((v154 & 0x8000000000000000) != 0)
      {
        goto LABEL_282;
      }

      if (v154 < 0x40)
      {
        v69 = 1;
      }

      else if (v154 < 0x4000)
      {
        v69 = 2;
      }

      else if (v154 >> 30)
      {
        if (v154 >> 62)
        {
          goto LABEL_308;
        }

        v69 = 8;
      }

      else
      {
        v69 = 4;
      }

      v71 = __OFADD__(v69, a3);
      v72 = v69 + a3;
      if (v71)
      {
        goto LABEL_283;
      }

      a3 = v60 + v72;
      if (!__OFADD__(v60, v72))
      {
        v131 = 0;
        v129 = 0;
        v130 = 0;
        v127 = 0;
        v128 = 0;
        v160 = 0;
        v164 = 0;
        v125 = 0;
        v126 = 0;
        v123 = 0;
        v124 = 0;
        v121 = 0;
        v122 = 0;
        v11 = 0;
        v120 = 0;
        v119 = 0;
        v140 = 0;
        v142 = 0;
        v152 = 0;
        v154 = 0;
        v168 = 0;
        oslog = 0;
        v136 = 0;
        buf = 0;
        v138 = 0;
        goto LABEL_125;
      }

LABEL_284:
      __break(1u);
LABEL_285:
      *&v184 = 0;
      *(&v184 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BE3DB0);
      LOBYTE(v179) = a1;
      sub_182AD3E18();
      v168 = *(&v184 + 1);
      v74 = v184;
      if (qword_1EA837248 != -1)
      {
        goto LABEL_307;
      }

LABEL_286:
      v109 = sub_182AD2698();
      __swift_project_value_buffer(v109, qword_1EA843418);
      v110 = swift_allocObject();
      *(v110 + 16) = "build(packetNumberSpace:delayExponent:delaySize:packetBuilder:ecnCounter:)";
      *(v110 + 24) = 74;
      *(v110 + 32) = 2;
      v161 = swift_allocObject();
      *(v161 + 16) = sub_181F8C724;
      *(v161 + 24) = v110;
      v24 = swift_allocObject();
      *(v24 + 16) = 1564427099;
      *(v24 + 24) = 0xE400000000000000;
      v165 = swift_allocObject();
      *(v165 + 16) = v74;
      *(v165 + 24) = v168;

      osloga = sub_182AD2678();
      v158 = sub_182AD38A8();
      v137 = swift_allocObject();
      *(v137 + 16) = 32;
      v139 = swift_allocObject();
      *(v139 + 16) = 8;
      v111 = swift_allocObject();
      *(v111 + 16) = sub_181F8C71C;
      *(v111 + 24) = v161;
      v112 = swift_allocObject();
      *(v112 + 16) = sub_181F8C718;
      *(v112 + 24) = v111;
      v141 = v112;
      v143 = swift_allocObject();
      *(v143 + 16) = 32;
      v147 = swift_allocObject();
      *(v147 + 16) = 8;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_181F8C720;
      *(v113 + 24) = v24;
      v114 = swift_allocObject();
      *(v114 + 16) = sub_181F8C718;
      *(v114 + 24) = v113;
      v153 = v114;
      v155 = swift_allocObject();
      *(v155 + 16) = 32;
      v162 = swift_allocObject();
      *(v162 + 16) = 8;
      v115 = swift_allocObject();
      *(v115 + 16) = sub_181F8C720;
      *(v115 + 24) = v165;
      v116 = swift_allocObject();
      *(v116 + 16) = sub_181F8C718;
      *(v116 + 24) = v115;
      v166 = v116;
      v9 = osloga;
      if (!os_log_type_enabled(osloga, v158))
      {
        goto LABEL_290;
      }

      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v169[0] = 0;
      v132 = v118;
      *v117 = 770;
      *&v194 = v118;
      *&v179 = v117 + 2;
      *&v184 = sub_181F8C728;
      *(&v184 + 1) = v137;
      sub_181F73AE0(&v184, &v179, v169, &v194);

      *&v184 = sub_181F8C728;
      *(&v184 + 1) = v139;
      sub_181F73AE0(&v184, &v179, v169, &v194);

      *&v184 = sub_181F8C714;
      *(&v184 + 1) = v141;
      sub_181F73AE0(&v184, &v179, v169, &v194);

      *&v184 = sub_181F8C728;
      *(&v184 + 1) = v143;
      sub_181F73AE0(&v184, &v179, v169, &v194);

      *&v184 = sub_181F8C728;
      *(&v184 + 1) = v147;
      sub_181F73AE0(&v184, &v179, v169, &v194);

      *&v184 = sub_181F8C714;
      *(&v184 + 1) = v153;
      sub_181F73AE0(&v184, &v179, v169, &v194);

      *&v184 = sub_181F8C728;
      *(&v184 + 1) = v155;
      sub_181F73AE0(&v184, &v179, v169, &v194);

      *&v184 = sub_181F8C728;
      *(&v184 + 1) = v162;
      sub_181F73AE0(&v184, &v179, v169, &v194);

      *&v184 = sub_181F8C714;
      *(&v184 + 1) = v166;
      sub_181F73AE0(&v184, &v179, v169, &v194);

      v24 = v117;
      _os_log_impl(&dword_181A37000, osloga, v158, "%s %s %s", v117, 0x20u);
      v9 = v132;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v132, -1, -1);
      MEMORY[0x1865DF520](v117, -1, -1);
    }

    if ((v154 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_289:
    __break(1u);
LABEL_290:
  }

  if (v154 < 0x40)
  {
    v70 = 1;
  }

  else if (v154 < 0x4000)
  {
    v70 = 2;
  }

  else if (v154 >> 30)
  {
    if (v154 >> 62)
    {
      goto LABEL_308;
    }

    v70 = 8;
  }

  else
  {
    v70 = 4;
  }

  if (v152 < 0x40)
  {
    v73 = 1;
  }

  else if (v152 < 0x4000)
  {
    v73 = 2;
  }

  else if (v152 >> 30)
  {
    if (v152 >> 62)
    {
      goto LABEL_308;
    }

    v73 = 8;
  }

  else
  {
    v73 = 4;
  }

  a3 = v70 + v60 + v73;
  if (v12)
  {
    if (a8)
    {
      LOBYTE(v179) = 1;
      v184 = 0u;
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      LOBYTE(v188) = 0;
      sub_181F49A88(&v184, &qword_1EA83BB90);
      v131 = 0;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v160 = 0;
      v164 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v121 = 0;
      v122 = 0;
      v11 = 0;
      v120 = 0;
      v119 = 0;
      v140 = 0;
      v142 = 0;
      v168 = 0;
      oslog = 0;
      v136 = 0;
      buf = 0;
      v138 = 0;
      *&v194 = 2;
      BYTE8(v194) = 2;
      BYTE9(v194) = a1;
      *&v195 = 0;
      *&v196 = v154;
      *(&v196 + 1) = v152;
      BYTE8(v195) = 1;
      v197 = MEMORY[0x1E69E7CC0];
      v198 = 1;
      goto LABEL_124;
    }

    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    sub_181F49A88(&v184, &qword_1EA83BB88);
    v131 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v160 = 0;
    v164 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v11 = 0;
    v120 = 0;
    v119 = 0;
    v168 = MEMORY[0x1E69E7CC0];
    v138 = a1 << 8;
    v140 = 2;
    v142 = 3;
    oslog = a6;
    v136 = a5;
    buf = a7;
  }

  else
  {
    if (a8)
    {
      v131 = 0;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v164 = 0;
      v168 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v140 = 0;
      v142 = 0;
      oslog = 0;
      v136 = 0;
      buf = 0;
      v138 = 0;
      LOBYTE(v184) = 0;
      v121 = (a1 << 8) | 2;
      v160 = MEMORY[0x1E69E7CC0];
      v122 = 25;
      v119 = v152;
      v120 = v154;
    }

    else
    {
      v184 = 0u;
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      sub_181F49A88(&v184, &qword_1EA83BB80);
      v121 = 0;
      v122 = 0;
      v120 = 0;
      v119 = 0;
      v160 = 0;
      v140 = 0;
      v142 = 0;
      v168 = 0;
      oslog = 0;
      v136 = 0;
      buf = 0;
      v138 = 0;
      v164 = MEMORY[0x1E69E7CC0];
      v123 = a1 << 8;
      v124 = 2;
      v131 = 26;
      v129 = v154;
      v130 = v11;
      v127 = a5;
      v128 = v152;
      v125 = a7;
      v126 = a6;
      v11 = 0;
    }

LABEL_124:
    v152 = 0;
    v154 = 0;
  }

LABEL_125:
  v74 = v23[2].isa;
  v146 = v74;
  if (v74)
  {
    v24 = &v23[2 * v74 + 2];
    while (1)
    {
      v75 = v23[2].isa;
      if (v74 > v75)
      {
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        if (v146 < 0x40)
        {
          break;
        }

        if (v146 < 0x4000)
        {
          goto LABEL_226;
        }

        if (v146 >> 30)
        {
          if (v146 >> 62)
          {
            goto LABEL_308;
          }

          v24 = a3 + 8;
          if (!__OFADD__(a3, 8))
          {
            goto LABEL_211;
          }
        }

        else
        {
          v24 = a3 + 4;
          if (!__OFADD__(a3, 4))
          {
            goto LABEL_211;
          }
        }

        goto LABEL_228;
      }

      v76 = *v24;
      v77 = *(v24 + 8);
      v12 = v77 - *v24;
      if (__OFSUB__(v77, *v24))
      {
        goto LABEL_200;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_201;
      }

      if (v12 < 0x40)
      {
        v78 = 1;
      }

      else if (v12 < 0x4000)
      {
        v78 = 2;
      }

      else if (v12 >> 30)
      {
        if (v12 >> 62)
        {
          goto LABEL_308;
        }

        v78 = 8;
      }

      else
      {
        v78 = 4;
      }

      v71 = __OFADD__(a3, v78);
      a3 += v78;
      if (v71)
      {
        goto LABEL_202;
      }

      if (v74 < 2)
      {
        if (v197)
        {
          sub_182105FC8(0, v12);
        }

        v82 = v168;
        if (v168)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_181F5AC5C(0, *(v168 + 2) + 1, 1, v168);
          }

          a2 = *(v82 + 2);
          v83 = *(v82 + 3);
          v168 = v82;
          if (a2 >= v83 >> 1)
          {
            v168 = sub_181F5AC5C((v83 > 1), a2 + 1, 1, v82);
          }

          v25 = v160;
          *(v168 + 2) = a2 + 1;
          v84 = &v168[16 * a2];
          *(v84 + 4) = 0;
          *(v84 + 5) = v12;
        }

        else
        {
          v168 = 0;
          v25 = v160;
        }

        if (v25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_181F5AC5C(0, *(v25 + 16) + 1, 1, v25);
          }

          a2 = *(v25 + 16);
          v85 = *(v25 + 24);
          if (a2 >= v85 >> 1)
          {
            v25 = sub_181F5AC5C((v85 > 1), a2 + 1, 1, v25);
          }

          *(v25 + 16) = a2 + 1;
          v160 = v25;
          v86 = v25 + 16 * a2;
          *(v86 + 32) = 0;
          *(v86 + 40) = v12;
        }

        else
        {
          v160 = 0;
        }

        v87 = v164;
        if (v164)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = sub_181F5AC5C(0, *(v164 + 2) + 1, 1, v164);
          }

          a2 = *(v87 + 2);
          v88 = *(v87 + 3);
          v164 = v87;
          v89 = a2 + 1;
          if (a2 >= v88 >> 1)
          {
            v164 = sub_181F5AC5C((v88 > 1), a2 + 1, 1, v164);
          }

          v25 = 0;
          goto LABEL_198;
        }
      }

      else
      {
        if (v74 - 2 >= v75)
        {
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          v24 = a3 + 2;
          if (__OFADD__(a3, 2))
          {
            goto LABEL_228;
          }

LABEL_211:
          if ((a8 & 1) != 0 || a7 <= 0 && a5 <= 0 && a6 < 1)
          {
            goto LABEL_260;
          }

          if ((a5 & 0x8000000000000000) != 0)
          {
            goto LABEL_300;
          }

          if (a5 >= 0x40)
          {
            if (a5 < 0x4000)
            {
              v100 = 2;
            }

            else
            {
              if (a5 >> 30)
              {
                if (!(a5 >> 62))
                {
                  v100 = 8;
                  goto LABEL_235;
                }

LABEL_308:
                sub_182AD3EA8();
                __break(1u);

                while (1)
                {

                  __break(1u);
                }
              }

              v100 = 4;
            }

            goto LABEL_235;
          }

          goto LABEL_229;
        }

        v79 = *(v24 - 8);
        v71 = __OFSUB__(v76, v79);
        v80 = v76 - v79;
        if (v71)
        {
          goto LABEL_222;
        }

        v25 = v80 - 2;
        if (__OFSUB__(v80, 2))
        {
          goto LABEL_223;
        }

        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_224;
        }

        if (v25 < 0x40)
        {
          v81 = 1;
        }

        else if (v25 < 0x4000)
        {
          v81 = 2;
        }

        else if (v25 >> 30)
        {
          if (v25 >> 62)
          {
            goto LABEL_308;
          }

          v81 = 8;
        }

        else
        {
          v81 = 4;
        }

        v71 = __OFADD__(a3, v81);
        a3 += v81;
        if (v71)
        {
          goto LABEL_225;
        }

        if (v197)
        {
          sub_182105FC8(v25, v12);
        }

        v90 = v168;
        v157 = a3;
        if (v168)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_181F5AC5C(0, *(v168 + 2) + 1, 1, v168);
          }

          a2 = *(v90 + 2);
          v91 = *(v90 + 3);
          v168 = v90;
          if (a2 >= v91 >> 1)
          {
            v168 = sub_181F5AC5C((v91 > 1), a2 + 1, 1, v90);
          }

          v92 = v160;
          *(v168 + 2) = a2 + 1;
          v93 = &v168[16 * a2];
          *(v93 + 4) = v25;
          *(v93 + 5) = v12;
        }

        else
        {
          v168 = 0;
          v92 = v160;
        }

        if (v92)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_181F5AC5C(0, *(v92 + 2) + 1, 1, v92);
          }

          a2 = *(v92 + 2);
          v94 = *(v92 + 3);
          v95 = v92;
          if (a2 >= v94 >> 1)
          {
            v95 = sub_181F5AC5C((v94 > 1), a2 + 1, 1, v92);
          }

          a3 = v157;
          *(v95 + 2) = a2 + 1;
          v160 = v95;
          v96 = &v95[16 * a2];
          *(v96 + 4) = v25;
          *(v96 + 5) = v12;
        }

        else
        {
          v160 = 0;
          a3 = v157;
        }

        v97 = v164;
        if (v164)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_181F5AC5C(0, *(v164 + 2) + 1, 1, v164);
          }

          a2 = *(v97 + 2);
          v98 = *(v97 + 3);
          v164 = v97;
          v89 = a2 + 1;
          if (a2 >= v98 >> 1)
          {
            v164 = sub_181F5AC5C((v98 > 1), a2 + 1, 1, v164);
          }

LABEL_198:
          *(v164 + 2) = v89;
          v99 = &v164[16 * a2];
          *(v99 + 4) = v25;
          *(v99 + 5) = v12;
          goto LABEL_128;
        }
      }

      v164 = 0;
LABEL_128:
      v24 -= 16;
      if (!--v74)
      {
        goto LABEL_203;
      }
    }
  }

  v24 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    goto LABEL_211;
  }

LABEL_228:
  __break(1u);
LABEL_229:
  v100 = 1;
LABEL_235:
  v71 = __OFADD__(v24, v100);
  v101 = v24 + v100;
  if (v71)
  {
    goto LABEL_301;
  }

  if ((a6 & 0x8000000000000000) != 0)
  {
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  if (a6 < 0x40)
  {
    v102 = 1;
  }

  else if (a6 < 0x4000)
  {
    v102 = 2;
  }

  else if (a6 >> 30)
  {
    if (a6 >> 62)
    {
      goto LABEL_308;
    }

    v102 = 8;
  }

  else
  {
    v102 = 4;
  }

  v71 = __OFADD__(v101, v102);
  v103 = v101 + v102;
  if (v71)
  {
    goto LABEL_303;
  }

  if ((a7 & 0x8000000000000000) != 0)
  {
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
    goto LABEL_306;
  }

  if (a7 < 0x40)
  {
    v104 = 1;
  }

  else if (a7 < 0x4000)
  {
    v104 = 2;
  }

  else if (a7 >> 30)
  {
    if (a7 >> 62)
    {
      goto LABEL_308;
    }

    v104 = 8;
  }

  else
  {
    v104 = 4;
  }

  v24 = v103 + v104;
  if (__OFADD__(v103, v104))
  {
    goto LABEL_305;
  }

  if (v150[3] != a7)
  {
    v105 = v150[9];
    v71 = __OFADD__(v105, 1);
    v106 = (&v105->isa + 1);
    if (!v71)
    {
      v150[9] = v106;
      goto LABEL_259;
    }

LABEL_306:
    __break(1u);
LABEL_307:
    swift_once();
    goto LABEL_286;
  }

LABEL_259:
  v150[3] = a7;
LABEL_260:
  v191 = v196;
  v192 = v197;
  v193 = v198;
  v189 = v194;
  v190 = v195;
  if (v197)
  {
    *&v179 = v189;
    *(&v179 + 1) = DWORD2(v189) & 0x1010303 | 0x1000000000000000;
    v180 = v190;
    v181 = v191;
    *&v182 = v197;
    *(&v182 + 1) = *(&v192 + 1);
    *&v183 = v193;
    goto LABEL_268;
  }

  if (v168)
  {
    *&v184 = v142;
    *(&v184 + 1) = v138 | v140;
    a2 = v152;
    v74 = v154;
    *&v185 = v154;
    *(&v185 + 1) = v152;
    *&v186 = v168;
    v23 = oslog;
    v11 = v136;
    *(&v186 + 1) = v136;
    *&v187 = oslog;
    a3 = buf;
    *(&v187 + 1) = buf;
    sub_182123120(&v184, &v179);
    *&v179 = v142;
    *(&v179 + 1) = (v138 | v140) & 0x1010302 | 0x1800000000000000;
    *&v180 = v154;
    *(&v180 + 1) = v152;
    *&v181 = v168;
    *(&v181 + 1) = v136;
    *&v182 = oslog;
    *(&v182 + 1) = buf;
    goto LABEL_268;
  }

  if (v160)
  {
    LOBYTE(v169[0]) = 0;
    v74 = v121 & 0x303030303030303 | 0xE000000000000000;
    *&v184 = v122;
    *(&v184 + 1) = v121;
    v185 = v11;
    v23 = v119;
    *&v186 = v120;
    *(&v186 + 1) = v119;
    a2 = v160;
    *&v187 = v160;
    sub_182123414(&v184, &v179);
    *&v179 = v122;
    *(&v179 + 1) = v74;
    v180 = v11;
    *&v181 = v120;
    *(&v181 + 1) = v119;
    *&v182 = v160;
    goto LABEL_268;
  }

  if (v164)
  {
    v74 = 0;
    *&v184 = v131;
    *(&v184 + 1) = v123 | v124;
    v185 = v130;
    *&v186 = v129;
    v23 = v127;
    v11 = v128;
    *(&v186 + 1) = v128;
    a3 = v164;
    *&v187 = v164;
    *(&v187 + 1) = v127;
    a2 = v125;
    *&v188 = v126;
    *(&v188 + 1) = v125;
    sub_1821231D4(&v184, &v179);
    *&v179 = v131;
    *(&v179 + 1) = (v123 | v124) & 0x1010302 | 0xE800000000000000;
    v180 = v130;
    *&v181 = v129;
    *(&v181 + 1) = v128;
    *&v182 = v164;
    *(&v182 + 1) = v127;
    *&v183 = v126;
    *(&v183 + 1) = v125;
LABEL_268:
    v186 = v181;
    v187 = v182;
    v188 = v183;
    v184 = v179;
    v185 = v180;
    sub_181AB5D28(&v189, v169, &qword_1EA83BB90);
    v12 = &qword_1EA83BB78;
    v25 = &unk_182B051D0;
    sub_181AB5D28(&v179, v169, &qword_1EA83BB78);
    sub_181F83050(a1, &v184);
    sub_181F49A88(&v179, &qword_1EA83BB78);
    v186 = v181;
    v187 = v182;
    v188 = v183;
    v184 = v179;
    v185 = v180;
  }

  else
  {
    v184 = xmmword_182B04F50;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
  }

  if (v146 < 6)
  {
    goto LABEL_279;
  }

  v107 = 1;
  v108 = sub_182104788(1, 2);
  if (v108 >= 0x40)
  {
    if (v108 < 0x4000)
    {
      v107 = 2;
    }

    else if (v108 >> 30)
    {
      if (v108 >> 62)
      {
        goto LABEL_308;
      }

      v107 = 8;
    }

    else
    {
      v107 = 4;
    }
  }

  v71 = __OFADD__(v24, v107);
  v24 += v107;
  if (v71)
  {
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  *&v169[0] = 1;
  *(&v169[0] + 1) = ((a1 & 3) << 8) | 0x800000000000002;
  sub_181F83050(a1, v169);
LABEL_279:
  sub_181F49A88(&v184, &qword_1EA83BB78);
  *&v169[0] = v131;
  *(&v169[0] + 1) = v123 | v124;
  v169[1] = v130;
  v170 = v129;
  v171 = v128;
  v172 = v164;
  v173 = v127;
  v174 = v126;
  v175 = v125;
  sub_181F49A88(v169, &qword_1EA83BB80);

  v176[0] = v142;
  v176[1] = v138 | v140;
  v176[2] = v154;
  v176[3] = v152;
  v176[4] = v168;
  v176[5] = v136;
  v176[6] = oslog;
  v176[7] = buf;
  sub_181F49A88(v176, &qword_1EA83BB88);
  v177[2] = v196;
  v177[3] = v197;
  v178 = v198;
  v177[0] = v194;
  v177[1] = v195;
  sub_181F49A88(v177, &qword_1EA83BB90);
  return v24;
}

uint64_t sub_18229C7DC()
{
  if (qword_1EA837020 != -1)
  {
    result = swift_once();
  }

  if (is_mul_ok(qword_1EA843200, 0x19uLL))
  {
    qword_1EA843440 = 25 * qword_1EA843200;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18229C84C()
{
  if (qword_1EA837270 != -1)
  {
    result = swift_once();
  }

  v0 = qword_1EA843440;
  if (qword_1EA837020 != -1)
  {
    result = swift_once();
  }

  if (qword_1EA843200)
  {
    qword_1EA843448 = v0 / qword_1EA843200;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18229C8EC()
{
  if (qword_1EA837020 != -1)
  {
    result = swift_once();
  }

  if (qword_1EA843200 >> 50)
  {
    __break(1u);
  }

  else
  {
    qword_1EA843450 = qword_1EA843200 << 14;
  }

  return result;
}

uint64_t sub_18229C954(uint64_t a1, __int16 a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = -1;
  *(v2 + 64) = -1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  *(v2 + 104) = v5;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = -1;
  *(v2 + 152) = -1;
  *(v2 + 160) = 0;
  *(v2 + 168) = 1;
  *(v2 + 176) = 0;
  *(v2 + 184) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838878);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_182AE9730;
  *(v6 + 32) = v5;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = -1;
  *(v6 + 80) = -1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 1;
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *(v2 + 192) = v6;
  *(v2 + 200) = 3;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = 256;
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 128;
  *(v2 + 272) = 0;
  if (qword_1EA837270 != -1)
  {
    swift_once();
  }

  *(v2 + 280) = qword_1EA843440;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  *(v2 + 232) = a1;
  *(v2 + 224) = a2;
  *(v2 + 225) = HIBYTE(a2) & 1;
  return v2;
}

uint64_t sub_18229CAA8()
{
  if (*(v0 + 232))
  {
    if (*(v0 + 225))
    {
      __break(1u);
      return result;
    }

    v1 = *(v0 + 224);

    sub_181F8BA68(v1);
  }

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18229CB94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_18229CBDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18229CC48()
{
  result = qword_1EA83BB58;
  if (!qword_1EA83BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BB58);
  }

  return result;
}

unint64_t sub_18229CCA0()
{
  result = qword_1EA83BB60;
  if (!qword_1EA83BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BB60);
  }

  return result;
}

unint64_t sub_18229CCF8()
{
  result = qword_1EA83BB68;
  if (!qword_1EA83BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BB68);
  }

  return result;
}

unint64_t sub_18229CD50()
{
  result = qword_1EA83BB70;
  if (!qword_1EA83BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BB70);
  }

  return result;
}

uint64_t sub_18229CDA4(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  v11 = *a6;
  v12 = *(a6 + 8);
  v46[0] = 0;
  do
  {
    v13 = byte_1EEF96CE8[v10 + 32];
    if (sub_181F840C0(v13))
    {
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v14 = sub_182AD2698();
        __swift_project_value_buffer(v14, qword_1EA843418);
        v15 = swift_allocObject();
        *(v15 + 16) = "assemble(for:spaceID:delayExponent:packetBuilder:ecn:)";
        *(v15 + 24) = 54;
        *(v15 + 32) = 2;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_181F8C724;
        *(v33 + 24) = v15;
        v35 = swift_allocObject();
        *(v35 + 16) = 1564427099;
        *(v35 + 24) = 0xE400000000000000;
        v25 = swift_allocObject();
        *(v25 + 16) = 0xD000000000000020;
        *(v25 + 24) = 0x8000000182BE3CB0;
        oslog = sub_182AD2678();
        v37 = sub_182AD38A8();
        v28 = swift_allocObject();
        *(v28 + 16) = 32;
        v27 = swift_allocObject();
        *(v27 + 16) = 8;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_181F8C71C;
        *(v16 + 24) = v33;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_181F8C718;
        *(v17 + 24) = v16;
        v30 = v17;
        v29 = swift_allocObject();
        *(v29 + 16) = 32;
        v32 = swift_allocObject();
        *(v32 + 16) = 8;
        v18 = swift_allocObject();
        *(v18 + 16) = sub_181F8C720;
        *(v18 + 24) = v35;
        v19 = swift_allocObject();
        *(v19 + 16) = sub_181F8C718;
        *(v19 + 24) = v18;
        v34 = v19;
        v31 = swift_allocObject();
        *(v31 + 16) = 32;
        v36 = swift_allocObject();
        *(v36 + 16) = 8;
        v20 = swift_allocObject();
        *(v20 + 16) = sub_181F8C720;
        *(v20 + 24) = v25;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_181F8C718;
        *(v21 + 24) = v20;
        if (os_log_type_enabled(oslog, v37))
        {
          v26 = v21;
          v22 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v44 = 0;
          v24 = v43;
          *v22 = 770;
          v45 = v22 + 2;
          v41 = sub_181F8C728;
          v42 = v28;
          sub_181F73AE0(&v41, &v45, &v44, &v43);

          v41 = sub_181F8C728;
          v42 = v27;
          sub_181F73AE0(&v41, &v45, &v44, &v43);

          v41 = sub_181F8C714;
          v42 = v30;
          sub_181F73AE0(&v41, &v45, &v44, &v43);

          v41 = sub_181F8C728;
          v42 = v29;
          sub_181F73AE0(&v41, &v45, &v44, &v43);

          v41 = sub_181F8C728;
          v42 = v32;
          sub_181F73AE0(&v41, &v45, &v44, &v43);

          v41 = sub_181F8C714;
          v42 = v34;
          sub_181F73AE0(&v41, &v45, &v44, &v43);

          v41 = sub_181F8C728;
          v42 = v31;
          sub_181F73AE0(&v41, &v45, &v44, &v43);

          v41 = sub_181F8C728;
          v42 = v36;
          sub_181F73AE0(&v41, &v45, &v44, &v43);

          v41 = sub_181F8C714;
          v42 = v26;
          sub_181F73AE0(&v41, &v45, &v44, &v43);

          _os_log_impl(&dword_181A37000, oslog, v37, "%s %s %s", v22, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v24, -1, -1);
          MEMORY[0x1865DF520](v22, -1, -1);
        }

        else
        {
        }
      }

      v46[0] = 1;
    }

    else
    {

      sub_1822A04E8(v13, a2, a3 & 1, v40, a1, v11, v12, v13, a4, a5, v46);
    }

    ++v10;
  }

  while (v10 != 3);
  return v46[0];
}

uint64_t sub_18229D5D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  v8 = v5[25];
  v51 = *a5;
  LOBYTE(v52) = v7;
  v9 = sub_18229CDA4(a1, a2, a3 & 1, v8, a4, &v51);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v18 = v10;
    swift_once();
    v10 = v18;
  }

  v11 = qword_1EA8387E8;
  if (!is_mul_ok(v10, qword_1EA8387E8))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (qword_1EA837038 != -1)
  {
LABEL_18:
    v19 = v10;
    swift_once();
    v10 = v19;
  }

  v12 = qword_1EA8387F0;
  if (!qword_1EA8387F0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (qword_1EA837010 != -1)
  {
    v41 = v10;
    swift_once();
    v10 = v41;
  }

  v13 = qword_1EA8431F0;
  if (!qword_1EA8431F0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5[26] = 0;
  v5[27] = v10 * v11 / v12 / v13;
  v14 = v5[32];
  v15 = v14 < 1;
  v16 = v14 - 1;
  if (!v15)
  {
    v5[32] = v16;
  }

LABEL_12:
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
LABEL_20:
    v51 = 0;
    v52 = 0xE000000000000000;
    if (v9)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v9)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x1865D9CA0](v20, v21);

    v22 = v51;
    v23 = v52;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v24 = sub_182AD2698();
    __swift_project_value_buffer(v24, qword_1EA843418);
    v25 = swift_allocObject();
    *(v25 + 16) = "sendPending(on:spaceID:packetBuilder:ecn:)";
    *(v25 + 24) = 42;
    *(v25 + 32) = 2;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C724;
    *(v26 + 24) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = 1564427099;
    *(v27 + 24) = 0xE400000000000000;
    v28 = swift_allocObject();
    *(v28 + 16) = v22;
    *(v28 + 24) = v23;

    oslog = sub_182AD2678();
    v46 = sub_182AD38A8();
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_181F8C71C;
    *(v29 + 24) = v26;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C718;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = 32;
    v32 = swift_allocObject();
    *(v32 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_181F8C720;
    *(v33 + 24) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_181F8C718;
    *(v34 + 24) = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_181F8C720;
    *(v37 + 24) = v28;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_181F8C718;
    *(v38 + 24) = v37;
    if (os_log_type_enabled(oslog, v46))
    {
      v42 = v30;
      v43 = v36;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      v49 = 0;
      *v39 = 770;
      v50 = v39 + 2;
      v51 = sub_181F8C728;
      v52 = v45;
      sub_181F73AE0(&v51, &v50, &v49, &v48);

      v51 = sub_181F8C728;
      v52 = v44;
      sub_181F73AE0(&v51, &v50, &v49, &v48);

      v51 = sub_181F8C714;
      v52 = v42;
      sub_181F73AE0(&v51, &v50, &v49, &v48);

      v51 = sub_181F8C728;
      v52 = v31;
      sub_181F73AE0(&v51, &v50, &v49, &v48);

      v51 = sub_181F8C728;
      v52 = v32;
      sub_181F73AE0(&v51, &v50, &v49, &v48);

      v51 = sub_181F8C714;
      v52 = v34;
      sub_181F73AE0(&v51, &v50, &v49, &v48);

      v51 = sub_181F8C728;
      v52 = v35;
      sub_181F73AE0(&v51, &v50, &v49, &v48);

      v51 = sub_181F8C728;
      v52 = v43;
      sub_181F73AE0(&v51, &v50, &v49, &v48);

      v51 = sub_181F8C714;
      v52 = v38;
      sub_181F73AE0(&v51, &v50, &v49, &v48);

      _os_log_impl(&dword_181A37000, oslog, v46, "%s %s %s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v40, -1, -1);
      MEMORY[0x1865DF520](v39, -1, -1);

      return v9 & 1;
    }

LABEL_31:
  }

  return v9 & 1;
}

void sub_18229DE88()
{
  if ((*(v0 + 240) & 1) == 0)
  {
    *(v0 + 240) |= 1u;
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BE3E80);
      v26 = v0;
      if (qword_1EA837060 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

    if (*(v0 + 232))
    {
      while ((*(v0 + 225) & 1) != 0)
      {
        __break(1u);
LABEL_19:
        swift_once();
LABEL_11:
        sub_182AD3748();
        MEMORY[0x1865D9CA0](7564576, 0xE300000000000000);
        v1 = v30;
        v2 = v31;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v3 = sub_182AD2698();
        __swift_project_value_buffer(v3, qword_1EA843418);
        v4 = swift_allocObject();
        *(v4 + 16) = "scheduleDelayedAck()";
        *(v4 + 24) = 20;
        *(v4 + 32) = 2;
        v5 = swift_allocObject();
        *(v5 + 16) = sub_181F8C724;
        *(v5 + 24) = v4;
        v6 = swift_allocObject();
        *(v6 + 16) = 1564427099;
        *(v6 + 24) = 0xE400000000000000;
        v7 = swift_allocObject();
        *(v7 + 16) = v1;
        *(v7 + 24) = v2;

        v8 = sub_182AD2678();
        v9 = sub_182AD38A8();
        v10 = swift_allocObject();
        *(v10 + 16) = 32;
        v22 = swift_allocObject();
        *(v22 + 16) = 8;
        v11 = swift_allocObject();
        *(v11 + 16) = sub_181F8C71C;
        *(v11 + 24) = v5;
        v12 = swift_allocObject();
        *(v12 + 16) = sub_181F8C718;
        *(v12 + 24) = v11;
        v13 = swift_allocObject();
        *(v13 + 16) = 32;
        v23 = swift_allocObject();
        *(v23 + 16) = 8;
        v14 = swift_allocObject();
        *(v14 + 16) = sub_181F8C720;
        *(v14 + 24) = v6;
        v15 = swift_allocObject();
        *(v15 + 16) = sub_181F8C718;
        *(v15 + 24) = v14;
        v24 = swift_allocObject();
        *(v24 + 16) = 32;
        v25 = swift_allocObject();
        *(v25 + 16) = 8;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_181F8C720;
        *(v16 + 24) = v7;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_181F8C718;
        *(v17 + 24) = v16;
        v21 = v9;
        v18 = v8;
        if (os_log_type_enabled(v8, v9))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v27 = v20;
          v28 = 0;
          *v19 = 770;
          v29 = v19 + 2;
          v30 = sub_181F8C728;
          v31 = v10;
          sub_181F73AE0(&v30, &v29, &v28, &v27);

          v30 = sub_181F8C728;
          v31 = v22;
          sub_181F73AE0(&v30, &v29, &v28, &v27);

          v30 = sub_181F8C714;
          v31 = v12;
          sub_181F73AE0(&v30, &v29, &v28, &v27);

          v30 = sub_181F8C728;
          v31 = v13;
          sub_181F73AE0(&v30, &v29, &v28, &v27);

          v30 = sub_181F8C728;
          v31 = v23;
          sub_181F73AE0(&v30, &v29, &v28, &v27);

          v30 = sub_181F8C714;
          v31 = v15;
          sub_181F73AE0(&v30, &v29, &v28, &v27);

          v30 = sub_181F8C728;
          v31 = v24;
          sub_181F73AE0(&v30, &v29, &v28, &v27);

          v30 = sub_181F8C728;
          v31 = v25;
          sub_181F73AE0(&v30, &v29, &v28, &v27);

          v30 = sub_181F8C714;
          v31 = v17;
          sub_181F73AE0(&v30, &v29, &v28, &v27);

          _os_log_impl(&dword_181A37000, v18, v21, "%s %s %s", v19, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v20, -1, -1);
          MEMORY[0x1865DF520](v19, -1, -1);
        }

        else
        {
        }

        v0 = v26;
        if (!*(v26 + 232))
        {
          return;
        }
      }

      sub_181F8BE74(*(v0 + 224), *(v0 + 280));
    }
  }
}

uint64_t sub_18229E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(v4 + 280);
  swift_beginAccess();
  if (*(a1 + 168) >> 1 < v10)
  {
    v10 = *(a1 + 168) >> 1;
  }

  v11 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v21 = v11;
    swift_once();
    v11 = v21;
  }

  v12 = qword_1EA8387E8;
  if (is_mul_ok(v11, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v22 = v11;
  swift_once();
  v11 = v22;
LABEL_7:
  v13 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  v23 = v11;
  swift_once();
  v11 = v23;
LABEL_9:
  v14 = qword_1EA8431F0;
  if (!qword_1EA8431F0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v15 = *(v4 + 256);
  if ((*(v4 + 240) & 8) != 0)
  {
    if (v15)
    {
      goto LABEL_14;
    }

    if (*(v4 + 208) < *(v4 + 264))
    {
LABEL_20:
      sub_18229DE88();
      v16 = 0;
      return v16 & 1;
    }
  }

  else if (v15)
  {
    goto LABEL_14;
  }

  if (*(v4 + 208) == 1)
  {
    goto LABEL_20;
  }

  if (qword_1EA837210 != -1)
  {
    v46 = v11;
    swift_once();
    v11 = v46;
  }

  if (qword_1EA843408 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (a2 <= 2 * qword_1EA843408 || *(a1 + 280) <= qword_1EA8433E8 >> 1 || *(v4 + 208) >= *(v4 + 264))
  {
    goto LABEL_14;
  }

  v18 = *(v4 + 216);
  v19 = __CFADD__(v18, v10);
  v20 = v18 + v10;
  if (v19)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_38;
  }

  if (v11 * v12 / v13 / v14 < v20)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (qword_1EA837250 != -1)
  {
LABEL_36:
    swift_once();
  }

  if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_17;
  }

  v13 = 0x8000000182BE3E40;
  if (qword_1EA837248 != -1)
  {
    goto LABEL_43;
  }

LABEL_38:
  v24 = sub_182AD2698();
  __swift_project_value_buffer(v24, qword_1EA843418);
  v25 = swift_allocObject();
  *(v25 + 16) = "processPending(on:connectionWindow:packetBuilder:ecn:)";
  *(v25 + 24) = 54;
  *(v25 + 32) = 2;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_181F8C724;
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = 1564427099;
  *(v27 + 24) = 0xE400000000000000;
  v28 = swift_allocObject();
  *(v28 + 16) = 0xD000000000000018;
  *(v28 + 24) = v13;
  oslog = sub_182AD2678();
  v29 = sub_182AD38A8();
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_181F8C71C;
  *(v30 + 24) = v26;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_181F8C718;
  *(v31 + 24) = v30;
  v42 = swift_allocObject();
  *(v42 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_181F8C720;
  *(v32 + 24) = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_181F8C718;
  *(v33 + 24) = v32;
  v44 = swift_allocObject();
  *(v44 + 16) = 32;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_181F8C720;
  *(v34 + 24) = v28;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_181F8C718;
  *(v35 + 24) = v34;
  v38 = v29;
  if (os_log_type_enabled(oslog, v29))
  {
    v36 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = 0;
    v37 = v49;
    *v36 = 770;
    v51 = v36 + 2;
    v47 = sub_181F8C728;
    v48 = v40;
    sub_181F73AE0(&v47, &v51, &v50, &v49);

    v47 = sub_181F8C728;
    v48 = v41;
    sub_181F73AE0(&v47, &v51, &v50, &v49);

    v47 = sub_181F8C714;
    v48 = v31;
    sub_181F73AE0(&v47, &v51, &v50, &v49);

    v47 = sub_181F8C728;
    v48 = v42;
    sub_181F73AE0(&v47, &v51, &v50, &v49);

    v47 = sub_181F8C728;
    v48 = v43;
    sub_181F73AE0(&v47, &v51, &v50, &v49);

    v47 = sub_181F8C714;
    v48 = v33;
    sub_181F73AE0(&v47, &v51, &v50, &v49);

    v47 = sub_181F8C728;
    v48 = v44;
    sub_181F73AE0(&v47, &v51, &v50, &v49);

    v47 = sub_181F8C728;
    v48 = v45;
    sub_181F73AE0(&v47, &v51, &v50, &v49);

    v47 = sub_181F8C714;
    v48 = v35;
    sub_181F73AE0(&v47, &v51, &v50, &v49);

    _os_log_impl(&dword_181A37000, oslog, v38, "%s %s %s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v37, -1, -1);
    MEMORY[0x1865DF520](v36, -1, -1);
  }

  else
  {
  }

LABEL_17:
  v47 = v8;
  LOBYTE(v48) = v9;
  v16 = sub_18229D5D4(a1, 0, 1, a3, &v47);
  return v16 & 1;
}

uint64_t sub_18229EFF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BE3C60);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0x7073206874697720, 0xEF2064695F656361);
    v7 = sub_181F5F2C0(a3, a4 & 1);
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
      *(v11 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v18);
      *(v11 + 22) = 2080;
      v16 = sub_181C64FFC(0, 0xE000000000000000, v18);

      *(v11 + 24) = v16;
      _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v12, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    else
    {
    }
  }

  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 80) = 0;
  return 1;
}

uint64_t sub_18229F2E0(unint64_t a1, unint64_t a2)
{
  v7 = *v2;
  v8 = v2[1];
  result = sub_18229FB44(a1, a2, *v2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v10 = a1 >> 6;
  v11 = (a1 >> 6) - v7;
  if (a1 >> 6 < v7)
  {
    goto LABEL_38;
  }

  v4 = a2 >> 6;
  v3 = (a2 >> 6) - v7;
  if (a2 >> 6 < v7)
  {
    goto LABEL_39;
  }

  v12 = *(v8 + 16);
  if (v12)
  {
    v13 = v3 >= v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (!(v3 >> 31))
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  while (1)
  {
    if (v11 != v3)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        v8 = v2[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_22;
        }

        goto LABEL_48;
      }

      goto LABEL_45;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      result = sub_1820835AC(v8);
      v8 = result;
      goto LABEL_18;
    }

    v8 = v2[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_18:
    if (v11 < *(v8 + 16))
    {
      v17 = (0xFFFFFFFFFFFFFFFFLL >> ~a2) & (-1 << a1);
      v18 = (v8 + 8 * v11 + 32);
      goto LABEL_32;
    }

    __break(1u);
LABEL_48:
    result = sub_1820835AC(v8);
    v8 = result;
LABEL_22:
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    *(v8 + 32 + 8 * v11) |= -1 << a1;
    if (v3 <= v11)
    {
      goto LABEL_50;
    }

    v19 = v11 + 1;
    if (v11 + 1 == v3)
    {
      break;
    }

    v20 = ~v10 + v4;
    v21 = (v8 - 8 * v7 + 8 * v10 + 40);
    while (v19 < v3)
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v19 >= *(v8 + 16))
      {
        goto LABEL_37;
      }

      *v21++ = -1;
      ++v19;
      if (!--v20)
      {
        goto LABEL_30;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v35 = v2;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_52;
    }

LABEL_41:
    v22 = sub_182AD2698();
    __swift_project_value_buffer(v22, qword_1EA843418);
    v23 = sub_182AD2678();
    v24 = sub_182AD3898();
    if (os_log_type_enabled(v23, v24))
    {
      v34 = v8;
      v25 = swift_slowAlloc();
      v33 = v3;
      v32 = v10;
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315650;
      v27 = sub_182AD3BF8();
      v29 = sub_181C64FFC(v27, v28, &v36);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v36);
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_181C64FFC(0xD000000000000022, 0x8000000182BE4050, &v36);
      _os_log_impl(&dword_181A37000, v23, v24, "%s %s %s", v25, 0x20u);
      swift_arrayDestroy();
      v30 = v26;
      v10 = v32;
      v3 = v33;
      MEMORY[0x1865DF520](v30, -1, -1);
      v31 = v25;
      v8 = v34;
      MEMORY[0x1865DF520](v31, -1, -1);
    }

    v2 = v35;
LABEL_10:
    v14 = *(v8 + 16);
    while (1)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        goto LABEL_35;
      }

      v15 = 2 * v14;
      v16 = v14 < 1;
      v14 *= 2;
      if (!v16)
      {
        v14 = v15;
        if (v3 < v15)
        {
          break;
        }
      }
    }

    sub_18229FA78(v15);
  }

LABEL_30:
  if (v3 >= *(v8 + 16))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
    goto LABEL_41;
  }

  v17 = 0xFFFFFFFFFFFFFFFFLL >> ~a2;
  v18 = (v8 + 32 + 8 * v3);
LABEL_32:
  *v18 |= v17;
  v2[1] = v8;
  return result;
}

uint64_t sub_18229F688(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (sub_18229FB44(a1, a2, a3))
  {
    v8 = *(a4 + 16);
    v9 = a3 + v8;
    if (__CFADD__(a3, v8))
    {
      __break(1u);
    }

    else if (v9 >= a1 >> 6 && v9 >= a2 >> 6)
    {
      return 1;
    }

    sub_182AD3BA8();

    v24[0] = 0x20657A6973;
    v24[1] = 0xE500000000000000;
    v11 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v11);

    MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BE3FD0);
    v12 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v12);

    MEMORY[0x1865D9CA0](0x206E702820, 0xE500000000000000);
    v13 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v13);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1EA843418);

    v15 = sub_182AD2678();
    v16 = sub_182AD38C8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v16;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, v24);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v24);
      *(v18 + 22) = 2080;
      v23 = sub_181C64FFC(0x20657A6973, 0xE500000000000000, v24);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_181A37000, v15, v17, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v18, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_18229FA78(uint64_t result)
{
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  if (result < v4)
  {
    __break(1u);
  }

  else
  {
    if (result == v4)
    {
      return result;
    }

    v2 = result - v4;
    if (result > v4)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  result = sub_181F59E04(0, v4 + 1, 1, v3);
  v3 = result;
LABEL_5:
  v5 = *(v3 + 16);
  do
  {
    v6 = *(v3 + 24);
    if (v5 >= v6 >> 1)
    {
      result = sub_181F59E04((v6 > 1), v5 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + 8 * v5++ + 32) = 0;
    --v2;
  }

  while (v2);
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_18229FB44(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >> 6 < a3)
  {
    sub_182AD3BA8();

    strcpy(v21, "initial word ");
    HIWORD(v21[1]) = -4864;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    v5 = 0xD000000000000015;
    v6 = 0x8000000182BE3FD0;
  }

  else
  {
    if (a2 >> 6 >= a3)
    {
      return 1;
    }

    sub_182AD3BA8();

    strcpy(v21, "initial word ");
    HIWORD(v21[1]) = -4864;
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    v6 = 0x8000000182BE4010;
    v5 = 0xD000000000000014;
  }

  MEMORY[0x1865D9CA0](v5, v6);
  v8 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v8);

  MEMORY[0x1865D9CA0](0x206E702820, 0xE500000000000000);
  v9 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v9);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  v11 = v21[0];
  v10 = v21[1];
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v12 = sub_182AD2698();
  __swift_project_value_buffer(v12, qword_1EA843418);

  v13 = sub_182AD2678();
  v14 = sub_182AD38C8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v15 = 136315650;
    v17 = sub_182AD3BF8();
    v19 = sub_181C64FFC(v17, v18, v21);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v21);
    *(v15 + 22) = 2080;
    v20 = sub_181C64FFC(v11, v10, v21);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_181A37000, v13, v14, "%s %s %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v16, -1, -1);
    MEMORY[0x1865DF520](v15, -1, -1);
  }

  else
  {
  }

  return 0;
}

unint64_t sub_18229FEEC(unint64_t result, int64_t a2)
{
  v3 = 0;
  v4 = *(result + 32);
  v5 = *(result + 48);
  v6 = *(v5 + 16);
  v7 = v5 + 32;
  v8 = (v5 + 40);
  while (v6 != v3)
  {
    if (v3 >= v6)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    v10 = v4 - *v8;
    if (v4 < *v8)
    {
      goto LABEL_22;
    }

    if (((v10 | v4) & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= a2)
    {
      if (v10 <= a2)
      {
        result = a2;
      }

      else
      {
        result = v4 - *v8;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      result = sub_18229F2E0(result, v4);
    }

    if (v9 == v6)
    {
      return result;
    }

    if (v9 >= v6)
    {
      goto LABEL_24;
    }

    v11 = *(v7 + 16 * v9);
    v12 = v10 >= v11;
    v13 = v10 - v11;
    if (!v12)
    {
      goto LABEL_25;
    }

    v8 += 2;
    ++v3;
    v4 = v13 - 2;
    if (v13 < 2)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_18229FFD0(void *a1, unint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5, void *a6)
{
  v6 = *a4;
  if (*a4 != *a1)
  {
    sub_182AD3BA8();

    v46[0] = 0xD00000000000001BLL;
    v46[1] = 0x8000000182BE3F90;
    v15 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v15);

    MEMORY[0x1865D9CA0](540877088, 0xE400000000000000);
    v16 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v16);

    v12 = 0xD00000000000001BLL;
    v8 = 0x8000000182BE3F90;
    if (qword_1EA837248 == -1)
    {
LABEL_5:
      v17 = sub_182AD2698();
      __swift_project_value_buffer(v17, qword_1EA843418);

      v18 = sub_182AD2678();
      v19 = sub_182AD38C8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v46[0] = v21;
        *v20 = 136315650;
        v22 = sub_182AD3BF8();
        v24 = sub_181C64FFC(v22, v23, v46);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v46);
        *(v20 + 22) = 2080;
        v25 = sub_181C64FFC(v12, v8, v46);

        *(v20 + 24) = v25;
        _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v21, -1, -1);
        MEMORY[0x1865DF520](v20, -1, -1);
      }

      else
      {
      }

      return;
    }

LABEL_53:
    swift_once();
    goto LABEL_5;
  }

  v8 = a4;
  v12 = (a4 + 1);
  v13 = *(a4[1] + 16);
  v42 = a1 + 1;
  v14 = *(a1[1] + 16);
  if (v14 >= v13)
  {
    if (v13 >= v14)
    {
      goto LABEL_10;
    }

    v13 = *(a1[1] + 16);
  }

  sub_18229FA78(v13);
LABEL_10:
  v45 = *(v8 + 8);
  if ((sub_18229F688(a2, a3, *v8, v45) & 1) == 0)
  {
    return;
  }

  v26 = (a2 >> 6) - v6;
  if (a2 >> 6 < v6)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (a3 >> 6 < v6)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((a3 >> 6) - v6 >= v26)
  {
    if ((v26 & 0x8000000000000000) == 0)
    {
      v39 = v8;
      v40 = a1;
      v41 = (a2 >> 6) - v6;
      if (v26 < *(v45 + 16))
      {
        v8 = (a2 >> 6) - v6;
        v44 = *v42;
        v43 = *v42 + 32;
        v27 = v6 << 6;
        v12 = (v6 - 0x200000000000000) >> 58;
        while (v8 < *(v44 + 16))
        {
          v28 = *(v45 + 32 + 8 * v8);
          v29 = *(v43 + 8 * v8);
          if (v28 != v29)
          {
            if (v8 >> 57)
            {
              goto LABEL_52;
            }

            v30 = v8 << 6;
            v31 = v29 ^ v28;
            v32 = __clz(__rbit64(v29 ^ v28));
            while (1)
            {
              v34 = v32 + v30;
              if (__OFADD__(v32, v30))
              {
                break;
              }

              if ((v6 - 0x200000000000000) >> 58 != 63)
              {
                goto LABEL_45;
              }

              v35 = v34 + v27;
              if (__OFADD__(v34, v27))
              {
                goto LABEL_46;
              }

              if (v35 < 0)
              {
                goto LABEL_47;
              }

              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_48;
              }

              if (sub_181FF3DD0(v35))
              {

                MEMORY[0x1865D9F10](v36);
                if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_182AD3408();
                }

                sub_182AD3448();
              }

              v33 = (-1 << v32) - 1;
              if (v32 >= 0x40)
              {
                v33 = -1;
              }

              v31 &= v33;
              v32 = __clz(__rbit64(v31));
              if (!v31)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_19:
          if (v8 == (a3 >> 6) - v6)
          {
            if (!v41)
            {
              return;
            }

            v37 = *(v45 + 16) >> 1;
            if (v37 >= v41 - 1)
            {
              return;
            }

            sub_181FCCE28(0, *(v45 + 16) >> 1);
            if (__CFADD__(v6, v37))
            {
              goto LABEL_57;
            }

            *v39 = v6 + v37;
            v38 = *(v44 + 16) >> 1;
            sub_181FCCE28(0, v38);
            if (!__CFADD__(v6, v38))
            {
              *v40 = v6 + v38;
              return;
            }

            goto LABEL_58;
          }

          if (++v8 >= *(v45 + 16))
          {
            goto LABEL_49;
          }
        }

        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_1822A04E8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, _BYTE *a11)
{
  v16 = a10;
  v17 = a11;
  v18 = a9;
  if (!a1)
  {
    result = swift_beginAccess();
    if (*(a4 + 96) == 1)
    {
      v25 = *(a5 + 1024);
      v26 = v25 == 1 || a6 == 0;
      v27 = v26;
      if (v26)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
      }

      else
      {
        if (!v25 || a8 != 2)
        {
          v46 = a8 + 1;
          if (v46 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v25 = *(a6 + 8 * v46 + 32);
        }

        swift_beginAccess();
        v28 = v25[3];
        v29 = v25[4];
        v30 = v25[5];
      }

      *a11 = *a11 & 1 | (sub_18229A3B8(a8, a9, 0, a10, v28, v29, v30, v27) > 0);
      *(a4 + 96) = 0;
      goto LABEL_98;
    }

    goto LABEL_98;
  }

  if (a1 == 1)
  {
    result = swift_beginAccess();
    if (*(a4 + 184) == 1)
    {
      v20 = *(a5 + 1024);
      v21 = v20 == 1 || a6 == 0;
      LOBYTE(a5) = v21;
      if (v21)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
LABEL_51:
        *v17 = *v17 & 1 | (sub_18229A3B8(a8, v18, 0, v16, v22, v23, v24, a5) > 0);
        *(a4 + 184) = 0;
        goto LABEL_98;
      }

LABEL_46:
      if (v20 && a8 == 2)
      {
LABEL_50:

        swift_beginAccess();
        v22 = v20[3];
        v23 = v20[4];
        v24 = v20[5];

        goto LABEL_51;
      }

      v45 = a8 + 1;
      if (v45 < *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v20 = *(a6 + 8 * v45 + 32);
        goto LABEL_50;
      }

LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_98:
    swift_endAccess();
    return 1;
  }

  if ((*(a4 + 240) & 0x10) == 0)
  {
    swift_beginAccess();
    v31 = *(a4 + 192);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v31;
    if (result)
    {
      if (*(v31 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = sub_182083548(v31);
      v31 = result;
      *(a4 + 192) = result;
      if (*(result + 16))
      {
LABEL_26:
        if (*(v31 + 112) == 1)
        {
          v32 = *(a5 + 1024);
          v33 = v32 == 1 || a6 == 0;
          v34 = v33;
          if (v33)
          {
            v35 = a9;
            v36 = 0;
            v37 = 0;
            v38 = 0;
          }

          else
          {
            v75 = v34;
            if (v32 && a8 == 2)
            {
              v35 = a9;
            }

            else
            {
              v69 = a8 + 1;
              if (v69 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }

              v35 = a9;
              v32 = *(a6 + 8 * v69 + 32);
            }

            swift_beginAccess();
            v36 = v32[3];
            v37 = v32[4];
            v38 = v32[5];

            v34 = v75;
          }

          *a11 = *a11 & 1 | (sub_18229A3B8(a8, v35, 0, a10, v36, v37, v38, v34) > 0);
          *(v31 + 112) = 0;
        }

        *(a4 + 192) = v31;
        goto LABEL_98;
      }
    }

    __break(1u);
    goto LABEL_109;
  }

  v31 = a2;
  v74 = a10;
  swift_beginAccess();
  v20 = *(a4 + 192);
  v40 = v20[2];
  v73 = a9;
  if (!v40)
  {
LABEL_69:
    LOBYTE(v16) = a3 & 1;
    swift_beginAccess();
    v11 = *(a4 + 192);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 192) = v11;
    v18 = a8;
    if (result)
    {
LABEL_70:
      v57 = *(v11 + 16);
      v56 = *(v11 + 24);
      if (v57 >= v56 >> 1)
      {
        result = sub_181F598B0((v56 > 1), v57 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 16) = v57 + 1;
      v58 = v11 + 88 * v57;
      *(v58 + 32) = MEMORY[0x1E69E7CC0];
      v59 = v58 + 32;
      *(v59 + 8) = 0u;
      *(v59 + 24) = 0u;
      *(v59 + 40) = -1;
      *(v59 + 48) = -1;
      *(v59 + 56) = v31;
      *(v59 + 64) = v16;
      v60 = *(&v77 + 3);
      *(v59 + 65) = v77;
      *(v59 + 68) = v60;
      *(v59 + 72) = 0;
      *(v59 + 80) = 1;
      *(a4 + 192) = v11;
      if (v57 < *(v11 + 16))
      {
        if (*(v59 + 80) == 1)
        {
          v61 = v18;
          v62 = *(a5 + 1024);
          v63 = v62 == 1 || a6 == 0;
          v64 = v63;
          if (v63)
          {
            v65 = 0;
            v66 = 0;
            v67 = 0;
          }

          else
          {
            v72 = v64;
            if (!v62 || v18 != 2)
            {
              v68 = v18 + 1;
              if (v68 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_114:
                __break(1u);
                goto LABEL_115;
              }

              v62 = *(a6 + 8 * v68 + 32);
            }

            swift_beginAccess();
            v65 = v62[3];
            v66 = v62[4];
            v67 = v62[5];

            v64 = v72;
          }

          *v17 = *v17 & 1 | (sub_18229A3B8(v61, v73, 0, v74, v65, v66, v67, v64) > 0);
          *(v59 + 80) = 0;
        }

        *(a4 + 192) = v11;
        goto LABEL_98;
      }

      __break(1u);
      goto LABEL_111;
    }

LABEL_109:
    result = sub_181F598B0(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *(a4 + 192) = result;
    goto LABEL_70;
  }

  v71 = a8;

  v18 = 0;
  a8 = v40 - 1;
  v16 = 32;
  while (1)
  {
    v41 = *(v20 + v16 + 16);
    v89[0] = *(v20 + v16);
    v89[1] = v41;
    v42 = *(v20 + v16 + 32);
    v43 = *(v20 + v16 + 48);
    v44 = *(v20 + v16 + 64);
    v90 = *(v20 + v16 + 80);
    v89[3] = v43;
    v89[4] = v44;
    v89[2] = v42;
    v17 = v90;
    v85 = *(v20 + v16 + 32);
    v86 = *(v20 + v16 + 48);
    v87 = *(v20 + v16 + 64);
    v88 = *(v20 + v16 + 80);
    v83 = *(v20 + v16);
    v84 = *(v20 + v16 + 16);
    if (v44 != 1)
    {
      break;
    }

    if (a3)
    {
      goto LABEL_58;
    }

LABEL_43:
    v79 = v85;
    v80 = v86;
    v81 = v87;
    v82 = v88;
    v77 = v83;
    v78 = v84;
    sub_18206AD2C(v89, v76);
    result = sub_18206AD88(&v77);
    if (a8 == v18)
    {

      a8 = v71;
      v17 = a11;
      goto LABEL_69;
    }

    ++v18;
    v16 += 88;
    if (v18 >= v20[2])
    {
      __break(1u);
      goto LABEL_46;
    }
  }

  if ((a3 & 1) != 0 || *(&v43 + 1) != v31)
  {
    goto LABEL_43;
  }

LABEL_58:
  sub_18206AD2C(v89, &v77);

  if (!v17)
  {
LABEL_106:
    v79 = v85;
    v80 = v86;
    v81 = v87;
    v82 = v88;
    v77 = v83;
    v78 = v84;
    sub_18206AD88(&v77);
    return 1;
  }

  v47 = *(a5 + 1024);
  v48 = v47 == 1 || a6 == 0;
  v49 = v48;
  if (v48)
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v54 = v71;
    v53 = a11;
    v55 = a9;
LABEL_105:
    *v53 = *v53 & 1 | (sub_18229A3B8(v54, v55, 0, a10, v50, v51, v52, v49) > 0);
    v88 = 0;
    goto LABEL_106;
  }

  v54 = v71;
  v53 = a11;
  v55 = a9;
  if (v47 && v71 == 2)
  {
LABEL_104:

    swift_beginAccess();
    v50 = v47[3];
    v51 = v47[4];
    v52 = v47[5];

    goto LABEL_105;
  }

  v70 = v71 + 1;
  if (v70 < *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v47 = *(a6 + 8 * v70 + 32);
    goto LABEL_104;
  }

LABEL_115:
  __break(1u);
  return result;
}

uint64_t Statistics.subscript.getter(unsigned __int8 *a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_181A41ED0(*a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

unint64_t Statistics.subscript.setter(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  result = sub_182258BF8(a1, v4, isUniquelyReferenced_nonNull_native);
  *v2 = v7;
  return result;
}

uint64_t ConnectionStatistics.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t GlobalStatistics.subscript.getter(unsigned int a1)
{
  result = 0;
  if (*v1 && a1 <= 0x4D)
  {
    result = *(*v1 + 8 * a1);
    if (result < 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t GlobalStatistics.subscript.setter(uint64_t result, unsigned int a2)
{
  if (*v2 && a2 <= 0x4D)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      *(*v2 + 8 * a2) = result;
    }
  }

  return result;
}

uint64_t *(*GlobalStatistics.subscript.modify(uint64_t *(*result)(uint64_t *result, char a2), unsigned int a2))(uint64_t *result, char a2)
{
  v3 = 0;
  *(result + 4) = a2;
  v4 = *v2;
  *(result + 1) = *v2;
  if (v4 && a2 <= 0x4D && (v3 = *(v4 + 8 * a2), v3 < 0))
  {
    __break(1u);
  }

  else
  {
    *result = v3;
    return sub_1822A0E8C;
  }

  return result;
}

uint64_t *sub_1822A0E8C(uint64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  if (a2)
  {
    if (!v3)
    {
      return result;
    }

    v4 = *(result + 4);
    if (v4 > 0x4D)
    {
      return result;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_9:
      *(v3 + 8 * v4) = v2;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
    v4 = *(result + 4);
    if (v4 <= 0x4D)
    {
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_1822A0ECC()
{
  result = swift_getKeyPath();
  qword_1EA83BB98 = result;
  return result;
}

__n128 sub_1822A0EF4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = *(v1 + 144);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *v1;
  v6 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_1822A0F94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (qword_1EA837288 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v7 = sub_182AD3EF8();

  *a5 = v7;
  return result;
}

void FlowStatistics.setCount<A>(_:value:)(uint64_t a1, uint64_t a2)
{
  if (*v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BBB8);
    if (swift_dynamicCastClass())
    {
      v4 = qword_1EA837290;

      if (v4 == -1)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
LABEL_5:
          v5 = swift_modifyAtWritableKeyPath();
          swift_setAtWritableKeyPath();
          v5(v6, 0);

          return;
        }
      }

      else
      {
        swift_once();
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
    }
  }
}

void FlowStatistics.setCount<A>(_:value:)(uint64_t a1, unint64_t a2)
{
  if (*v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BBC0);
    if (swift_dynamicCastClass())
    {
      v4 = qword_1EA837290;

      if (v4 == -1)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        swift_once();
        if ((a2 & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (!HIDWORD(a2))
          {
            v5 = swift_modifyAtWritableKeyPath();
            swift_setAtWritableKeyPath();
            v5(v6, 0);

            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

void FlowStatistics.setExtraInfo<A>(_:value:)(uint64_t a1, unint64_t a2)
{
  if (*v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BBC8);
    if (swift_dynamicCastClass())
    {
      v4 = qword_1EA837298;

      if (v4 == -1)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        swift_once();
        if ((a2 & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (!HIDWORD(a2))
          {
            v5 = swift_modifyAtWritableKeyPath();
            swift_setAtWritableKeyPath();
            v5(v6, 0);

            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

void FlowStatistics.copyExtraInfo<A>(_:value:)(uint64_t a1, uint64_t *a2)
{
  if (*v2)
  {
    v3 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BBD0);
    if (swift_dynamicCastClass())
    {
      v4 = qword_1EA837298;

      if (v4 != -1)
      {
        swift_once();
      }

      v6[0] = v3;
      StatelessResetToken.toC()(&qword_1EA83B000);
      v5 = swift_modifyAtWritableKeyPath();
      swift_setAtWritableKeyPath();
      v5(v6, 0);
    }
  }
}