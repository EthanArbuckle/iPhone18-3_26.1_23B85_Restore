uint64_t _s26AIMLInstrumentationStreams018ToolKitProtoSystemC12ProtocolKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v112 = a1;
  v113 = a2;
  v100 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  v2 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v108 = (&v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = (&v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  v10 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v106 = (&v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  v12 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v107 = (&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  v14 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v103 = (&v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  v16 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v102 = (&v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  v18 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v101 = (&v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v20 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v97 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v111 = (&v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v93 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v93 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v109 = (&v93 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v110 = (&v93 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = (&v93 - v37);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = (&v93 - v40);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = (&v93 - v43);
  MEMORY[0x28223BE20](v42);
  v46 = &v93 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE90, &qword_23C88DAD8);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v51 = &v93 - v50;
  v52 = *(v49 + 56);
  sub_23C73EA70(v112, &v93 - v50, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  v112 = v52;
  sub_23C73EA70(v113, &v51[v52], type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v51, v44, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v74 = v112;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
        v55 = v44;
        goto LABEL_159;
      }

      v75 = v101;
      sub_23C73E9B0(&v51[v74], v101, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      if (sub_23C5D25E0(*v44, *v75))
      {
        v76 = *(v94 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v64 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
          sub_23C73E950(v75, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
          v65 = v44;
          goto LABEL_111;
        }
      }

      v85 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
      sub_23C73E950(v75, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      v86 = v44;
      goto LABEL_172;
    case 2u:
      sub_23C73EA70(v51, v41, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v61 = v112;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
        v55 = v41;
        goto LABEL_159;
      }

      v62 = v102;
      sub_23C73E9B0(&v51[v61], v102, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      if (sub_23C5D25E0(*v41, *v62))
      {
        v63 = *(v95 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v64 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
          sub_23C73E950(v62, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
          v65 = v41;
          goto LABEL_111;
        }
      }

      v85 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
      sub_23C73E950(v62, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      v86 = v41;
      goto LABEL_172;
    case 3u:
      sub_23C73EA70(v51, v38, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v66 = v112;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
        v55 = v38;
        goto LABEL_159;
      }

      v67 = v103;
      sub_23C73E9B0(&v51[v66], v103, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      if (*v38 == *v67 && v38[1] == v67[1] || (sub_23C872014() & 1) != 0)
      {
        v68 = *(v98 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v64 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
          sub_23C73E950(v67, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
          v65 = v38;
          goto LABEL_111;
        }
      }

      v85 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
      sub_23C73E950(v67, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      v86 = v38;
      goto LABEL_172;
    case 4u:
      v56 = v110;
      sub_23C73EA70(v51, v110, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v57 = v112;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v83 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
        goto LABEL_158;
      }

      v58 = v107;
      sub_23C73E9B0(&v51[v57], v107, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      if (*v56 == *v58 && v56[1] == v58[1] || (sub_23C872014()) && (v56[2] == v58[2] && v56[3] == v58[3] || (sub_23C872014()))
      {
        v59 = *(v96 + 24);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v60 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
          goto LABEL_110;
        }
      }

      v88 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
      goto LABEL_171;
    case 5u:
      v56 = v109;
      sub_23C73EA70(v51, v109, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v77 = v112;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v83 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
        goto LABEL_158;
      }

      v58 = v106;
      sub_23C73E9B0(&v51[v77], v106, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      if (*v56 == *v58 && v56[1] == v58[1] || (sub_23C872014() & 1) != 0)
      {
        v78 = *(v99 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v60 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
          goto LABEL_110;
        }
      }

      v88 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
      goto LABEL_171;
    case 6u:
      sub_23C73EA70(v51, v31, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v79 = v112;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v80 = v104;
        sub_23C73E9B0(&v51[v79], v104, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
        v71 = _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV16IntentSideEffectV2eeoiySbAE_AEtFZ_0(v31, v80);
        v72 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect;
        sub_23C73E950(v80, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
        v73 = v31;
        goto LABEL_99;
      }

      v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect;
      v55 = v31;
      goto LABEL_159;
    case 7u:
      sub_23C73EA70(v51, v28, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v69 = v112;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema;
        v55 = v28;
        goto LABEL_159;
      }

      v70 = v105;
      sub_23C73E9B0(&v51[v69], v105, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v71 = _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(v28, v70);
      v72 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema;
      sub_23C73E950(v70, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v73 = v28;
LABEL_99:
      sub_23C73E950(v73, v72);
      sub_23C73E950(v51, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      return v71 & 1;
    case 8u:
      v56 = v111;
      sub_23C73EA70(v51, v111, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v81 = v112;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v83 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_158:
        v54 = v83;
        v55 = v56;
        goto LABEL_159;
      }

      v58 = v108;
      sub_23C73E9B0(&v51[v81], v108, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      if (*v56 == *v58 && v56[1] == v58[1] || (sub_23C872014() & 1) != 0)
      {
        v82 = *(v100 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v60 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_110:
          v64 = v60;
          sub_23C73E950(v58, v60);
          v65 = v56;
LABEL_111:
          sub_23C73E950(v65, v64);
          goto LABEL_149;
        }
      }

      v88 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_171:
      v85 = v88;
      sub_23C73E950(v58, v88);
      v86 = v56;
LABEL_172:
      v89 = v85;
      goto LABEL_173;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Fu:
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x20u:
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x23u:
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x24u:
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() != 39)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() != 43)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Cu:
      if (swift_getEnumCaseMultiPayload() != 44)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Du:
      if (swift_getEnumCaseMultiPayload() != 45)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Eu:
      if (swift_getEnumCaseMultiPayload() != 46)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Fu:
      if (swift_getEnumCaseMultiPayload() != 47)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x30u:
      if (swift_getEnumCaseMultiPayload() != 48)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x31u:
      if (swift_getEnumCaseMultiPayload() != 49)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x32u:
      if (swift_getEnumCaseMultiPayload() != 50)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x33u:
      if (swift_getEnumCaseMultiPayload() == 51)
      {
        goto LABEL_149;
      }

      goto LABEL_160;
    case 0x34u:
      if (swift_getEnumCaseMultiPayload() != 52)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x35u:
      if (swift_getEnumCaseMultiPayload() != 53)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x36u:
      if (swift_getEnumCaseMultiPayload() != 54)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x37u:
      if (swift_getEnumCaseMultiPayload() != 55)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x38u:
      if (swift_getEnumCaseMultiPayload() != 56)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x39u:
      if (swift_getEnumCaseMultiPayload() != 57)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Au:
      if (swift_getEnumCaseMultiPayload() != 58)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Bu:
      if (swift_getEnumCaseMultiPayload() != 59)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Cu:
      if (swift_getEnumCaseMultiPayload() != 60)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    default:
      sub_23C73EA70(v51, v46, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v53 = v112;
      if (swift_getEnumCaseMultiPayload())
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled;
        v55 = v46;
LABEL_159:
        sub_23C73E950(v55, v54);
LABEL_160:
        sub_23C585C34(v51, &qword_27E1FFE90, &qword_23C88DAD8);
LABEL_161:
        v71 = 0;
        return v71 & 1;
      }

      v87 = v97;
      sub_23C73E9B0(&v51[v53], v97, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      if (*v46 != *v87)
      {
        sub_23C73E950(v87, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
        goto LABEL_176;
      }

      v90 = v51;
      v91 = *(v93 + 20);
      sub_23C870F34();
      sub_23C73EA18();
      v51 = v90;
      v92 = sub_23C871754();
      sub_23C73E950(v87, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      if ((v92 & 1) == 0)
      {
LABEL_176:
        v89 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled;
        v86 = v46;
LABEL_173:
        sub_23C73E950(v86, v89);
        sub_23C73E950(v51, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        goto LABEL_161;
      }

      sub_23C73E950(v46, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
LABEL_149:
      sub_23C73E950(v51, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v71 = 1;
      return v71 & 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV0cdE12Version1KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v47 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v47 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v47 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEE8, &qword_23C88DB30);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v47 - v32;
  v34 = *(v31 + 56);
  sub_23C73EA70(v49, &v47 - v32, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_23C73EA70(v50, &v33[v34], type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C73EA70(v33, v23, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v36 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration;
        v37 = v23;
        goto LABEL_15;
      }

      v38 = &v33[v34];
      v39 = v47;
      sub_23C73E9B0(v38, v47, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      V2eeoiySbAG_AGtFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V11EnumerationV2eeoiySbAG_AGtFZ_0(v23, v39);
      v41 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration;
      sub_23C73E950(v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      v42 = v23;
    }

    else
    {
      sub_23C73EA70(v33, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v36 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query;
        v37 = v20;
        goto LABEL_15;
      }

      v44 = &v33[v34];
      v45 = v48;
      sub_23C73E9B0(v44, v48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      V2eeoiySbAG_AGtFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV2eeoiySbAG_AGtFZ_0(v20, v45);
      v41 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query;
      sub_23C73E950(v45, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      v42 = v20;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C73EA70(v33, v26, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity;
      v37 = v26;
      goto LABEL_15;
    }

    sub_23C73E9B0(&v33[v34], v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    V2eeoiySbAG_AGtFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V6EntityV2eeoiySbAG_AGtFZ_0(v26, v11);
    sub_23C73E950(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    v42 = v26;
    v43 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity;
LABEL_18:
    sub_23C73E950(v42, v43);
    sub_23C73E950(v33, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    return V2eeoiySbAG_AGtFZ_0 & 1;
  }

  sub_23C73EA70(v33, v28, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C73E9B0(&v33[v34], v15, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    V2eeoiySbAG_AGtFZ_0 = static ToolKitProtoTypeIdentifier.Primitive.== infix(_:_:)(v28, v15);
    v41 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
    sub_23C73E950(v15, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    v42 = v28;
LABEL_17:
    v43 = v41;
    goto LABEL_18;
  }

  v36 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
  v37 = v28;
LABEL_15:
  sub_23C73E950(v37, v36);
  sub_23C585C34(v33, &qword_27E1FFEE8, &qword_23C88DB30);
  V2eeoiySbAG_AGtFZ_0 = 0;
  return V2eeoiySbAG_AGtFZ_0 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoTypeIdentifierKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEF8, &unk_23C88DB40);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - v21;
  v23 = *(v20 + 56);
  sub_23C73EA70(a1, &v31 - v21, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_23C73EA70(a2, &v22[v23], type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C73EA70(v22, v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v22[v23], v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v27 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV9PrimitiveV2eeoiySbAE_AEtFZ_0(v17, v10);
      sub_23C73E950(v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_23C73E950(v17, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_23C73E950(v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      return v27 & 1;
    }

    v28 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
    v29 = v17;
    goto LABEL_18;
  }

  sub_23C73EA70(v22, v15, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom;
    v29 = v15;
LABEL_18:
    sub_23C73E950(v29, v28);
    sub_23C585C34(v22, &qword_27E1FFEF8, &unk_23C88DB40);
LABEL_21:
    v27 = 0;
    return v27 & 1;
  }

  sub_23C73E9B0(&v22[v23], v6, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  v24 = *v15 == *v6 && v15[1] == v6[1];
  if (!v24 && (sub_23C872014() & 1) == 0 || (v15[2] == v6[2] ? (v25 = v15[3] == v6[3]) : (v25 = 0), !v25 && (sub_23C872014() & 1) == 0 || (v26 = *(v32 + 24), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0)))
  {
    sub_23C73E950(v6, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_23C73E950(v15, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_23C73E950(v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    goto LABEL_21;
  }

  sub_23C73E950(v6, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  sub_23C73E950(v15, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  sub_23C73E950(v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  v27 = 1;
  return v27 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0(void *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v74 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v73 = (&v69 - v8);
  v9 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v70 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (&v69 - v13);
  v15 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v72 = (&v69 - v19);
  v20 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  v27 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = (&v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v33 = (&v69 - v32);
  v34 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v69 - v39;
  v41 = *a2;
  v42 = *a1 >> 61;
  if (v42 > 2)
  {
    if (v42 == 3)
    {
      if (v41 >> 61 == 3)
      {
        v55 = swift_projectBox();
        v56 = swift_projectBox();
        v57 = v72;
        sub_23C73EA70(v55, v72, type metadata accessor for ToolKitProtoTypeInstance.Union);
        v58 = v71;
        sub_23C73EA70(v56, v71, type metadata accessor for ToolKitProtoTypeInstance.Union);
        v59 = *v57;
        v60 = *v58;

        if (sub_23C5DE500(v59, v60) & 1) != 0 && (v61 = *(v15 + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754()))
        {
          sub_23C73E950(v58, type metadata accessor for ToolKitProtoTypeInstance.Union);
          sub_23C73E950(v57, type metadata accessor for ToolKitProtoTypeInstance.Union);
          v45 = 1;
        }

        else
        {
          sub_23C73E950(v58, type metadata accessor for ToolKitProtoTypeInstance.Union);
          sub_23C73E950(v57, type metadata accessor for ToolKitProtoTypeInstance.Union);
          v45 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (v42 != 4)
    {
      if (v41 >> 61 == 5)
      {
        v65 = swift_projectBox();
        v66 = swift_projectBox();
        v33 = v73;
        sub_23C73EA70(v65, v73, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
        v67 = v66;
        v31 = v74;
        sub_23C73EA70(v67, v74, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

        v45 = _s26AIMLInstrumentationStreams24ToolKitProtoTypeInstanceV8DeferredV2eeoiySbAE_AEtFZ_0(v33, v31);
        v46 = type metadata accessor for ToolKitProtoTypeInstance.Deferred;
        goto LABEL_20;
      }

LABEL_24:
      v45 = 0;
      return v45 & 1;
    }

    if (v41 >> 61 != 4)
    {
      goto LABEL_24;
    }

    v47 = swift_projectBox();
    v48 = swift_projectBox();
    sub_23C73EA70(v47, v14, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v49 = v48;
    v50 = v70;
    sub_23C73EA70(v49, v70, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

    v45 = sub_23C7002B4(v14, v50);
    v51 = type metadata accessor for ToolKitProtoTypeInstance.Restricted;
    sub_23C73E950(v50, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v52 = v14;
LABEL_21:
    v64 = v51;
    goto LABEL_22;
  }

  if (!v42)
  {
    if (v41 >> 61)
    {
      goto LABEL_24;
    }

    v53 = swift_projectBox();
    v54 = swift_projectBox();
    sub_23C73EA70(v53, v40, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_23C73EA70(v54, v38, type metadata accessor for ToolKitProtoTypeIdentifier);

    v45 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v40, v38);
    v51 = type metadata accessor for ToolKitProtoTypeIdentifier;
    sub_23C73E950(v38, type metadata accessor for ToolKitProtoTypeIdentifier);
    v52 = v40;
    goto LABEL_21;
  }

  if (v42 == 1)
  {
    if (v41 >> 61 == 1)
    {
      v43 = swift_projectBox();
      v44 = swift_projectBox();
      sub_23C73EA70(v43, v33, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C73EA70(v44, v31, type metadata accessor for ToolKitProtoTypeInstance);

      v45 = static ToolKitProtoTypeInstance.== infix(_:_:)(v33, v31);
      v46 = type metadata accessor for ToolKitProtoTypeInstance;
LABEL_20:
      v51 = v46;
      sub_23C73E950(v31, v46);
      v52 = v33;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v41 >> 61 != 2)
  {
    goto LABEL_24;
  }

  v62 = swift_projectBox();
  v63 = swift_projectBox();
  sub_23C73EA70(v62, v26, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  sub_23C73EA70(v63, v24, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  v45 = _s26AIMLInstrumentationStreams24ToolKitProtoTypeInstanceV8OptionalV2eeoiySbAE_AEtFZ_0(v26, v24);
  sub_23C73E950(v24, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  v52 = v26;
  v64 = type metadata accessor for ToolKitProtoTypeInstance.Optional;
LABEL_22:
  sub_23C73E950(v52, v64);
LABEL_23:

  return v45 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV0cde9PrimitiveG4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, void *a2)
{
  v156 = a1;
  v157 = a2;
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v141 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v139 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v138 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v136 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v135 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v134 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v23 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v137 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23C870EC4();
  v154 = *(v25 - 8);
  v155 = v25;
  v26 = *(v154 + 64);
  MEMORY[0x28223BE20](v25);
  v133 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v132 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v152 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v147 = (&v131 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v151 = &v131 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v150 = &v131 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v149 = &v131 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v148 = &v131 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v146 = &v131 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v145 = &v131 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v153 = &v131 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v143 = (&v131 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v55 = (&v131 - v54);
  v56 = MEMORY[0x28223BE20](v53);
  v58 = (&v131 - v57);
  v59 = MEMORY[0x28223BE20](v56);
  v144 = &v131 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v63 = (&v131 - v62);
  v64 = MEMORY[0x28223BE20](v61);
  v142 = &v131 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v68 = (&v131 - v67);
  v69 = MEMORY[0x28223BE20](v66);
  v71 = (&v131 - v70);
  MEMORY[0x28223BE20](v69);
  v73 = &v131 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEE0, &qword_23C88DB28);
  v75 = *(*(v74 - 8) + 64);
  v76 = MEMORY[0x28223BE20](v74 - 8);
  v78 = &v131 - v77;
  v79 = &v131 + *(v76 + 56) - v77;
  sub_23C73EA70(v156, &v131 - v77, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  v80 = v157;
  v157 = v79;
  sub_23C73EA70(v80, v79, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v78, v71, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v111 = v157;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_68;
      }

      v108 = *v71 == *v111;
      goto LABEL_34;
    case 2u:
      sub_23C73EA70(v78, v68, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v107 = v157;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_68;
      }

      v108 = *v68 == *v107;
LABEL_34:
      v83 = v108;
      goto LABEL_51;
    case 3u:
      v93 = v142;
      sub_23C73EA70(v78, v142, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v110 = v157;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v95 = v132;
        sub_23C73E9B0(v110, v132, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
        v83 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V7DecimalV2eeoiySbAG_AGtFZ_0(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
      goto LABEL_67;
    case 4u:
      sub_23C73EA70(v78, v63, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v99 = *v63;
      v98 = v63[1];
      v100 = v157;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    case 5u:
      v113 = v144;
      sub_23C73EA70(v78, v144, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v114 = v157;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v116 = v154;
        v115 = v155;
        v117 = v133;
        (*(v154 + 32))(v133, v114, v155);
        v83 = sub_23C870EA4();
        v118 = *(v116 + 8);
        v118(v117, v115);
        v118(v113, v115);
        goto LABEL_51;
      }

      (*(v154 + 8))(v113, v155);
      goto LABEL_68;
    case 6u:
      sub_23C73EA70(v78, v58, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v121 = *v58;
      v120 = v58[1];
      v122 = v157;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v88 = v78;
        v123 = *v122;
        v124 = v122[1];
        v83 = sub_23C6F73FC(v121, v120, *v122, v124);
        sub_23C595090(v123, v124);
        v91 = v121;
        v92 = v120;
        goto LABEL_45;
      }

      sub_23C595090(v121, v120);
      goto LABEL_68;
    case 7u:
      sub_23C73EA70(v78, v55, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v99 = *v55;
      v98 = v55[1];
      v100 = v157;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_31:

        goto LABEL_68;
      }

LABEL_11:
      v101 = *v100;
      v102 = v100[1];
      if (v99 == v101 && v98 == v102)
      {

        goto LABEL_60;
      }

      v129 = sub_23C872014();

      if (v129)
      {
        goto LABEL_60;
      }

      goto LABEL_72;
    case 8u:
      v127 = v143;
      sub_23C73EA70(v78, v143, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v85 = *v127;
      v86 = v127[1];
      v87 = v157;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_53;
      }

      goto LABEL_5;
    case 9u:
      v93 = v153;
      sub_23C73EA70(v78, v153, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v104 = v157;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement;
        goto LABEL_67;
      }

      v105 = v137;
      sub_23C73E9B0(v104, v137, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      if (*v93 == *v105 && *(v93 + 8) == *(v105 + 8) || (sub_23C872014()) && *(v93 + 16) == *(v105 + 16) && *(v93 + 24) == *(v105 + 24))
      {
        v106 = *(v131 + 28);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          sub_23C73E950(v105, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
          sub_23C73E950(v93, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
LABEL_60:
          sub_23C73E950(v78, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
          v83 = 1;
          return v83 & 1;
        }
      }

      sub_23C73E950(v105, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      sub_23C73E950(v93, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
LABEL_72:
      sub_23C73E950(v78, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      goto LABEL_69;
    case 0xAu:
      v93 = v145;
      sub_23C73EA70(v78, v145, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v125 = v157;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v95 = v134;
        sub_23C73E9B0(v125, v134, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
        v83 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14CurrencyAmountV2eeoiySbAG_AGtFZ_0(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount;
      goto LABEL_67;
    case 0xBu:
      v93 = v146;
      sub_23C73EA70(v78, v146, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v97 = v157;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v95 = v135;
        sub_23C73E9B0(v97, v135, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
        v83 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V13PaymentMethodV2eeoiySbAG_AGtFZ_0(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod;
      goto LABEL_67;
    case 0xCu:
      v93 = v148;
      sub_23C73EA70(v78, v148, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v103 = v157;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v95 = v136;
        sub_23C73E9B0(v103, v136, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
        v83 = sub_23C7006AC(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark;
      goto LABEL_67;
    case 0xDu:
      v93 = v149;
      sub_23C73EA70(v78, v149, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v119 = v157;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v95 = v138;
        sub_23C73E9B0(v119, v138, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
        v83 = sub_23C7006C4(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person;
      goto LABEL_67;
    case 0xEu:
      v93 = v150;
      sub_23C73EA70(v78, v150, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v94 = v157;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v95 = v139;
        sub_23C73E9B0(v94, v139, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
        v83 = sub_23C7006DC(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File;
      goto LABEL_67;
    case 0xFu:
      v93 = v151;
      sub_23C73EA70(v78, v151, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v109 = v157;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v95 = v140;
        sub_23C73E9B0(v109, v140, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
        v83 = sub_23C700A78(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
      goto LABEL_67;
    case 0x10u:
      v84 = v147;
      sub_23C73EA70(v78, v147, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v85 = *v84;
      v86 = v84[1];
      v87 = v157;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_53:
        sub_23C595090(v85, v86);
        goto LABEL_68;
      }

LABEL_5:
      v88 = v78;
      v89 = *v87;
      v90 = v87[1];
      v83 = sub_23C6F73FC(v85, v86, *v87, v90);
      sub_23C595090(v89, v90);
      v91 = v85;
      v92 = v86;
LABEL_45:
      sub_23C595090(v91, v92);
      sub_23C73E950(v88, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      break;
    case 0x11u:
      v93 = v152;
      sub_23C73EA70(v78, v152, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v112 = v157;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v95 = v141;
        sub_23C73E9B0(v112, v141, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
        v83 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14DateComponentsV2eeoiySbAG_AGtFZ_0(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents;
LABEL_50:
        v126 = v96;
        sub_23C73E950(v95, v96);
        sub_23C73E950(v93, v126);
LABEL_51:
        sub_23C73E950(v78, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      }

      else
      {
        v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents;
LABEL_67:
        sub_23C73E950(v93, v128);
LABEL_68:
        sub_23C585C34(v78, &qword_27E1FFEE0, &qword_23C88DB28);
LABEL_69:
        v83 = 0;
      }

      break;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    default:
      sub_23C73EA70(v78, v73, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v81 = v157;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_68;
      }

      v82 = *v73 ^ *v81;
      sub_23C73E950(v78, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v83 = v82 ^ 1;
      return v83 & 1;
  }

  return v83 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypedValueKindO2eeoiySbAC_ACtFZ_0(void *a1, unint64_t *a2)
{
  v76 = a2;
  v3 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v75 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v74 = (&v71 - v7);
  v8 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v73 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v72 = (&v71 - v12);
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v14 = *(*(Value - 8) + 64);
  v15 = MEMORY[0x28223BE20](Value - 8);
  v71 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v71 - v17;
  v19 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = (&v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = (&v71 - v24);
  v26 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = (&v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v32 = (&v71 - v31);
  v33 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = (&v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v39 = (&v71 - v38);
  v40 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v71 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v71 - v45;
  v47 = *v76;
  v48 = *a1 >> 61;
  if (v48 > 2)
  {
    if (v48 <= 4)
    {
      if (v48 == 3)
      {
        if (v47 >> 61 == 3)
        {
          v49 = swift_projectBox();
          v50 = swift_projectBox();
          sub_23C73EA70(v49, v25, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          sub_23C73EA70(v50, v23, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

          G0V2eeoiySbAE_AEtFZ_0 = sub_23C7057C8(v25, v23);
          v52 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue;
          sub_23C73E950(v23, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          v53 = v25;
LABEL_22:
          v56 = v52;
          goto LABEL_23;
        }
      }

      else if (v47 >> 61 == 4)
      {
        v65 = swift_projectBox();
        v66 = swift_projectBox();
        sub_23C73EA70(v65, v18, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
        v67 = v71;
        sub_23C73EA70(v66, v71, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

        G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV05QueryG0V2eeoiySbAE_AEtFZ_0(v18, v67);
        v52 = type metadata accessor for ToolKitProtoTypedValue.QueryValue;
        sub_23C73E950(v67, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
        v53 = v18;
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    if (v48 == 5)
    {
      if (v47 >> 61 != 5)
      {
        goto LABEL_24;
      }

      v57 = swift_projectBox();
      v58 = swift_projectBox();
      v32 = v72;
      sub_23C73EA70(v57, v72, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
      v30 = v73;
      sub_23C73EA70(v58, v73, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

      G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV016EntityIdentifierG0V2eeoiySbAE_AEtFZ_0(v32, v30);
      v59 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue;
    }

    else
    {
      if (v47 >> 61 != 6)
      {
        goto LABEL_24;
      }

      v68 = swift_projectBox();
      v69 = swift_projectBox();
      v32 = v74;
      sub_23C73EA70(v68, v74, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
      v30 = v75;
      sub_23C73EA70(v69, v75, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

      G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V2eeoiySbAE_AEtFZ_0(v32, v30);
      v59 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue;
    }

LABEL_21:
    v52 = v59;
    sub_23C73E950(v30, v59);
    v53 = v32;
    goto LABEL_22;
  }

  if (!v48)
  {
    if (!(v47 >> 61))
    {
      v60 = *v76;
      v61 = swift_projectBox();
      v62 = swift_projectBox();
      sub_23C73EA70(v61, v46, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
      sub_23C73EA70(v62, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

      G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V2eeoiySbAE_AEtFZ_0(v46, v44);
      v52 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue;
      sub_23C73E950(v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
      v53 = v46;
      goto LABEL_22;
    }

LABEL_24:
    G0V2eeoiySbAE_AEtFZ_0 = 0;
    return G0V2eeoiySbAE_AEtFZ_0 & 1;
  }

  if (v48 != 1)
  {
    if (v47 >> 61 != 2)
    {
      goto LABEL_24;
    }

    v63 = swift_projectBox();
    v64 = swift_projectBox();
    sub_23C73EA70(v63, v32, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_23C73EA70(v64, v30, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

    G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV06EntityG0V2eeoiySbAE_AEtFZ_0(v32, v30);
    v59 = type metadata accessor for ToolKitProtoTypedValue.EntityValue;
    goto LABEL_21;
  }

  if (v47 >> 61 != 1)
  {
    goto LABEL_24;
  }

  v54 = swift_projectBox();
  v55 = swift_projectBox();
  sub_23C73EA70(v54, v39, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  sub_23C73EA70(v55, v37, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV011EnumerationG0V2eeoiySbAE_AEtFZ_0(v39, v37);
  sub_23C73E950(v37, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  v53 = v39;
  v56 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue;
LABEL_23:
  sub_23C73E950(v53, v56);

  return G0V2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV12RelationshipV0cdE12RelationKindO2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v2 = *(*(DoesNotContain - 8) + 64);
  MEMORY[0x28223BE20](DoesNotContain);
  v70 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v69 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v67 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v66 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v12 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v65 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v59 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v59 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v59 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v59 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = (&v59 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE88, &qword_23C88DAD0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v59 - v36;
  v38 = *(v35 + 56);
  sub_23C73EA70(v71, &v59 - v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_23C73EA70(v72, &v37[v38], type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_23C73EA70(v37, v27, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
          v41 = v27;
          goto LABEL_41;
        }

        v46 = v67;
        sub_23C73E9B0(&v37[v38], v67, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
        if ((sub_23C5D15A4(*v27, *v46) & 1) == 0 || v27[8] != *(v46 + 8) || (v47 = *(v59 + 24), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
        {
          v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
          sub_23C73E950(v46, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
          v55 = v27;
          goto LABEL_54;
        }

        v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
        sub_23C73E950(v46, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
        v45 = v27;
      }

      else
      {
        sub_23C73EA70(v37, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
          v41 = v24;
          goto LABEL_41;
        }

        v52 = v68;
        sub_23C73E9B0(&v37[v38], v68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
        if ((sub_23C5D15A4(*v24, *v52) & 1) == 0 || v24[8] != *(v52 + 8) || (v53 = *(v60 + 24), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
        {
          v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
          sub_23C73E950(v52, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
          v55 = v24;
          goto LABEL_54;
        }

        v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
        sub_23C73E950(v52, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
        v45 = v24;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23C73EA70(v37, v32, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload())
        {
          v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
          v41 = v32;
LABEL_41:
          sub_23C73E950(v41, v40);
          goto LABEL_42;
        }

        v56 = v65;
        sub_23C73E9B0(&v37[v38], v65, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
        if (sub_23C5D15A4(*v32, *v56))
        {
          v57 = *(v61 + 20);
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
            sub_23C73E950(v56, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
            v45 = v32;
            goto LABEL_48;
          }
        }

        v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
        sub_23C73E950(v56, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
        v55 = v32;
LABEL_54:
        sub_23C73E950(v55, v54);
        sub_23C73E950(v37, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        return 0;
      }

      sub_23C73EA70(v37, v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
        v41 = v30;
        goto LABEL_41;
      }

      v48 = v66;
      sub_23C73E9B0(&v37[v38], v66, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      if ((sub_23C5D15A4(*v30, *v48) & 1) == 0 || (v49 = *(v62 + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
        sub_23C73E950(v48, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
        v55 = v30;
        goto LABEL_54;
      }

      v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
      sub_23C73E950(v48, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      v45 = v30;
    }

LABEL_48:
    sub_23C73E950(v45, v44);
LABEL_49:
    sub_23C73E950(v37, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    return 1;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_23C73EA70(v37, v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
        v41 = v21;
        goto LABEL_41;
      }

      v42 = v69;
      sub_23C73E9B0(&v37[v38], v69, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      if ((sub_23C5D15A4(*v21, *v42) & 1) == 0 || (v43 = *(v63 + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
        sub_23C73E950(v42, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
        v55 = v21;
        goto LABEL_54;
      }

      v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
      sub_23C73E950(v42, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      v45 = v21;
    }

    else
    {
      sub_23C73EA70(v37, v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
        v41 = v18;
        goto LABEL_41;
      }

      v50 = v70;
      sub_23C73E9B0(&v37[v38], v70, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      if ((sub_23C5D15A4(*v18, *v50) & 1) == 0 || (v51 = *(DoesNotContain + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
        sub_23C73E950(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
        v55 = v18;
        goto LABEL_54;
      }

      v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
      sub_23C73E950(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      v45 = v18;
    }

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload == 6)
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_49;
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    goto LABEL_49;
  }

LABEL_42:
  sub_23C585C34(v37, &qword_27E1FFE88, &qword_23C88DAD0);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0cdeC8IconKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v29 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE80, &qword_23C88DAC8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = (&v29 + *(v17 + 56) - v18);
  sub_23C73EA70(a1, &v29 - v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_23C73EA70(a2, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C73EA70(v19, v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    v23 = *v14;
    v22 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v23 == *v20 && v22 == v20[1])
      {
        v27 = v20[1];
      }

      else
      {
        v25 = v20[1];
        v26 = sub_23C872014();

        if ((v26 & 1) == 0)
        {
          sub_23C73E950(v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
          goto LABEL_8;
        }
      }

      sub_23C73E950(v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      v21 = 1;
      return v21 & 1;
    }

LABEL_7:
    sub_23C585C34(v19, &qword_27E1FFE80, &qword_23C88DAC8);
LABEL_8:
    v21 = 0;
    return v21 & 1;
  }

  sub_23C73EA70(v19, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C73E950(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    goto LABEL_7;
  }

  sub_23C73E9B0(v20, v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  v21 = static ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.== infix(_:_:)(v12, v7);
  sub_23C73E950(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_23C73E950(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_23C73E950(v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  return v21 & 1;
}

unint64_t sub_23C735588()
{
  result = qword_27E1FF020;
  if (!qword_27E1FF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF020);
  }

  return result;
}

unint64_t sub_23C735610()
{
  result = qword_27E1FF038;
  if (!qword_27E1FF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF038);
  }

  return result;
}

unint64_t sub_23C735698()
{
  result = qword_27E1FF050;
  if (!qword_27E1FF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF050);
  }

  return result;
}

unint64_t sub_23C735720()
{
  result = qword_27E1FF068;
  if (!qword_27E1FF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF068);
  }

  return result;
}

unint64_t sub_23C7357A8()
{
  result = qword_27E1FF080;
  if (!qword_27E1FF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF080);
  }

  return result;
}

unint64_t sub_23C735830()
{
  result = qword_27E1FF098;
  if (!qword_27E1FF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF098);
  }

  return result;
}

unint64_t sub_23C7358B8()
{
  result = qword_27E1FF0B0;
  if (!qword_27E1FF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF0B0);
  }

  return result;
}

unint64_t sub_23C735940()
{
  result = qword_27E1FF0C8;
  if (!qword_27E1FF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF0C8);
  }

  return result;
}

unint64_t sub_23C7359C8()
{
  result = qword_27E1FF0E0;
  if (!qword_27E1FF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF0E0);
  }

  return result;
}

unint64_t sub_23C735A50()
{
  result = qword_27E1FF0F8;
  if (!qword_27E1FF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF0F8);
  }

  return result;
}

unint64_t sub_23C735AD8()
{
  result = qword_27E1FF110;
  if (!qword_27E1FF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF110);
  }

  return result;
}

unint64_t sub_23C735B60()
{
  result = qword_27E1FF128;
  if (!qword_27E1FF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF128);
  }

  return result;
}

unint64_t sub_23C735BE8()
{
  result = qword_27E1FF140;
  if (!qword_27E1FF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF140);
  }

  return result;
}

unint64_t sub_23C735C70()
{
  result = qword_27E1FF158;
  if (!qword_27E1FF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF158);
  }

  return result;
}

unint64_t sub_23C735CF8()
{
  result = qword_27E1FF170;
  if (!qword_27E1FF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF170);
  }

  return result;
}

unint64_t sub_23C735D80()
{
  result = qword_27E1FF188;
  if (!qword_27E1FF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF188);
  }

  return result;
}

unint64_t sub_23C735E08()
{
  result = qword_27E1FF1A0;
  if (!qword_27E1FF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF1A0);
  }

  return result;
}

unint64_t sub_23C735E90()
{
  result = qword_27E1FF1B8;
  if (!qword_27E1FF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF1B8);
  }

  return result;
}

unint64_t sub_23C735F18()
{
  result = qword_27E1FF1D0;
  if (!qword_27E1FF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF1D0);
  }

  return result;
}

unint64_t sub_23C735FA0()
{
  result = qword_27E1FF1E8;
  if (!qword_27E1FF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF1E8);
  }

  return result;
}

unint64_t sub_23C736028()
{
  result = qword_27E1FF200;
  if (!qword_27E1FF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF200);
  }

  return result;
}

unint64_t sub_23C7360B0()
{
  result = qword_27E1FF218;
  if (!qword_27E1FF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF218);
  }

  return result;
}

unint64_t sub_23C736138()
{
  result = qword_27E1FF230;
  if (!qword_27E1FF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF230);
  }

  return result;
}

unint64_t sub_23C7361C0()
{
  result = qword_27E1FF248;
  if (!qword_27E1FF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF248);
  }

  return result;
}

unint64_t sub_23C736248()
{
  result = qword_27E1FF260;
  if (!qword_27E1FF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF260);
  }

  return result;
}

void sub_23C736388(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_23C73D4F0(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 40;
  if (a2 + 40 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 40;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 40;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x17)
  {
    v8 = v7 - 22;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x13)
  {
    return v8 - 18;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 40;
  if (a3 + 40 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xD8)
  {
    v5 = 0;
  }

  if (a2 > 0xD7)
  {
    v6 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23C7366C0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x17)
  {
    return v1 - 22;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23C7366D4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 22;
  }

  return result;
}

void sub_23C7367A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23C736880()
{
  result = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23C7369D4()
{
  sub_23C7367A4(319, &qword_27E1FF360, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF368, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FF378, type metadata accessor for ToolKitProtoSystemTypeProtocol, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_23C73D4F0(319, &qword_27E1FF380, &type metadata for ToolKitProtoTypeDefinition.Version1.Entity.RuntimeFlags, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_23C7367A4(319, &qword_27E1FF388, type metadata accessor for ToolKitProtoCoercionDefinition, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_23C7367A4(319, &qword_27E1FBBC0, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_23C870F34();
                  if (v8 <= 0x3F)
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
  }
}

void sub_23C736D00()
{
  sub_23C7367A4(319, &qword_27E1FF3B0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF368, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF378, type metadata accessor for ToolKitProtoSystemTypeProtocol, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C7367A4(319, &qword_27E1FBBC0, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C870F34();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23C736F3C()
{
  sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF3E0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C737060()
{
  sub_23C7367A4(319, &qword_27E1FF3F8, type metadata accessor for ToolKitProtoComparisonPredicate.Template, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF400, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FF408, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C7367A4(319, &qword_27E1FF410, type metadata accessor for ToolKitProtoAllPredicate, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C7367A4(319, &qword_27E1FF418, type metadata accessor for ToolKitProtoSuggestedPredicate, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_23C7367A4(319, &qword_27E1FF420, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_23C7367A4(319, &qword_27E1FF428, type metadata accessor for ToolKitProtoValidPredicate, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_23C870F34();
                  if (v8 <= 0x3F)
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
  }
}

uint64_t sub_23C73730C()
{
  result = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_23C737510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_23C7367A4(319, a6, a7, MEMORY[0x277D83D88]);
  if (v7 <= 0x3F)
  {
    sub_23C870F34();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C737634()
{
  sub_23C7367A4(319, &qword_27E1FF4A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF3C8, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C737768()
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF3C8, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_267Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 12)
  {
    v6 = *(a1 + 8) >> 60;
    if (((4 * v6) & 0xC) != 0)
    {
      return 16 - ((4 * v6) & 0xC | (v6 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_268Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C737CE4()
{
  sub_23C7367A4(319, &qword_27E1FF510, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C73D4F0(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C870F34();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23C737FB0()
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C738074()
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(319);
  if (v1 <= 0x3F)
  {
    result = sub_23C870EC4();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23C738214()
{
  sub_23C73AB94(319, &qword_27E1FF558, type metadata accessor for ToolKitProtoTypedValue);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF3C8, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C73D4F0(319, &qword_27E1FB018, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C870F34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C7383B8()
{
  sub_23C7367A4(319, &qword_27E1FF570, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C7384DC()
{
  sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF588, type metadata accessor for ToolKitProtoQuery, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_309Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[5];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v16 = sub_23C870F34();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t __swift_store_extra_inhabitant_index_310Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a4[5];
LABEL_7:
    v15 = *(v12 + 56);

    return v15(v7 + v13, a2, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a4[6];
    goto LABEL_7;
  }

  v16 = sub_23C870F34();
  v17 = *(*(v16 - 8) + 56);
  v18 = v7 + a4[7];

  return v17(v18, a2, a2, v16);
}

void sub_23C738920()
{
  sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF5B0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C870F34();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C738AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_465Tm);
}

uint64_t sub_23C738B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_466Tm);
}

uint64_t sub_23C738BC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23C738C1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_23C738CF4()
{
  sub_23C7367A4(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C738E74()
{
  sub_23C7367A4(319, &qword_27E1FF640, type metadata accessor for ToolKitProtoRestrictionContext, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C738FCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23C739028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_23C739120()
{
  sub_23C7367A4(319, &qword_27E1FF680, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF3E0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C739244()
{
  sub_23C7367A4(319, &qword_27E1FF698, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C7393FC()
{
  result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23C7394E0()
{
  result = sub_23C870F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23C7395B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23C73960C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_23C739718()
{
  result = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23C739864()
{
  sub_23C7367A4(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C739974()
{
  result = type metadata accessor for ToolKitProtoTypeInstance(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23C7399EC()
{
  result = type metadata accessor for ToolKitProtoTypedValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_696Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a3[5];
LABEL_11:
    v18 = *(v14 + 48);

    return v18(a1 + v15, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a3[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v13 = v17;
    v14 = *(v17 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v19 = sub_23C870F34();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[8];

  return v20(v21, a2, v19);
}

uint64_t __swift_store_extra_inhabitant_index_697Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a4[5];
LABEL_9:
    v18 = *(v14 + 56);

    return v18(v7 + v15, a2, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v13 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_23C870F34();
  v20 = *(*(v19 - 8) + 56);
  v21 = v7 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_23C739E8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_23C7367A4(319, &qword_27E1FF760, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, MEMORY[0x277D83D88]);
  if (v7 <= 0x3F)
  {
    sub_23C7367A4(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF6C0, type metadata accessor for ToolKitProtoContentItemClassDescriptor, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        sub_23C870F34();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C73A1E0()
{
  sub_23C7367A4(319, &qword_27E1FF8A0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C73A34C()
{
  result = type metadata accessor for ToolKitProtoComparisonPredicate(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoCompoundPredicate(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoStringSearchPredicate(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoIdSearchPredicate(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoAllPredicate(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoSuggestedPredicate(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoSearchableItemPredicate(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoValidPredicate(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C73A460()
{
  result = sub_23C870F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73A57C()
{
  sub_23C7367A4(319, &qword_27E1FF908, type metadata accessor for ToolKitProtoRuntimePlatformVersion, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C73A6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_401Tm_0_4);
}

uint64_t sub_23C73A724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_402Tm_0_3);
}

uint64_t sub_23C73A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_23C73A88C()
{
  result = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23C73A9E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23C73AA30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_23C73AAB8()
{
  sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C73AB94(319, &qword_27E1FF9A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C73AB94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23C8716D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_991Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_992Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73ADCC()
{
  sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C73AEEC()
{
  result = sub_23C870F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73AFF4()
{
  sub_23C7367A4(319, &qword_27E1FFA10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF300, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C870F34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C73B228(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_23C7367A4(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF300, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, MEMORY[0x277D83D88]);
    if (v6 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FBBC0, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        sub_23C870F34();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1054Tm(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23C870F34();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *__swift_store_extra_inhabitant_index_1055Tm(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23C870F34();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23C73B6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_23C73B950(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C73B96C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_23C73B9EC()
{
  result = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23C73BB5C()
{
  sub_23C7367A4(319, &qword_27E1FFA10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FFB40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FF368, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_23C73D4F0(319, &qword_27E1FFB48, &type metadata for ToolKitProtoToolDefinition.Version1.Flag, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_23C7367A4(319, &qword_27E1FFB50, type metadata accessor for ToolKitProtoSystemToolProtocol, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_23C73D4F0(319, &qword_27E1FFB58, &type metadata for ToolKitProtoToolDefinition.Version1.VisibilityFlag, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_23C7367A4(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_23C7367A4(319, &qword_27E1FFB60, type metadata accessor for ToolKitProtoAppDefinition, MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        sub_23C7367A4(319, &qword_27E1FFB68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, MEMORY[0x277D83D88]);
                        if (v11 <= 0x3F)
                        {
                          sub_23C7367A4(319, &qword_27E1FFB70, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, MEMORY[0x277D83D88]);
                          if (v12 <= 0x3F)
                          {
                            sub_23C7367A4(319, &qword_27E1FFB78, type metadata accessor for ToolKitProtoContainerDefinition, MEMORY[0x277D83D88]);
                            if (v13 <= 0x3F)
                            {
                              sub_23C870F34();
                              if (v14 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoToolDefinition.Version1.Flag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoToolDefinition.Version1.Flag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23C73C16C()
{
  sub_23C7367A4(319, &qword_27E1FFB90, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C73D4F0(319, &qword_27E1FFB98, &type metadata for ToolKitProtoToolDefinition.Version1.Parameter.ParameterFlags, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C7367A4(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C870F34();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_222Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_223Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1278Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_1279Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73C848()
{
  sub_23C7367A4(319, &qword_27E1FF570, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_147Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_148Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23C73CAA4()
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23C73CB90()
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C73CCD4()
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C73CD94()
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73CE50()
{
  sub_23C7367A4(319, &qword_27E1FFCA8, type metadata accessor for ToolKitProtoAppDefinition.Device, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1227Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 40);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 44);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_1228Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 40);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 44);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C73D210()
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FFCD8, type metadata accessor for ToolKitProtoContainerDefinition.Device, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1389Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = sub_23C870F34();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_1390Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 8) = (a2 + 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73D4F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23C73D540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C73D590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_23C73D61C()
{
  sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_465Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_466Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73D8A8()
{
  sub_23C73D4F0(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FFD28, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FFD30, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FFD38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C7367A4(319, &qword_27E1FFD40, type metadata accessor for ToolKitProtoPluginModelData, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C870F34();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_810Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_811Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_129Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_130Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23C73DE88()
{
  result = sub_23C870F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73DFE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_23C7367A4(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_300Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_301Tm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C73E1E8()
{
  sub_23C73D4F0(319, &qword_27E1FB018, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C73E2A0()
{
  result = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C73E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_23C7367A4(319, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    sub_23C870F34();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_165Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23C73E570()
{
  result = sub_23C870F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_420Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_421Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C73E854()
{
  sub_23C7367A4(319, &qword_27E1FFE58, type metadata accessor for ToolKitProtoTypeDefinition.Version1, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB208, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C73E950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23C73E9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23C73EA18()
{
  result = qword_27E1FA448;
  if (!qword_27E1FA448)
  {
    sub_23C870F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA448);
  }

  return result;
}

uint64_t sub_23C73EA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C73F074()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF00);
  __swift_project_value_buffer(v0, qword_27E1FFF00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C87D6F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENTITY_QUERY";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USER_FEEDBACK_LEARNING";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MEGADOME_ECR";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_REGISTRY";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RETURN_VALUE";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "USER_PROMPT";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "OMNISEARCH";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73F40C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF18);
  __swift_project_value_buffer(v0, qword_27E1FFF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "notSet";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prescribedPlanGenerator";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "planOverride";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fullPlanner";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73F6B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF30);
  __swift_project_value_buffer(v0, qword_27E1FFF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Completion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Disambiguation";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Confirmation";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73F910()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF48);
  __swift_project_value_buffer(v0, qword_27E1FFF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUPPRESS_PRINT";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73FB20()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF60);
  __swift_project_value_buffer(v0, qword_27E1FFF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTUpdateKind_APPEND";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTUpdateKind_REPLACE";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73FD30()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF78);
  __swift_project_value_buffer(v0, qword_27E1FFF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "plus";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "minus";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "not";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C73FF8C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFF90);
  __swift_project_value_buffer(v0, qword_27E1FFF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23C87D6D0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "assign";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "add";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "addAssign";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "subtract";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "subtractAssign";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "divide";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "divideAssign";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "multiply";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "multiplyAssign";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "exponent";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "equal";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "notEqual";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "in";
  *(v30 + 1) = 2;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "greaterThanEqual";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "greaterThan";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "lessThanEqual";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "lessThan";
  *(v37 + 8) = 8;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "and";
  *(v39 + 1) = 3;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "or";
  *(v41 + 1) = 2;
  v41[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C7405AC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFFA8);
  __swift_project_value_buffer(v0, qword_27E1FFFA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23C87D6D0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "ASTInfixOp_ASSIGN";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ASTInfixOp_ADD";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ASTInfixOp_ADDASSIGN";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ASTInfixOp_SUBTRACT";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ASTInfixOp_SUBTRACTASSIGN";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ASTInfixOp_DIVIDE";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ASTInfixOp_DIVIDEASSIGN";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ASTInfixOp_MULTIPLY";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ASTInfixOp_MULTIPLYASSIGN";
  *(v22 + 8) = 25;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ASTInfixOp_EXPONENT";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ASTInfixOp_EQUAL";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ASTInfixOp_NOTEQUAL";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ASTInfixOp_IN";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ASTInfixOp_GREATERTHANEQUAL";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ASTInfixOp_GREATERTHAN";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ASTInfixOp_LESSTHANEQUAL";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ASTInfixOp_LESSTHAN";
  *(v37 + 8) = 19;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "ASTInfixOp_AND";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "ASTInfixOp_OR";
  *(v41 + 1) = 13;
  v41[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C740BD0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFFC0);
  __swift_project_value_buffer(v0, qword_27E1FFFC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTPrefixOp_PLUS";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTPrefixOp_MINUS";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ASTPrefixOp_NOT";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C740E2C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFFD8);
  __swift_project_value_buffer(v0, qword_27E1FFFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "append";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "replace";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C74103C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FFFF0);
  __swift_project_value_buffer(v0, qword_27E1FFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "appIntent";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "clientAction";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "schema";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C741298()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200008);
  __swift_project_value_buffer(v0, qword_27E200008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "undo";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "redo";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7414C4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200020);
  __swift_project_value_buffer(v0, qword_27E200020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23C875580;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 11;
  *v5 = "rawId";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "rawSessionId";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 12;
  *v11 = "rawQueryEventId";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "rawPayload";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "clientRequestId";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "clientSessionId";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "clientApplicationId";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "clientGroupId";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 13;
  *v22 = "timepoint";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 6;
  *v24 = "sender";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 7;
  *v26 = "postingSpan";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 8;
  *v28 = "rawInitiatedSpans";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoEvent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 7)
    {
      if (result > 10)
      {
        switch(result)
        {
          case 11:
            goto LABEL_2;
          case 12:
LABEL_29:
            sub_23C871154();
            break;
          case 13:
            sub_23C741D7C();
            break;
        }
      }

      else if (result == 8)
      {
        sub_23C741CF8();
      }

      else
      {
        if (result != 9)
        {
          v4 = v0 + *(type metadata accessor for TranscriptProtoEvent(0) + 48);
          goto LABEL_29;
        }

LABEL_2:
        sub_23C871164();
      }
    }

    else if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_2;
        case 6:
          sub_23C741B90();
          break;
        case 7:
          sub_23C741C44();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          sub_23C741ADC();
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t sub_23C741ADC()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 44);
  type metadata accessor for TranscriptProtoPayload(0);
  sub_23C8314AC(&qword_27E201DB0, type metadata accessor for TranscriptProtoPayload);
  return sub_23C8711A4();
}

uint64_t sub_23C741B90()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 56);
  type metadata accessor for TranscriptProtoParticipantID(0);
  sub_23C8314AC(&qword_27E202498, type metadata accessor for TranscriptProtoParticipantID);
  return sub_23C8711A4();
}

uint64_t sub_23C741C44()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 60);
  type metadata accessor for TranscriptProtoSpanID(0);
  sub_23C8314AC(&qword_27E2024B0, type metadata accessor for TranscriptProtoSpanID);
  return sub_23C8711A4();
}

uint64_t sub_23C741CF8()
{
  sub_23C870EE4();
  sub_23C870F04();
  return sub_23C871034();
}

uint64_t sub_23C741D7C()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 52);
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_23C8314AC(&qword_27E201DE0, type metadata accessor for TranscriptProtoTimepoint);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C742088(v3, a1, a2, a3);
    if (!v4)
    {
      v11 = v3[5];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_23C8712C4();
      }

      v13 = v3[7];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[6] & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        sub_23C8712C4();
      }

      sub_23C7422A4(v3, a1, a2, a3);
      sub_23C7424C0(v3, a1, a2, a3);
      if (*(v3[10] + 16))
      {
        sub_23C870EE4();
        sub_23C870F04();
        sub_23C871224();
      }

      v15 = v3[9];
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v3[8] & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_23C8712C4();
      }

      sub_23C7426DC(v3);
      v17 = *v3;
      v18 = v3[1];
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = *v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        sub_23C8712C4();
      }

      if (v3[12])
      {
        v20 = v3[11];
        sub_23C8712C4();
      }

      sub_23C742754(v3, a1, a2, a3);
      v21 = v3 + *(type metadata accessor for TranscriptProtoEvent(0) + 64);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C742088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoPayload(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v14 + 44), v8, &qword_27E1F9950, &unk_23C87CFF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1F9950, &unk_23C87CFF0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoPayload);
  sub_23C8314AC(&qword_27E201DB0, type metadata accessor for TranscriptProtoPayload);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoPayload);
}

uint64_t sub_23C7422A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF48, &unk_23C8A1140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoParticipantID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v14 + 56), v8, &qword_27E1FBF48, &unk_23C8A1140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBF48, &unk_23C8A1140);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoParticipantID);
  sub_23C8314AC(&qword_27E202498, type metadata accessor for TranscriptProtoParticipantID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoParticipantID);
}

uint64_t sub_23C7424C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoSpanID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v14 + 60), v8, &qword_27E1FBF40, &qword_23C87D088);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBF40, &qword_23C87D088);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoSpanID);
  sub_23C8314AC(&qword_27E2024B0, type metadata accessor for TranscriptProtoSpanID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoSpanID);
}

uint64_t sub_23C7426DC(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoEvent(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C742754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoTimepoint(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v14 + 52), v8, &qword_27E1F9D08, &qword_23C87D090);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1F9D08, &qword_23C87D090);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoTimepoint);
  sub_23C8314AC(&qword_27E201DE0, type metadata accessor for TranscriptProtoTimepoint);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoTimepoint);
}

unint64_t sub_23C7429BC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v4 = a1[11];
  v5 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[13];
  v7 = &a2[a1[12]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v8 - 8) + 56))(&a2[v6], 1, 1, v8);
  v9 = a1[14];
  v10 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = a1[15];
  v12 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[a1[16]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0xE000000000000000;
  result = sub_23C599848(MEMORY[0x277D84F90]);
  *(a2 + 10) = result;
  return result;
}

uint64_t sub_23C742B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036F8, type metadata accessor for TranscriptProtoEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C742C24()
{
  sub_23C8314AC(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent);

  return sub_23C8711F4();
}

uint64_t sub_23C742C90()
{
  sub_23C8314AC(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent);

  return sub_23C871204();
}

uint64_t sub_23C742D2C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200038);
  __swift_project_value_buffer(v0, qword_27E200038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_23C88DB90;
  v4 = v72 + v3;
  v5 = v72 + v3 + v1[14];
  *(v72 + v3) = 46;
  *v5 = "sessionStart";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v72 + v3 + v2 + v1[14];
  *(v4 + v2) = 41;
  *v9 = "request";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v72 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "planCreated";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v72 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actionCreated";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v72 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "clientActionCreated";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v72 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "queriesCreated";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v72 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "variablesSet";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v72 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "criticalError";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v72 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 47;
  *v22 = "recoverableError";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "endOfPlan";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "terminate";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 19;
  *v28 = "queriesExecuted";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 21;
  *v30 = "actionResolverRequestCreated";
  *(v30 + 1) = 28;
  v30[16] = 2;
  v8();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 25;
  *v32 = "safetyModeRelease";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v8();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 26;
  *v34 = "safetyModeException";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 27;
  *v36 = "responseGenerationRequest";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v8();
  v37 = v72 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 28;
  *v37 = "entitySpanMatched";
  *(v37 + 8) = 17;
  *(v37 + 16) = 2;
  v8();
  v38 = (v72 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 29;
  *v39 = "ContextRetrieved";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v72 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 30;
  *v41 = "actionCanceled";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v72 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 31;
  *v43 = "toolsRetrieved";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v8();
  v44 = (v72 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 32;
  *v45 = "systemResponseGenerated";
  *(v45 + 1) = 23;
  v45[16] = 2;
  v8();
  v46 = (v72 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 33;
  *v47 = "statementEvaluated";
  *(v47 + 1) = 18;
  v47[16] = 2;
  v8();
  v48 = (v72 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 42;
  *v49 = "externalAgentRequest";
  *(v49 + 1) = 20;
  v49[16] = 2;
  v8();
  v50 = (v72 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 36;
  *v51 = "externalAgentOutcome";
  *(v51 + 1) = 20;
  v51[16] = 2;
  v8();
  v52 = (v72 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 37;
  *v53 = "externalAgentRequestRewriteMetadata";
  *(v53 + 1) = 35;
  v53[16] = 2;
  v8();
  v54 = (v72 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 38;
  *v55 = "ToolResolution";
  *(v55 + 1) = 14;
  v55[16] = 2;
  v8();
  v56 = (v72 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 39;
  *v57 = "undoRedoRequest";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v72 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 40;
  *v59 = "clientUndoRedoRequest";
  *(v59 + 1) = 21;
  v59[16] = 2;
  v8();
  v60 = (v72 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 43;
  *v61 = "typeConversionRequest";
  *(v61 + 1) = 21;
  v61[16] = 2;
  v8();
  v62 = (v72 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 44;
  *v63 = "typeConversionResult";
  *(v63 + 1) = 20;
  v63[16] = 2;
  v8();
  v64 = (v72 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 45;
  *v65 = "queryDecorationResult";
  *(v65 + 1) = 21;
  v65[16] = 2;
  v8();
  v66 = (v72 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 48;
  *v67 = "continuePlanning";
  *(v67 + 1) = 16;
  v67[16] = 2;
  v8();
  v68 = v72 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 49;
  *v68 = "queryDecorationPrePlannerResult";
  *(v68 + 8) = 31;
  *(v68 + 16) = 2;
  v8();
  v69 = (v72 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 50;
  *v70 = "skipStatement";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        sub_23C743B70(v5, a1, a2, a3);
        break;
      case 4:
        sub_23C74412C(v5, a1, a2, a3);
        break;
      case 5:
        sub_23C7446E8(v5, a1, a2, a3);
        break;
      case 6:
        sub_23C744CA4(v5, a1, a2, a3);
        break;
      case 7:
        sub_23C745260(v5, a1, a2, a3);
        break;
      case 11:
        sub_23C74581C(v5, a1, a2, a3);
        break;
      case 14:
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 32;
        goto LABEL_32;
      case 15:
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 33;
LABEL_32:
        sub_23C745DD8(v11, v12, v13, v14, &qword_27E1F9958, &qword_23C873E10, type metadata accessor for TranscriptProtoPayloadEnum, v15);
        break;
      case 19:
        sub_23C746160(v5, a1, a2, a3);
        break;
      case 21:
        sub_23C74671C(v5, a1, a2, a3);
        break;
      case 25:
        sub_23C746CD8(v5, a1, a2, a3);
        break;
      case 26:
        sub_23C747294(v5, a1, a2, a3);
        break;
      case 27:
        sub_23C747850(v5, a1, a2, a3);
        break;
      case 28:
        sub_23C747E0C(v5, a1, a2, a3);
        break;
      case 29:
        sub_23C7483C8(v5, a1, a2, a3);
        break;
      case 30:
        sub_23C748984(v5, a1, a2, a3);
        break;
      case 31:
        sub_23C748F40(v5, a1, a2, a3);
        break;
      case 32:
        sub_23C7494FC(v5, a1, a2, a3);
        break;
      case 33:
        sub_23C749AB8(v5, a1, a2, a3);
        break;
      case 36:
        sub_23C74A074(v5, a1, a2, a3);
        break;
      case 37:
        sub_23C74A630(v5, a1, a2, a3);
        break;
      case 38:
        sub_23C74ABEC(v5, a1, a2, a3);
        break;
      case 39:
        sub_23C74B1A8(v5, a1, a2, a3);
        break;
      case 40:
        sub_23C74B764(v5, a1, a2, a3);
        break;
      case 41:
        sub_23C74BD20(v5, a1, a2, a3);
        break;
      case 42:
        sub_23C74C2DC(v5, a1, a2, a3);
        break;
      case 43:
        sub_23C74C898(v5, a1, a2, a3);
        break;
      case 44:
        sub_23C74CE54(v5, a1, a2, a3);
        break;
      case 45:
        sub_23C74D410(v5, a1, a2, a3);
        break;
      case 46:
        sub_23C74D9CC(v5, a1, a2, a3);
        break;
      case 47:
        sub_23C74DF7C(v5, a1, a2, a3);
        break;
      case 48:
        sub_23C74E538(v5, a1, a2, a3);
        break;
      case 49:
        sub_23C74EAF4(v5, a1, a2, a3);
        break;
      case 50:
        sub_23C74F0B0(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_23C743B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPlan(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E50, &qword_23C8A0FF8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203E50, &qword_23C8A0FF8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPlan);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPlan);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2024C8, type metadata accessor for TranscriptProtoPlan);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E50, &qword_23C8A0FF8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E50, &qword_23C8A0FF8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E50, &qword_23C8A0FF8);
    return sub_23C585C34(v36, &qword_27E203E50, &qword_23C8A0FF8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPlan);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E50, &qword_23C8A0FF8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPlan);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB28, &qword_23C87B928);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FBB28, &qword_23C87B928);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoAction);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoAction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FBB28, &qword_23C87B928);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FBB28, &qword_23C87B928);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FBB28, &qword_23C87B928);
    return sub_23C585C34(v36, &qword_27E1FBB28, &qword_23C87B928);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoAction);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FBB28, &qword_23C87B928);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoAction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7446E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoClientAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E58, &qword_23C8A1000);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E203E58, &qword_23C8A1000);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoClientAction);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoClientAction);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202130, type metadata accessor for TranscriptProtoClientAction);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E58, &qword_23C8A1000);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E58, &qword_23C8A1000);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E58, &qword_23C8A1000);
    return sub_23C585C34(v36, &qword_27E203E58, &qword_23C8A1000);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoClientAction);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E58, &qword_23C8A1000);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoClientAction);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C744CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v6 = *(Step - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Step);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E60, &qword_23C8A1008);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = Step;
  v30 = Step;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E203E60, &qword_23C8A1008);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryStep);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryStep);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202538, type metadata accessor for TranscriptProtoQueryStep);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E60, &qword_23C8A1008);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E60, &qword_23C8A1008);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E60, &qword_23C8A1008);
    return sub_23C585C34(v36, &qword_27E203E60, &qword_23C8A1008);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryStep);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E60, &qword_23C8A1008);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryStep);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C745260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoVariableStep(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E68, &qword_23C8A1010);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v28, &qword_27E203E68, &qword_23C8A1010);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoVariableStep);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoVariableStep);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202938, type metadata accessor for TranscriptProtoVariableStep);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E68, &qword_23C8A1010);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E68, &qword_23C8A1010);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E68, &qword_23C8A1010);
    return sub_23C585C34(v36, &qword_27E203E68, &qword_23C8A1010);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoVariableStep);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E68, &qword_23C8A1010);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoVariableStep);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E70, &qword_23C8A1018);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v28, &qword_27E203E70, &qword_23C8A1018);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSessionError);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSessionError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202208, type metadata accessor for TranscriptProtoSessionError);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E70, &qword_23C8A1018);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E70, &qword_23C8A1018);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E70, &qword_23C8A1018);
    return sub_23C585C34(v36, &qword_27E203E70, &qword_23C8A1018);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSessionError);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E70, &qword_23C8A1018);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSessionError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C745DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v39 = a8;
  v37 = a7;
  v38 = a6;
  v40 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  v21 = sub_23C870E84();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v20, 1, 1, v21);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  v23 = v41;
  sub_23C871094();
  v41 = v23;
  if (v23)
  {
    return sub_23C585C34(v20, &qword_27E1FEBC8, &qword_23C889840);
  }

  v34[1] = a4;
  v35 = v13;
  v36 = a5;
  sub_23C5855B0(v20, v18, &qword_27E1FEBC8, &qword_23C889840);
  v24 = (*(v22 + 48))(v18, 1, v21);
  sub_23C585C34(v18, &qword_27E1FEBC8, &qword_23C889840);
  if (v24 == 1)
  {
    return sub_23C585C34(v20, &qword_27E1FEBC8, &qword_23C889840);
  }

  v26 = v35;
  v27 = v36;
  v28 = v38;
  sub_23C5855B0(v40, v35, v36, v38);
  v29 = v37(0);
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v26, 1, v29);
  sub_23C585C34(v26, v27, v28);
  if (v31 != 1)
  {
    v32 = v41;
    sub_23C871054();
    if (v32)
    {
      return sub_23C585C34(v20, &qword_27E1FEBC8, &qword_23C889840);
    }
  }

  sub_23C585C34(v20, &qword_27E1FEBC8, &qword_23C889840);
  v33 = v40;
  sub_23C585C34(v40, v36, v28);
  swift_storeEnumTagMultiPayload();
  return (*(v30 + 56))(v33, 0, 1, v29);
}

uint64_t sub_23C746160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v6 = *(StepResults - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](StepResults);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E78, &qword_23C8A1020);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = StepResults;
  v30 = StepResults;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v28, &qword_27E203E78, &qword_23C8A1020);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryStepResults);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryStepResults);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2025B0, type metadata accessor for TranscriptProtoQueryStepResults);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E78, &qword_23C8A1020);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E78, &qword_23C8A1020);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E78, &qword_23C8A1020);
    return sub_23C585C34(v36, &qword_27E203E78, &qword_23C8A1020);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryStepResults);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E78, &qword_23C8A1020);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryStepResults);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74671C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E80, &qword_23C8A1028);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v28, &qword_27E203E80, &qword_23C8A1028);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoActionResolverRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoActionResolverRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202840, type metadata accessor for TranscriptProtoActionResolverRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E80, &qword_23C8A1028);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E80, &qword_23C8A1028);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E80, &qword_23C8A1028);
    return sub_23C585C34(v36, &qword_27E203E80, &qword_23C8A1028);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoActionResolverRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E80, &qword_23C8A1028);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoActionResolverRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C746CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E88, &qword_23C8A1030);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v28, &qword_27E203E88, &qword_23C8A1030);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSafetyModeRelease);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSafetyModeRelease);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202890, type metadata accessor for TranscriptProtoSafetyModeRelease);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E88, &qword_23C8A1030);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E88, &qword_23C8A1030);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E88, &qword_23C8A1030);
    return sub_23C585C34(v36, &qword_27E203E88, &qword_23C8A1030);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSafetyModeRelease);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E88, &qword_23C8A1030);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSafetyModeRelease);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C747294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E90, &qword_23C8A1038);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v28, &qword_27E203E90, &qword_23C8A1038);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSafetyModeException);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSafetyModeException);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2028A8, type metadata accessor for TranscriptProtoSafetyModeException);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E90, &qword_23C8A1038);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E90, &qword_23C8A1038);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E90, &qword_23C8A1038);
    return sub_23C585C34(v36, &qword_27E203E90, &qword_23C8A1038);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSafetyModeException);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E90, &qword_23C8A1038);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSafetyModeException);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C747850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E98, &qword_23C8A1040);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_23C585C34(v28, &qword_27E203E98, &qword_23C8A1040);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2020F0, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E98, &qword_23C8A1040);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E98, &qword_23C8A1040);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E98, &qword_23C8A1040);
    return sub_23C585C34(v36, &qword_27E203E98, &qword_23C8A1040);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E98, &qword_23C8A1040);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C747E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v6 = *(matched - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](matched);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EA0, &qword_23C8A1048);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = matched;
  v30 = matched;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_23C585C34(v28, &qword_27E203EA0, &qword_23C8A1048);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202E38, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EA0, &qword_23C8A1048);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EA0, &qword_23C8A1048);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EA0, &qword_23C8A1048);
    return sub_23C585C34(v36, &qword_27E203EA0, &qword_23C8A1048);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EA0, &qword_23C8A1048);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7483C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EA8, &qword_23C8A1050);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_23C585C34(v28, &qword_27E203EA8, &qword_23C8A1050);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoContextRetrieved);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoContextRetrieved);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202858, type metadata accessor for TranscriptProtoContextRetrieved);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EA8, &qword_23C8A1050);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EA8, &qword_23C8A1050);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EA8, &qword_23C8A1050);
    return sub_23C585C34(v36, &qword_27E203EA8, &qword_23C8A1050);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoContextRetrieved);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EA8, &qword_23C8A1050);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoContextRetrieved);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C748984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EB0, &qword_23C8A1058);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_23C585C34(v28, &qword_27E203EB0, &qword_23C8A1058);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoActionCancellation);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoActionCancellation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201FF8, type metadata accessor for TranscriptProtoActionCancellation);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EB0, &qword_23C8A1058);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EB0, &qword_23C8A1058);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EB0, &qword_23C8A1058);
    return sub_23C585C34(v36, &qword_27E203EB0, &qword_23C8A1058);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoActionCancellation);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EB0, &qword_23C8A1058);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoActionCancellation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C748F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EB8, &qword_23C8A1060);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_23C585C34(v28, &qword_27E203EB8, &qword_23C8A1060);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoToolRetrievalResponse);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoToolRetrievalResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202E50, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EB8, &qword_23C8A1060);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EB8, &qword_23C8A1060);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EB8, &qword_23C8A1060);
    return sub_23C585C34(v36, &qword_27E203EB8, &qword_23C8A1060);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EB8, &qword_23C8A1060);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7494FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EC0, &qword_23C8A1068);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_23C585C34(v28, &qword_27E203EC0, &qword_23C8A1068);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSystemResponse);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSystemResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202E68, type metadata accessor for TranscriptProtoSystemResponse);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EC0, &qword_23C8A1068);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EC0, &qword_23C8A1068);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EC0, &qword_23C8A1068);
    return sub_23C585C34(v36, &qword_27E203EC0, &qword_23C8A1068);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSystemResponse);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EC0, &qword_23C8A1068);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSystemResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C749AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementResult(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EC8, &qword_23C8A1070);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_23C585C34(v28, &qword_27E203EC8, &qword_23C8A1070);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoStatementResult);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoStatementResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EC8, &qword_23C8A1070);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EC8, &qword_23C8A1070);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EC8, &qword_23C8A1070);
    return sub_23C585C34(v36, &qword_27E203EC8, &qword_23C8A1070);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoStatementResult);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EC8, &qword_23C8A1070);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoStatementResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203ED0, &qword_23C8A1078);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_23C585C34(v28, &qword_27E203ED0, &qword_23C8A1078);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoExternalAgentOutcome);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoExternalAgentOutcome);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2020B0, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203ED0, &qword_23C8A1078);
  }

  sub_23C5855B0(v28, v36, &qword_27E203ED0, &qword_23C8A1078);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203ED0, &qword_23C8A1078);
    return sub_23C585C34(v36, &qword_27E203ED0, &qword_23C8A1078);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203ED0, &qword_23C8A1078);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74A630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_23C585C34(v28, &qword_27E203DC0, &unk_23C8A1170);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203DC0, &unk_23C8A1170);
  }

  sub_23C5855B0(v28, v36, &qword_27E203DC0, &unk_23C8A1170);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203DC0, &unk_23C8A1170);
    return sub_23C585C34(v36, &qword_27E203DC0, &unk_23C8A1170);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203DC0, &unk_23C8A1170);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoToolResolution(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203ED8, &qword_23C8A1080);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_23C585C34(v28, &qword_27E203ED8, &qword_23C8A1080);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoToolResolution);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoToolResolution);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202EF8, type metadata accessor for TranscriptProtoToolResolution);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203ED8, &qword_23C8A1080);
  }

  sub_23C5855B0(v28, v36, &qword_27E203ED8, &qword_23C8A1080);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203ED8, &qword_23C8A1080);
    return sub_23C585C34(v36, &qword_27E203ED8, &qword_23C8A1080);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoToolResolution);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203ED8, &qword_23C8A1080);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoToolResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EE0, &qword_23C8A1088);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_23C585C34(v28, &qword_27E203EE0, &qword_23C8A1088);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoUndoRedoRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoUndoRedoRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202F10, type metadata accessor for TranscriptProtoUndoRedoRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EE0, &qword_23C8A1088);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EE0, &qword_23C8A1088);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EE0, &qword_23C8A1088);
    return sub_23C585C34(v36, &qword_27E203EE0, &qword_23C8A1088);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoUndoRedoRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EE0, &qword_23C8A1088);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoUndoRedoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74B764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EE8, &qword_23C8A1090);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_23C585C34(v28, &qword_27E203EE8, &qword_23C8A1090);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202F28, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EE8, &qword_23C8A1090);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EE8, &qword_23C8A1090);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EE8, &qword_23C8A1090);
    return sub_23C585C34(v36, &qword_27E203EE8, &qword_23C8A1090);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EE8, &qword_23C8A1090);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EF0, &qword_23C8A1098);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203EF0, &qword_23C8A1098);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201E10, type metadata accessor for TranscriptProtoRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EF0, &qword_23C8A1098);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EF0, &qword_23C8A1098);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EF0, &qword_23C8A1098);
    return sub_23C585C34(v36, &qword_27E203EF0, &qword_23C8A1098);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EF0, &qword_23C8A1098);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74C2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203EF8, &qword_23C8A10A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_23C585C34(v28, &qword_27E203EF8, &qword_23C8A10A0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoExternalAgentRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoExternalAgentRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201ED0, type metadata accessor for TranscriptProtoExternalAgentRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203EF8, &qword_23C8A10A0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203EF8, &qword_23C8A10A0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203EF8, &qword_23C8A10A0);
    return sub_23C585C34(v36, &qword_27E203EF8, &qword_23C8A10A0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoExternalAgentRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203EF8, &qword_23C8A10A0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoExternalAgentRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}