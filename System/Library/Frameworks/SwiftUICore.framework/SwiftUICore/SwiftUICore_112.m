uint64_t Color.ProviderTag.box.getter()
{
  Color.ProviderTag.type.getter();
  v0 = type metadata accessor for ColorBox();
  swift_getWitnessTable();
  return v0;
}

ValueMetadata *Color.ProviderTag.type.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 0:
      type metadata accessor for CustomColorProvider<Color>();
      v3 = v2;
      v4 = &lazy protocol witness table cache variable for type CustomColorProvider<Color> and conformance CustomColorProvider<A>;
      v5 = type metadata accessor for CustomColorProvider<Color>;
      goto LABEL_17;
    case 1:
      type metadata accessor for CustomHDRColorProvider<HDRColor>();
      v3 = v6;
      v4 = &lazy protocol witness table cache variable for type CustomHDRColorProvider<HDRColor> and conformance CustomHDRColorProvider<A>;
      v5 = type metadata accessor for CustomHDRColorProvider<HDRColor>;
      goto LABEL_17;
    case 2:
      v3 = &type metadata for Color.ForegroundColorProvider;
      lazy protocol witness table accessor for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider();
      return v3;
    case 3:
      v3 = &type metadata for Color.BackgroundColorProvider;
      lazy protocol witness table accessor for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider();
      return v3;
    case 4:
      v3 = &type metadata for Color.AccentColorProvider;
      lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider();
      return v3;
    case 5:
      v3 = &type metadata for ResolvedColorProvider;
      lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider();
      return v3;
    case 6:
      v3 = &type metadata for Color.DisplayP3;
      lazy protocol witness table accessor for type Color.DisplayP3 and conformance Color.DisplayP3();
      return v3;
    case 7:
      v3 = &type metadata for ContentStyle.ID;
      lazy protocol witness table accessor for type ContentStyle.ID and conformance ContentStyle.ID();
      return v3;
    case 8:
      v3 = &type metadata for SystemColorType;
      lazy protocol witness table accessor for type SystemColorType and conformance SystemColorType();
      return v3;
    case 9:
      v3 = &type metadata for Color.KeyColorProvider;
      lazy protocol witness table accessor for type Color.KeyColorProvider and conformance Color.KeyColorProvider();
      return v3;
    case 10:
      v3 = &type metadata for Color.CustomKeyColorProvider;
      lazy protocol witness table accessor for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider();
      return v3;
    case 11:
      v3 = &type metadata for Color.TintAdjustmentProvider;
      lazy protocol witness table accessor for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider();
      return v3;
    case 12:
      v3 = &type metadata for Color.DesaturatedColor;
      lazy protocol witness table accessor for type Color.DesaturatedColor and conformance Color.DesaturatedColor();
      return v3;
    case 13:
      v3 = &type metadata for GradientColorProvider;
      lazy protocol witness table accessor for type GradientColorProvider and conformance GradientColorProvider();
      return v3;
    case 14:
      v3 = &type metadata for Color.NamedColor;
      lazy protocol witness table accessor for type Color.NamedColor and conformance Color.NamedColor();
      return v3;
    case 15:
      v3 = &type metadata for Color.OpacityColor;
      lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor();
      return v3;
    case 16:
      v3 = &type metadata for Color.SettingOpacityProvider;
      lazy protocol witness table accessor for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider();
      return v3;
    case 17:
      v3 = &type metadata for Color.HierarchicalOpacityColor;
      lazy protocol witness table accessor for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor();
      return v3;
    case 18:
      v3 = &type metadata for Color.DestinationOverProvider;
      lazy protocol witness table accessor for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider();
      return v3;
    case 19:
      v3 = &type metadata for Color.MixProvider;
      lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider();
      return v3;
    case 20:
      type metadata accessor for CGColorRef(0);
      v3 = v7;
      v4 = &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef;
      v5 = type metadata accessor for CGColorRef;
LABEL_17:
      lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(v4, v5);
      break;
    case 21:
      v3 = &type metadata for UIKitPlatformColorProvider;
      lazy protocol witness table accessor for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider();
      break;
    case 22:
      v3 = &type metadata for AppKitPlatformColorProvider;
      lazy protocol witness table accessor for type AppKitPlatformColorProvider and conformance AppKitPlatformColorProvider();
      break;
    case 23:
      v3 = &type metadata for HeadroomColorProvider;
      lazy protocol witness table accessor for type HeadroomColorProvider and conformance HeadroomColorProvider();
      break;
    case 24:
      v3 = &type metadata for LinearScaleColorProvider;
      lazy protocol witness table accessor for type LinearScaleColorProvider and conformance LinearScaleColorProvider();
      break;
    default:
      v3 = (*(*v1 + 104))();
      break;
  }

  return v3;
}

uint64_t static ColorProvider.box.getter()
{
  v0 = type metadata accessor for ColorBox();
  swift_getWitnessTable();
  return v0;
}

unint64_t Color.ProviderTag.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 0x44486D6F74737563;
      break;
    case 2:
      result = 0x756F726765726F66;
      break;
    case 3:
      result = 0x6F72676B6361625FLL;
      break;
    case 4:
      result = 0x746E65636361;
      break;
    case 5:
      result = 0x746E6174736E6F63;
      break;
    case 6:
      result = 13168;
      break;
    case 7:
      result = 0x746E65746E6F635FLL;
      break;
    case 8:
      result = 0x6D6574737973;
      break;
    case 9:
      result = 0x6F6C6F4379656B5FLL;
      break;
    case 10:
      result = 0x4B6D6F747375635FLL;
      break;
    case 11:
      result = 0x6A6441746E69745FLL;
      break;
    case 12:
      result = 0x727574617365645FLL;
      break;
    case 13:
      result = 0x746E656964617267;
      break;
    case 14:
      result = 0x64656D616ELL;
      break;
    case 15:
      result = 0x7974696361706FLL;
      break;
    case 16:
      result = 0x676E69747465735FLL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 7891309;
      break;
    case 20:
      result = 0x7061724765726F63;
      break;
    case 21:
      result = 0x6C6F4374694B6975;
      break;
    case 22:
      result = 0x6F4374694B707061;
      break;
    case 23:
      result = 0x6D726F6674616C70;
      break;
    case 24:
      result = 0x6D6F6F7264616568;
      break;
    case 25:
      result = 0x63537261656E696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.AccentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.AccentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.AppKitColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.AppKitColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.ProviderTag.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Color.ProviderTag.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.ConstantCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.ConstantCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.CoreGraphicsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.CoreGraphicsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.CustomHDRCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.CustomHDRCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.ForegroundCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.ForegroundCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.GradientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.GradientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.HeadroomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.HeadroomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.LinearScaleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.LinearScaleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.MixCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.MixCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.OpacityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.OpacityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.P3CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.P3CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.PlatformCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.PlatformCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.SystemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.SystemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.UiKitColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.UiKitColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._backgroundCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._backgroundCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._contentStyleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._contentStyleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._customKeyColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._customKeyColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._desaturationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._desaturationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._destinationOverCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._destinationOverCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._hierarchicalOpacityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._hierarchicalOpacityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._keyColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._keyColorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._settingOpacityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._settingOpacityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag._tintAdjustmentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag._tintAdjustmentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Color.ProviderTag.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys, &unk_1F0074588, MEMORY[0x1E69E6F58]);
  v169 = *(v5 - 8);
  v170 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v168 = &v96 - v6;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.HeadroomCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys, &unk_1F0074568, v4);
  v166 = *(v7 - 8);
  v167 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v164 = &v96 - v8;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.PlatformCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys, &unk_1F0074548, v4);
  v165 = v9;
  v160 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v163 = &v96 - v10;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.AppKitColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys, &unk_1F00744B8, v4);
  v161 = *(v11 - 8);
  v162 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v96 - v12;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.UiKitColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys, &unk_1F0074498, v4);
  v157 = *(v13 - 8);
  v158 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v96 - v14;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.CoreGraphicsCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys, &unk_1F0074478, v4);
  v154 = *(v15 - 8);
  v155 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v96 - v16;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.MixCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys, &unk_1F0074458, v4);
  v152 = v17;
  v151 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v96 - v18;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._destinationOverCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys, &unk_1F0074438, v4);
  v149 = v19;
  v148 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v96 - v20;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._hierarchicalOpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys, &unk_1F0074418, v4);
  v146 = v21;
  v145 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v144 = &v96 - v22;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._settingOpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys, &unk_1F00743F8, v4);
  v143 = v23;
  v142 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v141 = &v96 - v24;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.OpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys, &unk_1F00743D8, v4);
  v140 = v25;
  v139 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v138 = &v96 - v26;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.NamedCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys, &unk_1F00743B8, v4);
  v137 = v27;
  v136 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v96 - v28;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.GradientCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys, &unk_1F0074398, v4);
  v134 = v29;
  v133 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v96 - v30;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._desaturationCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys, &unk_1F0074378, v4);
  v131 = v31;
  v130 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v129 = &v96 - v32;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._tintAdjustmentCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys, &unk_1F0074358, v4);
  v128 = v33;
  v127 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v126 = &v96 - v34;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._customKeyColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys, &unk_1F0074338, v4);
  v125 = v35;
  v124 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v96 - v36;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._keyColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys, &unk_1F0074318, v4);
  v122 = v37;
  v121 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v120 = &v96 - v38;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.SystemCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys, &unk_1F00742F8, v4);
  v119 = v39;
  v118 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v117 = &v96 - v40;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._contentStyleCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys, &unk_1F00742D8, v4);
  v116 = v41;
  v115 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v114 = &v96 - v42;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.P3CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys, &unk_1F00742B8, v4);
  v113 = v43;
  v112 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v111 = &v96 - v44;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.ConstantCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys, &unk_1F0074298, v4);
  v110 = v45;
  v109 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v108 = &v96 - v46;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.AccentCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys, &unk_1F0074278, v4);
  v107 = v47;
  v106 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v105 = &v96 - v48;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag._backgroundCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys, &unk_1F0074258, v4);
  v104 = v49;
  v103 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v102 = &v96 - v50;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.ForegroundCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys, &unk_1F0074238, v4);
  v101 = v51;
  v100 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v99 = &v96 - v52;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.CustomHDRCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys, &unk_1F0074218, v4);
  v98 = v53;
  v97 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v96 - v54;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.CustomCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys, &unk_1F00741F8, v4);
  v57 = v56;
  v96 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v96 - v58;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys, &unk_1F00741D8, v4);
  v61 = *(v60 - 8);
  v172 = v60;
  v173 = v61;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v96 - v62;
  v64 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys();
  v171 = v63;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v64)
  {
    case 0:
      LOBYTE(v174) = 0;
      lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys();
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v96 + 8))(v59, v57);
      goto LABEL_28;
    case 1:
      LOBYTE(v174) = 1;
      lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys();
      v80 = v171;
      v81 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v97 + 8))(v55, v98);
      return (*(v173 + 8))(v80, v81);
    case 2:
      LOBYTE(v174) = 2;
      lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys();
      v76 = v99;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v100 + 8))(v76, v101);
      goto LABEL_28;
    case 3:
      LOBYTE(v174) = 3;
      lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys();
      v78 = v102;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v103 + 8))(v78, v104);
      goto LABEL_28;
    case 4:
      LOBYTE(v174) = 4;
      lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys();
      v70 = v105;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v106 + 8))(v70, v107);
      goto LABEL_28;
    case 5:
      LOBYTE(v174) = 5;
      lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys();
      v84 = v108;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v109 + 8))(v84, v110);
      goto LABEL_28;
    case 6:
      LOBYTE(v174) = 6;
      lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys();
      v86 = v111;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v112 + 8))(v86, v113);
      goto LABEL_28;
    case 7:
      LOBYTE(v174) = 7;
      lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys();
      v79 = v114;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v115 + 8))(v79, v116);
      goto LABEL_28;
    case 8:
      LOBYTE(v174) = 8;
      lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys();
      v89 = v117;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v118 + 8))(v89, v119);
      goto LABEL_28;
    case 9:
      LOBYTE(v174) = 9;
      lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys();
      v72 = v120;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v121 + 8))(v72, v122);
      goto LABEL_28;
    case 10:
      LOBYTE(v174) = 10;
      lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys();
      v88 = v123;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v124 + 8))(v88, v125);
      goto LABEL_28;
    case 11:
      LOBYTE(v174) = 11;
      lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys();
      v69 = v126;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v127 + 8))(v69, v128);
      goto LABEL_28;
    case 12:
      LOBYTE(v174) = 12;
      lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys();
      v71 = v129;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v130 + 8))(v71, v131);
      goto LABEL_28;
    case 13:
      LOBYTE(v174) = 13;
      lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys();
      v85 = v132;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v133 + 8))(v85, v134);
      goto LABEL_28;
    case 14:
      LOBYTE(v174) = 14;
      lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys();
      v68 = v135;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v136 + 8))(v68, v137);
      goto LABEL_28;
    case 15:
      LOBYTE(v174) = 15;
      lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys();
      v77 = v138;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v139 + 8))(v77, v140);
      goto LABEL_28;
    case 16:
      LOBYTE(v174) = 16;
      lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys();
      v67 = v141;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v142 + 8))(v67, v143);
      goto LABEL_28;
    case 17:
      LOBYTE(v174) = 17;
      lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys();
      v83 = v144;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v145 + 8))(v83, v146);
      goto LABEL_28;
    case 18:
      LOBYTE(v174) = 18;
      lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys();
      v87 = v147;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v148 + 8))(v87, v149);
      goto LABEL_28;
    case 19:
      LOBYTE(v174) = 19;
      lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys();
      v90 = v150;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v151 + 8))(v90, v152);
      goto LABEL_28;
    case 20:
      LOBYTE(v174) = 20;
      lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys();
      v73 = v153;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v154;
      v74 = v155;
      goto LABEL_27;
    case 21:
      LOBYTE(v174) = 21;
      lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys();
      v73 = v156;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v157;
      v74 = v158;
      goto LABEL_27;
    case 22:
      LOBYTE(v174) = 22;
      lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys();
      v73 = v159;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v161;
      v74 = v162;
      goto LABEL_27;
    case 23:
      LOBYTE(v174) = 24;
      lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys();
      v73 = v164;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v166;
      v74 = v167;
      goto LABEL_27;
    case 24:
      LOBYTE(v174) = 25;
      lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys();
      v73 = v168;
      v66 = v171;
      v65 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v75 = v169;
      v74 = v170;
