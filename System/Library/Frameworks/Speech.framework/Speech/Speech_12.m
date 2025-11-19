uint64_t sub_1AC6BEB10()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1008) = v3;
  if (v3)
  {
    v4 = v1[120];
    v5 = v1[112];
    v6 = v1[111];
  }

  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6BEC70()
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 984);
  v2 = *(v0 + 832);

  v3 = [v2 wrapAsAnyEvent];
  *(v0 + 1016) = v3;
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = *(v0 + 1000);
  v6 = *(v0 + 960);
  v7 = *(v0 + 952);
  v8 = *(v0 + 944);
  v9 = *(v0 + 896);
  v10 = *(v0 + 888);
  v11 = *(v0 + 856);

  v12 = sub_1AC79FF58();
  *(v0 + 1024) = v12;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1AC6BEE30;
  v13 = swift_continuation_init();
  *(v0 + 440) = v5;
  *(v0 + 384) = MEMORY[0x1E69E9820];
  *(v0 + 392) = 1107296256;
  *(v0 + 400) = sub_1AC6BB2BC;
  *(v0 + 408) = &block_descriptor_4;
  *(v0 + 416) = v13;
  [v11 reportDataUploadEvent:v4 application:v12 completion:v0 + 384];
  v14 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1AC6BEE30()
{
  OUTLINED_FUNCTION_85();
  v7 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  *(*v0 + 1032) = *(*v0 + 112);
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC6BEF64()
{
  v91 = v0;
  v90[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1016);

  if (qword_1EB56B5A0 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v2 = *(v0 + 976);
  v3 = *(v0 + 968);
  v87 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v0 + 800);
  v6 = *(v0 + 776);
  v7 = *(v0 + 760);
  v8 = *(v0 + 624);
  v9 = *(v0 + 528);
  v10 = sub_1AC79FDE8();
  __swift_project_value_buffer(v10, qword_1EB56CE38);
  v4(v6, v5, v7);
  sub_1AC5DC36C(v9, v8);
  sub_1AC5CFBB8(v3, v2);
  v11 = sub_1AC79FDC8();
  v12 = sub_1AC7A0618();
  sub_1AC5C28A8(v3, v2);
  if (os_log_type_enabled(v11, v12))
  {
    v80 = v12;
    log = v11;
    v13 = *(v0 + 928);
    v14 = *(v0 + 776);
    v15 = *(v0 + 768);
    v16 = *(v0 + 760);
    v17 = *(v0 + 624);
    v18 = *(v0 + 616);
    v19 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v19 = 136446722;
    sub_1AC7A0CC8();
    v20 = *(v15 + 8);
    v20(v14, v16);
    v21 = OUTLINED_FUNCTION_170();
    v24 = sub_1AC5CFE74(v21, v22, v23);

    *(v19 + 4) = v24;
    v74 = v19;
    *(v19 + 12) = 2082;
    sub_1AC5DC36C(v17, v18);
    v88 = v20;
    if (__swift_getEnumTagSinglePayload(v18, 1, v16) == 1)
    {
      sub_1AC5C720C(*(v0 + 616), &qword_1EB56B8F0, &unk_1AC7A9520);
    }

    else
    {
      v33 = *(v0 + 760);
      v34 = *(v0 + 616);
      sub_1AC79F908();
      v20(v34, v33);
    }

    v35 = *(v0 + 976);
    v36 = *(v0 + 968);
    v76 = *(v0 + 936);
    v72 = *(v0 + 600);
    v37 = *(v0 + 584);
    v38 = *(v0 + 576);
    v63 = *(v0 + 568);
    v65 = *(v0 + 608);
    v39 = *(v0 + 560);
    v40 = *(v0 + 552);
    v67 = *(v0 + 544);
    v69 = *(v0 + 592);
    sub_1AC5C720C(*(v0 + 624), &qword_1EB56B8F0, &unk_1AC7A9520);
    v41 = OUTLINED_FUNCTION_170();
    v44 = sub_1AC5CFE74(v41, v42, v43);

    *(v74 + 14) = v44;
    *(v74 + 22) = 2080;
    *(v0 + 512) = MEMORY[0x1B26E8430](v36, v35);
    (*(v38 + 104))(v37, *MEMORY[0x1E69689F0], v63);
    sub_1AC79F688();
    sub_1AC79F458();
    (*(v40 + 8))(v39, v67);
    v45 = *(v38 + 8);
    v46 = OUTLINED_FUNCTION_89();
    v47(v46);
    sub_1AC6C1958();
    sub_1AC6C2C38(&qword_1EB56CE68, MEMORY[0x1E6968A00]);
    sub_1AC6C19AC();
    sub_1AC7A0818();
    (*(v72 + 8))(v65, v69);
    v48 = sub_1AC5CFE74(*(v0 + 480), *(v0 + 488), v90);

    *(v74 + 24) = v48;
    _os_log_impl(&dword_1AC5BC000, log, v80, "Reported speech donation with donationID %{public}s, speechID %{public}s (audio size %s)", v74, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
    sub_1AC5C28A8(v36, v35);
  }

  else
  {
    v25 = *(v0 + 976);
    v26 = *(v0 + 968);
    v27 = *(v0 + 776);
    v28 = *(v0 + 768);
    v29 = *(v0 + 760);
    v30 = *(v0 + 624);

    v31 = OUTLINED_FUNCTION_39();
    sub_1AC5C28A8(v31, v32);
    sub_1AC5C720C(v30, &qword_1EB56B8F0, &unk_1AC7A9520);
    v88 = *(v28 + 8);
    v88(v27, v29);
  }

  v81 = *(v0 + 912);
  loga = *(v0 + 920);
  v49 = *(v0 + 904);
  v50 = *(v0 + 872);
  v51 = *(v0 + 856);
  v64 = *(v0 + 848);
  v66 = *(v0 + 840);
  v68 = *(v0 + 832);
  v71 = *(v0 + 880);
  v73 = *(v0 + 824);
  v70 = *(v0 + 816);
  v52 = *(v0 + 808);
  v53 = *(v0 + 800);
  v54 = *(v0 + 760);
  v78 = *(v0 + 752);
  v55 = *(v0 + 744);
  v75 = v53;
  v77 = *(v0 + 736);
  v56 = *(v0 + 704);
  v57 = *(v0 + 688);
  v58 = *(v0 + 664);
  v59 = *(v0 + 520);
  (*(v0 + 864))(v59);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v54);
  sub_1AC6BFBFC(v49, v57);

  v81(v57, v58);
  v81(v56, v58);
  (*(v55 + 8))(v78, v77);
  v88(v75, v54);
  OUTLINED_FUNCTION_2_13();
  v79 = *(v0 + 624);
  v82 = *(v0 + 616);
  logb = *(v0 + 608);
  v86 = *(v0 + 584);
  v89 = *(v0 + 560);

  OUTLINED_FUNCTION_44();
  v61 = *MEMORY[0x1E69E9840];

  return v60();
}

uint64_t sub_1AC6BF65C()
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = v0[126];
  v8 = v0[124];
  v9 = v0[123];
  OUTLINED_FUNCTION_8_8();
  v10 = OUTLINED_FUNCTION_39();
  sub_1AC5C28A8(v10, v11);

  sub_1AC6BFBFC(v1, v3);
  (v5)(v3, v4);
  (v5)(v2, v4);
  v12 = v0[126];
  if (qword_1EB56B5A0 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v13 = sub_1AC79FDE8();
  __swift_project_value_buffer(v13, qword_1EB56CE38);
  v14 = v12;
  v15 = sub_1AC79FDC8();
  v16 = sub_1AC7A05F8();

  if (os_log_type_enabled(v15, v16))
  {
    v1 = OUTLINED_FUNCTION_150();
    v2 = OUTLINED_FUNCTION_418();
    *v1 = 138412290;
    v17 = v12;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 1) = v18;
    *v2 = v18;
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v19, v20, "Unable to report speech donation: %@");
    sub_1AC5C720C(v2, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  OUTLINED_FUNCTION_7_9();

  (*(v15 + 8))();
  (*(v5 + 8))(v31, v16);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_9_11();

  OUTLINED_FUNCTION_44();
  v25 = *MEMORY[0x1E69E9840];

  return v24();
}

uint64_t sub_1AC6BF92C()
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = v0[129];
  v8 = v0[128];
  v9 = v0[127];
  OUTLINED_FUNCTION_8_8();
  v10 = OUTLINED_FUNCTION_39();
  sub_1AC5C28A8(v10, v11);

  sub_1AC6BFBFC(v1, v3);
  (v5)(v3, v4);
  (v5)(v2, v4);
  v12 = v0[129];
  if (qword_1EB56B5A0 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v13 = sub_1AC79FDE8();
  __swift_project_value_buffer(v13, qword_1EB56CE38);
  v14 = v12;
  v15 = sub_1AC79FDC8();
  v16 = sub_1AC7A05F8();

  if (os_log_type_enabled(v15, v16))
  {
    v1 = OUTLINED_FUNCTION_150();
    v2 = OUTLINED_FUNCTION_418();
    *v1 = 138412290;
    v17 = v12;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 1) = v18;
    *v2 = v18;
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v19, v20, "Unable to report speech donation: %@");
    sub_1AC5C720C(v2, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  OUTLINED_FUNCTION_7_9();

  (*(v15 + 8))();
  (*(v5 + 8))(v31, v16);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_9_11();

  OUTLINED_FUNCTION_44();
  v25 = *MEMORY[0x1E69E9840];

  return v24();
}

void sub_1AC6BFBFC(void *a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AC79F7F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AC79F788();
  v30[0] = 0;
  v10 = [a1 removeItemAtURL:v9 error:v30];

  v11 = v30[0];
  if (v10 && (v12 = v30[0], v13 = sub_1AC79F788(), v30[0] = 0, v14 = [a1 removeItemAtURL:v13 error:v30], v13, v11 = v30[0], v14))
  {
    v15 = *MEMORY[0x1E69E9840];

    v16 = v11;
  }

  else
  {
    v29 = v11;
    v17 = v11;
    v18 = sub_1AC79F748();

    swift_willThrow();
    if (qword_1EB56B5A0 != -1)
    {
      swift_once();
    }

    v19 = sub_1AC79FDE8();
    __swift_project_value_buffer(v19, qword_1EB56CE38);
    (*(v5 + 16))(v8, a2, v4);
    v20 = sub_1AC79FDC8();
    v21 = sub_1AC7A05F8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136315138;
      sub_1AC6C2C38(&qword_1EB56CEA8, MEMORY[0x1E6968FB0]);
      v24 = sub_1AC7A0CC8();
      v26 = v25;
      (*(v5 + 8))(v8, v4);
      v27 = sub_1AC5CFE74(v24, v26, v30);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1AC5BC000, v20, v21, "Unable to remove %s after donation", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B26EAB10](v23, -1, -1);
      MEMORY[0x1B26EAB10](v22, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v28 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1AC6BFF88(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_1AC7ACAC4[a1 - 1];
  }
}

uint64_t SpeechDonation.donorBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t SpeechDonation.recordingDate.getter()
{
  v2 = *(OUTLINED_FUNCTION_26_7() + 20);
  v3 = sub_1AC79F8E8();
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t SpeechDonation.speechAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpeechDonation() + 24));
}

id SpeechDonation.audioSource.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_26_7() + 28));
  *v0 = v2;

  return v2;
}

id SpeechDonation.audioFormat.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpeechDonation() + 32));

  return v1;
}

uint64_t SpeechDonation.locale.getter()
{
  v2 = *(OUTLINED_FUNCTION_26_7() + 36);
  v3 = sub_1AC79FB18();
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t SpeechDonation.transcription.getter()
{
  v1 = (v0 + *(type metadata accessor for SpeechDonation() + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t SpeechDonation.taskHint.getter()
{
  result = OUTLINED_FUNCTION_26_7();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t SpeechDonation.evaluation.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_26_7() + 48));
  v3 = *v2;
  v4 = v2[1];
  *v0 = *v2;
  v0[1] = v4;

  return sub_1AC6C1A14(v3, v4);
}

uint64_t sub_1AC6C023C()
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t SpeechDonation.SpeechAttribute.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6C0324()
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6C036C()
{
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  OUTLINED_FUNCTION_89();
  return sub_1AC7A0758() & 1;
}

uint64_t sub_1AC6C03BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1AC6C036C();
}

uint64_t static SpeechDonation.AudioSource.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  OUTLINED_FUNCTION_39();
  return sub_1AC7A0758() & 1;
}

double static SpeechDonation.TranscriptionEvaluation.inaccurate.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC7A7E20;
  return result;
}

uint64_t static SpeechDonation.TranscriptionEvaluation.expected(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1AC6C0440(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_1AC7A0D38();
  }

  return 1;
}

uint64_t sub_1AC6C048C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x1B26E9A40](v3);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x1B26E9A40](v3);
  }

  MEMORY[0x1B26E9A40](2);

  return sub_1AC7A0048();
}

uint64_t sub_1AC6C050C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_85_1();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1B26E9A40](2);
      sub_1AC7A0048();
      return sub_1AC7A0EC8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B26E9A40](v3);
  return sub_1AC7A0EC8();
}

uint64_t static SpeechDonation.TranscriptionEvaluation.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 != 1)
  {
    if (v4 >= 2)
    {
      v6 = *a1 == *a2 && v3 == v4;
      if (v6 || (sub_1AC7A0D38() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v4 == 1;
}

uint64_t SpeechDonation.TranscriptionEvaluation.hash(into:)()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1B26E9A40](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1B26E9A40](v2);
  }

  v4 = *v0;
  MEMORY[0x1B26E9A40](2);

  return sub_1AC7A0048();
}

uint64_t SpeechDonation.TranscriptionEvaluation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_85_1();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B26E9A40](2);
      sub_1AC7A0048();
      return sub_1AC7A0EC8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B26E9A40](v3);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6C0730()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AC7A0E78();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B26E9A40](2);
      sub_1AC7A0048();
      return sub_1AC7A0EC8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B26E9A40](v3);
  return sub_1AC7A0EC8();
}

