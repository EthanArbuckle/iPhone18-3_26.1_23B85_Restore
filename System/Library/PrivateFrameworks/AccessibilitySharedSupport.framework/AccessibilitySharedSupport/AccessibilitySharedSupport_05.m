unint64_t sub_1C0F37DC8()
{
  result = qword_1EBE78D28;
  if (!qword_1EBE78D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D28);
  }

  return result;
}

unint64_t sub_1C0F37E1C()
{
  result = qword_1EBE78D30;
  if (!qword_1EBE78D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D30);
  }

  return result;
}

unint64_t sub_1C0F37E70()
{
  result = qword_1EBE78D38;
  if (!qword_1EBE78D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D38);
  }

  return result;
}

unint64_t sub_1C0F37EC4()
{
  result = qword_1EBE78D40;
  if (!qword_1EBE78D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D40);
  }

  return result;
}

unint64_t sub_1C0F37F18()
{
  result = qword_1EBE78D68;
  if (!qword_1EBE78D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D68);
  }

  return result;
}

unint64_t sub_1C0F37F6C()
{
  result = qword_1EBE78D70;
  if (!qword_1EBE78D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D70);
  }

  return result;
}

unint64_t sub_1C0F37FC0()
{
  result = qword_1EBE78D78;
  if (!qword_1EBE78D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D78);
  }

  return result;
}

unint64_t sub_1C0F38018()
{
  result = qword_1EBE78D80;
  if (!qword_1EBE78D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE78D88, &qword_1C0F5EB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D80);
  }

  return result;
}

unint64_t sub_1C0F38080()
{
  result = qword_1EBE78D90;
  if (!qword_1EBE78D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityAssistiveTouchAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
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

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AccessibilityAssistiveTouchAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0F382B4()
{
  result = qword_1EBE78D98;
  if (!qword_1EBE78D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D98);
  }

  return result;
}

unint64_t sub_1C0F3830C()
{
  result = qword_1EBE78DA0;
  if (!qword_1EBE78DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DA0);
  }

  return result;
}

unint64_t sub_1C0F38364()
{
  result = qword_1EBE78DA8;
  if (!qword_1EBE78DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DA8);
  }

  return result;
}

unint64_t sub_1C0F383BC()
{
  result = qword_1EBE78DB0;
  if (!qword_1EBE78DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DB0);
  }

  return result;
}

unint64_t sub_1C0F38414()
{
  result = qword_1EBE78DB8;
  if (!qword_1EBE78DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DB8);
  }

  return result;
}

unint64_t sub_1C0F3846C()
{
  result = qword_1EBE78DC0;
  if (!qword_1EBE78DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DC0);
  }

  return result;
}

unint64_t sub_1C0F384C4()
{
  result = qword_1EBE78DC8;
  if (!qword_1EBE78DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DC8);
  }

  return result;
}

unint64_t sub_1C0F3851C()
{
  result = qword_1EBE78DD0;
  if (!qword_1EBE78DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DD0);
  }

  return result;
}

unint64_t sub_1C0F38574()
{
  result = qword_1EBE78DD8;
  if (!qword_1EBE78DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DD8);
  }

  return result;
}

unint64_t sub_1C0F385CC()
{
  result = qword_1EBE78DE0;
  if (!qword_1EBE78DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DE0);
  }

  return result;
}

unint64_t sub_1C0F38624()
{
  result = qword_1EBE78DE8;
  if (!qword_1EBE78DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DE8);
  }

  return result;
}

unint64_t sub_1C0F3867C()
{
  result = qword_1EBE78DF0;
  if (!qword_1EBE78DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DF0);
  }

  return result;
}

uint64_t sub_1C0F386D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1970169197 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6353657461746F72 && a2 == 0xEC0000006E656572 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6C6F726373 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C0F50790();

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

id AXSSRemoteDesktopViewer.init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

id AXSSRemoteDesktopViewer.init(delegate:)()
{
  v2.super_class = AXSSRemoteDesktopViewer;
  v0 = objc_msgSendSuper2(&v2, sel_init);
  swift_unknownObjectRelease();
  return v0;
}

Swift::String_optional __swiftcall AXSSRemoteDesktopViewer.getRemoteId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

AXSSRemoteDesktopViewer __swiftcall AXSSRemoteDesktopViewer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for AXSSRemoteDesktopViewer()
{
  result = qword_1EBE78DF8;
  if (!qword_1EBE78DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE78DF8);
  }

  return result;
}

unint64_t AccessibilityFeatureAction.resolve(with:)@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.AssistiveAccess;
      result = sub_1C0F394C4();
      break;
    case 2:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.AssistiveTouch;
      result = sub_1C0F39470();
      break;
    case 3:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.BackgroundSounds;
      result = sub_1C0F3941C();
      break;
    case 4:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.ClassicInvertColors;
      result = sub_1C0F393C8();
      break;
    case 5:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.ColorFilters;
      result = sub_1C0F39374();
      break;
    case 6:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.CommandAndControl;
      result = sub_1C0F39320();
      break;
    case 7:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.DimFlashingLights;
      result = sub_1C0F392CC();
      break;
    case 8:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.HoverTextTyping;
      result = sub_1C0F391D0();
      break;
    case 9:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.FullKeyboardAccess;
      result = sub_1C0F39278();
      break;
    case 0xA:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.HapticMusic;
      result = sub_1C0F39224();
      break;
    case 0xB:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.LiveCaptions;
      result = sub_1C0F3917C();
      break;
    case 0xC:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.LiveSpeech;
      result = sub_1C0F39128();
      break;
    case 0xD:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.Magnifier;
      result = sub_1C0F390D4();
      break;
    case 0xE:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.MotionCues;
      result = sub_1C0F39080();
      break;
    case 0xF:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.NearbyDeviceControl;
      result = sub_1C0F3902C();
      break;
    case 0x10:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.SmartInvertColors;
      result = sub_1C0F38FD8();
      break;
    case 0x11:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.SpeakScreen;
      result = sub_1C0F38F84();
      break;
    case 0x12:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.SwitchControl;
      result = sub_1C0F38F30();
      break;
    case 0x13:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.VirtualTrackpad;
      result = sub_1C0F38EDC();
      break;
    case 0x14:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.VoiceControl;
      result = sub_1C0F38E88();
      break;
    case 0x15:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.VoiceOver;
      result = sub_1C0F38E34();
      break;
    case 0x16:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.WatchRemoteScreen;
      result = sub_1C0F38DE0();
      break;
    case 0x17:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.Zoom;
      result = sub_1C0F38D8C();
      break;
    case 0x18:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.ZoomController;
      result = sub_1C0F38D38();
      break;
    default:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.AccessibilityReader;
      result = sub_1C0F39518();
      break;
  }

  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1C0F38D38()
{
  result = qword_1EBE78E00;
  if (!qword_1EBE78E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E00);
  }

  return result;
}

unint64_t sub_1C0F38D8C()
{
  result = qword_1EBE78E08;
  if (!qword_1EBE78E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E08);
  }

  return result;
}

unint64_t sub_1C0F38DE0()
{
  result = qword_1EBE78E10;
  if (!qword_1EBE78E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E10);
  }

  return result;
}

unint64_t sub_1C0F38E34()
{
  result = qword_1EBE78E18;
  if (!qword_1EBE78E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E18);
  }

  return result;
}

unint64_t sub_1C0F38E88()
{
  result = qword_1EBE78E20;
  if (!qword_1EBE78E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E20);
  }

  return result;
}

unint64_t sub_1C0F38EDC()
{
  result = qword_1EBE78E28;
  if (!qword_1EBE78E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E28);
  }

  return result;
}

unint64_t sub_1C0F38F30()
{
  result = qword_1EBE78E30;
  if (!qword_1EBE78E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E30);
  }

  return result;
}

unint64_t sub_1C0F38F84()
{
  result = qword_1EBE78E38;
  if (!qword_1EBE78E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E38);
  }

  return result;
}

unint64_t sub_1C0F38FD8()
{
  result = qword_1EBE78E40;
  if (!qword_1EBE78E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E40);
  }

  return result;
}

unint64_t sub_1C0F3902C()
{
  result = qword_1EBE78E48;
  if (!qword_1EBE78E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E48);
  }

  return result;
}

unint64_t sub_1C0F39080()
{
  result = qword_1EBE78E50;
  if (!qword_1EBE78E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E50);
  }

  return result;
}

unint64_t sub_1C0F390D4()
{
  result = qword_1EBE78E58;
  if (!qword_1EBE78E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E58);
  }

  return result;
}

unint64_t sub_1C0F39128()
{
  result = qword_1EBE78E60;
  if (!qword_1EBE78E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E60);
  }

  return result;
}

unint64_t sub_1C0F3917C()
{
  result = qword_1EBE78E68;
  if (!qword_1EBE78E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E68);
  }

  return result;
}

unint64_t sub_1C0F391D0()
{
  result = qword_1EBE78E70;
  if (!qword_1EBE78E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E70);
  }

  return result;
}

unint64_t sub_1C0F39224()
{
  result = qword_1EBE78E78;
  if (!qword_1EBE78E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E78);
  }

  return result;
}

unint64_t sub_1C0F39278()
{
  result = qword_1EBE78E80;
  if (!qword_1EBE78E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E80);
  }

  return result;
}

unint64_t sub_1C0F392CC()
{
  result = qword_1EBE78E88;
  if (!qword_1EBE78E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E88);
  }

  return result;
}

unint64_t sub_1C0F39320()
{
  result = qword_1EBE78E90;
  if (!qword_1EBE78E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E90);
  }

  return result;
}

unint64_t sub_1C0F39374()
{
  result = qword_1EBE78E98;
  if (!qword_1EBE78E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E98);
  }

  return result;
}

unint64_t sub_1C0F393C8()
{
  result = qword_1EBE78EA0;
  if (!qword_1EBE78EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EA0);
  }

  return result;
}

unint64_t sub_1C0F3941C()
{
  result = qword_1EBE78EA8;
  if (!qword_1EBE78EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EA8);
  }

  return result;
}

unint64_t sub_1C0F39470()
{
  result = qword_1EBE78EB0;
  if (!qword_1EBE78EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EB0);
  }

  return result;
}

unint64_t sub_1C0F394C4()
{
  result = qword_1EBE78EB8;
  if (!qword_1EBE78EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EB8);
  }

  return result;
}

unint64_t sub_1C0F39518()
{
  result = qword_1EBE78EC0;
  if (!qword_1EBE78EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EC0);
  }

  return result;
}

