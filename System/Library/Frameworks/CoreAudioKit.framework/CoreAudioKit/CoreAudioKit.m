uint64_t sub_237100CD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237100CF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_237100D1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237100D3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_237100D84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_237100DDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_237100E30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_showSingleClumpIndex;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

id sub_237100E8C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_showSingleClumpIndex;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return sub_2371155D0();
}

uint64_t sub_237100EF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237100F28()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_237100F78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237100FB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94BF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_237101098()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2371010D0()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_237101114()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23710115C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237101194()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2371011CC()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_23710120C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237101244(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

uint64_t sub_237101304()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_237101620(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void NotifyProc(_DWORD *a1, id *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    v2 = a2;
    v3 = a2;
    v4 = [v2 peripheralList];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v18 = v2;
      v7 = 0;
      v8 = *v22;
      v9 = *MEMORY[0x277CBFD18];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [MEMORY[0x277CBFD00] midiDeviceForUUID:objc_msgSend(v11 isLocalPeripheral:"uuid") isRemotePeripheral:{0, 1}];
          if (v12)
          {
            v13 = v12;
            *outValue = 0;
            v19 = 0;
            MIDIObjectGetIntegerProperty(v12, @"MIDI Input Supported", &outValue[1]);
            MIDIObjectGetIntegerProperty(v13, @"MIDI Output Supported", outValue);
            MIDIObjectGetIntegerProperty(v13, v9, &v19);
            v14 = [v11 inputAvailable];
            if (v14 == (outValue[1] == 0) || (v15 = [v11 outputAvailable], v15 == (outValue[0] == 0)) || (v16 = objc_msgSend(v11, "isOnline"), ((v16 ^ (v19 != 0)) & 1) == 0))
            {
              [v11 setInputAvailable:outValue[1] != 0];
              [v11 setOutputAvailable:outValue[0] != 0];
              v17 = [v11 isOnline];
              if (v19 == v17)
              {
                [v11 setOnline:v17 ^ 1u];
                [v11 setChangingState:0];
              }

              v7 = 1;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
      v2 = v18;
      if (v7)
      {
        [v18[7] updatePeripheralTable];
      }
    }
  }
}

uint64_t formattedTimeStringForFrameCountAndSampleRate(unint64_t a1, double a2, char a3)
{
  if (!a1 || a2 == 0.0)
  {
    v10 = @"00";
    if (a3)
    {
      v11 = @"000";
      v12 = @"00";
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@.%@", v12, v10, v11, v19];
    }

    v13 = @"00";
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v10, v13, v18, v19];
  }

  v4 = a1 / a2;
  v5 = v4 / 0xE10;
  v6 = v4 - (3600 * v5);
  v7 = v6 / 0x3C;
  v8 = v6 % 0x3C;
  if (v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%2d", v4 / 0xE10];
  }

  else
  {
    v9 = 0;
  }

  if (!v7)
  {
    v12 = @"00";
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_22:
    v13 = @"00";
    if (a3)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (v7 >= 0xA)
  {
    v14 = @"%d";
  }

  else
  {
    v14 = @"0%d";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v7];
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (v8 >= 0xA)
  {
    v15 = @"%d";
  }

  else
  {
    v15 = @"0%d";
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:v15, v8];
  if ((a3 & 1) == 0)
  {
LABEL_23:
    if (v9)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@", v9, v12, v13, v19];
    }

    v10 = v12;
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v10, v13, v18, v19];
  }

LABEL_18:
  v16 = &off_23719A000;
  LODWORD(v16) = vcvtad_u64_f64((v4 - v4) * 1000.0);
  if (v16)
  {
    if (v16 > 9)
    {
      if (v16 > 0x63)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v16];
      }

      else
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"0%d", v16];
      }
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"00%d", v16];
    }

    if (v9)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@.%@", v9, v12, v13, v11];
    }

    goto LABEL_26;
  }

  v11 = @"000";
  if (!v9)
  {
LABEL_26:
    v10 = v13;
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@.%@", v12, v10, v11, v19];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@.%@", v9, v12, v13, v11];
}

uint64_t addParamListener(AUListenerBase *a1, void *a2, AudioUnitEvent *a3)
{
  a3->mEventType = kAudioUnitEvent_BeginParameterChangeGesture;
  v6 = AUEventListenerAddEventType(a1, a2, a3);
  if (!v6)
  {
    a3->mEventType = kAudioUnitEvent_EndParameterChangeGesture;
    v6 = AUEventListenerAddEventType(a1, a2, a3);
  }

  if (!v6)
  {
    a3->mEventType = kAudioUnitEvent_ParameterValueChange;
    return AUEventListenerAddEventType(a1, a2, a3);
  }

  return v6;
}

uint64_t priv_getBTLELocalizedString(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.audio.CoreAudioKit"];
  if (!v4 || (result = [v4 localizedStringForKey:a1 value:&stru_284A3B338 table:@"BTMIDI"]) == 0)
  {
    NSLog(&cfstr_ErrorReadingSt.isa, a2);
    return a2;
  }

  return result;
}

uint64_t CAUI_createCustomViewForAudioUnit(OpaqueAudioComponentInstance *a1, id *a2)
{
  Component = AudioComponentInstanceGetComponent(a1);
  if (!a2)
  {
    return 4294967246;
  }

  v5 = Component;
  memset(&outDesc, 0, sizeof(outDesc));
  WeakRetained = objc_loadWeakRetained(a2);
  AudioComponentGetDescription(v5, &outDesc);
  if (outDesc.componentManufacturer != 1634758764)
  {
    goto LABEL_11;
  }

  if (outDesc.componentSubType == 1768973681)
  {
    v7 = objc_alloc_init(AUiPodEQViewController);
  }

  else
  {
    v7 = 0;
  }

  v9 = objc_alloc_init(_TtC12CoreAudioKit23AUAppleCustomViewLoader);
  v10 = [MEMORY[0x277CEFD18] auAudioUnitForAudioUnit:a1];
  v13 = outDesc;
  v11 = [(AUAppleCustomViewLoader *)v9 customViewControllerFor:&v13 audioUnit:a1 v3AU:v10];
  if (!v11)
  {

    if (v7)
    {
      [(AUAppleViewControllerBase *)v7 setAU:a1];
LABEL_12:
      WeakRetained[2](WeakRetained, v7);
      goto LABEL_13;
    }

LABEL_11:
    v7 = objc_alloc_init(AUGenericViewController);
    [(AUiPodEQViewController *)v7 setAudioUnit:a1];
    goto LABEL_12;
  }

  v12 = v11;
  WeakRetained[2](WeakRetained, v11);

LABEL_13:
  return 0;
}

uint64_t CAUI_retrieveHostIconForAudioUnit(OpaqueAudioComponent *a1)
{
  memset(&outDesc, 0, sizeof(outDesc));
  v1 = 0;
  if (!AudioComponentGetDescription(a1, &outDesc) && outDesc.componentManufacturer == 1634758764)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.audio.CoreAudioKit"];
    v1 = [MEMORY[0x277D755B8] imageNamed:@"Apple" inBundle:v2 withConfiguration:0];
  }

  return v1;
}

void sub_23710CF04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

AUAudioUnitExtensionHostViewController *CAUI_fetchRemoteAUv3ViewController(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [objc_alloc(MEMORY[0x277CC5E78]) initWithExtensionIdentity:v4];

  [v5 setBeginHostingImmediately:1];
  v6 = [[AUAudioUnitExtensionHostViewController alloc] initWithConfiguration:v5 completion:v3];

  return v6;
}

uint64_t CAUI_createGenericViewForAudioUnit(uint64_t a1, id *a2)
{
  v4 = objc_alloc_init(AUGenericViewController);
  [(AUGenericViewController *)v4 setAudioUnit:a1];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a2);
    WeakRetained[2](WeakRetained, v4);

    v6 = 0;
  }

  else
  {
    v6 = 4294967246;
  }

  return v6;
}

void sub_23710E524()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView_label];
  [v0 addSubview_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23719AB20;
  v5 = [v2 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:0.0];

  *(v4 + 32) = v7;
  v8 = [v2 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-6.0];

  *(v4 + 40) = v10;
  v11 = [v2 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:6.0];

  *(v4 + 48) = v13;
  v14 = [v2 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-2.0];

  *(v4 + 56) = v16;
  sub_23710EEB4();
  v17 = sub_23719661C();

  [v3 activateConstraints_];

  v18 = [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  [v2 setFont_];

  v19 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];
}

id sub_23710E964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUGenericViewClumpTitleSupplementalView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23710EA54(uint64_t a1, id *a2)
{
  result = sub_23719655C();
  *a2 = 0;
  return result;
}

uint64_t sub_23710EACC(uint64_t a1, id *a2)
{
  v3 = sub_23719656C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23710EB4C@<X0>(uint64_t *a1@<X8>)
{
  sub_23719657C();
  v2 = sub_23719653C();

  *a1 = v2;
  return result;
}

uint64_t sub_23710EB90()
{
  v0 = sub_23719657C();
  v1 = MEMORY[0x2383C5F50](v0);

  return v1;
}

uint64_t sub_23710EBCC()
{
  sub_23719657C();
  sub_2371965BC();
}

uint64_t sub_23710EC20()
{
  sub_23719657C();
  sub_237196AEC();
  sub_2371965BC();
  v0 = sub_237196B2C();

  return v0;
}

uint64_t sub_23710EC9C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x2383C5FD0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_23710ECF0(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x2383C5FE0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_23710ED70()
{
  v0 = sub_23719657C();
  v2 = v1;
  if (v0 == sub_23719657C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_237196A7C();
  }

  return v5 & 1;
}

uint64_t sub_23710EDF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23719653C();

  *a1 = v2;
  return result;
}

uint64_t sub_23710EE40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23719657C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23710EEB4()
{
  result = qword_27DE94CC0;
  if (!qword_27DE94CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE94CC0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23710EF3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_23710EF80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void sub_23710EFE8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23710F034()
{
  sub_23710F180(&qword_27DE94E20, type metadata accessor for Key);
  sub_23710F180(&qword_27DE94718, type metadata accessor for Key);

  return sub_237196A3C();
}

uint64_t sub_23710F180(unint64_t *a1, void (*a2)(uint64_t))
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

_DWORD *sub_23710F1C8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_23710F1D8@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_23710F1E4()
{
  sub_23710F180(&qword_27DE94708, type metadata accessor for UILayoutPriority);
  sub_23710F180(&qword_27DE94710, type metadata accessor for UILayoutPriority);
  return sub_237196A3C();
}

void sub_23710F444()
{
  v1 = v0;
  v2 = sub_23712F040();
  v3 = sub_23719342C();

  v45 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  v4 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
  v5 = *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
  v6 = sub_23719342C();

  v7 = *&v6[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = -1038090240;
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = -1038090240;
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1109393408;
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1109393408;
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 3;
  type metadata accessor for AUAppleViewControllerBase();
  v8 = sub_237175EDC();
  v9 = &v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v9 = v8;
  v9[1] = v10;

  *&v45[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = 1086324736;
  v11 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed;
  *&v45[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1153433600;
  v12 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed;
  *&v45[v11] = 1092616192;
  *&v45[v12] = 1128792064;
  *&v45[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase] = 0x40000000;
  *&v45[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 7;
  v13 = sub_237175EDC();
  v14 = &v45[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v14 = v13;
  v14[1] = v15;

  sub_23712EA30();
  v16 = *&v1[v4];
  v17 = sub_23719342C();

  v46[3] = type metadata accessor for AULowshelfViewController();
  v46[4] = &off_284A3A7C0;
  v46[0] = v1;
  v18 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  v1;
  sub_23710FAE0(v46, v17 + v18);
  swift_endAccess();
  sub_23716A678();

  sub_23710FB50(v46);
  v19 = *&v1[v4];
  v20 = sub_23719342C();

  v44 = sub_23716832C(0, 1);
  v43 = v4;
  v21 = *&v1[v4];
  v22 = sub_237193370();

  v23 = sub_237175EDC();
  v25 = v24;
  v26 = sub_237175EDC();
  v28 = v27;
  v29 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v30 = *&v22[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  v31 = sub_23719653C();
  [v30 setText_];

  [*&v22[v29] setAccessibilityTraits_];
  v32 = *&v22[v29];
  v33 = v44;
  v34 = sub_23719653C();
  [v32 setAccessibilityLabel_];

  v35 = &v22[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v35 = v23;
  v35[1] = v25;

  v36 = &v22[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  *v36 = v26;
  v36[1] = v28;

  sub_23712F904(0);
  sub_23712FD40(1);
  if (v44)
  {
    v37 = *&v44[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
    if (v37)
    {
      v38 = *&v1[v43];
      v39 = v37;
      v40 = v38;
      v41 = sub_23719342C();

      v42 = [v41 layer];
      [v42 addSublayer_];

      v33 = v42;
    }
  }
}

uint64_t sub_23710F890(unsigned int a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

uint64_t sub_23710F908(unsigned int a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

uint64_t sub_23710F978(unsigned int a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

id sub_23710FA88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AULowshelfViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23710FAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94720);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23710FB50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_23710FBB8(double a1, double a2, double a3, double a4)
{
  v21.receiver = v4;
  v21.super_class = type metadata accessor for AUCustomHeaderView();
  v9 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v11 = v9;
  v12 = [v10 init];
  v13 = objc_opt_self();
  v14 = [v13 tertiaryLabelColor];
  [v12 setBackgroundColor_];

  [v12 setAutoresizingMask_];
  [v11 frame];
  v16 = v15 + -0.5;
  [v11 frame];
  [v12 setFrame_];
  [v11 addSubview_];
  v17 = [v11 layer];
  v18 = [v13 systemBackgroundColor];
  v19 = [v18 CGColor];

  [v17 setBackgroundColor_];
  return v11;
}

id sub_23710FDA8(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for AUCustomHeaderView();
  v3 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  if (v3)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D75D18]);
    v5 = v3;
    v6 = [v4 init];
    v7 = objc_opt_self();
    v8 = [v7 tertiaryLabelColor];
    [v6 setBackgroundColor_];

    [v6 setAutoresizingMask_];
    [v5 frame];
    v10 = v9 + -0.5;
    [v5 frame];
    [v6 setFrame_];
    [v5 addSubview_];
    v11 = [v5 layer];
    v12 = [v7 systemBackgroundColor];
    v13 = [v12 CGColor];

    [v11 setBackgroundColor_];
    a1 = v13;
  }

  return v3;
}

id sub_23710FF90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUCustomHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23710FFE8(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_currentValue];
  v3 = *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_minValue];
  v4 = v3;
  if (v2 < v3 || (v4 = *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_maxValue], v4 < v2))
  {
    *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_currentValue] = v4;
    v2 = v4;
  }

  if (v2 != a1)
  {
    v5 = *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_maxValue] - v3;
    v6 = v5 <= 0.0;
    v7 = ((v2 - v3) / v5);
    if (v6)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v7;
    }

    v9 = objc_opt_self();
    [v9 begin];
    [v9 setDisableActions_];
    v10 = sub_237110688();
    v11 = [v1 layer];
    [v11 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v32.origin.x = v13;
    v32.origin.y = v15;
    v32.size.width = v17;
    v32.size.height = v19;
    v20 = v8 * CGRectGetWidth(v32);
    v21 = [v1 layer];
    [v21 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v33.origin.x = v23;
    v33.origin.y = v25;
    v33.size.width = v27;
    v33.size.height = v29;
    [v10 setFrame_];

    [v9 commit];
  }

  [v1 frame];

  return [v1 setNeedsDisplayInRect_];
}

id sub_2371101CC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_minValue] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_maxValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_peakValue] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_currentValue] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView____lazy_storage___meterFillLayer] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for AUMeterView();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor_];

  v13 = [v11 layer];
  [v13 setBorderWidth_];

  return v11;
}

id sub_237110324(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_minValue] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_maxValue] = 1065353216;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_peakValue] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_currentValue] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView____lazy_storage___meterFillLayer] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AUMeterView();
  v3 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 clearColor];
    [v5 setBackgroundColor_];

    v7 = [v5 layer];
    [v7 setBorderWidth_];

    a1 = v7;
  }

  return v3;
}

id sub_237110534()
{
  v1 = sub_237110688();
  result = [v0 tintColor];
  if (result)
  {
    v3 = result;
    v4 = [result CGColor];

    [v1 setBackgroundColor_];
    v5 = [v0 layer];
    v6 = [objc_opt_self() labelColor];
    v7 = [v6 colorWithAlphaComponent_];

    v8 = [v7 CGColor];
    [v5 setBorderColor_];

    [v0 frame];

    return [v0 setNeedsDisplayInRect_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_237110688()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit11AUMeterView____lazy_storage___meterFillLayer;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView____lazy_storage___meterFillLayer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView____lazy_storage___meterFillLayer];
  }

  else
  {
    v4 = sub_2371106EC(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2371106EC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v3 = [a1 layer];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  [v2 setFrame_];
  result = [a1 tintColor];
  if (result)
  {
    v13 = result;
    v14 = [result CGColor];

    [v2 setBackgroundColor_];
    v15 = [a1 layer];
    [v15 addSublayer_];

    v16 = [a1 layer];
    [v16 setMasksToBounds_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237110878()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_minValue];
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_maxValue] - v1;
  v3 = 0.0;
  if (v2 > 0.0)
  {
    v3 = ((*&v0[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_currentValue] - v1) / v2);
  }

  v23 = sub_237110688();
  v4 = [v0 layer];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v13 = v3 * CGRectGetWidth(v25);
  v14 = [v0 layer];
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  [v23 setFrame_];
}

id sub_237110A1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUMeterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_237110A84()
{
  v1 = *(v0 + 24);
  v2 = sub_237110BE4();
  v3 = v2;
  if (v1)
  {
    [v2 setBorderWidth_];

    v4 = sub_237110BE4();
    v9 = [*v0 CGColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
    v6 = [v5 CGColor];

    [v3 setBackgroundColor_];
    v7 = sub_237110BE4();
    v8 = [*v0 CGColor];
    [v7 setBorderColor_];

    v9 = sub_237110BE4();
    [v9 setBorderWidth_];
  }
}

id sub_237110BE4()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    [v3 setCornerRadius_];
    v4 = [objc_opt_self() mainScreen];
    [v4 scale];
    v6 = v5;

    [v3 setContentsScale_];
    *(v0 + 48) = v3;
    v2 = v3;
    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_237110CB0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_237110CF8();
    *(v0 + 32) = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

id sub_237110CF8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v0 setCornerRadius_];
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  [v0 setContentsScale_];
  v4 = [objc_opt_self() clearColor];
  v5 = [v4 CGColor];

  [v0 setBackgroundColor_];
  return v0;
}

id sub_237110DF8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_237110E44();
    *(v0 + 40) = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

id sub_237110E44()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9FC8]) init];
  v1 = [objc_opt_self() systemFontOfSize_];
  [v0 setFont_];

  [v0 setFontSize_];

  v2 = sub_23719653C();

  [v0 setString_];

  [v0 setAlignmentMode_];
  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 mainScreen];
  [v5 scale];
  v7 = v6;

  [v4 setContentsScale_];
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = [v8 CGColor];

  [v4 setForegroundColor_];
  return v4;
}