void SpeechDonation.init(donorBundleID:recordingDate:audioFormat:audioData:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:donorReferenceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, char a25, uint64_t *a26)
{
  OUTLINED_FUNCTION_104();
  v27 = v26;
  v95 = v29;
  v96 = v28;
  v93 = v31;
  v94 = v30;
  v33 = v32;
  v83 = v34;
  v84 = v35;
  v37 = v36;
  v38 = sub_1AC79FB18();
  v39 = OUTLINED_FUNCTION_40(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_4();
  v91 = v44;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_91();
  v98 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = sub_1AC79F8E8();
  v48 = OUTLINED_FUNCTION_40(v47);
  v92 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_4();
  v90 = v52;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_91();
  v97 = v54;

  v55 = *a22;
  v85 = a22[1];
  v82 = *a26;
  if (a25)
  {
    v56 = 16;
  }

  else
  {
    sub_1AC6F4A30(a24, v99);
    v56 = v99[0];
  }

  v86 = v33;
  v57 = v33;
  v58 = *(v92 + 16);
  v58(v97, v57, v47);
  v81 = v41;
  v60 = *(v41 + 16);
  v59 = (v41 + 16);
  v87 = v60;
  v60(v98, v95, v38);
  sub_1AC6BCA98(v94);
  switch(v93 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v96), v96))
      {
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_25;
    case 2uLL:
      if (__OFSUB__(*(v96 + 24), *(v96 + 16)))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_8:
      OUTLINED_FUNCTION_30_5();
      if (v61 < 0)
      {
        __break(1u);
        goto LABEL_20;
      }

LABEL_9:
      v55 = sub_1AC79F838();
      v89 = v62;
      v63 = MEMORY[0x1B26E8430]();
      if (v63 < -1)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v63 > 0x1FFFFFFFFLL)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v80 = v56;
      v88 = v38;
      v64 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v94 frameCapacity:v63 / 2];
      if (v64)
      {
        v38 = v64;
        v79 = v27;
        v65 = [v64 int16ChannelData];
        if ([v94 channelCount])
        {
          v66 = *v65;
        }

        else
        {
          v66 = 0;
        }

        v67 = [v38 frameCapacity];
        [v38 setFrameLength_];
        sub_1AC6BCB2C(v66, v67, 0, 0, 1, v55, v89);
        v58(v90, v97, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1AC7AA7F0;
        *(v27 + 32) = v38;
        v87(v91, v98, v88);
        if (sub_1AC61C24C(v27))
        {
          *v37 = v83;
          *(v37 + 1) = v84;
          v59 = type metadata accessor for SpeechDonation();
          v58(v37 + v59[5], v90, v47);
          *(v37 + v59[6]) = a23;
          v87 = v37;
          *(v37 + v59[7]) = v82;
          v68 = OUTLINED_FUNCTION_10_11();
          sub_1AC61C25C(v68, v69, v27);
          v37 = v47;
          if ((v27 & 0xC000000000000001) == 0)
          {
            v70 = *(v27 + 32);
            v71 = v38;
            v72 = v70;
LABEL_18:
            v73 = v72;
            v74 = [v72 format];

            sub_1AC5C28A8(v55, v89);
            sub_1AC5C28A8(v96, v93);

            v75 = *(v81 + 8);
            v75(v95, v88);
            v76 = *(v92 + 8);
            v76(v86, v37);
            v76(v90, v37);
            v75(v98, v88);
            v76(v97, v37);
            *(v87 + v59[8]) = v74;
            *(v87 + v59[13]) = v27;
            (*(v81 + 32))(v87 + v59[9], v91, v88);
            v77 = (v87 + v59[10]);
            *v77 = v79;
            v77[1] = a21;
            *(v87 + v59[11]) = v80;
            OUTLINED_FUNCTION_28_7((v87 + v59[12]));
            OUTLINED_FUNCTION_105();
            return;
          }

LABEL_23:
          v78 = v38;
          v72 = MEMORY[0x1B26E95B0](0, v27);
          goto LABEL_18;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_26:
      __break(1u);
      return;
    default:
      goto LABEL_9;
  }
}

void SpeechDonation.init(donorBundleID:recordingDate:audioBuffers:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:donorReferenceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, unint64_t *a24)
{
  OUTLINED_FUNCTION_104();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v98 = v31;
  v99 = v30;
  v33 = v32;
  v90 = v34;
  v91 = v35;
  v37 = v36;
  v38 = sub_1AC79FB18();
  v39 = OUTLINED_FUNCTION_40(v38);
  v100 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_4();
  v95 = v43;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_91();
  v102 = v45;
  OUTLINED_FUNCTION_70_0();
  v103 = sub_1AC79F8E8();
  v46 = OUTLINED_FUNCTION_40(v103);
  v97 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_4();
  v94 = v50;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_91();
  v101 = v52;

  v54 = *v25;
  v53 = v25[1];
  v55 = *a24;
  if (a23)
  {
    LOBYTE(v56) = 16;
  }

  else
  {
    sub_1AC6F4A30(a22, v107);
    LOBYTE(v56) = v107[0];
  }

  v93 = *(v97 + 16);
  v93(v101, v99, v103);
  v96 = v38;
  v92 = *(v100 + 16);
  v92(v102, v98, v38);
  v57 = sub_1AC61C24C(v33);
  if (!v57)
  {
    goto LABEL_44;
  }

  v38 = v57;
  v85 = v55;
  v55 = v33 & 0xC000000000000001;
  v58 = OUTLINED_FUNCTION_10_11();
  sub_1AC61C25C(v58, v59, v33);
  if ((v33 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  for (i = *(v33 + 32); ; i = MEMORY[0x1B26E95B0](0, v33))
  {
    v61 = i;
    v86 = v56;
    v89 = v37;
    v87 = v29;
    v88 = v27;
    v62 = [i format];

    v105 = v62;
    if (!v62)
    {
      break;
    }

    v63 = 0;
    v56 = &qword_1ED937298;
    v37 = 0x1E69E58C0uLL;
    while (1)
    {
      if (v38 == v63)
      {
        goto LABEL_17;
      }

      if (v55)
      {
        v64 = MEMORY[0x1B26E95B0](v63, v33);
      }

      else
      {
        if (v63 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v64 = *(v33 + 8 * v63 + 32);
      }

      v27 = v64;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v65 = OUTLINED_FUNCTION_21_7();
      sub_1AC5CF764(v65, v66, 0x1E69E58C0);
      v67 = [v27 format];
      v68 = sub_1AC7A0758();

      ++v63;
      if ((v68 & 1) == 0)
      {
        __break(1u);
LABEL_17:
        sub_1AC6BCA98(v105);
        v37 = 0;
        v69 = MEMORY[0x1E69E7CC0];
        v106 = MEMORY[0x1E69E7CC0];
        v56 = 960000;
        while (1)
        {
          if (v55)
          {
            v70 = MEMORY[0x1B26E95B0](v37, v33);
          }

          else
          {
            if (v37 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v70 = *(v33 + 8 * v37 + 32);
          }

          v71 = v70;
          v29 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_41;
          }

          v27 = [v70 format];
          v72 = [v27 channelCount];

          if (v72 && [v71 frameLength] && objc_msgSend(v71, sel_int16ChannelData))
          {
            v73 = [v71 frameLength];
            v27 = (v56 - v73);
            if (v56 < v73)
            {

              sub_1AC6BCC8C(v71, v56);
              MEMORY[0x1B26E8CF0]();
              v84 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v84 >> 1)
              {
                OUTLINED_FUNCTION_9(v84);
                sub_1AC7A0178();
              }

              OUTLINED_FUNCTION_124_0();
              sub_1AC7A0198();
              v69 = v106;

LABEL_33:
              v76 = (v100 + 16);
              v93(v94, v101, v103);
              v92(v95, v102, v96);
              if (sub_1AC61C24C(v69))
              {
                *v89 = v90;
                *(v89 + 1) = v91;
                v76 = type metadata accessor for SpeechDonation();
                v93(&v89[v76[5]], v94, v103);
                *&v89[v76[6]] = a21;
                *&v89[v76[7]] = v85;
                v77 = OUTLINED_FUNCTION_10_11();
                sub_1AC61C25C(v77, v78, v69);
                if ((v69 & 0xC000000000000001) == 0)
                {
                  v79 = *(v69 + 32);
LABEL_36:
                  v80 = v79;
                  v104 = [v79 format];

                  v81 = *(v100 + 8);
                  v81(v98, v96);
                  v82 = *(v97 + 8);
                  v82(v99, v103);
                  v82(v94, v103);
                  v81(v102, v96);
                  v82(v101, v103);
                  *&v89[v76[8]] = v104;
                  *&v89[v76[13]] = v69;
                  (*(v100 + 32))(&v89[v76[9]], v95, v96);
                  v83 = &v89[v76[10]];
                  *v83 = v87;
                  v83[1] = v88;
                  v89[v76[11]] = v86;
                  OUTLINED_FUNCTION_28_7(&v89[v76[12]]);
                  OUTLINED_FUNCTION_105();
                  return;
                }
              }

              else
              {
                __break(1u);
              }

              v79 = MEMORY[0x1B26E95B0](0, v69);
              goto LABEL_36;
            }

            v74 = v71;
            MEMORY[0x1B26E8CF0]();
            v75 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v75 >> 1)
            {
              OUTLINED_FUNCTION_9(v75);
              sub_1AC7A0178();
            }

            sub_1AC7A0198();

            v69 = v106;
            v56 = v27;
          }

          else
          {
          }

          ++v37;
          if (v29 == v38)
          {

            goto LABEL_33;
          }
        }
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  __break(1u);
}

id sub_1AC6C1404(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1AC79F788();
  v18[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_1AC79F7F8();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_1AC79F748();

    swift_willThrow();
    v15 = sub_1AC79F7F8();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

id sub_1AC6C1560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1AC79F788();
  v10 = sub_1AC79FE18();

  v20[0] = 0;
  v11 = [v5 initForWriting:v9 settings:v10 commonFormat:a3 interleaved:a4 & 1 error:v20];

  v12 = v20[0];
  if (v11)
  {
    v13 = sub_1AC79F7F8();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a1, v13);
  }

  else
  {
    v16 = v20[0];
    sub_1AC79F748();

    swift_willThrow();
    v17 = sub_1AC79F7F8();
    (*(*(v17 - 8) + 8))(a1, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t type metadata accessor for SpeechDonation()
{
  result = qword_1EB56CE88;
  if (!qword_1EB56CE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC6C1744(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1AC6C1754(a1, a2);
  }

  return a1;
}

uint64_t sub_1AC6C1754(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1AC6C1768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeechDonation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AC6C17CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1AC79F858();
  [a3 setDataPayload_];
}

void sub_1AC6C1824(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1AC79FF58();
  [a3 setLanguage_];
}

void sub_1AC6C187C(uint64_t a1, void *a2)
{
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC7A0148();
  [a2 setAttributes_];
}

uint64_t sub_1AC6C18F8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1AC7A0898();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_1AC7A0868();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_1AC6C1958()
{
  result = qword_1EB56CE60;
  if (!qword_1EB56CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE60);
  }

  return result;
}

unint64_t sub_1AC6C19AC()
{
  result = qword_1EB56CE70;
  if (!qword_1EB56CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE70);
  }

  return result;
}

uint64_t sub_1AC6C1A00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1AC6C1A14(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1AC6C1A00(a1, a2);
  }

  return a1;
}

unint64_t sub_1AC6C1A28()
{
  result = qword_1EB56CE78;
  if (!qword_1EB56CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE78);
  }

  return result;
}

unint64_t sub_1AC6C1A80()
{
  result = qword_1EB56CE80;
  if (!qword_1EB56CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE80);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SpeechDonation(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v29 = *a2;
    *v4 = *a2;
    v4 = (v29 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = sub_1AC79F8E8();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], &a2[v8], v9);
    v11 = a3[7];
    *&v4[a3[6]] = *&a2[a3[6]];
    v12 = *&a2[v11];
    *&v4[v11] = v12;
    v13 = a3[8];
    v14 = a3[9];
    v15 = *&a2[v13];
    *&v4[v13] = v15;
    v16 = sub_1AC79FB18();
    v17 = *(*(v16 - 8) + 16);

    v18 = v12;
    v19 = v15;
    v17(&v4[v14], &a2[v14], v16);
    v20 = a3[10];
    v21 = a3[11];
    v22 = &v4[v20];
    v23 = &a2[v20];
    v24 = *(v23 + 1);
    *v22 = *v23;
    *(v22 + 1) = v24;
    v4[v21] = a2[v21];
    v25 = a3[12];
    v26 = &v4[v25];
    v27 = &a2[v25];
    v28 = *&a2[v25 + 8];

    if (v28 <= 2)
    {
      *v26 = *v27;
    }

    else
    {
      *v26 = *v27;
      *(v26 + 1) = v28;
    }

    *&v4[a3[13]] = *&a2[a3[13]];
  }

  return v4;
}

uint64_t destroy for SpeechDonation(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = a2[5];
  v6 = sub_1AC79F8E8();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = *(a1 + a2[6]);

  v8 = a2[9];
  v9 = sub_1AC79FB18();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);
  v10 = *(a1 + a2[10] + 8);

  if (*(a1 + a2[12] + 8) >= 3uLL)
  {
  }

  v11 = *(a1 + a2[13]);
}

char *initializeWithCopy for SpeechDonation(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v11 = *&a2[v10];
  *&a1[v10] = v11;
  v12 = a3[8];
  v13 = a3[9];
  v14 = *&a2[v12];
  *&a1[v12] = v14;
  v15 = sub_1AC79FB18();
  v16 = *(*(v15 - 8) + 16);

  v17 = v11;
  v18 = v14;
  v16(&a1[v13], &a2[v13], v15);
  v19 = a3[10];
  v20 = a3[11];
  v21 = &a1[v19];
  v22 = &a2[v19];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  a1[v20] = a2[v20];
  v24 = a3[12];
  v25 = &a1[v24];
  v26 = &a2[v24];
  v27 = *&a2[v24 + 8];

  if (v27 <= 2)
  {
    *v25 = *v26;
  }

  else
  {
    *v25 = *v26;
    *(v25 + 1) = v27;
  }

  *&a1[a3[13]] = *&a2[a3[13]];

  return a1;
}

char *assignWithCopy for SpeechDonation(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = a3[6];
  v10 = *&a1[v9];
  *&a1[v9] = *&a2[v9];

  v11 = a3[7];
  v12 = *&a1[v11];
  v13 = *&a2[v11];
  *&a1[v11] = v13;
  v14 = v13;

  v15 = a3[8];
  v16 = *&a2[v15];
  v17 = *&a1[v15];
  *&a1[v15] = v16;
  v18 = v16;

  v19 = a3[9];
  v20 = sub_1AC79FB18();
  (*(*(v20 - 8) + 24))(&a1[v19], &a2[v19], v20);
  v21 = a3[10];
  v22 = &a1[v21];
  v23 = &a2[v21];
  *v22 = *v23;
  v24 = *(v22 + 1);
  *(v22 + 1) = *(v23 + 1);

  a1[a3[11]] = a2[a3[11]];
  v25 = a3[12];
  v26 = &a1[v25];
  v27 = &a2[v25];
  v28 = *&a1[v25 + 8];
  v29 = *&a2[v25 + 8];
  if (v28 == 2)
  {
    if (v29 > 2)
    {
      goto LABEL_10;
    }
  }

  else if (v29 == 2)
  {
    sub_1AC6C2190(v26);
  }

  else if (v28 >= 2)
  {
    if (v29 >= 2)
    {
      *v26 = *v27;
      *(v26 + 1) = *(v27 + 1);

      goto LABEL_7;
    }

    sub_1AC6C213C(v26);
  }

  else if (v29 >= 2)
  {
LABEL_10:
    *v26 = *v27;
    *(v26 + 1) = *(v27 + 1);

    goto LABEL_7;
  }

  *v26 = *v27;
LABEL_7:
  v30 = a3[13];
  v31 = *&a2[v30];
  v32 = *&a1[v30];
  *&a1[v30] = v31;

  return a1;
}

char *initializeWithTake for SpeechDonation(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  v9 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  v10 = sub_1AC79FB18();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  v11 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v11] = a2[v11];
  v12 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  *&a1[v12] = *&a2[v12];
  return a1;
}

char *assignWithTake for SpeechDonation(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = a3[5];
  v9 = sub_1AC79F8E8();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  v10 = a3[6];
  v11 = *&a1[v10];
  *&a1[v10] = *&a2[v10];

  v12 = a3[7];
  v13 = *&a1[v12];
  *&a1[v12] = *&a2[v12];

  v14 = a3[8];
  v15 = *&a1[v14];
  *&a1[v14] = *&a2[v14];

  v16 = a3[9];
  v17 = sub_1AC79FB18();
  (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
  v18 = a3[10];
  v19 = &a1[v18];
  v20 = &a2[v18];
  v22 = *v20;
  v21 = *(v20 + 1);
  v23 = *(v19 + 1);
  *v19 = v22;
  *(v19 + 1) = v21;

  v24 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v25 = &a1[v24];
  v26 = &a2[v24];
  v27 = *&a1[v24 + 8];
  if (v27 != 2)
  {
    v28 = *(v26 + 1);
    if (v28 == 2)
    {
      sub_1AC6C2190(&a1[v24]);
    }

    else if (v27 >= 2)
    {
      if (v28 >= 2)
      {
        *v25 = *v26;
        *(v25 + 1) = v28;

        goto LABEL_8;
      }

      sub_1AC6C213C(&a1[v24]);
    }
  }

  *v25 = *v26;
LABEL_8:
  v29 = a3[13];
  v30 = *&a1[v29];
  *&a1[v29] = *&a2[v29];

  return a1;
}

uint64_t sub_1AC6C2488()
{
  result = sub_1AC79F8E8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1AC79FB18();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t destroy for SpeechDonation.TranscriptionEvaluation(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 2)
  {
  }

  return result;
}

void *sub_1AC6C25D4(void *a1, void *a2)
{
  v3 = a2[1];
  if (v3 >= 2)
  {
    *a1 = *a2;
    a1[1] = v3;
  }

  else
  {
    *a1 = *a2;
  }

  return a1;
}

void *assignWithCopy for SpeechDonation.TranscriptionEvaluation(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] >= 2uLL)
  {
    if (v4 >= 2)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      return a1;
    }

    sub_1AC6C213C(a1);
    goto LABEL_6;
  }

  if (v4 < 2)
  {
LABEL_6:
    *a1 = *a2;
    return a1;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for SpeechDonation.TranscriptionEvaluation(void *a1, void *a2)
{
  if (a1[1] >= 2uLL)
  {
    v4 = a2[1];
    if (v4 >= 2)
    {
      *a1 = *a2;
      a1[1] = v4;

      return a1;
    }

    sub_1AC6C213C(a1);
  }

  *a1 = *a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechDonation.TranscriptionEvaluation(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 16))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 2;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechDonation.TranscriptionEvaluation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t destroy for SpeechDonation.TranscriptionEvaluation.EvaluationCase(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t sub_1AC6C27DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = *a2;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v3;
  }

  return a1;
}

void *assignWithCopy for SpeechDonation.TranscriptionEvaluation.EvaluationCase(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      return a1;
    }

LABEL_7:
    *a1 = *a2;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    v5 = a1[1];

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithTake for SpeechDonation.TranscriptionEvaluation.EvaluationCase(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 8);
  if (v4 < 0xFFFFFFFF)
  {

LABEL_5:
    *a1 = *a2;
    return a1;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechDonation.TranscriptionEvaluation.EvaluationCase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpeechDonation.TranscriptionEvaluation.EvaluationCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1AC6C29E0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeechTranscriber.ModelOptions(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechTranscriber.ModelOptions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1AC6C2A9C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1AC6C2B4C()
{
  result = qword_1EB56CE98;
  if (!qword_1EB56CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CE98);
  }

  return result;
}

unint64_t sub_1AC6C2BA4()
{
  result = qword_1EB56CEA0;
  if (!qword_1EB56CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CEA0);
  }

  return result;
}

uint64_t sub_1AC6C2BF8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1AC7A0868();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1AC6C2C38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_8_8()
{
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[117];
  v11 = v0[115];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[88];
  v8 = v0[86];
  v9 = v0[83];

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return type metadata accessor for SpeechDonation();
}

uint64_t OUTLINED_FUNCTION_32_6()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 320);

  return sub_1AC6C1744(v2, v3);
}

uint64_t OUTLINED_FUNCTION_34_7()
{
}

void sub_1AC6C2D6C()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_113_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_92_3();
  sub_1AC5D1E4C(v8, v9, &qword_1EB56BE70, &qword_1AC7A8270);
  v10 = sub_1AC7A0288();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C720C(v1, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    (*(*(v10 - 8) + 8))(v1, v10);
  }

  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AC5C720C(v3, &qword_1EB56BE70, &qword_1AC7A8270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE78, &qword_1AC7A8288);
    OUTLINED_FUNCTION_71_3();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1AC7A01B8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1AC7A0018();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE78, &qword_1AC7A8288);
  OUTLINED_FUNCTION_71_3();
  swift_task_create();

  sub_1AC5C720C(v3, &qword_1EB56BE70, &qword_1AC7A8270);

LABEL_9:
  OUTLINED_FUNCTION_105();
}

void sub_1AC6C2FD0()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_113_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_92_3();
  sub_1AC5D1E4C(v8, v9, &qword_1EB56BE70, &qword_1AC7A8270);
  v10 = sub_1AC7A0288();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C720C(v1, &qword_1EB56BE70, &qword_1AC7A8270);
  }

  else
  {
    sub_1AC7A0278();
    (*(*(v10 - 8) + 8))(v1, v10);
  }

  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1AC5C720C(v3, &qword_1EB56BE70, &qword_1AC7A8270);
    OUTLINED_FUNCTION_71_3();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1AC7A01B8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1AC7A0018();

  OUTLINED_FUNCTION_71_3();
  swift_task_create();

  sub_1AC5C720C(v3, &qword_1EB56BE70, &qword_1AC7A8270);

LABEL_9:
  OUTLINED_FUNCTION_105();
}