unint64_t sub_1C0F39580(char a1)
{
  result = 0x7669747369737361;
  switch(a1)
  {
    case 1:
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C6946726F6C6F63;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x7865547265766F68;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x754D636974706168;
      break;
    case 11:
      result = 0x747061436576696CLL;
      break;
    case 12:
      result = 0x656570536576696CLL;
      break;
    case 13:
      result = 0x656966696E67616DLL;
      break;
    case 14:
      result = 0x75436E6F69746F6DLL;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x7263536B61657073;
      break;
    case 18:
      result = 0x6F43686374697773;
      break;
    case 19:
      result = 0x546C617574726976;
      break;
    case 20:
      result = 0x6E6F436563696F76;
      break;
    case 21:
      result = 0x65764F6563696F76;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 1836019578;
      break;
    case 24:
      result = 0x746E6F436D6F6F7ALL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1C0F39858(uint64_t a1)
{
  v2 = sub_1C0F3C3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39894(uint64_t a1)
{
  v2 = sub_1C0F3C3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F398D0(uint64_t a1)
{
  v2 = sub_1C0F3C354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3990C(uint64_t a1)
{
  v2 = sub_1C0F3C354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39948(uint64_t a1)
{
  v2 = sub_1C0F3C300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39984(uint64_t a1)
{
  v2 = sub_1C0F3C300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F399C0(uint64_t a1)
{
  v2 = sub_1C0F3C2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F399FC(uint64_t a1)
{
  v2 = sub_1C0F3C2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39A38(uint64_t a1)
{
  v2 = sub_1C0F3C258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39A74(uint64_t a1)
{
  v2 = sub_1C0F3C258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F417C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F39AEC(uint64_t a1)
{
  v2 = sub_1C0F3BB74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39B28(uint64_t a1)
{
  v2 = sub_1C0F3BB74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39B64(uint64_t a1)
{
  v2 = sub_1C0F3C204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39BA0(uint64_t a1)
{
  v2 = sub_1C0F3C204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39BDC(uint64_t a1)
{
  v2 = sub_1C0F3C1B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39C18(uint64_t a1)
{
  v2 = sub_1C0F3C1B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39C54(uint64_t a1)
{
  v2 = sub_1C0F3C15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39C90(uint64_t a1)
{
  v2 = sub_1C0F3C15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39CCC(uint64_t a1)
{
  v2 = sub_1C0F3C0B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39D08(uint64_t a1)
{
  v2 = sub_1C0F3C0B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39D44(uint64_t a1)
{
  v2 = sub_1C0F3C060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39D80(uint64_t a1)
{
  v2 = sub_1C0F3C060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39DBC(uint64_t a1)
{
  v2 = sub_1C0F3C108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39DF8(uint64_t a1)
{
  v2 = sub_1C0F3C108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39E34(uint64_t a1)
{
  v2 = sub_1C0F3C00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39E70(uint64_t a1)
{
  v2 = sub_1C0F3C00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39EAC(uint64_t a1)
{
  v2 = sub_1C0F3BFB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39EE8(uint64_t a1)
{
  v2 = sub_1C0F3BFB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39F24(uint64_t a1)
{
  v2 = sub_1C0F3BF64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39F60(uint64_t a1)
{
  v2 = sub_1C0F3BF64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39F9C(uint64_t a1)
{
  v2 = sub_1C0F3BF10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39FD8(uint64_t a1)
{
  v2 = sub_1C0F3BF10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A014(uint64_t a1)
{
  v2 = sub_1C0F3BEBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A050(uint64_t a1)
{
  v2 = sub_1C0F3BEBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A08C(uint64_t a1)
{
  v2 = sub_1C0F3BE68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A0C8(uint64_t a1)
{
  v2 = sub_1C0F3BE68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A104(uint64_t a1)
{
  v2 = sub_1C0F3BE14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A140(uint64_t a1)
{
  v2 = sub_1C0F3BE14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A17C(uint64_t a1)
{
  v2 = sub_1C0F3BDC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A1B8(uint64_t a1)
{
  v2 = sub_1C0F3BDC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A1F4(uint64_t a1)
{
  v2 = sub_1C0F3BD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A230(uint64_t a1)
{
  v2 = sub_1C0F3BD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A26C(uint64_t a1)
{
  v2 = sub_1C0F3BD18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A2A8(uint64_t a1)
{
  v2 = sub_1C0F3BD18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A2E4(uint64_t a1)
{
  v2 = sub_1C0F3BCC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A320(uint64_t a1)
{
  v2 = sub_1C0F3BCC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A35C(uint64_t a1)
{
  v2 = sub_1C0F3BC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A398(uint64_t a1)
{
  v2 = sub_1C0F3BC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A3D4(uint64_t a1)
{
  v2 = sub_1C0F3BC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A410(uint64_t a1)
{
  v2 = sub_1C0F3BC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A44C(uint64_t a1)
{
  v2 = sub_1C0F3BBC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A488(uint64_t a1)
{
  v2 = sub_1C0F3BBC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityFeatureAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EC8, &qword_1C0F5F0C0);
  v165 = *(v4 - 8);
  v166 = v4;
  v5 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v164 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78ED0, &qword_1C0F5F0C8);
  v162 = *(v7 - 8);
  v163 = v7;
  v8 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v161 = &v95 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78ED8, &qword_1C0F5F0D0);
  v159 = *(v10 - 8);
  v160 = v10;
  v11 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v95 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EE0, &qword_1C0F5F0D8);
  v156 = *(v13 - 8);
  v157 = v13;
  v14 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v155 = &v95 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EE8, &qword_1C0F5F0E0);
  v153 = *(v16 - 8);
  v154 = v16;
  v17 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v152 = &v95 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EF0, &qword_1C0F5F0E8);
  v150 = *(v19 - 8);
  v151 = v19;
  v20 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v149 = &v95 - v21;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EF8, &qword_1C0F5F0F0);
  v147 = *(v148 - 8);
  v22 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v95 - v23;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F00, &qword_1C0F5F0F8);
  v144 = *(v145 - 8);
  v24 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v95 - v25;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F08, &qword_1C0F5F100);
  v141 = *(v142 - 8);
  v26 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v95 - v27;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F10, &qword_1C0F5F108);
  v138 = *(v139 - 8);
  v28 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v95 - v29;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F18, &qword_1C0F5F110);
  v135 = *(v136 - 8);
  v30 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v95 - v31;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F20, &qword_1C0F5F118);
  v132 = *(v133 - 8);
  v32 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v95 - v33;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F28, &qword_1C0F5F120);
  v129 = *(v130 - 8);
  v34 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v95 - v35;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F30, &qword_1C0F5F128);
  v126 = *(v127 - 8);
  v36 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v95 - v37;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F38, &qword_1C0F5F130);
  v123 = *(v124 - 8);
  v38 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v95 - v39;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F40, &qword_1C0F5F138);
  v120 = *(v121 - 8);
  v40 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v95 - v41;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F48, &qword_1C0F5F140);
  v117 = *(v118 - 8);
  v42 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v95 - v43;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F50, &qword_1C0F5F148);
  v114 = *(v115 - 8);
  v44 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v95 - v45;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F58, &qword_1C0F5F150);
  v111 = *(v112 - 8);
  v46 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v95 - v47;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F60, &qword_1C0F5F158);
  v108 = *(v109 - 8);
  v48 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v95 - v49;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F68, &qword_1C0F5F160);
  v105 = *(v106 - 8);
  v50 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v95 - v51;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F70, &qword_1C0F5F168);
  v102 = *(v103 - 8);
  v52 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v95 - v53;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F78, &qword_1C0F5F170);
  v99 = *(v100 - 8);
  v54 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v95 - v55;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F80, &qword_1C0F5F178);
  v96 = *(v97 - 8);
  v56 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v58 = &v95 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F88, &qword_1C0F5F180);
  v95 = *(v59 - 8);
  v60 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v95 - v61;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F90, &qword_1C0F5F188);
  v63 = *(v168 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v66 = &v95 - v65;
  v67 = *v2;
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F3BB74();
  v167 = v66;
  sub_1C0F508B0();
  v69 = (v63 + 8);
  switch(v67)
  {
    case 1:
      v169 = 1;
      sub_1C0F3C354();
      v85 = v167;
      v86 = v168;
      sub_1C0F50700();
      (*(v96 + 8))(v58, v97);
      return (*v69)(v85, v86);
    case 2:
      v169 = 2;
      sub_1C0F3C300();
      v81 = v98;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v99 + 8))(v81, v100);
      return (*v69)(v70, v71);
    case 3:
      v169 = 3;
      sub_1C0F3C2AC();
      v83 = v101;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v102 + 8))(v83, v103);
      return (*v69)(v70, v71);
    case 4:
      v169 = 4;
      sub_1C0F3C258();
      v75 = v104;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v105 + 8))(v75, v106);
      return (*v69)(v70, v71);
    case 5:
      v169 = 5;
      sub_1C0F3C204();
      v89 = v107;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v108 + 8))(v89, v109);
      return (*v69)(v70, v71);
    case 6:
      v169 = 6;
      sub_1C0F3C1B0();
      v91 = v110;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v111 + 8))(v91, v112);
      return (*v69)(v70, v71);
    case 7:
      v169 = 7;
      sub_1C0F3C15C();
      v84 = v113;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v114 + 8))(v84, v115);
      return (*v69)(v70, v71);
    case 8:
      v169 = 8;
      sub_1C0F3C108();
      v94 = v116;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v117 + 8))(v94, v118);
      return (*v69)(v70, v71);
    case 9:
      v169 = 9;
      sub_1C0F3C0B4();
      v77 = v119;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v120 + 8))(v77, v121);
      return (*v69)(v70, v71);
    case 10:
      v169 = 10;
      sub_1C0F3C060();
      v93 = v122;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v123 + 8))(v93, v124);
      return (*v69)(v70, v71);
    case 11:
      v169 = 11;
      sub_1C0F3C00C();
      v74 = v125;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v126 + 8))(v74, v127);
      return (*v69)(v70, v71);
    case 12:
      v169 = 12;
      sub_1C0F3BFB8();
      v76 = v128;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v129 + 8))(v76, v130);
      return (*v69)(v70, v71);
    case 13:
      v169 = 13;
      sub_1C0F3BF64();
      v90 = v131;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v132 + 8))(v90, v133);
      return (*v69)(v70, v71);
    case 14:
      v169 = 14;
      sub_1C0F3BF10();
      v73 = v134;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v135 + 8))(v73, v136);
      return (*v69)(v70, v71);
    case 15:
      v169 = 15;
      sub_1C0F3BEBC();
      v82 = v137;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v138 + 8))(v82, v139);
      return (*v69)(v70, v71);
    case 16:
      v169 = 16;
      sub_1C0F3BE68();
      v72 = v140;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v141 + 8))(v72, v142);
      return (*v69)(v70, v71);
    case 17:
      v169 = 17;
      sub_1C0F3BE14();
      v88 = v143;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v144 + 8))(v88, v145);
      return (*v69)(v70, v71);
    case 18:
      v169 = 18;
      sub_1C0F3BDC0();
      v92 = v146;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v147 + 8))(v92, v148);
      return (*v69)(v70, v71);
    case 19:
      v169 = 19;
      sub_1C0F3BD6C();
      v78 = v149;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      v80 = v150;
      v79 = v151;
      goto LABEL_27;
    case 20:
      v169 = 20;
      sub_1C0F3BD18();
      v78 = v152;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      v80 = v153;
      v79 = v154;
      goto LABEL_27;
    case 21:
      v169 = 21;
      sub_1C0F3BCC4();
      v78 = v155;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      v80 = v156;
      v79 = v157;
      goto LABEL_27;
    case 22:
      v169 = 22;
      sub_1C0F3BC70();
      v78 = v158;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      v80 = v159;
      v79 = v160;
      goto LABEL_27;
    case 23:
      v169 = 23;
      sub_1C0F3BC1C();
      v78 = v161;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      v80 = v162;
      v79 = v163;
      goto LABEL_27;
    case 24:
      v169 = 24;
      sub_1C0F3BBC8();
      v78 = v164;
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      v80 = v165;
      v79 = v166;
LABEL_27:
      (*(v80 + 8))(v78, v79);
      break;
    default:
      v169 = 0;
      sub_1C0F3C3A8();
      v70 = v167;
      v71 = v168;
      sub_1C0F50700();
      (*(v95 + 8))(v62, v59);
      break;
  }

  return (*v69)(v70, v71);
}

unint64_t sub_1C0F3BB74()
{
  result = qword_1EBE78F98;
  if (!qword_1EBE78F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78F98);
  }

  return result;
}