uint64_t sub_237110FF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_237196A7C();
  }
}

id sub_237111028(void *a1)
{
  sub_237114D0C(a1, v10);
  type metadata accessor for AUVerticalSegmentControl();
  v3 = swift_dynamicCast();
  v4 = v9;
  if (!v3)
  {
    v4 = 0;
  }

  *&v1[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_owner] = v4;
  *&v1[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_index] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_237196A6C();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AUVerticalSegmentControl.SegmentAccessibilityElement();
  v6 = objc_msgSendSuper2(&v8, sel_initWithAccessibilityContainer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

void sub_237111148(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_owner] = a1;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_index] = 0;
  v83.receiver = v2;
  v83.super_class = type metadata accessor for AUVerticalSegmentControl.SegmentAccessibilityElement();
  super_class = v83.super_class;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v83, sel_initWithAccessibilityContainer_, v5);
  v77 = OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_owner;
  v7 = *&v6[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_owner];
  if (!v7)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v8 = v6;
  v9 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  v10 = 0;
  v11 = 0;
  v12 = *(*(v7 + v9) + 16);
  while (v12 != v11)
  {
    v13 = v11;
    v14 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
    swift_beginAccess();
    v15 = *(v7 + v14);
    if (v13 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v16 = v15 + v10;
    if (*(v16 + 40) != *(a2 + 8) || *(v16 + 48) != *(a2 + 16))
    {
      v18 = sub_237196A7C();
      v10 += 56;
      v11 = v13 + 1;
      if ((v18 & 1) == 0)
      {
        continue;
      }
    }

    *&v8[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_index] = v13;
    break;
  }

  v75 = v5;
  v19 = v8;
  v20 = sub_23719653C();
  v21 = [objc_opt_self() bundleWithIdentifier_];

  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = v21;
  v23 = sub_23719653C();
  v24 = sub_23719653C();
  v25 = sub_23719653C();
  v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];

  sub_23719657C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_23719B020;
  v28 = *(a2 + 8);
  v29 = *(a2 + 16);
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_237115040();
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;

  sub_23719659C();
  v30 = sub_23719653C();

  [v19 setAccessibilityLabel_];

  v31 = *&v8[v77];
  if (!v31)
  {
    goto LABEL_23;
  }

  v32 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  v33 = sub_23712141C(a2, *(v31 + v32));
  if ((v34 & 1) != 0 || v33 != *(v31 + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex))
  {
    v35 = *MEMORY[0x277D76578];
    v36 = v19;
    [v36 setAccessibilityTraits_];
    v37 = v22;
    v38 = sub_23719653C();
    v39 = sub_23719653C();
    v40 = sub_23719653C();
    v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

    if (!v41)
    {
      sub_23719657C();
      v41 = sub_23719653C();
    }

    [v36 setAccessibilityHint_];

    v42 = v36;
  }

  else
  {
    [v19 setAccessibilityTraits_];
  }

  v43 = v19;
  v44 = v22;
  v45 = sub_23719653C();
  v46 = sub_23719653C();
  v47 = sub_23719653C();
  v48 = [v44 localizedStringForKey:v45 value:v46 table:v47];

  sub_23719657C();
  v49 = sub_23719653C();

  [v43 setAccessibilityValue_];

  v50 = *(a2 + 16);
  v79 = *a2;
  v80 = v50;
  v81 = *(a2 + 32);
  v82 = *(a2 + 48);
  v51 = v43;
  sub_237114FD8(a2, v78);
  v52 = sub_237110CB0();
  [v52 frame];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  [v51 setAccessibilityFrameInContainerSpace_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_23719B030;
  sub_237115094(0, &qword_27DE947A8);
  v62 = v44;

  v63 = sub_23719653C();
  v64 = sub_23719653C();
  v65 = sub_23719653C();
  v66 = [v62 localizedStringForKey:v63 value:v64 table:v65];

  v67 = sub_23719657C();
  v69 = v68;

  v78[3] = super_class;
  v78[0] = v51;
  v70 = v51;
  *(v61 + 32) = sub_2371118C0(v67, v69, v78, sel_selectAccessibilitySegmentWithAction_);
  v71 = sub_23719661C();

  [v70 setAccessibilityCustomActions_];

  sub_237115010(a2);
  v72 = v79;
  v73 = v81;
  v74 = v82;
}

id sub_2371118C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_23719653C();

  v7 = a3[3];
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8, v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_237196A6C();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v12 selector:a4];

  swift_unknownObjectRelease();
  return v13;
}

void sub_237111A38()
{
  v2 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_owner];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v0;
  v4 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_index];
  v5 = &OBJC_IVAR___AUAppleViewControllerBase__needsRealtimeDrawing;
  v6 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + v6);
    if (v4 < *(v7 + 16))
    {
      LOBYTE(v6) = *(v7 + 56 * v4 + 56);
      v1 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
      swift_beginAccess();
      v5 = *(v2 + v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v1) = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  v5 = sub_237186F78(v5);
  *(v2 + v1) = v5;
LABEL_5:
  if (v4 >= *(v5 + 2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5[56 * v4 + 56] = v6 ^ 1;
  sub_237110A84();
  *(v2 + v1) = v5;
  swift_endAccess();
  v9 = sub_23719653C();
  v10 = [objc_opt_self() bundleWithIdentifier_];

  if (v6)
  {
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (v10)
  {
LABEL_10:
    v11 = v10;
    v12 = sub_23719653C();
    v13 = sub_23719653C();
    v14 = sub_23719653C();
    v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

    sub_23719657C();
    v16 = sub_23719653C();

    [v3 setAccessibilityValue_];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_237111D88(unint64_t a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex;
  v6 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex);
  v7 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v6 < v8[2])
  {
    v9 = &selRef_effectiveContentSize;
    v10 = &selRef_effectiveContentSize;
    v11 = 0x278A25000;
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_8;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
      if (v8[2] <= a1)
      {
        __break(1u);
      }

      else
      {
        v13 = sub_237110CB0();
        *(v3 + v7) = v8;
        swift_endAccess();
        v8 = objc_opt_self();
        v14 = [v8 clearColor];
        v15 = [v14 CGColor];

        v9 = v10;
        [v13 v10[406]];

        swift_beginAccess();
        v2 = *(v3 + v7);
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v7) = v2;
        if (v16)
        {
          goto LABEL_6;
        }
      }

      v2 = sub_237186F78(v2);
      *(v3 + v7) = v2;
LABEL_6:
      v11 = 0x278A25000uLL;
      if (*(v2 + 2) <= a1)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      v17 = sub_237110DF8();
      *(v3 + v7) = v2;
      swift_endAccess();
      a1 = [v8 secondaryLabelColor];
      v9 = &selRef_effectiveContentSize;
      v18 = [a1 CGColor];

      [v17 setForegroundColor_];
      v8 = *(v3 + v7);
LABEL_8:
      v19 = *(v3 + v5);
      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v19 < v8[2])
      {
        v20 = v8[7 * v19 + 4];
        swift_beginAccess();
        a1 = v20;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v7) = v8;
        if (v21)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_20:
      v8 = sub_237186F78(v8);
      *(v3 + v7) = v8;
LABEL_11:
      if (v19 >= v8[2])
      {
        __break(1u);
      }

      else
      {
        v22 = sub_237110CB0();
        *(v3 + v7) = v8;
        swift_endAccess();
        v23 = [a1 colorWithAlphaComponent_];
        v2 = [v23 CGColor];

        [v22 v10[406]];
        v19 = *(v3 + v5);
        swift_beginAccess();
        v8 = *(v3 + v7);
        v24 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v7) = v8;
        if (v24)
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          goto LABEL_14;
        }
      }

      v8 = sub_237186F78(v8);
      *(v3 + v7) = v8;
      if ((v19 & 0x8000000000000000) != 0)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_14:
      if (v19 < v8[2])
      {
        v25 = sub_237110DF8();
        *(v3 + v7) = v8;
        swift_endAccess();
        v26 = [a1 CGColor];
        [v25 *(v11 + 3448)];

        return;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      v8 = sub_237186F78(v8);
      *(v3 + v7) = v8;
    }
  }

  *(v3 + v5) = a1;
}

id sub_237112204(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_accessibleElements] = v3;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_columnCount] = 1;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex] = -1;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AUVerticalSegmentControl();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

char *sub_2371122E0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_accessibleElements] = v11;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_columnCount] = 1;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex] = -1;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight] = 0;
  v80.receiver = v5;
  v80.super_class = type metadata accessor for AUVerticalSegmentControl();
  v12 = objc_msgSendSuper2(&v80, sel_initWithFrame_, a2, a3, a4, a5);
  [v12 setIsAccessibilityElement_];
  v64 = a1;
  v13 = *(a1 + 16);
  if (v13)
  {
    v65 = v12;
    v66 = objc_opt_self();
    v69 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
    v14 = (v64 + 32);
    do
    {
      v67 = v14;
      v68 = v13;
      v15 = *v14;

      v16 = [v66 lightGrayColor];
      v73 = v16;
      v74 = 0;
      v75 = 0xE000000000000000;
      v76 = 1;
      v78 = 0;
      v79 = 0;
      v77 = 0;
      if (*(v15 + 16))
      {
        v17 = sub_2371905D4(0x726F6C6F43, 0xE500000000000000);
        if (v18)
        {
          sub_237114D0C(*(v15 + 56) + 32 * v17, v72);
          sub_237115094(0, &qword_27DE94788);
          if (swift_dynamicCast())
          {

            v73 = v70;
            v16 = v70;
          }
        }
      }

      if (*(v15 + 16))
      {
        v19 = sub_2371905D4(1701667150, 0xE400000000000000);
        if (v20)
        {
          sub_237114D0C(*(v15 + 56) + 32 * v19, v72);
          if (swift_dynamicCast())
          {

            v74 = v70;
            v75 = v71;
          }
        }
      }

      if (*(v15 + 16) && (v21 = sub_2371905D4(0x64656C62616E45, 0xE700000000000000), (v22 & 1) != 0))
      {
        sub_237114D0C(*(v15 + 56) + 32 * v21, v72);

        if (swift_dynamicCast())
        {
          v76 = v70;
          v23 = sub_237110BE4();
          v24 = v23;
          if (v70 == 1)
          {
            [v23 setBorderWidth_];

            v25 = sub_237110BE4();
            v26 = [v16 CGColor];
            [v25 setBackgroundColor_];
          }

          else
          {
            v47 = [v66 clearColor];
            v48 = [v47 CGColor];

            [v24 setBackgroundColor_];
            v49 = sub_237110BE4();
            v50 = [v16 CGColor];
            [v49 setBorderColor_];

            v51 = sub_237110BE4();
            [v51 setBorderWidth_];
          }
        }
      }

      else
      {
      }

      v28 = v73;
      v27 = v74;
      v29 = v75;
      v30 = v76;
      v31 = v77;
      v32 = v78;
      v33 = v79;
      swift_beginAccess();
      v34 = *&v12[v69];
      v35 = v33;
      v36 = v28;

      v37 = v31;
      v38 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v69] = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_237189A90(0, *(v34 + 2) + 1, 1, v34);
        *&v12[v69] = v34;
      }

      v41 = *(v34 + 2);
      v40 = *(v34 + 3);
      if (v41 >= v40 >> 1)
      {
        v34 = sub_237189A90((v40 > 1), v41 + 1, 1, v34);
      }

      *(v34 + 2) = v41 + 1;
      v42 = &v34[56 * v41];
      *(v42 + 4) = v36;
      *(v42 + 5) = v27;
      *(v42 + 6) = v29;
      v42[56] = v30;
      *(v42 + 8) = v31;
      *(v42 + 9) = v32;
      *(v42 + 10) = v33;
      v12 = v65;
      *&v65[v69] = v34;
      swift_endAccess();
      v43 = v73;
      v44 = v77;
      v45 = v78;
      v46 = v79;

      v14 = v67 + 1;
      v13 = v68 - 1;
    }

    while (v68 != 1);
  }

  v52 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  if (*(*&v12[v52] + 16))
  {
    v81.origin.x = a2;
    v81.origin.y = a3;
    v81.size.width = a4;
    v81.size.height = a5;
    Height = CGRectGetHeight(v81);
    v54 = *(*&v12[v52] + 16);
    v55 = (Height - v54) / v54;
  }

  else
  {
    v55 = 0.0;
  }

  *&v12[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight] = v55;
  sub_237112C60();
  v56 = objc_opt_self();
  v57 = [v56 defaultCenter];
  v58 = qword_27DE94670;
  v59 = v12;
  if (v58 != -1)
  {
    swift_once();
  }

  [v57 addObserver:v59 selector:sel_segmentSelectionChangedWithNotification_ name:qword_27DE96920 object:{0, v64}];

  v60 = [v56 defaultCenter];
  v61 = qword_27DE94678;
  v62 = v59;
  if (v61 != -1)
  {
    swift_once();
  }

  [v60 addObserver:v62 selector:sel_segmentEnabledChangedWithNotification_ name:qword_27DE96928 object:0];

  return v62;
}

char *sub_2371129F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_accessibleElements;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    v4 = sub_2371969FC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  v6 = *&v1[v5];
  v7 = *(v6 + 16);
  if (v4 != v7 && v7 != 0)
  {
    v9 = type metadata accessor for AUVerticalSegmentControl.SegmentAccessibilityElement();

    v10 = 32;
    do
    {
      v11 = *(v6 + v10);
      v12 = *(v6 + v10 + 16);
      v13 = *(v6 + v10 + 32);
      v23 = *(v6 + v10 + 48);
      v22[1] = v12;
      v22[2] = v13;
      v22[0] = v11;
      v14 = objc_allocWithZone(v9);
      sub_237114FD8(v22, v21);
      sub_237114FD8(v22, v21);
      sub_237111148(v1, v22);
      v16 = v15;
      swift_beginAccess();
      v17 = v16;
      MEMORY[0x2383C5F60]();
      if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
      }

      sub_23719665C();
      swift_endAccess();
      sub_237115010(v22);

      v10 += 56;
      --v7;
    }

    while (v7);
  }

  v19 = sub_237167B84(v18);

  return v19;
}

void sub_237112C60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  v40 = *(*&v0[v2] + 16);
  if (v40)
  {
    v3 = 0;
    v4 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight;
    v39 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex;
    v5 = 0.0;
    v6 = 32;
    v38 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight;
    while (1)
    {
      v7 = *&v1[v2];
      if (v3 >= *(v7 + 2))
      {
        break;
      }

      v8 = *&v7[v6];
      swift_beginAccess();
      v9 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v2] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_237186F78(v7);
        *&v1[v2] = v7;
      }

      if (v3 >= *(v7 + 2))
      {
        goto LABEL_24;
      }

      v11 = sub_237110CB0();
      *&v1[v2] = v7;
      swift_endAccess();
      v12 = [v1 layer];
      [v12 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v42.origin.x = v14;
      v42.origin.y = v16;
      v42.size.width = v18;
      v42.size.height = v20;
      [v11 setFrame_];
      v21 = [v1 layer];
      v22 = 0x278A25000uLL;
      [v21 addSublayer_];

      swift_beginAccess();
      v23 = *&v1[v2];
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v2] = v23;
      if ((v24 & 1) == 0)
      {
        v23 = sub_237186F78(v23);
        *&v1[v2] = v23;
      }

      if (v3 >= *(v23 + 2))
      {
        goto LABEL_25;
      }

      v25 = sub_237110DF8();
      *&v1[v2] = v23;
      swift_endAccess();
      v43.origin.y = (*&v1[v4] + -20.0) * 0.5;
      v43.origin.x = 0.0;
      v43.size.width = 20.0;
      v43.size.height = 20.0;
      v44 = CGRectIntegral(v43);
      [v25 setFrame_];
      v41 = v25;
      [v11 addSublayer_];
      if (v3 == *&v1[v39])
      {
        v26 = [v9 colorWithAlphaComponent_];
        v27 = [v26 CGColor];

        [v11 setBackgroundColor_];
        v22 = 0x278A25000;
        v28 = [v9 CGColor];
        [v41 setForegroundColor_];
      }

      swift_beginAccess();
      v29 = *&v1[v2];
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v2] = v29;
      if ((v30 & 1) == 0)
      {
        v29 = sub_237186F78(v29);
        *&v1[v2] = v29;
      }

      if (v3 >= *(v29 + 2))
      {
        goto LABEL_26;
      }

      v31 = sub_237110BE4();
      *&v1[v2] = v29;
      swift_endAccess();
      v45.origin.y = (*&v1[v4] + -12.0) * 0.5 + 1.0;
      v45.origin.x = 28.0;
      v45.size.width = 12.0;
      v45.size.height = 12.0;
      v46 = CGRectIntegral(v45);
      [v31 setFrame_];
      v32 = *&v1[v2];
      if (v3 >= *(v32 + 16))
      {
        goto LABEL_27;
      }

      v33 = *(v32 + v6 + 24);
      if (v33 == 1)
      {
        v34 = [v9 CGColor];
      }

      else
      {
        v35 = v9;
        v36 = [objc_opt_self() clearColor];
        v34 = [v36 CGColor];

        v9 = v35;
        v22 = 0x278A25000uLL;
      }

      [v31 setBackgroundColor_];

      if ((v33 & 1) == 0)
      {
        v37 = [v9 CGColor];
        [v31 setBorderColor_];
      }

      ++v3;
      [v31 setBorderWidth_];
      [v11 *(v22 + 3328)];

      v4 = v38;
      v5 = v5 + *&v1[v38] + 1.0;
      v6 += 56;
      if (v40 == v3)
      {
        return;
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
  }
}