LABEL_27:
      (*(v75 + 8))(v73, v74);
LABEL_28:
      result = (*(v173 + 8))(v66, v65);
      break;
    default:
      v91 = v160;
      LOBYTE(v174) = 23;
      lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys();
      v92 = v163;
      v94 = v171;
      v93 = v172;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v174 = v64;
      lazy protocol witness table accessor for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag();
      v95 = v165;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v91 + 8))(v92, v95);
      result = (*(v173 + 8))(v94, v93);
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag);
  }

  return result;
}

uint64_t Color.ProviderTag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v214 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.LinearScaleCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys, &unk_1F0074588, MEMORY[0x1E69E6F48]);
  v212 = *(v4 - 8);
  v213 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v208 = &v134 - v5;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.HeadroomCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys, &unk_1F0074568, v3);
  v209 = v6;
  v184 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v207 = &v134 - v7;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.PlatformCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys, &unk_1F0074548, v3);
  v185 = v8;
  v183 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v206 = &v134 - v9;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.AppKitColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys, &unk_1F00744B8, v3);
  v182 = v10;
  v181 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v205 = &v134 - v11;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.UiKitColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys, &unk_1F0074498, v3);
  v180 = v12;
  v179 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v204 = &v134 - v13;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.CoreGraphicsCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys, &unk_1F0074478, v3);
  v178 = v14;
  v177 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v203 = &v134 - v15;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.MixCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys, &unk_1F0074458, v3);
  v176 = v16;
  v175 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v202 = &v134 - v17;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._destinationOverCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys, &unk_1F0074438, v3);
  v174 = v18;
  v173 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v201 = &v134 - v19;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._hierarchicalOpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys, &unk_1F0074418, v3);
  v172 = v20;
  v171 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v200 = &v134 - v21;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._settingOpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys, &unk_1F00743F8, v3);
  v170 = v22;
  v169 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v199 = &v134 - v23;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.OpacityCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys, &unk_1F00743D8, v3);
  v168 = v24;
  v167 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v198 = &v134 - v25;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.NamedCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys, &unk_1F00743B8, v3);
  v166 = v26;
  v165 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v197 = &v134 - v27;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.GradientCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys, &unk_1F0074398, v3);
  v164 = v28;
  v163 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v196 = &v134 - v29;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._desaturationCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys, &unk_1F0074378, v3);
  v162 = v30;
  v161 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v195 = &v134 - v31;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._tintAdjustmentCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys, &unk_1F0074358, v3);
  v160 = v32;
  v159 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v194 = &v134 - v33;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._customKeyColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys, &unk_1F0074338, v3);
  v158 = v34;
  v157 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v193 = &v134 - v35;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._keyColorCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys, &unk_1F0074318, v3);
  v156 = v36;
  v155 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v192 = &v134 - v37;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.SystemCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys, &unk_1F00742F8, v3);
  v154 = v38;
  v153 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v191 = &v134 - v39;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._contentStyleCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys, &unk_1F00742D8, v3);
  v152 = v40;
  v151 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v190 = &v134 - v41;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.P3CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys, &unk_1F00742B8, v3);
  v149 = v42;
  v150 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v188 = &v134 - v43;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.ConstantCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys, &unk_1F0074298, v3);
  v147 = v44;
  v148 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v211 = &v134 - v45;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.AccentCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys, &unk_1F0074278, v3);
  v146 = v46;
  v145 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v189 = &v134 - v47;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag._backgroundCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys, &unk_1F0074258, v3);
  v144 = v48;
  v143 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v210 = &v134 - v49;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.ForegroundCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys, &unk_1F0074238, v3);
  v142 = v50;
  v141 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v187 = &v134 - v51;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.CustomHDRCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys, &unk_1F0074218, v3);
  v140 = v52;
  v139 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v186 = &v134 - v53;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.CustomCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys, &unk_1F00741F8, v3);
  v55 = v54;
  v138 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v134 - v56;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys, &unk_1F00741D8, v3);
  v59 = v58;
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v134 - v61;
  v63 = a1[3];
  v215 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v63);
  lazy protocol witness table accessor for type Color.ProviderTag.CodingKeys and conformance Color.ProviderTag.CodingKeys();
  v64 = v216;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v216 = v64;
  if (v64)
  {
LABEL_9:
    v81 = v215;
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v136 = v57;
  v135 = v55;
  v65 = v210;
  v66 = v211;
  v67 = v212;
  v68 = v213;
  v137 = v60;
  v69 = v214;
  v70 = KeyedDecodingContainer.allKeys.getter();
  v71 = (2 * *(v70 + 16)) | 1;
  v217 = v70;
  v218 = v70 + 32;
  v219 = 0;
  v220 = v71;
  v72 = specialized Collection<>.popFirst()();
  if (v219 != v220 >> 1)
  {
LABEL_6:
    v77 = type metadata accessor for DecodingError();
    v78 = swift_allocError();
    v80 = v79;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v80 = &type metadata for Color.ProviderTag;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v77 - 8) + 104))(v80, *MEMORY[0x1E69E6AF8], v77);
    v216 = v78;
    swift_willThrow();