unint64_t sub_1C0F3BBC8()
{
  result = qword_1EBE78FA0;
  if (!qword_1EBE78FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FA0);
  }

  return result;
}

unint64_t sub_1C0F3BC1C()
{
  result = qword_1EBE78FA8;
  if (!qword_1EBE78FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FA8);
  }

  return result;
}

unint64_t sub_1C0F3BC70()
{
  result = qword_1EBE78FB0;
  if (!qword_1EBE78FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FB0);
  }

  return result;
}

unint64_t sub_1C0F3BCC4()
{
  result = qword_1EBE78FB8;
  if (!qword_1EBE78FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FB8);
  }

  return result;
}

unint64_t sub_1C0F3BD18()
{
  result = qword_1EBE78FC0;
  if (!qword_1EBE78FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FC0);
  }

  return result;
}

unint64_t sub_1C0F3BD6C()
{
  result = qword_1EBE78FC8;
  if (!qword_1EBE78FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FC8);
  }

  return result;
}

unint64_t sub_1C0F3BDC0()
{
  result = qword_1EBE78FD0;
  if (!qword_1EBE78FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FD0);
  }

  return result;
}

unint64_t sub_1C0F3BE14()
{
  result = qword_1EBE78FD8;
  if (!qword_1EBE78FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FD8);
  }

  return result;
}

unint64_t sub_1C0F3BE68()
{
  result = qword_1EBE78FE0;
  if (!qword_1EBE78FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FE0);
  }

  return result;
}

unint64_t sub_1C0F3BEBC()
{
  result = qword_1EBE78FE8;
  if (!qword_1EBE78FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FE8);
  }

  return result;
}

unint64_t sub_1C0F3BF10()
{
  result = qword_1EBE78FF0;
  if (!qword_1EBE78FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FF0);
  }

  return result;
}

unint64_t sub_1C0F3BF64()
{
  result = qword_1EBE78FF8;
  if (!qword_1EBE78FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FF8);
  }

  return result;
}

unint64_t sub_1C0F3BFB8()
{
  result = qword_1EBE79000;
  if (!qword_1EBE79000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79000);
  }

  return result;
}

unint64_t sub_1C0F3C00C()
{
  result = qword_1EBE79008;
  if (!qword_1EBE79008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79008);
  }

  return result;
}

unint64_t sub_1C0F3C060()
{
  result = qword_1EBE79010;
  if (!qword_1EBE79010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79010);
  }

  return result;
}

unint64_t sub_1C0F3C0B4()
{
  result = qword_1EBE79018;
  if (!qword_1EBE79018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79018);
  }

  return result;
}

unint64_t sub_1C0F3C108()
{
  result = qword_1EBE79020;
  if (!qword_1EBE79020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79020);
  }

  return result;
}

unint64_t sub_1C0F3C15C()
{
  result = qword_1EBE79028;
  if (!qword_1EBE79028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79028);
  }

  return result;
}

unint64_t sub_1C0F3C1B0()
{
  result = qword_1EBE79030;
  if (!qword_1EBE79030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79030);
  }

  return result;
}

unint64_t sub_1C0F3C204()
{
  result = qword_1EBE79038;
  if (!qword_1EBE79038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79038);
  }

  return result;
}

unint64_t sub_1C0F3C258()
{
  result = qword_1EBE79040;
  if (!qword_1EBE79040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79040);
  }

  return result;
}

unint64_t sub_1C0F3C2AC()
{
  result = qword_1EBE79048;
  if (!qword_1EBE79048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79048);
  }

  return result;
}

unint64_t sub_1C0F3C300()
{
  result = qword_1EBE79050;
  if (!qword_1EBE79050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79050);
  }

  return result;
}

unint64_t sub_1C0F3C354()
{
  result = qword_1EBE79058;
  if (!qword_1EBE79058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79058);
  }

  return result;
}

unint64_t sub_1C0F3C3A8()
{
  result = qword_1EBE79060;
  if (!qword_1EBE79060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79060);
  }

  return result;
}

uint64_t AccessibilityFeatureAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilityFeatureAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v203 = a2;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79068, &qword_1C0F5F190);
  v178 = *(v202 - 8);
  v3 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v198 = &v127 - v4;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79070, &qword_1C0F5F198);
  v176 = *(v177 - 8);
  v5 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v197 = &v127 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79078, &qword_1C0F5F1A0);
  v174 = *(v175 - 8);
  v7 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v196 = &v127 - v8;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79080, &qword_1C0F5F1A8);
  v172 = *(v173 - 8);
  v9 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v195 = &v127 - v10;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79088, &qword_1C0F5F1B0);
  v170 = *(v171 - 8);
  v11 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v194 = &v127 - v12;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79090, &qword_1C0F5F1B8);
  v168 = *(v169 - 8);
  v13 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v193 = &v127 - v14;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79098, &qword_1C0F5F1C0);
  v166 = *(v167 - 8);
  v15 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v192 = &v127 - v16;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790A0, &qword_1C0F5F1C8);
  v164 = *(v165 - 8);
  v17 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v191 = &v127 - v18;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790A8, &qword_1C0F5F1D0);
  v162 = *(v163 - 8);
  v19 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v190 = &v127 - v20;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790B0, &qword_1C0F5F1D8);
  v160 = *(v161 - 8);
  v21 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v189 = &v127 - v22;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790B8, &qword_1C0F5F1E0);
  v158 = *(v159 - 8);
  v23 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v188 = &v127 - v24;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790C0, &qword_1C0F5F1E8);
  v156 = *(v157 - 8);
  v25 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v187 = &v127 - v26;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790C8, &qword_1C0F5F1F0);
  v154 = *(v155 - 8);
  v27 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v186 = &v127 - v28;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790D0, &qword_1C0F5F1F8);
  v152 = *(v153 - 8);
  v29 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v185 = &v127 - v30;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790D8, &qword_1C0F5F200);
  v150 = *(v151 - 8);
  v31 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v184 = &v127 - v32;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790E0, &qword_1C0F5F208);
  v148 = *(v149 - 8);
  v33 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v183 = &v127 - v34;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790E8, &qword_1C0F5F210);
  v146 = *(v147 - 8);
  v35 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v180 = &v127 - v36;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790F0, &qword_1C0F5F218);
  v145 = *(v144 - 8);
  v37 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v201 = &v127 - v38;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790F8, &qword_1C0F5F220);
  v142 = *(v143 - 8);
  v39 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v200 = &v127 - v40;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79100, &qword_1C0F5F228);
  v140 = *(v141 - 8);
  v41 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v182 = &v127 - v42;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79108, &qword_1C0F5F230);
  v138 = *(v139 - 8);
  v43 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v181 = &v127 - v44;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79110, &qword_1C0F5F238);
  v136 = *(v137 - 8);
  v45 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v199 = &v127 - v46;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79118, &qword_1C0F5F240);
  v134 = *(v135 - 8);
  v47 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v179 = &v127 - v48;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79120, &qword_1C0F5F248);
  v132 = *(v133 - 8);
  v49 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v51 = &v127 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79128, &qword_1C0F5F250);
  v131 = *(v52 - 8);
  v53 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v127 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79130, &unk_1C0F5F258);
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v127 - v59;
  v61 = a1[3];
  v62 = a1[4];
  v204 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v61);
  sub_1C0F3BB74();
  v63 = v205;
  sub_1C0F508A0();
  if (v63)
  {
LABEL_8:
    v80 = v204;
    return __swift_destroy_boxed_opaque_existential_0(v80);
  }

  v128 = v55;
  v127 = v52;
  v129 = v51;
  v64 = v199;
  v65 = v200;
  v66 = v201;
  v130 = 0;
  v68 = v202;
  v67 = v203;
  v205 = v57;
  v69 = v60;
  v70 = sub_1C0F506F0();
  v71 = (2 * *(v70 + 16)) | 1;
  v206 = v70;
  v207 = v70 + 32;
  v208 = 0;
  v209 = v71;
  v72 = sub_1C0F13C4C();
  if (v208 != v209 >> 1)
  {
LABEL_6:
    v76 = sub_1C0F505C0();
    swift_allocError();
    v78 = v77;
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
    *v78 = &type metadata for AccessibilityFeatureAction;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x1E69E6AF8], v76);
    swift_willThrow();
LABEL_7:
    (*(v205 + 8))(v69, v56);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v73 = v72;
  switch(v72)
  {
    case 0:
      v210 = 0;
      sub_1C0F3C3A8();
      v74 = v128;
      v75 = v130;
      sub_1C0F50670();
      if (v75)
      {
        goto LABEL_7;
      }

      (*(v131 + 8))(v74, v127);
      goto LABEL_58;
    case 1:
      v210 = 1;
      sub_1C0F3C354();
      v102 = v129;
      v103 = v130;
      sub_1C0F50670();
      if (v103)
      {
        goto LABEL_7;
      }

      (*(v132 + 8))(v102, v133);
      goto LABEL_58;
    case 2:
      v210 = 2;
      sub_1C0F3C300();
      v96 = v179;
      v97 = v130;
      sub_1C0F50670();
      if (v97)
      {
        goto LABEL_7;
      }

      (*(v134 + 8))(v96, v135);
      goto LABEL_58;
    case 3:
      v210 = 3;
      sub_1C0F3C2AC();
      v100 = v130;
      sub_1C0F50670();
      if (v100)
      {
        goto LABEL_7;
      }

      (*(v136 + 8))(v64, v137);
      goto LABEL_58;
    case 4:
      v210 = 4;
      sub_1C0F3C258();
      v88 = v181;
      v89 = v130;
      sub_1C0F50670();
      if (v89)
      {
        goto LABEL_7;
      }

      (*(v138 + 8))(v88, v139);
      goto LABEL_58;
    case 5:
      v210 = 5;
      sub_1C0F3C204();
      v108 = v182;
      v109 = v130;
      sub_1C0F50670();
      if (v109)
      {
        goto LABEL_7;
      }

      (*(v140 + 8))(v108, v141);
      goto LABEL_58;
    case 6:
      v210 = 6;
      sub_1C0F3C1B0();
      v114 = v130;
      sub_1C0F50670();
      if (v114)
      {
        goto LABEL_7;
      }

      (*(v142 + 8))(v65, v143);
      goto LABEL_58;
    case 7:
      v210 = 7;
      sub_1C0F3C15C();
      v101 = v130;
      sub_1C0F50670();
      if (v101)
      {
        goto LABEL_7;
      }

      (*(v145 + 8))(v66, v144);
      goto LABEL_58;
    case 8:
      v210 = 8;
      sub_1C0F3C108();
      v119 = v180;
      v120 = v130;
      sub_1C0F50670();
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v146 + 8))(v119, v147);
      goto LABEL_58;
    case 9:
      v210 = 9;
      sub_1C0F3C0B4();
      v92 = v183;
      v93 = v130;
      sub_1C0F50670();
      if (v93)
      {
        goto LABEL_7;
      }

      (*(v148 + 8))(v92, v149);
      goto LABEL_58;
    case 10:
      v210 = 10;
      sub_1C0F3C060();
      v117 = v184;
      v118 = v130;
      sub_1C0F50670();
      if (v118)
      {
        goto LABEL_7;
      }

      (*(v150 + 8))(v117, v151);
      goto LABEL_58;
    case 11:
      v210 = 11;
      sub_1C0F3C00C();
      v86 = v185;
      v87 = v130;
      sub_1C0F50670();
      if (v87)
      {
        goto LABEL_7;
      }

      (*(v152 + 8))(v86, v153);
      goto LABEL_58;
    case 12:
      v210 = 12;
      sub_1C0F3BFB8();
      v90 = v186;
      v91 = v130;
      sub_1C0F50670();
      if (v91)
      {
        goto LABEL_7;
      }

      (*(v154 + 8))(v90, v155);
      goto LABEL_58;
    case 13:
      v210 = 13;
      sub_1C0F3BF64();
      v112 = v187;
      v113 = v130;
      sub_1C0F50670();
      if (v113)
      {
        goto LABEL_7;
      }

      (*(v156 + 8))(v112, v157);
      goto LABEL_58;
    case 14:
      v210 = 14;
      sub_1C0F3BF10();
      v84 = v188;
      v85 = v130;
      sub_1C0F50670();
      if (v85)
      {
        goto LABEL_7;
      }

      (*(v158 + 8))(v84, v159);
      goto LABEL_58;
    case 15:
      v210 = 15;
      sub_1C0F3BEBC();
      v98 = v189;
      v99 = v130;
      sub_1C0F50670();
      if (v99)
      {
        goto LABEL_7;
      }

      (*(v160 + 8))(v98, v161);
      goto LABEL_58;
    case 16:
      v210 = 16;
      sub_1C0F3BE68();
      v82 = v190;
      v83 = v130;
      sub_1C0F50670();
      if (v83)
      {
        goto LABEL_7;
      }

      (*(v162 + 8))(v82, v163);
      goto LABEL_58;
    case 17:
      v210 = 17;
      sub_1C0F3BE14();
      v104 = v191;
      v105 = v130;
      sub_1C0F50670();
      if (v105)
      {
        goto LABEL_7;
      }

      (*(v164 + 8))(v104, v165);
      goto LABEL_58;
    case 18:
      v210 = 18;
      sub_1C0F3BDC0();
      v115 = v192;
      v116 = v130;
      sub_1C0F50670();
      if (v116)
      {
        goto LABEL_7;
      }

      (*(v166 + 8))(v115, v167);
      goto LABEL_58;
    case 19:
      v210 = 19;
      sub_1C0F3BD6C();
      v123 = v193;
      v124 = v130;
      sub_1C0F50670();
      if (v124)
      {
        goto LABEL_7;
      }

      (*(v168 + 8))(v123, v169);
      goto LABEL_58;
    case 20:
      v210 = 20;
      sub_1C0F3BD18();
      v106 = v194;
      v107 = v130;
      sub_1C0F50670();
      if (v107)
      {
        goto LABEL_7;
      }

      (*(v170 + 8))(v106, v171);
      goto LABEL_58;
    case 21:
      v210 = 21;
      sub_1C0F3BCC4();
      v110 = v195;
      v111 = v130;
      sub_1C0F50670();
      if (v111)
      {
        goto LABEL_7;
      }

      (*(v172 + 8))(v110, v173);
      goto LABEL_58;
    case 22:
      v210 = 22;
      sub_1C0F3BC70();
      v121 = v196;
      v122 = v130;
      sub_1C0F50670();
      if (v122)
      {
        goto LABEL_7;
      }

      (*(v174 + 8))(v121, v175);
      goto LABEL_58;
    case 23:
      v210 = 23;
      sub_1C0F3BC1C();
      v125 = v197;
      v126 = v130;
      sub_1C0F50670();
      if (v126)
      {
        goto LABEL_7;
      }

      (*(v176 + 8))(v125, v177);