void sub_237113164(CGFloat a1, double a2)
{
  v4 = a2 / *&v2[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight];
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  if (*&v2[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_columnCount] != 2)
  {
    goto LABEL_10;
  }

  [v2 frame];
  if (CGRectGetWidth(v21) * 0.5 > a1)
  {
    if (v5 >= 4)
    {
      v5 = 4;
    }

LABEL_10:
    v7 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
    swift_beginAccess();
    v8 = *(*&v2[v7] + 16);
    if (v8 >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8 - 1;
    }

    v10 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex;
    v11 = *&v2[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex];
    *&v2[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex] = v9;
    sub_237111D88(v11);
    v12 = sub_23719653C();
    v13 = [objc_opt_self() defaultCenter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23719B040;
    sub_23719690C();
    v15 = *&v2[v10];
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = v15;
    sub_23719690C();
    v16 = *&v2[v10];
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = *&v2[v7];
      if (v16 < *(v17 + 16))
      {
        v18 = *(v17 + 56 * v16 + 32);
        *(inited + 168) = sub_237115094(0, &qword_27DE94788);
        *(inited + 144) = v18;
        v19 = v18;
        sub_237119F04(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
        swift_arrayDestroy();
        v20 = sub_23719651C();

        [v13 postNotificationName:v12 object:v2 userInfo:{v20, 0x726F6C6F63, 0xE500000000000000}];

        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = __OFADD__(v5, 4);
  v5 += 4;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
}

void sub_237113468()
{
  v1 = v0;
  v2 = sub_23719630C();
  if (v2)
  {
    v3 = v2;
    sub_23719690C();
    if (*(v3 + 16) && (v4 = sub_237190728(v23), (v5 & 1) != 0))
    {
      sub_237114D0C(*(v3 + 56) + 32 * v4, v24);
      sub_237114F1C(v23);

      if (swift_dynamicCast())
      {
        v6 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex;
        v7 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex);
        if (v7 < 0)
        {
          v11 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex);
        }

        else
        {
          v8 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_accessibleElements;
          swift_beginAccess();
          v9 = *(v1 + v8);
          if (v9 >> 62)
          {
            v10 = sub_2371969FC();
          }

          else
          {
            v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v11 = *(v1 + v6);
          if (v7 < v10)
          {
            v12 = *(v1 + v8);
            if ((v12 & 0xC000000000000001) != 0)
            {
              v20 = v6;
              v21 = *(v1 + v6);

              v22 = v21;
              v6 = v20;
              v13 = MEMORY[0x2383C62A0](v22, v12);
            }

            else
            {
              if ((v11 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                return;
              }

              v13 = *(v12 + 8 * v11 + 32);
            }

            [v13 setAccessibilityTraits_];

            v11 = *(v1 + v6);
          }
        }

        *(v1 + v6) = 0x6F697463656C6573;
        sub_237111D88(v11);
        v14 = *(v1 + v6);
        if ((v14 & 0x8000000000000000) == 0)
        {
          v15 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_accessibleElements;
          swift_beginAccess();
          v16 = *(v1 + v15);
          if (v16 >> 62)
          {
            if (v14 < sub_2371969FC())
            {
LABEL_20:
              v17 = *(v1 + v6);
              v18 = *(v1 + v15);
              if ((v18 & 0xC000000000000001) != 0)
              {

                v19 = MEMORY[0x2383C62A0](v17, v18);

                goto LABEL_24;
              }

              if ((v17 & 0x8000000000000000) == 0)
              {
                if (v17 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v19 = *(v18 + 8 * v17 + 32);
LABEL_24:
                  [v19 setAccessibilityTraits_];

                  return;
                }

                goto LABEL_33;
              }

              goto LABEL_31;
            }
          }

          else if (v14 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {

      sub_237114F1C(v23);
    }
  }
}

void sub_237113754()
{
  v1 = v0;
  v2 = sub_23719630C();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_23719690C();
  if (!*(v3 + 16))
  {
    goto LABEL_23;
  }

  v4 = sub_237190728(&v38);
  if ((v5 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_237114D0C(*(v3 + 56) + 32 * v4, v40);
  sub_237114F1C(&v38);
  v6 = MEMORY[0x277D83B88];
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v7 = 0x746E656D676573;
  sub_23719690C();
  if (!*(v3 + 16) || (v8 = sub_237190728(&v38), (v9 & 1) == 0))
  {
LABEL_23:

    sub_237114F1C(&v38);
    return;
  }

  sub_237114D0C(*(v3 + 56) + 32 * v8, v40);
  sub_237114F1C(&v38);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v10 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex;
  v11 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex);
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex) = 0x746E656D676573;
  sub_237111D88(v11);
  v36 = sub_23719653C();
  v34 = objc_opt_self();
  v12 = [v34 defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  v38 = 0x6F697463656C6573;
  v39 = 0xE90000000000006ELL;
  sub_23719690C();
  v14 = *(v10 + v1);
  *(inited + 96) = v6;
  *(inited + 72) = v14;
  v38 = 0x726F6C6F63;
  v39 = 0xE500000000000000;
  sub_23719690C();
  v37 = v10;
  v15 = *(v10 + v1);
  v16 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v17 = *(v1 + v16);
  v10 = MEMORY[0x277D84F70];
  if (v15 >= *(v17 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = *(v17 + 56 * v15 + 32);
  *(inited + 168) = sub_237115094(0, &qword_27DE94788);
  *(inited + 144) = v18;
  v19 = v18;
  sub_237119F04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
  swift_arrayDestroy();
  v20 = sub_23719651C();

  v10 = &selRef_effectiveContentSize;
  [v12 postNotificationName:v36 object:v1 userInfo:v20];

  swift_beginAccess();
  inited = *(v1 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v16) = inited;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_28:
    inited = sub_237186F78(inited);
    *(v1 + v16) = inited;
  }

  if (*(inited + 16) <= 0x746E656D676573uLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  *(inited + 0x1978262FEE9E3160) = 101;
  sub_237110A84();
  *(v1 + v16) = inited;
  swift_endAccess();
  v12 = *(v37 + v1);
  if (v12 < 0)
  {
    goto LABEL_39;
  }

  v7 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_accessibleElements;
  swift_beginAccess();
  v22 = *(v1 + v7);
  if (v22 >> 62)
  {
    goto LABEL_32;
  }

  if (v12 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    do
    {
LABEL_20:
      v35 = sub_23719653C();
      v7 = [v34 defaultCenter];
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_23719B040;
      v12 = 0xE700000000000000;
      sub_23719690C();
      v28 = *(v37 + v1);
      *(v27 + 96) = v6;
      *(v27 + 72) = v28;
      sub_23719690C();
      v29 = *(v37 + v1);
      if ((v29 & 0x8000000000000000) != 0)
      {
LABEL_30:
        __break(1u);
      }

      else
      {
        v30 = *(v1 + v16);
        v12 = MEMORY[0x277D84F70];
        if (v29 < *(v30 + 16))
        {
          v31 = v10;
          v32 = *(v30 + 56 * v29 + 56);
          *(v27 + 168) = MEMORY[0x277D839B0];
          *(v27 + 144) = v32;
          sub_237119F04(v27);
          swift_setDeallocating();
          swift_arrayDestroy();
          v33 = sub_23719651C();

          [v7 v31 + 3375];

          return;
        }
      }

      __break(1u);
LABEL_32:
      ;
    }

    while (v12 >= sub_2371969FC());
  }

  v23 = *(v37 + v1);
  v24 = *(v1 + v7);
  if ((v24 & 0xC000000000000001) != 0)
  {

    v25 = MEMORY[0x2383C62A0](v23, v24);

    goto LABEL_19;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 8 * v23 + 32);
LABEL_19:
    v26 = sub_23719653C();

    [v25 setAccessibilityValue_];

    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_237113E34(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_23719631C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

void sub_237113F24(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v7 = sub_237181180(a1);
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  [v7 locationInView_];
  v10 = v9;
  sub_237113164(v9, v11);
  v12 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_columnCount;
  v13 = *&v2[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_columnCount];
  if (v13 == 1)
  {
    [v2 frame];
    if (CGRectGetWidth(v28) / 1.75 >= v10)
    {
LABEL_11:
      v13 = *&v5[v12];
      goto LABEL_12;
    }

    v12 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex;
    v14 = *&v2[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex];
    v15 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
    swift_beginAccess();
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *&v5[v15];
      if (v14 < *(v3 + 2))
      {
        LOBYTE(inited) = v3[56 * v14 + 56];
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v15] = v3;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_27:
    v3 = sub_237186F78(v3);
    *&v5[v15] = v3;
LABEL_7:
    v26 = a2;
    if (v14 >= *(v3 + 2))
    {
      __break(1u);
    }

    else
    {
      v3[56 * v14 + 56] = inited ^ 1;
      sub_237110A84();
      *&v5[v15] = v3;
      swift_endAccess();
      v25 = sub_23719653C();
      v3 = [objc_opt_self() defaultCenter];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23719B040;
      v14 = 0xE700000000000000;
      a2 = MEMORY[0x277D837D0];
      sub_23719690C();
      v17 = *&v5[v12];
      *(inited + 96) = MEMORY[0x277D83B88];
      *(inited + 72) = v17;
      sub_23719690C();
      v18 = *&v5[v12];
      if ((v18 & 0x8000000000000000) == 0)
      {
        v19 = *&v5[v15];
        if (v18 < *(v19 + 16))
        {
LABEL_22:
          v22 = *(v19 + 56 * v18 + 56);
          *(inited + 168) = MEMORY[0x277D839B0];
          *(inited + 144) = v22;
          sub_237119F04(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0);
          swift_arrayDestroy();
          v23 = sub_23719651C();

          [v3 postNotificationName:v25 object:v5 userInfo:v23];

          a2 = v26;
LABEL_24:
          sub_237115094(0, &qword_27DE94790);
          sub_237114F70();
          v24 = sub_2371966CC();
          v27.receiver = v5;
          v27.super_class = type metadata accessor for AUVerticalSegmentControl();
          objc_msgSendSuper2(&v27, sel_touchesBegan_withEvent_, v24, a2);

          return;
        }

        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_12:
  if (v13 != 2 || ([v5 frame], CGRectGetWidth(v29) * 0.25 >= v10) || (objc_msgSend(v5, sel_frame), v10 >= CGRectGetWidth(v30) * 0.5) && (objc_msgSend(v5, sel_frame), CGRectGetWidth(v31) * 0.75 >= v10))
  {

    goto LABEL_24;
  }

  v12 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex;
  v14 = *&v5[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex];
  v15 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v3 = *&v5[v15];
  if (v14 < *(v3 + 2))
  {
    LOBYTE(inited) = v3[56 * v14 + 56];
    swift_beginAccess();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v5[v15] = v3;
    if (v20)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  v3 = sub_237186F78(v3);
  *&v5[v15] = v3;
LABEL_19:
  v26 = a2;
  if (v14 >= *(v3 + 2))
  {
    __break(1u);
    goto LABEL_34;
  }

  v3[56 * v14 + 56] = inited ^ 1;
  sub_237110A84();
  *&v5[v15] = v3;
  swift_endAccess();
  v25 = sub_23719653C();
  v3 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  sub_23719690C();
  v21 = *&v5[v12];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v21;
  sub_23719690C();
  v18 = *&v5[v12];
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19 = *&v5[v15];
  if (v18 < *(v19 + 16))
  {
    goto LABEL_22;
  }

LABEL_35:
  __break(1u);
}

void sub_237114690()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  swift_beginAccess();
  if (!*(*&v0[v2] + 16))
  {
    v6 = &v0[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight];
    *&v0[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight] = 0;
    v7 = 0x4038000000000000;
    goto LABEL_6;
  }

  [v0 frame];
  Height = CGRectGetHeight(v60);
  v4 = *(*&v0[v2] + 16);
  v5 = (Height - v4) / v4;
  v6 = &v0[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight] = v5;
  if (v5 < 24.0)
  {
    v7 = 0x4038000000000000;
LABEL_6:
    *v6 = v7;
    goto LABEL_7;
  }

  v7 = 0x4040000000000000;
  if (v5 > 32.0)
  {
    goto LABEL_6;
  }

LABEL_7:
  [v0 frame];
  v48 = 0;
  v49 = 0;
  v8 = 2;
  if (v9 < 80.0)
  {
    v8 = 1;
  }

  *&v0[OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_columnCount] = v8;
  v53 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_columnCount;
  v54 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_accessibleElements;
  v46 = v8;
  v47 = 80;
  v51 = v2;
  v52 = v0;
  v50 = v6;
  while (1)
  {
    v10 = *&v1[v53];
    if (!v10)
    {
      goto LABEL_30;
    }

    v11 = *(*&v1[v2] + 16) / v10;
    if (v11 < 0)
    {
      break;
    }

    if (v11)
    {
      swift_beginAccess();
      v12 = 0.0;
      v13 = v47;
      v14 = v49;
      do
      {
        v19 = *&v1[v2];
        if (v14 >= *(v19 + 16))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v20 = (v19 + v13);
        v21 = *(v20 - 6);
        v22 = *(v20 - 2);
        v23 = *(v20 - 1);
        v56 = v21;
        v57 = v22;
        v58 = v23;
        v59 = *v20;
        v24 = *v20;
        v25 = v21;

        v26 = v22;
        v27 = v23;
        v28 = sub_237110CB0();
        [v1 frame];
        v29 = CGRectGetWidth(v61) * v48 * 0.5;
        v30 = [v1 layer];
        [v30 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v62.origin.x = v32;
        v62.origin.y = v34;
        v62.size.width = v36;
        v62.size.height = v38;
        v55 = v28;
        [v28 setFrame_];
        v39 = sub_237110DF8();
        v63.origin.y = (*v6 + -20.0) * 0.5;
        v63.origin.x = 0.0;
        v63.size.width = 20.0;
        v63.size.height = 20.0;
        v64 = CGRectIntegral(v63);
        [v39 setFrame_];
        v40 = sub_237110BE4();
        v65.origin.y = (*v6 + -12.0) * 0.5 + 1.0;
        v65.origin.x = 28.0;
        v65.size.width = 12.0;
        v65.size.height = 12.0;
        v66 = CGRectIntegral(v65);
        [v40 setFrame_];
        v41 = *&v1[v54];
        if (v41 >> 62)
        {
          if (v14 >= sub_2371969FC())
          {
LABEL_15:
            v15 = v21;
            v17 = v57;
            v16 = v58;
            v18 = v59;

            goto LABEL_16;
          }
        }

        else if (v14 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v42 = *&v1[v54];
        if ((v42 & 0xC000000000000001) != 0)
        {

          v45 = MEMORY[0x2383C62A0](v14, v42);

          v43 = v45;
        }

        else
        {
          if (v14 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v43 = *(v42 + 8 * v14 + 32);
        }

        v44 = v43;
        [v28 frame];
        [v44 setAccessibilityFrameInContainerSpace_];

        v15 = v56;
        v17 = v57;
        v16 = v58;
        v18 = v59;
LABEL_16:

        v6 = v50;
        v2 = v51;
        v12 = v12 + *v50 + 1.0;
        ++v14;
        v13 += 56;
        --v11;
        v1 = v52;
      }

      while (v11);
    }

    ++v48;
    v49 += 4;
    v47 += 224;
    if (v48 == v46)
    {
      return;
    }
  }

LABEL_31:
  __break(1u);
}

id sub_237114B80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_237114C68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_237114CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237114D0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_237114D68()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_owner];
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex);
    *(v2 + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex) = *&v1[OBJC_IVAR____TtCC12CoreAudioKit24AUVerticalSegmentControl27SegmentAccessibilityElement_index];
    sub_237111D88(v3);
  }

  [v1 setAccessibilityTraits_];
  return 1;
}

uint64_t sub_237114DD8(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex);
  v3 = OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items;
  if ((v2 & 0x8000000000000000) == 0)
  {
    result = swift_beginAccess();
    v5 = *(v1 + v3);
    if (v2 < *(v5 + 16))
    {
      v6 = v2;
      return *(v5 + 56 * v6 + 32);
    }

    __break(1u);
    goto LABEL_8;
  }

  v6 = a1;
  result = swift_beginAccess();
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v1 + v3);
  if (*(v5 + 16) > v6)
  {
    return *(v5 + 56 * v6 + 32);
  }

LABEL_9:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_237114F70()
{
  result = qword_27DE94798;
  if (!qword_27DE94798)
  {
    sub_237115094(255, &qword_27DE94790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE94798);
  }

  return result;
}

unint64_t sub_237115040()
{
  result = qword_27DE947A0;
  if (!qword_27DE947A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE947A0);
  }

  return result;
}

uint64_t sub_237115094(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2371150DC()
{
  result = sub_23719653C();
  qword_27DE96900 = result;
  return result;
}

uint64_t sub_237115114()
{
  result = sub_23719653C();
  qword_27DE96908 = result;
  return result;
}

uint64_t sub_23711514C()
{
  result = sub_23719653C();
  qword_27DE96910 = result;
  return result;
}

uint64_t sub_237115184()
{
  result = sub_23719653C();
  qword_27DE96918 = result;
  return result;
}

uint64_t sub_2371151BC()
{
  result = sub_23719653C();
  qword_27DE96920 = result;
  return result;
}

uint64_t sub_2371151F4()
{
  result = sub_23719653C();
  qword_27DE96928 = result;
  return result;
}

void *sub_237115278()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_237115344(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_237115418();
  sub_2371155D0();
}

id sub_2371153B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_237115418();
  return sub_2371155D0();
}

uint64_t sub_237115418()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 && (v3 = [v2 parameterTree]) != 0)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    aBlock[4] = sub_23711C014;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_237126FE8;
    aBlock[3] = &block_descriptor_76;
    v6 = _Block_copy(aBlock);
    v7 = v0;

    v8 = [v4 tokenByAddingParameterObserver_];

    _Block_release(v6);
    v9 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
    result = swift_beginAccess();
    *&v7[v9] = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23719B020;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = 0xD000000000000010;
    *(v11 + 40) = 0x800000023719E370;
    sub_237196ABC();
  }

  return result;
}

id sub_2371155D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94990);
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20]();
  v6 = &v83 - v5;
  if (*&v0[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView])
  {
    v7 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
    swift_beginAccess();
    result = *&v0[v7];
    if (result)
    {
      result = [result parameterTree];
      if (result)
      {
        v85 = v3;
        v8 = result;
        v9 = [result children];
        v96 = sub_237115094(0, &qword_27DE94CE0);
        v86 = sub_23719663C();

        sub_23711BFC0();
        sub_23719649C();
        v10 = *&v1[v7];
        if (!v10)
        {
          goto LABEL_10;
        }

        v11 = [v10 audioUnitName];
        if (v11)
        {
LABEL_6:
          v12 = v11;
          v13 = sub_23719657C();
          v15 = v14;

          goto LABEL_11;
        }

        v16 = *&v1[v7];
        if (v16)
        {
          v11 = [v16 componentName];
          if (v11)
          {
            goto LABEL_6;
          }

          v13 = 0x6E55206F69647541;
          v15 = 0xEA00000000007469;
        }

        else
        {
LABEL_10:
          v15 = 0xEA00000000007469;
          v13 = 0x6E55206F69647541;
        }

LABEL_11:
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949A0);
        v17 = swift_allocObject();
        v97 = xmmword_23719B020;
        *(v17 + 16) = xmmword_23719B020;
        *(v17 + 32) = v13;
        *(v17 + 40) = v15;
        swift_bridgeObjectRetain_n();
        sub_23719648C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949A8);
        v18 = swift_allocObject();
        *(v18 + 16) = v97;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        *(v18 + 48) = 0;
        *(v18 + 56) = 0;
        *(v18 + 64) = v13;
        *(v18 + 72) = v15;
        v84 = v13;
        *&v115[0] = v13;
        *(&v115[0] + 1) = v15;
        swift_bridgeObjectRetain_n();
        sub_23719646C();

        *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_pathsNeedingPeriodicUpdates] = MEMORY[0x277D84F90];

        v19 = [objc_opt_self() mainThread];
        [v1 performSelector:sel_removeScheduledUpdatesTimer onThread:v19 withObject:0 waitUntilDone:1];

        v20 = v86;
        if (v86 >> 62)
        {
          result = sub_2371969FC();
          v20 = v86;
          if (result == 1)
          {
            goto LABEL_13;
          }
        }

        else
        {
          result = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result == 1)
          {
LABEL_13:
            if ((v20 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x2383C62A0](0, v20);
            }

            else
            {
              if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_80:
                __break(1u);
                goto LABEL_81;
              }

              v21 = *(v20 + 32);
            }

            v22 = v21;
            v23 = [v21 identifier];

            v24 = sub_23719657C();
            v26 = v25;

            if (v24 == 0x6C61626F6C67 && v26 == 0xE600000000000000)
            {

LABEL_20:
              result = sub_2371185EC(1);
              if (!result)
              {
LABEL_81:
                __break(1u);
                return result;
              }

              v28 = result;
              v29 = [result children];
              v30 = sub_23719663C();

              goto LABEL_25;
            }

            v27 = sub_237196A7C();

            if (v27)
            {
              goto LABEL_20;
            }

            v30 = v86;

LABEL_25:
            if (v30 >> 62)
            {
              goto LABEL_77;
            }

            for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2371969FC())
            {
              v32 = MEMORY[0x277D84F90];
              v33 = &OBJC_IVAR___AUAppleViewControllerBase__needsRealtimeDrawing;
              if (!i)
              {
                break;
              }

              sub_237115094(0, &qword_27DE948F0);
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v94 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_hasGroups;
              v101 = v30 & 0xC000000000000001;
              v93 = v30 & 0xFFFFFFFFFFFFFF8;
              v92 = v30 + 32;
              v104 = 0x800000023719E2A0;
              v102 = v32;
              v34 = 0;
              v99 = i;
              v91 = v2;
              v90 = v6;
              v89 = v1;
              v88 = v15;
              v87 = v30;
              while (1)
              {
                if (v101)
                {
                  v36 = MEMORY[0x2383C62A0](v34, v30);
                }

                else
                {
                  if (v34 >= *(v93 + 16))
                  {
                    goto LABEL_75;
                  }

                  v36 = *(v92 + 8 * v34);
                }

                v37 = v36;
                v38 = __OFADD__(v34, 1);
                v39 = v34 + 1;
                if (v38)
                {
                  break;
                }

                v40 = [v36 isKindOfClass_];
                v103 = v39;
                if (v40)
                {
                  objc_opt_self();
                  v41 = swift_dynamicCastObjCClassUnconditional();
                  v1[v94] = 1;
                  v42 = swift_allocObject();
                  *(v42 + 16) = v97;
                  v98 = v37;
                  v43 = [v41 identifier];
                  v44 = sub_23719657C();
                  v46 = v45;

                  *(v42 + 32) = v44;
                  *(v42 + 40) = v46;
                  sub_23719648C();

                  v47 = [v41 children];
                  v48 = sub_23719663C();

                  if (v48 >> 62)
                  {
                    v49 = sub_2371969FC();
                  }

                  else
                  {
                    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v49)
                  {
                    v113 = MEMORY[0x277D84F90];
                    sub_23716E27C(0, v49 & ~(v49 >> 63), 0);
                    if (v49 < 0)
                    {
                      goto LABEL_76;
                    }

                    v50 = v113;
                    v107 = v48 & 0xC000000000000001;
                    type metadata accessor for AUGenericViewInternal();
                    v106 = swift_getObjCClassFromMetadata();
                    v51 = objc_opt_self();
                    v52 = v48;
                    v105 = v51;
                    v53 = 0;
                    v108 = v49;
                    v109 = v48;
                    do
                    {
                      if (v107)
                      {
                        v54 = MEMORY[0x2383C62A0](v53, v52);
                      }

                      else
                      {
                        v54 = *(v52 + 8 * v53 + 32);
                      }

                      v55 = v54;
                      v56 = [v105 bundleForClass_];
                      v57 = [v55 displayName];
                      sub_23719657C();

                      v58 = sub_23719634C();
                      v110 = v59;

                      v60 = v55;
                      v61 = [v60 keyPath];
                      v62 = sub_23719657C();
                      v64 = v63;

                      objc_opt_self();
                      if (swift_dynamicCastObjCClass())
                      {
                        objc_opt_self();
                        v65 = swift_dynamicCastObjCClassUnconditional();
                        v66 = [v65 unit];
                        switch(v66)
                        {
                          case 1u:

                            v67 = 3;
                            break;
                          case 2u:

                            v67 = 1;
                            break;
                          case 0x13u:

                            v67 = 4;
                            break;
                          default:
                            v68 = [v65 flags];

                            if ((v68 & 0x8000) != 0)
                            {
                              v67 = 4;
                            }

                            else
                            {
                              v67 = 2;
                            }

                            break;
                        }
                      }

                      else
                      {

                        v67 = 2;
                      }

                      v113 = v50;
                      v70 = *(v50 + 16);
                      v69 = *(v50 + 24);
                      if (v70 >= v69 >> 1)
                      {
                        sub_23716E27C((v69 > 1), v70 + 1, 1);
                        v50 = v113;
                      }

                      ++v53;
                      *(v50 + 16) = v70 + 1;
                      v71 = v50 + 48 * v70;
                      v52 = v109;
                      v72 = v110;
                      *(v71 + 32) = v58;
                      *(v71 + 40) = v72;
                      *(v71 + 48) = v55;
                      *(v71 + 56) = v67;
                      *(v71 + 64) = v62;
                      *(v71 + 72) = v64;
                    }

                    while (v108 != v53);

                    v2 = v91;
                    v6 = v90;
                    v1 = v89;
                    v15 = v88;
                    v30 = v87;
                  }

                  else
                  {
                  }

                  v113 = 0;
                  v114 = 0;
                  sub_23719646C();

                  v35 = v98;
                }

                else
                {
                  v73 = v37;
                  sub_23711A780(v37, v115);
                  v74 = v102;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v74 = sub_237189BB8(0, *(v74 + 2) + 1, 1, v74);
                  }

                  v102 = v74;
                  v76 = *(v74 + 2);
                  v75 = *(v74 + 3);
                  if (v76 >= v75 >> 1)
                  {
                    v102 = sub_237189BB8((v75 > 1), v76 + 1, 1, v102);
                  }

                  v77 = v102;
                  *(v102 + 2) = v76 + 1;
                  v78 = &v77[48 * v76];
                  v79 = v115[0];
                  v80 = v115[2];
                  *(v78 + 3) = v115[1];
                  *(v78 + 4) = v80;
                  *(v78 + 2) = v79;
                }

                v34 = v103;
                v33 = &OBJC_IVAR___AUAppleViewControllerBase__needsRealtimeDrawing;
                if (v103 == v99)
                {
                  goto LABEL_68;
                }
              }

              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              ;
            }

            v102 = MEMORY[0x277D84F90];
LABEL_68:
            if (*(v102 + 2))
            {
              sub_23719648C();
              v113 = 0;
              v114 = 0;
              sub_23719646C();
              if (v1[*(v33 + 252)] == 1)
              {
                v113 = 0x6C61626F6C67;
                v114 = 0xE600000000000000;
                v111 = v84;
                v112 = v15;
                sub_23719647C();
              }
            }

            v81 = *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_dataSource];
            if (v81)
            {
              v82 = v81;

              sub_2371964CC();
              swift_bridgeObjectRelease_n();

              return (*(v85 + 8))(v6, v2);
            }

            goto LABEL_80;
          }
        }

        v30 = v86;
        goto LABEL_25;
      }
    }
  }

  return result;
}