void sub_1AC6C3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v25 = v24;
  v27 = v26;
  v111 = v28;
  v30 = v29;
  v103 = v31;
  v113 = v32;
  v114 = v33;
  v107 = a22;
  v108 = a23;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, a21);
  OUTLINED_FUNCTION_40(v112);
  v109 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_31();
  v105 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v106 = &v96 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v96 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v48 = OUTLINED_FUNCTION_167(v47);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v104 = &v96 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v96 - v53;
  v110 = sub_1AC7A0288();
  v55 = OUTLINED_FUNCTION_40(v110);
  v57 = v56;
  v59 = *(v58 + 64);
  v60 = MEMORY[0x1EEE9AC00](v55);
  v102 = &v96 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v61;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v96 - v62;
  v64 = v27;
  v65 = v27;
  v66 = v25;
  sub_1AC5D9374(v65);
  swift_defaultActor_initialize();
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = 0;
  v67 = MEMORY[0x1E69E7CC0];
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules) = MEMORY[0x1E69E7CC0];
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop) = 0;
  v68 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange;
  *(v68 + 16) = 0u;
  *(v68 + 32) = 0u;
  *v68 = 0u;
  *(v68 + 48) = 1;
  v69 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime;
  *v69 = 0;
  *(v69 + 8) = 0;
  *(v69 + 16) = 0;
  *(v69 + 24) = 1;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers) = v67;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers) = v67;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 0;
  v70 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange;
  *(v70 + 16) = 0u;
  *(v70 + 32) = 0u;
  *v70 = 0u;
  *(v70 + 48) = 1;
  v71 = (v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  *v71 = 0;
  v71[1] = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers) = v67;
  v72 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  *v72 = 0;
  *(v72 + 8) = 0;
  v73 = v30;
  sub_1AC5D1E4C(v30, v46, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v74 = type metadata accessor for SpeechAnalyzer.Options(0);
  if (__swift_getEnumTagSinglePayload(v46, 1, v74) == 1)
  {
    sub_1AC5C720C(v46, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v75 = v110;
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v110);
    sub_1AC7A0338();
    if (__swift_getEnumTagSinglePayload(v54, 1, v75) != 1)
    {
      sub_1AC5C720C(v54, &qword_1EB56BE70, &qword_1AC7A8270);
    }
  }

  else
  {
    v76 = v110;
    (*(v57 + 16))(v54, v46, v110);
    sub_1AC6CC440(v46, type metadata accessor for SpeechAnalyzer.Options);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v76);
    (*(v57 + 32))(v63, v54, v76);
  }

  v77 = v113;
  sub_1AC6CBCA4(v113, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_clientInfo);
  sub_1AC6CBCA4(v77, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_currentClientInfo);
  v101 = v73;
  sub_1AC5D1E4C(v73, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v78 = *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules);
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = v103;

  v79 = (v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v80 = *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v81 = *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8);
  v98 = v66;
  v99 = v64;
  *v79 = v64;
  v79[1] = v66;
  sub_1AC5C3958(v80);
  v82 = v111;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v111;

  sub_1AC6877A4(v83, v82);

  v84 = *(v57 + 16);
  v85 = v104;
  v97 = v63;
  v86 = v110;
  v84(v104, v63, v110);
  __swift_storeEnumTagSinglePayload(v85, 0, 1, v86);
  v87 = v109;
  v88 = v106;
  (*(v109 + 16))(v106, v114, v112);
  v89 = v102;
  v84(v102, v63, v86);
  v90 = (*(v87 + 80) + 40) & ~*(v87 + 80);
  v91 = (v105 + *(v57 + 80) + v90) & ~*(v57 + 80);
  v92 = swift_allocObject();
  *(v92 + 2) = 0;
  *(v92 + 3) = 0;
  *(v92 + 4) = v23;
  v93 = &v92[v90];
  v94 = v112;
  (*(v87 + 32))(v93, v88, v112);
  (*(v57 + 32))(&v92[v91], v89, v86);

  OUTLINED_FUNCTION_248();
  sub_1AC659DBC();
  sub_1AC5C3958(v99);

  sub_1AC5C720C(v101, &qword_1EB56C7D0, &qword_1AC7ACB40);
  (*(v87 + 8))(v114, v94);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v113, v95);
  (*(v57 + 8))(v97, v86);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6C3900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC6C3924, a4, 0);
}

uint64_t sub_1AC6C3924()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1AC6C3A48();
  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC6C39AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC6C39D0, a4, 0);
}

uint64_t sub_1AC6C39D0()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  OUTLINED_FUNCTION_45_7();
  sub_1AC6C3A48();
  OUTLINED_FUNCTION_44();

  return v4();
}

void sub_1AC6C3A48()
{
  OUTLINED_FUNCTION_104();
  v31[1] = v1;
  v3 = v2;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_40(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v31 - v20;
  v22 = sub_1AC7A0288();
  OUTLINED_FUNCTION_80(v22);
  (*(v23 + 16))(v21, v3, v22);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
  (*(v11 + 16))(v15, v5, v8);
  OUTLINED_FUNCTION_3_10();
  v26 = sub_1AC6CC574(v24, v25);
  v27 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v0;
  *(v28 + 3) = v26;
  *(v28 + 4) = v0;
  (*(v11 + 32))(&v28[v27], v15, v8);
  swift_retain_n();
  OUTLINED_FUNCTION_248();
  sub_1AC659DBC();
  v29 = *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask);
  *(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = v30;

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC6C3C50(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1AC7A0288();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6C3D10, v1, 0);
}

uint64_t sub_1AC6C3D10()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = v0[3];
  OUTLINED_FUNCTION_65();
  if (sub_1AC65BF3C(0xD000000000000015, v2))
  {
    v3 = v0[3];
    if (*(v3 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask))
    {
      v4 = *(v3 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask);

      sub_1AC7A0318();

      v5 = v0[3];
    }

    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = v0[2];
    sub_1AC7A0338();
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_62_4();
    sub_1AC6C3A48();
    v10 = *(v7 + 8);
    v11 = OUTLINED_FUNCTION_170();
    v12(v11);
  }

  v13 = v0[6];

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AC6C3E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1AC6C3EE0;

  return sub_1AC6C40C4(a5);
}

uint64_t sub_1AC6C3EE0()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = *(v2 + 16);
  if (v0)
  {
  }

  return MEMORY[0x1EEE6DFA0](sub_1AC68A870, v6, 0);
}

uint64_t sub_1AC6C400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1AC6738E0;

  return sub_1AC6C56B8(a5);
}

uint64_t sub_1AC6C40C4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_1AC7A01F8();
  v2[34] = v3;
  v4 = *(v3 - 8);
  v2[35] = v4;
  v5 = *(v4 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  v2[38] = v6;
  v7 = *(v6 - 8);
  v2[39] = v7;
  v8 = *(v7 + 64) + 15;
  v2[40] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEE0, &qword_1AC7ACD20);
  v2[41] = v9;
  v10 = *(v9 - 8);
  v2[42] = v10;
  v11 = *(v10 + 64) + 15;
  v2[43] = swift_task_alloc();
  v12 = sub_1AC7A0288();
  v2[44] = v12;
  v13 = *(v12 - 8);
  v2[45] = v13;
  v14 = *(v13 + 64) + 15;
  v2[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6C42BC, v1, 0);
}

uint64_t sub_1AC6C4614()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 416) = v0;

  v9 = *(v3 + 264);
  if (v0)
  {
    v10 = sub_1AC6C4AC4;
  }

  else
  {
    v10 = sub_1AC6C4714;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC6C4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_57();
  memcpy((v13 + 88), (v13 + 16), 0x41uLL);
  v14 = *(v13 + 88);
  if (v14)
  {
    OUTLINED_FUNCTION_48_6(v14);
    v15 = swift_task_alloc();
    *(v13 + 424) = v15;
    *v15 = v13;
    v15[1] = sub_1AC6C4DAC;
    v16 = *(v13 + 264);
    OUTLINED_FUNCTION_634();

    return sub_1AC5CC77C();
  }

  else
  {
    v19 = *(v13 + 416);
    v20 = OUTLINED_FUNCTION_56_4();
    v21(v20);
    sub_1AC7A0348();
    if (v19)
    {
      OUTLINED_FUNCTION_97_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
      v22 = OUTLINED_FUNCTION_74_5();
      v23 = *(v13 + 376);
      if (v22)
      {
        v25 = *(v13 + 288);
        v24 = *(v13 + 296);
        v26 = *(v13 + 272);
        v27 = *(v13 + 280);

        v28 = OUTLINED_FUNCTION_630();
        v29(v28);
        v30 = sub_1AC79FDC8();
        sub_1AC7A05D8();
        OUTLINED_FUNCTION_38_2();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_242(v32);
          OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v33, v34, "SpeechAnalyzer: Input loop canceled");
          OUTLINED_FUNCTION_129();
        }

        OUTLINED_FUNCTION_657();
        OUTLINED_FUNCTION_1_12();
        sub_1AC6CC574(v35, v36);
        v37 = OUTLINED_FUNCTION_19_6();
        v39 = OUTLINED_FUNCTION_84_1(v37, v38);
        v40(v39);
        swift_willThrow();
        v41 = OUTLINED_FUNCTION_344();
        v42(v41);

        OUTLINED_FUNCTION_12_8();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
      }

      else
      {

        v68 = v19;
        v69 = sub_1AC79FDC8();
        sub_1AC7A05F8();
        OUTLINED_FUNCTION_135_2();
        if (OUTLINED_FUNCTION_133_1())
        {
          OUTLINED_FUNCTION_150();
          v70 = OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_131_2(5.7779e-34);
          v71 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_118(v71);
          OUTLINED_FUNCTION_376(&dword_1AC5BC000, v72, v12, "SpeechAnalyzer: Input loop ending with error: %@");
          sub_1AC5C720C(v70, &unk_1EB56C630, &qword_1AC7A7E40);
          OUTLINED_FUNCTION_96_0();
          OUTLINED_FUNCTION_77_1();
        }

        v73 = *(v13 + 392);
        v74 = *(v13 + 264);

        OUTLINED_FUNCTION_625();
        v75 = v19;
        sub_1AC675568(v19);
        v76 = swift_task_alloc();
        v77 = OUTLINED_FUNCTION_109_3(v76);
        *v77 = v78;
        OUTLINED_FUNCTION_5_8(v77);
        OUTLINED_FUNCTION_634();

        return sub_1AC65D064(v79, v80);
      }
    }

    else
    {
      v51 = *(v13 + 376);
      v52 = sub_1AC79FDC8();
      sub_1AC7A05D8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v54);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v55, v56, "SpeechAnalyzer: Input exhausted or ended");
        OUTLINED_FUNCTION_129();
      }

      v58 = *(v13 + 384);
      v57 = *(v13 + 392);
      v59 = *(v13 + 264);

      OUTLINED_FUNCTION_625();
      sub_1AC675568(0);
      OUTLINED_FUNCTION_14_6(OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
      OUTLINED_FUNCTION_116_2();

      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_634();

      return v65(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_1AC6C4AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  v11 = *(v10 + 232);
  *(v10 + 240) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v12 = sub_1AC7A0D08();
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = swift_allocError();
    *v14 = v11;
  }

  v15 = OUTLINED_FUNCTION_56_4();
  v16(v15);
  *(v10 + 440) = v13;
  v17 = *(v10 + 296);
  v18 = *(v10 + 272);
  *(v10 + 248) = v13;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v20 = swift_dynamicCast();
  v21 = *(v10 + 376);
  if (v20)
  {
    v23 = *(v10 + 288);
    v22 = *(v10 + 296);
    v24 = *(v10 + 272);
    v25 = *(v10 + 280);

    v26 = OUTLINED_FUNCTION_29_10();
    v27(v26);
    v28 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v30);
      OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v31, v32, "SpeechAnalyzer: Input loop canceled");
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_657();
    OUTLINED_FUNCTION_1_12();
    sub_1AC6CC574(v33, v34);
    v35 = OUTLINED_FUNCTION_19_6();
    v37 = OUTLINED_FUNCTION_84_1(v35, v36);
    v38(v37);
    swift_willThrow();
    v39 = OUTLINED_FUNCTION_344();
    v40(v39);

    OUTLINED_FUNCTION_12_8();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_168();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
  }

  else
  {

    v50 = v13;
    v51 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_129_3();
    if (OUTLINED_FUNCTION_130_3())
    {
      OUTLINED_FUNCTION_150();
      v52 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v53 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v53);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v54, v18, "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C720C(v52, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v55 = *(v10 + 392);
    v56 = *(v10 + 264);

    OUTLINED_FUNCTION_72_3();
    sub_1AC675568(v13);
    v57 = swift_task_alloc();
    v58 = OUTLINED_FUNCTION_109_3(v57);
    *v58 = v59;
    OUTLINED_FUNCTION_5_8(v58);
    OUTLINED_FUNCTION_168();

    return sub_1AC65D064(v60, v61);
  }
}

uint64_t sub_1AC6C4DAC()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 424);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 432) = v0;

  v11 = *(v5 + 264);
  if (!v0)
  {
    *(v5 + 81) = v3 & 1;
  }

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6C4EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_57();
  v14 = *(v13 + 81);
  sub_1AC5C720C(v13 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  if (v14)
  {
    v15 = *(v13 + 400);
    v16 = *(v13 + 264);
    OUTLINED_FUNCTION_51_4(&qword_1EB56CEF0, &qword_1EB56CEE0, &qword_1AC7ACD20);
    v17 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v13 + 408) = v18;
    *v18 = v19;
    v18[1] = sub_1AC6C4614;
    v20 = *(v13 + 344);
    v21 = *(v13 + 328);
    OUTLINED_FUNCTION_26_8();
    OUTLINED_FUNCTION_634();

    return MEMORY[0x1EEE6D8D0](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  else
  {
    v30 = *(v13 + 432);
    v31 = OUTLINED_FUNCTION_56_4();
    v32(v31);
    sub_1AC7A0348();
    if (v30)
    {
      OUTLINED_FUNCTION_97_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
      v33 = OUTLINED_FUNCTION_74_5();
      v34 = *(v13 + 376);
      if (v33)
      {
        v36 = *(v13 + 288);
        v35 = *(v13 + 296);
        v37 = *(v13 + 272);
        v38 = *(v13 + 280);

        v39 = OUTLINED_FUNCTION_630();
        v40(v39);
        v41 = sub_1AC79FDC8();
        sub_1AC7A05D8();
        OUTLINED_FUNCTION_38_2();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_242(v43);
          OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v44, v45, "SpeechAnalyzer: Input loop canceled");
          OUTLINED_FUNCTION_129();
        }

        OUTLINED_FUNCTION_657();
        OUTLINED_FUNCTION_1_12();
        sub_1AC6CC574(v46, v47);
        v48 = OUTLINED_FUNCTION_19_6();
        v50 = OUTLINED_FUNCTION_84_1(v48, v49);
        v51(v50);
        swift_willThrow();
        v52 = OUTLINED_FUNCTION_344();
        v53(v52);

        OUTLINED_FUNCTION_12_8();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
      }

      else
      {

        v79 = v30;
        v80 = sub_1AC79FDC8();
        sub_1AC7A05F8();
        OUTLINED_FUNCTION_135_2();
        if (OUTLINED_FUNCTION_133_1())
        {
          OUTLINED_FUNCTION_150();
          v81 = OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_131_2(5.7779e-34);
          v82 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_118(v82);
          OUTLINED_FUNCTION_376(&dword_1AC5BC000, v83, v12, "SpeechAnalyzer: Input loop ending with error: %@");
          sub_1AC5C720C(v81, &unk_1EB56C630, &qword_1AC7A7E40);
          OUTLINED_FUNCTION_96_0();
          OUTLINED_FUNCTION_77_1();
        }

        v84 = *(v13 + 392);
        v85 = *(v13 + 264);

        OUTLINED_FUNCTION_625();
        v86 = v30;
        sub_1AC675568(v30);
        v87 = swift_task_alloc();
        v88 = OUTLINED_FUNCTION_109_3(v87);
        *v88 = v89;
        OUTLINED_FUNCTION_5_8(v88);
        OUTLINED_FUNCTION_634();

        return sub_1AC65D064(v90, v91);
      }
    }

    else
    {
      v62 = *(v13 + 376);
      v63 = sub_1AC79FDC8();
      sub_1AC7A05D8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v65);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v66, v67, "SpeechAnalyzer: Input exhausted or ended");
        OUTLINED_FUNCTION_129();
      }

      v69 = *(v13 + 384);
      v68 = *(v13 + 392);
      v70 = *(v13 + 264);

      OUTLINED_FUNCTION_625();
      sub_1AC675568(0);
      OUTLINED_FUNCTION_14_6(OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
      OUTLINED_FUNCTION_116_2();

      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_634();

      return v76(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_1AC6C52A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  v11 = OUTLINED_FUNCTION_56_4();
  v12(v11);
  sub_1AC5C720C(v10 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  v13 = *(v10 + 432);
  *(v10 + 248) = v13;
  OUTLINED_FUNCTION_121_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v14 = OUTLINED_FUNCTION_96_4();
  v15 = *(v10 + 376);
  if (v14)
  {
    v17 = *(v10 + 288);
    v16 = *(v10 + 296);
    v18 = *(v10 + 272);
    v19 = *(v10 + 280);

    v20 = OUTLINED_FUNCTION_29_10();
    v21(v20);
    v22 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v24);
      OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v25, v26, "SpeechAnalyzer: Input loop canceled");
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_657();
    OUTLINED_FUNCTION_1_12();
    sub_1AC6CC574(v27, v28);
    v29 = OUTLINED_FUNCTION_19_6();
    v31 = OUTLINED_FUNCTION_84_1(v29, v30);
    v32(v31);
    swift_willThrow();
    v33 = OUTLINED_FUNCTION_344();
    v34(v33);

    OUTLINED_FUNCTION_12_8();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_168();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
  }

  else
  {

    v44 = v13;
    v45 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_129_3();
    if (OUTLINED_FUNCTION_130_3())
    {
      OUTLINED_FUNCTION_150();
      v46 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v47);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v48, (v10 - 8), "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C720C(v46, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v49 = *(v10 + 392);
    v50 = *(v10 + 264);

    OUTLINED_FUNCTION_72_3();
    sub_1AC675568(v13);
    v51 = swift_task_alloc();
    v52 = OUTLINED_FUNCTION_109_3(v51);
    *v52 = v53;
    OUTLINED_FUNCTION_5_8(v52);
    OUTLINED_FUNCTION_168();

    return sub_1AC65D064(v54, v55);
  }
}

uint64_t sub_1AC6C551C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[56];
  v3 = v1[55];
  v4 = v1[33];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6C5630()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 440);
  swift_willThrow();
  v2 = *(v0 + 440);
  OUTLINED_FUNCTION_12_8();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC6C56B8(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = sub_1AC7A01F8();
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v5 = *(v4 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  v2[36] = v6;
  v7 = *(v6 - 8);
  v2[37] = v7;
  v8 = *(v7 + 64) + 15;
  v2[38] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEC8, &qword_1AC7ACD08);
  v2[39] = v9;
  v10 = *(v9 - 8);
  v2[40] = v10;
  v11 = *(v10 + 64) + 15;
  v2[41] = swift_task_alloc();
  v12 = sub_1AC7A0288();
  v2[42] = v12;
  v13 = *(v12 - 8);
  v2[43] = v13;
  v14 = *(v13 + 64) + 15;
  v2[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6C58B0, v1, 0);
}