LABEL_58:
      (*(v205 + 8))(v69, v56);
      swift_unknownObjectRelease();
      v80 = v204;
      goto LABEL_59;
    case 24:
      v210 = 24;
      sub_1C0F3BBC8();
      v94 = v198;
      v95 = v130;
      sub_1C0F50670();
      if (v95)
      {
        (*(v205 + 8))(v69, v56);
        swift_unknownObjectRelease();
        v80 = v204;
      }

      else
      {
        (*(v178 + 8))(v94, v68);
        (*(v205 + 8))(v69, v56);
        swift_unknownObjectRelease();
        v80 = v204;
LABEL_59:
        *v67 = v73;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v80);
}

unint64_t sub_1C0F3EB98()
{
  result = qword_1EBE79138;
  if (!qword_1EBE79138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79138);
  }

  return result;
}

unint64_t sub_1C0F3EBF0()
{
  result = qword_1EBE79140;
  if (!qword_1EBE79140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE79148, &qword_1C0F5F320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79140);
  }

  return result;
}

unint64_t sub_1C0F3EC54(uint64_t a1)
{
  result = sub_1C0F3EC7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3EC7C()
{
  result = qword_1EBE79150;
  if (!qword_1EBE79150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79150);
  }

  return result;
}

unint64_t sub_1C0F3ECD4()
{
  result = qword_1EBE79158;
  if (!qword_1EBE79158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79158);
  }

  return result;
}

unint64_t sub_1C0F3ED28(uint64_t a1)
{
  result = sub_1C0F3ED50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3ED50()
{
  result = qword_1EBE79160;
  if (!qword_1EBE79160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79160);
  }

  return result;
}

unint64_t sub_1C0F3EDA8()
{
  result = qword_1EBE79168;
  if (!qword_1EBE79168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79168);
  }

  return result;
}

unint64_t sub_1C0F3EDFC(uint64_t a1)
{
  result = sub_1C0F3EE24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3EE24()
{
  result = qword_1EBE79170;
  if (!qword_1EBE79170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79170);
  }

  return result;
}

unint64_t sub_1C0F3EE7C()
{
  result = qword_1EBE79178;
  if (!qword_1EBE79178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79178);
  }

  return result;
}

unint64_t sub_1C0F3EED0(uint64_t a1)
{
  result = sub_1C0F3EEF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3EEF8()
{
  result = qword_1EBE79180;
  if (!qword_1EBE79180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79180);
  }

  return result;
}

unint64_t sub_1C0F3EF50()
{
  result = qword_1EBE79188;
  if (!qword_1EBE79188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79188);
  }

  return result;
}

unint64_t sub_1C0F3EFA4(uint64_t a1)
{
  result = sub_1C0F3EFCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3EFCC()
{
  result = qword_1EBE79190;
  if (!qword_1EBE79190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79190);
  }

  return result;
}

unint64_t sub_1C0F3F024()
{
  result = qword_1EBE79198;
  if (!qword_1EBE79198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79198);
  }

  return result;
}

unint64_t sub_1C0F3F078(uint64_t a1)
{
  result = sub_1C0F3F0A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F0A0()
{
  result = qword_1EBE791A0;
  if (!qword_1EBE791A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791A0);
  }

  return result;
}

unint64_t sub_1C0F3F0F8()
{
  result = qword_1EBE791A8;
  if (!qword_1EBE791A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791A8);
  }

  return result;
}

unint64_t sub_1C0F3F14C(uint64_t a1)
{
  result = sub_1C0F3F174();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F174()
{
  result = qword_1EBE791B0;
  if (!qword_1EBE791B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791B0);
  }

  return result;
}

unint64_t sub_1C0F3F1CC()
{
  result = qword_1EBE791B8;
  if (!qword_1EBE791B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791B8);
  }

  return result;
}

unint64_t sub_1C0F3F220(uint64_t a1)
{
  result = sub_1C0F3F248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F248()
{
  result = qword_1EBE791C0;
  if (!qword_1EBE791C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791C0);
  }

  return result;
}

unint64_t sub_1C0F3F2A0()
{
  result = qword_1EBE791C8;
  if (!qword_1EBE791C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791C8);
  }

  return result;
}

unint64_t sub_1C0F3F2F4(uint64_t a1)
{
  result = sub_1C0F3F31C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F31C()
{
  result = qword_1EBE791D0;
  if (!qword_1EBE791D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791D0);
  }

  return result;
}

unint64_t sub_1C0F3F374()
{
  result = qword_1EBE791D8;
  if (!qword_1EBE791D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791D8);
  }

  return result;
}

unint64_t sub_1C0F3F3C8(uint64_t a1)
{
  result = sub_1C0F3F3F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F3F0()
{
  result = qword_1EBE791E0;
  if (!qword_1EBE791E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791E0);
  }

  return result;
}

unint64_t sub_1C0F3F448()
{
  result = qword_1EBE791E8;
  if (!qword_1EBE791E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791E8);
  }

  return result;
}

unint64_t sub_1C0F3F49C(uint64_t a1)
{
  result = sub_1C0F3F4C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F4C4()
{
  result = qword_1EBE791F0;
  if (!qword_1EBE791F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791F0);
  }

  return result;
}

unint64_t sub_1C0F3F51C()
{
  result = qword_1EBE791F8;
  if (!qword_1EBE791F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE791F8);
  }

  return result;
}

unint64_t sub_1C0F3F570(uint64_t a1)
{
  result = sub_1C0F3F598();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F598()
{
  result = qword_1EBE79200;
  if (!qword_1EBE79200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79200);
  }

  return result;
}

unint64_t sub_1C0F3F5F0()
{
  result = qword_1EBE79208;
  if (!qword_1EBE79208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79208);
  }

  return result;
}

unint64_t sub_1C0F3F644(uint64_t a1)
{
  result = sub_1C0F3F66C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F66C()
{
  result = qword_1EBE79210;
  if (!qword_1EBE79210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79210);
  }

  return result;
}

unint64_t sub_1C0F3F6C4()
{
  result = qword_1EBE79218;
  if (!qword_1EBE79218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79218);
  }

  return result;
}

unint64_t sub_1C0F3F718(uint64_t a1)
{
  result = sub_1C0F3F740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F740()
{
  result = qword_1EBE79220;
  if (!qword_1EBE79220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79220);
  }

  return result;
}

unint64_t sub_1C0F3F798()
{
  result = qword_1EBE79228;
  if (!qword_1EBE79228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79228);
  }

  return result;
}

unint64_t sub_1C0F3F7EC(uint64_t a1)
{
  result = sub_1C0F3F814();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F814()
{
  result = qword_1EBE79230;
  if (!qword_1EBE79230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79230);
  }

  return result;
}

unint64_t sub_1C0F3F86C()
{
  result = qword_1EBE79238;
  if (!qword_1EBE79238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79238);
  }

  return result;
}

unint64_t sub_1C0F3F8C0(uint64_t a1)
{
  result = sub_1C0F3F8E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F8E8()
{
  result = qword_1EBE79240;
  if (!qword_1EBE79240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79240);
  }

  return result;
}

unint64_t sub_1C0F3F940()
{
  result = qword_1EBE79248;
  if (!qword_1EBE79248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79248);
  }

  return result;
}

unint64_t sub_1C0F3F994(uint64_t a1)
{
  result = sub_1C0F3F9BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3F9BC()
{
  result = qword_1EBE79250;
  if (!qword_1EBE79250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79250);
  }

  return result;
}

unint64_t sub_1C0F3FA14()
{
  result = qword_1EBE79258;
  if (!qword_1EBE79258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79258);
  }

  return result;
}

unint64_t sub_1C0F3FA68(uint64_t a1)
{
  result = sub_1C0F3FA90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3FA90()
{
  result = qword_1EBE79260;
  if (!qword_1EBE79260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79260);
  }

  return result;
}

unint64_t sub_1C0F3FAE8()
{
  result = qword_1EBE79268;
  if (!qword_1EBE79268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79268);
  }

  return result;
}

unint64_t sub_1C0F3FB3C(uint64_t a1)
{
  result = sub_1C0F3FB64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3FB64()
{
  result = qword_1EBE79270;
  if (!qword_1EBE79270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79270);
  }

  return result;
}

unint64_t sub_1C0F3FBBC()
{
  result = qword_1EBE79278;
  if (!qword_1EBE79278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79278);
  }

  return result;
}