id (*sub_2371161E0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_237116244;
}

id sub_237116244(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_237115418();
    return sub_2371155D0();
  }

  return result;
}

void *sub_2371162C8()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_owningController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_237116374(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_owningController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2371163CC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_owningController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_2371164D8()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_237116570(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_237116620()
{
  v1 = v0 + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_showSingleClumpIndex;
  swift_beginAccess();
  return *v1;
}

id sub_23711666C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_showSingleClumpIndex;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_2371155D0();
}

id (*sub_2371166D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_237116734;
}

id sub_237116734(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2371155D0();
  }

  return result;
}

uint64_t sub_237116768()
{
  v1 = *v0;
  sub_237196AEC();
  MEMORY[0x2383C6450](v1);
  return sub_237196B2C();
}

uint64_t sub_2371167B0()
{
  v1 = *v0;
  sub_237196AEC();
  MEMORY[0x2383C6450](v1);
  return sub_237196B2C();
}

uint64_t sub_2371167F4()
{
  v1 = *(v0 + 40);
  sub_237196AEC();
  sub_237196B0C();
  if (v1)
  {
    sub_2371965BC();
  }

  return sub_237196B2C();
}

uint64_t sub_237116864()
{
  if (!*(v0 + 40))
  {
    return sub_237196B0C();
  }

  sub_237196B0C();

  return sub_2371965BC();
}

uint64_t sub_2371168DC()
{
  v1 = *(v0 + 40);
  sub_237196AEC();
  sub_237196B0C();
  if (v1)
  {
    sub_2371965BC();
  }

  return sub_237196B2C();
}

BOOL sub_237116948(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_23711A638(v7, v8);
}

id sub_237116990(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_2371169F4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_owningController] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_dataSource] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView] = 0;
  v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_hasGroups] = 0;
  v9 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_pathsNeedingPeriodicUpdates] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken] = 0;
  v10 = &v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_showSingleClumpIndex];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramDictionary;
  *&v4[v11] = sub_23711A040(v9);
  *&v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_widthInfo] = v9;
  v26.receiver = v4;
  v26.super_class = type metadata accessor for AUGenericViewInternal();
  v12 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_23711896C();
  v22 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v21 collectionViewLayout:{v14, v16, v18, v20}];

  v23 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView;
  v24 = *&v12[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView];
  *&v12[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView] = v22;

  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v22 setAutoresizingMask_];
  v25 = *&v12[v23];
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v25 setDelegate_];
  if (*&v12[v23])
  {
    [v12 addSubview_];
    sub_237116E4C();

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_237116C00(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_237116C44(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_owningController] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView] = 0;
  v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_hasGroups] = 0;
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_pathsNeedingPeriodicUpdates] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken] = 0;
  v4 = &v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_showSingleClumpIndex];
  *v4 = 0;
  v4[8] = 1;
  v5 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramDictionary;
  *&v1[v5] = sub_23711A040(v3);
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_widthInfo] = v3;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for AUGenericViewInternal();
  v6 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_23711896C();
  v17 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v16 collectionViewLayout:{v9, v11, v13, v15}];

  v18 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView;
  v19 = *&v7[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView];
  *&v7[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView] = v17;

  if (!v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v17 setAutoresizingMask_];
  v20 = *&v7[v18];
  if (!v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v20 setDelegate_];
  if (*&v7[v18])
  {
    [v7 addSubview_];
    sub_237116E4C();

LABEL_6:
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_237116E4C()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView;
  v2 = *&v0[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v0;
  v4 = v2;
  sub_23711938C(type metadata accessor for AUGenericViewHeaderCell, &qword_27DE94960);

  v5 = *&v3[v1];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  sub_23711938C(type metadata accessor for AUGenericViewBoolParameterCell, &qword_27DE94958);

  v7 = *&v3[v1];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  sub_23711938C(type metadata accessor for AUGenericViewIntegerParameterCell, &qword_27DE94950);

  v9 = *&v3[v1];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  sub_23711938C(type metadata accessor for AUGenericViewMeterParameterCell, &qword_27DE94948);

  v11 = *&v3[v1];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  sub_23711938C(type metadata accessor for AUGenericViewFloatParameterCell, &qword_27DE94940);

  v13 = *&v3[v1];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(swift_allocObject() + 16) = v3;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94930));
  v14 = v3;
  v15 = v13;
  v16 = sub_2371964AC();
  v17 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_dataSource;
  v18 = *&v14[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_dataSource];
  *&v14[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_dataSource] = v16;

  v19 = *&v3[v1];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for AUGenericViewClumpTitleSupplementalView();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94938);
  sub_2371965AC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = sub_23719653C();
  v23 = sub_23719653C();

  [v20 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v22 withReuseIdentifier:v23];

  v24 = *&v14[v17];
  if (v24)
  {
    *(swift_allocObject() + 16) = v14;
    v25 = v14;
    v26 = v24;
    sub_2371964BC();

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_237117164(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AUGenericViewInternal();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView;
  v4 = *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView];
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v4 reloadData];
  v5 = [v1 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = *&v1[v3];
  if (v6 == 2)
  {
    if (v7)
    {
      v8 = &selRef_systemBackgroundColor;
LABEL_7:
      v9 = objc_opt_self();
      v10 = v7;
      v11 = [v9 *v8];
      [v10 setBackgroundColor_];

      return;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    v8 = &selRef_systemGroupedBackgroundColor;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_2371172E8()
{
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_pathsNeedingPeriodicUpdates) = MEMORY[0x277D84F90];

  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramObserverToken;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    v5 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
    swift_beginAccess();
    v6 = *(v0 + v5);
    if (v6)
    {
      v7 = [v6 parameterTree];
      if (v7)
      {
        if (*(v0 + v4))
        {
          v8 = v7;
          [v7 removeParameterObserver_];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_237117420()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_23711750C(uint64_t a1, void *a2)
{
  v3 = sub_2371964EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23719650C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237115094(0, &qword_27DE94908);
  v13 = sub_23719678C();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  aBlock[4] = sub_23711BEF0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23714D540;
  aBlock[3] = &block_descriptor_58;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  sub_2371964FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23711BEF8(&qword_27DE94910, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94918);
  sub_23711BE3C();
  sub_23719683C();
  MEMORY[0x2383C60F0](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

char *sub_2371177D0(uint64_t a1)
{
  v2 = sub_23719641C();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2, v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v8 = *(a1 + OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_pathsNeedingPeriodicUpdates);
  v9 = *(v8 + 16);
  if (v9)
  {
    v20[1] = v3 + 16;
    v21 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_collectionView;

    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      result = (*(v3 + 16))(v7, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v2);
      v11 = *(v22 + v21);
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v11;
      v13 = sub_2371963AC();
      v14 = [v12 cellForItemAtIndexPath_];

      if (v14)
      {
        type metadata accessor for AUGenericViewMeterParameterCell();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = v15;
          result = swift_unknownObjectWeakLoadStrong();
          if (!result)
          {
            goto LABEL_16;
          }

          v17 = result;
          result = *(v16 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
          if (!result)
          {
            goto LABEL_17;
          }

          [result value];
          v18 = *&v17[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_currentValue];
          *&v17[OBJC_IVAR____TtC12CoreAudioKit11AUMeterView_currentValue] = v19;
          sub_23710FFE8(v18);

          v14 = v17;
        }
      }

      ++v10;
      result = (*(v3 + 8))(v7, v2);
      if (v9 == v10)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_237117A18()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 parameterTree];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 children];
      v6 = sub_237115094(0, &qword_27DE94CE0);
      v7 = sub_23719663C();

      if (v7 >> 62)
      {
        if (sub_2371969FC() != 1)
        {
          goto LABEL_13;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_23719B030;
        v4 = v4;

        *(v16 + 32) = v4;
LABEL_14:

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2383C62A0](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;
      v10 = [v8 identifier];

      v11 = sub_23719657C();
      v13 = v12;

      if (v11 == 0x6C61626F6C67 && v13 == 0xE600000000000000)
      {
      }

      else
      {
        v15 = sub_237196A7C();

        if ((v15 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2383C62A0](0, v7);
      }

      else
      {
        v17 = *(v7 + 32);
      }

      v5 = v17;

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {

        return;
      }

      v7 = v18;
      v19 = [v18 children];
      v6 = sub_23719663C();

      if ((v6 & 0xC000000000000001) == 0)
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v20 = *(v6 + 32);
        goto LABEL_24;
      }

LABEL_32:
      v20 = MEMORY[0x2383C62A0](0, v6);
LABEL_24:
      v21 = v20;
      sub_237115094(0, &qword_27DE948F0);
      v22 = [v21 isKindOfClass_];

      if (v22)
      {
        sub_237117D64(v6);

        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_23719B030;
      *(v23 + 32) = v7;
      goto LABEL_14;
    }
  }
}

uint64_t sub_237117D64(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_23719699C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2371969FC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2383C62A0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_23719697C();
      sub_2371969AC();
      sub_2371969BC();
      sub_23719698C();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2371969FC();
    sub_23719699C();
  }

  return v8;
}

void sub_237117ECC(int64_t a1)
{
  sub_237117A18();
  if (!v6)
  {
    return;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      goto LABEL_4;
    }

LABEL_33:

    return;
  }

LABEL_32:
  v1 = v6;
  v23 = sub_2371969FC();
  v6 = v1;
  if (v23 <= a1)
  {
    goto LABEL_33;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x2383C62A0](a1);
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    if (*(v7 + 16) <= a1)
    {
      __break(1u);
      goto LABEL_39;
    }

    v8 = *(v6 + 8 * a1 + 32);
  }

  v9 = v8;

  v10 = [v9 children];
  sub_237115094(0, &qword_27DE94CE0);
  v2 = sub_23719663C();

  v25 = v9;
  v24 = a1;
  v1 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_37:
    v6 = sub_2371969FC();
    v11 = v6;
    goto LABEL_10;
  }

  v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v3 = 0;
  a1 = v2 & 0xC000000000000001;
  v4 = &qword_27DE948F0;
  v7 = 0x278A25000uLL;
  do
  {
    if (v11 == v3)
    {

      v14 = [v25 children];
      sub_23719663C();

      return;
    }

    if (a1)
    {
      v6 = MEMORY[0x2383C62A0](v3, v2);
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_31;
      }

      v6 = *(v2 + 8 * v3 + 32);
    }

    v12 = v6;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_237115094(0, &qword_27DE948F0);
    v13 = [v12 isKindOfClass_];

    ++v3;
  }

  while (!v13);

  v4 = 0x278A25000;
  v3 = v25;
  v15 = [v25 children];
  v2 = sub_23719663C();

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_39:
    v16 = MEMORY[0x2383C62A0](v24, v2);
LABEL_24:
    v17 = v16;

    sub_237115094(0, &qword_27DE948F8);
    if ([v17 *(v7 + 3640)])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_23719B030;
      *(v18 + 32) = v17;
    }

    else
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {

        return;
      }

      v20 = v19;
      v21 = v17;
      v22 = [v20 v4[454]];
      sub_23719663C();
    }

    return;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > v24)
  {
    v16 = *(v2 + 8 * v24 + 32);
    goto LABEL_24;
  }

  __break(1u);
}