LABEL_7:
    (*(v137 + 8))(v62, v59);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v73 = v209;
  switch(v72)
  {
    case 0:
      LOBYTE(v221) = 0;
      lazy protocol witness table accessor for type Color.ProviderTag.CustomCodingKeys and conformance Color.ProviderTag.CustomCodingKeys();
      v74 = v136;
      v75 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v75;
      if (v75)
      {
        goto LABEL_7;
      }

      (*(v138 + 8))(v74, v135);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 0;
      goto LABEL_63;
    case 1:
      LOBYTE(v221) = 1;
      lazy protocol witness table accessor for type Color.ProviderTag.CustomHDRCodingKeys and conformance Color.ProviderTag.CustomHDRCodingKeys();
      v106 = v186;
      v107 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v107;
      if (v107)
      {
        goto LABEL_7;
      }

      (*(v139 + 8))(v106, v140);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 1;
      goto LABEL_63;
    case 2:
      LOBYTE(v221) = 2;
      lazy protocol witness table accessor for type Color.ProviderTag.ForegroundCodingKeys and conformance Color.ProviderTag.ForegroundCodingKeys();
      v99 = v187;
      v100 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v100;
      if (v100)
      {
        goto LABEL_7;
      }

      (*(v141 + 8))(v99, v142);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 2;
      goto LABEL_63;
    case 3:
      LOBYTE(v221) = 3;
      lazy protocol witness table accessor for type Color.ProviderTag._backgroundCodingKeys and conformance Color.ProviderTag._backgroundCodingKeys();
      v103 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v103;
      if (v103)
      {
        goto LABEL_7;
      }

      (*(v143 + 8))(v65, v144);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 3;
      goto LABEL_63;
    case 4:
      LOBYTE(v221) = 4;
      lazy protocol witness table accessor for type Color.ProviderTag.AccentCodingKeys and conformance Color.ProviderTag.AccentCodingKeys();
      v89 = v189;
      v90 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v90;
      if (v90)
      {
        goto LABEL_7;
      }

      (*(v145 + 8))(v89, v146);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 4;
      goto LABEL_63;
    case 5:
      LOBYTE(v221) = 5;
      lazy protocol witness table accessor for type Color.ProviderTag.ConstantCodingKeys and conformance Color.ProviderTag.ConstantCodingKeys();
      v112 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v112;
      if (v112)
      {
        goto LABEL_7;
      }

      (*(v148 + 8))(v66, v147);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 5;
      goto LABEL_63;
    case 6:
      LOBYTE(v221) = 6;
      lazy protocol witness table accessor for type Color.ProviderTag.P3CodingKeys and conformance Color.ProviderTag.P3CodingKeys();
      v117 = v188;
      v118 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v118;
      if (v118)
      {
        goto LABEL_7;
      }

      (*(v150 + 8))(v117, v149);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 6;
      goto LABEL_63;
    case 7:
      LOBYTE(v221) = 7;
      lazy protocol witness table accessor for type Color.ProviderTag._contentStyleCodingKeys and conformance Color.ProviderTag._contentStyleCodingKeys();
      v104 = v190;
      v105 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v105;
      if (v105)
      {
        goto LABEL_7;
      }

      (*(v151 + 8))(v104, v152);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 7;
      goto LABEL_63;
    case 8:
      LOBYTE(v221) = 8;
      lazy protocol witness table accessor for type Color.ProviderTag.SystemCodingKeys and conformance Color.ProviderTag.SystemCodingKeys();
      v123 = v191;
      v124 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v124;
      if (v124)
      {
        goto LABEL_7;
      }

      (*(v153 + 8))(v123, v154);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 8;
      goto LABEL_63;
    case 9:
      LOBYTE(v221) = 9;
      lazy protocol witness table accessor for type Color.ProviderTag._keyColorCodingKeys and conformance Color.ProviderTag._keyColorCodingKeys();
      v93 = v192;
      v94 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v94;
      if (v94)
      {
        goto LABEL_7;
      }

      (*(v155 + 8))(v93, v156);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 9;
      goto LABEL_63;
    case 10:
      LOBYTE(v221) = 10;
      lazy protocol witness table accessor for type Color.ProviderTag._customKeyColorCodingKeys and conformance Color.ProviderTag._customKeyColorCodingKeys();
      v121 = v193;
      v122 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v122;
      if (v122)
      {
        goto LABEL_7;
      }

      (*(v157 + 8))(v121, v158);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 10;
      goto LABEL_63;
    case 11:
      LOBYTE(v221) = 11;
      lazy protocol witness table accessor for type Color.ProviderTag._tintAdjustmentCodingKeys and conformance Color.ProviderTag._tintAdjustmentCodingKeys();
      v87 = v194;
      v88 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v88;
      if (v88)
      {
        goto LABEL_7;
      }

      (*(v159 + 8))(v87, v160);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 11;
      goto LABEL_63;
    case 12:
      LOBYTE(v221) = 12;
      lazy protocol witness table accessor for type Color.ProviderTag._desaturationCodingKeys and conformance Color.ProviderTag._desaturationCodingKeys();
      v91 = v195;
      v92 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v92;
      if (v92)
      {
        goto LABEL_7;
      }

      (*(v161 + 8))(v91, v162);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 12;
      goto LABEL_63;
    case 13:
      LOBYTE(v221) = 13;
      lazy protocol witness table accessor for type Color.ProviderTag.GradientCodingKeys and conformance Color.ProviderTag.GradientCodingKeys();
      v115 = v196;
      v116 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v116;
      if (v116)
      {
        goto LABEL_7;
      }

      (*(v163 + 8))(v115, v164);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 13;
      goto LABEL_63;
    case 14:
      LOBYTE(v221) = 14;
      lazy protocol witness table accessor for type Color.ProviderTag.NamedCodingKeys and conformance Color.ProviderTag.NamedCodingKeys();
      v85 = v197;
      v86 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v86;
      if (v86)
      {
        goto LABEL_7;
      }

      (*(v165 + 8))(v85, v166);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 14;
      goto LABEL_63;
    case 15:
      LOBYTE(v221) = 15;
      lazy protocol witness table accessor for type Color.ProviderTag.OpacityCodingKeys and conformance Color.ProviderTag.OpacityCodingKeys();
      v101 = v198;
      v102 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v102;
      if (v102)
      {
        goto LABEL_7;
      }

      (*(v167 + 8))(v101, v168);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 15;
      goto LABEL_63;
    case 16:
      LOBYTE(v221) = 16;
      lazy protocol witness table accessor for type Color.ProviderTag._settingOpacityCodingKeys and conformance Color.ProviderTag._settingOpacityCodingKeys();
      v83 = v199;
      v84 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v84;
      if (v84)
      {
        goto LABEL_7;
      }

      (*(v169 + 8))(v83, v170);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 16;
      goto LABEL_63;
    case 17:
      LOBYTE(v221) = 17;
      lazy protocol witness table accessor for type Color.ProviderTag._hierarchicalOpacityCodingKeys and conformance Color.ProviderTag._hierarchicalOpacityCodingKeys();
      v108 = v200;
      v109 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v109;
      if (v109)
      {
        goto LABEL_7;
      }

      (*(v171 + 8))(v108, v172);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 17;
      goto LABEL_63;
    case 18:
      LOBYTE(v221) = 18;
      lazy protocol witness table accessor for type Color.ProviderTag._destinationOverCodingKeys and conformance Color.ProviderTag._destinationOverCodingKeys();
      v119 = v201;
      v120 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v120;
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v173 + 8))(v119, v174);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 18;
      goto LABEL_63;
    case 19:
      LOBYTE(v221) = 19;
      lazy protocol witness table accessor for type Color.ProviderTag.MixCodingKeys and conformance Color.ProviderTag.MixCodingKeys();
      v127 = v202;
      v128 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v128;
      if (v128)
      {
        goto LABEL_7;
      }

      (*(v175 + 8))(v127, v176);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 19;
      goto LABEL_63;
    case 20:
      LOBYTE(v221) = 20;
      lazy protocol witness table accessor for type Color.ProviderTag.CoreGraphicsCodingKeys and conformance Color.ProviderTag.CoreGraphicsCodingKeys();
      v110 = v203;
      v111 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v111;
      if (v111)
      {
        goto LABEL_7;
      }

      (*(v177 + 8))(v110, v178);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 20;
      goto LABEL_63;
    case 21:
      LOBYTE(v221) = 21;
      lazy protocol witness table accessor for type Color.ProviderTag.UiKitColorCodingKeys and conformance Color.ProviderTag.UiKitColorCodingKeys();
      v113 = v204;
      v114 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v114;
      if (v114)
      {
        goto LABEL_7;
      }

      (*(v179 + 8))(v113, v180);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 21;
      goto LABEL_63;
    case 22:
      LOBYTE(v221) = 22;
      lazy protocol witness table accessor for type Color.ProviderTag.AppKitColorCodingKeys and conformance Color.ProviderTag.AppKitColorCodingKeys();
      v125 = v205;
      v126 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v126;
      if (v126)
      {
        goto LABEL_7;
      }

      (*(v181 + 8))(v125, v182);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 22;
      goto LABEL_63;
    case 23:
      LOBYTE(v221) = 23;
      lazy protocol witness table accessor for type Color.ProviderTag.PlatformCodingKeys and conformance Color.ProviderTag.PlatformCodingKeys();
      v129 = v206;
      v130 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v130;
      if (v130)
      {
        goto LABEL_7;
      }

      lazy protocol witness table accessor for type Color.ProviderTag.PlatformTag and conformance Color.ProviderTag.PlatformTag();
      v131 = v185;
      v132 = v216;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v133 = v137;
      v216 = v132;
      if (v132)
      {
        (*(v183 + 8))(v129, v131);
        (*(v133 + 8))(v62, v59);
        goto LABEL_8;
      }

      (*(v183 + 8))(v129, v131);
      (*(v133 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = v221;
LABEL_63:
      v81 = v215;
      *v69 = v76;
      break;
    case 24:
      LOBYTE(v221) = 24;
      lazy protocol witness table accessor for type Color.ProviderTag.HeadroomCodingKeys and conformance Color.ProviderTag.HeadroomCodingKeys();
      v97 = v207;
      v98 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v98;
      if (v98)
      {
        goto LABEL_7;
      }

      (*(v184 + 8))(v97, v73);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 23;
      goto LABEL_63;
    case 25:
      LOBYTE(v221) = 25;
      lazy protocol witness table accessor for type Color.ProviderTag.LinearScaleCodingKeys and conformance Color.ProviderTag.LinearScaleCodingKeys();
      v95 = v208;
      v96 = v216;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v216 = v96;
      if (v96)
      {
        goto LABEL_7;
      }

      (*(v67 + 8))(v95, v68);
      (*(v137 + 8))(v62, v59);
      swift_unknownObjectRelease();
      v76 = 24;
      goto LABEL_63;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t CustomColorProvider.serialize(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = dispatch thunk of Encoder.userInfo.getter();
  if (one-time initialization token for environment != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = __swift_project_value_buffer(v5, static CodingUserInfoKey.environment);
  if (!*(v4 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v7, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    EnvironmentValues.init()(v16);
    v9 = v16[0];
    goto LABEL_9;
  }

  v9 = v15;
LABEL_9:
  v16[0] = v9;
  v10 = CustomColorProvider.resolve(in:)(v16, a2);
  specialized Color.RGBADefinition.encode(to:)(a1, v10, v11, v12, v13);
}

void Color.Resolved.codingProxy.getter(float *a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t specialized Color.RGBADefinition.encode(to:)(void *a1, float a2, float a3, float a4, float a5)
{
  type metadata accessor for KeyedDecodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - v13;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for Color.RGBADefinition<Float, Float>(0, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys);
  lazy protocol witness table accessor for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  v15 = v17[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v15)
  {
    v22 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t Color.RGBADefinition.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v14 = *(a2 + 16);
  v10 = *(a2 + 24);
  v15 = v10;
  v13 = *(a2 + 40);
  v16 = v13;
  v11 = v3;
  v12 = v14;
  v17 = v3;
  type metadata accessor for Color.RGBADefinition.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  v8 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v8)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t static CustomColorProvider.deserialize(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CustomColorProvider();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-1] - v8;
  outlined init with copy of AnyTrackedValue(a1, v19);
  result = _s7SwiftUI5ColorVAAE14RGBADefinitionV4fromAEy_xq_Gs7Decoder_p_tKcfCSf_SfTt1g5(v19, &v20);
  if (!v2)
  {
    type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
    v18 = v20;
    v11 = swift_allocObject();
    *(v11 + 16) = v18;
    *(v11 + 32) = 2143289344;
    v19[0] = v11;
    type metadata accessor for CustomColorProvider<Color>();
    v12 = swift_dynamicCast();
    v13 = *(*(v5 - 8) + 56);
    if (v12)
    {
      v14 = *(v5 - 8);
      v13(v9, 0, 1, v5);
      return (*(v14 + 32))(a2, v9, v5);
    }

    else
    {
      v13(v9, 1, 1, v5);
      (*(v7 + 8))(v9, v6);
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t _s7SwiftUI5ColorVAAE14RGBADefinitionV4fromAEy_xq_Gs7Decoder_p_tKcfCSf_SfTt1g5@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v16 = a2;
  type metadata accessor for KeyedDecodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>, MEMORY[0x1E69E6F48]);
  v17 = v4;
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for Color.RGBADefinition<Float, Float>(0, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys);
  lazy protocol witness table accessor for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v7 = v15;
    v8 = v16;
    v18 = 0;
    v9 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v19;
    v18 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v18 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v19;
    v18 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v6, v9);
    v14 = v19;
    *v8 = v10;
    v8[1] = v11;
    v8[2] = v12;
    v8[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Color.RGBADefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v64 = a5;
  v52 = a8;
  v51 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v48 - v21;
  v65 = v22;
  v66 = v23;
  v67 = v24;
  v68 = v25;
  v69 = v26;
  v70 = v27;
  type metadata accessor for Color.RGBADefinition.CodingKeys();
  swift_getWitnessTable();
  v63 = type metadata accessor for KeyedDecodingContainer();
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v29 = &v48 - v28;
  v61 = a2;
  v62 = a4;
  v65 = a2;
  v66 = a3;
  v55 = a3;
  v67 = a4;
  v68 = v64;
  v53 = a6;
  v69 = a6;
  v70 = a7;
  v30 = type metadata accessor for Color.RGBADefinition();
  v50 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v48 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v64 = v29;
  v33 = v71;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v57;
  v49 = v32;
  v48 = v30;
  v35 = v58;
  v36 = v59;
  v71 = a1;
  LOBYTE(v65) = 0;
  v37 = v61;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = *(v35 + 32);
  v38(v49, v36, v37);
  LOBYTE(v65) = 1;
  v39 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = v49;
  v38(&v49[*(v48 + 68)], v39, v37);
  LOBYTE(v65) = 2;
  v41 = v56;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = v41;
  v43 = v48;
  v38(&v40[*(v48 + 72)], v42, v37);
  LOBYTE(v65) = 3;
  v45 = v54;
  v44 = v55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v60 + 8))(v64, v63);
  (*(v51 + 32))(&v40[*(v43 + 76)], v45, v44);
  v46 = v50;
  (*(v50 + 16))(v52, v40, v43);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return (*(v46 + 8))(v40, v43);
}

uint64_t CustomHDRColorProvider.serialize(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = dispatch thunk of Encoder.userInfo.getter();
  if (one-time initialization token for environment != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = __swift_project_value_buffer(v5, static CodingUserInfoKey.environment);
  if (!*(v4 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v7, v12);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    EnvironmentValues.init()(v12);
    v9 = *v12;
    goto LABEL_9;
  }

  v9 = v11;
LABEL_9:
  v11 = v9;
  CustomHDRColorProvider.resolveHDR(in:)(&v11, a2, v12);
  Color.ResolvedHDR.encode(to:)(a1);
}

uint64_t static CustomHDRColorProvider.deserialize(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for CustomHDRColorProvider();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  outlined init with copy of AnyTrackedValue(a1, &v16);
  result = specialized Color.ResolvedHDR.init(from:)(&v16, &v18);
  if (!v2)
  {
    v14 = v6;
    v15 = 0;
    v16 = v18;
    v17 = v19;
    type metadata accessor for CustomHDRColorProvider<HDRColor>();
    v10 = swift_dynamicCast();
    v11 = *(v4 - 8);
    v12 = *(v11 + 56);
    if (v10)
    {
      v12(v8, 0, 1, v4);
      return (*(v11 + 32))(v20, v8, v4);
    }

    else
    {
      v12(v8, 1, 1, v4);
      v13 = v15;
      closure #1 in implicit closure #1 in static CustomHDRColorProvider.deserialize(from:)(a1);
      v15 = v13;
      result = (*(v11 + 48))(v8, 1, v4);
      if (result != 1)
      {
        return (*(v14 + 8))(v8, v5);
      }
    }
  }

  return result;
}

uint64_t closure #1 in implicit closure #1 in static CustomHDRColorProvider.deserialize(from:)(void *a1)
{
  v2 = type metadata accessor for DecodingError();
  swift_allocError();
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B00], v2);
  return swift_willThrow();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HDRColor()
{
  Hasher.init(_seed:)();
  ResolvedColorProvider.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HDRColor()
{
  Hasher.init(_seed:)();
  ResolvedColorProvider.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CGColorRef.serialize(to:)(void *a1)
{
  v3 = CGColorGetColorSpace(v1);
  if (v3)
  {
    v4 = v3;
    v5 = CGColorSpaceCopyName(v3);

    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  CGColorRef.components.getter();
  Color.CGDefinition.encode(to:)(a1);
}

uint64_t Color.CGDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.CGDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys, &unk_1F00740D8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  v8 = v12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v8)
  {
    v13 = v11;
    v14 = 1;
    type metadata accessor for [CGFloat]();
    lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys);
  }

  return result;
}

void type metadata accessor for [CGFloat]()
{
  if (!lazy cache variable for type metadata for [CGFloat])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CGFloat]);
    }
  }
}