unint64_t sub_1C0F3FC10(uint64_t a1)
{
  result = sub_1C0F3FC38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3FC38()
{
  result = qword_1EBE79280;
  if (!qword_1EBE79280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79280);
  }

  return result;
}

unint64_t sub_1C0F3FC90()
{
  result = qword_1EBE79288;
  if (!qword_1EBE79288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79288);
  }

  return result;
}

unint64_t sub_1C0F3FCE4(uint64_t a1)
{
  result = sub_1C0F3FD0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3FD0C()
{
  result = qword_1EBE79290;
  if (!qword_1EBE79290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79290);
  }

  return result;
}

unint64_t sub_1C0F3FD64()
{
  result = qword_1EBE79298;
  if (!qword_1EBE79298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79298);
  }

  return result;
}

unint64_t sub_1C0F3FDB8(uint64_t a1)
{
  result = sub_1C0F3FDE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3FDE0()
{
  result = qword_1EBE792A0;
  if (!qword_1EBE792A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792A0);
  }

  return result;
}

unint64_t sub_1C0F3FE38()
{
  result = qword_1EBE792A8;
  if (!qword_1EBE792A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792A8);
  }

  return result;
}

unint64_t sub_1C0F3FE8C(uint64_t a1)
{
  result = sub_1C0F3FEB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3FEB4()
{
  result = qword_1EBE792B0;
  if (!qword_1EBE792B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792B0);
  }

  return result;
}

unint64_t sub_1C0F3FF0C()
{
  result = qword_1EBE792B8;
  if (!qword_1EBE792B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792B8);
  }

  return result;
}

unint64_t sub_1C0F3FF60(uint64_t a1)
{
  result = sub_1C0F3FF88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F3FF88()
{
  result = qword_1EBE792C0;
  if (!qword_1EBE792C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792C0);
  }

  return result;
}

unint64_t sub_1C0F3FFE0()
{
  result = qword_1EBE792C8;
  if (!qword_1EBE792C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792C8);
  }

  return result;
}

unint64_t sub_1C0F40034(uint64_t a1)
{
  result = sub_1C0F4005C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F4005C()
{
  result = qword_1EBE792D0;
  if (!qword_1EBE792D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792D0);
  }

  return result;
}

unint64_t sub_1C0F400B4()
{
  result = qword_1EBE792D8;
  if (!qword_1EBE792D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792D8);
  }

  return result;
}

uint64_t sub_1C0F402A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C0F40338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0F4058C()
{
  result = qword_1EBE792E0;
  if (!qword_1EBE792E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792E0);
  }

  return result;
}

unint64_t sub_1C0F405E4()
{
  result = qword_1EBE792E8;
  if (!qword_1EBE792E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792E8);
  }

  return result;
}

unint64_t sub_1C0F4063C()
{
  result = qword_1EBE792F0;
  if (!qword_1EBE792F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792F0);
  }

  return result;
}

unint64_t sub_1C0F40694()
{
  result = qword_1EBE792F8;
  if (!qword_1EBE792F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE792F8);
  }

  return result;
}

unint64_t sub_1C0F406EC()
{
  result = qword_1EBE79300;
  if (!qword_1EBE79300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79300);
  }

  return result;
}

unint64_t sub_1C0F40744()
{
  result = qword_1EBE79308;
  if (!qword_1EBE79308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79308);
  }

  return result;
}

unint64_t sub_1C0F4079C()
{
  result = qword_1EBE79310;
  if (!qword_1EBE79310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79310);
  }

  return result;
}

unint64_t sub_1C0F407F4()
{
  result = qword_1EBE79318;
  if (!qword_1EBE79318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79318);
  }

  return result;
}

unint64_t sub_1C0F4084C()
{
  result = qword_1EBE79320;
  if (!qword_1EBE79320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79320);
  }

  return result;
}

unint64_t sub_1C0F408A4()
{
  result = qword_1EBE79328;
  if (!qword_1EBE79328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79328);
  }

  return result;
}

unint64_t sub_1C0F408FC()
{
  result = qword_1EBE79330;
  if (!qword_1EBE79330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79330);
  }

  return result;
}

unint64_t sub_1C0F40954()
{
  result = qword_1EBE79338;
  if (!qword_1EBE79338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79338);
  }

  return result;
}

unint64_t sub_1C0F409AC()
{
  result = qword_1EBE79340;
  if (!qword_1EBE79340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79340);
  }

  return result;
}

unint64_t sub_1C0F40A04()
{
  result = qword_1EBE79348;
  if (!qword_1EBE79348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79348);
  }

  return result;
}

unint64_t sub_1C0F40A5C()
{
  result = qword_1EBE79350;
  if (!qword_1EBE79350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79350);
  }

  return result;
}

unint64_t sub_1C0F40AB4()
{
  result = qword_1EBE79358;
  if (!qword_1EBE79358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79358);
  }

  return result;
}

unint64_t sub_1C0F40B0C()
{
  result = qword_1EBE79360;
  if (!qword_1EBE79360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79360);
  }

  return result;
}

unint64_t sub_1C0F40B64()
{
  result = qword_1EBE79368;
  if (!qword_1EBE79368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79368);
  }

  return result;
}

unint64_t sub_1C0F40BBC()
{
  result = qword_1EBE79370;
  if (!qword_1EBE79370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79370);
  }

  return result;
}

unint64_t sub_1C0F40C14()
{
  result = qword_1EBE79378;
  if (!qword_1EBE79378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79378);
  }

  return result;
}

unint64_t sub_1C0F40C6C()
{
  result = qword_1EBE79380;
  if (!qword_1EBE79380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79380);
  }

  return result;
}

unint64_t sub_1C0F40CC4()
{
  result = qword_1EBE79388;
  if (!qword_1EBE79388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79388);
  }

  return result;
}

unint64_t sub_1C0F40D1C()
{
  result = qword_1EBE79390;
  if (!qword_1EBE79390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79390);
  }

  return result;
}

unint64_t sub_1C0F40D74()
{
  result = qword_1EBE79398;
  if (!qword_1EBE79398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79398);
  }

  return result;
}

unint64_t sub_1C0F40DCC()
{
  result = qword_1EBE793A0;
  if (!qword_1EBE793A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793A0);
  }

  return result;
}

unint64_t sub_1C0F40E24()
{
  result = qword_1EBE793A8;
  if (!qword_1EBE793A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793A8);
  }

  return result;
}

unint64_t sub_1C0F40E7C()
{
  result = qword_1EBE793B0;
  if (!qword_1EBE793B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793B0);
  }

  return result;
}

unint64_t sub_1C0F40ED4()
{
  result = qword_1EBE793B8;
  if (!qword_1EBE793B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793B8);
  }

  return result;
}

unint64_t sub_1C0F40F2C()
{
  result = qword_1EBE793C0;
  if (!qword_1EBE793C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793C0);
  }

  return result;
}

unint64_t sub_1C0F40F84()
{
  result = qword_1EBE793C8;
  if (!qword_1EBE793C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793C8);
  }

  return result;
}

unint64_t sub_1C0F40FDC()
{
  result = qword_1EBE793D0;
  if (!qword_1EBE793D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793D0);
  }

  return result;
}

unint64_t sub_1C0F41034()
{
  result = qword_1EBE793D8;
  if (!qword_1EBE793D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793D8);
  }

  return result;
}

unint64_t sub_1C0F4108C()
{
  result = qword_1EBE793E0;
  if (!qword_1EBE793E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793E0);
  }

  return result;
}

unint64_t sub_1C0F410E4()
{
  result = qword_1EBE793E8;
  if (!qword_1EBE793E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793E8);
  }

  return result;
}

unint64_t sub_1C0F4113C()
{
  result = qword_1EBE793F0;
  if (!qword_1EBE793F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793F0);
  }

  return result;
}

unint64_t sub_1C0F41194()
{
  result = qword_1EBE793F8;
  if (!qword_1EBE793F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE793F8);
  }

  return result;
}

unint64_t sub_1C0F411EC()
{
  result = qword_1EBE79400;
  if (!qword_1EBE79400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79400);
  }

  return result;
}

unint64_t sub_1C0F41244()
{
  result = qword_1EBE79408;
  if (!qword_1EBE79408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79408);
  }

  return result;
}

unint64_t sub_1C0F4129C()
{
  result = qword_1EBE79410;
  if (!qword_1EBE79410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79410);
  }

  return result;
}

unint64_t sub_1C0F412F4()
{
  result = qword_1EBE79418;
  if (!qword_1EBE79418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79418);
  }

  return result;
}

unint64_t sub_1C0F4134C()
{
  result = qword_1EBE79420;
  if (!qword_1EBE79420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79420);
  }

  return result;
}

unint64_t sub_1C0F413A4()
{
  result = qword_1EBE79428;
  if (!qword_1EBE79428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79428);
  }

  return result;
}

unint64_t sub_1C0F413FC()
{
  result = qword_1EBE79430;
  if (!qword_1EBE79430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79430);
  }

  return result;
}

unint64_t sub_1C0F41454()
{
  result = qword_1EBE79438;
  if (!qword_1EBE79438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79438);
  }

  return result;
}

unint64_t sub_1C0F414AC()
{
  result = qword_1EBE79440;
  if (!qword_1EBE79440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79440);
  }

  return result;
}

unint64_t sub_1C0F41504()
{
  result = qword_1EBE79448;
  if (!qword_1EBE79448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79448);
  }

  return result;
}

unint64_t sub_1C0F4155C()
{
  result = qword_1EBE79450;
  if (!qword_1EBE79450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79450);
  }

  return result;
}

unint64_t sub_1C0F415B4()
{
  result = qword_1EBE79458;
  if (!qword_1EBE79458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79458);
  }

  return result;
}

unint64_t sub_1C0F4160C()
{
  result = qword_1EBE79460;
  if (!qword_1EBE79460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79460);
  }

  return result;
}

unint64_t sub_1C0F41664()
{
  result = qword_1EBE79468;
  if (!qword_1EBE79468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79468);
  }

  return result;
}

unint64_t sub_1C0F416BC()
{
  result = qword_1EBE79470;
  if (!qword_1EBE79470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79470);
  }

  return result;
}

unint64_t sub_1C0F41714()
{
  result = qword_1EBE79478;
  if (!qword_1EBE79478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79478);
  }

  return result;
}

unint64_t sub_1C0F4176C()
{
  result = qword_1EBE79480;
  if (!qword_1EBE79480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79480);
  }

  return result;
}