void sub_237118268(uint64_t a1)
{
  sub_237117A18();
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v12 = v2;
  v13 = sub_2371969FC();
  v2 = v12;
  if (v13 <= a1)
  {
LABEL_13:

LABEL_14:
    type metadata accessor for AUGenericViewInternal();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_23719634C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D83B88];
    *(v16 + 16) = xmmword_23719B020;
    v18 = MEMORY[0x277D83C10];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = a1;
    sub_23719654C();

    return;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383C62A0](a1);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(v3 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v4 = *(v2 + 8 * a1 + 32);
LABEL_8:
  v5 = v4;

  v6 = [v5 displayName];
  sub_23719657C();

  sub_237115094(0, &qword_27DE94CE0);
  if ([v5 isKindOfClass_] && (sub_2371965EC() & 1) != 0)
  {
    type metadata accessor for AUGenericViewInternal();
    v7 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_23719634C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D83B88];
    *(v9 + 16) = xmmword_23719B020;
    v11 = MEMORY[0x277D83C10];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = a1;
    sub_23719654C();
  }

  else
  {
  }
}

char *sub_2371185EC(uint64_t a1)
{
  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
  swift_beginAccess();
  result = *&v4[v1];
  if (result)
  {
    result = [result parameterTree];
    if (result)
    {
      if (a1 < 0)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        v9 = MEMORY[0x2383C62A0](result, v2);
LABEL_11:
        v10 = v9;

        return v10;
      }

      else
      {
        result = result;
        v4 = result;
        v6 = 0;
        do
        {
          if (a1 == v6)
          {

            return 0;
          }

          if (__OFADD__(v6, 1))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = [v4 children];
          sub_237115094(0, &qword_27DE94CE0);
          v8 = sub_23719663C();

          v2 = sub_237117D64(v8);

          ++v6;
        }

        while (!v2);

        result = (v6 - 1);
        if ((v2 & 0xC000000000000001) != 0)
        {
          goto LABEL_16;
        }

        if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v2 + 8 * v6 + 24);
          goto LABEL_11;
        }

        __break(1u);
      }
    }
  }

  return result;
}

id sub_237118764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUGenericViewInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_237118868(uint64_t a1, double a2)
{
  if (a2 <= 500.0)
  {
    return 1;
  }

  v3 = floor(a2 / 250.0);
  if (*&v3 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = __OFSUB__(a1, 1);
  v5 = a1 - 1;
  if (v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2 = v3;
  sub_237117ECC(v5);
  if (!v6)
  {
    v7 = 0;
    if (v2 <= 0)
    {
      return v2;
    }

    goto LABEL_13;
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_20:
  v7 = sub_2371969FC();
LABEL_9:

  if (v7 >= v2)
  {
    return v2;
  }

LABEL_13:
  if (v7 > 0)
  {
    return v7;
  }

  return v2;
}

id sub_23711896C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v10[4] = sub_23711BFB8;
  v10[5] = v1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23712927C;
  v10[3] = &block_descriptor_70;
  v3 = _Block_copy(v10);
  v4 = v0;
  v5 = [v2 initWithSectionProvider_];
  _Block_release(v3);

  type metadata accessor for AUGenericViewClumpBackground();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = v5;
  v8 = sub_23719653C();
  [v7 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v8];

  return v7;
}

id sub_237118AB0(uint64_t a1, int a2, id a3)
{
  if (a1 < 1)
  {
    v35 = 1;
  }

  else
  {
    [a3 frame];
    Width = CGRectGetWidth(v38);
    v35 = sub_237118868(a1, Width);
  }

  v5 = objc_opt_self();
  v6 = [v5 fractionalWidthDimension_];
  v7 = [v5 fractionalHeightDimension_];
  v8 = objc_opt_self();
  v9 = [v8 sizeWithWidthDimension:v6 heightDimension:v7];

  v37 = v9;
  v10 = [objc_opt_self() itemWithLayoutSize_];
  v11 = 0.0;
  [v10 setContentInsets_];
  v12 = [v5 fractionalWidthDimension_];
  v13 = 58.0;
  if (a1)
  {
    v11 = 10.0;
  }

  else
  {
    v13 = 28.0;
  }

  v14 = [v5 absoluteDimension_];
  v15 = [v8 sizeWithWidthDimension:v12 heightDimension:v14];

  v16 = [objc_opt_self() horizontalGroupWithLayoutSize:v15 subitem:v10 count:v36];
  v17 = [objc_opt_self() fixedSpacing_];
  [v16 setInterItemSpacing_];

  v18 = [objc_opt_self() sectionWithGroup_];
  [v18 setInterGroupSpacing_];
  [v18 setContentInsets_];
  if (a1 < 1)
  {
    [v18 setInterGroupSpacing_];
  }

  else
  {
    v19 = [v5 fractionalWidthDimension_];
    v20 = [v5 absoluteDimension_];
    v21 = [v8 sizeWithWidthDimension:v19 heightDimension:v20];

    v22 = v21;
    v23 = sub_23719653C();
    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v22 elementKind:v23 alignment:1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_23719B030;
    *(v25 + 32) = v24;
    sub_237115094(0, &qword_27DE94978);
    v26 = v24;
    v27 = sub_23719661C();

    [v18 setBoundarySupplementaryItems_];

    v28 = objc_opt_self();
    v29 = sub_23719653C();
    v30 = [v28 backgroundDecorationItemWithElementKind_];

    [v30 setContentInsets_];
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_23719B030;
    *(v31 + 32) = v30;
    sub_237115094(0, &qword_27DE94980);
    v32 = v30;
    v33 = sub_23719661C();

    [v18 setDecorationItems_];
  }

  return v18;
}

uint64_t sub_237118FD0(uint64_t a1, void *a2, float a3)
{
  v6 = sub_2371964EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23719650C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237115094(0, &qword_27DE94908);
  v16 = sub_23719678C();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a1;
  *(v17 + 32) = a3;
  aBlock[4] = sub_23711C01C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23714D540;
  aBlock[3] = &block_descriptor_82;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  sub_2371964FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23711BEF8(&qword_27DE94910, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94918);
  sub_23711BE3C();
  sub_23719683C();
  MEMORY[0x2383C60F0](0, v15, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

void sub_2371192A8(uint64_t a1, uint64_t a2, float a3)
{
  v6 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_paramDictionary;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {
    v8 = sub_23719336C(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      type metadata accessor for AUGenericViewParameterCellBase();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = *((*MEMORY[0x277D85000] & *v11) + 0x120);
        v13 = v10;
        v12(a3);
      }
    }
  }
}

void sub_23711938C(void (*a1)(void), uint64_t *a2)
{
  a1(0);
  type metadata accessor for AUGenericViewInternal();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_2371965AC();
  v6 = v5;
  v7 = sub_23719653C();
  v8 = [objc_opt_self() nibWithNibName:v7 bundle:v6];

  v9 = v8;
  v10 = sub_23719653C();

  [v2 registerNib:v9 forCellWithReuseIdentifier:v10];
}

char *sub_2371194C8(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = *(a3 + 16);
  v5 = sub_23711AE74(v4, *(a3 + 24), a1, a2, a4);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v4;
      v10 = [v8 address];
      swift_beginAccess();
      v11 = v5;
      sub_2371615C8(v5, v10);
      swift_endAccess();
    }
  }

  return v5;
}

uint64_t sub_2371195AC(void *a1)
{
  type metadata accessor for AUGenericViewClumpTitleSupplementalView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94938);
  sub_2371965AC();
  v2 = sub_23719653C();
  v3 = sub_23719653C();

  v4 = sub_2371963AC();
  v5 = [a1 dequeueReusableSupplementaryViewOfKind:v2 withReuseIdentifier:v3 forIndexPath:v4];

  v6 = swift_dynamicCastClassUnconditional();
  v7 = OBJC_IVAR____TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView_label;
  v8 = *(v6 + OBJC_IVAR____TtC12CoreAudioKit39AUGenericViewClumpTitleSupplementalView_label);
  v9 = sub_23719640C();
  v10 = __OFSUB__(v9, 1);
  result = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_237118268(result);
    v12 = sub_23719653C();

    [v8 setText_];

    [*(v6 + v7) setAccessibilityTraits_];
    return v6;
  }

  return result;
}

BOOL sub_2371199A8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_23719641C();
    ++v2;
    sub_23711BEF8(&qword_27DE94928, MEMORY[0x277CC9AF8]);
  }

  while ((sub_23719652C() & 1) == 0);
  return v3 != v4;
}

void sub_237119AB4(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v8[4] = sub_23711BEE8;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_23714F7F4;
  v8[3] = &block_descriptor_52;
  v4 = _Block_copy(v8);
  v5 = a1;

  v6 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:0.05];
  _Block_release(v4);
  v7 = *&v5[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer];
  *&v5[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer] = v6;
}

unint64_t sub_237119BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94880);
    v3 = sub_237196A2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23711BDB4(v4, &v11, &qword_27DE94888);
      v5 = v11;
      result = sub_23719064C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23711BDA4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237119CF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94898);
    v3 = sub_237196A2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23711BDB4(v4, &v13, &qword_27DE948A0);
      v5 = v13;
      v6 = v14;
      result = sub_2371905D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23711BDA4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237119E24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94890);
    v3 = sub_237196A2C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_23719336C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_237119F04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A8);
    v3 = sub_237196A2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23711BDB4(v4, v13, &qword_27DE948B0);
      result = sub_237190728(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23711BDA4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23711A040(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94988);
  v3 = sub_237196A2C();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_23719336C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_23719336C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23711A160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE948E0);
    v3 = sub_237196A2C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2371907DC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23711A24C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948D0);
  v3 = sub_237196A2C();
  v4 = *(a1 + 144);
  *&v31[96] = *(a1 + 128);
  *&v31[112] = v4;
  v5 = *(a1 + 176);
  *&v31[128] = *(a1 + 160);
  *&v31[144] = v5;
  v6 = *(a1 + 80);
  *&v31[32] = *(a1 + 64);
  *&v31[48] = v6;
  v7 = *(a1 + 112);
  *&v31[64] = *(a1 + 96);
  *&v31[80] = v7;
  v8 = *(a1 + 48);
  *v31 = *(a1 + 32);
  *&v31[16] = v8;
  v9 = *v31;
  result = sub_2371906E0(*v31);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_23711BDB4(v31, v30, &qword_27DE948D8);
    return v3;
  }

  v12 = (a1 + 192);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v9;
    v13 = v3[7] + 152 * result;
    v14 = *&v31[24];
    *v13 = *&v31[8];
    *(v13 + 16) = v14;
    v15 = *&v31[40];
    v16 = *&v31[56];
    v17 = *&v31[88];
    *(v13 + 64) = *&v31[72];
    *(v13 + 80) = v17;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    v18 = *&v31[104];
    v19 = *&v31[120];
    v20 = *&v31[136];
    *(v13 + 144) = *&v31[152];
    *(v13 + 112) = v19;
    *(v13 + 128) = v20;
    *(v13 + 96) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_23711BDB4(v31, v30, &qword_27DE948D8);
    v24 = v12[7];
    *&v31[96] = v12[6];
    *&v31[112] = v24;
    v25 = v12[9];
    *&v31[128] = v12[8];
    *&v31[144] = v25;
    v26 = v12[3];
    *&v31[32] = v12[2];
    *&v31[48] = v26;
    v27 = v12[5];
    *&v31[64] = v12[4];
    *&v31[80] = v27;
    v28 = v12[1];
    *v31 = *v12;
    *&v31[16] = v28;
    v9 = *v31;
    result = sub_2371906E0(*v31);
    v12 += 10;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23711A418(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948C0);
    v3 = sub_237196A2C();
    for (i = a1 + 32; ; i += 40)
    {
      sub_23711BDB4(i, &v11, &qword_27DE948C8);
      v5 = v11;
      result = sub_2371906E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_23711BDA4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23711A534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B8);
    v3 = sub_237196A2C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      v8 = v5;
      result = sub_23719082C(v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v11 = v3[7] + 16 * result;
      *v11 = v8;
      *(v11 + 8) = v6;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL sub_23711A638(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_237196A7C();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = a1;
    v12 = a2;
    sub_237115094(0, &qword_27DE94CE0);
    v13 = v10;
    v14 = v9;
    v15 = sub_2371967DC();

    a1 = v11;
    a2 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    v16 = *(a1 + 40);
    v17 = *(a2 + 40);
    if (v16)
    {
      return v17 && (*(a1 + 32) == *(a2 + 32) && v16 == v17 || (sub_237196A7C() & 1) != 0);
    }

    if (!v17)
    {
      return 1;
    }
  }

  return 0;
}

void sub_23711A780(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AUGenericViewInternal();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  if (a1)
  {
    v6 = v5;
    v7 = [a1 displayName];
    sub_23719657C();

    v8 = sub_23719634C();
    v10 = v9;

    v11 = a1;
    v12 = [v11 keyPath];
    v13 = sub_23719657C();
    v15 = v14;

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClassUnconditional();
      v17 = [v16 unit];
      switch(v17)
      {
        case 1u:

          v18 = 3;
          break;
        case 0x13u:

          v18 = 4;
          break;
        case 2u:

          v18 = 1;
          break;
        default:
          v19 = [v16 flags];

          if ((v19 & 0x8000) != 0)
          {
            v18 = 4;
          }

          else
          {
            v18 = 2;
          }

          break;
      }
    }

    else
    {

      v18 = 2;
    }

    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = a1;
    *(a2 + 24) = v18;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
  }

  else
  {
    __break(1u);
  }
}

char *sub_23711A9A0(char *a1, void *a2, void *a3)
{
  if (a2)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = a2;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *&a1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  *&a1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param] = v6;
  v9 = v6;

  sub_237152DA4();
  sub_237174C2C();

  v10 = [a3 tintColor];
  [a1 setTintColor_];

  v14[3] = type metadata accessor for AUGenericViewInternal();
  v14[4] = &off_284A39F40;
  v14[0] = a3;
  v11 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  v12 = a3;
  sub_23711BF50(v14, &a1[v11], &qword_27DE94968);
  swift_endAccess();
  return a1;
}

char *sub_23711AAD8(char *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94970);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23[-v10];
  if (a2)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = a2;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *&a1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  *&a1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param] = v12;
  v15 = v12;

  sub_237152DA4();
  sub_23714D784();

  v16 = sub_23719641C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a3, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  v18 = OBJC_IVAR____TtC12CoreAudioKit33AUGenericViewIntegerParameterCell_indexPath;
  swift_beginAccess();
  sub_23711BF50(v11, &a1[v18], &qword_27DE94970);
  swift_endAccess();
  v19 = [a4 tintColor];
  [a1 setTintColor_];

  v24[3] = type metadata accessor for AUGenericViewInternal();
  v24[4] = &off_284A39F40;
  v24[0] = a4;
  v20 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  v21 = a4;
  sub_23711BF50(v24, &a1[v20], &qword_27DE94968);
  swift_endAccess();
  return a1;
}

char *sub_23711AD20(char *a1, void *a2, void *a3)
{
  if (a2)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = a2;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *&a1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  *&a1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param] = v6;
  v9 = v6;

  sub_237152DA4();
  sub_23713D60C();

  v14[3] = type metadata accessor for AUGenericViewInternal();
  v14[4] = &off_284A39F40;
  v14[0] = a3;
  v10 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  v11 = a3;
  sub_23711BF50(v14, &a1[v10], &qword_27DE94968);
  swift_endAccess();
  if (sub_23719640C() >= 1)
  {
    v12 = [v11 tintColor];
    [a1 setTintColor_];
  }

  return a1;
}

