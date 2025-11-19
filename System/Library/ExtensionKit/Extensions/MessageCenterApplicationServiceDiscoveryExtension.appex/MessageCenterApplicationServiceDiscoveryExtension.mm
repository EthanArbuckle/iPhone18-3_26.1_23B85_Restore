uint64_t MessageCenterApplicationServiceDiscoveryExtension.payload.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MessageCenterEndpointPayloadProducer();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessageCenterEndpointPayloadProducer.init(capabilityProvider:)();
  a1[3] = type metadata accessor for MessageCenterEndpointPayload();
  a1[4] = lazy protocol witness table accessor for type MessageCenterApplicationServiceDiscoveryExtension and conformance MessageCenterApplicationServiceDiscoveryExtension(&lazy protocol witness table cache variable for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload, &type metadata accessor for MessageCenterEndpointPayload);
  a1[5] = lazy protocol witness table accessor for type MessageCenterApplicationServiceDiscoveryExtension and conformance MessageCenterApplicationServiceDiscoveryExtension(&lazy protocol witness table cache variable for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload, &type metadata accessor for MessageCenterEndpointPayload);
  __swift_allocate_boxed_opaque_existential_2(a1);
  MessageCenterEndpointPayloadProducer.payload()();
  return (*(v3 + 8))(v6, v2);
}

uint64_t MessageCenterApplicationServiceDiscoveryExtension.deviceTypes.getter()
{
  type metadata accessor for NWBrowser.Descriptor.Options.DeviceType();
  lazy protocol witness table accessor for type MessageCenterApplicationServiceDiscoveryExtension and conformance MessageCenterApplicationServiceDiscoveryExtension(&lazy protocol witness table cache variable for type NWBrowser.Descriptor.Options.DeviceType and conformance NWBrowser.Descriptor.Options.DeviceType, &type metadata accessor for NWBrowser.Descriptor.Options.DeviceType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Network9NWBrowserC10DescriptorO7OptionsV10DeviceTypeVGMd, &_sSay7Network9NWBrowserC10DescriptorO7OptionsV10DeviceTypeVGMR);
  lazy protocol witness table accessor for type DiscoverableApplicationServiceExtensionConfiguration<<<opaque return type of DiscoverableApplicationServiceExtension.configuration>>.0> and conformance DiscoverableApplicationServiceExtensionConfiguration<A>(&lazy protocol witness table cache variable for type [NWBrowser.Descriptor.Options.DeviceType] and conformance [A], &_sSay7Network9NWBrowserC10DescriptorO7OptionsV10DeviceTypeVGMd, &_sSay7Network9NWBrowserC10DescriptorO7OptionsV10DeviceTypeVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t protocol witness for AppExtension.configuration.getter in conformance MessageCenterApplicationServiceDiscoveryExtension@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_0();
  lazy protocol witness table accessor for type MessageCenterApplicationServiceDiscoveryExtension and conformance MessageCenterApplicationServiceDiscoveryExtension(v2, v3);
  result = DiscoverableApplicationServiceExtension.configuration.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for DiscoverableApplicationService.scope.getter in conformance MessageCenterApplicationServiceDiscoveryExtension@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DiscoverableApplicationServiceScope();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for MessageCenterApplicationServiceDiscoveryExtension();
  OUTLINED_FUNCTION_0();
  lazy protocol witness table accessor for type MessageCenterApplicationServiceDiscoveryExtension and conformance MessageCenterApplicationServiceDiscoveryExtension(v3, v4);
  static AppExtension.main()();
  return 0;
}

uint64_t type metadata accessor for MessageCenterApplicationServiceDiscoveryExtension()
{
  result = type metadata singleton initialization cache for MessageCenterApplicationServiceDiscoveryExtension;
  if (!type metadata singleton initialization cache for MessageCenterApplicationServiceDiscoveryExtension)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoverableApplicationServiceScope();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1000015F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoverableApplicationServiceScope();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata completion function for MessageCenterApplicationServiceDiscoveryExtension()
{
  result = type metadata accessor for DiscoverableApplicationServiceScope();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t lazy protocol witness table accessor for type MessageCenterApplicationServiceDiscoveryExtension and conformance MessageCenterApplicationServiceDiscoveryExtension(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type DiscoverableApplicationServiceExtensionConfiguration<<<opaque return type of DiscoverableApplicationServiceExtension.configuration>>.0> and conformance DiscoverableApplicationServiceExtensionConfiguration<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}