uint64_t sub_1C0F417C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001C0F67C70 == a2;
  if (v3 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7669747369737361 && a2 == 0xEF73736563634165 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7669747369737361 && a2 == 0xEE006863756F5465 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C0F67C90 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C0F67CB0 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6946726F6C6F63 && a2 == 0xEC00000073726574 || (sub_1C0F50790() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C0F67CD0 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C0F67CF0 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7865547265766F68 && a2 == 0xEF676E6970795474 || (sub_1C0F50790() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C0F67D10 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x754D636974706168 && a2 == 0xEB00000000636973 || (sub_1C0F50790() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x747061436576696CLL && a2 == 0xEC000000736E6F69 || (sub_1C0F50790() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x656570536576696CLL && a2 == 0xEA00000000006863 || (sub_1C0F50790() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656966696E67616DLL && a2 == 0xE900000000000072 || (sub_1C0F50790() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x75436E6F69746F6DLL && a2 == 0xEA00000000007365 || (sub_1C0F50790() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C0F67D30 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C0F67D50 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7263536B61657073 && a2 == 0xEB000000006E6565 || (sub_1C0F50790() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F43686374697773 && a2 == 0xED00006C6F72746ELL || (sub_1C0F50790() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x546C617574726976 && a2 == 0xEF6461706B636172 || (sub_1C0F50790() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6E6F436563696F76 && a2 == 0xEC0000006C6F7274 || (sub_1C0F50790() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x65764F6563696F76 && a2 == 0xE900000000000072 || (sub_1C0F50790() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C0F67D70 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 1836019578 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x746E6F436D6F6F7ALL && a2 == 0xEE0072656C6C6F72)
  {

    return 24;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

id AXSSRemoteDesktopServer.init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

id AXSSRemoteDesktopServer.init(delegate:)()
{
  v2.super_class = AXSSRemoteDesktopServer;
  v0 = objc_msgSendSuper2(&v2, sel_init);
  swift_unknownObjectRelease();
  return v0;
}

AXSSRemoteDesktopServer __swiftcall AXSSRemoteDesktopServer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for AXSSRemoteDesktopServer()
{
  result = qword_1EBE79488;
  if (!qword_1EBE79488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE79488);
  }

  return result;
}

void AccessibilityAction.domain.getter(_BYTE *a1@<X8>)
{
  if (v1[1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2 & 0xFE | ((*v1 & 0x20) != 0);
}

uint64_t sub_1C0F422E8()
{
  if (qword_1EBE771B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBE79498;
  v1 = qword_1EBE771C0;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_1C0F44638(v2);
  if (qword_1EBE771C8 != -1)
  {
    swift_once();
  }

  sub_1C0F44638(v3);
  if (qword_1EBE771D0 != -1)
  {
    swift_once();
  }

  result = sub_1C0F44638(v4);
  qword_1EBE79490 = v0;
  return result;
}

uint64_t sub_1C0F4245C()
{
  if (qword_1EBE771A8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v1 = off_1EBE78CE8;
  v2 = *(off_1EBE78CE8 + 2);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];

    sub_1C0EF8F0C(0, v2, 0);
    v3 = v11;
    v4 = *(v11 + 16);
    v5 = 2 * v4;
    v6 = 32;
    do
    {
      v7 = v1[v6];
      v8 = *(v11 + 24);
      v9 = v4 + 1;
      if (v4 >= v8 >> 1)
      {
        sub_1C0EF8F0C((v8 > 1), v4 + 1, 1);
      }

      *(v11 + 16) = v9;
      v10 = v11 + v5;
      *(v10 + 32) = v7;
      *(v10 + 33) = 0;
      v5 += 2;
      ++v6;
      v4 = v9;
      --v2;
    }

    while (v2);
  }

  qword_1EBE79498 = v3;
  return result;
}

char *sub_1C0F425BC()
{
  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1C0EF8F0C(0, 15, 0);
  v1 = 0;
  v2 = v9;
  v3 = *(v9 + 16);
  v4 = 2 * v3;
  do
  {
    v5 = byte_1F4053C08[v1 + 32];
    v10 = v2;
    v6 = *(v2 + 24);
    v7 = v3 + 1;
    if (v3 >= v6 >> 1)
    {
      result = sub_1C0EF8F0C((v6 > 1), v3 + 1, 1);
      v2 = v10;
    }

    ++v1;
    *(v2 + 16) = v7;
    v8 = v2 + v4;
    *(v8 + 32) = v5 | 0x20;
    *(v8 + 33) = 0;
    v4 += 2;
    v3 = v7;
  }

  while (v1 != 15);
  qword_1EBE794A0 = v2;
  return result;
}

char *sub_1C0F426BC()
{
  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1C0EF8F0C(0, 25, 0);
  v1 = 0;
  v2 = v9;
  v3 = *(v9 + 16);
  v4 = 2 * v3;
  do
  {
    v5 = byte_1F4053CE8[v1 + 32];
    v10 = v2;
    v6 = *(v2 + 24);
    v7 = v3 + 1;
    if (v3 >= v6 >> 1)
    {
      result = sub_1C0EF8F0C((v6 > 1), v3 + 1, 1);
      v2 = v10;
    }

    ++v1;
    *(v2 + 16) = v7;
    v8 = v2 + v4;
    *(v8 + 32) = v5;
    *(v8 + 33) = 1;
    v4 += 2;
    v3 = v7;
  }

  while (v1 != 25);
  qword_1EBE794A8 = v2;
  return result;
}

char *sub_1C0F427C4()
{
  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1C0EF8F0C(0, 18, 0);
  v1 = 0;
  v2 = v9;
  v3 = *(v9 + 16);
  v4 = 2 * v3;
  do
  {
    v5 = byte_1F4053C38[v1 + 32];
    v10 = v2;
    v6 = *(v2 + 24);
    v7 = v3 + 1;
    if (v3 >= v6 >> 1)
    {
      result = sub_1C0EF8F0C((v6 > 1), v3 + 1, 1);
      v2 = v10;
    }

    ++v1;
    *(v2 + 16) = v7;
    v8 = v2 + v4;
    *(v8 + 32) = v5 | 0x20;
    *(v8 + 33) = 1;
    v4 += 2;
    v3 = v7;
  }

  while (v1 != 18);
  qword_1EBE794B0 = v2;
  return result;
}

uint64_t sub_1C0F428D0(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t AccessibilityAction.resolve(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  if (v2[1])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | (v3 >> 5) & 1;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      LOBYTE(v11) = *v2;
      return AccessibilityFeatureAction.resolve(with:)(a2);
    }

    else
    {
      LOBYTE(v11) = v3 & 0xDF;
      return AccessibilitySystemAction.resolve(with:)(a1, a2);
    }
  }

  else if (v5)
  {
    LOBYTE(v11) = v3 & 0xDF;
    return AccessibilityDeviceAction.resolve(with:)(a2);
  }

  else
  {
    if (v3 >> 6)
    {
      v7 = v3 & 0x3F;
      if (v3 >> 6 == 1)
      {
        v12 = &type metadata for AccessibilityAssistiveTouchAction.RotateScreen;
        v8 = sub_1C0F349B4();
      }

      else
      {
        v12 = &type metadata for AccessibilityAssistiveTouchAction.Scroll;
        v8 = sub_1C0F31790();
      }

      v13 = v8;
      LOBYTE(v11) = v7;
    }

    else
    {
      v10 = *v2;
      static AccessibilityAssistiveTouchAction.resolveMenuAction(_:with:)(&v10, &v11);
    }

    return sub_1C0F42A2C(&v11, a2);
  }
}

uint64_t sub_1C0F42A2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C0F42A48(uint64_t a1)
{
  v2 = sub_1C0F44A64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F42A84(uint64_t a1)
{
  v2 = sub_1C0F44A64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F42AC0()
{
  v1 = 0x7669747369737361;
  v2 = 0x65727574616566;
  if (*v0 != 2)
  {
    v2 = 0x6D6574737973;
  }

  if (*v0)
  {
    v1 = 0x656369766564;
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

uint64_t sub_1C0F42B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F457E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F42B64(uint64_t a1)
{
  v2 = sub_1C0F44818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F42BA0(uint64_t a1)
{
  v2 = sub_1C0F44818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F42BDC(uint64_t a1)
{
  v2 = sub_1C0F449BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F42C18(uint64_t a1)
{
  v2 = sub_1C0F449BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F42C54(uint64_t a1)
{
  v2 = sub_1C0F44914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F42C90(uint64_t a1)
{
  v2 = sub_1C0F44914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F42CCC(uint64_t a1)
{
  v2 = sub_1C0F4486C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F42D08(uint64_t a1)
{
  v2 = sub_1C0F4486C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE794B8, &qword_1C0F61680);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE794C0, &qword_1C0F61688);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE794C8, &qword_1C0F61690);
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE794D0, &qword_1C0F61698);
  v34 = *(v14 - 8);
  v15 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE794D8, &qword_1C0F616A0);
  v43 = *(v18 - 8);
  v44 = v18;
  v19 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v22 = *v2;
  v23 = v2[1];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F44818();
  sub_1C0F508B0();
  if (v23)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 & 0xFFFFFFFE | (v22 >> 5) & 1;
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v50 = 2;
      sub_1C0F44914();
      v28 = v37;
      v27 = v44;
      sub_1C0F50700();
      v49 = v22;
      sub_1C0F44968();
      v29 = v39;
      sub_1C0F50760();
      v30 = v38;
    }

    else
    {
      v52 = 3;
      sub_1C0F4486C();
      v28 = v40;
      v27 = v44;
      sub_1C0F50700();
      v51 = v22 & 0xDF;
      sub_1C0F448C0();
      v29 = v42;
      sub_1C0F50760();
      v30 = v41;
    }

    (*(v30 + 8))(v28, v29);
  }

  else
  {
    if (v26)
    {
      v48 = 1;
      sub_1C0F449BC();
      v31 = v44;
      sub_1C0F50700();
      v47 = v22 & 0xDF;
      sub_1C0F44A10();
      v32 = v36;
      sub_1C0F50760();
      (*(v35 + 8))(v13, v32);
      return (*(v43 + 8))(v21, v31);
    }

    v46 = 0;
    sub_1C0F44A64();
    v27 = v44;
    sub_1C0F50700();
    v45 = v22;
    sub_1C0F44AB8();
    sub_1C0F50760();
    (*(v34 + 8))(v17, v14);
  }

  return (*(v43 + 8))(v21, v27);
}

uint64_t AccessibilityAction.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 0xFFFFFFFE | (v1 >> 5) & 1;
  if (v3 > 1)
  {
    v6 = v3 == 2;
    v4 = v1 & 0xDF;
    v5 = 3;
  }

  else
  {
    if (v3)
    {
      LOBYTE(v1) = v1 & 0xDF;
      v7 = 1;
      goto LABEL_16;
    }

    MEMORY[0x1C68EA070](0);
    v3 = v1 >> 6;
    v4 = v1 & 0x3F;
    v5 = 1;
    if ((v1 >> 6) != 1)
    {
      v5 = 2;
    }

    v6 = v3 == 0;
  }

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (!v6)
  {
    LOBYTE(v1) = v4;
  }

LABEL_16:
  MEMORY[0x1C68EA070](v7);
  return MEMORY[0x1C68EA070](v1);
}

uint64_t AccessibilityAction.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1C0F50850();
  AccessibilityAction.hash(into:)();
  return sub_1C0F50890();
}

uint64_t AccessibilityAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79528, &qword_1C0F616A8);
  v57 = *(v60 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79530, &qword_1C0F616B0);
  v56 = *(v52 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v58 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79538, &qword_1C0F616B8);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79540, &qword_1C0F616C0);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79548, &unk_1C0F616C8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v22);
  sub_1C0F44818();
  v23 = v62;
  sub_1C0F508A0();
  if (!v23)
  {
    v24 = v15;
    v50 = v12;
    v51 = 0;
    v25 = v11;
    v26 = v58;
    v27 = v59;
    v62 = v17;
    v29 = v60;
    v28 = v61;
    v30 = sub_1C0F506F0();
    v31 = (2 * *(v30 + 16)) | 1;
    v64 = v30;
    v65 = v30 + 32;
    v66 = 0;
    v67 = v31;
    v32 = sub_1C0F16508();
    if (v32 == 4 || v66 != v67 >> 1)
    {
      v37 = sub_1C0F505C0();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
      *v39 = &type metadata for AccessibilityAction;
      sub_1C0F50680();
      sub_1C0F505B0();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
    }

    else if (v32 > 1u)
    {
      if (v32 == 2)
      {
        v68 = 2;
        sub_1C0F44914();
        v42 = v26;
        v43 = v51;
        sub_1C0F50670();
        v44 = v62;
        if (!v43)
        {
          sub_1C0F44B60();
          v45 = v52;
          sub_1C0F506E0();
          (*(v56 + 8))(v42, v45);
          (*(v44 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v36 = v68;
          v35 = 1;
          v28 = v61;
          goto LABEL_19;
        }
      }

      else
      {
        v68 = 3;
        sub_1C0F4486C();
        v48 = v51;
        sub_1C0F50670();
        v49 = v62;
        if (!v48)
        {
          sub_1C0F44B0C();
          sub_1C0F506E0();
          (*(v57 + 8))(v27, v29);
          (*(v49 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v36 = v68 | 0x20;
          v35 = 1;
          goto LABEL_19;
        }
      }
    }

    else if (v32)
    {
      v68 = 1;
      sub_1C0F449BC();
      v46 = v51;
      sub_1C0F50670();
      if (!v46)
      {
        sub_1C0F44BB4();
        v47 = v54;
        sub_1C0F506E0();
        (*(v55 + 8))(v25, v47);
        (*(v62 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v35 = 0;
        v36 = v68 | 0x20;
        goto LABEL_19;
      }
    }

    else
    {
      v68 = 0;
      sub_1C0F44A64();
      v33 = v51;
      sub_1C0F50670();
      if (!v33)
      {
        sub_1C0F44C08();
        v34 = v50;
        sub_1C0F506E0();
        (*(v53 + 8))(v24, v34);
        (*(v62 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v35 = 0;
        v36 = v68;
LABEL_19:
        *v28 = v36;
        v28[1] = v35;
        return __swift_destroy_boxed_opaque_existential_0(v63);
      }
    }

    (*(v62 + 8))(v20, v16);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v63);
}

uint64_t sub_1C0F43BE8()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1C0F50850();
  AccessibilityAction.hash(into:)();
  return sub_1C0F50890();
}

uint64_t sub_1C0F43C40()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1C0F50850();
  AccessibilityAction.hash(into:)();
  return sub_1C0F50890();
}

void AccessibilityAction.Task.action.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static AccessibilityAction.Task.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 8);
  v9[0] = *a1;
  v9[1] = v2;
  v8[0] = v4;
  v8[1] = v5;
  return _s26AccessibilitySharedSupport0A6ActionO2eeoiySbAC_ACtFZ_0(v9, v8) & (v3 == v6);
}

uint64_t sub_1C0F43D40()
{
  if (*v0)
  {
    result = 25705;
  }

  else
  {
    result = 0x6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_1C0F43D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_1C0F50790() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C0F50790();

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

uint64_t sub_1C0F43E3C(uint64_t a1)
{
  v2 = sub_1C0F44C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F43E78(uint64_t a1)
{
  v2 = sub_1C0F44C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAction.Task.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79570, &qword_1C0F616D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F44C5C();
  sub_1C0F508B0();
  v16 = v8;
  v17 = v9;
  v15 = 0;
  sub_1C0F44CB0();
  v11 = v13[1];
  sub_1C0F50760();
  if (!v11)
  {
    v14 = 1;
    sub_1C0F50750();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AccessibilityAction.Task.hash(into:)()
{
  v1 = *(v0 + 1);
  v3 = *v0;
  v4 = v0[1];
  AccessibilityAction.hash(into:)();
  return MEMORY[0x1C68EA070](v1);
}

uint64_t AccessibilityAction.Task.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1C0F50850();
  AccessibilityAction.hash(into:)();
  MEMORY[0x1C68EA070](v3);
  return sub_1C0F50890();
}

uint64_t AccessibilityAction.Task.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79588, &qword_1C0F616E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F44C5C();
  sub_1C0F508A0();
  if (!v2)
  {
    v17 = 0;
    sub_1C0F44D04();
    sub_1C0F506E0();
    v11 = v18;
    v12 = v19;
    v16 = 1;
    v13 = sub_1C0F506D0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v12;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1C0F44318()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1C0F50850();
  AccessibilityAction.hash(into:)();
  MEMORY[0x1C68EA070](v3);
  return sub_1C0F50890();
}

uint64_t sub_1C0F44384()
{
  v1 = *(v0 + 1);
  v3 = *v0;
  v4 = v0[1];
  AccessibilityAction.hash(into:)();
  return MEMORY[0x1C68EA070](v1);
}

uint64_t sub_1C0F443DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1C0F50850();
  AccessibilityAction.hash(into:)();
  MEMORY[0x1C68EA070](v3);
  return sub_1C0F50890();
}

uint64_t sub_1C0F44444(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 8);
  v9[0] = *a1;
  v9[1] = v2;
  v8[0] = v4;
  v8[1] = v5;
  return _s26AccessibilitySharedSupport0A6ActionO2eeoiySbAC_ACtFZ_0(v9, v8) & (v3 == v6);
}

uint64_t AccessibilityAction.Domain.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t sub_1C0F4454C(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C0F2283C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0F44638(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C0F22930(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 2 * v8 + 32), (v6 + 32), 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL _s26AccessibilitySharedSupport0A6ActionO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | (v2 >> 5) & 1;
  if (a2[1])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFE | (v3 >> 5) & 1;
  if (v5 <= 1)
  {
    if (!v5)
    {
      if (!v7)
      {
        if (v2 >> 6)
        {
          if (v2 >> 6 == 1)
          {
            if ((v3 & 0xC0) == 0x40 && ((v3 ^ v2) & 0x3F) == 0)
            {
              return 1;
            }
          }

          else if ((v3 & 0xC0) == 0x80 && ((v3 ^ v2) & 0x3F) == 0)
          {
            return 1;
          }
        }

        else if (v3 <= 0x3F && v2 == v3)
        {
          return 1;
        }
      }

      return 0;
    }

    if (v7 != 1)
    {
      return 0;
    }

    return ((v3 ^ v2) & 0xDF) == 0;
  }

  if (v5 != 2)
  {
    if (v7 != 3)
    {
      return 0;
    }

    return ((v3 ^ v2) & 0xDF) == 0;
  }

  return v7 == 2 && *a1 == *a2;
}

unint64_t sub_1C0F44818()
{
  result = qword_1EBE794E0;
  if (!qword_1EBE794E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE794E0);
  }

  return result;
}

unint64_t sub_1C0F4486C()
{
  result = qword_1EBE794E8;
  if (!qword_1EBE794E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE794E8);
  }

  return result;
}

unint64_t sub_1C0F448C0()
{
  result = qword_1EBE794F0;
  if (!qword_1EBE794F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE794F0);
  }

  return result;
}

unint64_t sub_1C0F44914()
{
  result = qword_1EBE794F8;
  if (!qword_1EBE794F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE794F8);
  }

  return result;
}

unint64_t sub_1C0F44968()
{
  result = qword_1EBE79500;
  if (!qword_1EBE79500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79500);
  }

  return result;
}

unint64_t sub_1C0F449BC()
{
  result = qword_1EBE79508;
  if (!qword_1EBE79508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79508);
  }

  return result;
}

unint64_t sub_1C0F44A10()
{
  result = qword_1EBE79510;
  if (!qword_1EBE79510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79510);
  }

  return result;
}

unint64_t sub_1C0F44A64()
{
  result = qword_1EBE79518;
  if (!qword_1EBE79518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79518);
  }

  return result;
}

unint64_t sub_1C0F44AB8()
{
  result = qword_1EBE79520;
  if (!qword_1EBE79520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79520);
  }

  return result;
}

unint64_t sub_1C0F44B0C()
{
  result = qword_1EBE79550;
  if (!qword_1EBE79550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79550);
  }

  return result;
}

unint64_t sub_1C0F44B60()
{
  result = qword_1EBE79558;
  if (!qword_1EBE79558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79558);
  }

  return result;
}

unint64_t sub_1C0F44BB4()
{
  result = qword_1EBE79560;
  if (!qword_1EBE79560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79560);
  }

  return result;
}

unint64_t sub_1C0F44C08()
{
  result = qword_1EBE79568;
  if (!qword_1EBE79568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79568);
  }

  return result;
}

unint64_t sub_1C0F44C5C()
{
  result = qword_1EBE79578;
  if (!qword_1EBE79578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79578);
  }

  return result;
}

unint64_t sub_1C0F44CB0()
{
  result = qword_1EBE79580;
  if (!qword_1EBE79580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79580);
  }

  return result;
}

unint64_t sub_1C0F44D04()
{
  result = qword_1EBE79590;
  if (!qword_1EBE79590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79590);
  }

  return result;
}

unint64_t sub_1C0F44D5C()
{
  result = qword_1EBE79598;
  if (!qword_1EBE79598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79598);
  }

  return result;
}

unint64_t sub_1C0F44DB4()
{
  result = qword_1EBE795A0;
  if (!qword_1EBE795A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795A0);
  }

  return result;
}