char *sub_23711AE74(void *a1, unsigned __int8 a2, void *a3, uint64_t a4, char *a5)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      type metadata accessor for AUGenericViewHeaderCell();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94960);
      sub_2371965AC();
      v14 = sub_23719653C();

      v15 = sub_2371963AC();
      v16 = [a3 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v15];

      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_auAudioUnit;
        swift_beginAccess();
        v19 = *&a5[v18];
        v20 = *&v17[OBJC_IVAR____TtC12CoreAudioKit23AUGenericViewHeaderCell_audioUnit];
        *&v17[OBJC_IVAR____TtC12CoreAudioKit23AUGenericViewHeaderCell_audioUnit] = v19;
        v21 = v19;

        sub_23712E5F8();
LABEL_22:

        return v17;
      }

LABEL_19:

      return v17;
    }

    type metadata accessor for AUGenericViewBoolParameterCell();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94958);
    sub_2371965AC();
    v29 = sub_23719653C();

    v30 = sub_2371963AC();
    v11 = [a3 dequeueReusableCellWithReuseIdentifier:v29 forIndexPath:v30];

    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v13 = sub_23711A9A0(v31, a1, a5);
      goto LABEL_17;
    }

LABEL_18:

    return 0;
  }

  if (a2 == 2)
  {
    type metadata accessor for AUGenericViewFloatParameterCell();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94940);
    sub_2371965AC();
    v22 = sub_23719653C();

    v23 = sub_2371963AC();
    v11 = [a3 dequeueReusableCellWithReuseIdentifier:v22 forIndexPath:v23];

    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v13 = sub_23711AD20(v24, a1, a5);
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (a2 != 3)
  {
    type metadata accessor for AUGenericViewMeterParameterCell();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94948);
    sub_2371965AC();
    v25 = sub_23719653C();

    v26 = sub_2371963AC();
    v16 = [a3 dequeueReusableCellWithReuseIdentifier:v25 forIndexPath:v26];

    v17 = swift_dynamicCastClass();
    if (v17)
    {
      if (a1)
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = a1;
        }
      }

      else
      {
        v27 = 0;
      }

      v32 = *&v17[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
      *&v17[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param] = v27;
      v33 = v27;

      sub_237152DA4();
      sub_237148C10();

      v21 = [a5 tintColor];
      [v17 setTintColor_];
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  type metadata accessor for AUGenericViewIntegerParameterCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94950);
  sub_2371965AC();
  v9 = sub_23719653C();

  v10 = sub_2371963AC();
  v11 = [a3 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v10];

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = sub_23711AAD8(v12, a1, a4, a5);
LABEL_17:
  v17 = v13;

  return v17;
}

void sub_23711B2D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2 == 0xD00000000000001FLL && 0x800000023719E2E0 == a3 || (sub_237196A7C() & 1) != 0)
  {
    if (!sub_23719640C())
    {
      sub_237117A18();
      if (!v6 || (v6 >> 62 ? (v7 = sub_2371969FC()) : (v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v7 <= 0))
      {
        [a1 setHidden_];
      }
    }

    v8 = [v4 tintColor];
    [a1 setTintColor_];
  }
}

id sub_23711B410(void *a1, uint64_t a2)
{
  v5 = sub_2371964EC();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23719650C();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23719641C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AUGenericViewMeterParameterCell();
  result = [a1 isKindOfClass_];
  if (result)
  {
    v19 = OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_pathsNeedingPeriodicUpdates;
    v20 = *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_pathsNeedingPeriodicUpdates];

    v21 = sub_2371199A8(a2, v20);

    if (!v21)
    {
      (*(v14 + 16))(v17, a2, v13);
      v22 = *&v2[v19];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v2[v19] = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_237189CD8(0, v22[2] + 1, 1, v22);
        *&v2[v19] = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_237189CD8(v24 > 1, v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      result = (*(v14 + 32))(v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, v17, v13);
      *&v2[v19] = v22;
      if (!*&v2[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_scheduledUpdatesTimer])
      {
        sub_237115094(0, &qword_27DE94908);
        v26 = sub_23719678C();
        v27 = swift_allocObject();
        *(v27 + 16) = v2;
        aBlock[4] = sub_23711BE1C;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23714D540;
        aBlock[3] = &block_descriptor;
        v28 = _Block_copy(aBlock);
        v29 = v2;

        sub_2371964FC();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_23711BEF8(&qword_27DE94910, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94918);
        sub_23711BE3C();
        v30 = v34;
        sub_23719683C();
        MEMORY[0x2383C60F0](0, v12, v8, v28);
        _Block_release(v28);

        (*(v33 + 8))(v8, v30);
        return (*(v31 + 8))(v12, v32);
      }
    }
  }

  return result;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23711BC08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23711BC28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23711BC80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_23711BCDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23711BD50()
{
  result = qword_27DE94870;
  if (!qword_27DE94870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE94870);
  }

  return result;
}

_OWORD *sub_23711BDA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23711BDB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23711BE3C()
{
  result = qword_27DE94920;
  if (!qword_27DE94920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE94918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE94920);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23711BEF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23711BF50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_23711BFC0()
{
  result = qword_27DE94998;
  if (!qword_27DE94998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE94998);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AUGenericViewInternal.ParamType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AUGenericViewInternal.ParamType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23711C18C()
{
  result = qword_27DE949B8;
  if (!qword_27DE949B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE949B8);
  }

  return result;
}

id sub_23711C20C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
  v4 = -100.0;
  if (!*(v0 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_invert))
  {
    v4 = 0.0;
  }

  *(v3 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) = v4;
  *(v3 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed) = v4;
  v5 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yGrids;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yLabels;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8 >> 62)
  {
    sub_237115094(0, &qword_27DE95590);

    v9 = sub_2371969EC();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    sub_237196A8C();
    sub_237115094(0, &qword_27DE95590);
    v9 = v8;
  }

  result = sub_237195024(v9);
  v11 = v6;
  if (!(v6 >> 62))
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_15:

    v16 = MEMORY[0x277D84F90];
    *(v1 + v5) = MEMORY[0x277D84F90];

    *(v1 + v7) = v16;

    v17 = *(v1 + v2);
    sub_23711D8AC(v17);

    return sub_23711ED8C();
  }

  result = sub_2371969FC();
  v12 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2383C62A0](i, v11);
      }

      else
      {
        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      [v14 removeFromSuperlayer];
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_23711C45C()
{
  sub_2371813FC();
  *&v0[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins] = xmmword_23719B3A0;
  *(*&v0[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis] + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center) = 0;
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 labelColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = *&v3[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minorLine];
  *&v3[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minorLine] = v5;

  v7 = sub_23719653C();
  v32 = [objc_opt_self() bundleWithIdentifier_];

  if (v32)
  {
    v8 = v32;
    v9 = sub_23719653C();
    v10 = sub_23719653C();
    v11 = sub_23719653C();
    v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

    if (!v12)
    {
      sub_23719657C();
      v12 = sub_23719653C();
    }

    [v0 setAccessibilityLabel_];

    v13 = v8;
    v14 = sub_23719653C();
    v15 = sub_23719653C();
    v16 = sub_23719653C();
    v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

    if (!v17)
    {
      sub_23719657C();
      v17 = sub_23719653C();
    }
  }

  else
  {
    [v0 setAccessibilityLabel_];
    v17 = 0;
  }

  [v0 setAccessibilityHint_];

  [v0 setIsAccessibilityElement_];
  [v0 setAccessibilityTraits_];
  [v0 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v0 superview];
  if (!v26)
  {
    v26 = v0;
  }

  v34.origin.x = v19;
  v34.origin.y = v21;
  v34.size.width = v23;
  v34.size.height = v25;
  v27 = v26;
  v35 = UIAccessibilityConvertFrameToScreenCoordinates(v34, v26);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;

  [v0 setAccessibilityFrame_];
}

uint64_t sub_23711C838()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource;
  swift_beginAccess();
  sub_237120BA8(v0 + v1, &v16);
  if (!v17)
  {
    return sub_237120D04(&v16, &qword_27DE94AE0);
  }

  sub_237120C7C(&v16, v18);
  v3 = v19;
  v2 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v4 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityParam;
  v5 = (*(*(v2 + 8) + 8))(*(v0 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityParam), v3);
  v6 = v19;
  v7 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v8 = (*(*(v7 + 8) + 16))(*(v0 + v4), v6);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v11 = (*(*(v10 + 8) + 24))(*(v0 + v4), v9);
  if (v11 >= (v5 + ((v11 - v8) * 0.05)))
  {
    v12 = v5 + ((v11 - v8) * 0.05);
  }

  else
  {
    v12 = v11;
  }

  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  (*(*(v14 + 8) + 40))(*(v0 + v4), v13, v12);
  sub_2371208B8(*(v0 + v4));
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_23711CA34()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource;
  swift_beginAccess();
  sub_237120BA8(v0 + v1, &v16);
  if (!v17)
  {
    return sub_237120D04(&v16, &qword_27DE94AE0);
  }

  sub_237120C7C(&v16, v18);
  v3 = v19;
  v2 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v4 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityParam;
  v5 = (*(*(v2 + 8) + 8))(*(v0 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityParam), v3);
  v6 = v19;
  v7 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v8 = (*(*(v7 + 8) + 16))(*(v0 + v4), v6);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v11 = v5 + (((*(*(v10 + 8) + 24))(*(v0 + v4), v9) - v8) * -0.05);
  if (v11 >= v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  (*(*(v14 + 8) + 40))(*(v0 + v4), v13, v12);
  sub_2371208B8(*(v0 + v4));
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_23711CC30()
{
  v1 = sub_23719653C();
  v2 = [objc_opt_self() bundleWithIdentifier_];

  v3 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityParam;
  v4 = *MEMORY[0x277D76488];
  if (*&v0[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityParam] != 1)
  {
    if (v2)
    {
      v19 = v2;
      v20 = sub_23719653C();
      v21 = sub_23719653C();
      v22 = sub_23719653C();
      v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

      v24 = sub_23719657C();
      v26 = v25;

      v46 = v24;
      v47 = v26;
      v27 = sub_237196A6C();
      sub_237120D64(&v46);
      UIAccessibilityPostNotification(v4, v27);
      swift_unknownObjectRelease();
      v28 = v19;
      v29 = sub_23719653C();
      v30 = sub_23719653C();
      v31 = sub_23719653C();
      v32 = [v28 localizedStringForKey:v29 value:v30 table:{v31, v46, v47}];

      if (!v32)
      {
        sub_23719657C();
        v32 = sub_23719653C();
      }
    }

    else
    {
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
      v32 = 0;
    }

    [v0 setAccessibilityHint_];

    *&v0[v3] = 1;
    if (v2)
    {
      v40 = v2;
      v41 = sub_23719653C();
      v42 = sub_23719653C();
      v43 = sub_23719653C();
      v44 = [v40 localizedStringForKey:v41 value:v42 table:v43];

      if (!v44)
      {
        sub_23719657C();
        v44 = sub_23719653C();
      }
    }

    else
    {
      v44 = 0;
    }

    [v0 setAccessibilityLabel_];

    sub_23711D2A8(*&v0[v3]);
    v39 = &selRef_setAccessibilityValue_;
    goto LABEL_20;
  }

  if (v2)
  {
    v5 = v2;
    v6 = sub_23719653C();
    v7 = sub_23719653C();
    v8 = sub_23719653C();
    v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

    v10 = sub_23719657C();
    v12 = v11;

    v46 = v10;
    v47 = v12;
    v13 = sub_237196A6C();
    sub_237120D64(&v46);
    UIAccessibilityPostNotification(v4, v13);
    swift_unknownObjectRelease();
    *&v0[v3] = 2;
    v14 = v5;
    v15 = sub_23719653C();
    v16 = sub_23719653C();
    v17 = sub_23719653C();
    v18 = [v14 localizedStringForKey:v15 value:v16 table:{v17, v46, v47}];

    if (!v18)
    {
      sub_23719657C();
      v18 = sub_23719653C();
    }
  }

  else
  {
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    v18 = 0;
    *&v0[v3] = 2;
  }

  [v0 setAccessibilityLabel_];

  sub_23711D2A8(*&v0[v3]);
  v33 = sub_23719653C();

  [v0 setAccessibilityValue_];

  if (v2)
  {
    v34 = v2;
    v35 = sub_23719653C();
    v36 = sub_23719653C();
    v37 = sub_23719653C();
    v38 = [v34 localizedStringForKey:v35 value:v36 table:v37];

    if (!v38)
    {
      sub_23719657C();
      v39 = &selRef_setAccessibilityHint_;
LABEL_20:
      v38 = sub_23719653C();

      goto LABEL_21;
    }
  }

  else
  {
    v38 = 0;
  }

  v39 = &selRef_setAccessibilityHint_;
LABEL_21:
  [v0 *v39];

  return 1;
}

uint64_t sub_23711D2A8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource;
  swift_beginAccess();
  sub_237120BA8(v2 + v4, v22);
  if (!v23)
  {
    sub_237120D04(v22, &qword_27DE94AE0);
    return 0;
  }

  sub_237120C18(v22, v19);
  sub_237120D04(v22, &qword_27DE94AE0);
  v5 = v20;
  v6 = v21;
  __swift_project_boxed_opaque_existential_0(v19, v20);
  v7 = (*(*(v6 + 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (a1 == 2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityDecimalFormatter);
    v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v15 = v7;
    v11 = [v14 initWithFloat_];
    v12 = [v13 stringFromNumber_];
  }

  else
  {
    if (a1 != 1)
    {
      return 0;
    }

    v8 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityTimeFormatter);
    v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v10 = v7;
    v11 = [v9 initWithFloat_];
    v12 = [v8 stringFromNumber_];
  }

  v16 = v12;

  if (v16)
  {
    v17 = sub_23719657C();

    return v17;
  }

  return 0;
}

uint64_t sub_23711D470(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource;
  swift_beginAccess();
  sub_237120C94(a1, v1 + v3);
  swift_endAccess();
  v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 labelColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = *&v6[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_centerLine];
  *&v6[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_centerLine] = v8;

  sub_237181E84();
  sub_23711DDB0();
  return sub_237120D04(a1, &qword_27DE94AE0);
}

id sub_23711D578()
{
  v1 = v0;
  v27 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_zoomFactor;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_zoomFactor);
  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
  if (v2 == 1.0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_defaultMax);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_defaultMax) / v2;
  }

  *(v3 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max) = v4;
  *(v3 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed) = v4;
  *(v3 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed) = 0x40000000;
  v5 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xGrids;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xLabels;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8 >> 62)
  {
    sub_237115094(0, &qword_27DE95590);

    v9 = sub_2371969EC();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    sub_237196A8C();
    sub_237115094(0, &qword_27DE95590);
    v9 = v8;
  }

  sub_237195024(v9);
  v10 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGrids;
  swift_beginAccess();

  result = sub_237195024(v11);
  v13 = v6;
  if (v6 >> 62)
  {
    result = sub_2371969FC();
    v14 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2383C62A0](i, v13);
    }

    else
    {
      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    [v16 removeFromSuperlayer];
  }

LABEL_16:

  v18 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v19 = MEMORY[0x277D84F90];
  *(v1 + v5) = MEMORY[0x277D84F90];

  *(v1 + v7) = v19;

  *(v1 + v10) = v19;

  v20 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGridCount;
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGridCount) = 3;
  v21 = *(v1 + v27);
  if (v21 == 1.0)
  {
    *(v1 + v20) = 4;
  }

  else
  {
    if (v21 == 2.0 || v21 == 4.0)
    {
      v23 = *(v1 + v18);
      v24 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount;
      v25 = 9;
    }

    else
    {
      v23 = *(v1 + v18);
      v24 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount;
      if (v21 == 8.0)
      {
        v25 = 4;
      }

      else
      {
        v25 = 7;
      }
    }

    *(v23 + v24) = v25;
  }

  v26 = *(v1 + v18);
  sub_23711D8AC(v26);

  return sub_23711ED8C();
}