void static CGColorRef.deserialize(from:)(void *a1)
{
  v4 = specialized static CGColorRef.deserializeCGColor(from:)(a1);
  if (!v2)
  {
    v5 = v4;
    if (!swift_dynamicCastUnknownClass())
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v8 = v1;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v6);
      swift_willThrow();
    }
  }
}

uint64_t Color.CGDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.CGDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys, &unk_1F00740D8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v17[0];
    v19 = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v14 = v11;
    type metadata accessor for [CGFloat]();
    v18 = 1;
    lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v9 + 8))(v8, v5);
    v16 = v17[1];
    *v10 = v14;
    v10[1] = v13;
    v10[2] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void protocol witness for static Serializable.deserialize(from:) in conformance CGColorRef(void *a1@<X0>, void *a2@<X8>)
{
  static CGColorRef.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance Color.MixProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.MixProvider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance Color.DestinationOverProvider@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.DestinationOverProvider@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance Color.HierarchicalOpacityColor@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.HierarchicalOpacityColor@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance Color.OpacityColor@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[1] = v1[1];
  *a1 = v2;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.OpacityColor@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance Color.SettingOpacityProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 8) = *(v1 + 2);
  *a1 = v2;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.SettingOpacityProvider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

void protocol witness for CodableByProxy.codingProxy.getter in conformance Color.NamedColor(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];

  if (v5)
  {
    v6 = [v5 bundlePath];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v8;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.NamedColor@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  if (!v5 || (v6 = a1[2], v7 = objc_allocWithZone(MEMORY[0x1E696AAE8]), v8 = MEMORY[0x193ABEC20](v6, v5), v9 = [v7 initWithPath_], v8, !v9))
  {
    v9 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v9;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance GradientColorProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of EitherGradient(v2, v3);
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance GradientColorProvider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return outlined copy of EitherGradient(v2, v3);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Color.KeyColorProvider(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodingError();
  swift_allocError();
  v6 = v5;
  type metadata accessor for (Any, EncodingError.Context)();
  *(v6 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6B30], v4);
  return swift_willThrow();
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.KeyColorProvider(void *a1)
{
  v3 = type metadata accessor for DecodingError();
  swift_allocError();
  v5 = v4;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)();
  *v5 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  return swift_willThrow();
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Color.CustomKeyColorProvider(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for EncodingError();
  swift_allocError();
  v8 = v7;
  type metadata accessor for (Any, EncodingError.Context)();
  v8[3] = a2;
  *v8 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B30], v6);
  return swift_willThrow();
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.CustomKeyColorProvider(void *a1)
{
  v3 = type metadata accessor for DecodingError();
  swift_allocError();
  v5 = v4;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)();
  *v5 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  return swift_willThrow();
}

__n128 protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance ResolvedColorProvider@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u32[0] = 2143289344;
  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Color.DisplayP3@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Color.DisplayP3@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 24) = v3;
  return result;
}

uint64_t Color.RGBADefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t Color.RGBADefinition.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 6579570;
  v2 = 1702194274;
  if (a1 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (a1)
  {
    v1 = 0x6E65657267;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t Color.GradientDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.GradientDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys, &unk_1F00746C8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of EitherGradient(v8, v9);
  lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v8;
  v16 = v9;
  v14 = 0;
  lazy protocol witness table accessor for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition();
  v11 = v13;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of EitherGradient(v15, v16);
  if (!v11)
  {
    v15 = v10;
    v14 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Color.GradientDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.GradientDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys, &unk_1F00746C8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v16;
  v20 = 0;
  lazy protocol witness table accessor for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v17;
  v19 = v18;
  v20 = 1;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v9 + 8))(v8, v5);
  v12 = v17;
  v13 = v19;
  *v10 = v11;
  *(v10 + 8) = v13;
  *(v10 + 16) = v12;
  outlined copy of EitherGradient(v11, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined consume of EitherGradient(v11, v13);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.RGBADefinition<A, B>.CodingKeys()
{
  Hasher.init(_seed:)();
  EventListenerPhase.FailureReason.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.RGBADefinition<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Color.RGBADefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Color.RGBADefinition<A, B>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized Color.RGBADefinition.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.RGBADefinition<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.RGBADefinition<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.GradientDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.GradientDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.GradientDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.GradientDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Color.NamedDefinition.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.NamedDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys, &unk_1F0074758, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  v11 = v13[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t Color.OpacityDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t Color.OpacityDefinition.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7974696361706FLL;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t Color.OpacityDefinition.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v12[1] = *(a2 + 32);
  v12[2] = v4;
  type metadata accessor for Color.OpacityDefinition.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v12[3];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v9;
  v14 = 0;
  type metadata accessor for ProxyCodable<Color>();
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);

  v10 = v12[4];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v10)
  {
    v13 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Color.OpacityDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v22 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Color.OpacityDefinition.CodingKeys();
  swift_getWitnessTable();
  v29 = type metadata accessor for KeyedDecodingContainer();
  v24 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v20 - v8;
  v26 = a2;
  v27 = a3;
  v10 = type metadata accessor for Color.OpacityDefinition();
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v9;
  v13 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v10;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  type metadata accessor for ProxyCodable<Color>();
  v32 = 0;
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v12 = v33;
  v31 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v28, v29);
  v17 = v30;
  (*(v22 + 32))(&v12[*(v30 + 44)], v15, v16);
  v18 = v21;
  (*(v21 + 16))(v23, v12, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v18 + 8))(v12, v17);
}

uint64_t Color.HierarchicalOpacityDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.HierarchicalOpacityDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys, &unk_1F0074858, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v11[1] = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  type metadata accessor for ProxyCodable<Color>();
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  v9 = v11[2];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v9)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Color.HierarchicalOpacityDefinition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.HierarchicalOpacityDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys, &unk_1F0074858, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v14;
  type metadata accessor for ProxyCodable<Color>();
  v16 = 0;
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v17;
  v15 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v9 + 8))(v8, v5);
  *v10 = v11;
  v10[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Color.OperationDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.OperationDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys, &unk_1F00748E8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v8;
  v14 = 0;
  type metadata accessor for ProxyCodable<Color>();
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  v9 = v13;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {

    v15 = v12;
    v14 = 1;

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Color.OperationDefinition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.OperationDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys, &unk_1F00748E8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v15;
  type metadata accessor for ProxyCodable<Color>();
  v16 = 0;
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v17;
  v16 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v9 + 8))(v8, v5);
  v11 = v17;
  *v10 = v14;
  v10[1] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Color.MixDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.MixDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys, &unk_1F0074978, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v14 = v1[1];
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v8;
  v16 = 0;
  type metadata accessor for ProxyCodable<Color>();
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  v9 = v15;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v9)
  {
  }

  else
  {
    v10 = v13;

    v17 = v14;
    v16 = 1;

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    LOBYTE(v17) = v10;
    v16 = 2;
    type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>();
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type CodableRawRepresentable<ResolvedGradient.ColorSpace> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Color.MixDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.MixDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys, &unk_1F0074978, MEMORY[0x1E69E6F48]);
  v18 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  type metadata accessor for ProxyCodable<Color>();
  v19 = 0;
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  v10 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v20;
  v19 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v20;
  type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>();
  v19 = 2;
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type CodableRawRepresentable<ResolvedGradient.ColorSpace> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v20;
  LOBYTE(v20) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v9 + 8))(v8, v10);
  *a2 = v17;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 20) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.NamedDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x6150656C646E7562;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.NamedDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.NamedDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.NamedDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Color.NamedDefinition@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized Color.NamedDefinition.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.OpacityDefinition<A>.CodingKeys()
{
  Hasher.init(_seed:)();
  Pair.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.OpacityDefinition<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Color.OpacityDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Color.OpacityDefinition<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance ResetDeltaModifier.ChildPhase();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.OpacityDefinition<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.OpacityDefinition<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.HierarchicalOpacityDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x6C6576656CLL;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.HierarchicalOpacityDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.HierarchicalOpacityDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.HierarchicalOpacityDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.OperationDefinition.CodingKeys()
{
  if (*v0)
  {
    return 7563378;
  }

  else
  {
    return 7563372;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.OperationDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.OperationDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.OperationDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.MixDefinition.CodingKeys()
{
  v1 = 7563372;
  v2 = 0x617053726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697463617266;
  }

  if (*v0)
  {
    v1 = 7563378;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.MixDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Color.MixDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.MixDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.MixDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.CGDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x6E656E6F706D6F63;
  }

  else
  {
    return 0x617053726F6C6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.CGDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.CGDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.CGDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.VibrancyDefinition.CodingKeys()
{
  v1 = 0x4D746E6172626976;
  if (*v0 != 1)
  {
    v1 = 0x7972616974726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.VibrancyDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Color.VibrancyDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.VibrancyDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.VibrancyDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Color.VibrancyDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.VibrancyDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys, &unk_1F0074048, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 3);
  v10 = *(v1 + 7);
  v22 = *(v1 + 5);
  v23 = v10;
  v24 = *(v1 + 9);
  v20 = *(v1 + 1);
  v21 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v14 = v8;
  v19 = 0;
  type metadata accessor for ProxyCodable<Color>();
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  v11 = v13[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v11)
  {
  }

  else
  {

    v16 = v22;
    v17 = v23;
    v18 = v24;
    v15 = v21;
    v14 = v20;
    v19 = 1;
    lazy protocol witness table accessor for type _ColorMatrix and conformance _ColorMatrix();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Color.VibrancyDefinition.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.VibrancyDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys, &unk_1F0074048, MEMORY[0x1E69E6F48]);
  v18 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v17;
  type metadata accessor for ProxyCodable<Color>();
  LOBYTE(v19[0]) = 0;
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  v10 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v20;
  v28 = 1;
  lazy protocol witness table accessor for type _ColorMatrix and conformance _ColorMatrix();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v31;
  v37 = v32;
  v38 = v33;
  v34 = v29;
  v35 = v30;
  v27 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v8 + 8))(v7, v10);
  *(&v19[2] + 8) = v36;
  *(&v19[1] + 8) = v35;
  *&v19[0] = v11;
  *(&v19[3] + 8) = v37;
  *(&v19[4] + 8) = v38;
  *(v19 + 8) = v34;
  DWORD2(v19[5]) = v13;
  v14 = v19[3];
  v9[2] = v19[2];
  v9[3] = v14;
  v9[4] = v19[4];
  *(v9 + 76) = *(&v19[4] + 12);
  v15 = v19[1];
  *v9 = v19[0];
  v9[1] = v15;
  outlined init with copy of Color.VibrancyDefinition(v19, &v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v11;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  v21 = v34;
  v26 = v13;
  return outlined destroy of Color.VibrancyDefinition(&v20);
}

uint64_t Color.ProviderTag.PlatformTag.tag.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Color.ProviderTag.PlatformTag.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0xB0);
  v6 = static CoreGlue2.shared;
  v5();

  type metadata accessor for Color.ProviderTag.AnyPlatformTag();
  v7 = swift_dynamicCastMetatype();
  if (v7)
  {
    v8 = v7;
    outlined init with copy of AnyTrackedValue(a1, v11);
    v9 = (*(v8 + 80))(v11);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v2)
    {
      *a2 = v9;
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Color.ProviderTag.AnyPlatformTag@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Color.ProviderTag.PlatformTag()
{
  return (*(**v0 + 96))();
}

{
  return sub_18D3AE180();
}

uint64_t Color.ProviderTag.CorePlatformTag.init(from:)(void *a1)
{
  v7 = *v1;
  v3 = type metadata accessor for DecodingError();
  swift_allocError();
  v5 = v4;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)();
  *v5 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return swift_deallocPartialClassInstance();
}

uint64_t Color.ProviderTag.CorePlatformTag.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for EncodingError();
  swift_allocError();
  v6 = v5;
  type metadata accessor for (Any, EncodingError.Context)();
  v6[3] = v3;
  *v6 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  dispatch thunk of Encoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6B30], v4);
  return swift_willThrow();
}