uint64_t sub_1AC6C5C04()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 400) = v0;

  v9 = *(v3 + 248);
  if (v0)
  {
    v10 = sub_1AC6C60B4;
  }

  else
  {
    v10 = sub_1AC6C5D04;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC6C5D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_57();
  memcpy((v13 + 88), (v13 + 16), 0x41uLL);
  v14 = *(v13 + 88);
  if (v14)
  {
    OUTLINED_FUNCTION_48_6(v14);
    v15 = swift_task_alloc();
    *(v13 + 408) = v15;
    *v15 = v13;
    v15[1] = sub_1AC6C6364;
    v16 = *(v13 + 248);
    OUTLINED_FUNCTION_634();

    return sub_1AC5CC77C();
  }

  else
  {
    v19 = *(v13 + 400);
    v20 = OUTLINED_FUNCTION_52_4();
    v21(v20);
    sub_1AC7A0348();
    if (v19)
    {
      OUTLINED_FUNCTION_95_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
      v22 = OUTLINED_FUNCTION_74_5();
      v23 = *(v13 + 360);
      if (v22)
      {
        v25 = *(v13 + 272);
        v24 = *(v13 + 280);
        v26 = *(v13 + 256);
        v27 = *(v13 + 264);

        v28 = OUTLINED_FUNCTION_630();
        v29(v28);
        v30 = sub_1AC79FDC8();
        sub_1AC7A05D8();
        OUTLINED_FUNCTION_38_2();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_242(v32);
          OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v33, v34, "SpeechAnalyzer: Input loop canceled");
          OUTLINED_FUNCTION_129();
        }

        OUTLINED_FUNCTION_128_2();
        OUTLINED_FUNCTION_1_12();
        sub_1AC6CC574(v35, v36);
        v37 = OUTLINED_FUNCTION_19_6();
        v39 = OUTLINED_FUNCTION_84_1(v37, v38);
        v40(v39);
        swift_willThrow();
        v41 = OUTLINED_FUNCTION_344();
        v42(v41);

        OUTLINED_FUNCTION_11_11();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
      }

      else
      {

        v68 = v19;
        v69 = sub_1AC79FDC8();
        sub_1AC7A05F8();
        OUTLINED_FUNCTION_135_2();
        if (OUTLINED_FUNCTION_133_1())
        {
          OUTLINED_FUNCTION_150();
          v70 = OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_131_2(5.7779e-34);
          v71 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_118(v71);
          OUTLINED_FUNCTION_376(&dword_1AC5BC000, v72, v12, "SpeechAnalyzer: Input loop ending with error: %@");
          sub_1AC5C720C(v70, &unk_1EB56C630, &qword_1AC7A7E40);
          OUTLINED_FUNCTION_96_0();
          OUTLINED_FUNCTION_77_1();
        }

        v73 = *(v13 + 376);
        v74 = *(v13 + 248);

        OUTLINED_FUNCTION_625();
        v75 = v19;
        sub_1AC675568(v19);
        v76 = swift_task_alloc();
        v77 = OUTLINED_FUNCTION_110_2(v76);
        *v77 = v78;
        OUTLINED_FUNCTION_6_9(v77);
        OUTLINED_FUNCTION_634();

        return sub_1AC65D064(v79, v80);
      }
    }

    else
    {
      v51 = *(v13 + 360);
      v52 = sub_1AC79FDC8();
      sub_1AC7A05D8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v54);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v55, v56, "SpeechAnalyzer: Input exhausted or ended");
        OUTLINED_FUNCTION_129();
      }

      v58 = *(v13 + 368);
      v57 = *(v13 + 376);
      v59 = *(v13 + 248);

      OUTLINED_FUNCTION_625();
      sub_1AC675568(0);
      OUTLINED_FUNCTION_14_6(OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
      OUTLINED_FUNCTION_119_4();

      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_634();

      return v65(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_1AC6C60B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  v11 = sub_1AC7A0D08();
  if (!v11)
  {
    v11 = swift_allocError();
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_52_4();
  v14(v13);
  *(v10 + 424) = v12;
  v15 = *(v10 + 280);
  v16 = *(v10 + 256);
  *(v10 + 232) = v12;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v18 = swift_dynamicCast();
  v19 = *(v10 + 360);
  if (v18)
  {
    v21 = *(v10 + 272);
    v20 = *(v10 + 280);
    v22 = *(v10 + 256);
    v23 = *(v10 + 264);

    v24 = OUTLINED_FUNCTION_29_10();
    v25(v24);
    v26 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v28);
      OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v29, v30, "SpeechAnalyzer: Input loop canceled");
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_128_2();
    OUTLINED_FUNCTION_1_12();
    sub_1AC6CC574(v31, v32);
    v33 = OUTLINED_FUNCTION_19_6();
    v35 = OUTLINED_FUNCTION_84_1(v33, v34);
    v36(v35);
    swift_willThrow();
    v37 = OUTLINED_FUNCTION_344();
    v38(v37);

    OUTLINED_FUNCTION_11_11();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_168();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
  }

  else
  {

    v48 = v12;
    v49 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_129_3();
    if (OUTLINED_FUNCTION_130_3())
    {
      OUTLINED_FUNCTION_150();
      v50 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v51 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v51);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v52, v16, "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C720C(v50, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v53 = *(v10 + 376);
    v54 = *(v10 + 248);

    OUTLINED_FUNCTION_72_3();
    sub_1AC675568(v12);
    v55 = swift_task_alloc();
    v56 = OUTLINED_FUNCTION_110_2(v55);
    *v56 = v57;
    OUTLINED_FUNCTION_6_9(v56);
    OUTLINED_FUNCTION_168();

    return sub_1AC65D064(v58, v59);
  }
}

uint64_t sub_1AC6C6364()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 416) = v0;

  v11 = *(v5 + 248);
  if (!v0)
  {
    *(v5 + 81) = v3 & 1;
  }

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6C6478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_57();
  v14 = *(v13 + 81);
  sub_1AC5C720C(v13 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  if (v14)
  {
    v15 = *(v13 + 384);
    v16 = *(v13 + 248);
    OUTLINED_FUNCTION_53_5(&qword_1EB56CED8, &qword_1EB56CEC8, &qword_1AC7ACD08);
    v17 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v13 + 392) = v18;
    *v18 = v19;
    v18[1] = sub_1AC6C5C04;
    v20 = *(v13 + 328);
    v21 = *(v13 + 312);
    OUTLINED_FUNCTION_26_8();
    OUTLINED_FUNCTION_634();

    return MEMORY[0x1EEE6D8D0](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  else
  {
    v30 = *(v13 + 416);
    v31 = OUTLINED_FUNCTION_52_4();
    v32(v31);
    sub_1AC7A0348();
    if (v30)
    {
      OUTLINED_FUNCTION_95_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
      v33 = OUTLINED_FUNCTION_74_5();
      v34 = *(v13 + 360);
      if (v33)
      {
        v36 = *(v13 + 272);
        v35 = *(v13 + 280);
        v37 = *(v13 + 256);
        v38 = *(v13 + 264);

        v39 = OUTLINED_FUNCTION_630();
        v40(v39);
        v41 = sub_1AC79FDC8();
        sub_1AC7A05D8();
        OUTLINED_FUNCTION_38_2();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_242(v43);
          OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v44, v45, "SpeechAnalyzer: Input loop canceled");
          OUTLINED_FUNCTION_129();
        }

        OUTLINED_FUNCTION_128_2();
        OUTLINED_FUNCTION_1_12();
        sub_1AC6CC574(v46, v47);
        v48 = OUTLINED_FUNCTION_19_6();
        v50 = OUTLINED_FUNCTION_84_1(v48, v49);
        v51(v50);
        swift_willThrow();
        v52 = OUTLINED_FUNCTION_344();
        v53(v52);

        OUTLINED_FUNCTION_11_11();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_634();

        return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
      }

      else
      {

        v79 = v30;
        v80 = sub_1AC79FDC8();
        sub_1AC7A05F8();
        OUTLINED_FUNCTION_135_2();
        if (OUTLINED_FUNCTION_133_1())
        {
          OUTLINED_FUNCTION_150();
          v81 = OUTLINED_FUNCTION_97_0();
          OUTLINED_FUNCTION_131_2(5.7779e-34);
          v82 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_118(v82);
          OUTLINED_FUNCTION_376(&dword_1AC5BC000, v83, v12, "SpeechAnalyzer: Input loop ending with error: %@");
          sub_1AC5C720C(v81, &unk_1EB56C630, &qword_1AC7A7E40);
          OUTLINED_FUNCTION_96_0();
          OUTLINED_FUNCTION_77_1();
        }

        v84 = *(v13 + 376);
        v85 = *(v13 + 248);

        OUTLINED_FUNCTION_625();
        v86 = v30;
        sub_1AC675568(v30);
        v87 = swift_task_alloc();
        v88 = OUTLINED_FUNCTION_110_2(v87);
        *v88 = v89;
        OUTLINED_FUNCTION_6_9(v88);
        OUTLINED_FUNCTION_634();

        return sub_1AC65D064(v90, v91);
      }
    }

    else
    {
      v62 = *(v13 + 360);
      v63 = sub_1AC79FDC8();
      sub_1AC7A05D8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v65);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v66, v67, "SpeechAnalyzer: Input exhausted or ended");
        OUTLINED_FUNCTION_129();
      }

      v69 = *(v13 + 368);
      v68 = *(v13 + 376);
      v70 = *(v13 + 248);

      OUTLINED_FUNCTION_625();
      sub_1AC675568(0);
      OUTLINED_FUNCTION_14_6(OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
      OUTLINED_FUNCTION_119_4();

      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_634();

      return v76(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_1AC6C685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  v11 = OUTLINED_FUNCTION_52_4();
  v12(v11);
  sub_1AC5C720C(v10 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  v13 = *(v10 + 416);
  *(v10 + 232) = v13;
  OUTLINED_FUNCTION_121_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v14 = OUTLINED_FUNCTION_96_4();
  v15 = *(v10 + 360);
  if (v14)
  {
    v17 = *(v10 + 272);
    v16 = *(v10 + 280);
    v18 = *(v10 + 256);
    v19 = *(v10 + 264);

    v20 = OUTLINED_FUNCTION_29_10();
    v21(v20);
    v22 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v24);
      OUTLINED_FUNCTION_20_8(&dword_1AC5BC000, v25, v26, "SpeechAnalyzer: Input loop canceled");
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_128_2();
    OUTLINED_FUNCTION_1_12();
    sub_1AC6CC574(v27, v28);
    v29 = OUTLINED_FUNCTION_19_6();
    v31 = OUTLINED_FUNCTION_84_1(v29, v30);
    v32(v31);
    swift_willThrow();
    v33 = OUTLINED_FUNCTION_344();
    v34(v33);

    OUTLINED_FUNCTION_11_11();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_168();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
  }

  else
  {

    v44 = v13;
    v45 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_129_3();
    if (OUTLINED_FUNCTION_130_3())
    {
      OUTLINED_FUNCTION_150();
      v46 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v47);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v48, (v10 - 24), "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C720C(v46, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v49 = *(v10 + 376);
    v50 = *(v10 + 248);

    OUTLINED_FUNCTION_72_3();
    sub_1AC675568(v13);
    v51 = swift_task_alloc();
    v52 = OUTLINED_FUNCTION_110_2(v51);
    *v52 = v53;
    OUTLINED_FUNCTION_6_9(v52);
    OUTLINED_FUNCTION_168();

    return sub_1AC65D064(v54, v55);
  }
}

uint64_t sub_1AC6C6AD0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[54];
  v3 = v1[53];
  v4 = v1[31];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6C6BE4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 424);
  swift_willThrow();
  v2 = *(v0 + 424);
  OUTLINED_FUNCTION_11_11();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t AudioBufferSequence.init(url:processingFormat:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v6 = sub_1AC79F7F8();
  v7 = OUTLINED_FUNCTION_40(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v17 = *(v9 + 16);
  v17(&v27 - v15, a1, v6);
  v17(v14, v16, v6);
  v18 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v19 = OUTLINED_FUNCTION_35_7();
  v20 = sub_1AC6CBAE8(v19);
  if (v3)
  {

    v22 = *(v9 + 8);
    v22(a1, v6);
    return v22(v16, v6);
  }

  else
  {
    v21 = v30;
    AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(v20, a2, 4096, &v27);
    v24 = *(v9 + 8);
    v24(a1, v6);
    result = v24(v16, v6);
    v25 = v29;
    v26 = v28;
    *v21 = v27;
    *(v21 + 8) = v26;
    *(v21 + 24) = v25;
  }

  return result;
}

void AudioBufferSequence.init(url:processingFormat:frameCapacity:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1AC79F7F8();
  v8 = OUTLINED_FUNCTION_40(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v13 = *(v10 + 16);
  v14 = OUTLINED_FUNCTION_89();
  v15(v14);
  v16 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v17 = OUTLINED_FUNCTION_35_7();
  v18 = sub_1AC6CBAE8(v17);
  if (v3)
  {
    v19 = OUTLINED_FUNCTION_82_4();
    v20(v19);
  }

  else
  {
    AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(v18, a1, a2, &v24);
    v21 = OUTLINED_FUNCTION_82_4();
    v22(v21);
    v23 = v26;
    *a3 = v24;
    *(a3 + 8) = v25;
    *(a3 + 24) = v23;
  }
}

void AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AC79FB18();
  v9 = OUTLINED_FUNCTION_167(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = sub_1AC79FF48();
  v13 = OUTLINED_FUNCTION_167(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  if (!a2)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_7;
  }

  v16 = a2;
  v17 = [a1 processingFormat];
  sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
  v18 = sub_1AC7A0758();

  if (v18)
  {

    v19 = 0;
    v20 = 0;
LABEL_7:
    *a4 = a1;
    *(a4 + 8) = v19;
    *(a4 + 16) = v20;
    *(a4 + 24) = a3;
    return;
  }

  v21 = [a1 processingFormat];
  v22 = v16;
  v23 = sub_1AC6C7230(v21, v22, a3);
  if (v23)
  {
    v19 = v23;
    v20 = v24;

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_65();
  sub_1AC79FEE8();
  if (qword_1EB56B610 != -1)
  {
    OUTLINED_FUNCTION_2_14();
    swift_once();
  }

  v25 = qword_1EB56DF80;
  sub_1AC79FA88();
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36_7();
  sub_1AC79FFC8();
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_90_5();
  related decl 'e' for SFSpeechErrorCode.init(_:description:)(v26, v27, v28);
  swift_willThrow();
}

double AudioBufferSequence.init(audioFile:processingFormat:)@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(a1, a2, 4096, &v7);
  if (!v3)
  {
    v6 = v9;
    *a3 = v7;
    result = *&v8;
    *(a3 + 8) = v8;
    *(a3 + 24) = v6;
  }

  return result;
}

id sub_1AC6C7230(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:a1 frameCapacity:a3];
  if (v5)
  {
    v6 = v5;
    sub_1AC5CF764(0, &qword_1EB56CEF8, 0x1E69583F0);
    v7 = OUTLINED_FUNCTION_89();
    result = sub_1AC6C7B3C(v7, v8);
    if (result)
    {
      return result;
    }

    a2 = v6;
  }

  else
  {
  }

  return 0;
}

uint64_t AudioBufferSequence.next()()
{
  OUTLINED_FUNCTION_85();
  v15 = *MEMORY[0x1E69E9840];
  v2 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_126();
  v5 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_126();
  v9 = *v0;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = *(v0 + 1);
  *(v1 + 64) = *(v0 + 6);
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6C73A8()
{
  OUTLINED_FUNCTION_57();
  v32 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  if (!v1 || (v2 = *(v0 + 56), v3 = v1, v4 = v2, (v5 = [v3 outputFormat]) == 0))
  {
    v5 = [*(v0 + 40) processingFormat];
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v5 frameCapacity:*(v0 + 64)];
  if (v6)
  {
    v7 = v6;
    if (v1)
    {
      v9 = *(v0 + 48);
      v8 = *(v0 + 56);
      sub_1AC6C7684(*(v0 + 40), v6, v9, v8);

LABEL_12:
      v21 = [v7 frameLength];

      if (!v21)
      {

        v7 = 0;
      }

      v23 = *(v0 + 24);
      v22 = *(v0 + 32);

      OUTLINED_FUNCTION_82();
      v25 = *MEMORY[0x1E69E9840];

      return v24(v7);
    }

    v17 = *(v0 + 40);
    *(v0 + 16) = 0;
    v18 = [v17 readIntoBuffer:v7 error:v0 + 16];
    v19 = *(v0 + 16);
    if (v18)
    {
      v20 = v19;
      goto LABEL_12;
    }

    v27 = v19;
    sub_1AC79F748();

    swift_willThrow();
    v5 = v7;
  }

  else
  {
    v10 = *(v0 + 32);
    sub_1AC6CBC24(*(v0 + 48), *(v0 + 56));
    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_36_7();
    sub_1AC79FFC8();
    OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_90_5();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(v14, v15, v16);
    swift_willThrow();
  }

  v29 = *(v0 + 24);
  v28 = *(v0 + 32);

  OUTLINED_FUNCTION_44();
  v31 = *MEMORY[0x1E69E9840];

  return v30();
}

uint64_t sub_1AC6C7684(void *a1, uint64_t a2, void *a3, void *a4)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = (v8 + 16);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = v8;
  aBlock[4] = sub_1AC6CC9B0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AC6C7CF8;
  aBlock[3] = &block_descriptor_5;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = a3;
  v14 = a4;

  aBlock[0] = 0;
  [v13 convertToBuffer:a2 error:aBlock withInputFromBlock:v11];
  _Block_release(v11);
  v15 = aBlock[0];
  if (!aBlock[0])
  {
    swift_beginAccess();
    if (!*v9)
    {

      goto LABEL_5;
    }

    v16 = *v9;
  }

  swift_willThrow();
  v17 = v15;

LABEL_5:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

id AudioBufferSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;
  v7 = OUTLINED_FUNCTION_170();

  return sub_1AC6CBC64(v7, v8);
}

void sub_1AC6C78A0(uint64_t a1@<X8>)
{
  AudioBufferSequence.makeAsyncIterator()(a1);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);

  sub_1AC6CBC24(v3, v4);
}

uint64_t sub_1AC6C78E4()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1AC5C8838;

  return AudioBufferSequence.next()();
}

uint64_t sub_1AC6C7970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1AC6C7A2C;

  return sub_1AC6F8EB0();
}

uint64_t sub_1AC6C7A2C()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    **(v5 + 24) = v0;
  }

  else
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

id sub_1AC6C7B3C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromFormat:a1 toFormat:a2];

  return v4;
}