void sub_23711D8AC(uint64_t a1)
{
  v2 = v1;
  sub_237181FF0(a1);
  v4 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v5 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  v6 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name) == *(v5 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name) && *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8) == *(v5 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8);
  if (!v6 && (sub_237196A7C() & 1) == 0)
  {
    return;
  }

  v7 = *(v5 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGridCount];
  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 0)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v11)
  {
    v12 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGrids;
    do
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
      v14 = *(*&v2[v4] + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minorLine);
      if (v14)
      {
        v15 = [v14 CGColor];
      }

      else
      {
        v15 = 0;
      }

      [v13 setBackgroundColor_];

      swift_beginAccess();
      v16 = v13;
      MEMORY[0x2383C5F60]();
      if (*((*&v2[v12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((*&v2[v12] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23719664C();
      }

      sub_23719665C();
      swift_endAccess();
      v17 = [v2 layer];
      [v17 addSublayer_];

      --v11;
    }

    while (v11);
  }
}

void sub_23711DAB0()
{
  sub_237182D80();
  v30 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v29 = *(*(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v1 = 0;
    v2 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGridCount;
    v3 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGrids;
    v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
    while (1)
    {
      v5 = *(v0 + v2);
      if (v5 < 1)
      {
        break;
      }

      swift_beginAccess();
      v6 = 1;
      while (1)
      {
        v7 = *(v0 + v2);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
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
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v10 = ((1.0 / v9) * v6) + v1;
        v11 = *(v0 + v30);
        v12 = *&v11[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase];
        if (v12 == 0.0)
        {
          if (COERCE_UNSIGNED_INT(fabs(((1.0 / v9) * v6) + v1)) > 0x7F7FFFFF)
          {
            goto LABEL_36;
          }

          if (v10 <= -9.2234e18)
          {
            goto LABEL_37;
          }

          if (v10 >= 9.2234e18)
          {
            goto LABEL_38;
          }

          v13 = *&v11[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount];
          v8 = __OFADD__(v13, 1);
          v14 = v13 + 1;
          if (v8)
          {
            goto LABEL_39;
          }

          v15 = *&v11[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max];
          if (v14 >= v10)
          {
            v15 = *&v11[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] + (v10 * ((v15 - *&v11[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min]) / v14));
          }
        }

        else
        {
          v16 = *&v11[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min];
          v15 = v16 * powf(v12, v10);
        }

        v17 = v11;
        sub_237183E14(v17, v15);
        v19 = v18;

        v20 = *(v0 + v2);
        v21 = v1 * v20;
        if ((v1 * v20) >> 64 != (v1 * v20) >> 63)
        {
          goto LABEL_31;
        }

        v22 = v6 - 1;
        v23 = v21 + v6 - 1;
        if (__OFADD__(v21, v6 - 1))
        {
          goto LABEL_32;
        }

        v24 = *(v0 + v3);
        if ((v24 & 0xC000000000000001) != 0)
        {

          v25 = MEMORY[0x2383C62A0](v23, v24);
        }

        else
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (v23 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v25 = *(v24 + 8 * v23 + 32);
        }

        v26 = v22 + 1;
        [v4 frame];
        v28 = v27;
        [v4 frame];
        [v25 setFrame_];

        if (v26 == v5)
        {
          break;
        }

        v6 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_35;
        }
      }

      if (v1 == v29)
      {
        return;
      }

      v8 = __OFADD__(v1++, 1);
      if (v8)
      {
        __break(1u);
        return;
      }
    }

LABEL_40:
    __break(1u);
  }

  __break(1u);
}

void sub_23711DDB0()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 tintColor];
  v4 = sub_23711E094(v3);

  v5 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer;
  v6 = *&v1[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer] = v4;

  v7 = [v1 layer];
  [v7 addSublayer_];

  v8 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource;
  swift_beginAccess();
  sub_237120BA8(&v1[v8], v21);
  if (v22)
  {
    sub_237120C18(v21, v18);
    sub_237120D04(v21, &qword_27DE94AE0);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_0(v18, v19);
    v11 = (*(*(v10 + 8) + 8))(1, v9);
    __swift_destroy_boxed_opaque_existential_0(v18);
    if (v11 <= *(*&v1[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis] + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max))
    {
      v12 = [v2 tintColor];
      v13 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
      [v13 setFrame_];
      v14 = [v12 CGColor];
      [v13 setBackgroundColor_];

      [v13 setAnchorPoint_];
      v15 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_delayLayers;
      swift_beginAccess();
      v16 = v13;
      MEMORY[0x2383C5F60]();
      if (*((*&v1[v15] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v15] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
      }

      sub_23719665C();
      swift_endAccess();
      v17 = [v1 layer];
      [v17 addSublayer_];
    }
  }

  else
  {
    sub_237120D04(v21, &qword_27DE94AE0);
  }
}

id sub_23711E094(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v3 = sub_23719653C();
  [v2 setName_];

  v4 = [a1 colorWithAlphaComponent_];
  v5 = [v4 CGColor];

  [v2 setBackgroundColor_];
  [v2 setCornerRadius_];
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 26.0;
  v11.size.height = 26.0;
  v12 = CGRectIntegral(v11);
  [v2 setFrame_];
  [v2 setAnchorPoint_];
  v6 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v7 = sub_23719653C();
  [v6 setName_];

  v8 = [a1 CGColor];
  [v6 setBackgroundColor_];

  v9 = [v2 backgroundColor];
  [v2 setBorderColor_];

  [v6 setCornerRadius_];
  v13.origin.x = 7.0;
  v13.origin.y = 7.0;
  v13.size.width = 12.0;
  v13.size.height = 12.0;
  v14 = CGRectIntegral(v13);
  [v6 setFrame_];
  [v2 setZPosition_];
  [v2 addSublayer_];

  return v2;
}

uint64_t sub_23711E2D0()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource;
  swift_beginAccess();
  sub_237120BA8(&v2[v3], &v100);
  if (!v101)
  {
    return sub_237120D04(&v100, &qword_27DE94AE0);
  }

  sub_237120C7C(&v100, v102);
  v4 = v103;
  v5 = v104;
  __swift_project_boxed_opaque_existential_0(v102, v103);
  v6 = (*(*(v5 + 8) + 8))(2, v4);
  v7 = v103;
  v8 = v104;
  __swift_project_boxed_opaque_existential_0(v102, v103);
  v9 = (*(*(v8 + 8) + 8))(1, v7);
  v96 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v10 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  sub_237183E14(v10, v9);
  v12 = v11;

  v97 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
  v13 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
  sub_237183E14(v13, v6);
  v15 = v14;

  [*&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer] setPosition_];
  v16 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_delayLayers;
  swift_beginAccess();
  v17 = *&v2[v16];
  if (v17 >> 62)
  {
    goto LABEL_42;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return __swift_destroy_boxed_opaque_existential_0(v102);
  }

  while (1)
  {
    v18 = *&v2[v16];
    if ((v18 & 0xC000000000000001) == 0)
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v18 + 32);
        goto LABEL_7;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v46 = sub_2371969FC();
      v31 = v46 - 1;
      if (!__OFSUB__(v46, 1))
      {
        goto LABEL_19;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_2371969FC();
      v32 = *&v2[v16];
      if (result >= 2)
      {
        goto LABEL_22;
      }

LABEL_53:
      if (v32 >> 62)
      {
        v91 = sub_2371969FC();
        v48 = v91 - 1;
        if (!__OFSUB__(v91, 1))
        {
LABEL_55:
          if (v48 >= *&v99)
          {
            goto LABEL_67;
          }

          v49 = *&v2[v16];
          if (!(v49 >> 62))
          {
            v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v51 = v50 - 1;
            if (!__OFSUB__(v50, 1))
            {
              goto LABEL_58;
            }

            goto LABEL_111;
          }

LABEL_109:
          v92 = sub_2371969FC();
          v51 = v92 - 1;
          if (!__OFSUB__(v92, 1))
          {
LABEL_58:
            v52 = *&v99 - v51;
            if (!__OFSUB__(*&v99, v51))
            {
              if ((v52 & 0x8000000000000000) == 0)
              {
                if (v52)
                {
                  v53 = 0;
                  do
                  {
                    v54 = v53 + 1;
                    if (__OFADD__(v53, 1))
                    {
                      goto LABEL_95;
                    }

                    result = [v2 tintColor];
                    if (!result)
                    {
                      goto LABEL_118;
                    }

                    v55 = result;
                    v56 = [result colorWithAlphaComponent_];

                    v57 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
                    [v57 setFrame_];
                    v58 = [v56 CGColor];
                    [v57 setBackgroundColor_];

                    [v57 setAnchorPoint_];
                    v13 = v57;
                    v59 = [v2 layer];
                    [v59 addSublayer_];

                    v60 = swift_beginAccess();
                    MEMORY[0x2383C5F60](v60);
                    if (*((*&v2[v16] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v16] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_23719664C();
                    }

                    sub_23719665C();
                    swift_endAccess();
                    ++v53;
                  }

                  while (v54 != v52);
                }

LABEL_67:
                v61 = *&v2[v16];
                if (v61 >> 62)
                {
                  goto LABEL_96;
                }

                v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v18 = v62 - 1;
                if (__OFSUB__(v62, 1))
                {
                  goto LABEL_98;
                }

LABEL_69:
                v63 = *&v2[v16];
                if (v63 >> 62)
                {
                  goto LABEL_99;
                }

                if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
                {
                  goto LABEL_71;
                }

LABEL_100:

                return __swift_destroy_boxed_opaque_existential_0(v102);
              }

              goto LABEL_113;
            }

LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

LABEL_111:
          __break(1u);
          goto LABEL_112;
        }
      }

      else
      {
        v47 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v48 = v47 - 1;
        if (!__OFSUB__(v47, 1))
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_105:
      v65 = sub_2371969FC();
      v66 = v65 - 1;
      if (__OFSUB__(v65, 1))
      {
LABEL_107:
        __break(1u);
      }

      else
      {
        while (v66 >= 1)
        {
          v94 = 0.3 / v18;
          v67 = 1 - v65;
          v12 = 0.8;
          v68 = 5;
          v69 = v6;
          v93 = v9;
          while (!__OFADD__(v68 - 4, 1))
          {
            v70 = v6 * (v69 / 100.0);
            v71 = *&v2[v96];
            sub_237183E14(v71, v9 * (v68 - 3));
            v73 = v72;

            v74 = *&v2[v97];
            sub_237183E14(v74, v70);
            v76 = v75;

            v98 = v70;
            v77 = v70 <= 0.0;
            if (v70 <= 0.0)
            {
              v78 = v76;
            }

            else
            {
              v78 = v1;
            }

            if (v77)
            {
              Height = v1 - v76;
            }

            else
            {
              Height = v76 - v1;
            }

            v80 = v73 + -2.0;
            v105.size.width = 4.0;
            v105.origin.x = v73 + -2.0;
            v105.origin.y = v78;
            v105.size.height = Height;
            v99 = 4.0;
            v15 = v95;
            if (v95 < CGRectGetMinX(v105) + 4.0)
            {
              v106.size.width = 4.0;
              v106.origin.x = v80;
              v106.origin.y = v78;
              v106.size.height = Height;
              v81 = v95 - CGRectGetMinX(v106);
              if (v81 < 0.0)
              {
                v81 = 0.0;
              }

              v99 = v81;
              v107.size.width = 4.0;
              v107.origin.x = v80;
              v107.origin.y = v78;
              v107.size.height = Height;
              v82 = v6;
              MinX = CGRectGetMinX(v107);
              v108.size.width = 4.0;
              v108.origin.x = v80;
              v108.origin.y = v78;
              v108.size.height = Height;
              v15 = v1;
              MinY = CGRectGetMinY(v108);
              v109.size.width = 4.0;
              v109.origin.x = v80;
              v109.origin.y = v78;
              v109.size.height = Height;
              Height = CGRectGetHeight(v109);
              v80 = MinX;
              v6 = v82;
              v9 = v93;
              v78 = MinY;
              v1 = v15;
            }

            v85 = *&v2[v16];
            if ((v85 & 0xC000000000000001) != 0)
            {

              v86 = MEMORY[0x2383C62A0](v68 - 4, v85);
            }

            else
            {
              if ((v68 - 4) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_94;
              }

              v86 = *(v85 + 8 * v68);
            }

            v13 = v86;
            result = [v2 tintColor];
            if (!result)
            {
              goto LABEL_117;
            }

            v87 = result;
            v12 = v12 - v94;
            v88 = [result colorWithAlphaComponent_];

            v89 = [v88 CGColor];
            [v13 setBackgroundColor_];

            [v13 setFrame_];
            ++v68;
            v69 = v98;
            if (v67 + v68 == 5)
            {
              goto LABEL_100;
            }
          }

          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          v90 = sub_2371969FC();
          v18 = v90 - 1;
          if (!__OFSUB__(v90, 1))
          {
            goto LABEL_69;
          }

LABEL_98:
          __break(1u);
LABEL_99:
          if (sub_2371969FC() < 2)
          {
            goto LABEL_100;
          }

LABEL_71:
          v64 = *&v2[v16];
          if (v64 >> 62)
          {
            goto LABEL_105;
          }

          v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v66 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            goto LABEL_107;
          }
        }
      }

      __break(1u);
      goto LABEL_109;
    }

    v13 = MEMORY[0x2383C62A0](0, v18);

LABEL_7:
    v19 = *&v2[v97];
    sub_237183E14(v19, 0.0);
    v1 = v20;

    if (v6 <= 0.0)
    {
      v21 = v15;
    }

    else
    {
      v21 = v1;
    }

    if (v6 <= 0.0)
    {
      v22 = v1 - v15;
    }

    else
    {
      v22 = v15 - v1 + -1.0;
    }

    [v13 setFrame_];
    if (v9 <= 0.0)
    {
      goto LABEL_100;
    }

    v23 = *&v2[v96];
    v24 = *&v23[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max];
    v25 = v23;
    v18 = v2;
    sub_237183E14(v25, v24);
    v27 = v26;

    v95 = v27;
    [*&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer] frame];
    v15 = floor((v27 - v12) / (v12 - v28));
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_46;
    }

    if (v15 <= -9.22337204e18)
    {
      goto LABEL_47;
    }

    if (v15 >= 9.22337204e18)
    {
      goto LABEL_48;
    }

    v29 = *&v2[v16];
    if (v29 >> 62)
    {
      goto LABEL_49;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
      goto LABEL_51;
    }

LABEL_19:
    v32 = *&v2[v16];
    *&v99 = v15;
    if (v31 <= v15)
    {
      goto LABEL_53;
    }

    if (v32 >> 62)
    {
      goto LABEL_52;
    }

    result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      goto LABEL_53;
    }

LABEL_22:
    if (!(v32 >> 62))
    {
      v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v34 - 1;
      if (__OFSUB__(v34, 1))
      {
        break;
      }

      goto LABEL_24;
    }

LABEL_114:
    result = sub_2371969FC();
    v34 = result;
    v35 = result - 1;
    if (__OFSUB__(result, 1))
    {
      break;
    }

LABEL_24:
    if (v35 <= *&v99)
    {
      goto LABEL_67;
    }

    v36 = -v34;
    while (1)
    {
      v37 = v34 - 1;
      v38 = *&v2[v16];
      if ((v38 & 0xC000000000000001) != 0)
      {

        v39 = MEMORY[0x2383C62A0](v34 - 1, v38);

        goto LABEL_30;
      }

      if ((v37 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v37 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v39 = *(v38 + 8 * v34 + 24);
LABEL_30:
      [v39 removeFromSuperlayer];

      swift_beginAccess();
      v40 = *&v2[v16];
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *&v2[v16] = v40;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v40 & 0x8000000000000000) != 0 || (v40 & 0x4000000000000000) != 0)
      {
        v40 = sub_237186F8C(v40);
        *&v2[v16] = v40;
      }

      v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37 >= v42)
      {
        goto LABEL_40;
      }

      v43 = v42 - 1;
      v44 = *((v40 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x18);
      memmove(((v40 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 24), ((v40 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 32), 8 * (v36 + v42));
      *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) = v43;
      *&v2[v16] = v40;
      swift_endAccess();

      v45 = v34 - 2;
      ++v36;
      --v34;
      if (v45 <= *&v99)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    if (sub_2371969FC() < 1)
    {
      return __swift_destroy_boxed_opaque_existential_0(v102);
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
  return result;
}

id sub_23711ED8C()
{
  sub_2371830D4();
  [v0 frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 superview];
  if (!v9)
  {
    v9 = v0;
  }

  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  v10 = v9;
  v21 = UIAccessibilityConvertFrameToScreenCoordinates(v20, v9);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;

  [v0 setAccessibilityFrame_];
  v15 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_animateChanges;
  if ((*(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_animateChanges) & 1) == 0)
  {
    v16 = objc_opt_self();
    [v16 begin];
    [v16 setDisableActions_];
  }

  result = sub_23711E2D0();
  if ((*(v0 + v15) & 1) == 0)
  {
    v18 = objc_opt_self();

    return [v18 commit];
  }

  return result;
}

void sub_23711EED8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_2371905D4(2019650936, 0xE400000000000000);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
      v8 = *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed];
      v9 = v7;
      sub_237183E14(v9, v8);
      v11 = v10;

      v12 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
      [v12 frame];
      v14 = v13 + 1.0;
      [v12 frame];
      [v6 setFrame_];
    }

    else
    {
    }
  }
}

void sub_23711F024(uint64_t a1, uint64_t a2)
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v5 = sub_2371966CC();
  v25.receiver = v2;
  v25.super_class = type metadata accessor for AUDelayGraphView();
  objc_msgSendSuper2(&v25, sel_touchesBegan_withEvent_, v5, a2);

  v6 = sub_237181180(a1);
  if (v6)
  {
    v7 = v6;
    [v6 locationInView_];
    v9 = v8;
    v11 = v10;
    v12 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer;
    [*&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer] frame];
    v26.x = v9;
    v26.y = v11;
    if (CGRectContainsPoint(v27, v26))
    {
      v13 = [objc_opt_self() systemRedColor];
      v14 = *&v2[v12];
      v15 = [v13 colorWithAlphaComponent_];
      v16 = [v15 CGColor];

      [v14 setBackgroundColor_];
      v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_graphActivated] = 1;
      v17 = sub_23719653C();
      v18 = objc_opt_self();
      v19 = [v18 defaultCenter];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23719B020;
      sub_23719690C();
      *(inited + 96) = MEMORY[0x277D84CC0];
      *(inited + 72) = 1;
      sub_237119F04(inited);
      swift_setDeallocating();
      sub_237120D04(inited + 32, &qword_27DE948B0);
      v21 = sub_23719651C();

      [v19 postNotificationName:v17 object:v2 userInfo:v21];

      v22 = [v18 defaultCenter];
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_23719B020;
      sub_23719690C();
      *(v23 + 96) = MEMORY[0x277D84CC0];
      *(v23 + 72) = 2;
      sub_237119F04(v23);
      swift_setDeallocating();
      sub_237120D04(v23 + 32, &qword_27DE948B0);
      v24 = sub_23719651C();

      [v22 postNotificationName:v17 object:v2 userInfo:v24];
    }
  }
}