uint64_t sub_18D808D90()
{
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Color.ProviderTag.CorePlatformTag.NullColorProvider(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodingError();
  swift_allocError();
  v6 = v5;
  type metadata accessor for (Any, EncodingError.Context)();
  *(v6 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6B30], v4);
  return swift_willThrow();
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.ProviderTag.CorePlatformTag.NullColorProvider(void *a1)
{
  v3 = type metadata accessor for DecodingError();
  swift_allocError();
  v5 = v4;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)();
  *v5 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  return swift_willThrow();
}

CGColorRef specialized static CGColorRef.deserializeCGColor(from:)(uint64_t a1)
{
  outlined init with copy of AnyTrackedValue(a1, v10);
  result = Color.CGDefinition.init(from:)(v10, &v11);
  if (!v1)
  {
    v4 = v12;
    v3 = v13;
    if (v12 && (v5 = v11, , v6 = MEMORY[0x193ABEC20](v5, v4), , v7 = CGColorSpaceCreateWithName(v6), v6, v7))
    {
      if (v3)
      {

        v8 = CGColorCreate(v7, (v3 + 32));

        if (v8)
        {

          return v8;
        }

        else
        {
          GenericGray = CGColorCreateGenericGray(0.0, 0.0);

          return GenericGray;
        }
      }
    }

    else
    {
    }

    return CGColorCreateGenericGray(0.0, 0.0);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [CGFloat]();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ColorMatrix and conformance _ColorMatrix()
{
  result = lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix;
  if (!lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix;
  if (!lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of Color.VibrancyDefinition(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v5;
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 88) = *(a1 + 88);

  return a2;
}

unint64_t instantiation function for generic protocol witness table for Color.ProviderTag(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag();
  result = lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag();
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Color.RGBADefinition<Float, Float>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t *assignWithTake for Color.ProviderTag(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v2;
  }

  else if (v2 < 0xFFFFFFFF)
  {
    v4 = result;

    result = v4;
    *v4 = v2;
  }

  else
  {
    *result = v2;
    v3 = result;

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Color.ProviderTag(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFE6 && *(a1 + 8))
  {
    return (*a1 + 2147483623);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 24;
  if (v4 >= 0x1A)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Color.ProviderTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFE7)
  {
    *result = 0;
    *result = a2 - 2147483623;
    if (a3 >= 0x7FFFFFE7)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFE7)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 24;
    }
  }

  return result;
}

uint64_t type metadata completion function for Color.RGBADefinition()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Color.RGBADefinition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 80);
  v12 = v7 + v11;
  v13 = ((v7 + v11 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v11) + *(v10 + 64);
  if ((v11 | v8) > 7 || ((*(v10 + 80) | *(v6 + 80)) & 0x100000) != 0 || v13 > 0x18)
  {
    v16 = *a2;
    *v3 = *a2;
    v3 = (v16 + (((v11 | v8) + 16) & ~(v11 | v8)));
  }

  else
  {
    v17 = ~v8;
    v23 = v4;
    v24 = ~v11;
    v18 = *(v6 + 16);
    v18(a1, a2, v5);
    v20 = (a2 + v9) & v17;
    v18(((v3 + v9) & v17), v20, v5);
    v21 = (v9 + v20) & v17;
    v18(((v9 + ((v3 + v9) & v17)) & v17), v21, v5);
    (*(v10 + 16))((((v9 + ((v3 + v9) & v17)) & v17) + v12) & v24, (v21 + v12) & v24, v23);
  }

  return v3;
}

uint64_t destroy for Color.RGBADefinition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(a1, v4);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = (v7 + v8 + a1) & ~v8;
  v6(v9, v4);
  v10 = (v7 + v8 + v9) & ~v8;
  v6(v10, v4);
  v11 = *(*(a2 + 24) - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + v7 + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t initializeWithCopy for Color.RGBADefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10 + a2) & ~v10;
  v8((v9 + v10 + a1) & ~v10, v11, v6);
  v12 = (v9 + v10 + v11) & ~v10;
  v8((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, v6);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 16))((v9 + *(v13 + 80) + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & ~*(v13 + 80), (v9 + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithCopy for Color.RGBADefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 24);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10 + a2) & ~v10;
  v8((v9 + v10 + a1) & ~v10, v11, v6);
  v12 = (v9 + v10 + v11) & ~v10;
  v8((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, v6);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 24))((v9 + *(v13 + 80) + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & ~*(v13 + 80), (v9 + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t initializeWithTake for Color.RGBADefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10 + a2) & ~v10;
  v8((v9 + v10 + a1) & ~v10, v11, v6);
  v12 = (v9 + v10 + v11) & ~v10;
  v8((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, v6);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 32))((v9 + *(v13 + 80) + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & ~*(v13 + 80), (v9 + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithTake for Color.RGBADefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 40);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10 + a2) & ~v10;
  v8((v9 + v10 + a1) & ~v10, v11, v6);
  v12 = (v9 + v10 + v11) & ~v10;
  v8((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, v6);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 40))((v9 + *(v13 + 80) + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & ~*(v13 + 80), (v9 + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for Color.RGBADefinition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 64);
  v10 = *(v4 + 80);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 + v10;
  v14 = v9 + v11;
  v15 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v16 = ((v14 + ((v13 + (v13 & ~v10)) & ~v10)) & ~v11) + *(*(v6 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((v14 + ((v13 + ((a1 + v13) & ~v10)) & ~v10)) & ~v11, v8, v6);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
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

  return v12 + (v22 | v20) + 1;
}

char *storeEnumTagSinglePayload for Color.RGBADefinition(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v5 + 80);
  v12 = *(v8 + 80);
  if (v9 <= v6)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = ((v10 + v12 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & ~v12) + *(*(v7 - 8) + 64);
  v15 = a3 >= v13;
  v16 = a3 - v13;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
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
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v27 = *(v5 + 56);

    return v27();
  }

  else
  {
    v25 = *(v8 + 56);
    v26 = (v10 + v12 + ((v10 + v11 + (&result[v10 + v11] & ~v11)) & ~v11)) & ~v12;

    return v25(v26);
  }
}

void *initializeBufferWithCopyOfBuffer for Color.CGDefinition(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for Color.CGDefinition(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for Color.CGDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for Color.CGDefinition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Color.CGDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Color.VibrancyDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithCopy for Color.VibrancyDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for Color.VibrancyDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for Color.VibrancyDefinition(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
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

uint64_t storeEnumTagSinglePayload for Color.VibrancyDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Color.ProviderTag.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Color.ProviderTag.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.GradientDefinition and conformance Color.GradientDefinition()
{
  result = lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition;
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition;
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.NamedDefinition and conformance Color.NamedDefinition()
{
  result = lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition;
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition;
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Color.OpacityDefinition<Float> and conformance Color.OpacityDefinition<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Color.OpacityDefinition<Float>(255, &lazy cache variable for type metadata for Color.OpacityDefinition<Float>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Color.OpacityDefinition<Double> and conformance Color.OpacityDefinition<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Color.OpacityDefinition<Float>(255, &lazy cache variable for type metadata for Color.OpacityDefinition<Double>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Color.OpacityDefinition<Float>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Color.OpacityDefinition();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition()
{
  result = lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition;
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition;
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.OperationDefinition and conformance Color.OperationDefinition()
{
  result = lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition;
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition;
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.MixDefinition and conformance Color.MixDefinition()
{
  result = lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition;
  if (!lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition;
  if (!lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition);
  }

  return result;
}

uint64_t specialized Color.NamedDefinition.init(from:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.NamedDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys, &unk_1F0074758, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized Color.ProviderTag.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44486D6F74737563 && a2 == 0xE900000000000052 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F72676B6361625FLL && a2 == 0xEB00000000646E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65636361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 13168 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E65746E6F635FLL && a2 == 0xED0000656C797453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F6C6F4379656B5FLL && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4B6D6F747375635FLL && a2 == 0xEF726F6C6F437965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6A6441746E69745FLL && a2 == 0xEF746E656D747375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x727574617365645FLL && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x64656D616ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x676E69747465735FLL && a2 == 0xEF7974696361704FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018DD7B490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018DD7B4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 7891309 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7061724765726F63 && a2 == 0xEC00000073636968 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6C6F4374694B6975 && a2 == 0xEA0000000000726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6F4374694B707061 && a2 == 0xEB00000000726F6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6D6F6F7264616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x63537261656E696CLL && a2 == 0xEB00000000656C61)
  {

    return 25;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

uint64_t specialized Color.MixDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697463617266 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized Color.VibrancyDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746E6172626976 && a2 == 0xED00007869727461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616974726574 && a2 == 0xEF7974696361704FLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void type metadata accessor for CustomColorProvider<Color>()
{
  if (!lazy cache variable for type metadata for CustomColorProvider<Color>)
  {
    lazy protocol witness table accessor for type Color and conformance Color();
    v0 = type metadata accessor for CustomColorProvider();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CustomColorProvider<Color>);
    }
  }
}

void type metadata accessor for Color.RGBADefinition<Float, Float>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[8] = v3;
    v8[9] = v4;
    v8[0] = MEMORY[0x1E69E6448];
    v8[1] = MEMORY[0x1E69E6448];
    v8[2] = MEMORY[0x1E69E6478];
    v8[3] = MEMORY[0x1E69E6458];
    v8[4] = MEMORY[0x1E69E6478];
    v8[5] = MEMORY[0x1E69E6458];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Color.RGBADefinition<Float, Float>(255, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for CustomHDRColorProvider<HDRColor>()
{
  if (!lazy cache variable for type metadata for CustomHDRColorProvider<HDRColor>)
  {
    lazy protocol witness table accessor for type HDRColor and conformance HDRColor();
    v0 = type metadata accessor for CustomHDRColorProvider();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CustomHDRColorProvider<HDRColor>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HDRColor and conformance HDRColor()
{
  result = lazy protocol witness table cache variable for type HDRColor and conformance HDRColor;
  if (!lazy protocol witness table cache variable for type HDRColor and conformance HDRColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HDRColor and conformance HDRColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HDRColor and conformance HDRColor;
  if (!lazy protocol witness table cache variable for type HDRColor and conformance HDRColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HDRColor and conformance HDRColor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys);
  }

  return result;
}

void type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>()
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<ResolvedGradient.ColorSpace>)
  {
    lazy protocol witness table accessor for type ResolvedGradient.ColorSpace and conformance ResolvedGradient.ColorSpace();
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableRawRepresentable<ResolvedGradient.ColorSpace>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition()
{
  result = lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition;
  if (!lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition;
  if (!lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinearScaleColorProvider and conformance LinearScaleColorProvider()
{
  result = lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider;
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider;
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider;
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider;
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider;
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeadroomColorProvider and conformance HeadroomColorProvider()
{
  result = lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider;
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider;
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider;
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider;
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider;
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider()
{
  result = lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider;
  if (!lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider;
  if (!lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider;
  if (!lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor()
{
  result = lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor;
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor;
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor;
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider()
{
  result = lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider;
  if (!lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider;
  if (!lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider;
  if (!lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GradientColorProvider and conformance GradientColorProvider()
{
  result = lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider;
  if (!lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider;
  if (!lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider;
  if (!lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider()
{
  result = lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider;
  if (!lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider;
  if (!lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider;
  if (!lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Color.MixDefinition(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);

  return a1;
}

uint64_t assignWithCopy for Color.MixDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t assignWithTake for Color.MixDefinition(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

void *assignWithCopy for Color.OperationDefinition(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t type metadata completion function for Color.OpacityDefinition()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Color.GradientDefinition(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for Color.GradientDefinition(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of EitherGradient(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for Color.GradientDefinition(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of EitherGradient(v6, v7);
  *(a1 + 16) = a2[2];
  return a1;
}

uint64_t getEnumTagSinglePayload for Color.GradientDefinition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Color.GradientDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.ProviderTag.CorePlatformTag.NullColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider();
  *(a1 + 8) = result;
  return result;
}

void _s7SwiftUI014_VariadicView_D4RootPAAs5NeverO4BodyRtzrlE4body8childrenAeA01_cD9_ChildrenV_tFAA16LazyHStackLayoutV_Tt0g5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD75AB0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI014_VariadicView_D4RootPAAs5NeverO4BodyRtzrlE4body8childrenAeA01_cD9_ChildrenV_tFAA13_ZStackLayoutV_Tt0g5Tm(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](a2, 0xED000074756F7961);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI014_VariadicView_D4RootPAAs5NeverO4BodyRtzrlE4body8childrenAeA01_cD9_ChildrenV_tFAA16LazyVStackLayoutV_Tt0g5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD758E0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static _ViewOutputs.multiView(inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = v5;
  v7 = *(a1 + 48);
  v28 = *(a1 + 64);
  v8 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v8;
  v19 = v26;
  v20 = v7;
  v21 = *(a1 + 64);
  v29 = *(a1 + 80);
  LODWORD(v22) = *(a1 + 80);
  v17 = v25[0];
  v18 = v6;
  *(&v22 + 1) = a2;
  v23 = a3;
  v24 = 0;
  v9 = *&v25[0];
  outlined init with copy of _ViewInputs(v25, v15);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v9);
  result = (*(v10 + 8))(&v17, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    v13 = v24;
    v14 = HIDWORD(v24);
    v15[4] = v21;
    v15[5] = v22;
    v15[6] = v23;
    v16 = v24;
    v15[0] = v17;
    v15[1] = v18;
    v15[2] = v19;
    v15[3] = v20;

    result = outlined destroy of MakeViewRoot(v15);
    *a4 = v12;
    *(a4 + 8) = v13;
    *(a4 + 12) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance GroupContainer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = thunk for @callee_guaranteed (@in_guaranteed _Graph, @in_guaranteed _ViewInputs) -> (@out _ViewListOutputs)partial apply;
  *(v12 + 24) = v11;
  *(v12 + 32) = v5;
  *(v12 + 40) = v10;

  static _ViewOutputs.multiView(inputs:body:)(a2, partial apply for specialized closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:), v12, a5);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v14;
  v18[4] = *(a2 + 64);
  v19 = *(a2 + 80);
  v15 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(partial apply for thunk for @callee_guaranteed (@in_guaranteed _Graph, @in_guaranteed _ViewInputs) -> (@out _ViewListOutputs), v16, v18, v7, v13, a5, a6, a7);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

uint64_t static _VariadicView_MultiViewRoot._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

uint64_t static _VariadicView_Root.viewListOptions.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 8))();
  *a2 = result;
  return result;
}

uint64_t closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a4;
  *(v16 + 56) = a5;
  v17 = *(a3 + 48);
  v29 = *(a3 + 32);
  v30 = v17;
  v31 = *(a3 + 64);
  LODWORD(v32) = *(a3 + 80);
  v18 = *(a3 + 16);
  v27 = *a3;
  v28 = v18;
  *(&v32 + 1) = partial apply for closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:);
  v33 = v16;
  v34 = 0;
  v19 = *a3;

  outlined init with copy of _ViewInputs(a3, v25);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v19);
  result = (*(v20 + 8))(&v27, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
  v22 = *(&v33 + 1);
  if (*(&v33 + 1))
  {
    v23 = v34;
    v24 = HIDWORD(v34);
    v25[4] = v31;
    v25[5] = v32;
    v25[6] = v33;
    v26 = v34;
    v25[0] = v27;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;

    outlined destroy of MakeViewRoot(v25);

    *a8 = v22;
    *(a8 + 8) = v23;
    *(a8 + 12) = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(__int128 *a1, void (*a2)(void *__return_ptr), uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v13 = a1[2];
  v14 = v6;
  v15 = a1[4];
  v16 = *(a1 + 20);
  v7 = a1[1];
  v11 = *a1;
  v12 = v7;
  a2(v22);
  v8 = a1[1];
  v23 = *a1;
  v24 = v8;
  v25 = a1[2];
  LODWORD(v15) = *MEMORY[0x1E698D3F8];
  *(&v15 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v16) = 0;
  v17 = 0;
  v18 = 0;
  swift_weakInit();
  v19 = 0;
  v20 = 0;
  v21 = -1;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v14 = 0uLL;
  outlined init with copy of _GraphInputs(&v23, v10);
  _ViewListOutputs.makeAttribute(inputs:)(&v11);
  outlined destroy of _ViewListInputs(&v11);
  outlined destroy of _ViewListOutputs(v22);
  static DynamicPropertyCache.fields(of:)(a4, &v11);
  if (AGTypeGetKind() - 2 <= 3)
  {
    v9 = AGSubgraphGetCurrent();
    if (v9)
    {

      goto LABEL_6;
    }

    __break(1u);
  }

  *&v11 = 0;
  *(&v11 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(75);
  MEMORY[0x193ABEDD0](0xD00000000000003DLL, 0x800000018DD7B600);
  MEMORY[0x193ABEDD0](0xD000000000000035, 0x800000018DD7B640);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
LABEL_6:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *), uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v49 = a2[2];
  v50 = v9;
  v11 = a2[3];
  v51 = a2[4];
  v12 = a2[1];
  v47 = *a2;
  v48 = v12;
  v35 = v49;
  v36 = v11;
  v37 = a2[4];
  v52 = *(a2 + 20);
  v38 = *(a2 + 20);
  v33 = v47;
  v34 = v10;
  a3(&v44, a1, &v33);
  LODWORD(v37) = *MEMORY[0x1E698D3F8];
  *(&v37 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v38) = 0;
  v39 = 0;
  v40 = 0;
  swift_weakInit();
  v41 = 0;
  v42 = 0;
  v43 = -1;
  v33 = v47;
  v34 = v48;
  v35 = v49;
  v36 = 0uLL;
  outlined init with copy of _GraphInputs(&v47, v32);
  v13 = _ViewListOutputs.makeAttribute(inputs:)(&v33);
  outlined destroy of _ViewListInputs(&v33);
  outlined destroy of _ViewListOutputs(&v44);
  static DynamicPropertyCache.fields(of:)(a7, &v33);
  v14 = v33;
  v28 = v49;
  v29 = v50;
  v30 = v51;
  v31 = v52;
  v26 = v47;
  v27 = v48;
  v23 = a6;
  v24 = v34;
  v25 = a6;
  v44 = v33;
  v45 = v34;
  v22 = DWORD1(v34);
  v46 = DWORD1(v34);
  outlined init with copy of _ViewInputs(&v47, &v33);
  static _VariadicView_ViewRoot.makeBody(root:list:inputs:fields:)(v32, &v33, &v25, v13, &v26, &v44);
  v15 = LODWORD(v32[0]);
  v16 = *(&v33 + 1);
  v21 = v33;
  v17 = v34;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _ViewInputs.implicitRootBodyInputs.getter(&v33);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v44) = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v44, &v33, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  outlined destroy of _ViewListInputs(&v33);
  if (v17)
  {
    outlined consume of DynamicPropertyCache.Fields.Layout();
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v33 = v26;
    v34 = v27;
    return outlined destroy of _ViewInputs(&v33);
  }

  else
  {
    v32[0] = v21;
    v32[1] = v16;
    v25 = v23;
    v44 = v14;
    v45 = v24;
    v46 = v22;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v25, &v44, a7);
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v33 = v26;
    v34 = v27;
    outlined destroy of _ViewInputs(&v33);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }
}

uint64_t _VariadicView_Children.list.setter(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of _ViewList_Elements(a1, v1);
}

uint64_t _VariadicView_Children.transform.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t _VariadicView_Children.transform.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t _VariadicView_Children.init(_:contentSubgraph:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  result = outlined init with take of _ViewList_Elements(a1, a4);
  a4[5] = a2;
  a4[6] = v6;
  a4[7] = v7;
  return result;
}

uint64_t static _VariadicView_ViewRoot._viewListCount(inputs:)(_OWORD *a1)
{
  v1 = a1[3];
  v6[2] = a1[2];
  v6[3] = v1;
  v6[4] = a1[4];
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t static _VariadicView.Tree<>._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[1];
  v10 = a1[3];
  v32 = a1[2];
  v33 = v10;
  v11 = a1[3];
  v34 = a1[4];
  v12 = a1[1];
  v31[0] = *a1;
  v31[1] = v12;
  v28 = v32;
  v29 = v11;
  v30 = a1[4];
  v26 = v31[0];
  v27 = v9;
  outlined init with copy of _ViewListCountInputs(v31, v25);
  outlined init with copy of _ViewListCountInputs(v31, v25);
  v13 = (*(*(a4 + 8) + 8))(a2);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v26, v13);
  outlined destroy of _ViewListCountInputs(v31);
  v23[2] = v28;
  v23[3] = v29;
  v23[4] = v30;
  v23[0] = v26;
  v23[1] = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v18 = v26;
  v19 = v27;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = v31;
  v14 = *(a4 + 48);
  outlined init with copy of _ViewListCountInputs(v23, v25);
  v15 = v14(&v18, partial apply for closure #1 in static _VariadicView.Tree<>._viewListCount(inputs:), v17, a2, a4);
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v24[0] = v18;
  v24[1] = v19;
  outlined destroy of _ViewListCountInputs(v24);
  v25[2] = v28;
  v25[3] = v29;
  v25[4] = v30;
  v25[0] = v26;
  v25[1] = v27;
  outlined destroy of _ViewListCountInputs(v25);
  return v15;
}

uint64_t closure #1 in static _VariadicView.Tree<>._viewListCount(inputs:)(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[1];
  v40[0] = *a1;
  v40[1] = v9;
  v10 = a1[3];
  v40[2] = a1[2];
  v40[3] = v10;
  v40[4] = a1[4];
  v11 = *&v40[0];
  v12 = *a2;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v13 = v35[0];
  outlined init with copy of _ViewListCountInputs(v40, v35);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v12, v13);
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(&v40[0] + 1) | v15;
  *&v29 = v11;
  *(&v29 + 1) = *(&v40[0] + 1) | v15;
  v17 = a1[2];
  v30 = a1[1];
  v31 = v17;
  v18 = a1[4];
  v32 = a1[3];
  v33 = v18;
  v26 = v17;
  v27 = v32;
  v28 = v18;
  v24 = v29;
  v25 = v30;
  v19 = *(a6 + 40);
  outlined init with copy of _ViewListCountInputs(&v29, v35);
  v20 = v19(&v24, a4, a6);
  v34[2] = v26;
  v34[3] = v27;
  v34[4] = v28;
  v34[0] = v24;
  v34[1] = v25;
  outlined destroy of _ViewListCountInputs(v34);
  v35[0] = v11;
  v35[1] = v16;
  v21 = a1[2];
  v36 = a1[1];
  v37 = v21;
  v22 = a1[4];
  v38 = a1[3];
  v39 = v22;
  outlined destroy of _ViewListCountInputs(v35);
  return v20;
}

uint64_t key path setter for _ViewInputs.implicitRootType : _ViewInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(a2, v3, v4);
}

uint64_t (*_ViewInputs.implicitRootType.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.implicitRootType.modify;
}

uint64_t _ViewListInputs.implicitRootType.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_ViewListInputs.implicitRootType.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewListInputs.implicitRootType.modify;
}

void _ViewInputs.implicitRootType.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance ImplicitRootType@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static ImplicitRootType.defaultValue;
  *a1 = static ImplicitRootType.defaultValue;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance _ZStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v16 = HIDWORD(v14);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 20) = v16;
  *(v17 + 24) = v9;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  a9(v9, a2, a8, v17);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance SubviewsRoot<A>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable, a6);
}

uint64_t specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, _OWORD *)@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a3 = MEMORY[0x1E69E7CC0];
    *(a3 + 8) = 0;
    *(a3 + 12) = result;
  }

  else
  {
    v8 = result;

    return _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA07_ZStackC0V_Tt3B503_s7a14UI019_Variadice19_UnaryD4RootPAAE05_ds29List4root6inputs4bodyAA01_dH7i6VAA11_jk5VyxG_w4_dH6L52VAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AiP_ATtXEfU_ArA01_emL0VAPIegnnr_Tf1nnnc_n(v8, v9, a2, a3);
  }

  return result;
}

uint64_t specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v11 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v11;
  v15[4] = *(a1 + 64);
  v16 = *(a1 + 80);
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a6 = MEMORY[0x1E69E7CC0];
    *(a6 + 8) = 0;
    *(a6 + 12) = result;
  }

  else
  {
    v14 = result;

    return a5(v14, v15, a2, a3, a4);
  }

  return result;
}

void specialized _VariadicView_ViewRoot<>.body(children:)()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t initializeWithCopy for MakeViewRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t assignWithCopy for MakeViewRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  return a1;
}

uint64_t assignWithTake for MakeViewRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for MakeViewRoot(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MakeViewRoot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void partial apply for specialized closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  v6 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v6;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v7 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v7;
  specialized closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(v8, v4, v3, v5);
}

uint64_t partial apply for specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(a1, v2[3], v2[4], v2[5], specialized static LazyLayout._makeView(root:inputs:body:), a2);
}

{
  return specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(a1, v2[3], v2[4], v2[5], specialized static Layout.makeLayoutView(root:inputs:body:), a2);
}

{
  return specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(a1, v2[3], v2[4], v2[5], specialized static LazyLayout._makeView(root:inputs:body:), a2);
}

{
  return specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(a1, v2[3], v2[4], v2[5], specialized static Layout.makeLayoutView(root:inputs:body:), a2);
}

{
  return specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(a1, *(v2 + 32), a2);
}

uint64_t assignWithCopy for ViewRootBodyAccessor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v5 = v3;

  return a1;
}

uint64_t assignWithTake for ViewRootBodyAccessor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t initializeWithCopy for MakeModifiedRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for MakeModifiedRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  return a1;
}

uint64_t assignWithTake for MakeModifiedRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

SwiftUI::ContentStyle::ID __swiftcall ContentStyle.ID.init(truncatingLevel:)(Swift::Int truncatingLevel)
{
  if (truncatingLevel <= 4)
  {
    if (truncatingLevel > 4u)
    {
      __break(1u);
    }

    else
    {
      *v1 = truncatingLevel;
    }
  }

  else
  {
    LOBYTE(truncatingLevel) = 4;
    *v1 = 4;
  }

  return truncatingLevel;
}

SwiftUI::ContentStyle::Style __swiftcall ContentStyle.Style.init(id:primitive:)(SwiftUI::ContentStyle::ID id, SwiftUI::ContentStyle::Primitive primitive)
{
  v3 = *primitive;
  *v2 = *id;
  v2[1] = v3;
  result.id = id;
  return result;
}

uint64_t ContentStyle.MaterialStyle.init(material:base:)@<X0>(uint64_t result@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  v5 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = v5;
  return result;
}

SwiftUI::ContentStyle::ID_optional __swiftcall ContentStyle.ID.init(rawValue:)(SwiftUI::ContentStyle::ID_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUI_ContentStyle_ID_unknownDefault)
  {
    value = SwiftUI_ContentStyle_ID_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::Int ContentStyle.Primitive.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ContentStyle.Style.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int ContentStyle.Style.hashValue.getter()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContentStyle.Style()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContentStyle.Style()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContentStyle.Style()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ContentStyle.MaterialStyle.material.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  *a1 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  return outlined copy of Material.ID(v2, v4);
}

uint64_t ContentStyle.MaterialStyle.material.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  result = outlined consume of Material.ID(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  return result;
}

uint64_t ContentStyle.MaterialStyle.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = *(v1 + 17);
  v4 = *(v1 + 16);
  Material.ID.hash(into:)(a1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  return MEMORY[0x193AC11A0](v3);
}

Swift::Int ContentStyle.MaterialStyle.hashValue.getter()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 17);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v5);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContentStyle.MaterialStyle()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 17);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v5);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContentStyle.MaterialStyle(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = *(v1 + 17);
  v4 = *(v1 + 16);
  Material.ID.hash(into:)(a1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  return MEMORY[0x193AC11A0](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContentStyle.MaterialStyle()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 12);
  v2 = *(v0 + 17);
  v3 = *(v0 + 16);
  Material.ID.hash(into:)(v5);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t LegacyContentStyle.color.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Color.init(_:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 1)
  {
    if (*a1)
    {
      if (one-time initialization token for secondary == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (one-time initialization token for primary != -1)
    {
LABEL_17:
      swift_once();
    }
  }

  else if (v1 == 2)
  {
    if (one-time initialization token for tertiary != -1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v1 == 3)
    {
      if (one-time initialization token for quaternary == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (one-time initialization token for quinary != -1)
    {
      goto LABEL_17;
    }
  }

LABEL_14:
}

float ContentStyle.ID.resolve(in:)(__int128 *a1)
{
  v4 = *v1 + 13;
  v3 = *a1;
  SystemColorType.resolveHDR(in:)(&v3, &v5);
  return v5;
}

SwiftUI::ContentStyle::ID_optional __swiftcall ContentStyle.ID.init(level:)(Swift::Int level)
{
  v2 = level;
  if (level >= 5u)
  {
    v2 = 5;
  }

  if (level != level)
  {
    v2 = 5;
  }

  *v1 = v2;
  return level;
}

unint64_t lazy protocol witness table accessor for type ContentStyle.Primitive and conformance ContentStyle.Primitive()
{
  result = lazy protocol witness table cache variable for type ContentStyle.Primitive and conformance ContentStyle.Primitive;
  if (!lazy protocol witness table cache variable for type ContentStyle.Primitive and conformance ContentStyle.Primitive)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentStyle.Primitive and conformance ContentStyle.Primitive);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentStyle.Style and conformance ContentStyle.Style()
{
  result = lazy protocol witness table cache variable for type ContentStyle.Style and conformance ContentStyle.Style;
  if (!lazy protocol witness table cache variable for type ContentStyle.Style and conformance ContentStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentStyle.Style and conformance ContentStyle.Style);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ContentStyle.ID(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ContentStyle.ID and conformance ContentStyle.ID();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentStyle.Style(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentStyle.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContentStyle.MaterialStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for ContentStyle.MaterialStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of Material.ID(v6, v7);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for ContentStyle.MaterialStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Material.ID(v5, v6);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentStyle.MaterialStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 18))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentStyle.MaterialStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

uint64_t assignWithCopy for LegacyContentStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for LegacyContentStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for HierarchicalShapeStyleModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for HierarchicalShapeStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for HierarchicalShapeStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for HierarchicalShapeStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for HierarchicalShapeStyleModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for HierarchicalShapeStyleModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t DynamicPropertyBox.getState<A>(type:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Binding();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static DynamicProperty.addTreeValue<A, B>(_:as:at:in:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(a1, v8, a4, a3);
  }

  return result;
}

Swift::String_optional __swiftcall DynamicPropertyCache.Fields.name(at:)(Swift::Int at)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if ((v1[16] & 1) == 0)
  {
    v6 = *v1 + 24;
    v7 = *(*v1 + 16) + 1;
    while (--v7)
    {
      v8 = (v6 + 32);
      v9 = *(v6 + 24);
      v6 += 32;
      if (v9 == at)
      {
        if (!*v8)
        {
          break;
        }

        static String.Encoding.utf8.getter();
        v4 = String.init(cString:encoding:)();
        goto LABEL_9;
      }
    }
  }

  v4 = 0;
  v5 = 0;
LABEL_9:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t DynamicPropertyCache.Fields._name(at:)(uint64_t a1)
{
  if ((v1[16] & 1) == 0)
  {
    v3 = *v1 + 24;
    v4 = *(*v1 + 16) + 1;
    while (--v4)
    {
      v5 = v3 + 32;
      v6 = *(v3 + 24);
      v3 += 32;
      if (v6 == a1)
      {
        return *v5;
      }
    }
  }

  return 0;
}

uint64_t static DynamicProperty.addTreeValue<A>(_:at:in:flags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(a1, v7, a3, a2);
  }

  return result;
}

uint64_t static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static DynamicPropertyCache.fields(of:)(a3, &v9);
  if ((v10 & 1) == 0)
  {
    v5 = v9 + 24;
    v6 = *(v9 + 16) + 1;
    do
    {
      if (!--v6)
      {
        break;
      }

      v7 = *(v5 + 24);
      v5 += 32;
    }

    while (v7 != a4);
  }

  outlined consume of DynamicPropertyCache.Fields.Layout();

  return AGSubgraphAddTreeValue();
}

uint64_t static StaticBody.metaProperties<A>(as:attribute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_getAssociatedTypeWitness() != a5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  AGGraphGetAttributeInfo();
  v7 = v6;
  type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, AGAttribute)>, type metadata accessor for (String, AGAttribute), MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18DDA6EB0;
  *(v8 + 32) = 0x666C657340;
  *(v8 + 40) = 0xE500000000000000;
  v9 = type metadata accessor for StaticBody();
  result = v8;
  *(v8 + 48) = *(v7 + *(v9 + 52));
  return result;
}

uint64_t static StaticBody.value<A>(as:attribute:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void (*a6)(void, void *)@<X7>, uint64_t a7@<X8>)
{
  if (swift_getAssociatedTypeWitness() == a3)
  {
    AGGraphGetAttributeInfo();
    v18[0] = a1;
    v18[1] = a2;
    v18[2] = a4;
    v18[3] = a5;
    a6(0, v18);
    Value = AGGraphGetValue();
    v17 = *(a3 - 8);
    (*(v17 + 16))(a7, Value, a3);
    return (*(v17 + 56))(a7, 0, 1, a3);
  }

  else
  {
    v14 = *(*(a3 - 8) + 56);

    return v14(a7, 1, 1, a3);
  }
}

uint64_t static DynamicBody.buffer<A>(as:attribute:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  result = swift_getAssociatedTypeWitness();
  v5 = result;
  v6 = 0uLL;
  if (result == a1)
  {
    AGGraphGetAttributeInfo();
    v8 = v7;
    result = type metadata accessor for DynamicBody();
    v6 = *(v8 + *(result + 60));
  }

  *a2 = v6;
  *(a2 + 16) = v5 != a1;
  return result;
}

uint64_t static DynamicBody.metaProperties<A>(as:attribute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_getAssociatedTypeWitness() != a5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  AGGraphGetAttributeInfo();
  v7 = v6;
  type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, AGAttribute)>, type metadata accessor for (String, AGAttribute), MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18DDAB4C0;
  *(v8 + 32) = 0x666C657340;
  *(v8 + 40) = 0xE500000000000000;
  v9 = type metadata accessor for DynamicBody();
  result = v8;
  *(v8 + 48) = *(v7 + *(v9 + 52));
  *(v8 + 56) = 0x7469746E65646940;
  *(v8 + 64) = 0xE900000000000079;
  *(v8 + 72) = *(v7 + *(v9 + 56));
  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance StaticBody<A, B>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t changedBodyProperties<A>(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E698D400];
  type metadata accessor for _DictionaryStorage<AGDescriptionOption, Any>();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    v83[0] = v2;
    v83[1] = 0x72662F6B63617473;
    v83[4] = MEMORY[0x1E69E6158];
    v83[2] = 0xEB00000000656D61;
    v5 = v2;
    v6 = MEMORY[0x193ABEC20](0x6E695F656D617266, 0xEB00000000786564);
    v84[4] = MEMORY[0x1E69E6530];
    v84[0] = v6;
    v84[1] = v3;
    v7 = static _DictionaryStorage.allocate(capacity:)();
    outlined init with copy of (AGDescriptionOption, Any)(v83, &v81);
    v8 = v81;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
    if (v10)
    {
      break;
    }

    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v7[6] + 8 * v9) = v8;
    outlined init with take of Any((&v81 + 8), (v7[7] + 32 * v9));
    v11 = v7[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      goto LABEL_23;
    }

    v7[2] = v13;
    outlined init with copy of (AGDescriptionOption, Any)(v84, &v81);
    v8 = v81;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
    if (v15)
    {
      break;
    }

    *(v7 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    *(v7[6] + 8 * v14) = v8;
    outlined init with take of Any((&v81 + 8), (v7[7] + 32 * v14));
    v16 = v7[2];
    v12 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v12)
    {
      goto LABEL_23;
    }

    v7[2] = v17;
    type metadata accessor for (AGDescriptionOption, Any)();
    swift_arrayDestroy();
    type metadata accessor for AGDescriptionOption(0);
    lazy protocol witness table accessor for type AGDescriptionOption and conformance AGDescriptionOption();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = AGGraphDescription();

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    v81 = v79;
    v82 = v80;
    if (*(&v80 + 1))
    {
      type metadata accessor for [Int : CGFloat](0, &lazy cache variable for type metadata for [String : Any]);
      if (swift_dynamicCast())
      {
        v8 = v76;
        if (*(v76 + 16))
        {
          v20 = specialized __RawDictionaryStorage.find<A>(_:)(0x64692D65646F6ELL, 0xE700000000000000);
          if (v21)
          {
            outlined init with copy of Any(*(v76 + 56) + 32 * v20, &v81);
            if (swift_dynamicCast())
            {
              if (*(v76 + 16))
              {
                v73 = v79;
                v22 = specialized __RawDictionaryStorage.find<A>(_:)(0x7079742D666C6573, 0xE900000000000065);
                if (v23)
                {
                  outlined init with copy of Any(*(v76 + 56) + 32 * v22, &v81);
                  type metadata accessor for BodyAccessorRule.Type();
                  if (swift_dynamicCast())
                  {
                    v72 = *(&v79 + 1);
                    v7 = v79;
                    if ((*(*(&v79 + 1) + 8))(v79) == a1)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      _sypSgWOhTm_7(&v81, &lazy cache variable for type metadata for Any?, v4 + 8, MEMORY[0x1E69E6720], type metadata accessor for _DynamicPropertyBuffer?);
    }

    if (++v3 == 32)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  v66 = v7;
  v25 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
  v26 = v73;
  if ((AGGraphGetValueState() & 0x80) != 0)
  {
    if (one-time initialization token for _current != -1)
    {
      swift_once();
    }

    v27 = static ObservationCenter._current;
    swift_beginAccess();
    v28 = pthread_getspecific(v27[2]);
    if (!v28)
    {
      v29 = swift_slowAlloc();
      pthread_setspecific(v27[2], v29);
      *(&v82 + 1) = type metadata accessor for ObservationCenter();
      *&v81 = v27[3];
      outlined init with take of Any(&v81, v29);

      v28 = v29;
    }

    outlined init with copy of Any(v28, &v81);
    type metadata accessor for ObservationCenter();
    swift_dynamicCast();
    swift_beginAccess();
    v30 = *(v76 + 16);

    v31 = v30;
    if (v30 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        v39 = __CocoaSet.count.getter();
        v31 = v30;
        v32 = v39;
        if (v39)
        {
          goto LABEL_31;
        }

LABEL_44:
        specialized Array.append<A>(contentsOf:)(v25);
        goto LABEL_45;
      }
    }

    else
    {
      v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_31:
        v33 = v31;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
        if (v32 < 0)
        {
          goto LABEL_87;
        }

        v34 = 0;
        v35 = v33;
        v69 = v33 & 0xC000000000000001;
        v71 = v33;
        do
        {
          if (v69)
          {
            MEMORY[0x193AC03C0](v34, v35);
          }

          else
          {
          }

          *&v81 = 0;
          *(&v81 + 1) = 0xE000000000000000;
          type metadata accessor for AnyKeyPath();
          _print_unlocked<A, B>(_:_:)();

          v36 = v81;
          v77 = v25;
          v38 = v25[2];
          v37 = v25[3];
          if (v38 >= v37 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
          }

          ++v34;
          v25[2] = v38 + 1;
          *&v25[2 * v38 + 4] = v36;
          v35 = v71;
        }

        while (v32 != v34);

        v26 = v73;
        goto LABEL_44;
      }
    }

    v25 = &outlined read-only object #0 of changedBodyProperties<A>(of:);
    goto LABEL_44;
  }

LABEL_45:
  v40 = v72;
  v41 = v66;
  v42 = (*(v72 + 32))(a2, v26, a2, v66, v72);
  v70 = *(v42 + 16);
  if (!v70)
  {

LABEL_82:

    (*(v40 + 24))(&v81, a2, v26, a2, v41, v40);
    if ((v82 & 1) == 0)
    {
      v62 = DWORD2(v81);
      v63 = v81;
      v64 = HIDWORD(*(&v81 + 1));
      static DynamicPropertyCache.fields(of:)(a1, &v81);
      v65 = v81;
      *&v81 = v63;
      *(&v81 + 1) = __PAIR64__(v64, v62);
      specialized _DynamicPropertyBuffer.applyChanged(to:)(&v81, v65, *(&v65 + 1), v82 | (DWORD1(v82) << 32), &v78);
      outlined consume of DynamicPropertyCache.Fields.Layout();
    }

    return v78;
  }

  if (!*(v8 + 16) || (v43 = specialized __RawDictionaryStorage.find<A>(_:)(0x737475706E69, 0xE600000000000000), (v44 & 1) == 0))
  {

    goto LABEL_52;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v43, &v81);

  type metadata accessor for [[String : Any]]();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_52:
    v68 = v42 + 32;
LABEL_53:
    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v68 = v42 + 32;
  v45 = v77;
  if (!v77)
  {
    goto LABEL_53;
  }

LABEL_54:
  v46 = 0;
  while (v46 < *(v42 + 16))
  {
    v47 = v45[2];
    if (!v47)
    {

LABEL_77:

      goto LABEL_56;
    }

    v48 = v42;
    v49 = v68 + 24 * v46;
    v50 = *(v49 + 8);
    v67 = *v49;
    v51 = *(v49 + 16);

    v52 = 0;
    while (1)
    {
      if (v52 >= v45[2])
      {
        __break(1u);
        goto LABEL_86;
      }

      v53 = v45[v52 + 4];
      if (*(v53 + 16))
      {
        break;
      }

LABEL_61:
      if (v47 == ++v52)
      {
        goto LABEL_55;
      }
    }

    v54 = specialized __RawDictionaryStorage.find<A>(_:)(25705, 0xE200000000000000);
    if ((v55 & 1) == 0 || (outlined init with copy of Any(*(v53 + 56) + 32 * v54, &v81), (swift_dynamicCast() & 1) == 0) || v77 != v51)
    {

      goto LABEL_61;
    }

    if (!*(v53 + 16) || (v56 = specialized __RawDictionaryStorage.find<A>(_:)(0x6465676E616863, 0xE700000000000000), (v57 & 1) == 0))
    {
LABEL_55:

      v42 = v48;
      goto LABEL_56;
    }

    outlined init with copy of Any(*(v53 + 56) + 32 * v56, &v81);

    v42 = v48;
    if (!swift_dynamicCast() || (v77 & 1) == 0)
    {
      goto LABEL_77;
    }

    v58 = v78;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
      v58 = result;
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    if (v60 >= v59 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v58);
      v58 = result;
    }

    *(v58 + 2) = v60 + 1;
    v61 = &v58[16 * v60];
    *(v61 + 4) = v67;
    *(v61 + 5) = v50;
    v78 = v58;
LABEL_56:
    if (++v46 == v70)
    {

      v26 = v73;
      v41 = v66;
      v40 = v72;
      goto LABEL_82;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t closure #2 in changedBodyProperties<A>(of:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = DynamicPropertyCache.Fields.name(at:)(a1);
  if (v6.value._object)
  {
    countAndFlagsBits = v6.value._countAndFlagsBits;
    object = v6.value._object;
  }

  else
  {
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v9);

    countAndFlagsBits = 64;
    object = 0xE100000000000000;
  }

  v10 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v10;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *a5 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
    *a5 = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 16 * v13;
  *(v14 + 32) = countAndFlagsBits;
  *(v14 + 40) = object;
  return result;
}

uint64_t printChangedBodyProperties<A>(of:)(uint64_t a1, uint64_t a2)
{
  v2 = changedBodyProperties<A>(of:)(a1, a2);
  v3 = AGTypeID.description.getter();
  v5 = v4;
  if (*(v2 + 16))
  {
    type metadata accessor for _DynamicPropertyBuffer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18DDA6EB0;
    MEMORY[0x193ABEDD0](8250, 0xE200000000000000);
    v7 = v3;
    v8 = MEMORY[0x1E69E6158];
    type metadata accessor for _DynamicPropertyBuffer?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    MEMORY[0x193ABEDD0](v9, v11);

    MEMORY[0x193ABEDD0](0x6465676E61686320, 0xE90000000000002ELL);

    *(v6 + 56) = v8;
    *(v6 + 32) = v7;
    *(v6 + 40) = v5;
    print(_:separator:terminator:)();
  }

  else
  {

    type metadata accessor for _DynamicPropertyBuffer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDA6EB0;
    MEMORY[0x193ABEDD0](0x6E6168636E75203ALL, 0xEC0000002E646567);
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 32) = v3;
    *(v13 + 40) = v5;
    print(_:separator:terminator:)();
  }
}

void logChangedBodyProperties<A>(of:)(uint64_t a1, uint64_t a2)
{
  v2 = changedBodyProperties<A>(of:)(a1, a2);
  v3 = AGTypeID.description.getter();
  v5 = v4;
  if (*(v2 + 16))
  {
    if (one-time initialization token for propertyChangeLog != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.propertyChangeLog);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136446466;
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, &v22);

      *(v8 + 4) = v10;
      *(v8 + 12) = 2082;
      type metadata accessor for _DynamicPropertyBuffer?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v11 = BidirectionalCollection<>.joined(separator:)();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v22);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_18D018000, oslog, v7, "%{public}s: %{public}s changed.", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AC4820](v9, -1, -1);
      v15 = v8;
LABEL_10:
      MEMORY[0x193AC4820](v15, -1, -1);

      return;
    }
  }

  else
  {

    if (one-time initialization token for propertyChangeLog != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.propertyChangeLog);

    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, &v22);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_18D018000, oslog, v17, "%{public}s: unchanged.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x193AC4820](v19, -1, -1);
      v15 = v18;
      goto LABEL_10;
    }
  }
}

void type metadata accessor for _DictionaryStorage<AGDescriptionOption, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGDescriptionOption, Any>)
  {
    type metadata accessor for AGDescriptionOption(255);
    lazy protocol witness table accessor for type AGDescriptionOption and conformance AGDescriptionOption();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AGDescriptionOption, Any>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AGDescriptionOption and conformance AGDescriptionOption()
{
  result = lazy protocol witness table cache variable for type AGDescriptionOption and conformance AGDescriptionOption;
  if (!lazy protocol witness table cache variable for type AGDescriptionOption and conformance AGDescriptionOption)
  {
    type metadata accessor for AGDescriptionOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AGDescriptionOption and conformance AGDescriptionOption);
  }

  return result;
}

uint64_t outlined init with copy of (AGDescriptionOption, Any)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (AGDescriptionOption, Any)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (AGDescriptionOption, Any)()
{
  if (!lazy cache variable for type metadata for (AGDescriptionOption, Any))
  {
    type metadata accessor for AGDescriptionOption(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AGDescriptionOption, Any));
    }
  }
}

unint64_t type metadata accessor for BodyAccessorRule.Type()
{
  result = lazy cache variable for type metadata for BodyAccessorRule.Type;
  if (!lazy cache variable for type metadata for BodyAccessorRule.Type)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for BodyAccessorRule);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BodyAccessorRule.Type);
  }

  return result;
}

void type metadata accessor for [[String : Any]]()
{
  if (!lazy cache variable for type metadata for [[String : Any]])
  {
    type metadata accessor for [Int : CGFloat](255, &lazy cache variable for type metadata for [String : Any]);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [[String : Any]]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors()
{
  result = lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors;
  if (!lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors;
  if (!lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors;
  if (!lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors;
  if (!lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DynamicPropertyCache.Fields.Layout(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of DynamicPropertyCache.Fields.Layout();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for DynamicPropertyCache.Fields.Layout(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of DynamicPropertyCache.Fields.Layout();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of DynamicPropertyCache.Fields.Layout();
  return a1;
}

uint64_t assignWithTake for DynamicPropertyCache.Fields.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of DynamicPropertyCache.Fields.Layout();
  return a1;
}

uint64_t assignWithCopy for StaticBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 40) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithTake for StaticBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 24) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for DynamicBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v15;
    *((v14 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithCopy for DynamicBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  v7 &= 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v9;
  v11 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 12) = *(v12 + 12);
  *((v11 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for DynamicBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DynamicBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  v7 &= 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v9;
  v11 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 12) = *(v12 + 12);
  *((v11 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicBody(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  if (*(a1 + ((((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v5 + *a1 + 1;
  }

  if (v5)
  {
    return (*(v4 + 48))();
  }

  else
  {
    return 0;
  }
}