id sub_1AC6C7B98(unsigned int a1, uint64_t *a2, id a3, uint64_t a4, void *a5, uint64_t a6)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v11 = [a3 framePosition];
  if (v11 >= [a3 length])
  {
    v12 = 0;
    v16 = 2;
  }

  else
  {
    v12 = a5;
    v13 = [v12 frameCapacity];
    if (v13 >= a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = v13;
    }

    v22[0] = 0;
    if (![a3 readIntoBuffer:v12 frameCount:v14 error:v22])
    {
      v17 = v22[0];

      v18 = sub_1AC79F748();
      swift_willThrow();
      swift_beginAccess();
      v19 = *(a6 + 16);
      *(a6 + 16) = v18;

      v12 = 0;
      goto LABEL_10;
    }

    v15 = v22[0];
    v16 = 2 * ([v12 frameLength] == 0);
  }

  *a2 = v16;
LABEL_10:
  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

id sub_1AC6C7CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

uint64_t SpeechAnalyzer.__allocating_init(inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  *(v1 + 56) = v4;
  *(v1 + 64) = v0;
  *(v1 + 40) = v5;
  *(v1 + 48) = v2;
  *(v1 + 120) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_126();
  v13 = type metadata accessor for ClientInfo(0);
  *(v1 + 80) = v13;
  OUTLINED_FUNCTION_167(v13);
  v15 = *(v14 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_126();
  sub_1AC5D9374(v3);
  v16 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1AC6C7E38()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  if (qword_1EB56B598 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = __swift_project_value_buffer(*(v0 + 80), qword_1EB56E830);
  sub_1AC6CBCA4(v6, v1);
  v7 = OUTLINED_FUNCTION_62_4();
  sub_1AC5D1E4C(v7, v8, v9, v10);
  v11 = v5;

  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_1AC6C7F5C;
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 48);
  v16 = *(v0 + 56);
  v17 = *(v0 + 120);
  v18 = *(v0 + 40);
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  OUTLINED_FUNCTION_111_3(*(v0 + 88));
  OUTLINED_FUNCTION_149_0();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6C7F5C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 112) = v1;
    v10 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1AC6C8068()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_111_4();

  sub_1AC5C720C(v1, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_82();
  v3 = *(v0 + 112);
  OUTLINED_FUNCTION_149_0();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC6C80F8()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_111_4();

  sub_1AC5C720C(v1, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 104);
  OUTLINED_FUNCTION_149_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 44) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v13);
  v15 = *(v14 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_126();
  v16 = type metadata accessor for ClientInfo(0);
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_126();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  *(v1 + 136) = v19;
  OUTLINED_FUNCTION_22(v19);
  *(v1 + 144) = v20;
  v22 = *(v21 + 64) + 15;
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  v23 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v23);
  v25 = *(v24 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_126();
  v26 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v26);
  v28 = *(v27 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_126();
  v29 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1AC6C8310()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 184) = [*(v0 + 56) processingFormat];
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6C83C8;
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_111_3(*(v0 + 64));

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC6C83C8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 192);
  v5 = *(v3 + 184);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v9 + 200) = v8;

  v10 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC6C84C4()
{
  v60 = v0;
  v1 = *(v0 + 200);
  if (!v1)
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 64);

    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    v23 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_36_7();
    sub_1AC79FFC8();
    OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_90_5();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(v24, v25, v26);
    swift_willThrow();
    sub_1AC5C3958(v18);

    sub_1AC5C720C(v20, &qword_1EB56C7D0, &qword_1AC7ACB40);
    OUTLINED_FUNCTION_0_10();
    v12 = v21;
    goto LABEL_7;
  }

  v2 = *(v0 + 56);
  v3 = v1;
  OUTLINED_FUNCTION_98_2(v2, &v56);
  if (v2)
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);

    sub_1AC5C3958(v5);

    sub_1AC5C720C(v7, &qword_1EB56C7D0, &qword_1AC7ACB40);
    OUTLINED_FUNCTION_0_10();
    v12 = v10;
LABEL_7:
    sub_1AC6CC440(v12, v11);
    v28 = *(v0 + 168);
    v27 = *(v0 + 176);
    v30 = *(v0 + 152);
    v29 = *(v0 + 160);
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = *(v0 + 112);

    OUTLINED_FUNCTION_44();

    return v34();
  }

  v36 = *(v0 + 152);
  v37 = *(v0 + 160);
  v39 = *(v0 + 136);
  v38 = *(v0 + 144);
  v40 = *(v0 + 128);
  v41 = *(v0 + 104);
  v52 = *(v0 + 88);
  v53 = *(v0 + 96);
  v50 = *(v0 + 120);
  v51 = *(v0 + 80);
  v42 = *(v0 + 72);
  v54 = *(v0 + 64);
  v43 = *(v0 + 48);
  v44 = v58;
  v45 = v57;
  *(v0 + 16) = v56;
  *(v0 + 24) = v45;
  *(v0 + 40) = v44;
  sub_1AC6CBD08();
  sub_1AC7A0B08();
  sub_1AC6CBCA4(v43, v40);
  (*(v38 + 16))(v36, v37, v39);
  sub_1AC5D1E4C(v42, v50, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v46 = *(v41 + 48);
  v47 = *(v41 + 52);
  swift_allocObject();

  sub_1AC5D9374(v52);
  sub_1AC6C3274(v40, v36, v54, v50, v51, v52, v53, &qword_1EB56CEB0, &qword_1AC7ACB58, &unk_1F2135408, &unk_1AC7ACD40, v49, v50, v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, v59);
  *(v0 + 208) = v48;

  return MEMORY[0x1EEE6DFA0](sub_1AC6C8880, v48, 0);
}

uint64_t sub_1AC6C8880()
{
  if (*(v0 + 44) == 1)
  {
    v1 = *(v0 + 208);
    v2 = *(v0 + 112);
    v3 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    OUTLINED_FUNCTION_3_10();
    v6 = sub_1AC6CC574(v4, v5);
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v6;
    v7[4] = v1;
    swift_retain_n();
    OUTLINED_FUNCTION_248();
    sub_1AC6C2FD0();
  }

  v8 = *(v0 + 200);
  v9 = *(v0 + 176);
  v10 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(v0 + 152);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 120);
  v26 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  sub_1AC5C3958(*(v0 + 88));

  sub_1AC5C720C(v14, &qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v16, v18);
  (*(v11 + 8))(v10, v12);

  OUTLINED_FUNCTION_82();
  v20 = *(v0 + 208);

  return v19(v20);
}

uint64_t sub_1AC6C8A64(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC6CC9C8, 0, 0);
}

uint64_t sub_1AC6C8A88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
}

uint64_t SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 44) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  v4 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_126();
  v7 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v8 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  *(v1 + 96) = v13;
  OUTLINED_FUNCTION_22(v13);
  *(v1 + 104) = v14;
  v16 = *(v15 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_126();
  v17 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1AC6C8C64()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v0[15] = SpeechAnalyzer.modules.getter();
  v0[16] = [v3 processingFormat];
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_88_3(v4);

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC6C8D28()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = v3[17];
  v5 = v3[16];
  v6 = v3[15];
  v7 = v3[7];
  v8 = *v0;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v11 + 144) = v10;

  v12 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6C8E5C()
{
  OUTLINED_FUNCTION_169();
  v23 = v0;
  v1 = v0[18];
  if (!v1)
  {
    v4 = v0[10];
    OUTLINED_FUNCTION_115_3();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v5 = v0[9];
    v6 = v0[10];
    v7 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_71_3();
    OUTLINED_FUNCTION_36_7();
    sub_1AC79FFC8();
    OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_90_5();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(v8, v9, v10);
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = v0[6];
  v3 = v1;
  OUTLINED_FUNCTION_98_2(v2, &v21);
  if (v2)
  {

LABEL_7:
    v11 = v0[14];
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[9];

    OUTLINED_FUNCTION_44();

    return v15();
  }

  v17 = v0[14];
  OUTLINED_FUNCTION_125_3(v21, v22);
  OUTLINED_FUNCTION_106_4();
  sub_1AC7A0B08();
  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_1AC6C9070;
  v19 = v0[7];
  v20 = OUTLINED_FUNCTION_111_3(v0[14]);

  return sub_1AC6C3C50(v20);
}

uint64_t sub_1AC6C9070()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 152);
  *v4 = *v1;
  *(v3 + 160) = v0;

  v6 = *(v2 + 56);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6C918C()
{
  OUTLINED_FUNCTION_102();
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  if (*(v0 + 44) == 1)
  {
    v5 = *(v0 + 88);
    v6 = *(v0 + 56);
    v7 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    OUTLINED_FUNCTION_3_10();
    v10 = sub_1AC6CC574(v8, v9);
    v11 = swift_allocObject();
    v11[2] = v6;
    v11[3] = v10;
    v11[4] = v6;
    swift_retain_n();
    OUTLINED_FUNCTION_248();
    sub_1AC6C2FD0();

    v12 = *(v3 + 8);
    v13 = OUTLINED_FUNCTION_89();
    v14(v13);
  }

  else
  {
    v15 = *(v3 + 8);
    v16 = OUTLINED_FUNCTION_89();
    v17(v16);
  }

  v18 = *(v0 + 112);
  v19 = *(v0 + 80);
  v20 = *(v0 + 88);
  v21 = *(v0 + 72);

  OUTLINED_FUNCTION_44();

  return v22();
}

uint64_t sub_1AC6C9314()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_89();
  v7(v6);
  v8 = v0[20];
  v9 = v0[14];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];

  OUTLINED_FUNCTION_44();

  return v13();
}

uint64_t SpeechAnalyzer.analyzeSequence(from:)()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = *v0;
  v3 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_126();
  v6 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  v1[11] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[12] = v10;
  v12 = *(v11 + 64);
  v1[13] = OUTLINED_FUNCTION_126();
  v13 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1AC6C94D8()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v0[14] = SpeechAnalyzer.modules.getter();
  v0[15] = [v3 processingFormat];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_88_3(v4);

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC6C959C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = v3[16];
  v5 = v3[15];
  v6 = v3[14];
  v7 = v3[7];
  v8 = *v0;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v11 + 136) = v10;

  v12 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6C96D0()
{
  OUTLINED_FUNCTION_57();
  v22 = v0;
  v1 = v0[17];
  if (!v1)
  {
    v4 = v0[10];
    OUTLINED_FUNCTION_115_3();
    if (qword_1EB56B610 != -1)
    {
      OUTLINED_FUNCTION_2_14();
      swift_once();
    }

    v5 = v0[9];
    v6 = v0[10];
    v7 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_71_3();
    OUTLINED_FUNCTION_36_7();
    sub_1AC79FFC8();
    OUTLINED_FUNCTION_91_3();
    OUTLINED_FUNCTION_90_5();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(v8, v9, v10);
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = v0[6];
  v3 = v1;
  OUTLINED_FUNCTION_98_2(v2, &v20);
  if (v2)
  {

LABEL_7:
    v11 = v0[13];
    v13 = v0[9];
    v12 = v0[10];

    OUTLINED_FUNCTION_44();

    return v14();
  }

  v16 = v0[13];
  OUTLINED_FUNCTION_125_3(v20, v21);
  OUTLINED_FUNCTION_106_4();
  sub_1AC7A0B08();
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = sub_1AC6C98CC;
  v18 = v0[7];
  v19 = OUTLINED_FUNCTION_111_3(v0[13]);

  return sub_1AC6C40C4(v19);
}

uint64_t sub_1AC6C98CC()
{
  OUTLINED_FUNCTION_102();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v1;
  v11 = *v1;
  OUTLINED_FUNCTION_18();
  *v12 = v11;
  v13 = *(v10 + 144);
  *v12 = *v1;
  *(v11 + 152) = v0;

  v14 = *(v10 + 56);
  if (v0)
  {
    v15 = sub_1AC6C9ACC;
  }

  else
  {
    *(v11 + 44) = v3;
    *(v11 + 160) = v5;
    *(v11 + 168) = v7;
    *(v11 + 176) = v9;
    v15 = sub_1AC6C9A18;
  }

  return MEMORY[0x1EEE6DFA0](v15, v14, 0);
}

uint64_t sub_1AC6C9A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = *(v10 + 44);
  v12 = *(v10 + 136);
  v14 = *(v10 + 96);
  v13 = *(v10 + 104);
  v16 = *(v10 + 80);
  v15 = *(v10 + 88);
  v17 = *(v10 + 72);

  v18 = *(v14 + 8);
  v19 = OUTLINED_FUNCTION_89();
  v20(v19);

  v21 = *(v10 + 8);
  v23 = *(v10 + 168);
  v22 = *(v10 + 176);
  v24 = *(v10 + 160);
  OUTLINED_FUNCTION_291();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1AC6C9ACC()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_89();
  v7(v6);
  v8 = v0[19];
  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];

  OUTLINED_FUNCTION_44();

  return v12();
}

uint64_t sub_1AC6C9B6C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC6C9B90, 0, 0);
}

uint64_t sub_1AC6C9B90()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 16);
  *v1 = *(v0 + 24);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  OUTLINED_FUNCTION_44();
  v6 = v2;
  v4 = v3;

  return v6();
}

uint64_t SpeechAnalyzer.setInputAudioFile(_:)()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_79_4();

  return SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)();
}

uint64_t SpeechAnalyzer.setInputAudioFile(_:audioFormat:)()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;
  OUTLINED_FUNCTION_79_4();

  return SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)();
}

uint64_t SpeechAnalyzer.setInputAudioFile(_:withAudioFormat:)()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1AC79F7F8();
  v1[4] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v7 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6C9DD8()
{
  OUTLINED_FUNCTION_72();
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  v1 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v2 = OUTLINED_FUNCTION_35_7();
  v0[7] = sub_1AC6CBAE8(v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1AC6C9EEC;
  v4 = v0[3];
  OUTLINED_FUNCTION_79_4();

  return SpeechAnalyzer.start(inputAudioFile:finishAfterFile:)();
}

uint64_t sub_1AC6C9EEC()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 64);
  *v4 = *v1;
  *(v3 + 72) = v0;

  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6CA008()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6CA06C()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t SpeechAnalyzer.__allocating_init(inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v1[7] = v4;
  v1[8] = v0;
  v1[5] = v5;
  v1[6] = v2;
  v1[3] = v6;
  v1[4] = v7;
  v1[2] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_126();
  sub_1AC5D9374(v3);
  v12 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6CA17C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[2];
  sub_1AC5D1E4C(v0[4], v0[9], &qword_1EB56C7D0, &qword_1AC7ACB40);
  v3 = v2;

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1AC6CA250;
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];
  v10 = v0[3];
  OUTLINED_FUNCTION_111_3(v0[2]);

  return SpeechAnalyzer.__allocating_init(inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CA250()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 96) = v1;
    v10 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1AC6CA35C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_137_2();

  sub_1AC5C720C(v0, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_82();
  v4 = *(v1 + 96);

  return v3(v4);
}

uint64_t sub_1AC6CA3E4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_137_2();

  sub_1AC5C720C(v0, &qword_1EB56C7D0, &qword_1AC7ACB40);

  OUTLINED_FUNCTION_44();
  v4 = *(v1 + 88);

  return v3();
}

uint64_t SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v5;
  v1[7] = v2;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v13 = type metadata accessor for ClientInfo(0);
  OUTLINED_FUNCTION_167(v13);
  v15 = *(v14 + 64);
  v1[11] = OUTLINED_FUNCTION_126();
  sub_1AC5D9374(v3);
  v16 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1AC6CA534()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  sub_1AC6CBCA4(v0[2], v0[11]);
  sub_1AC5D1E4C(v3, v1, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v5 = v4;

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1AC6CA614;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[3];
  v13 = v0[4];
  OUTLINED_FUNCTION_111_3(v0[11]);

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:finishAfterFile:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CA614()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 112) = v1;
    v10 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1AC6CA720()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_138_3();

  sub_1AC5C720C(v1, &qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v2, v4);

  OUTLINED_FUNCTION_82();
  v6 = *(v0 + 112);

  return v5(v6);
}

uint64_t sub_1AC6CA7C4()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_138_3();

  sub_1AC5C720C(v1, &qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v2, v4);

  OUTLINED_FUNCTION_44();
  v6 = *(v0 + 104);

  return v5();
}

uint64_t SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_27_7(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_126();
  v16 = OUTLINED_FUNCTION_136_2(v15);
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  *(v0 + 96) = OUTLINED_FUNCTION_126();
  v19 = OUTLINED_FUNCTION_170();
  sub_1AC5D9374(v19);
  v20 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_27_7(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  v0[10] = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_126();
  v16 = OUTLINED_FUNCTION_136_2(v15);
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  v0[12] = OUTLINED_FUNCTION_126();
  v19 = sub_1AC79F7F8();
  v0[13] = v19;
  OUTLINED_FUNCTION_22(v19);
  v0[14] = v20;
  v22 = *(v21 + 64);
  v0[15] = OUTLINED_FUNCTION_126();
  v23 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_27_7(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  v0[10] = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_126();
  v16 = OUTLINED_FUNCTION_136_2(v15);
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  v0[12] = OUTLINED_FUNCTION_126();
  v19 = sub_1AC79F7F8();
  v0[13] = v19;
  OUTLINED_FUNCTION_22(v19);
  v0[14] = v20;
  v22 = *(v21 + 64);
  v0[15] = OUTLINED_FUNCTION_126();
  v23 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1AC6CA944()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_120_3();
  v2 = OUTLINED_FUNCTION_62_4();
  sub_1AC5D1E4C(v2, v3, v4, v5);
  v6 = v1;
  v7 = OUTLINED_FUNCTION_106_4();
  sub_1AC6D980C(v7);

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_50_6(v8);
  v9 = v0[3];
  v10 = v0[4];
  OUTLINED_FUNCTION_111_3(v11);
  OUTLINED_FUNCTION_149_0();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CAA0C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 120) = v1;
    v10 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1AC6CAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_107_2();

  sub_1AC5C720C(v11, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v12, v14);

  OUTLINED_FUNCTION_82();
  v15 = *(v10 + 120);
  OUTLINED_FUNCTION_291();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1AC6CABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_107_2();

  sub_1AC5C720C(v11, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v12, v14);

  OUTLINED_FUNCTION_44();
  v15 = *(v10 + 112);
  OUTLINED_FUNCTION_291();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:restrictedLogging:analysisContext:volatileRangeChangedHandler:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_27_7(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  *(v0 + 80) = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_126();
  v16 = OUTLINED_FUNCTION_136_2(v15);
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  *(v0 + 96) = OUTLINED_FUNCTION_126();
  v19 = OUTLINED_FUNCTION_170();
  sub_1AC5D9374(v19);
  v20 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1AC6CAD3C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_120_3();
  v2 = OUTLINED_FUNCTION_62_4();
  sub_1AC5D1E4C(v2, v3, v4, v5);
  v6 = v1;
  v7 = OUTLINED_FUNCTION_106_4();
  sub_1AC6D980C(v7);

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_50_6(v8);
  v9 = v0[3];
  v10 = v0[4];
  OUTLINED_FUNCTION_111_3(v11);
  OUTLINED_FUNCTION_149_0();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CAE04()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 120) = v1;
    v10 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1AC6CB024()
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v5 = OUTLINED_FUNCTION_89_4();
  v6(v5);
  v7 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v8 = OUTLINED_FUNCTION_35_7();
  v9 = sub_1AC6CBAE8(v8);
  *(v0 + 128) = v9;
  v10 = v9;
  OUTLINED_FUNCTION_83_5();
  v10;
  sub_1AC6089EC(v4);

  sub_1AC5D1E4C(v3, v1, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v1);

  sub_1AC5D9374(v2);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_50_6(v11);
  OUTLINED_FUNCTION_111_3(v12);
  OUTLINED_FUNCTION_115();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CB200()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 136);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 152) = v1;
    v10 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1AC6CB30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = v14[15];
  v16 = v14[16];
  v17 = v14[13];
  v18 = v14[14];
  v19 = v14[12];
  v36 = v14[11];
  v37 = v14[10];
  v20 = v14[8];
  v22 = v14[5];
  v21 = v14[6];
  v24 = v14[2];
  v23 = v14[3];
  sub_1AC5C3958(v14[7]);

  sub_1AC5C720C(v22, &qword_1EB56C7E8, &qword_1AC7AA900);
  (*(v18 + 8))(v23, v17);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v24, v25);

  OUTLINED_FUNCTION_82();
  v26 = v14[19];
  OUTLINED_FUNCTION_115();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
}