void *sub_23711F414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v6 = sub_2371966CC();
  v52.receiver = v3;
  v52.super_class = type metadata accessor for AUDelayGraphView();
  objc_msgSendSuper2(&v52, sel_touchesMoved_withEvent_, v6, a2);

  result = sub_237181180(a1);
  if (result)
  {
    v8 = result;
    [result locationInView_];
    v10 = v9;
    v12 = v11;
    if ((v3[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_graphActivated] & 1) == 0)
    {
      v3[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_graphActivated] = 1;
      v13 = sub_23719653C();
      v14 = objc_opt_self();
      v15 = [v14 defaultCenter];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23719B020;
      sub_23719690C();
      *(inited + 96) = MEMORY[0x277D84CC0];
      *(inited + 72) = 1;
      sub_237119F04(inited);
      swift_setDeallocating();
      sub_237120D04(inited + 32, &qword_27DE948B0);
      v17 = sub_23719651C();

      [v15 postNotificationName:v13 object:v3 userInfo:v17];

      v18 = [v14 defaultCenter];
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_23719B020;
      v49[0] = 0x6D61726170;
      v49[1] = 0xE500000000000000;
      sub_23719690C();
      *(v19 + 96) = MEMORY[0x277D84CC0];
      *(v19 + 72) = 2;
      sub_237119F04(v19);
      swift_setDeallocating();
      sub_237120D04(v19 + 32, &qword_27DE948B0);
      v20 = sub_23719651C();

      [v18 postNotificationName:v13 object:v3 userInfo:v20];
    }

    v21 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource;
    swift_beginAccess();
    sub_237120BA8(&v3[v21], &v47);
    if (v48)
    {
      sub_237120C7C(&v47, v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94AE8);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_23719B040;
      v23 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
      sub_237183B90(v23, v10);
      v25 = v24;

      *(v22 + 32) = v25;
      v26 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
      sub_237183B90(v26, v12);
      v28 = v27;

      *(v22 + 36) = v28;
      v29 = v50;
      v30 = v51;
      __swift_project_boxed_opaque_existential_0(v49, v50);
      v31 = (*(*(v30 + 8) + 16))(1, v29);
      v32 = v50;
      v33 = v51;
      __swift_project_boxed_opaque_existential_0(v49, v50);
      (*(*(v33 + 8) + 24))(1, v32);
      if (v25 >= v31)
      {
        if (v34 >= v25)
        {
          goto LABEL_9;
        }

        v31 = v34;
      }

      *(v22 + 32) = v31;
LABEL_9:
      v35 = v50;
      v36 = v51;
      result = __swift_project_boxed_opaque_existential_0(v49, v50);
      v37 = *(v22 + 16);
      if (v37)
      {
        (*(*(v36 + 8) + 40))(1, v35, *(v22 + 32));
        sub_2371208B8(1);
        v38 = v50;
        v39 = v51;
        __swift_project_boxed_opaque_existential_0(v49, v50);
        v40 = (*(*(v39 + 8) + 16))(2, v38);
        v41 = v50;
        v42 = v51;
        __swift_project_boxed_opaque_existential_0(v49, v50);
        result = (*(*(v42 + 8) + 24))(2, v41);
        if (v37 != 1)
        {
          v44 = *(v22 + 36);
          if (v44 >= v40)
          {
            if (v43 >= v44)
            {
              goto LABEL_15;
            }

            v40 = v43;
          }

          *(v22 + 36) = v40;
LABEL_15:
          v45 = v50;
          v46 = v51;
          result = __swift_project_boxed_opaque_existential_0(v49, v50);
          if (*(v22 + 16) >= 2uLL)
          {
            (*(*(v46 + 8) + 40))(2, v45, *(v22 + 36));
            sub_2371208B8(2);

            swift_setDeallocating();
            return __swift_destroy_boxed_opaque_existential_0(v49);
          }

          goto LABEL_21;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    return sub_237120D04(&v47, &qword_27DE94AE0);
  }

  return result;
}

uint64_t sub_23711FA08(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v8 = sub_2371966DC();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_23711FAB8(uint64_t a1, uint64_t a2)
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v4 = sub_2371966CC();
  v18.receiver = v2;
  v18.super_class = type metadata accessor for AUDelayGraphView();
  objc_msgSendSuper2(&v18, sel_touchesEnded_withEvent_, v4, a2);

  v5 = [objc_opt_self() tintColor];
  v6 = *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer];
  v7 = [v5 colorWithAlphaComponent_];
  v8 = [v7 CGColor];

  [v6 setBackgroundColor_];
  v9 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_graphActivated;
  if (v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_graphActivated] == 1)
  {
    v10 = sub_23719653C();
    v11 = objc_opt_self();
    v12 = [v11 defaultCenter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23719B020;
    sub_23719690C();
    *(inited + 96) = MEMORY[0x277D84CC0];
    *(inited + 72) = 1;
    sub_237119F04(inited);
    swift_setDeallocating();
    sub_237120D04(inited + 32, &qword_27DE948B0);
    v14 = sub_23719651C();

    [v12 postNotificationName:v10 object:v2 userInfo:v14];

    v15 = [v11 defaultCenter];
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_23719B020;
    sub_23719690C();
    *(v16 + 96) = MEMORY[0x277D84CC0];
    *(v16 + 72) = 2;
    sub_237119F04(v16);
    swift_setDeallocating();
    sub_237120D04(v16 + 32, &qword_27DE948B0);
    v17 = sub_23719651C();

    [v15 postNotificationName:v10 object:v2 userInfo:v17];

    v2[v9] = 0;
  }
}

void sub_23711FE5C()
{
  v1 = [*&v0[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer] sublayers];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  sub_237115094(0, &qword_27DE95590);
  v3 = sub_23719663C();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!sub_2371969FC())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v3 + 32); ; i = MEMORY[0x2383C62A0](0, v3))
    {
      v5 = i;

      v6 = [objc_opt_self() tintColor];
      v7 = [v6 CGColor];

      [v5 setBackgroundColor_];
LABEL_10:
      v3 = objc_opt_self();
      v8 = [v3 tintColor];
      [v0 setTintColor_];

      v9 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_delayLayers;
      swift_beginAccess();
      v10 = *&v0[v9];
      if (v10 >> 62)
      {
        if (sub_2371969FC() < 1)
        {
          return;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        return;
      }

      v11 = *&v0[v9];
      if ((v11 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v11 + 32);
        goto LABEL_15;
      }

      __break(1u);
LABEL_21:
      ;
    }

    v12 = MEMORY[0x2383C62A0](0, v11);

LABEL_15:
    v13 = [v3 tintColor];
    v14 = [v13 CGColor];

    [v12 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id sub_237120120(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_23719639C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v5[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_delayLayers] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_defaultMax] = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGridCount] = 4;
  v5[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_graphActivated] = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityParam] = 1;
  v16 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityTimeFormatter;
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB8]) &selRef_init];
  [v17 setGeneratesDecimalNumbers_];
  [v17 setMaximumFractionDigits_];
  [v17 setMinimumFractionDigits_];
  sub_23719638C();
  v18 = sub_23719635C();
  v19 = *(v11 + 8);
  v19(v14, v10);
  [v17 setLocale_];

  *&v5[v16] = v17;
  v20 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityDecimalFormatter;
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v21 setGeneratesDecimalNumbers_];
  [v21 setMaximumFractionDigits_];
  [v21 setMinimumFractionDigits_];
  sub_23719638C();
  v22 = sub_23719635C();
  v19(v14, v10);
  [v21 setLocale_];

  *&v5[v20] = v21;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGrids] = MEMORY[0x277D84F90];
  v5[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_invert] = 0;
  v23 = &v5[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_zoomFactor] = 1065353216;
  v24 = type metadata accessor for AUDelayGraphView();
  v26.receiver = v5;
  v26.super_class = v24;
  return objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_237120438(void *a1)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_23719639C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_delayLayers] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_defaultMax] = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGridCount] = 4;
  v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_graphActivated] = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityParam] = 1;
  v9 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityTimeFormatter;
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB8]) &selRef_init];
  [v10 setGeneratesDecimalNumbers_];
  [v10 setMaximumFractionDigits_];
  [v10 setMinimumFractionDigits_];
  sub_23719638C();
  v11 = sub_23719635C();
  v12 = *(v4 + 8);
  v12(v7, v3);
  [v10 setLocale_];

  *&v2[v9] = v10;
  v13 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_accessibilityDecimalFormatter;
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v14 setGeneratesDecimalNumbers_];
  [v14 setMaximumFractionDigits_];
  [v14 setMinimumFractionDigits_];
  sub_23719638C();
  v15 = sub_23719635C();
  v12(v7, v3);
  [v14 setLocale_];

  *&v2[v13] = v14;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_xMinorGrids] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_invert] = 0;
  v16 = &v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_zoomFactor] = 1065353216;
  v17 = type metadata accessor for AUDelayGraphView();
  v23.receiver = v2;
  v23.super_class = v17;
  v18 = v22;
  v19 = objc_msgSendSuper2(&v23, sel_initWithCoder_, v22);

  if (v19)
  {
  }

  return v19;
}

uint64_t sub_23712074C()
{

  return sub_237120D04(v0 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource, &qword_27DE94AE0);
}

id sub_2371207D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUDelayGraphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2371208B8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions_];
  if (a1 == 2)
  {
    v16 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource;
    swift_beginAccess();
    sub_237120BA8(&v2[v16], v30);
    if (v31)
    {
      sub_237120C18(v30, v27);
      sub_237120D04(v30, &qword_27DE94AE0);
      v17 = v28;
      v18 = v29;
      __swift_project_boxed_opaque_existential_0(v27, v28);
      v19 = (*(*(v18 + 8) + 8))(2, v17);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v11 = *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer];
      [v11 position];
      v21 = v20;
      v22 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
      sub_237183E14(v22, v19);
      v24 = v23;

      [v11 setPosition_];
      goto LABEL_7;
    }

LABEL_8:
    sub_237120D04(v30, &qword_27DE94AE0);
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v5 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_dataSource;
    swift_beginAccess();
    sub_237120BA8(&v2[v5], v30);
    if (v31)
    {
      sub_237120C18(v30, v27);
      sub_237120D04(v30, &qword_27DE94AE0);
      v6 = v28;
      v7 = v29;
      __swift_project_boxed_opaque_existential_0(v27, v28);
      v8 = (*(*(v7 + 8) + 8))(1, v6);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v9 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer;
      v10 = *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
      v11 = *&v2[OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_pointLayer];
      v12 = v10;
      sub_237183E14(v12, v8);
      v14 = v13;

      [*&v2[v9] position];
      [v11 setPosition_];
LABEL_7:

      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  sub_23711D2A8(a1);
  v25 = sub_23719653C();

  [v2 setAccessibilityValue_];

  sub_23711E2D0();
  return [v4 commit];
}

uint64_t sub_237120BA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237120C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_237120C7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_237120C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94AE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_237120D04(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_237120DB8()
{
  v1 = v0;
  v2 = sub_23712F040();
  v3 = sub_23719342C();

  v4 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  v5 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
  v6 = *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
  v7 = sub_23719342C();

  v8 = *&v7[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = -1046478848;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = -1046478848;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1109393408;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1109393408;
  *&v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 5;
  type metadata accessor for AUAppleViewControllerBase();
  v9 = sub_237175EDC();
  v46 = v8;
  v10 = &v8[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v10 = v9;
  v10[1] = v11;

  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = 1086324736;
  v12 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1186988032;
  v13 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1186988032;
  *&v4[v12] = 1092616192;
  *&v4[v13] = sub_237130920(0);
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase] = 0x40000000;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 11;
  v14 = sub_237175EDC();
  v15 = &v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v15 = v14;
  v15[1] = v16;

  sub_23712EA30();
  v17 = *&v1[v5];
  v18 = sub_23719342C();

  v47[3] = type metadata accessor for AUHighpassViewController();
  v47[4] = &off_284A3A7C0;
  v47[0] = v1;
  v19 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  v1;
  sub_23710FAE0(v47, v18 + v19);
  swift_endAccess();
  sub_23716A678();

  sub_23710FB50(v47);
  v20 = *&v1[v5];
  v21 = sub_23719342C();

  v45 = sub_23716832C(0, 1);
  v44 = v5;
  v22 = *&v1[v5];
  v23 = sub_237193370();

  v24 = sub_237175EDC();
  v26 = v25;
  v27 = sub_237175EDC();
  v29 = v28;
  v30 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v31 = *&v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  v32 = sub_23719653C();
  [v31 setText_];

  [*&v23[v30] setAccessibilityTraits_];
  v33 = *&v23[v30];
  v34 = v45;
  v35 = sub_23719653C();
  [v33 setAccessibilityLabel_];

  v36 = &v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v36 = v24;
  v36[1] = v26;

  v37 = &v23[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  *v37 = v27;
  v37[1] = v29;

  sub_23712F904(0);
  sub_23712FD40(1);
  if (v45)
  {
    v38 = *&v45[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
    if (v38)
    {
      v39 = *&v1[v44];
      v40 = v38;
      v41 = v39;
      v42 = sub_23719342C();

      v43 = [v42 layer];
      [v43 addSublayer_];

      v34 = v43;
    }
  }
}

uint64_t sub_237121218(unsigned int a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

uint64_t sub_23712129C(unsigned int a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

id sub_2371213C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUHighpassViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23712141C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    for (i = (a2 + 48); ; i += 7)
    {
      v7 = *(i - 1) == v4 && *i == v5;
      if (v7 || (sub_237196A7C() & 1) != 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

id sub_2371214A8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_2371214F0();
    *(v0 + 40) = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

id sub_2371214F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  [v0 setContentsScale_];
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [v6 CGColor];
  [v0 setBackgroundColor_];

  v8 = [v4 secondaryLabelColor];
  v9 = [v8 CGColor];

  [v0 setBorderColor_];
  [v0 setBorderWidth_];
  return v0;
}

id sub_237121674(void *a1)
{
  sub_237114D0C(a1, v10);
  type metadata accessor for AUVerticalTabView();
  v3 = swift_dynamicCast();
  v4 = v9;
  if (!v3)
  {
    v4 = 0;
  }

  *&v1[OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_owner] = v4;
  *&v1[OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_index] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_237196A6C();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AUVerticalTabView.TabAccessibilityElement();
  v6 = objc_msgSendSuper2(&v8, sel_initWithAccessibilityContainer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

void sub_237121794(void *a1, uint64_t a2)
{
  v69 = *a2;
  v5 = *(a2 + 16);
  v57 = *(a2 + 24);
  v62 = *(a2 + 32);
  v64 = *(a2 + 40);
  v65 = *(a2 + 8);
  v63 = *(a2 + 48);
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_owner] = a1;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_index] = 0;
  v75.receiver = v2;
  v75.super_class = type metadata accessor for AUVerticalTabView.TabAccessibilityElement();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v75, sel_initWithAccessibilityContainer_, v6);
  v67 = OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_owner;
  v8 = *&v7[OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_owner];
  if (!v8)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v9 = v7;
  v56 = v6;
  v66 = a2;
  v10 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
  swift_beginAccess();
  v61 = *(*(v8 + v10) + 16);
  if (v61)
  {
    v59 = v5;
    v55 = v9;
    v11 = 0;
    v12 = 0;
    v60 = v9;
    v13 = v57;
    while (1)
    {
      v14 = *&v9[v67];
      if (!v14)
      {
        break;
      }

      v15 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
      swift_beginAccess();
      v16 = *(v14 + v15);
      v17 = v65;
      if (v12 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v18 = v16 + v11;
      v19 = *(v18 + 32);
      v14 = *(v18 + 40);
      v21 = *(v18 + 48);
      v20 = *(v18 + 56);
      v68 = *(v18 + 64);
      v22 = *(v18 + 72);
      v23 = *(v18 + 80);
      v24 = v19;

      v25 = v20;
      v26 = v22;
      v27 = v23;
      if (!v19)
      {
        goto LABEL_17;
      }

      if (!v69)
      {
        goto LABEL_4;
      }

      if (v14 == v65 && v21 == v59)
      {
        sub_237123B4C(v66, &v71);
        sub_237123BB4(v69, v65, v59, v57, v62 & 1, v64, v63);
        v30 = v19;
        v31 = v65;
        goto LABEL_22;
      }

      v58 = sub_237196A7C();
      sub_237123B4C(v66, &v71);
      v13 = v57;
      sub_237123BB4(v69, v65, v59, v57, v62 & 1, v64, v63);
      sub_237123BB4(v19, v14, v21, v20, v68, v22, v23);
      if (v58)
      {
        goto LABEL_23;
      }

LABEL_5:
      ++v12;
      v11 += 56;
      v9 = v60;
      if (v61 == v12)
      {
        goto LABEL_24;
      }
    }

    v23 = 0;
    v22 = 0;
    v68 = 0;
    v20 = 0;
    v21 = 0;
    v17 = v65;
LABEL_17:
    if (!v69)
    {
      sub_237123B4C(v66, &v71);
      v30 = 0;
      v31 = v14;
LABEL_22:
      sub_237123BB4(v30, v31, v21, v20, v68, v22, v23);
LABEL_23:
      *&v55[OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_index] = v12;
      v9 = v60;
      goto LABEL_24;
    }

    v19 = 0;
LABEL_4:
    sub_237123B4C(v66, &v71);
    sub_237123BB4(v19, v14, v21, v20, v68, v22, v23);
    sub_237123BB4(v69, v17, v59, v13, v62 & 1, v64, v63);
    goto LABEL_5;
  }

  v29 = v9;
LABEL_24:
  v32 = sub_23719653C();
  [v9 setAccessibilityLabel_];

  v33 = *&v9[v67];
  if (!v33)
  {
    goto LABEL_31;
  }

  v34 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
  swift_beginAccess();
  v35 = sub_23712141C(v66, *(v33 + v34)) != *(v33 + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex);
  if ((v36 | v35))
  {
    v37 = MEMORY[0x277D76578];
  }

  else
  {
    v37 = MEMORY[0x277D76598];
  }

  v38 = *v37;
  v39 = v9;
  [v39 setAccessibilityTraits_];
  v40 = *(v66 + 16);
  v71 = *v66;
  v72 = v40;
  v73 = *(v66 + 32);
  v74 = *(v66 + 48);
  v41 = v39;
  sub_237123B4C(v66, v70);
  v42 = sub_2371214A8();
  [v42 frame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  [v41 setAccessibilityFrameInContainerSpace_];
  sub_237123B84(v66);

  v51 = v71;
  v52 = *(&v72 + 1);
  v53 = *(&v73 + 1);
  v54 = v74;
}

void sub_237121C30()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_owner];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex;
  v4 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex);
  v5 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_accessibleElements;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x2383C62A0](v4, v6);

    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v7 = *(v6 + 8 * v4 + 32);
LABEL_6:
  [v7 setAccessibilityTraits_];
  v8 = OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_index;
  v9 = *&v1[OBJC_IVAR____TtCC12CoreAudioKit17AUVerticalTabView23TabAccessibilityElement_index];
  v10 = *(v2 + v3);
  *(v2 + v3) = v9;
  v11 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
  swift_beginAccess();
  if (v9 >= *(*(v2 + v11) + 16))
  {
    *(v2 + v3) = v10;
  }

  else
  {
    sub_237122A10();
  }

  [v1 setAccessibilityTraits_];
  v12 = sub_23719653C();
  v13 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B020;
  sub_23719690C();
  v15 = *&v1[v8];
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v15;
  sub_237119F04(inited);
  swift_setDeallocating();
  sub_237123AE4(inited + 32);
  v16 = sub_23719651C();

  [v13 postNotificationName:v12 object:v2 userInfo:v16];
}