unint64_t sub_1C0F44E0C()
{
  result = qword_1EBE795A8;
  if (!qword_1EBE795A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795A8);
  }

  return result;
}

unint64_t sub_1C0F44E64()
{
  result = qword_1EBE795B0;
  if (!qword_1EBE795B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE795B8, &qword_1C0F618C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1FD)
  {
    goto LABEL_17;
  }

  if (a2 + 65027 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65027 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65027;
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

      return (*a1 | (v4 << 16)) - 65027;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65027;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 1 | (2 * *(a1 + 1))) ^ 0x1FF;
  if (v6 >= 0x1FC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AccessibilityAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65027 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65027 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1FD)
  {
    v4 = 0;
  }

  if (a2 > 0x1FC)
  {
    v5 = ((a2 - 509) >> 16) + 1;
    *result = a2 - 509;
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
    *result = 32 * (-a2 & 1);
    *(result + 1) = -a2 >> 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0F45034(unsigned __int8 *a1)
{
  v1 = *a1;
  if (a1[1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFFFE | (v1 >> 5) & 1;
}

_BYTE *sub_1C0F45060(_BYTE *result, char a2)
{
  *result = *result & 0xDF | (32 * (a2 & 1));
  result[1] = (a2 & 2) != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityAction.Task(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FD && a1[16])
  {
    return (*a1 + 509);
  }

  v3 = ((*a1 >> 5) & 1 | (2 * a1[1])) ^ 0x1FF;
  if (v3 >= 0x1FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AccessibilityAction.Task(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FC)
  {
    *result = a2 - 509;
    *(result + 8) = 0;
    if (a3 >= 0x1FD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 32 * (-a2 & 1);
      *(result + 1) = -a2 >> 1;
    }
  }

  return result;
}

unint64_t sub_1C0F451B4()
{
  result = qword_1EBE795C0;
  if (!qword_1EBE795C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795C0);
  }

  return result;
}

unint64_t sub_1C0F4520C()
{
  result = qword_1EBE795C8;
  if (!qword_1EBE795C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795C8);
  }

  return result;
}

unint64_t sub_1C0F45264()
{
  result = qword_1EBE795D0;
  if (!qword_1EBE795D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795D0);
  }

  return result;
}

unint64_t sub_1C0F452BC()
{
  result = qword_1EBE795D8;
  if (!qword_1EBE795D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795D8);
  }

  return result;
}

unint64_t sub_1C0F45314()
{
  result = qword_1EBE795E0;
  if (!qword_1EBE795E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795E0);
  }

  return result;
}

unint64_t sub_1C0F4536C()
{
  result = qword_1EBE795E8;
  if (!qword_1EBE795E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795E8);
  }

  return result;
}

unint64_t sub_1C0F453C4()
{
  result = qword_1EBE795F0;
  if (!qword_1EBE795F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795F0);
  }

  return result;
}

unint64_t sub_1C0F4541C()
{
  result = qword_1EBE795F8;
  if (!qword_1EBE795F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE795F8);
  }

  return result;
}