uint64_t sub_1AC6CB3F8()
{
  OUTLINED_FUNCTION_57();
  v2 = v1[16];
  v3 = v1[8];
  sub_1AC5C3958(v1[7]);

  OUTLINED_FUNCTION_87_4();
  v5 = v1[5];
  v4 = v1[6];
  v7 = v1[2];
  v6 = v1[3];

  sub_1AC5C720C(v5, &qword_1EB56C7E8, &qword_1AC7AA900);
  v8 = OUTLINED_FUNCTION_112_4();
  v9(v8, v0);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v7, v10);

  OUTLINED_FUNCTION_44();

  return v11();
}

uint64_t sub_1AC6CB5F8()
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v5 = OUTLINED_FUNCTION_89_4();
  v6(v5);
  v7 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v8 = OUTLINED_FUNCTION_35_7();
  v9 = sub_1AC6CBAE8(v8);
  v0[16] = v9;
  v10 = v9;
  OUTLINED_FUNCTION_83_5();
  sub_1AC6089EC(v4);

  sub_1AC5D1E4C(v3, v1, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v1);
  sub_1AC5D9374(v2);

  v10;
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1AC6CB7F0;
  v12 = v0[11];
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[7];
  OUTLINED_FUNCTION_111_3(v0[12]);
  OUTLINED_FUNCTION_115();

  return SpeechAnalyzer.__allocating_init(client:inputAudioFile:modules:options:analysisContext:volatileRangeChangedHandler:)();
}

uint64_t sub_1AC6CB7F0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 136);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_5();
  }

  else
  {
    *(v4 + 152) = v1;
    v10 = OUTLINED_FUNCTION_17_6();
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1AC6CB8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = *(v14 + 120);
  v16 = *(v14 + 104);
  v17 = *(v14 + 112);
  v35 = *(v14 + 96);
  v36 = *(v14 + 88);
  v37 = *(v14 + 80);
  v19 = *(v14 + 56);
  v18 = *(v14 + 64);
  v21 = *(v14 + 40);
  v20 = *(v14 + 48);
  v22 = *(v14 + 16);
  v23 = *(v14 + 24);

  sub_1AC5C3958(v19);
  sub_1AC5C720C(v21, &qword_1EB56C7E8, &qword_1AC7AA900);
  (*(v17 + 8))(v23, v16);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v22, v24);

  OUTLINED_FUNCTION_82();
  v25 = *(v14 + 152);
  OUTLINED_FUNCTION_115();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, a12, a13, a14);
}

uint64_t sub_1AC6CB9F4()
{
  OUTLINED_FUNCTION_57();
  v2 = *(v1 + 48);

  OUTLINED_FUNCTION_87_4();
  v3 = *(v1 + 64);
  v4 = *(v1 + 40);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1AC5C3958(*(v1 + 56));
  sub_1AC5C720C(v4, &qword_1EB56C7E8, &qword_1AC7AA900);
  v7 = OUTLINED_FUNCTION_112_4();
  v8(v7, v0);
  OUTLINED_FUNCTION_0_10();
  sub_1AC6CC440(v6, v9);

  OUTLINED_FUNCTION_44();

  return v10();
}

