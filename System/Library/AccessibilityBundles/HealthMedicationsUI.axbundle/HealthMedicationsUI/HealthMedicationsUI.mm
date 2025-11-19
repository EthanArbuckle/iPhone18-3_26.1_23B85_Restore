id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A21B5198 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _accessibilityConvertToStatus()
{
  type metadata accessor for HKMedicationDoseEventStatus();
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    v0 = v2;
  }

  else
  {
    v0 = 0;
  }

  swift_unknownObjectRelease();
  return v0;
}

void type metadata accessor for HKMedicationDoseEventStatus()
{
  if (!qword_2A1790568)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2A1790568);
    }
  }
}

uint64_t _accessibilityConvertToStatus(_:)()
{
  type metadata accessor for HKMedicationDoseEventStatus();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}