unint64_t sub_1C0F45474()
{
  result = qword_1EBE79600;
  if (!qword_1EBE79600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79600);
  }

  return result;
}

unint64_t sub_1C0F454CC()
{
  result = qword_1EBE79608;
  if (!qword_1EBE79608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79608);
  }

  return result;
}

unint64_t sub_1C0F45524()
{
  result = qword_1EBE79610;
  if (!qword_1EBE79610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79610);
  }

  return result;
}

unint64_t sub_1C0F4557C()
{
  result = qword_1EBE79618;
  if (!qword_1EBE79618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79618);
  }

  return result;
}

unint64_t sub_1C0F455D4()
{
  result = qword_1EBE79620;
  if (!qword_1EBE79620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79620);
  }

  return result;
}

unint64_t sub_1C0F4562C()
{
  result = qword_1EBE79628;
  if (!qword_1EBE79628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79628);
  }

  return result;
}

unint64_t sub_1C0F45684()
{
  result = qword_1EBE79630;
  if (!qword_1EBE79630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79630);
  }

  return result;
}

unint64_t sub_1C0F456DC()
{
  result = qword_1EBE79638;
  if (!qword_1EBE79638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79638);
  }

  return result;
}

unint64_t sub_1C0F45734()
{
  result = qword_1EBE79640;
  if (!qword_1EBE79640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79640);
  }

  return result;
}

unint64_t sub_1C0F4578C()
{
  result = qword_1EBE79648;
  if (!qword_1EBE79648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79648);
  }

  return result;
}

uint64_t sub_1C0F457E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7669747369737361 && a2 == 0xEE006863756F5465;
  if (v4 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C0F50790();

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

double AccessibilitySystemActionHandler.systemState.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1C0F45978(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEF864;

  return AccessibilitySystemActionHandler.handleAction(_:)(a1, a2, a3, a4);
}

uint64_t AccessibilitySystemActionHandler.handleAction(_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = *a2;
  v8 = *(a4 + 32);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C0EEF864;

  return v12(a1, v4 + 24, a3, a4);
}

uint64_t sub_1C0F45B74(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEFCF4;

  return AccessibilitySystemActionHandler.performAction(_:)(a1, a2, a3, a4);
}

uint64_t AccessibilitySystemActionHandler.performAction(_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a3;
  *(v5 + 106) = *a2;
  v6 = *(a4 + 8);
  v8 = sub_1C0F502B0();
  *(v5 + 144) = v8;
  *(v5 + 152) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C0F45CB8, v8, v7);
}

uint64_t sub_1C0F45CB8()
{
  switch(*(v0 + 106))
  {
    case 1:
      v82 = (*(v0 + 128) + 48);
      v100 = (*v82 + **v82);
      v38 = (*v82)[1];
      v39 = swift_task_alloc();
      *(v0 + 168) = v39;
      *v39 = v0;
      v39[1] = sub_1C0F46FA8;
      v3 = *(v0 + 128);
      v40 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v100;

      return v7(v6, v5, v3);
    case 2:
      v78 = (*(v0 + 128) + 56);
      v96 = (*v78 + **v78);
      v26 = (*v78)[1];
      v27 = swift_task_alloc();
      *(v0 + 176) = v27;
      *v27 = v0;
      v27[1] = sub_1C0F470C8;
      v3 = *(v0 + 128);
      v28 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v96;

      return v7(v6, v5, v3);
    case 3:
      v80 = (*(v0 + 128) + 64);
      v98 = (*v80 + **v80);
      v32 = (*v80)[1];
      v33 = swift_task_alloc();
      *(v0 + 184) = v33;
      *v33 = v0;
      v33[1] = sub_1C0F471E8;
      v3 = *(v0 + 128);
      v34 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v98;

      return v7(v6, v5, v3);
    case 4:
      v75 = (*(v0 + 128) + 72);
      v93 = (*v75 + **v75);
      v17 = (*v75)[1];
      v18 = swift_task_alloc();
      *(v0 + 192) = v18;
      *v18 = v0;
      v18[1] = sub_1C0F47308;
      v3 = *(v0 + 128);
      v19 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v93;

      return v7(v6, v5, v3);
    case 5:
      v84 = (*(v0 + 128) + 80);
      v102 = (*v84 + **v84);
      v44 = (*v84)[1];
      v45 = swift_task_alloc();
      *(v0 + 200) = v45;
      *v45 = v0;
      v45[1] = sub_1C0F47458;
      v3 = *(v0 + 128);
      v46 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v102;

      return v7(v6, v5, v3);
    case 6:
      v50 = *(v0 + 136);
      (*(*(v0 + 128) + 16))(*(v0 + 120));
      v51 = *(v0 + 80);
      if (v51)
      {
        v52 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
        LOBYTE(v51) = (*(*(v52 + 8) + 16))(v51);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      }

      else
      {
        sub_1C0F482F8(v0 + 56);
      }

      v87 = (*(v0 + 128) + 88);
      v105 = (*v87 + **v87);
      v60 = (*v87)[1];
      v61 = swift_task_alloc();
      *(v0 + 208) = v61;
      *v61 = v0;
      v61[1] = sub_1C0F47578;
      v62 = *(v0 + 128);
      v63 = *(v0 + 136);
      v64 = *(v0 + 120);
      v65 = v0 + 96;
      v66 = v51 & 1;
      v67 = v105;

      return v67(v65, v66, v64, v62);
    case 7:
      v81 = (*(v0 + 128) + 96);
      v99 = (*v81 + **v81);
      v35 = (*v81)[1];
      v36 = swift_task_alloc();
      *(v0 + 216) = v36;
      *v36 = v0;
      v36[1] = sub_1C0F47698;
      v3 = *(v0 + 128);
      v37 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v99;

      return v7(v6, v5, v3);
    case 8:
      v57 = *(v0 + 136);
      (*(*(v0 + 128) + 16))(*(v0 + 120));
      v58 = *(v0 + 40);
      if (v58)
      {
        v59 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        LOBYTE(v58) = (*(*(v59 + 16) + 16))(v58);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        sub_1C0F482F8(v0 + 16);
      }

      v88 = (*(v0 + 128) + 104);
      v106 = (*v88 + **v88);
      v68 = (*v88)[1];
      v69 = swift_task_alloc();
      *(v0 + 224) = v69;
      *v69 = v0;
      v69[1] = sub_1C0F477B8;
      v62 = *(v0 + 128);
      v70 = *(v0 + 136);
      v64 = *(v0 + 120);
      v65 = v0 + 96;
      v66 = v58 & 1;
      v67 = v106;

      return v67(v65, v66, v64, v62);
    case 9:
      v77 = (*(v0 + 128) + 112);
      v95 = (*v77 + **v77);
      v23 = (*v77)[1];
      v24 = swift_task_alloc();
      *(v0 + 232) = v24;
      *v24 = v0;
      v24[1] = sub_1C0F478D8;
      v3 = *(v0 + 128);
      v25 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v95;

      return v7(v6, v5, v3);
    case 0xA:
      v86 = (*(v0 + 128) + 120);
      v104 = (*v86 + **v86);
      v53 = (*v86)[1];
      v54 = swift_task_alloc();
      *(v0 + 240) = v54;
      *v54 = v0;
      v54[1] = sub_1C0F479F8;
      v3 = *(v0 + 128);
      v55 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v104;

      return v7(v6, v5, v3);
    case 0xB:
      v74 = (*(v0 + 128) + 128);
      v92 = (*v74 + **v74);
      v14 = (*v74)[1];
      v15 = swift_task_alloc();
      *(v0 + 248) = v15;
      *v15 = v0;
      v15[1] = sub_1C0F47B18;
      v3 = *(v0 + 128);
      v16 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v92;

      return v7(v6, v5, v3);
    case 0xC:
      v76 = (*(v0 + 128) + 136);
      v94 = (*v76 + **v76);
      v20 = (*v76)[1];
      v21 = swift_task_alloc();
      *(v0 + 256) = v21;
      *v21 = v0;
      v21[1] = sub_1C0F47C38;
      v3 = *(v0 + 128);
      v22 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v94;

      return v7(v6, v5, v3);
    case 0xD:
      v85 = (*(v0 + 128) + 144);
      v103 = (*v85 + **v85);
      v47 = (*v85)[1];
      v48 = swift_task_alloc();
      *(v0 + 264) = v48;
      *v48 = v0;
      v48[1] = sub_1C0F47D58;
      v3 = *(v0 + 128);
      v49 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v103;

      return v7(v6, v5, v3);
    case 0xE:
      v73 = (*(v0 + 128) + 152);
      v91 = (*v73 + **v73);
      v11 = (*v73)[1];
      v12 = swift_task_alloc();
      *(v0 + 272) = v12;
      *v12 = v0;
      v12[1] = sub_1C0F47E78;
      v3 = *(v0 + 128);
      v13 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v91;

      return v7(v6, v5, v3);
    case 0xF:
      v79 = (*(v0 + 128) + 160);
      v97 = (*v79 + **v79);
      v29 = (*v79)[1];
      v30 = swift_task_alloc();
      *(v0 + 280) = v30;
      *v30 = v0;
      v30[1] = sub_1C0F47F98;
      v3 = *(v0 + 128);
      v31 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v97;

      return v7(v6, v5, v3);
    case 0x10:
      v72 = (*(v0 + 128) + 168);
      v90 = (*v72 + **v72);
      v8 = (*v72)[1];
      v9 = swift_task_alloc();
      *(v0 + 288) = v9;
      *v9 = v0;
      v9[1] = sub_1C0F480B8;
      v3 = *(v0 + 128);
      v10 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v90;

      return v7(v6, v5, v3);
    case 0x11:
      v83 = (*(v0 + 128) + 176);
      v101 = (*v83 + **v83);
      v41 = (*v83)[1];
      v42 = swift_task_alloc();
      *(v0 + 296) = v42;
      *v42 = v0;
      v42[1] = sub_1C0F481D8;
      v3 = *(v0 + 128);
      v43 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v101;

      return v7(v6, v5, v3);
    default:
      v71 = (*(v0 + 128) + 40);
      v89 = (*v71 + **v71);
      v1 = (*v71)[1];
      v2 = swift_task_alloc();
      *(v0 + 160) = v2;
      *v2 = v0;
      v2[1] = sub_1C0F46E88;
      v3 = *(v0 + 128);
      v4 = *(v0 + 136);
      v5 = *(v0 + 120);
      v6 = v0 + 96;
      v7 = v89;

      return v7(v6, v5, v3);
  }
}

uint64_t sub_1C0F46E88()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F46FA8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F470C8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F471E8()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F47308()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F47428, v4, v3);
}

uint64_t sub_1C0F47428()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 105);
  *v1 = *(v0 + 96);
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1C0F47458()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F47578()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F47698()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F477B8()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F478D8()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F479F8()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F47B18()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F47C38()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F47D58()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F47E78()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F47F98()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F480B8()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F481D8()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1C0F49B04, v4, v3);
}

uint64_t sub_1C0F482F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE79650, &qword_1C0F62060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEF864;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.performAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleAppSwitcher()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleArmApplePay()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleCamera()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleControlCenter()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleFrontCamera()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleHome()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleMute(isMuted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 88);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleNotificationCenter()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleOrientationLock(isLocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleReachability()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleRebootDevice()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleSiri()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleSOS()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleSpotlight()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleSysdiagnose()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 152);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleToggleDock()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 160);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleTypeToSiri()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilitySystemActionHandler.handleVisualIntelligence()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 176);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionHandlerResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityActionHandlerResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1C0F49B8C(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0F49BA8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}