id sub_1AC6CBAE8(uint64_t a1)
{
  v2 = v1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AC79F788();
  v16[0] = 0;
  v5 = [v2 initForReading:v4 error:v16];

  v6 = v16[0];
  if (v5)
  {
    v7 = sub_1AC79F7F8();
    OUTLINED_FUNCTION_80(v7);
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v16[0];
    sub_1AC79F748();

    swift_willThrow();
    v12 = sub_1AC79F7F8();
    OUTLINED_FUNCTION_80(v12);
    (*(v13 + 8))(a1);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1AC6CBC24(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_1AC6CBC64(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_1AC6CBCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AC6CBD08()
{
  result = qword_1EB56CEB8;
  if (!qword_1EB56CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CEB8);
  }

  return result;
}

uint64_t sub_1AC6CBD5C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_24_9();

  return sub_1AC6C8A88();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC6CBE3C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC5C5380;
  OUTLINED_FUNCTION_24_9();

  return sub_1AC6C8A88();
}

unint64_t sub_1AC6CBEE0()
{
  result = qword_1EB56CEC0;
  if (!qword_1EB56CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CEC0);
  }

  return result;
}

void destroy for AudioBufferSequence(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {

    v3 = *(a1 + 16);
  }
}

uint64_t initializeWithCopy for AudioBufferSequence(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = (a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  v8 = v4;
  if (v6)
  {
    v9 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v9;
    v10 = v6;
    v11 = v9;
  }

  else
  {
    *v5 = *v7;
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for AudioBufferSequence(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (!v7)
  {
    if (v8)
    {
      *(a1 + 8) = v8;
      v13 = *(a2 + 16);
      *(a1 + 16) = v13;
      v14 = v8;
      v15 = v13;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 8) = *(a2 + 8);
    goto LABEL_8;
  }

  if (!v8)
  {
    sub_1AC6CC0C8(a1 + 8);
    goto LABEL_7;
  }

  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for AudioBufferSequence(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    sub_1AC6CC0C8(a1 + 8);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    goto LABEL_6;
  }

  *(a1 + 8) = v6;

  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for AudioBufferSequence(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioBufferSequence(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for AudioConverter(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for AudioConverter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for AudioConverter(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AC6CC310()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  OUTLINED_FUNCTION_22(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_94_2();
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_102_3(v9);
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_291();

  return sub_1AC6C3900(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1AC6CC440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_80(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1AC6CC498()
{
  OUTLINED_FUNCTION_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C790, &qword_1AC7AA7A8);
  OUTLINED_FUNCTION_167(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_101_4();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_102_3(v5);
  OUTLINED_FUNCTION_24_9();

  return sub_1AC6C400C(v7, v8, v9, v0, v10);
}

uint64_t sub_1AC6CC574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_40Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_40(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 40) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v2 + 16);
  swift_unknownObjectRelease();
  v11 = *(v2 + 32);

  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + v9, v6 | 7);
}

uint64_t sub_1AC6CC678()
{
  OUTLINED_FUNCTION_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  OUTLINED_FUNCTION_167(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_101_4();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_102_3(v5);
  OUTLINED_FUNCTION_24_9();

  return sub_1AC6C3E28(v7, v8, v9, v0, v10);
}

uint64_t objectdestroy_36Tm()
{
  OUTLINED_FUNCTION_104();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_40(v3);
  v5 = v4;
  v6 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40(v9);
  v11 = v10;
  v12 = (v6 + v8 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = *(v0 + 16);
  swift_unknownObjectRelease();
  v16 = *(v0 + 32);

  (*(v5 + 8))(v0 + v6, v3);
  (*(v11 + 8))(v0 + v12, v9);
  OUTLINED_FUNCTION_105();

  return MEMORY[0x1EEE6BDD0](v17, v18, v19);
}

uint64_t sub_1AC6CC880()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CEB0, &qword_1AC7ACB58);
  OUTLINED_FUNCTION_22(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_94_2();
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_102_3(v9);
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_291();

  return sub_1AC6C39AC(v10, v11, v12, v13, v14, v15);
}

void OUTLINED_FUNCTION_20_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

__n128 OUTLINED_FUNCTION_48_6@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 160) = a1;
  *(v1 + 168) = *(v1 + 24);
  *(v1 + 184) = *(v1 + 40);
  *(v1 + 200) = *(v1 + 56);
  result = *(v1 + 65);
  *(v1 + 209) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_4()
{
  result = v0[41];
  v2 = v0[39];
  v3 = *(v0[40] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_74_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_89_4()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = *(v0[14] + 16);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_96_4()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_97_3()
{
  v1[55] = v0;
  v3 = v1[37];
  v4 = v1[34];
  v1[31] = v0;

  return v0;
}

void OUTLINED_FUNCTION_98_2(void *a1@<X0>, uint64_t a2@<X8>)
{

  AudioBufferSequence.init(audioFile:processingFormat:frameCapacity:)(a1, v2, 4096, a2);
}

void OUTLINED_FUNCTION_101_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_115_3()
{

  return sub_1AC79FEE8();
}

uint64_t OUTLINED_FUNCTION_117_4()
{

  return sub_1AC7A0368();
}

void OUTLINED_FUNCTION_118_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 5u);
}

uint64_t OUTLINED_FUNCTION_120_3()
{
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[2];
  v8 = v0[3];

  return sub_1AC6CBCA4(v7, v2);
}

id OUTLINED_FUNCTION_121_3()
{
  v1[24] = v0;
  v3 = v1[6];
  v4 = v1[3];

  return v0;
}

unint64_t OUTLINED_FUNCTION_125_3@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 40) = v2;

  return sub_1AC6CBD08();
}

void OUTLINED_FUNCTION_128_2()
{
  v4 = v1[33];
  v3 = v1[34];
  v5 = v1[32];
}

void OUTLINED_FUNCTION_129_3()
{
}

BOOL OUTLINED_FUNCTION_130_3()
{

  return os_log_type_enabled(v1, v0);
}

BOOL OUTLINED_FUNCTION_133_1()
{

  return os_log_type_enabled(v1, v0);
}

void OUTLINED_FUNCTION_135_2()
{
}

uint64_t OUTLINED_FUNCTION_136_2(uint64_t a1)
{
  *(v1 + 88) = a1;

  return type metadata accessor for ClientInfo(0);
}

uint64_t OUTLINED_FUNCTION_137_2()
{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  sub_1AC5C3958(v0[6]);
}

uint64_t OUTLINED_FUNCTION_138_3()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  v7 = v0[3];
  sub_1AC5C3958(v0[7]);
}

uint64_t sub_1AC6CCD24(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  v6 = a1 == 0xD00000000000002DLL && 0x80000001AC7B79B0 == a2;
  if (v6 || (OUTLINED_FUNCTION_9_12() & 1) != 0)
  {
    [a3 hello];
    return 1;
  }

  result = 0xD00000000000003CLL;
  v10 = a1 == 0xD00000000000003CLL && 0x80000001AC7B79E0 == a2;
  if (v10 || (result = OUTLINED_FUNCTION_9_12(), (result & 1) != 0))
  {
    if (!*(a4 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1AC5D2398(a4 + 32, v16);
    if (v17)
    {
      if (swift_dynamicCast())
      {
        v11 = sub_1AC79F858();
        sub_1AC5C28A8(v14, v15);
LABEL_20:
        [a3 addAudioSampleData_];

        return 1;
      }
    }

    else
    {
      sub_1AC641B24(v16);
    }

    v11 = 0;
    goto LABEL_20;
  }

  v12 = a1 == 0xD000000000000030 && 0x80000001AC7B7A20 == a2;
  if (v12 || (v13 = OUTLINED_FUNCTION_9_12(), result = 0, (v13 & 1) != 0))
  {
    [a3 endAudio];
    return 1;
  }

  return result;
}

uint64_t sub_1AC6CCEA8()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6CCF50()
{
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v4);
    if (v0)
    {

      v5 = v1[6];

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    v12 = v1[6];
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7B60);
    v13 = swift_task_alloc();
    v1[8] = v13;
    *v13 = v1;
    OUTLINED_FUNCTION_6_0(v13);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6CD0AC()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 64);
  *v4 = *v1;
  *(v3 + 72) = v0;

  v6 = *(v2 + 56);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6CD1D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6CE6FC;

  return sub_1AC6CCEA8();
}

uint64_t sub_1AC6CD264()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B918, &unk_1AC7ACDB0);
  v1[11] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6CD368()
{
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[13];
    v3 = v0[6];
    v4 = v0[5];
    v5 = *(v0[7] + 136);
    v6 = sub_1AC5C6544();
    v0[2] = v4;
    v0[3] = v3;
    v0[4] = v6;
    sub_1AC5CFBB8(v4, v3);
    sub_1AC79FC98();
    v7 = sub_1AC5D0788(v2);
    nullsub_1(v7, v8);
    v10 = v0[10];
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7B60);
    v16 = v11;
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_1AC6CD570;
    v13 = v0[10];
    v14 = v0[7];

    return v16(v14, v13, v0 + 4);
  }

  else
  {
    v9 = v0[7];

    return MEMORY[0x1EEE6DFA0](sub_1AC6CD72C, v9, 0);
  }
}

uint64_t sub_1AC6CD570()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 112);
  *v4 = *v1;
  *(v3 + 120) = v0;

  v6 = *(v2 + 32);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6CD694()
{
  OUTLINED_FUNCTION_72();
  v4 = OUTLINED_FUNCTION_190();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  v6 = *(v3 + 104);
  v7 = *(v3 + 80);

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC6CD72C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC6CD794()
{
  OUTLINED_FUNCTION_72();
  v4 = OUTLINED_FUNCTION_190();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  v6 = v3[15];
  v7 = v3[13];
  v8 = v3[10];

  OUTLINED_FUNCTION_44();

  return v9();
}

uint64_t sub_1AC6CD82C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = *v6;
    v9 = v6[1];
    v10 = swift_task_alloc();
    v2[5] = v10;
    *v10 = v2;
    v10[1] = sub_1AC6CD9A0;

    return sub_1AC6CD264();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6CD9A0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC6CDB14()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6CDBBC()
{
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v4);
    if (v0)
    {

      v5 = v1[6];

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    v12 = v1[6];
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7B60);
    v13 = swift_task_alloc();
    v1[8] = v13;
    *v13 = v1;
    OUTLINED_FUNCTION_6_0(v13);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6CDD18()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 64);
  *v4 = *v1;
  *(v3 + 72) = v0;

  v6 = *(v2 + 56);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6CDE3C()
{
  OUTLINED_FUNCTION_85();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[6];

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6CDEB0()
{
  OUTLINED_FUNCTION_85();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[9];
  v2 = v0[6];

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC6CDF24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6CDFB8;

  return sub_1AC6CDB14();
}

uint64_t sub_1AC6CDFB8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6CE0A4(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFE1C(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC6CE150()
{
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  OUTLINED_FUNCTION_1_13();
  sub_1AC6CE6A8(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6CE1CC()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    OUTLINED_FUNCTION_1_13();
    sub_1AC6CE6A8(v1, v2, v3);
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC6CE294()
{
  v1 = *v0;
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC6CE6A8(&qword_1EB56B9C0, v2, type metadata accessor for EARLanguageDetectorAudioBuffer);
  return sub_1AC79FC28();
}

uint64_t sub_1AC6CE30C()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6CE364(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARLanguageDetectorAudioBuffer();
  v6 = sub_1AC6CE6A8(&qword_1EB56B9C0, v5, type metadata accessor for EARLanguageDetectorAudioBuffer);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC6CE3EC()
{
  v1 = *v0;
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC6CE6A8(&qword_1EB56B9C0, v2, type metadata accessor for EARLanguageDetectorAudioBuffer);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC6CE480@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC6CE6A8(&qword_1EB56B9C0, v3, type metadata accessor for EARLanguageDetectorAudioBuffer);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_1AC6CE640()
{
  v0 = objc_opt_self();
  v1 = &unk_1F215B468;
  v2 = [v0 interfaceWithProtocol_];

  qword_1EB56E848 = v2;
}

uint64_t sub_1AC6CE6A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AC6CE700(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v21 = MEMORY[0x1E69E7CC0];
    v20 = *(a1 + 16);
    sub_1AC63129C();
    v3 = sub_1AC6C2CA0(a1);
    v5 = v4;
    v6 = v20;
    v7 = 0;
    v8 = a1 + 56;
    if ((v3 & 0x8000000000000000) == 0)
    {
      while (v3 < 1 << *(a1 + 32))
      {
        v9 = v3 >> 6;
        if ((*(v8 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_25;
        }

        v10 = *(v21 + 16);
        if (v10 >= *(v21 + 24) >> 1)
        {
          v19 = v2;
          sub_1AC63129C();
          v2 = v19;
          v8 = a1 + 56;
          v6 = v20;
        }

        *(v21 + 16) = v10 + 1;
        *(v21 + v10 + 32) = 5;
        if (v2)
        {
          goto LABEL_29;
        }

        v11 = 1 << *(a1 + 32);
        if (v3 >= v11)
        {
          goto LABEL_26;
        }

        v12 = *(v8 + 8 * v9);
        if ((v12 & (1 << v3)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_28;
        }

        v13 = v12 & (-2 << (v3 & 0x3F));
        if (v13)
        {
          v11 = __clz(__rbit64(v13)) | v3 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v9 << 6;
          v15 = v9 + 1;
          v16 = (a1 + 64 + 8 * v9);
          while (v15 < (v11 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_1AC637E98(v3, v5, 0);
              v8 = a1 + 56;
              v6 = v20;
              v11 = __clz(__rbit64(v17)) + v14;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v3, v5, 0);
          v8 = a1 + 56;
          v6 = v20;
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v2 = 0;
        v5 = *(a1 + 36);
        v3 = v11;
        if (v11 < 0)
        {
          break;
        }
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
  }
}

void SpeechTranscriber.Result.text.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (*(v3 + 16))
  {
    v4 = sub_1AC79F5C8();
    v5 = *(v4 - 8);
    v6 = *(v5 + 16);
    v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

    v6(a1, v7, v4);
  }

  else
  {
    __break(1u);
  }
}

__n128 SpeechTranscriber.MultisegmentResult.recognitionAudioRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 108);
  *(a1 + 16) = v2;
  result = *(v1 + 140);
  *(a1 + 32) = result;
  return result;
}

uint64_t SpeechTranscriber.MultisegmentResult.audioAnalytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1AC63482C(v2);
}

uint64_t SpeechTranscriber.MultisegmentResult.eosLikelihood.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t SpeechTranscriber.MultisegmentResult.latticeMitigatorResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = *(v1 + 208);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t SpeechTranscriber.MultisegmentResult.resultCandidateId.getter()
{
  result = *(v0 + 248);
  v2 = *(v0 + 256);
  return result;
}

__n128 SpeechTranscriber.MultisegmentResult.init(range:resultsFinalizationTime:transcriptions:transcriptionTokens:segments:nBestChoices:earResultType:recognitionAudioRange:audioAnalytics:eosLikelihood:latticeMitigatorResult:numOneBestTokensExcludingTriggerPhrase:resultCandidateId:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, _OWORD *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v18 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v18;
  *(a9 + 32) = a1[2];
  v19 = a11[1];
  *(a9 + 108) = *a11;
  *(a9 + 124) = v19;
  *(a9 + 140) = a11[2];
  *(a9 + 160) = *a12;
  result = *a15;
  v21 = *(a15 + 16);
  *(a9 + 200) = *a15;
  v22 = *a10;
  v23 = *(a12 + 16);
  v24 = *(a15 + 32);
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v22;
  *(a9 + 176) = v23;
  *(a9 + 184) = a13;
  *(a9 + 192) = a14 & 1;
  *(a9 + 216) = v21;
  *(a9 + 232) = v24;
  *(a9 + 240) = a16;
  *(a9 + 248) = a17;
  *(a9 + 256) = a18 & 1;
  return result;
}

uint64_t SpeechTranscriber.__allocating_init(locale:preset:)(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_25();
  v4 = sub_1AC79FB18();
  v5 = OUTLINED_FUNCTION_40(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  v13 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  (*(v7 + 16))(v11 - v10, v2, v4);

  v17 = SpeechTranscriber.__allocating_init(locale:transcriptionOptions:reportingOptions:attributeOptions:)(v12, v13, v14, v16);

  v18 = *(v7 + 8);
  v19 = OUTLINED_FUNCTION_170();
  v20(v19);
  return v17;
}

uint64_t SpeechTranscriber.__allocating_init(locale:transcriptionOptions:reportingOptions:attributeOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_25();
  v9 = sub_1AC79FB18();
  v10 = OUTLINED_FUNCTION_40(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  (*(v12 + 16))(v16 - v15, v4, v9);
  v22 = MEMORY[0x1E69E7CC0];
  v18 = *(v5 + 48);
  v19 = *(v5 + 52);
  v20 = swift_allocObject();
  SpeechTranscriber.init(locale:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)(v17, &v22, a2, a3, a4);
  (*(v12 + 8))(v4, v9);
  return v20;
}

Speech::SpeechTranscriber::ModelOptions __swiftcall SpeechTranscriber.ModelOptions.init()()
{
  v1 = v0;

  *v1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t SpeechTranscriber.__allocating_init(locale:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  SpeechTranscriber.init(locale:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t SpeechTranscriber.init(locale:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v90 = a5;
  v91 = a3;
  v88 = a1;
  v81 = *v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790) - 8) + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v79 - v11;
  v12 = sub_1AC79FB18();
  v13 = OUTLINED_FUNCTION_40(v12);
  v86 = v14;
  v87 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v84 = v18 - v17;
  v92 = *a2;
  v19 = *(v92 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  if (v19)
  {
    v83 = v6;
    v93 = MEMORY[0x1E69E7CC0];

    sub_1AC6310CC(0, v19, 0);
    v21 = v92;
    v20 = v93;
    v22 = 32;
    do
    {
      v23 = 0xD000000000000014;
      if (*(v21 + v22) == 1)
      {
        v24 = 0x80000001AC7B4830;
      }

      else
      {
        v23 = 0x74616C736E617254;
        v24 = 0xEC00000070704165;
      }

      if (*(v21 + v22))
      {
        v25 = v23;
      }

      else
      {
        v25 = 0xD000000000000011;
      }

      if (*(v21 + v22))
      {
        v26 = v24;
      }

      else
      {
        v26 = 0x80000001AC7B4810;
      }

      v93 = v20;
      v28 = v20[2];
      v27 = v20[3];
      if (v28 >= v27 >> 1)
      {
        sub_1AC6310CC(v27 > 1, v28 + 1, 1);
        v21 = v92;
        v20 = v93;
      }

      v20[2] = v28 + 1;
      v29 = &v20[2 * v28];
      *(v29 + 4) = v25;
      *(v29 + 5) = v26;
      ++v22;
      --v19;
    }

    while (v19);

    v6 = v83;
    a4 = v89;
  }

  if (!v20[2])
  {

    if (sub_1AC637EF8(2, a4))
    {
      v20 = &unk_1F212F700;
    }

    else
    {
      v20 = &unk_1F212F730;
    }
  }

  sub_1AC6CE700(v91);
  v31 = sub_1AC6090E4(v30);
  v83 = sub_1AC6CF4BC(&unk_1F212F760, v31, v32, v33, v34, v35, v36, v37);
  v39 = a4 + 56;
  v38 = *(a4 + 56);
  OUTLINED_FUNCTION_13_5();
  v42 = v41 & v40;
  v44 = (v43 + 63) >> 6;

  v45 = 0;
  v46 = MEMORY[0x1E69E7CC0];
  while (v42)
  {
LABEL_26:
    v48 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v49 = *(*(a4 + 48) + (v48 | (v45 << 6)));
    if (v49 != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = *(v46 + 16);
        sub_1AC60DC84();
        v46 = v53;
      }

      v50 = *(v46 + 16);
      v51 = v50 + 1;
      if (v50 >= *(v46 + 24) >> 1)
      {
        v82 = v50 + 1;
        sub_1AC60DC84();
        v51 = v82;
        v46 = v54;
      }

      *(v46 + 16) = v51;
      *(v46 + v50 + 32) = v49;
      a4 = v89;
    }
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v47 >= v44)
    {

      v82 = sub_1AC6091C8(v46);
      sub_1AC62428C(v90);
      v81 = sub_1AC6090B4(v55);
      v56 = [objc_opt_self() standardUserDefaults];
      v57 = sub_1AC79FF58();
      v58 = [v56 BOOLForKey_];

      HIDWORD(v79) = v58 ^ 1;
      v60 = v86;
      v59 = v87;
      v80 = *(v86 + 16);
      v61 = v84;
      v62 = v88;
      v80(v84, v88, v87);
      v63 = sub_1AC79F7F8();
      v64 = v85;
      __swift_storeEnumTagSinglePayload(v85, 1, 1, v63);
      v65 = type metadata accessor for TranscriberCommon.ModelOptions(0);
      __swift_storeEnumTagSinglePayload(v64 + v65[7], 1, 1, v63);
      *(v64 + v65[5]) = 0;
      v66 = (v64 + v65[6]);
      *v66 = 0;
      v66[1] = 0;
      *(v64 + v65[9]) = MEMORY[0x1E69E7CC0];
      v67 = (v64 + v65[8]);
      *v67 = 0;
      v67[1] = 0;
      *(v64 + v65[10]) = 0;
      *(v64 + v65[11]) = 0;
      *(v64 + v65[12]) = 0;
      *(v64 + v65[15]) = 0;
      *(v64 + v65[13]) = 0;
      *(v64 + v65[14]) = 0;
      __swift_storeEnumTagSinglePayload(v64, 0, 1, v65);
      v68 = type metadata accessor for TranscriberCommon(0);
      v69 = *(v68 + 48);
      v70 = *(v68 + 52);
      swift_allocObject();
      LOBYTE(v78) = BYTE4(v79);
      sub_1AC74B560(v61, v64, v20, 7, 0, 0, v83, v82, v81, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
      v72 = v71;
      (*(v60 + 8))(v62, v59);
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common) = v72;
      v80(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_locale, v72 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v59);
      v73 = v91;
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_modelOptions) = v92;
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_transcriptionOptions) = v73;
      v74 = v90;
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_reportingOptions) = v89;
      *(v6 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_resultAttributeOptions) = v74;
      return v6;
    }

    v42 = *(v39 + 8 * v47);
    ++v45;
    if (v42)
    {
      v45 = v47;
      goto LABEL_26;
    }
  }

  __break(1u);
  v76 = *(*v6 + 48);
  v77 = *(*v6 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1AC6CF450(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x74616C736E617254;
}

uint64_t sub_1AC6CF4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 32;
    do
    {
      sub_1AC6102B0(&v13 + 7, *(a1 + v10++), a3, a4, a5, a6, a7, a8, v13, v14);
      --v9;
    }

    while (v9);

    return v14;
  }

  else
  {
    v11 = a2;
  }

  return v11;
}

void sub_1AC6CF538()
{
  qword_1EB56CF78 = MEMORY[0x1E69E7CD0];
  unk_1EB56CF80 = MEMORY[0x1E69E7CD0];
  qword_1EB56CF88 = MEMORY[0x1E69E7CD0];
  unk_1EB56CF90 = MEMORY[0x1E69E7CC0];
}

uint64_t SpeechTranscriber.Preset.init(transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v4;
  return result;
}

uint64_t static SpeechTranscriber.Preset.transcription.getter()
{
  if (qword_1EB56B5B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CF78);
}

void sub_1AC6CF5F8()
{
  sub_1AC724674();
  qword_1EB56CF98 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFA0 = v0;
  qword_1EB56CFA8 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFB0 = MEMORY[0x1E69E7CC0];
}

uint64_t static SpeechTranscriber.Preset.transcriptionWithAlternatives.getter()
{
  if (qword_1EB56B5B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CF98);
}

void sub_1AC6CF6C0()
{
  sub_1AC724674();
  v1 = v0;
  sub_1AC724660();
  qword_1EB56CFB8 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFC0 = v1;
  qword_1EB56CFC8 = v2;
  unk_1EB56CFD0 = MEMORY[0x1E69E7CC0];
}

uint64_t static SpeechTranscriber.Preset.timeIndexedTranscriptionWithAlternatives.getter()
{
  if (qword_1EB56B5C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CFB8);
}

void sub_1AC6CF7A0()
{
  sub_1AC724674();
  qword_1EB56CFD8 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFE0 = v0;
  qword_1EB56CFE8 = MEMORY[0x1E69E7CD0];
  unk_1EB56CFF0 = MEMORY[0x1E69E7CC0];
}

uint64_t static SpeechTranscriber.Preset.progressiveTranscription.getter()
{
  if (qword_1EB56B5C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CFD8);
}

void sub_1AC6CF868()
{
  sub_1AC724674();
  v1 = v0;
  sub_1AC724660();
  qword_1EB56CFF8 = MEMORY[0x1E69E7CD0];
  unk_1EB56D000 = v1;
  qword_1EB56D008 = v2;
  unk_1EB56D010 = MEMORY[0x1E69E7CC0];
}

uint64_t static SpeechTranscriber.Preset.timeIndexedProgressiveTranscription.getter()
{
  if (qword_1EB56B5D0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56CFF8);
}

void sub_1AC6CF948()
{
  qword_1EB56D018 = MEMORY[0x1E69E7CD0];
  unk_1EB56D020 = MEMORY[0x1E69E7CD0];
  qword_1EB56D028 = MEMORY[0x1E69E7CD0];
  unk_1EB56D030 = &unk_1F212FC48;
}

uint64_t *SpeechTranscriber.Preset.init(modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *result;
  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
  a5[3] = v5;
  return result;
}

uint64_t static SpeechTranscriber.Preset.translateApp.getter()
{
  if (qword_1EB56B5D8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56D018);
}

uint64_t sub_1AC6CFA04()
{
  if (qword_1EB56B5C8 != -1)
  {
    swift_once();
  }

  qword_1EB56D038 = qword_1EB56CFD8;
  unk_1EB56D040 = unk_1EB56CFE0;
  qword_1EB56D048 = qword_1EB56CFE8;
  unk_1EB56D050 = unk_1EB56CFF0;
}

uint64_t static SpeechTranscriber.Preset.progressiveLiveTranscription.getter()
{
  if (qword_1EB56B5E0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56D038);
}

uint64_t SpeechTranscriber.Preset.transcriptionOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SpeechTranscriber.Preset.reportingOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SpeechTranscriber.Preset.attributeOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SpeechTranscriber.Preset.modelOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t static SpeechTranscriber.Preset.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1AC623E30(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AC623E28(v2, v5) & 1) == 0)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_57_0();
  if ((sub_1AC623E2C(v8, v9) & 1) == 0)
  {
    return 0;
  }

  sub_1AC6299CC();
  v11 = v10;

  return v11 & 1;
}

void static SpeechTranscriber.ModelOptions.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1AC6299CC();
}

void SpeechTranscriber.Preset.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1AC623E38(a1, v3);
  v7 = OUTLINED_FUNCTION_170();
  sub_1AC623E34(v7, v8);
  sub_1AC623E34(a1, v6);

  sub_1AC6341DC();
}

uint64_t SpeechTranscriber.Preset.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_85_1();
  sub_1AC623E38(v6, v1);
  sub_1AC623E34(v6, v2);
  sub_1AC623E34(v6, v4);
  sub_1AC6341DC();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6CFE08()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1AC7A0E78();
  sub_1AC623E38(v6, v1);
  sub_1AC623E34(v6, v2);
  sub_1AC623E34(v6, v4);
  sub_1AC6341DC();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6CFE7C()
{
  v0 = sub_1AC7A0BF8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AC6CFEC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1AC6CFE7C();
  *a2 = result;
  return result;
}

uint64_t sub_1AC6CFEF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC6CF450(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SpeechTranscriber.ModelOptions.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  sub_1AC6341DC();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6CFF9C()
{
  v1 = *v0;
  sub_1AC7A0E78();
  sub_1AC6341DC();
  return sub_1AC7A0EC8();
}

uint64_t SpeechTranscriber.TranscriptionOption.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t SpeechTranscriber.ReportingOption.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t SpeechTranscriber.ResultAttributeOption.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t static SpeechTranscriber.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_26_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC70C79C();
}

uint64_t static SpeechTranscriber.supportedLocale(equivalentTo:)()
{
  v1 = OUTLINED_FUNCTION_25();
  type metadata accessor for TranscriberCommon(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1AC6AEC88;

  return sub_1AC740D54();
}

uint64_t static SpeechTranscriber.installedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_26_9();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC70D1B4(v0);
}

uint64_t SpeechTranscriber.selectedLocales.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C018, &unk_1AC7A8480);
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AC7A6D00;
  (*(v3 + 16))(v7 + v6, v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_locale, v1);
  return v7;
}

uint64_t sub_1AC6D04F4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC741794();
}

uint64_t sub_1AC6D0588()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_69_1();

  return v6(v5);
}

uint64_t SpeechTranscriber.results.getter()
{
  v1 = OUTLINED_FUNCTION_57_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_40(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_1();
  v7 = *(v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common);
  v8 = OUTLINED_FUNCTION_77_0();
  v9(v8);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v10, &qword_1EB56C330, &qword_1AC7A8800);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

void static SpeechTranscriber.Result.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v10 = *a1;
  v11 = a1[1];
  v2 = *(a1 + 6);
  v3 = *(a1 + 7);
  v5 = *(a1 + 8);
  v4 = *(a1 + 9);
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v9 = *(a2 + 8);
  v8 = *(a2 + 9);
  if (sub_1AC7A0548())
  {
    OUTLINED_FUNCTION_57_0();
    if (sub_1AC7A06A8())
    {

      sub_1AC6285F8();
    }
  }
}

void SpeechTranscriber.Result.hash(into:)()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  sub_1AC7A0568();
  OUTLINED_FUNCTION_170();
  sub_1AC7A06E8();

  sub_1AC6336F0();
}

uint64_t SpeechTranscriber.Result.hashValue.getter()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  OUTLINED_FUNCTION_85_1();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC6336F0();
  return sub_1AC7A0EC8();
}

double sub_1AC6D099C()
{
  v0 = SpeechTranscriber.Result.range.getter(v10);
  *&result = OUTLINED_FUNCTION_21_0(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1], v8).n128_u64[0];
  return result;
}

uint64_t SpeechTranscriber.multisegmentResults.getter()
{
  v1 = OUTLINED_FUNCTION_57_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_40(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_1();
  v7 = *(v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common);
  v8 = OUTLINED_FUNCTION_77_0();
  v9(v8);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v10, &qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t SpeechTranscriber.muxMultisegmentResults.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_1();
  v5 = *(v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common);
  v6 = OUTLINED_FUNCTION_77_0();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D058, &qword_1AC7AD060);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v8, &qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC6D0C0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC6D0C30, 0, 0);
}

