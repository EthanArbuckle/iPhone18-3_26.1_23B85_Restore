id AXMapsAssistantUILocString(void *a1)
{
  v1 = a1;
  if (AXMapsAssistantUILocString_onceToken != -1)
  {
    AXMapsAssistantUILocString_cold_1();
  }

  if (AXMapsAssistantUILocString_bundle)
  {
    v2 = [AXMapsAssistantUILocString_bundle localizedStringForKey:v1 value:&stru_2A225DC48 table:@"Accessibility-MapsAssistantUI"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __AXMapsAssistantUILocString_block_invoke()
{
  AXMapsAssistantUILocString_bundle = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.Maps-Assistant.axbundle"];

  return MEMORY[0x2A1C71028]();
}