void sub_1AC6D0C30()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D108, &qword_1AC7AD730);
  sub_1AC7A0BA8();
  v2 = 0;
  v3 = *(v1 + 64);
  v46 = v1 + 64;
  v48 = v1;
  OUTLINED_FUNCTION_13_5();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v47 = v10 + 64;
  if ((v6 & v5) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_8:
      v14 = v11 | (v2 << 6);
      v15 = (*(v48 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = 33 * v14;
      v19 = *(v48 + 56) + 264 * v14;
      v49 = *v19;
      v50 = *(v19 + 16);
      v51 = *(v19 + 32);
      v20 = *(v19 + 48);
      v21 = *(v19 + 64);
      v22 = *(v19 + 72);
      v24 = *(v19 + 80);
      v23 = *(v19 + 88);
      v25 = *(v19 + 96);
      v26 = *(v19 + 104);
      v27 = *(v19 + 160);
      v28 = *(v19 + 168);
      v29 = *(v19 + 200);
      v30 = *(v19 + 224);
      v31 = *(v19 + 232);
      *&v52[3] = *(v19 + 108);
      *&v52[19] = *(v19 + 124);
      *&v52[35] = *(v19 + 140);
      v53 = *(v19 + 192);
      v54 = *(v19 + 256);
      v32 = (v14 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v33 = *(v47 + v32) | (1 << v14);
      v34 = (v4[6] + 16 * v14);
      v35 = *(v19 + 240);
      v36 = *(v19 + 208);
      v37 = *(v19 + 176);
      v38 = *(v19 + 56);
      *(v47 + v32) = v33;
      *v34 = v17;
      v34[1] = v16;
      v39 = v4[7] + 8 * v18;
      *v39 = v49;
      *(v39 + 16) = v50;
      *(v39 + 32) = v51;
      *(v39 + 48) = v20;
      *(v39 + 56) = v38;
      *(v39 + 64) = v21;
      *(v39 + 72) = v22;
      *(v39 + 80) = v24;
      *(v39 + 88) = v23;
      *(v39 + 96) = v25;
      *(v39 + 104) = v26;
      *(v39 + 152) = *&v52[47];
      *(v39 + 137) = *&v52[32];
      *(v39 + 121) = *&v52[16];
      *(v39 + 105) = *v52;
      *(v39 + 160) = v27;
      *(v39 + 168) = v28;
      *(v39 + 176) = v37;
      *(v39 + 192) = v53;
      *(v39 + 200) = v29;
      *(v39 + 208) = v36;
      *(v39 + 224) = v30;
      *(v39 + 232) = v31;
      *(v39 + 240) = v35;
      *(v39 + 256) = v54;
      v40 = v4[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      v4[2] = v42;
      v43 = v4;

      sub_1AC63482C(v27);

      v4 = v43;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v12 = v2;
    while (1)
    {
      v2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v2 >= v9)
      {
        break;
      }

      v13 = *(v46 + 8 * v2);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v7 = (v13 - 1) & v13;
        goto LABEL_8;
      }
    }

    **(v45 + 16) = v4;
    v44 = *(v45 + 8);

    v44();
  }
}

uint64_t static SpeechTranscriber.MultisegmentResult.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v80 = *a1;
  v81 = v2;
  v82 = a1[2];
  v3 = *(a1 + 6);
  v4 = *(a1 + 7);
  v6 = *(a1 + 8);
  v5 = *(a1 + 9);
  v68 = *(a1 + 11);
  v69 = *(a1 + 10);
  v67 = *(a1 + 12);
  v65 = *(a1 + 104);
  v7 = *(a1 + 124);
  v74 = *(a1 + 108);
  v75 = v7;
  v76 = *(a1 + 140);
  v61 = *(a1 + 20);
  v62 = *(a1 + 21);
  v63 = *(a1 + 22);
  v8 = *(a1 + 23);
  v57 = *(a1 + 192);
  v53 = *(a1 + 216);
  v54 = *(a1 + 200);
  v52 = *(a1 + 232);
  v51 = *(a1 + 30);
  v43 = *(a1 + 31);
  v45 = *(a1 + 256);
  v9 = a2[1];
  v83 = *a2;
  v84 = v9;
  v85 = a2[2];
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v15 = *(a2 + 10);
  v14 = *(a2 + 11);
  v66 = *(a2 + 12);
  v64 = *(a2 + 104);
  v16 = *(a2 + 140);
  v17 = *(a2 + 108);
  v78 = *(a2 + 124);
  v79 = v16;
  v77 = v17;
  v58 = *(a2 + 20);
  v59 = *(a2 + 21);
  v60 = *(a2 + 22);
  v18 = *(a2 + 23);
  v56 = *(a2 + 192);
  v55 = *(a2 + 26);
  v46 = *(a2 + 25);
  v47 = *(a2 + 27);
  v48 = *(a2 + 28);
  v49 = *(a2 + 232);
  v50 = *(a2 + 30);
  v42 = *(a2 + 31);
  v44 = *(a2 + 256);
  if ((sub_1AC7A0548() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AC7A06A8() & 1) == 0)
  {
    return 0;
  }

  sub_1AC6285F8();
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628640();
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628938();
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628F50();
  v23 = v22;
  result = 0;
  if ((v23 & 1) != 0 && v65 == v64)
  {
    if ((sub_1AC7A0548() & 1) == 0)
    {
      return 0;
    }

    if (v61)
    {
      if (v58)
      {
        v25 = OUTLINED_FUNCTION_15();
        sub_1AC63482C(v25);
        v26 = OUTLINED_FUNCTION_16_2();
        sub_1AC63482C(v26);
        v27 = OUTLINED_FUNCTION_15();
        sub_1AC63482C(v27);
        sub_1AC6305D8();
        if (v28)
        {
          sub_1AC6306C8(v62, v59);
          v30 = v29;
          v31 = OUTLINED_FUNCTION_16_2();
          sub_1AC63486C(v31);

          v32 = OUTLINED_FUNCTION_15();
          sub_1AC63486C(v32);
          result = 0;
          if ((v30 & 1) == 0 || v63 != v60)
          {
            return result;
          }

LABEL_24:
          if (v57)
          {
            if (!v56)
            {
              return 0;
            }
          }

          else
          {
            v39 = v56;
            if (v8 != v18)
            {
              v39 = 1;
            }

            if (v39)
            {
              return 0;
            }
          }

          if (*(&v54 + 1))
          {
            v72[0] = v54;
            v72[1] = v53;
            v73 = v52;
            if (v55)
            {
              v70[0] = v46;
              v70[1] = v55;
              v70[2] = v47;
              v70[3] = v48;
              v71 = v49 & 1;
              v40 = static TranscriptionLatticeMitigatorResult.== infix(_:_:)(v72, v70);
              swift_bridgeObjectRetain_n();

              result = 0;
              if ((v40 & 1) == 0 || v51 != v50)
              {
                return result;
              }

LABEL_38:
              if (v45)
              {
                if (v44)
                {
                  return 1;
                }
              }

              else
              {
                v41 = v44;
                if (v43 != v42)
                {
                  v41 = 1;
                }

                if ((v41 & 1) == 0)
                {
                  return 1;
                }
              }

              return 0;
            }
          }

          else if (!v55)
          {

            if (v51 != v50)
            {
              return 0;
            }

            goto LABEL_38;
          }

          return 0;
        }

        v38 = OUTLINED_FUNCTION_16_2();
        sub_1AC63486C(v38);

        v37 = OUTLINED_FUNCTION_15();
LABEL_20:
        sub_1AC63486C(v37);
        return 0;
      }

      v34 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v34);
      sub_1AC63482C(0);
      v35 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v35);
    }

    else
    {
      sub_1AC63482C(0);
      if (!v58)
      {
        sub_1AC63482C(0);
        sub_1AC63486C(0);
        goto LABEL_24;
      }

      v33 = OUTLINED_FUNCTION_16_2();
      sub_1AC63482C(v33);
    }

    v36 = OUTLINED_FUNCTION_15();
    sub_1AC63486C(v36);
    v37 = OUTLINED_FUNCTION_16_2();
    goto LABEL_20;
  }

  return result;
}

uint64_t SpeechTranscriber.MultisegmentResult.hash(into:)(const void *a1)
{
  v30 = *v1;
  v31 = v1[1];
  v32 = v1[2];
  v3 = *(v1 + 6);
  v4 = *(v1 + 7);
  v6 = *(v1 + 8);
  v5 = *(v1 + 9);
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v22 = *(v1 + 104);
  v28 = *(v1 + 124);
  v29 = *(v1 + 140);
  v27 = *(v1 + 108);
  v10 = *(v1 + 20);
  v16 = *(v1 + 21);
  v17 = *(v1 + 22);
  v23 = *(v1 + 192);
  v18 = *(v1 + 25);
  v19 = *(v1 + 27);
  v20 = *(v1 + 28);
  v21 = *(v1 + 232);
  v24 = *(v1 + 26);
  v25 = *(v1 + 30);
  v14 = *(v1 + 23);
  v15 = *(v1 + 31);
  v26 = *(v1 + 256);
  sub_1AC7A0568();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_170();
  sub_1AC6336F0();
  sub_1AC633C28();
  sub_1AC6337D8();
  sub_1AC633790();
  MEMORY[0x1B26E9A40](v22);
  sub_1AC7A0568();
  if (v10)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC63459C(a1, v10);
    sub_1AC634414(a1, v16);
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1B26E9A70](v11);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (v23)
  {
    OUTLINED_FUNCTION_80_1();
    if (v24)
    {
LABEL_9:
      OUTLINED_FUNCTION_83();

      TranscriptionLatticeMitigatorResult.hash(into:)();

      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B26E9A70](v12);
    if (v24)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_80_1();
LABEL_15:
  MEMORY[0x1B26E9A40](v25);
  if (v26)
  {
    return OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_83();
  return MEMORY[0x1B26E9A40](v15);
}

uint64_t SpeechTranscriber.MultisegmentResult.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  SpeechTranscriber.MultisegmentResult.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

double sub_1AC6D1658()
{
  v0 = SpeechTranscriber.MultisegmentResult.range.getter(v10);
  *&result = OUTLINED_FUNCTION_21_0(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1], v8).n128_u64[0];
  return result;
}

uint64_t sub_1AC6D16A0()
{
  sub_1AC7A0E78();
  SpeechTranscriber.MultisegmentResult.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6D16DC()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1AC79FB18();
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_1AC79FF48() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_85_0(v6);

  return sub_1AC6D1D14();
}

uint64_t sub_1AC6D17C0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *(v1 + 56);
  v6 = *v0;
  *(v2 + 72) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AC6D18B8, 0, 0);
}

uint64_t sub_1AC6D18B8()
{
  v26 = v0;
  if (*(v0 + 72))
  {
    v1 = *(*(v0 + 24) + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common);
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1AC6D1BE8;
    v3 = *(v0 + 16);

    return sub_1AC743644();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 24);
    v6 = sub_1AC79FDE8();
    __swift_project_value_buffer(v6, qword_1ED9386C8);

    v7 = sub_1AC79FDC8();
    v8 = sub_1AC7A05F8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 24);
      v10 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      sub_1AC6D3290(&qword_1EB56B458, MEMORY[0x1E6969770]);
      v13 = sub_1AC7A0CC8();
      v15 = sub_1AC5CFE74(v13, v14, &v25);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1AC5BC000, v7, v8, "SpeechTranscriber cannot be initialized with an unsupported locale: %s.\nPlease consult SpeechTranscriber.supportedLocales.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B26EAB10](v12, -1, -1);
      MEMORY[0x1B26EAB10](v11, -1, -1);
    }

    v16 = *(v0 + 48);
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = qword_1EB56DF80;
    sub_1AC79FA88();
    v20 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(4, v20, v21);
    swift_willThrow();
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1AC6D1BE8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1AC6D1D14()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return static SpeechTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC6D1D9C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *(v1 + 24);
  v6 = *v0;
  *(v2 + 32) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AC6D1E94, 0, 0);
}

uint64_t sub_1AC6D1E94()
{
  v1 = v0[4];
  v2 = v0[2] + OBJC_IVAR____TtC6Speech17SpeechTranscriber_locale;
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_1AC6F47B8(sub_1AC637BAC, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1AC6D1FDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common);
  sub_1AC744558();
  return v2 & 1;
}

uint64_t SpeechTranscriber.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech17SpeechTranscriber_locale;
  v2 = sub_1AC79FB18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_modelOptions);

  v4 = *(v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_transcriptionOptions);

  v5 = *(v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_reportingOptions);

  v6 = *(v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_resultAttributeOptions);

  v7 = *(v0 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common);

  return v0;
}

uint64_t SpeechTranscriber.__deallocating_deinit()
{
  SpeechTranscriber.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC6D225C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6D32E0;

  return SpeechTranscriber.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC6D22E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6AEC88;

  return sub_1AC6D16DC();
}

uint64_t sub_1AC6D2380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6BB1B8;

  return sub_1AC6D1D14();
}

uint64_t sub_1AC6D24AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D508;

  return static SpeechTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC6D2538()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6D32DC;

  return static SpeechTranscriber.supportedLocale(equivalentTo:)();
}

unint64_t sub_1AC6D262C()
{
  result = qword_1EB56D060;
  if (!qword_1EB56D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D060);
  }

  return result;
}

unint64_t sub_1AC6D2684()
{
  result = qword_1EB56D068;
  if (!qword_1EB56D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D068);
  }

  return result;
}

unint64_t sub_1AC6D2720()
{
  result = qword_1EB56D080;
  if (!qword_1EB56D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D080);
  }

  return result;
}

unint64_t sub_1AC6D27BC()
{
  result = qword_1EB56D098;
  if (!qword_1EB56D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D098);
  }

  return result;
}

unint64_t sub_1AC6D2858()
{
  result = qword_1EB56D0B0;
  if (!qword_1EB56D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D0B0);
  }

  return result;
}

unint64_t sub_1AC6D28B0()
{
  result = qword_1EB56D0B8;
  if (!qword_1EB56D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D0B8);
  }

  return result;
}

unint64_t sub_1AC6D2908()
{
  result = qword_1EB56D0C0;
  if (!qword_1EB56D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D0C0);
  }

  return result;
}

uint64_t sub_1AC6D2984(uint64_t a1)
{
  *(a1 + 8) = sub_1AC6D3290(&qword_1EB56D0C8, type metadata accessor for SpeechTranscriber);
  result = sub_1AC6D3290(&qword_1EB56C938, type metadata accessor for SpeechTranscriber);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for SpeechTranscriber()
{
  result = qword_1EB56B420;
  if (!qword_1EB56B420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC6D2A54(uint64_t a1)
{
  result = sub_1AC6D3290(&qword_1EB56C938, type metadata accessor for SpeechTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6D2AAC(uint64_t a1)
{
  result = sub_1AC6D3290(&qword_1EB56D0C8, type metadata accessor for SpeechTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6D2B54()
{
  result = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t destroy for SpeechTranscriber.Preset(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];
}

void *initializeWithCopy for SpeechTranscriber.Preset(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for SpeechTranscriber.Preset(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  v7 = a2[3];
  v8 = a1[3];
  a1[3] = v7;

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithTake for SpeechTranscriber.Preset(void *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for SpeechTranscriber.Preset(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechTranscriber.Preset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for SpeechTranscriber.ModelOptions(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for SpeechTranscriber.ModelOptions(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for SpeechTranscriber.TranscriptionOption(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechTranscriber.ReportingOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechTranscriber.ResultAttributeOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechTranscriber.ModelOptions.TaskName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1AC6D323C()
{
  result = qword_1EB56D100;
  if (!qword_1EB56D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D100);
  }

  return result;
}

uint64_t sub_1AC6D3290(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AC6D32F8(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v29 = MEMORY[0x1E69E7CC0];
    v28 = *(a1 + 16);
    a2(0, v3, 0);
    v8 = a3(a1);
    v9 = v28;
    v10 = 0;
    v11 = a1 + 56;
    v12 = 1;
    v13 = -2;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < v12 << *(a1 + 32))
      {
        v14 = v8 >> 6;
        v15 = v12 << v8;
        if ((*(v11 + 8 * (v8 >> 6)) & (v12 << v8)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_25;
        }

        v16 = *(*(a1 + 48) + v8);
        v18 = *(v29 + 16);
        v17 = *(v29 + 24);
        if (v18 >= v17 >> 1)
        {
          a2(v17 > 1, v18 + 1, 1);
          OUTLINED_FUNCTION_40_6();
        }

        *(v29 + 16) = v18 + 1;
        *(v29 + v18 + 32) = v16;
        if (v7)
        {
          goto LABEL_29;
        }

        v19 = v12 << *(a1 + 32);
        if (v8 >= v19)
        {
          goto LABEL_26;
        }

        v20 = *(v11 + 8 * v14);
        if ((v20 & v15) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_28;
        }

        v21 = v20 & (v13 << (v8 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v14 << 6;
          v23 = v14 + 1;
          v24 = (a1 + 64 + 8 * v14);
          while (v23 < (v19 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_1AC637E98(v8, v6, 0);
              OUTLINED_FUNCTION_40_6();
              v19 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v8, v6, 0);
          OUTLINED_FUNCTION_40_6();
        }

LABEL_19:
        if (++v10 == v9)
        {
          return;
        }

        v7 = 0;
        v6 = *(a1 + 36);
        v8 = v19;
        if (v19 < 0)
        {
          break;
        }
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
  }
}

void Transcriber.Result.text.getter()
{
  if (*(*(v0 + 72) + 16))
  {
    v1 = sub_1AC79F5C8();
    OUTLINED_FUNCTION_80(v1);
    v3 = *(v2 + 16);
    v4 = *(v2 + 80);
    v5 = OUTLINED_FUNCTION_42_6();

    v6(v5);
  }

  else
  {
    __break(1u);
  }
}

__n128 Transcriber.MultisegmentResult.recognitionAudioRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 108);
  *(a1 + 16) = v2;
  result = *(v1 + 140);
  *(a1 + 32) = result;
  return result;
}

uint64_t Transcriber.MultisegmentResult.audioAnalytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1AC63482C(v2);
}

uint64_t Transcriber.MultisegmentResult.eosLikelihood.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t Transcriber.MultisegmentResult.latticeMitigatorResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = *(v1 + 208);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t Transcriber.MultisegmentResult.resultCandidateId.getter()
{
  result = *(v0 + 248);
  v2 = *(v0 + 256);
  return result;
}

__n128 Transcriber.MultisegmentResult.init(range:resultsFinalizationTime:transcriptions:transcriptionTokens:segments:nBestChoices:earResultType:recognitionAudioRange:audioAnalytics:eosLikelihood:latticeMitigatorResult:numOneBestTokensExcludingTriggerPhrase:resultCandidateId:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, _OWORD *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v18 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v18;
  *(a9 + 32) = a1[2];
  v19 = a11[1];
  *(a9 + 108) = *a11;
  *(a9 + 124) = v19;
  *(a9 + 140) = a11[2];
  *(a9 + 160) = *a12;
  result = *a15;
  v21 = *(a15 + 16);
  *(a9 + 200) = *a15;
  v22 = *a10;
  v23 = *(a12 + 16);
  v24 = *(a15 + 32);
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v22;
  *(a9 + 176) = v23;
  *(a9 + 184) = a13;
  *(a9 + 192) = a14 & 1;
  *(a9 + 216) = v21;
  *(a9 + 232) = v24;
  *(a9 + 240) = a16;
  *(a9 + 248) = a17;
  *(a9 + 256) = a18 & 1;
  return result;
}

void Transcriber.selectedLocales.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v23 = sub_1AC79FB18();
  v24 = *(v23 - 8);
  v25 = v24;
  v26 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = objc_opt_self();
  (*(v24 + 16))(v29, *(v20 + 16) + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v23);
  sub_1AC79F978();
  (*(v24 + 8))(v29, v23);
  v34 = sub_1AC79FF58();

  v35 = [v33 languageCode_];

  sub_1AC79FF68();
  sub_1AC79F968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C018, &unk_1AC7A8480);
  v36 = *(v24 + 72);
  v37 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1AC7A6D00;
  (*(v25 + 32))(v38 + v37, v32, v23);
  OUTLINED_FUNCTION_105();
}

uint64_t Transcriber.locale.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_1AC79FB18();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_42_6();

  return v6(v5);
}