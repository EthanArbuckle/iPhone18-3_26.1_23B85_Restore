uint64_t sub_1C0EE26AC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1C0EE2930;
  }

  else
  {
    v7 = sub_1C0EE28C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C0EE27E8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  **(v0 + 32) = *(v0 + 88);
  type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  swift_storeEnumTagMultiPayload();
  sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_willThrowTypedImpl();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0EE28C4()
{
  v1 = v0[10];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C0EE2930()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);

  **(v0 + 32) = *(v0 + 104);
  type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  swift_storeEnumTagMultiPayload();
  sub_1C0EE9CFC(&qword_1EBE77600, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
  swift_willThrowTypedImpl();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C0EE2A08(uint64_t a1)
{
  v53 = sub_1C0F4F8A0();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1C0F4F940();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v40[1] = v1;
  v59 = MEMORY[0x1E69E7CC0];
  sub_1C0EF8E6C(0, v9, 0);
  v10 = v59;
  v11 = a1 + 56;
  v12 = -1 << *(a1 + 32);
  result = sub_1C0F50540();
  v14 = result;
  v15 = 0;
  v47 = v6 + 16;
  v46 = *MEMORY[0x1E6969640];
  v44 = (v3 + 8);
  v45 = (v3 + 104);
  v48 = a1 + 56;
  v49 = v6;
  v42 = v9;
  v43 = v6 + 8;
  v41 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v18 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 36);
    v54 = v15;
    v55 = v19;
    v20 = *(a1 + 48);
    v58 = v10;
    v22 = v49;
    v21 = v50;
    v23 = v51;
    (*(v49 + 16))(v50, v20 + *(v49 + 72) * v14, v51);
    v25 = v52;
    v24 = v53;
    (*v45)(v52, v46, v53);
    v26 = sub_1C0F4F870();
    v56 = v27;
    v57 = v26;
    (*v44)(v25, v24);
    v28 = *(v22 + 8);
    v10 = v58;
    result = v28(v21, v23);
    v59 = v10;
    v30 = *(v10 + 16);
    v29 = *(v10 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_1C0EF8E6C((v29 > 1), v30 + 1, 1);
      v10 = v59;
    }

    *(v10 + 16) = v30 + 1;
    v31 = v10 + 16 * v30;
    v32 = v56;
    *(v31 + 32) = v57;
    *(v31 + 40) = v32;
    v16 = 1 << *(a1 + 32);
    v11 = v48;
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v33 = *(v48 + 8 * v18);
    if ((v33 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v34 = v33 & (-2 << (v14 & 0x3F));
    if (v34)
    {
      v16 = __clz(__rbit64(v34)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
    }

    else
    {
      v35 = v18 << 6;
      v36 = v18 + 1;
      v17 = v42;
      v37 = (v41 + 8 * v18);
      while (v36 < (v16 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          result = sub_1C0EEF658(v14, v55, 0);
          v16 = __clz(__rbit64(v38)) + v35;
          goto LABEL_4;
        }
      }

      result = sub_1C0EEF658(v14, v55, 0);
    }

LABEL_4:
    v15 = v54 + 1;
    v14 = v16;
    if (v54 + 1 == v17)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C0EE2DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a2 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter);
}

uint64_t sub_1C0EE2EC0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v9 = *a1;
  swift_beginAccess();
  return sub_1C0EED570(v11 + v9, a4, a2, a3);
}

uint64_t sub_1C0EE2FA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v10 = *a2;
  swift_beginAccess();
  return sub_1C0EED570(v9 + v10, a5, a3, a4);
}

uint64_t sub_1C0EE3084()
{
  v1 = v0;
  v24 = type metadata accessor for AXSpeechTranscriber.Event(0);
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v23 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77618, &qword_1C0F56BC8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  swift_getKeyPath();
  v27 = v0;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v17 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes;
  if (*(*(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes) + 16))
  {
    swift_getKeyPath();
    v27 = v0;
    sub_1C0F4F960();

    v18 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
    swift_beginAccess();
    sub_1C0EED570(v1 + v18, v11, &qword_1EBE772B0, &qword_1C0F561E0);
    v19 = v25;
    if ((*(v25 + 48))(v11, 1, v4))
    {
      sub_1C0EEFAA8(v11, &qword_1EBE772B0, &qword_1C0F561E0);
      v20 = 1;
    }

    else
    {
      (*(v19 + 16))(v7, v11, v4);
      sub_1C0EEFAA8(v11, &qword_1EBE772B0, &qword_1C0F561E0);
      swift_getKeyPath();
      v26 = v1;
      sub_1C0F4F960();

      *v23 = *(v1 + v17);
      swift_storeEnumTagMultiPayload();

      sub_1C0F50360();
      (*(v19 + 8))(v7, v4);
      v20 = 0;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77620, &qword_1C0F56BD0);
    (*(*(v21 - 8) + 56))(v15, v20, 1, v21);
    return sub_1C0EEFAA8(v15, &qword_1EBE77618, &qword_1C0F56BC8);
  }

  return result;
}

uint64_t sub_1C0EE3498(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v4 = *(v2 + *a2);
}

uint64_t sub_1C0EE353C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1C0EE35F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  *a2 = *(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftSetup);
  return result;
}

uint64_t sub_1C0EE36A4(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8]();
}

void sub_1C0EE3700(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  swift_getKeyPath();
  v19[0] = v1;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v3 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile];
  if (!v3)
  {
    goto LABEL_9;
  }

  v19[0] = 0;
  v4 = [v3 writeFromBuffer:a1 error:v19];
  v5 = v19[0];
  if (!v4)
  {
    v8 = v19[0];
    v9 = sub_1C0F4F6B0();

    swift_willThrow();
    v10 = v9;
    v11 = sub_1C0F4FD00();
    v12 = sub_1C0F50470();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1C0EE9754(0xD00000000000001ALL, 0x80000001C0F665B0, v19);
      *(v13 + 12) = 2112;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1C0E8A000, v11, v12, "🟡 %s: file writing error: %@", v13, 0x16u);
      sub_1C0EEFAA8(v14, &qword_1EBE776D0, &qword_1C0F56E10);
      MEMORY[0x1C68EB070](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1C68EB070](v15, -1, -1);
      MEMORY[0x1C68EB070](v13, -1, -1);
    }

    else
    {
    }

LABEL_9:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = *MEMORY[0x1E69E9840];

  v7 = v5;
}

id sub_1C0EE39BC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v56 = a1;
  v49 = a3;
  v5 = sub_1C0F4FFF0();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C0F50010();
  v53 = *(v48 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1C0F4F830();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v51);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v47 = &v42 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  result = [a2 hostTime];
  if (result)
  {
    v21 = objc_opt_self();
    v46 = v5;
    [v21 secondsForHostTime_];
    v22 = v19;
    v42 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1C0F4F800();
    [v56 frameLength];
    [a2 sampleRate];
    v23 = v17;
    v44 = v17;
    v45 = v22;
    sub_1C0F4F7F0();
    sub_1C0EED60C(0, &qword_1EBE77690, 0x1E69E9610);
    v43 = sub_1C0F504C0();
    v24 = *(v10 + 16);
    v25 = v47;
    v26 = v51;
    v24(v47, v22, v51);
    v24(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v26);
    v27 = *(v10 + 80);
    v28 = (v27 + 32) & ~v27;
    v29 = (v11 + v27 + v28) & ~v27;
    v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v32 = v55;
    *(v31 + 16) = v49;
    *(v31 + 24) = v32;
    v33 = *(v10 + 32);
    v33(v31 + v28, v25, v26);
    v33(v31 + v29, v42, v26);
    v34 = v56;
    *(v31 + v30) = v56;
    aBlock[4] = sub_1C0EED654;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0EE4C3C;
    aBlock[3] = &block_descriptor_267;
    v35 = _Block_copy(aBlock);

    v36 = v34;

    v37 = v52;
    sub_1C0F50000();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C0EE9CFC(&qword_1EBE77698, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776A0, &qword_1C0F56DC8);
    sub_1C0EEFB08(&qword_1EBE776A8, &qword_1EBE776A0, &qword_1C0F56DC8);
    v38 = v50;
    v39 = v46;
    sub_1C0F50530();
    v40 = v43;
    MEMORY[0x1C68E9CE0](0, v37, v38, v35);
    _Block_release(v35);

    (*(v54 + 8))(v38, v39);
    (*(v53 + 8))(v37, v48);
    v41 = *(v10 + 8);
    v41(v44, v26);
    return (v41)(v45, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0EE3F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v93 = a5;
  v90 = a4;
  v95 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774D0, &qword_1C0F56998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77390, &qword_1C0F56208);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776B0, &qword_1C0F56DD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v79 - v14;
  v94 = sub_1C0F4F830();
  v16 = *(v94 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v94);
  v91 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v79 - v20;
  v86 = type metadata accessor for AXSpeechTranscriber.AudioBuffer(0);
  v21 = *(*(v86 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v86);
  v79 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v92 = (&v79 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v89 = (&v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v79 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v79 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v79 - v35;
  v37 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v39 = result;
  v82 = v6;
  v83 = v5;
  v84 = v15;
  swift_beginAccess();
  sub_1C0EED570(v37, v36, &qword_1EBE77370, &qword_1C0F56200);
  v40 = v94;
  v85 = *(v16 + 48);
  v41 = v85(v36, 1, v94);
  sub_1C0EEFAA8(v36, &qword_1EBE77370, &qword_1C0F56200);
  if (v41 == 1)
  {
    (*(v16 + 16))(v34, v95, v40);
    (*(v16 + 56))(v34, 0, 1, v40);
    swift_beginAccess();
    sub_1C0EED6F4(v34, v37);
  }

  sub_1C0F4F810();
  v43 = v42;
  swift_beginAccess();
  sub_1C0EED570(v37, v31, &qword_1EBE77370, &qword_1C0F56200);
  v44 = v85;
  result = v85(v31, 1, v40);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1C0F4F810();
  v46 = v45;
  v47 = *(v16 + 8);
  v47(v31, v40);
  v48 = v90;
  sub_1C0F4F810();
  v50 = v49;
  swift_beginAccess();
  v51 = v89;
  sub_1C0EED570(v37, v89, &qword_1EBE77370, &qword_1C0F56200);
  result = v44(v51, 1, v40);
  v52 = v93;
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1C0F4F810();
  v54 = v53;
  v89 = v47;
  v85 = (v16 + 8);
  v47(v51, v40);
  sub_1C0EE3700(v52);
  result = sub_1C0EEEFE4(v52);
  if ((result & 0x100000000) != 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v55 = v43 - v46;
  v56 = *&result;
  v57 = *(v16 + 16);
  v58 = v87;
  v81 = result;
  v59 = v94;
  v57(v87, v95, v94);
  v57(v91, v48, v59);
  swift_getKeyPath();
  v60 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v96 = v39;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  v96 = v39;
  swift_getKeyPath();
  v95 = v60;
  sub_1C0F4F980();

  sub_1C0EE49CC(v56);
  v62 = v61;
  v96 = v39;
  swift_getKeyPath();
  sub_1C0F4F970();

  v63 = v92;
  v64 = v93;
  *v92 = v93;
  v65 = v63 + *(v86 + 20);
  v66 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v57(&v65[v66[5]], v58, v59);
  v67 = v91;
  v57(&v65[v66[6]], v91, v59);
  v68 = v64;
  sub_1C0F4F850();
  v69 = v89;
  v89(v67, v59);
  v69(v58, v59);
  *&v65[v66[7]] = v55;
  *&v65[v66[8]] = v50 - v54;
  *&v65[v66[9]] = v81;
  *&v65[v66[10]] = v62;
  swift_getKeyPath();
  v96 = v39;
  sub_1C0F4F960();

  v70 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioEngineBufferContinuation;
  swift_beginAccess();
  v71 = v88;
  sub_1C0EED570(v39 + v70, v88, &qword_1EBE77390, &qword_1C0F56208);
  v72 = v82;
  v73 = v83;
  if ((*(v82 + 48))(v71, 1, v83))
  {
    sub_1C0EE9EC8(v92, type metadata accessor for AXSpeechTranscriber.AudioBuffer);

    sub_1C0EEFAA8(v71, &qword_1EBE77390, &qword_1C0F56208);
    v74 = 1;
    v75 = v84;
  }

  else
  {
    v76 = v80;
    (*(v72 + 16))(v80, v71, v73);
    sub_1C0EEFAA8(v71, &qword_1EBE77390, &qword_1C0F56208);
    v77 = v92;
    sub_1C0EE9DA0(v92, v79, type metadata accessor for AXSpeechTranscriber.AudioBuffer);
    v75 = v84;
    sub_1C0F50360();

    (*(v72 + 8))(v76, v73);
    sub_1C0EE9EC8(v77, type metadata accessor for AXSpeechTranscriber.AudioBuffer);
    v74 = 0;
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776B8, &qword_1C0F56E00);
  (*(*(v78 - 8) + 56))(v75, v74, 1, v78);
  return sub_1C0EEFAA8(v75, &qword_1EBE776B0, &qword_1C0F56DD0);
}

void sub_1C0EE49CC(float a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  if (v3 != v4)
  {
    v7 = __OFADD__(v3, 1);
    v8 = v3 + 1;
    if (v7)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    *(v1 + 16) = v8;
    v6 = *v1;
    v5 = *(v1 + 8);
LABEL_7:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = sub_1C0EF9584(v6);
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v5 < *(v6 + 2))
        {
          *&v6[4 * v5 + 32] = a1;
          *v1 = v6;
          *(v1 + 24) = *(v1 + 24) + a1;
          if (v4)
          {
            *(v1 + 8) = (v5 + 1) % v4;
            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v1 + 8);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *v1;
  if (v5 < *(*v1 + 16))
  {
    *(v1 + 24) = *(v1 + 24) - *&v6[4 * v5 + 32];
    goto LABEL_7;
  }

LABEL_18:
  __break(1u);
}

uint64_t AXSpeechTranscriber.AudioBuffer.init(buffer:startTime:endTime:sessionStartTimeDelta:sessionEndTimeDelta:rms:smoothedRms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>, float a7@<S2>, float a8@<S3>)
{
  *a4 = a1;
  v14 = a4 + *(type metadata accessor for AXSpeechTranscriber.AudioBuffer(0) + 20);
  v15 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v16 = v15[5];
  v17 = sub_1C0F4F830();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(&v14[v16], a2, v17);
  v19(&v14[v15[6]], a3, v17);
  sub_1C0F4F850();
  v20 = *(v18 + 8);
  v20(a3, v17);
  result = (v20)(a2, v17);
  *&v14[v15[7]] = a5;
  *&v14[v15[8]] = a6;
  *&v14[v15[9]] = a7;
  *&v14[v15[10]] = a8;
  return result;
}

uint64_t sub_1C0EE4C3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1C0EE4C80(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t sub_1C0EE4D04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77390, &qword_1C0F56208);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774D0, &qword_1C0F56998);
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_1C0ECE514(v5);
}

uint64_t AXSpeechTranscriber.deinit()
{
  v1 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber_logger;
  v2 = sub_1C0F4FD30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation, &qword_1EBE772B0, &qword_1C0F561E0);
  v3 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask);

  v4 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask);

  v5 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer);

  v6 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__longFormSpeechTranscriber);

  v7 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector);

  v8 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__shortFormDictationTranscriber);

  v9 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript;
  v10 = sub_1C0F4F630();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript, v10);
  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream, &qword_1EBE77310, &qword_1C0F561E8);
  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation, &qword_1EBE77320, &qword_1C0F561F0);
  v12 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask);

  v13 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask);

  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL, &qword_1EBE77340, &qword_1C0F561F8);

  v14 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferMetadataHistory);

  v15 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother);

  v16 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory);

  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__lastRecognizedSpeechEventTime, &qword_1EBE77370, &qword_1C0F56200);

  v17 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter);

  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioEngineBufferContinuation, &qword_1EBE77390, &qword_1C0F56208);
  v18 = *(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes);

  v19 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
  v20 = sub_1C0F4F9A0();
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  return v0;
}

uint64_t AXSpeechTranscriber.__deallocating_deinit()
{
  AXSpeechTranscriber.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1C0EE515C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (*(a3 + 16))
  {
    a4 = 0;
    v7 = 1;
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  *a2 = v7;
  swift_beginAccess();
  *(a3 + 16) = 1;
  return a4;
}

id sub_1C0EE51E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

uint64_t sub_1C0EE5254()
{

  return swift_deallocClassInstance();
}

uint64_t AXSpeechTranscriber.__allocating_init(logger:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773A8, &unk_1C0F56210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_1C0F4FD30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0EED570(a1, v6, &qword_1EBE773A8, &unk_1C0F56210);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    sub_1C0F4FD20();
    if (v12(v6, 1, v7) != 1)
    {
      sub_1C0EEFAA8(v6, &qword_1EBE773A8, &unk_1C0F56210);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  v13 = *(v1 + 48);
  v14 = *(v1 + 52);
  swift_allocObject();
  v15 = sub_1C0ECD6E4(v11);
  sub_1C0EEFAA8(a1, &qword_1EBE773A8, &unk_1C0F56210);
  return v15;
}

uint64_t _s26AccessibilitySharedSupport19AXSpeechTranscriberC18startTranscription13configurationScSyAC5EventOGAC18InputConfigurationV_tAC06SpeechE5ErrorOYKF@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v4 = v3;
  v36 = a1;
  v34 = a3;
  v5 = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = v7;
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B8, &qword_1C0F56220);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v35 = *(v20 - 8);
  v21 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - v22;
  swift_getKeyPath();
  v43 = v3;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  if (*(v3 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState))
  {
    *v41 = 0;
    v42 = 0;
    sub_1C0EE7894();
    return swift_willThrowTypedImpl();
  }

  else
  {
    type metadata accessor for AXSpeechTranscriber.Event(0);
    (*(v16 + 104))(v19, *MEMORY[0x1E69E8650], v15);
    sub_1C0F50330();
    (*(v16 + 8))(v19, v15);
    swift_allocObject();
    swift_weakInit();
    sub_1C0F50350();
    v25 = v35;
    (*(v35 + 16))(v14, v23, v20);
    (*(v25 + 56))(v14, 0, 1, v20);
    sub_1C0ECE884(v14);
    v26 = sub_1C0F50320();
    v27 = v38;
    (*(*(v26 - 8) + 56))(v38, 1, 1, v26);
    v28 = v40;
    sub_1C0EE9DA0(v36, v40, type metadata accessor for AXSpeechTranscriber.InputConfiguration);
    sub_1C0F502F0();

    v29 = sub_1C0F502E0();
    v30 = (*(v37 + 80) + 40) & ~*(v37 + 80);
    v31 = swift_allocObject();
    v32 = MEMORY[0x1E69E85E0];
    v31[2] = v29;
    v31[3] = v32;
    v31[4] = v4;
    sub_1C0EE9E60(v28, v31 + v30, type metadata accessor for AXSpeechTranscriber.InputConfiguration);
    v33 = sub_1C0ED943C(0, 0, v27, &unk_1C0F56260, v31);
    sub_1C0ECEFD8(v33, &OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask);
    return (*(v25 + 8))(v23, v20);
  }
}

uint64_t sub_1C0EE59DC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777F8, &qword_1C0F56F60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  (*(v8 + 104))(&v16 - v10, *MEMORY[0x1E69E8618], v7);
  type metadata accessor for AXSpeechTranscriber.Event(0);
  v12 = sub_1C0F50340();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = sub_1C0F50320();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;

    sub_1C0ED973C(0, 0, v6, &unk_1C0F56F70, v15);
  }

  return result;
}

uint64_t sub_1C0EE5BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C0EE5C68, 0, 0);
}

uint64_t sub_1C0EE5C68()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  v3 = *(v0 + 64);
  if (Strong)
  {
    v4 = *(v0 + 56);
    swift_storeEnumTagMultiPayload();
    sub_1C0F502F0();
    *(v0 + 80) = sub_1C0F502E0();
    v6 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0EE5D78, v6, v5);
  }

  else
  {
    **(v0 + 40) = 1;

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1C0EE5D78()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  sub_1C0ED696C(v3);

  sub_1C0EE9EC8(v3, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);

  return MEMORY[0x1EEE6DFA0](sub_1C0EE5E10, 0, 0);
}

uint64_t sub_1C0EE5E10()
{
  v1 = *(v0 + 64);
  **(v0 + 40) = *(v0 + 72) == 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0EE5E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1C0F502F0();
  v5[3] = sub_1C0F502E0();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1C0EE5F3C;

  return sub_1C0ED0E20(a5);
}

uint64_t sub_1C0EE5F3C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EE6078, v5, v4);
}

uint64_t sub_1C0EE6078()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s26AccessibilitySharedSupport19AXSpeechTranscriberC19cancelTranscriptionyyAC06SpeechE5ErrorOYKF(_BYTE *a1)
{
  v3 = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v9 = v1;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_1C0ED696C(v6);
    return sub_1C0EE9EC8(v6, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  }

  else
  {
    *a1 = 1;
    v8[15] = 1;
    sub_1C0EE7894();
    return swift_willThrowTypedImpl();
  }
}

uint64_t _s26AccessibilitySharedSupport19AXSpeechTranscriberC19finishTranscriptionyyAC06SpeechE5ErrorOYKF(_BYTE *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13[-v6];
  swift_getKeyPath();
  v14 = v1;
  sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
  sub_1C0F4F960();

  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) == 2)
  {
    v8 = sub_1C0F50320();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1C0F502F0();

    v9 = sub_1C0F502E0();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v3;
    sub_1C0ED943C(0, 0, v7, &unk_1C0F56270, v10);
  }

  else
  {
    *a1 = 1;
    v13[7] = 1;
    sub_1C0EE7894();
    return swift_willThrowTypedImpl();
  }
}

uint64_t sub_1C0EE6434()
{
  *(v0 + 16) = sub_1C0F502F0();
  *(v0 + 24) = sub_1C0F502E0();
  *(v0 + 40) = 1;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1C0EE64F0;

  return sub_1C0ED7AE0((v0 + 40));
}

uint64_t sub_1C0EE64F0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EEFE8C, v5, v4);
}

Swift::Void __swiftcall AXSpeechTranscriber.dumpStateToLogger()()
{
  v1 = v0;
  v2 = sub_1C0F4F750();
  v117 = *(v2 - 8);
  v3 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v102 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v116 = v102 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77310, &qword_1C0F561E8);
  v13 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v114 = v102 - v14;
  v113 = sub_1C0F4F630();
  v112 = *(v113 - 8);
  v15 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v17 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v102 - v20;
  swift_retain_n();
  v22 = sub_1C0F4FD00();
  v23 = sub_1C0F50480();
  if (os_log_type_enabled(v22, v23))
  {
    v108 = v23;
    v109 = v22;
    v102[0] = v5;
    v24 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v124 = v107;
    *v24 = 136319490;
    swift_getKeyPath();
    v111 = v2;
    v110 = v9;
    v25 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber___observationRegistrar;
    v123 = v1;
    v26 = sub_1C0EE9CFC(&qword_1EBE773C8, type metadata accessor for AXSpeechTranscriber);
    v105 = v10;
    v27 = v26;
    v28 = v25;
    sub_1C0F4F960();

    v29 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__clientEventStreamContinuation;
    swift_beginAccess();
    sub_1C0EED570(&v1[v29], v21, &qword_1EBE772B0, &qword_1C0F561E0);
    v30 = sub_1C0F501D0();
    v32 = sub_1C0EE9754(v30, v31, &v124);

    *(v24 + 4) = v32;
    *(v24 + 12) = 2080;
    swift_getKeyPath();
    v122 = v1;
    sub_1C0F4F960();

    v122 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionSessionTask];

    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773E0, &qword_1C0F562C8);
    v33 = sub_1C0F501D0();
    v35 = sub_1C0EE9754(v33, v34, &v124);

    *(v24 + 14) = v35;
    *(v24 + 22) = 2080;
    swift_getKeyPath();
    v122 = v1;
    sub_1C0F4F960();

    LOBYTE(v122) = v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState];
    v36 = sub_1C0F501D0();
    v38 = sub_1C0EE9754(v36, v37, &v124);

    *(v24 + 24) = v38;
    *(v24 + 32) = 2080;
    swift_getKeyPath();
    v122 = v1;
    sub_1C0F4F960();

    v122 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress];
    v39 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773E8, &qword_1C0F562F8);
    v40 = sub_1C0F501D0();
    v42 = sub_1C0EE9754(v40, v41, &v124);

    *(v24 + 34) = v42;
    *(v24 + 42) = 2080;
    swift_getKeyPath();
    v122 = v1;
    sub_1C0F4F960();

    v122 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat];
    v43 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773F0, &qword_1C0F56328);
    v44 = sub_1C0F501D0();
    v46 = sub_1C0EE9754(v44, v45, &v124);

    *(v24 + 44) = v46;
    *(v24 + 52) = 2080;
    swift_getKeyPath();
    v122 = v1;
    sub_1C0F4F960();

    v122 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzer];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773F8, &qword_1C0F56358);
    v47 = sub_1C0F501D0();
    v49 = sub_1C0EE9754(v47, v48, &v124);

    *(v24 + 54) = v49;
    *(v24 + 62) = 2080;
    swift_getKeyPath();
    v122 = v1;
    sub_1C0F4F960();

    v122 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__longFormSpeechTranscriber];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77400, &qword_1C0F56388);
    v50 = sub_1C0F501D0();
    v52 = sub_1C0EE9754(v50, v51, &v124);

    *(v24 + 64) = v52;
    *(v24 + 72) = 2080;
    swift_getKeyPath();
    v122 = v1;
    sub_1C0F4F960();

    v122 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__speechDetector];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77408, &qword_1C0F563B8);
    v53 = sub_1C0F501D0();
    v55 = sub_1C0EE9754(v53, v54, &v124);

    *(v24 + 74) = v55;
    *(v24 + 82) = 2080;
    swift_getKeyPath();
    v122 = v1;
    v104 = v27;
    sub_1C0F4F960();

    v122 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__shortFormDictationTranscriber];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77410, &qword_1C0F563E8);
    v56 = sub_1C0F501D0();
    v58 = sub_1C0EE9754(v56, v57, &v124);

    *(v24 + 84) = v58;
    *(v24 + 92) = 2080;
    swift_getKeyPath();
    v122 = v1;
    v102[1] = v28;
    sub_1C0F4F960();

    v59 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__volatileTranscript;
    swift_beginAccess();
    v60 = v112;
    v103 = *(v112 + 16);
    v61 = v17;
    v62 = v113;
    v103(v17, &v1[v59], v113);
    v102[2] = sub_1C0EE9CFC(&qword_1EBE77418, MEMORY[0x1E6968848]);
    v63 = sub_1C0F50780();
    v65 = v64;
    v66 = *(v60 + 8);
    v66(v61, v62);
    v67 = sub_1C0EE9754(v63, v65, &v124);

    *(v24 + 94) = v67;
    *(v24 + 102) = 2080;
    swift_getKeyPath();
    v121 = v1;
    sub_1C0F4F960();

    v68 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__finalizedTranscript;
    swift_beginAccess();
    v103(v61, &v1[v68], v62);
    v69 = sub_1C0F50780();
    v71 = v70;
    v66(v61, v62);
    v72 = sub_1C0EE9754(v69, v71, &v124);

    *(v24 + 104) = v72;
    *(v24 + 112) = 2080;
    swift_getKeyPath();
    v120 = v1;
    sub_1C0F4F960();

    v73 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputStream;
    swift_beginAccess();
    sub_1C0EED570(&v1[v73], v114, &qword_1EBE77310, &qword_1C0F561E8);
    v74 = sub_1C0F501D0();
    v76 = sub_1C0EE9754(v74, v75, &v124);

    *(v24 + 114) = v76;
    *(v24 + 122) = 2080;
    swift_getKeyPath();
    v119 = v1;
    sub_1C0F4F960();

    v77 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerInputContinuation;
    swift_beginAccess();
    sub_1C0EED570(&v1[v77], v116, &qword_1EBE77320, &qword_1C0F561F0);
    v78 = sub_1C0F501D0();
    v80 = sub_1C0EE9754(v78, v79, &v124);

    *(v24 + 124) = v80;
    *(v24 + 132) = 32;
    *(v24 + 133) = 8;
    swift_getKeyPath();
    v118 = v1;
    sub_1C0F4F960();

    v118 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__recognizerTask];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77420, &qword_1C0F564B8);
    v81 = sub_1C0F501D0();
    v83 = sub_1C0EE9754(v81, v82, &v124);

    *(v24 + 134) = v83;
    *(v24 + 142) = 32;
    *(v24 + 143) = 8;
    swift_getKeyPath();
    v118 = v1;
    sub_1C0F4F960();
    v84 = v111;

    v118 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__detectionTask];

    v85 = sub_1C0F501D0();
    v87 = sub_1C0EE9754(v85, v86, &v124);

    *(v24 + 144) = v87;
    *(v24 + 152) = 32;
    *(v24 + 153) = 8;
    swift_getKeyPath();
    v118 = v1;
    sub_1C0F4F960();

    v118 = *&v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionAutoEndpointTimeoutTask];

    v88 = sub_1C0F501D0();
    v90 = sub_1C0EE9754(v88, v89, &v124);

    *(v24 + 154) = v90;
    *(v24 + 162) = 0;
    *(v24 + 163) = 4;
    swift_getKeyPath();
    v118 = v1;
    sub_1C0F4F960();

    LODWORD(v77) = v1[OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__enableAutomaticEndpointing];

    *(v24 + 164) = v77;

    *(v24 + 168) = 32;
    *(v24 + 169) = 8;
    v91 = v117;
    swift_getKeyPath();
    v118 = v1;
    v92 = v110;
    sub_1C0F4F960();

    v93 = OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFileURL;
    swift_beginAccess();
    sub_1C0EED570(&v1[v93], v92, &qword_1EBE77340, &qword_1C0F561F8);
    if ((*(v91 + 48))(v92, 1, v84))
    {
      sub_1C0EEFAA8(v92, &qword_1EBE77340, &qword_1C0F561F8);
      v94 = 0xE500000000000000;
      v95 = 0x3E6C696E3CLL;
    }

    else
    {
      v96 = v102[0];
      (*(v91 + 16))(v102[0], v92, v84);
      sub_1C0EEFAA8(v92, &qword_1EBE77340, &qword_1C0F561F8);
      v97 = sub_1C0F4F730();
      v94 = v98;
      (*(v91 + 8))(v96, v84);
      v95 = v97;
    }

    v99 = sub_1C0EE9754(v95, v94, &v124);

    *(v24 + 170) = v99;
    v100 = v109;
    _os_log_impl(&dword_1C0E8A000, v109, v108, "clientEventStreamContinuation: %s\ntranscriptionSessionTask: %s\ntranscriptionState: %s\nassetDownloadProgress: %s\nanalyzerFormat: %s\nanalyzer: %s\nlongFormSpeechTranscriber: %s\nspeechDetector: %s\nshortFormDictationTranscriber: %s\nvolatileTranscript: %s\nfinalizedTranscript: %s\nanalyzerInputStream: %s\nanalyzerInputContinuation: %s\nrecognizerTask: %s\ndetectionTask: %s\ntranscriptionAutoEndpointTimeoutTask: %s\nenableAutomaticEndpointing: %{BOOL}d\naudioFileURL: %s", v24, 0xB2u);
    v101 = v107;
    swift_arrayDestroy();
    MEMORY[0x1C68EB070](v101, -1, -1);
    MEMORY[0x1C68EB070](v24, -1, -1);
  }

  else
  {
  }
}

uint64_t AXSpeechTranscriber.AudioBuffer.Metadata.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0) + 20);
  v4 = sub_1C0F4F830();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AXSpeechTranscriber.AudioBuffer.Metadata.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0) + 24);
  v4 = sub_1C0F4F830();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AXSpeechTranscriber.AudioBuffer.Metadata.init(startTime:endTime:sessionStartTimeDelta:sessionEndTimeDelta:rms:smoothedRms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, float a6@<S2>, float a7@<S3>)
{
  sub_1C0F4F850();
  v14 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v15 = v14[5];
  v16 = sub_1C0F4F830();
  v17 = *(*(v16 - 8) + 32);
  v17(a3 + v15, a1, v16);
  result = (v17)(a3 + v14[6], a2, v16);
  *(a3 + v14[7]) = a4;
  *(a3 + v14[8]) = a5;
  *(a3 + v14[9]) = a6;
  *(a3 + v14[10]) = a7;
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

unint64_t sub_1C0EE7894()
{
  result = qword_1EBE773D8;
  if (!qword_1EBE773D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE773D8);
  }

  return result;
}

uint64_t sub_1C0EE7910(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C0EEFCF4;

  return sub_1C0EE5E80(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1C0EE7A28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C0EEFCF4;

  return sub_1C0EE6434();
}

uint64_t sub_1C0EE7ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C0F4F860();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

AccessibilitySharedSupport::AXSpeechTranscriber::TranscriberStyle_optional __swiftcall AXSpeechTranscriber.TranscriberStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C0F50660();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t AXSpeechTranscriber.TranscriberStyle.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1C0EE7C38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = "OSubstitution";
  }

  else
  {
    v5 = "speechTranscriber";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (*a2)
  {
    v8 = "speechTranscriber";
  }

  else
  {
    v8 = "OSubstitution";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C0F50790();
  }

  return v10 & 1;
}

uint64_t sub_1C0EE7CE4()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EE7D64()
{
  *v0;
  sub_1C0F50200();
}

uint64_t sub_1C0EE7DD0()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EE7E4C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C0F50660();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1C0EE7EAC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "speechTranscriber";
  }

  else
  {
    v3 = "OSubstitution";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_1C0EE7F04@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t AXSpeechTranscriber.InputConfiguration.locale.setter(uint64_t a1)
{
  v3 = sub_1C0F4F940();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AXSpeechTranscriber.InputConfiguration.transcriberStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.transcriberStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.downloadTranscriptionModelIfNeeded.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.enableAutomaticEndpointing.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.generateFourierTransforms.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.generateAudioFile.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AXSpeechTranscriber.InputConfiguration.emitsAudioBufferMetadataUpdates.setter(char a1)
{
  result = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

id AXSpeechTranscriber.InputConfiguration.audioSession.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 44));

  return v1;
}

void AXSpeechTranscriber.InputConfiguration.audioSession.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AXSpeechTranscriber.InputConfiguration(0) + 44);

  *(v1 + v3) = a1;
}

id AXSpeechTranscriber.InputConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C0F4F900();
  v2 = type metadata accessor for AXSpeechTranscriber.InputConfiguration(0);
  *(a1 + v2[5]) = 0;
  *(a1 + v2[6]) = 1;
  *(a1 + v2[7]) = 1;
  *(a1 + v2[8]) = 1;
  *(a1 + v2[9]) = 1;
  *(a1 + v2[10]) = 1;
  v3 = v2[11];
  result = [objc_opt_self() sharedInstance];
  *(a1 + v3) = result;
  return result;
}

uint64_t AXSpeechTranscriber.TranscriptionState.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t _s26AccessibilitySharedSupport19AXSpeechTranscriberC06SpeechE5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t sub_1C0EE85B8()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AXSpeechTranscriber.Event.FinishEvent.description.getter()
{
  v1 = type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = sub_1C0F4F630();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0EE9DA0(v0, v22, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1C0EE9E60(v22, v7, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
      v40 = 0x273D726F727245;
      v41 = 0xE700000000000000;
      sub_1C0EE9DA0(v7, v5, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
      v32 = sub_1C0F501D0();
      MEMORY[0x1C68E9A50](v32);

      MEMORY[0x1C68E9A50](39, 0xE100000000000000);
      v33 = v40;
      sub_1C0EE9EC8(v7, type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError);
    }

    else
    {
      return 0x656C6C65636E6143;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v34 = *v22;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1C0F505A0();
    MEMORY[0x1C68E9A50](0xD000000000000018, 0x80000001C0F65F60);
    v39 = v34;
    sub_1C0F50610();
    return v40;
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77430, &qword_1C0F56560);
    v25 = v22[*(v24 + 48)];
    v26 = *(v24 + 64);
    (*(v16 + 32))(v38, v22, v15);
    sub_1C0EE9F28(&v22[v26], v14);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1C0F505A0();
    MEMORY[0x1C68E9A50](0x657A696C616E6946, 0xEF273D7478655464);
    sub_1C0EE9CFC(&qword_1EBE77418, MEMORY[0x1E6968848]);
    v27 = sub_1C0F50780();
    MEMORY[0x1C68E9A50](v27);

    MEMORY[0x1C68E9A50](0x6E6F736165722027, 0xE90000000000003DLL);
    v39 = v25;
    sub_1C0F50610();
    MEMORY[0x1C68E9A50](0x3D6C727520, 0xE500000000000000);
    sub_1C0EED570(v14, v12, &qword_1EBE77340, &qword_1C0F561F8);
    v28 = sub_1C0F4F750();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v12, 1, v28) == 1)
    {
      sub_1C0EEFAA8(v12, &qword_1EBE77340, &qword_1C0F561F8);
      v30 = 0xE500000000000000;
      v31 = 0x3E6C696E3CLL;
    }

    else
    {
      v35 = sub_1C0F4F730();
      v30 = v36;
      (*(v29 + 8))(v12, v28);
      v31 = v35;
    }

    MEMORY[0x1C68E9A50](v31, v30);

    v33 = v40;
    sub_1C0EEFAA8(v14, &qword_1EBE77340, &qword_1C0F561F8);
    (*(v16 + 8))(v38, v15);
  }

  return v33;
}

uint64_t AXSpeechTranscriber.Event.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C0F4F630();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29[-v12];
  v14 = type metadata accessor for AXSpeechTranscriber.Event(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C0EE9DA0(v1, v17, type metadata accessor for AXSpeechTranscriber.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77438, &qword_1C0F56568) + 48);
      v24 = v7[4];
      v24(v13, v17, v6);
      v24(v11, &v17[v23], v6);
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      sub_1C0F505A0();

      v31[0] = 0xD00000000000001BLL;
      v31[1] = 0x80000001C0F65FB0;
      sub_1C0EE9CFC(&qword_1EBE77418, MEMORY[0x1E6968848]);
      v25 = sub_1C0F50780();
      MEMORY[0x1C68E9A50](v25);

      MEMORY[0x1C68E9A50](0x696C616E69662027, 0xEC0000003D64657ALL);
      v26 = sub_1C0F50780();
      MEMORY[0x1C68E9A50](v26);

      MEMORY[0x1C68E9A50](93, 0xE100000000000000);
      v19 = v31[0];
      v27 = v7[1];
      v27(v11, v6);
      v27(v13, v6);
    }

    else
    {
      v20 = *v17;
      v21 = v17[1];
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      sub_1C0F505A0();
      MEMORY[0x1C68E9A50](0xD00000000000001FLL, 0x80000001C0F65FD0);
      v30 = v20;
      sub_1C0F50610();
      MEMORY[0x1C68E9A50](1030714400, 0xE400000000000000);
      v30 = v21;
      sub_1C0F50610();
      MEMORY[0x1C68E9A50](93, 0xE100000000000000);
      return v31[0];
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1C0EE9EC8(v17, type metadata accessor for AXSpeechTranscriber.Event);
    return 0x72656E6547646944;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1C0EE9EC8(v17, type metadata accessor for AXSpeechTranscriber.Event);
    return 0xD000000000000023;
  }

  else
  {
    sub_1C0EE9E60(v17, v5, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
    strcpy(v31, "DidFinish: [");
    BYTE5(v31[1]) = 0;
    HIWORD(v31[1]) = -5120;
    v22 = AXSpeechTranscriber.Event.FinishEvent.description.getter();
    MEMORY[0x1C68E9A50](v22);

    MEMORY[0x1C68E9A50](93, 0xE100000000000000);
    v19 = v31[0];
    sub_1C0EE9EC8(v5, type metadata accessor for AXSpeechTranscriber.Event.FinishEvent);
  }

  return v19;
}

id sub_1C0EE9114(uint64_t a1)
{
  v2 = v1;
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C0F4F700();
  v5 = sub_1C0F50150();

  v15[0] = 0;
  v6 = [v2 initForWriting:v4 settings:v5 error:v15];

  v7 = v15[0];
  if (v6)
  {
    v8 = sub_1C0F4F750();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v15[0];
    sub_1C0F4F6B0();

    swift_willThrow();
    v12 = sub_1C0F4F750();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1C0EE929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C0F505E0();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C0EE939C, 0, 0);
}

uint64_t sub_1C0EE939C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1C0F505F0();
  v7 = sub_1C0EE9CFC(&qword_1EBE776D8, MEMORY[0x1E69E8820]);
  sub_1C0F507D0();
  sub_1C0EE9CFC(&qword_1EBE776E0, MEMORY[0x1E69E87E8]);
  sub_1C0F50600();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1C0EE952C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1C0EE952C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C0EE96E8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1C0EE96E8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1C0EE9754(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C0EE9820(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C0EED190(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C0EE9820(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C0EE992C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C0F505D0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C0EE992C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C0EE9978(a1, a2);
  sub_1C0EE9AA8(&unk_1F4053978);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C0EE9978(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C0EE9B94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C0F505D0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C0F50250();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C0EE9B94(v10, 0);
        result = sub_1C0F50590();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C0EE9AA8(uint64_t result)
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

  result = sub_1C0EE9C08(result, v12, 1, v3);
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

void *sub_1C0EE9B94(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775F8, &qword_1C0F56BB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C0EE9C08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775F8, &qword_1C0F56BB8);
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

uint64_t sub_1C0EE9CFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_set_15Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  v13 = *a2;

  return a8(v14, a5, a6, a7);
}

uint64_t sub_1C0EE9DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0EE9E28(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0EE9E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0EE9EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0EE9F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C0EE9FE4()
{
  result = qword_1EBE77448;
  if (!qword_1EBE77448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77448);
  }

  return result;
}

unint64_t sub_1C0EEA03C()
{
  result = qword_1EBE77450;
  if (!qword_1EBE77450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77450);
  }

  return result;
}

unint64_t sub_1C0EEA094()
{
  result = qword_1EBE77458;
  if (!qword_1EBE77458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77458);
  }

  return result;
}

unint64_t sub_1C0EEA0EC()
{
  result = qword_1EBE77460;
  if (!qword_1EBE77460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77460);
  }

  return result;
}

void sub_1C0EEA148()
{
  v0 = sub_1C0F4FD30();
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    sub_1C0EEA5C4(319, &qword_1EBE77490, &qword_1EBE773C0, &qword_1C0F56228);
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      v4 = sub_1C0F4F630();
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_1C0EEA5C4(319, &qword_1EBE77498, &qword_1EBE774A0, &qword_1C0F56970);
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          sub_1C0EEA5C4(319, &qword_1EBE774A8, &qword_1EBE774B0, &qword_1C0F56978);
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            sub_1C0EEA560(319, &qword_1EBE774B8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              sub_1C0EEA560(319, &qword_1EBE774C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                sub_1C0EEA5C4(319, &qword_1EBE774C8, &qword_1EBE774D0, &qword_1C0F56998);
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  v16 = sub_1C0F4F9A0();
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
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

void sub_1C0EEA560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C0EEA5C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C0F50500();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C0EEA664()
{
  result = sub_1C0EED60C(319, &qword_1EBE774E8, 0x1E6958440);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0EEA720()
{
  result = sub_1C0F4F860();
  if (v1 <= 0x3F)
  {
    result = sub_1C0F4F830();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0EEA808()
{
  result = sub_1C0F4F940();
  if (v1 <= 0x3F)
  {
    result = sub_1C0EED60C(319, &qword_1EBE77510, 0x1E6958460);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXSpeechTranscriber.TranscriptionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXSpeechTranscriber.TranscriptionState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C0EEAA10()
{
  sub_1C0EEAAC0();
  if (v0 <= 0x3F)
  {
    sub_1C0EEAB20();
    if (v1 <= 0x3F)
    {
      sub_1C0EEAB88();
      if (v2 <= 0x3F)
      {
        sub_1C0EEAC20();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AXSpeechTranscriber.Event.FinishEvent(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C0EEAAC0()
{
  if (!qword_1EBE77528)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBE77528);
    }
  }
}

void sub_1C0EEAB20()
{
  if (!qword_1EBE77530)
  {
    sub_1C0F4F630();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBE77530);
    }
  }
}

void sub_1C0EEAB88()
{
  if (!qword_1EBE77538)
  {
    sub_1C0EEABD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE77538);
    }
  }
}

void sub_1C0EEABD0()
{
  if (!qword_1EBE77540)
  {
    v0 = sub_1C0F502A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE77540);
    }
  }
}

void sub_1C0EEAC20()
{
  if (!qword_1EBE77548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77550, &qword_1C0F56A50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBE77548);
    }
  }
}

void sub_1C0EEAC98()
{
  sub_1C0EEAD20();
  if (v0 <= 0x3F)
  {
    sub_1C0EEADA8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AXSpeechTranscriber.SpeechTranscriberSessionError(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1C0EEAD20()
{
  if (!qword_1EBE77568)
  {
    sub_1C0F4F630();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77340, &qword_1C0F561F8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBE77568);
    }
  }
}

ValueMetadata *sub_1C0EEADA8()
{
  result = qword_1EBE77570;
  if (!qword_1EBE77570)
  {
    result = &type metadata for AXSpeechTranscriber.Event.FinishEvent.FinishReason;
    atomic_store(&type metadata for AXSpeechTranscriber.Event.FinishEvent.FinishReason, &qword_1EBE77570);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionRequestState.HandledCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityActionRequestState.HandledCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C0EEAF88()
{
  sub_1C0EEB074();
  if (v0 <= 0x3F)
  {
    sub_1C0F4F940();
    if (v1 <= 0x3F)
    {
      sub_1C0EEA560(319, &qword_1EBE77590, MEMORY[0x1E6969770], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C0EEB0D8();
        if (v3 <= 0x3F)
        {
          sub_1C0EEB140();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C0EEB074()
{
  result = qword_1EBE77588;
  if (!qword_1EBE77588)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBE77588);
  }

  return result;
}

void sub_1C0EEB0D8()
{
  if (!qword_1EBE77598)
  {
    sub_1C0EED60C(255, &qword_1EBE775A0, 0x1E696ABC0);
    v0 = sub_1C0F50500();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE77598);
    }
  }
}

void sub_1C0EEB140()
{
  if (!qword_1EBE775A8)
  {
    sub_1C0F4F750();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE775B0, &qword_1C0F56AE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBE775A8);
    }
  }
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

uint64_t sub_1C0EEB1F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C0EEB23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

size_t sub_1C0EEB294(char a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*v2 + 16);
  v7 = *v6;
  v8 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v9 = v8;
  if (v7 >= a2)
  {
    v18 = *(v8 - 8);
    v19 = *(v18 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77658, &qword_1C0F56D50);
    v20 = *(v18 + 72);
    v15 = swift_allocObject();
    v21 = *(v5 + 24);
    *(v15 + 16) = v7;
    *(v15 + 24) = v21;
    if (v21 >= 1)
    {
      sub_1C0EEB5FC(v15 + 16, v15 + ((v19 + 40) & ~v19), v6, v5 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_1C0F4FCE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  if (a1)
  {
    v12 = *(v5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77658, &qword_1C0F56D50);
    v13 = *(v10 + 72);
    v14 = (v11 + 40) & ~v11;
    v15 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v15);
    if (v13)
    {
      if (result - v14 != 0x8000000000000000 || v13 != -1)
      {
        *(v15 + 16) = (result - v14) / v13;
        *(v15 + 24) = v12;
        *(v15 + 32) = 0;
        if (v12 >= 1)
        {
          sub_1C0EEB7D4(v15 + 16, v15 + v14, v6, v5 + v14);
          *(v5 + 24) = 0;
        }

LABEL_19:

        *v2 = v15;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77658, &qword_1C0F56D50);
  v22 = *(v10 + 72);
  v23 = (v11 + 40) & ~v11;
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v5 + 24);
    *(v15 + 16) = (result - v23) / v22;
    *(v15 + 24) = v25;
    *(v15 + 32) = 0;
    if (v25 >= 1)
    {
      sub_1C0EEB968(v15 + 16, v15 + v23, v6, v5 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C0EEB504()
{
  v1 = *v0;
  v2 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77658, &qword_1C0F56D50);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_1C0EEB5FC(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

void sub_1C0EEB5FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0) - 8);
  if (v5 >= v7)
  {
    v10 = 0;
    v9 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      v11 = *(v8 + 72) * v4;
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void *sub_1C0EEB714@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1C0EEB7D4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = a3[1];
  v9 = *(type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 72);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = a4 + v14 * v4;
  if (v16 <= a2 && v16 + v14 * v11 > a2)
  {
    if (v16 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v5 < v8 && v10 >= 1)
  {
    if (v15)
    {
      v19 = a2 + v14 * v11;
      if (v19 < v15 || v19 >= v15 + v14 * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_1C0EEB968(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  v12 = *(v8 + 72);
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1C0EEBA8C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C0EEBB38(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_1C0EEB714(a1, a2, &v18);
  v7 = v19;
  if (v19 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18)
  {
    v8 = v19 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *a3;
    type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    result = swift_arrayInitWithCopy();
  }

  v10 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_22;
  }

  *a4 = v10;
  if (v22)
  {
    return result;
  }

  v11 = v21;
  if (__OFADD__(v7, v21))
  {
    goto LABEL_23;
  }

  v12 = v21;
  if (v7 + v21 < v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v20;
  v14 = *a3;
  if (v14)
  {
    v15 = type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    v16 = *(v15 - 8);
    result = v15 - 8;
    v17 = v14 + *(v16 + 72) * v7;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else if (!v20)
  {
    goto LABEL_18;
  }

  if (v11)
  {
    if (v12 < v11)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    type metadata accessor for AXSpeechTranscriber.AudioBuffer.Metadata(0);
    result = swift_arrayInitWithCopy();
    v10 = *a4;
  }

LABEL_18:
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *a4 = v10 + v11;
  return result;
}

uint64_t sub_1C0EEBC7C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C0EEBD70;

  return v6(v2 + 32);
}

uint64_t sub_1C0EEBD70()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1C0EEBE84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C0EEFCF4;

  return sub_1C0EEBC7C(a1, v5);
}

uint64_t sub_1C0EEBF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0F4F830();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77628, &qword_1C0F56CA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1C0EED570(a1, &v24 - v16, &qword_1EBE77370, &qword_1C0F56200);
  sub_1C0EED570(a2, &v17[v18], &qword_1EBE77370, &qword_1C0F56200);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1C0EED570(v17, v12, &qword_1EBE77370, &qword_1C0F56200);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1C0EE9CFC(&qword_1EBE77630, MEMORY[0x1E6969530]);
      v21 = sub_1C0F50190();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1C0EEFAA8(v17, &qword_1EBE77370, &qword_1C0F56200);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v17, &qword_1EBE77628, &qword_1C0F56CA0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1C0EEFAA8(v17, &qword_1EBE77370, &qword_1C0F56200);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C0EEC25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774D0, &qword_1C0F56998);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77390, &qword_1C0F56208);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77680, &qword_1C0F56DC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1C0EED570(a1, &v24 - v16, &qword_1EBE77390, &qword_1C0F56208);
  sub_1C0EED570(a2, &v17[v18], &qword_1EBE77390, &qword_1C0F56208);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1C0EED570(v17, v12, &qword_1EBE77390, &qword_1C0F56208);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1C0EEFB08(&qword_1EBE77688, &qword_1EBE774D0, &qword_1C0F56998);
      v21 = sub_1C0F50190();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1C0EEFAA8(v17, &qword_1EBE77390, &qword_1C0F56208);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v17, &qword_1EBE77680, &qword_1C0F56DC0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1C0EEFAA8(v17, &qword_1EBE77390, &qword_1C0F56208);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C0EEC580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773C0, &qword_1C0F56228);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v22 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE772B0, &qword_1C0F561E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v22 - v10;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777E8, &qword_1C0F56F58) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v22 - v14;
  v16 = *(v13 + 56);
  sub_1C0EED570(a1, &v22 - v14, &qword_1EBE772B0, &qword_1C0F561E0);
  sub_1C0EED570(a2, &v15[v16], &qword_1EBE772B0, &qword_1C0F561E0);
  v17 = *(v5 + 48);
  if (v17(v15, 1, v4) != 1)
  {
    sub_1C0EED570(v15, v11, &qword_1EBE772B0, &qword_1C0F561E0);
    if (v17(&v15[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v15[v16], v4);
      sub_1C0EEFB08(&qword_1EBE777F0, &qword_1EBE773C0, &qword_1C0F56228);
      v19 = sub_1C0F50190();
      v20 = *(v5 + 8);
      v20(v8, v4);
      v20(v11, v4);
      sub_1C0EEFAA8(v15, &qword_1EBE772B0, &qword_1C0F561E0);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v15[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v15, &qword_1EBE777E8, &qword_1C0F56F58);
    v18 = 1;
    return v18 & 1;
  }

  sub_1C0EEFAA8(v15, &qword_1EBE772B0, &qword_1C0F561E0);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C0EEC8A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE774B0, &qword_1C0F56978);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77320, &qword_1C0F561F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775D0, &qword_1C0F56BB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1C0EED570(a1, &v24 - v16, &qword_1EBE77320, &qword_1C0F561F0);
  sub_1C0EED570(a2, &v17[v18], &qword_1EBE77320, &qword_1C0F561F0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1C0EED570(v17, v12, &qword_1EBE77320, &qword_1C0F561F0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1C0EEFB08(&qword_1EBE775D8, &qword_1EBE774B0, &qword_1C0F56978);
      v21 = sub_1C0F50190();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1C0EEFAA8(v17, &qword_1EBE77320, &qword_1C0F561F0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v17, &qword_1EBE775D0, &qword_1C0F56BB0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1C0EEFAA8(v17, &qword_1EBE77320, &qword_1C0F561F0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C0EECBC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0F4F750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77340, &qword_1C0F561F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775C0, &qword_1C0F56BA8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1C0EED570(a1, &v24 - v16, &qword_1EBE77340, &qword_1C0F561F8);
  sub_1C0EED570(a2, &v17[v18], &qword_1EBE77340, &qword_1C0F561F8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1C0EED570(v17, v12, &qword_1EBE77340, &qword_1C0F561F8);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1C0EE9CFC(&qword_1EBE775C8, MEMORY[0x1E6968FB0]);
      v21 = sub_1C0F50190();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1C0EEFAA8(v17, &qword_1EBE77340, &qword_1C0F561F8);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0EEFAA8(v17, &qword_1EBE775C0, &qword_1C0F56BA8);
    v20 = 1;
    return v20 & 1;
  }

  sub_1C0EEFAA8(v17, &qword_1EBE77340, &qword_1C0F561F8);
  v20 = 0;
  return v20 & 1;
}

void sub_1C0EED0C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__analyzerFormat) = v2;
  v4 = v2;
}

void sub_1C0EED104()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__assetDownloadProgress) = v2;
  v4 = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C0EED190(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C0EED1F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__transcriptionState) = *(v0 + 24);
  v4 = v2;
  return sub_1C0ECEA80(&v4);
}

void sub_1C0EED2AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioFile) = v2;
  v4 = v2;
}

uint64_t sub_1C0EED320()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__fftMagnitudes) = *(v0 + 24);

  return sub_1C0EE3084();
}

uint64_t sub_1C0EED374(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C0EEFCF4;

  return sub_1C0EF70FC(a1, v5);
}

uint64_t keypath_set_210Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1C0EED460()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__soundFloorRMSHistory) = *(v0 + 24);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0EED4C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter);
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__converter) = *(v0 + 24);
}

unint64_t sub_1C0EED51C()
{
  result = qword_1EBE77670;
  if (!qword_1EBE77670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77670);
  }

  return result;
}

uint64_t sub_1C0EED570(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C0EED60C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C0EED654()
{
  v1 = *(sub_1C0F4F830() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 32) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_1C0EE3F58(v7, v8, v0 + v4, v0 + v5, v6);
}

uint64_t sub_1C0EED6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77370, &qword_1C0F56200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0EED764(uint64_t a1)
{
  v2 = sub_1C0F4FDC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77760, &qword_1C0F56ED8);
    v10 = sub_1C0F50580();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1C0EE9CFC(&qword_1EBE77768, MEMORY[0x1E697B8A0]);
      v18 = sub_1C0F50170();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1C0EE9CFC(&qword_1EBE77770, MEMORY[0x1E697B8A0]);
          v25 = sub_1C0F50190();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C0EEDA84(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = sub_1C0F4F940();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1C0F4F8A0();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_1C0F502F0();
  v2[12] = sub_1C0F502E0();
  v9 = sub_1C0F4FE10();
  v10 = sub_1C0EE9CFC(&qword_1EBE77758, MEMORY[0x1E697B8E0]);
  v11 = *(MEMORY[0x1E697B888] + 4);
  v12 = swift_task_alloc();
  v2[13] = v12;
  *v12 = v2;
  v12[1] = sub_1C0EEDC44;

  return MEMORY[0x1EEDD8DE8](v9, v10);
}

uint64_t sub_1C0EEDC44(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 112) = a1;

  v6 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EEDD88, v6, v5);
}

uint64_t sub_1C0EEDD88()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = *(v1 + 16);
  v4 = v0[14];
  v5 = v0[9];
  if (v3)
  {
    v6 = v0[6];
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C0EF8E6C(0, v3, 0);
    v7 = v43;
    v8 = *(v6 + 16);
    v6 += 16;
    v40 = v8;
    v9 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v38 = *(v6 + 56);
    v42 = *MEMORY[0x1E6969640];
    v41 = v0;
    v35 = (v6 - 8);
    v36 = (v5 + 8);
    v37 = (v5 + 104);
    do
    {
      v10 = v0[10];
      v11 = v0[7];
      v12 = v0[8];
      v13 = v0[5];
      v40(v11, v9, v13);
      v39 = *v37;
      (*v37)(v10, v42, v12);
      v14 = sub_1C0F4F870();
      v16 = v15;
      (*v36)(v10, v12);
      (*v35)(v11, v13);
      v18 = *(v43 + 16);
      v17 = *(v43 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C0EF8E6C((v17 > 1), v18 + 1, 1);
      }

      *(v43 + 16) = v18 + 1;
      v19 = v43 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += v38;
      --v3;
      v0 = v41;
    }

    while (v3);
    v20 = v41[14];

    v21 = v42;
    v22 = v39;
  }

  else
  {
    v23 = v0[14];

    v21 = *MEMORY[0x1E6969640];
    v22 = *(v5 + 104);
    v7 = MEMORY[0x1E69E7CC0];
  }

  v24 = v0[9];
  v25 = v0[10];
  v26 = v0[8];
  v27 = v0[4];
  v22(v25, v21, v26);
  v28 = sub_1C0F4F870();
  v30 = v29;
  (*(v24 + 8))(v25, v26);
  v0[2] = v28;
  v0[3] = v30;
  v31 = swift_task_alloc();
  *(v31 + 16) = v0 + 2;
  v32 = sub_1C0EEBA8C(sub_1C0EEFE1C, v31, v7);

  v33 = v0[1];

  return v33(v32 & 1);
}

uint64_t sub_1C0EEE06C(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1C0F4F8A0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = sub_1C0F502F0();
  v1[9] = sub_1C0F502E0();
  sub_1C0F4FE10();
  v5 = *(MEMORY[0x1E697B8B8] + 4);
  v6 = swift_task_alloc();
  v1[10] = v6;
  *v6 = v1;
  v6[1] = sub_1C0EEE180;

  return MEMORY[0x1EEDD8DF8]();
}

uint64_t sub_1C0EEE180(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 88) = a1;

  v6 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EEE2C4, v6, v5);
}

uint64_t sub_1C0EEE2C4()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  v7 = sub_1C0EFC610(v1);

  v8 = sub_1C0EE2A08(v7);

  (*(v4 + 104))(v3, *MEMORY[0x1E6969640], v6);
  v9 = sub_1C0F4F870();
  v11 = v10;
  (*(v4 + 8))(v3, v6);
  v0[2] = v9;
  v0[3] = v11;
  v12 = swift_task_alloc();
  *(v12 + 16) = v0 + 2;
  v13 = sub_1C0EEBA8C(sub_1C0EEF63C, v12, v8);

  v14 = v0[1];

  return v14(v13 & 1);
}

uint64_t sub_1C0EEE428(uint64_t a1)
{
  v2 = sub_1C0F4FF60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777C8, &qword_1C0F56F48);
    v10 = sub_1C0F50580();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1C0EE9CFC(&qword_1EBE777D0, MEMORY[0x1E697B948]);
      v18 = sub_1C0F50170();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1C0EE9CFC(&qword_1EBE777D8, MEMORY[0x1E697B948]);
          v25 = sub_1C0F50190();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C0EEE748(uint64_t a1)
{
  v2 = sub_1C0F4FF70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE777B0, &qword_1C0F56F40);
    v10 = sub_1C0F50580();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1C0EE9CFC(&qword_1EBE777B8, MEMORY[0x1E697B968]);
      v18 = sub_1C0F50170();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1C0EE9CFC(&qword_1EBE777C0, MEMORY[0x1E697B968]);
          v25 = sub_1C0F50190();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C0EEEA68(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = sub_1C0F4F940();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1C0F4F8A0();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_1C0F502F0();
  v2[12] = sub_1C0F502E0();
  v9 = sub_1C0F4FFC0();
  v10 = sub_1C0EE9CFC(&qword_1EBE777A8, MEMORY[0x1E697B9A8]);
  v11 = *(MEMORY[0x1E697B888] + 4);
  v12 = swift_task_alloc();
  v2[13] = v12;
  *v12 = v2;
  v12[1] = sub_1C0EEDC44;

  return MEMORY[0x1EEDD8DE8](v9, v10);
}

uint64_t sub_1C0EEEC28(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1C0F4F8A0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = sub_1C0F502F0();
  v1[9] = sub_1C0F502E0();
  sub_1C0F4FFC0();
  v5 = *(MEMORY[0x1E697B980] + 4);
  v6 = swift_task_alloc();
  v1[10] = v6;
  *v6 = v1;
  v6[1] = sub_1C0EEED3C;

  return MEMORY[0x1EEDD8F10]();
}

uint64_t sub_1C0EEED3C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 88) = a1;

  v6 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EEEE80, v6, v5);
}

uint64_t sub_1C0EEEE80()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  v7 = sub_1C0EFC610(v1);

  v8 = sub_1C0EE2A08(v7);

  (*(v4 + 104))(v3, *MEMORY[0x1E6969640], v6);
  v9 = sub_1C0F4F870();
  v11 = v10;
  (*(v4 + 8))(v3, v6);
  v0[2] = v9;
  v0[3] = v11;
  v12 = swift_task_alloc();
  *(v12 + 16) = v0 + 2;
  v13 = sub_1C0EEBA8C(sub_1C0EEFE1C, v12, v8);

  v14 = v0[1];

  return v14(v13 & 1);
}

unint64_t sub_1C0EEEFE4(void *a1)
{
  __C[4] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE776C0, &qword_1C0F56E08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - v4;
  v6 = sub_1C0F50020();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 format];
  v12 = [v11 commonFormat];

  v13 = 0;
  if (v12 == 1)
  {
    v14 = [a1 frameLength];
    v15 = [a1 format];
    v16 = [v15 channelCount];

    v13 = 0;
    if (v14)
    {
      if (v16)
      {
        v17 = v16;
        v18 = [a1 floatChannelData];
        if (v18)
        {
          v19 = v18;
          v20 = 0.0;
          v21 = v17;
          do
          {
            v22 = *v19++;
            LODWORD(__C[0]) = 0;
            vDSP_svesq(v22, 1, __C, v14);
            v20 = v20 + *__C;
            --v21;
          }

          while (v21);
        }

        else
        {
          v31 = v16;
          [a1 audioBufferList];
          sub_1C0F50030();
          v33 = v7;
          (*(v7 + 16))(v5, v10, v6);
          v23 = *(v2 + 36);
          sub_1C0EE9CFC(&qword_1EBE776C8, MEMORY[0x1E69E7DC8]);
          v32 = v10;
          sub_1C0F50420();
          v20 = 0.0;
          while (1)
          {
            sub_1C0F50430();
            if (*&v5[v23] == __C[0])
            {
              break;
            }

            v24 = sub_1C0F50450();
            v26 = *(v25 + 4);
            v27 = *(v25 + 8);
            v24(__C, 0);
            sub_1C0F50440();
            if (v27)
            {
              LODWORD(__C[0]) = 0;
              vDSP_svesq(v27, 1, __C, v26 >> 2);
              v20 = v20 + *__C;
            }
          }

          sub_1C0EEFAA8(v5, &qword_1EBE776C0, &qword_1C0F56E08);
          (*(v33 + 8))(v32, v6);
          v17 = v31;
        }

        v28 = v14 * v17;
        if ((v14 * v17) >> 64 != v28 >> 63)
        {
          __break(1u);
        }

        v13 = COERCE_UNSIGNED_INT(sqrtf(v20 / v28) * 1000.0);
      }
    }
  }

  LOBYTE(__C[0]) = v12 != 1;
  v29 = *MEMORY[0x1E69E9840];
  return v13 | ((v12 != 1) << 32);
}

uint64_t sub_1C0EEF3B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC26AccessibilitySharedSupport19AXSpeechTranscriber__audioBufferRMSSmoother;
  v3 = *v2;
  v4 = *v1;
  v5 = v1[1];
  *(v2 + 32) = *(v1 + 4);
  *v2 = v4;
  *(v2 + 16) = v5;
  v6 = *v1;
}

uint64_t sub_1C0EEF408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C0EEFCF4;

  return sub_1C0ED8DCC(a1, v4, v5, v7);
}

uint64_t sub_1C0EEF4C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C0EEFCF4;

  return sub_1C0EDE7CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1C0EEF588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEFCF4;

  return sub_1C0EDE150(a1, v4, v5, v6);
}

uint64_t sub_1C0EEF658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C0EEF664(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t objectdestroy_292Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C0EEF6F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C0EEFCF4;

  return sub_1C0EDFF0C(a1, v4, v5, v7, v6);
}

uint64_t sub_1C0EEF7B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEF864;

  return sub_1C0EDE150(a1, v4, v5, v6);
}

uint64_t sub_1C0EEF864()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C0EEF958(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C0F50790() & 1;
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C0EEFA0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C0EEFAA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C0EEFB08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_6Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C0EEFB9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEF864;

  return sub_1C0EE5BD4(a1, v4, v5, v6);
}

uint64_t sub_1C0EEFE90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1701869940;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0x80000001C0F65ED0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65756C6176;
    }

    else
    {
      v4 = 0x656C746974;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 1701869940;
  v7 = 0x80000001C0F65ED0;
  if (a2 == 2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a2)
  {
    v2 = 0x65756C6176;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C0F50790();
  }

  return v10 & 1;
}

uint64_t sub_1C0EEFFB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65756C6176;
    }

    else
    {
      v4 = 0x656C746974;
    }

    v5 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v5 = 0xE400000000000000;
    v4 = 1701869940;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000019;
    }

    if (v3 == 3)
    {
      v5 = 0x80000001C0F65ED0;
    }

    else
    {
      v5 = 0x80000001C0F65EF0;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE500000000000000;
    v8 = 0x65756C6176;
    v9 = a2 == 0;
LABEL_18:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000011;
    v6 = 0x80000001C0F65ED0;
    v7 = 0x80000001C0F65EF0;
    v8 = 0xD000000000000019;
    v9 = a2 == 3;
    goto LABEL_18;
  }

  v11 = 0xE400000000000000;
  if (v4 != 1701869940)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v5 != v11)
  {
LABEL_28:
    v12 = sub_1C0F50790();
    goto LABEL_29;
  }

  v12 = 1;
LABEL_29:

  return v12 & 1;
}

uint64_t VOMapsItem.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VOMapsItem.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VOMapsItem.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t VOMapsItem.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t VOMapsItem.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t VOMapsItem.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t VOMapsItem.latitude.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t VOMapsItem.latitude.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t VOMapsItem.longitude.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t VOMapsItem.longitude.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t VOMapsItem.headingDirection.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t VOMapsItem.headingDirection.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t VOMapsItem.distanceFromMyLocation.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t VOMapsItem.distanceFromMyLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t VOMapsItem.mapWidthScale.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t VOMapsItem.mapWidthScale.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t VOMapsItem.mapHeightScale.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t VOMapsItem.mapHeightScale.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t VOMapsItem.mapHeadingDirection.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t VOMapsItem.mapHeadingDirection.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t sub_1C0EF063C()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF0714()
{
  *v0;
  *v0;
  *v0;
  sub_1C0F50200();
}

uint64_t sub_1C0EF07D8()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF08AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C0EFC888();
  *a2 = result;
  return result;
}

void sub_1C0EF08DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0xD000000000000011;
  v8 = 0x80000001C0F65ED0;
  if (v2 != 3)
  {
    v7 = 0xD000000000000019;
    v8 = 0x80000001C0F65EF0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x65756C6176;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C0EF0970()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1701869940;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C0EF0A00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0EFC888();
  *a1 = result;
  return result;
}

uint64_t sub_1C0EF0A40(uint64_t a1)
{
  v2 = sub_1C0EF0D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0EF0A7C(uint64_t a1)
{
  v2 = sub_1C0EF0D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VOMapsItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77808, &qword_1C0F56FF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v20 = v1[2];
  v21 = v10;
  v11 = v1[5];
  v22 = v1[4];
  v12 = v1[11];
  v19[4] = v1[10];
  v19[5] = v11;
  v13 = v1[13];
  v19[2] = v1[12];
  v19[3] = v12;
  v19[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EF0D38();
  sub_1C0F508B0();
  v28 = 0;
  v15 = v23;
  sub_1C0F50710();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v21)
  {
    v17 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v17 = v20 & 0xFFFFFFFFFFFFLL;
    }

    v18 = v4;
    if (v17)
    {
      v24 = 1;
      sub_1C0F50710();
    }
  }

  else
  {
    v18 = v4;
  }

  v27 = 2;
  sub_1C0F50710();
  v26 = 3;
  sub_1C0F50710();
  v25 = 4;
  sub_1C0F50710();
  return (*(v18 + 8))(v7, v3);
}

unint64_t sub_1C0EF0D38()
{
  result = qword_1EBE77810;
  if (!qword_1EBE77810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77810);
  }

  return result;
}

uint64_t VOMapsItem.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77818, qword_1C0F56FF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v76 = 1;
  v74 = 1;
  v72 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v10);
  sub_1C0EF0D38();
  sub_1C0F508A0();
  if (v2)
  {
    v77 = v2;
    v41 = 0;
    __swift_destroy_boxed_opaque_existential_0(v42);
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = v76;
    *v60 = *v75;
    *&v60[3] = *&v75[3];
    v61 = 0;
    v62 = v74;
    *v63 = *v73;
    *&v63[3] = *&v73[3];
    v64 = 0;
    v65 = v41;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0;
    v71 = v72;
  }

  else
  {
    v12 = a2;
    LOBYTE(v54) = 0;
    *&v40 = sub_1C0F50690();
    *(&v40 + 1) = v14;
    LOBYTE(v54) = 1;
    *&v39 = sub_1C0F50690();
    *(&v39 + 1) = v15;
    LOBYTE(v54) = 2;
    v16 = sub_1C0F50690();
    v18 = v17;
    LOBYTE(v54) = 3;
    v19 = sub_1C0F50690();
    v21 = v20;
    v38 = v19;
    v53 = 4;
    v22 = sub_1C0F50690();
    v77 = 0;
    v23 = *(v6 + 8);
    v24 = v22;
    v41 = v22;
    v25 = v9;
    v27 = v26;
    v23(v25, v5);
    v43 = v40;
    v44 = v39;
    *&v45 = v16;
    *(&v45 + 1) = v18;
    *&v46 = 0;
    v28 = v76;
    BYTE8(v46) = v76;
    *&v47 = 0;
    v29 = v74;
    BYTE8(v47) = v74;
    *&v48 = v38;
    *(&v48 + 1) = v21;
    *&v49 = v24;
    *(&v49 + 1) = v27;
    v50 = 0u;
    v51 = 0u;
    memset(v52, 0, 24);
    v30 = v16;
    v31 = v21;
    v32 = v18;
    LOBYTE(v18) = v72;
    v52[24] = v72;
    v12[6] = v49;
    v12[7] = 0u;
    v33 = *v52;
    v12[8] = v51;
    v12[9] = v33;
    v34 = v46;
    v12[2] = v45;
    v12[3] = v34;
    v35 = v48;
    v12[4] = v47;
    v12[5] = v35;
    v36 = v44;
    *v12 = v43;
    v12[1] = v36;
    *(v12 + 153) = *&v52[9];
    sub_1C0EF1234(&v43, &v54);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v54 = v40;
    v55 = v39;
    v56 = v30;
    v57 = v32;
    v58 = 0;
    v59 = v28;
    v61 = 0;
    v62 = v29;
    v64 = v38;
    v65 = v31;
    *&v66 = v41;
    *(&v66 + 1) = v27;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0;
    v71 = v18;
  }

  return sub_1C0EF1204(&v54);
}

uint64_t VOMapsItem.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v24 = *(v0 + 56);
  v16 = v0[6];
  v17 = v0[8];
  v25 = *(v0 + 72);
  v4 = v0[11];
  v19 = v0[4];
  v20 = v0[10];
  v5 = v0[13];
  v6 = v0[15];
  v21 = v0[12];
  v22 = v0[14];
  v7 = v0[16];
  v8 = v0[17];
  v23 = v0[18];
  v26 = v0[19];
  v18 = v0[20];
  v27 = *(v0 + 168);
  if (v0[1])
  {
    v9 = *v0;
    sub_1C0F50870();
    sub_1C0F50200();
    v10 = v8;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C0F50870();
    v10 = v8;
    if (v2)
    {
LABEL_3:
      sub_1C0F50870();
      sub_1C0F50200();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  sub_1C0F50870();
  if (v3)
  {
LABEL_4:
    sub_1C0F50870();
    sub_1C0F50200();
    if (v24)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  sub_1C0F50870();
  if (v24)
  {
LABEL_5:
    sub_1C0F50870();
    if (!v25)
    {
      goto LABEL_6;
    }

LABEL_23:
    sub_1C0F50870();
    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_19:
  sub_1C0F50870();
  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v16;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1C68EA090](v14);
  if (v25)
  {
    goto LABEL_23;
  }

LABEL_6:
  sub_1C0F50870();
  if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v17;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1C68EA090](v11);
  if (v4)
  {
LABEL_10:
    sub_1C0F50870();
    sub_1C0F50200();
    v12 = v26;
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  sub_1C0F50870();
  v12 = v26;
  if (v5)
  {
LABEL_11:
    sub_1C0F50870();
    sub_1C0F50200();
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  sub_1C0F50870();
  if (v6)
  {
LABEL_12:
    sub_1C0F50870();
    sub_1C0F50200();
    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  sub_1C0F50870();
  if (v10)
  {
LABEL_13:
    sub_1C0F50870();
    sub_1C0F50200();
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_28:
    sub_1C0F50870();
    if (v27)
    {
      return sub_1C0F50870();
    }

    goto LABEL_29;
  }

LABEL_27:
  sub_1C0F50870();
  if (!v12)
  {
    goto LABEL_28;
  }

LABEL_14:
  sub_1C0F50870();
  sub_1C0F50200();
  if (v27)
  {
    return sub_1C0F50870();
  }

LABEL_29:
  sub_1C0F50870();
  if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = 0;
  }

  return MEMORY[0x1C68EA090](v15);
}

uint64_t VOMapsItem.hashValue.getter()
{
  sub_1C0F50850();
  VOMapsItem.hash(into:)();
  return sub_1C0F50890();
}

uint64_t sub_1C0EF1538()
{
  sub_1C0F50850();
  VOMapsItem.hash(into:)();
  return sub_1C0F50890();
}

uint64_t sub_1C0EF157C()
{
  sub_1C0F50850();
  VOMapsItem.hash(into:)();
  return sub_1C0F50890();
}

uint64_t sub_1C0EF1654(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE779A8, &qword_1C0F57888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFF2AC();
  sub_1C0F508B0();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1C0F50710();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_1C0F50710();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_1C0F50710();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C0EF17F4()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_1C0F50870();
    sub_1C0F50200();
    if (v0[3])
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1C0F50870();
    if (v0[5])
    {
      goto LABEL_4;
    }

    return sub_1C0F50870();
  }

  sub_1C0F50870();
  if (!v0[3])
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = v0[2];
  sub_1C0F50870();
  sub_1C0F50200();
  if (!v0[5])
  {
    return sub_1C0F50870();
  }

LABEL_4:
  v3 = v0[4];
  sub_1C0F50870();

  return sub_1C0F50200();
}

uint64_t sub_1C0EF18D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x735F746867696568;
  v4 = 0xEC000000656C6163;
  if (v2 != 1)
  {
    v3 = 0x7461746E6569726FLL;
    v4 = 0xEB000000006E6F69;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x63735F6874646977;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000656C61;
  }

  v7 = 0x735F746867696568;
  v8 = 0xEC000000656C6163;
  if (*a2 != 1)
  {
    v7 = 0x7461746E6569726FLL;
    v8 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x63735F6874646977;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000656C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C0F50790();
  }

  return v11 & 1;
}

uint64_t sub_1C0EF19F8()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF1AB4()
{
  *v0;
  *v0;
  sub_1C0F50200();
}

uint64_t sub_1C0EF1B5C()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF1C14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C0EFC8D4();
  *a2 = result;
  return result;
}

void sub_1C0EF1C44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656C61;
  v4 = 0xEC000000656C6163;
  v5 = 0x735F746867696568;
  if (v2 != 1)
  {
    v5 = 0x7461746E6569726FLL;
    v4 = 0xEB000000006E6F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x63735F6874646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C0EF1CBC()
{
  v1 = 0x735F746867696568;
  if (*v0 != 1)
  {
    v1 = 0x7461746E6569726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63735F6874646977;
  }
}

uint64_t sub_1C0EF1D30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0EFC8D4();
  *a1 = result;
  return result;
}

uint64_t sub_1C0EF1D58(uint64_t a1)
{
  v2 = sub_1C0EFF2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0EF1D94(uint64_t a1)
{
  v2 = sub_1C0EFF2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0EF1DD0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_1C0F50850();
  sub_1C0EF17F4();
  return sub_1C0F50890();
}

uint64_t sub_1C0EF1E24()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1C0EF17F4();
}

uint64_t sub_1C0EF1E60()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_1C0F50850();
  sub_1C0EF17F4();
  return sub_1C0F50890();
}

double sub_1C0EF1EB0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C0EFC920(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1C0EF1EF4(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_1C0EF1654(a1);
}

uint64_t sub_1C0EF1F30(_OWORD *a1, __int128 *a2)
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
  return sub_1C0EFB904(v7, v8) & 1;
}

uint64_t sub_1C0EF1F78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE779B0, &qword_1C0F57890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFF300();
  sub_1C0F508B0();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_1C0F50710();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_1C0F50710();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_1C0F50710();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_1C0F50710();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C0EF2138()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_1C0F50870();
    sub_1C0F50200();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C0F50870();
    if (v0[3])
    {
LABEL_3:
      v2 = v0[2];
      sub_1C0F50870();
      sub_1C0F50200();
      if (v0[5])
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_1C0F50870();
      if (v0[7])
      {
        goto LABEL_5;
      }

      return sub_1C0F50870();
    }
  }

  sub_1C0F50870();
  if (!v0[5])
  {
    goto LABEL_10;
  }

LABEL_4:
  v3 = v0[4];
  sub_1C0F50870();
  sub_1C0F50200();
  if (!v0[7])
  {
    return sub_1C0F50870();
  }

LABEL_5:
  v4 = v0[6];
  sub_1C0F50870();

  return sub_1C0F50200();
}

uint64_t sub_1C0EF2254()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF230C()
{
  *v0;
  *v0;
  *v0;
  sub_1C0F50200();
}

uint64_t sub_1C0EF23B0()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF2464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C0EFCB24();
  *a2 = result;
  return result;
}

void sub_1C0EF2494(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE400000000000000;
  v5 = 1701869940;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001C0F65ED0;
  }

  if (*v1)
  {
    v3 = 0x65756C6176;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1C0EF2508()
{
  v1 = 0x656C746974;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

uint64_t sub_1C0EF2578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0EFCB24();
  *a1 = result;
  return result;
}

uint64_t sub_1C0EF25AC(uint64_t a1)
{
  v2 = sub_1C0EFF300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0EF25E8(uint64_t a1)
{
  v2 = sub_1C0EFF300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0EF2624()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_1C0F50850();
  sub_1C0EF2138();
  return sub_1C0F50890();
}

uint64_t sub_1C0EF2678()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1C0EF2138();
}

uint64_t sub_1C0EF26B4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_1C0F50850();
  sub_1C0EF2138();
  return sub_1C0F50890();
}

double sub_1C0EF2704@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C0EFCB70(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1C0EF2748(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1C0EF1F78(a1);
}

uint64_t sub_1C0EF2784(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1C0EFBA14(v7, v8) & 1;
}

uint64_t sub_1C0EF27D0()
{
  v1 = v0[1];
  if (v1 < 2)
  {
    return 0;
  }

  v2 = v0[3];
  if (!v2)
  {
    return 0;
  }

  v3 = v0[2];
  v20 = v0[4];
  v21 = *v0;
  v22 = v0[5];

  v4 = sub_1C0F501A0();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier_];

  if (v6)
  {
    sub_1C0F4F640();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0F561C0;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1C0EFEE24();
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v21;
  *(v8 + 80) = v1;
  v11 = sub_1C0F501C0();
  v13 = v12;

  MEMORY[0x1C68E9A50](v11, v13);

  if (v22)
  {

    MEMORY[0x1C68E9A50](32, 0xE100000000000000);
    v14 = sub_1C0F501A0();
    v15 = [v5 bundleWithIdentifier_];

    if (v15)
    {
      sub_1C0F4F640();
    }

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C0F561D0;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = v10;
    *(v16 + 32) = v20;
    *(v16 + 40) = v22;
    v17 = sub_1C0F501C0();
    v19 = v18;

    MEMORY[0x1C68E9A50](v17, v19);
  }

  return 0;
}

uint64_t sub_1C0EF2AD4()
{
  v1 = v0[7];
  if (v1 != 1)
  {
    v2 = v0[6];
    v3 = v0[11];
    if (v3 && ((v5 = v0[8], v4 = v0[9], v7 = v0[12], v6 = v0[13], v0[10] == 0xD000000000000013) ? (v8 = v3 == 0x80000001C0F66780) : (v8 = 0), v8 || (sub_1C0F50790() & 1) != 0))
    {
      v9 = MEMORY[0x1E69E6158];
      if (v4)
      {
        v10 = HIBYTE(v4) & 0xF;
        if ((v4 & 0x2000000000000000) == 0)
        {
          v10 = v5 & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {

          v11 = sub_1C0F501A0();
          v12 = [objc_opt_self() bundleWithIdentifier_];

          if (v12)
          {
            sub_1C0F4F640();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_1C0F561D0;
          v18 = MEMORY[0x1E69E6158];
          *(v17 + 56) = MEMORY[0x1E69E6158];
          *(v17 + 64) = sub_1C0EFEE24();
          *(v17 + 32) = v5;
          *(v17 + 40) = v4;
          v9 = v18;
          v19 = sub_1C0F501C0();
          v21 = v20;

          MEMORY[0x1C68E9A50](v19, v21);
        }
      }

      if (v6)
      {

        MEMORY[0x1C68E9A50](32, 0xE100000000000000);
        v22 = sub_1C0F501A0();
        v23 = [objc_opt_self() bundleWithIdentifier_];

        if (v23)
        {
          sub_1C0F4F640();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1C0F561D0;
        *(v24 + 56) = v9;
        *(v24 + 64) = sub_1C0EFEE24();
        *(v24 + 32) = v7;
        *(v24 + 40) = v6;
LABEL_26:
        v25 = sub_1C0F501C0();
        v27 = v26;

        MEMORY[0x1C68E9A50](v25, v27);
      }
    }

    else if (v1)
    {
      v13 = HIBYTE(v1) & 0xF;
      if ((v1 & 0x2000000000000000) == 0)
      {
        v13 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {

        v14 = sub_1C0F501A0();
        v15 = [objc_opt_self() bundleWithIdentifier_];

        if (v15)
        {
          sub_1C0F4F640();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1C0F561D0;
        *(v16 + 56) = MEMORY[0x1E69E6158];
        *(v16 + 64) = sub_1C0EFEE24();
        *(v16 + 32) = v2;
        *(v16 + 40) = v1;
        goto LABEL_26;
      }
    }
  }

  return 0;
}

uint64_t sub_1C0EF2F4C()
{
  v97 = 0;
  v98 = 0xE000000000000000;
  v1 = *(v0 + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = sub_1C0F501A0();
  v87 = objc_opt_self();
  v4 = [v87 bundleWithIdentifier_];

  if (!v2)
  {
    v9 = 0xE000000000000000;
    if (v4)
    {
      v10 = sub_1C0F4F640();
      v9 = v11;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1C68E9A50](v10, v9);

    return v97;
  }

  v5 = 0xE000000000000000;
  if (v4)
  {
    v6 = sub_1C0F4F640();
    v5 = v7;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1C68E9A50](v6, v5);

  result = sub_1C0EFCE70(MEMORY[0x1E69E7CC0]);
  v12 = 0;
  v94 = result;
  v95 = v13;
  v96 = v14;
  v15 = v1 + 32;
  v85 = v1 + 32;
  do
  {
    if (v12 == v2)
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return result;
    }

    v16 = (v15 + 176 * v12);
    v17 = v16[1];
    v18 = v16[13];
    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v88 = *v16;
      v20 = v16[12];
      v22 = v94;
      v21 = v95;
      v23 = v96;
      v24 = *(v95 + 16);
      if (v94)
      {

        v25 = sub_1C0EFA52C(v20, v18, v21 + 32, v24, (v22 + 16));
        v27 = v26;

        if ((v27 & 1) == 0)
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_86;
          }

LABEL_31:
          if (v25 >= *(v23 + 16))
          {
            goto LABEL_87;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v24)
        {
          v25 = 0;
          v28 = (v95 + 40);
          while (1)
          {
            v29 = *(v28 - 1) == v20 && v18 == *v28;
            if (v29 || (sub_1C0F50790() & 1) != 0)
            {
              break;
            }

            ++v25;
            v28 += 2;
            if (v24 == v25)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_31;
        }

LABEL_28:
      }

      sub_1C0EF384C(MEMORY[0x1E69E7CC0], v20, v18);
LABEL_32:
      v31 = sub_1C0EF3A58(&v90, v20, v18);
      v32 = *v30;
      if (*v30)
      {
        v33 = v30;
        v34 = *v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v33 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_1C0F22330(0, *(v32 + 2) + 1, 1, v32);
          *v33 = v32;
        }

        v37 = *(v32 + 2);
        v36 = *(v32 + 3);
        if (v37 >= v36 >> 1)
        {
          v32 = sub_1C0F22330((v36 > 1), v37 + 1, 1, v32);
          *v33 = v32;
        }

        *(v32 + 2) = v37 + 1;
        v38 = &v32[16 * v37];
        *(v38 + 4) = v88;
        *(v38 + 5) = v17;
      }

      else
      {
      }

      (v31)(&v90, 0);

      v15 = v85;
    }

    ++v12;
  }

  while (v12 != v2);
  v39 = v95;
  v40 = *(v95 + 16);
  if (v40 < 0x10)
  {

    v42 = v40;
    if (!v40)
    {
      goto LABEL_73;
    }

LABEL_42:
    v78 = v40;
    v43 = 0;
    v86 = v41 + 32;
    v44 = v94;
    v81 = v96;
    v79 = (v39 + 40);
    v80 = v96 + 32;
    v83 = v42;
    v84 = v39;
    v82 = v94;
    while (1)
    {
      v51 = v86 + 16 * v43;
      v52 = *v51;
      v53 = *(v51 + 8);
      v54 = *(v39 + 16);
      if (!v44)
      {
        break;
      }

      v55 = *(v51 + 8);

      v56 = sub_1C0EFA52C(v52, v53, v39 + 32, v54, (v44 + 16));
      v58 = v57;

      v59 = MEMORY[0x1E69E7CC0];
      if ((v58 & 1) == 0)
      {
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

LABEL_58:
        if (v56 >= *(v81 + 16))
        {
          goto LABEL_85;
        }

        v59 = *(v80 + 8 * v56);
        goto LABEL_60;
      }

LABEL_61:
      v90 = v52;
      v91 = v53;
      v92 = 44;
      v93 = 0xE100000000000000;
      sub_1C0EED51C();
      v62 = sub_1C0F50510();

      v63 = v62[2];
      if (v63)
      {
        v64 = v62[5];
        v89 = v62[4];

        if (v63 == 1)
        {
          v65 = 0;
          v66 = 0xE000000000000000;
        }

        else
        {
          v65 = v62[6];
          v66 = v62[7];
        }
      }

      else
      {
        v89 = 0;
        v65 = 0;
        v64 = 0xE000000000000000;
        v66 = 0xE000000000000000;
      }

      v67 = v59[2];
      if (v67 == 1)
      {
        v68 = v59[4];
        v69 = v59[5];
      }

      else
      {
        v90 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E8, &qword_1C0F574E0);
        sub_1C0EFEDC0();
        v68 = sub_1C0F50180();
        v69 = v70;
      }

      MEMORY[0x1C68E9A50](32, 0xE100000000000000);
      v71 = sub_1C0F501A0();
      v72 = [v87 bundleWithIdentifier_];

      if (v72)
      {
        sub_1C0F4F640();
      }

      ++v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1C0F56F80;
      *(v45 + 56) = MEMORY[0x1E69E6530];
      *(v45 + 64) = MEMORY[0x1E69E65A8];
      *(v45 + 32) = v67;
      v46 = MEMORY[0x1E69E6158];
      *(v45 + 96) = MEMORY[0x1E69E6158];
      v47 = sub_1C0EFEE24();
      *(v45 + 72) = v65;
      *(v45 + 80) = v66;
      *(v45 + 136) = v46;
      *(v45 + 144) = v47;
      *(v45 + 104) = v47;
      *(v45 + 112) = v89;
      *(v45 + 120) = v64;
      *(v45 + 176) = v46;
      *(v45 + 184) = v47;
      *(v45 + 152) = v68;
      *(v45 + 160) = v69;
      v48 = sub_1C0F501C0();
      v50 = v49;

      MEMORY[0x1C68E9A50](v48, v50);

      v39 = v84;
      v44 = v82;
      if (v43 == v83)
      {

        v40 = v78;
        goto LABEL_74;
      }
    }

    if (v54)
    {
      v56 = 0;
      v60 = v79;
      while (1)
      {
        v61 = *(v60 - 1) == v52 && *v60 == v53;
        if (v61 || (sub_1C0F50790() & 1) != 0)
        {
          break;
        }

        ++v56;
        v60 += 2;
        if (v54 == v56)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_58;
    }

LABEL_56:
    v59 = MEMORY[0x1E69E7CC0];
LABEL_60:

    goto LABEL_61;
  }

  sub_1C0EFA678(v95, v95 + 32, 0, 0x1FuLL);
  v42 = *(v41 + 16);
  if (v42)
  {
    goto LABEL_42;
  }

LABEL_73:

LABEL_74:
  if (v40 >= 0x10)
  {
    v73 = sub_1C0F501A0();
    v74 = [v87 bundleWithIdentifier_];

    v75 = 0xE000000000000000;
    if (v74)
    {
      v76 = sub_1C0F4F640();
      v75 = v77;
    }

    else
    {
      v76 = 0;
    }

    v90 = 32;
    v91 = 0xE100000000000000;
    MEMORY[0x1C68E9A50](v76, v75);

    MEMORY[0x1C68E9A50](v90, v91);
  }

  return v97;
}

uint64_t sub_1C0EF384C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {
    v10 = *v3;

    v11 = sub_1C0EFA52C(a2, a3, v8 + 32, v9, (v7 + 16));
    v13 = v12;
    v15 = v14;

    if ((v13 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_27;
      }

LABEL_21:
      v24 = v3[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C0EFA504(v24);
        v24 = result;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < v24[2])
      {
        v25 = &v24[v11];
        v26 = v25[4];
        v25[4] = a1;

        v3[2] = v24;
        return result;
      }

      __break(1u);
      return result;
    }
  }

  else if (v9)
  {
    v11 = 0;
    v16 = (v8 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a2 && *v16 == a3;
      if (v17 || (sub_1C0F50790() & 1) != 0)
      {
        break;
      }

      ++v11;
      v16 += 2;
      if (v9 == v11)
      {
        goto LABEL_13;
      }
    }

    if (!a1)
    {
      v15 = 0;
LABEL_27:
      sub_1C0EF9738(v11, v15);

      sub_1C0EF98A0(v11);
LABEL_28:
    }

    goto LABEL_21;
  }

LABEL_13:
  if (!a1)
  {
    goto LABEL_28;
  }

  sub_1C0EF95C0(a2, a3);

  v20 = v3[2];
  v18 = v3 + 2;
  v19 = v20;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v20;
  if ((result & 1) == 0)
  {
    result = sub_1C0EF8EAC(0, *(v19 + 16) + 1, 1);
    v19 = *v18;
  }

  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  if (v23 >= v22 >> 1)
  {
    result = sub_1C0EF8EAC((v22 > 1), v23 + 1, 1);
    v19 = *v18;
  }

  *(v19 + 16) = v23 + 1;
  *(v19 + 8 * v23 + 32) = a1;
  *v18 = v19;
  return result;
}

void (*sub_1C0EF3A58(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[2] = a3;
  v7[3] = v3;
  *v7 = 0;
  v7[1] = a2;
  v9 = sub_1C0EF99AC(a2, a3, v7);
  *(v8 + 48) = v10;
  v8[4] = v9;
  v8[5] = v11;
  return sub_1C0EF3AF4;
}

void sub_1C0EF3AF4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((*a1)[6])
  {
    if (v2)
    {
      v3 = v1[5];
      v5 = v1[2];
      v4 = v1[3];
      v6 = v1[1];
      v7 = **a1;

      sub_1C0EF95C0(v6, v5);
      v10 = *(v4 + 16);
      v8 = (v4 + 16);
      v9 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C0EF8EAC(0, *(v9 + 16) + 1, 1);
        v9 = *v8;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        sub_1C0EF8EAC((v12 > 1), v13 + 1, 1);
        v14 = v13 + 1;
        v9 = *v8;
      }

      *(v9 + 16) = v14;
      *(v9 + 8 * v13 + 32) = v2;
      *v8 = v9;
    }
  }

  else
  {
    v15 = v1[3];
    v18 = *(v15 + 16);
    v16 = (v15 + 16);
    v17 = v18;
    if (v2)
    {
      v19 = **a1;

      v20 = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v17;
      if ((v20 & 1) == 0)
      {
        sub_1C0EF8EAC(0, *(v17 + 16) + 1, 1);
        v17 = *v16;
      }

      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      v23 = v21 + 1;
      if (v21 >= v22 >> 1)
      {
        v34 = *(v17 + 16);
        v35 = v21 + 1;
        sub_1C0EF8EAC((v22 > 1), v21 + 1, 1);
        v23 = v35;
        v21 = v34;
        v17 = *v16;
      }

      v24 = v1[4];
      *(v17 + 16) = v23;
      *(v17 + 8 * v21 + 32) = v2;
      *v16 = v17;
      sub_1C0EF9B0C(v24, v21);
    }

    else
    {
      v25 = v1[4];
      if (v25 < *(v17 + 16))
      {
        v26 = sub_1C0EF98A0(v25);
        v27 = *v16;
        v28 = swift_isUniquelyReferenced_nonNull_native();
        *v16 = v27;
        if ((v28 & 1) == 0)
        {
          sub_1C0EF8EAC(0, *(v27 + 16) + 1, 1);
          v27 = *v16;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          sub_1C0EF8EAC((v29 > 1), v30 + 1, 1);
          v31 = v30 + 1;
          v27 = *v16;
        }

        *(v27 + 16) = v31;
        *(v27 + 8 * v30 + 32) = v26;
        *v16 = v27;
        v32 = v1[3];
        v25 = v1[4];
      }

      sub_1C0EF9738(v25, v1[5]);
    }
  }

  v33 = *v1;

  free(v1);
}

uint64_t sub_1C0EF3D20(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77890, &qword_1C0F57488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFE910();
  sub_1C0F508B0();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v23 = v3[2];
  LOBYTE(v19[0]) = 0;
  sub_1C0EFEA98();
  sub_1C0F50730();
  if (!v2)
  {
    v12 = v3[3];
    v13 = v3[5];
    v26 = v3[4];
    v27 = v13;
    v14 = v3[5];
    v28 = v3[6];
    v21 = v12;
    v22 = v26;
    v15 = v3[3];
    v23 = v14;
    v24 = v3[6];
    v25 = v15;
    v20 = 1;
    sub_1C0EED570(&v25, v19, &qword_1EBE77870, &qword_1C0F57478);
    sub_1C0EFEAEC();
    sub_1C0F50730();
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    sub_1C0EEFAA8(v19, &qword_1EBE77870, &qword_1C0F57478);
    v18 = *(v3 + 14);
    v17[7] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77878, &qword_1C0F57480);
    sub_1C0EFEB40(&qword_1EBE778A8, sub_1C0EFEBB8);
    sub_1C0F50730();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C0EF4008()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    sub_1C0F50870();
  }

  else
  {
    v42 = *v0;
    v43 = v1;
    v2 = *(v0 + 2);
    v44 = *(v0 + 1);
    v45 = v2;
    sub_1C0F50870();
    sub_1C0EF17F4();
  }

  v3 = v0[7];
  if (v3 == 1)
  {
    sub_1C0F50870();
    v4 = v0[14];
    if (v4)
    {
      goto LABEL_6;
    }

    return sub_1C0F50870();
  }

  v21 = v0[6];
  v22 = *(v0 + 5);
  v39 = *(v0 + 4);
  v40 = v22;
  v41 = *(v0 + 6);
  v37 = v21;
  v38 = v3;
  sub_1C0F50870();
  sub_1C0EF2138();
  v4 = v0[14];
  if (!v4)
  {
    return sub_1C0F50870();
  }

LABEL_6:
  sub_1C0F50870();
  v5 = *(v4 + 16);
  result = MEMORY[0x1C68EA070](v5);
  if (v5)
  {
    v7 = (v4 + 32);
    do
    {
      v8 = *v7;
      v9 = v7[2];
      v23[1] = v7[1];
      v23[2] = v9;
      v23[0] = v8;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[6];
      v23[5] = v7[5];
      v23[6] = v12;
      v23[3] = v10;
      v23[4] = v11;
      v13 = v7[7];
      v14 = v7[8];
      v15 = v7[9];
      *&v24[9] = *(v7 + 153);
      v23[8] = v14;
      *v24 = v15;
      v23[7] = v13;
      v16 = v7[9];
      v35 = v7[8];
      v36[0] = v16;
      *(v36 + 9) = *(v7 + 153);
      v17 = v7[5];
      v31 = v7[4];
      v32 = v17;
      v18 = v7[7];
      v33 = v7[6];
      v34 = v18;
      v19 = v7[1];
      v27 = *v7;
      v28 = v19;
      v20 = v7[3];
      v29 = v7[2];
      v30 = v20;
      sub_1C0EF1234(v23, v25);
      VOMapsItem.hash(into:)();
      v25[8] = v35;
      v26[0] = v36[0];
      *(v26 + 9) = *(v36 + 9);
      v25[4] = v31;
      v25[5] = v32;
      v25[6] = v33;
      v25[7] = v34;
      v25[0] = v27;
      v25[1] = v28;
      v25[2] = v29;
      v25[3] = v30;
      result = sub_1C0EF1204(v25);
      v7 += 11;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1C0EF41DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461636F6C5F796DLL;
  v4 = 0xEB000000006E6F69;
  if (v2 != 1)
  {
    v3 = 0x6E5F736563616C70;
    v4 = 0xEE00656D5F726165;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F666E695F70616DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x7461636F6C5F796DLL;
  v8 = 0xEB000000006E6F69;
  if (*a2 != 1)
  {
    v7 = 0x6E5F736563616C70;
    v8 = 0xEE00656D5F726165;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F666E695F70616DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C0F50790();
  }

  return v11 & 1;
}

uint64_t sub_1C0EF4308()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF43C0()
{
  *v0;
  *v0;
  sub_1C0F50200();
}

uint64_t sub_1C0EF4464()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50200();

  return sub_1C0F50890();
}

uint64_t sub_1C0EF4518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C0EFD048();
  *a2 = result;
  return result;
}

void sub_1C0EF4548(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7461636F6C5F796DLL;
  if (v2 != 1)
  {
    v5 = 0x6E5F736563616C70;
    v4 = 0xEE00656D5F726165;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F666E695F70616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C0EF45BC()
{
  v1 = 0x7461636F6C5F796DLL;
  if (*v0 != 1)
  {
    v1 = 0x6E5F736563616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F666E695F70616DLL;
  }
}

uint64_t sub_1C0EF462C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0EFD048();
  *a1 = result;
  return result;
}

uint64_t sub_1C0EF4654(uint64_t a1)
{
  v2 = sub_1C0EFE910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0EF4690(uint64_t a1)
{
  v2 = sub_1C0EFE910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0EF46CC()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_1C0F50850();
  sub_1C0EF4008();
  return sub_1C0F50890();
}

uint64_t sub_1C0EF473C()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1C0EF4008();
}

uint64_t sub_1C0EF4790()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_1C0F50850();
  sub_1C0EF4008();
  return sub_1C0F50890();
}

double sub_1C0EF47FC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C0EFD094(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_1C0EF4864(void *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 14);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1C0EF3D20(a1);
}

BOOL sub_1C0EF48B8(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1C0EFC0DC(v12, v14);
}

unint64_t sub_1C0EF493C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77938, &qword_1C0F57518);
    v2 = sub_1C0F50650();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_1C0EFEECC(&v25, v27);
        sub_1C0EFEECC(v27, v28);
        sub_1C0EFEECC(v28, &v26);
        result = sub_1C0EFA930(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1C0EFEECC(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1C0EFEECC(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C0EF4B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E69E9840];
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[25] = a4;
  v9 = sub_1C0F4F750();
  v8[30] = v9;
  v10 = *(v9 - 8);
  v8[31] = v10;
  v11 = *(v10 + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v12 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4C9C, 0, 0);
}

uint64_t sub_1C0EF4C9C()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[34];
  v2 = NSTemporaryDirectory();
  sub_1C0F501B0();

  sub_1C0F4F6E0();

  v0[35] = sub_1C0F502F0();
  v0[36] = sub_1C0F502E0();
  v3 = sub_1C0F502B0();
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4DAC, v3, v4);
}

uint64_t sub_1C0EF4DAC()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 288);

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4E40, 0, 0);
}

uint64_t sub_1C0EF4E40()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 280);
  *(v0 + 296) = sub_1C0F502E0();
  v2 = sub_1C0F502B0();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4F00, v2, v3);
}

uint64_t sub_1C0EF4F00()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 296);

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF4F94, 0, 0);
}

uint64_t sub_1C0EF4F94()
{
  v30 = v0;
  v29[1] = *MEMORY[0x1E69E9840];
  v1 = v0[33];
  v2 = v0[34];
  sub_1C0F4F710();
  v3 = sub_1C0F50460();
  v4 = AXLogVoiceOverMapsAI();
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  if (os_log_type_enabled(v4, v3))
  {
    v7 = v0[25];
    v6 = v0[26];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1C0EE9754(v7, v6, v29);
    _os_log_impl(&dword_1C0E8A000, v5, v3, "[VOMapsManager] response: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1C68EB070](v9, -1, -1);
    MEMORY[0x1C68EB070](v8, -1, -1);
  }

  v10 = sub_1C0F50460();
  v11 = AXLogVoiceOverMapsAI();
  if (!v11)
  {
LABEL_12:
    __break(1u);
  }

  v12 = v11;
  (*(v0[31] + 16))(v0[32], v0[33], v0[30]);
  v13 = os_log_type_enabled(v12, v10);
  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[30];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29[0] = v18;
    *v17 = 136315138;
    v19 = sub_1C0F4F6D0();
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_1C0EE9754(v19, v21, v29);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1C0E8A000, v12, v10, "[VOMapsManager] save response in background thread in %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1C68EB070](v18, -1, -1);
    MEMORY[0x1C68EB070](v17, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v23 = v0[35];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D8, &qword_1C0F574C8);
  inited = swift_initStackObject();
  v0[38] = inited;
  *(inited + 16) = xmmword_1C0F56F90;
  v0[39] = sub_1C0F502E0();
  v25 = sub_1C0F502B0();
  v27 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF52B0, v25, v26);
}

uint64_t sub_1C0EF52B0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 312);

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5344, 0, 0);
}

uint64_t sub_1C0EF5344()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 280);
  *(v0 + 320) = sub_1C0F502E0();
  v2 = sub_1C0F502B0();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5404, v2, v3);
}

uint64_t sub_1C0EF5404()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 320);

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5498, 0, 0);
}

uint64_t sub_1C0EF5498()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[27];
  v1[4] = 0x6D614E6C65646F6DLL;
  v1[5] = 0xE900000000000065;
  v1[9] = MEMORY[0x1E69E6530];
  v1[6] = v3;
  v0[41] = sub_1C0F502E0();
  v4 = sub_1C0F502B0();
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF558C, v4, v5);
}

uint64_t sub_1C0EF558C()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 328);

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5620, 0, 0);
}

uint64_t sub_1C0EF5620()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 280);
  *(v0 + 336) = sub_1C0F502E0();
  v2 = sub_1C0F502B0();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF56E0, v2, v3);
}

uint64_t sub_1C0EF56E0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 336);

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5774, 0, 0);
}

uint64_t sub_1C0EF5774()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[38];
  v2 = v0[35];
  v4 = v0[28];
  v3 = v0[29];
  v1[10] = 0x74706D6F7270;
  v1[11] = 0xE600000000000000;
  v1[15] = MEMORY[0x1E69E6158];
  v1[12] = v4;
  v1[13] = v3;

  v0[43] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5864, v5, v6);
}

uint64_t sub_1C0EF5864()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 344);

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF58F8, 0, 0);
}

uint64_t sub_1C0EF58F8()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 280);
  *(v0 + 352) = sub_1C0F502E0();
  v2 = sub_1C0F502B0();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF59B8, v2, v3);
}

uint64_t sub_1C0EF59B8()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 352);

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1C0EF5A4C, 0, 0);
}

NSObject *sub_1C0EF5A4C()
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 304);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v1[16] = 0x65736E6F70736572;
  v1[17] = 0xE800000000000000;
  v1[21] = MEMORY[0x1E69E6158];
  v1[18] = v3;
  v1[19] = v2;

  sub_1C0F22A2C(v1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E0, &unk_1C0F574D0);
  swift_arrayDestroy();
  v4 = objc_opt_self();
  v5 = sub_1C0F50150();

  *(v0 + 192) = 0;
  v6 = [v4 dataWithPropertyList:v5 format:100 options:0 error:v0 + 192];

  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = *(v0 + 264);
    v9 = sub_1C0F4F7B0();
    v11 = v10;

    sub_1C0F4F7C0();
    v25 = *(v0 + 264);
    v24 = *(v0 + 272);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    sub_1C0EFED6C(v9, v11);
    v28 = *(v27 + 8);
    v28(v25, v26);
    v28(v24, v26);
  }

  else
  {
    v12 = v7;
    v13 = sub_1C0F4F6B0();

    swift_willThrow();
    v14 = *(v0 + 272);
    v15 = *(v0 + 240);
    v16 = *(*(v0 + 248) + 8);
    v16(*(v0 + 264), v15);
    v16(v14, v15);
    v17 = sub_1C0F50470();
    result = AXLogVoiceOverMapsAI();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v19 = result;
    if (os_log_type_enabled(result, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v13;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1C0E8A000, v19, v17, "[VOMapsManager] error saving output. %@", v20, 0xCu);
      sub_1C0EEFAA8(v21, &qword_1EBE776D0, &qword_1C0F56E10);
      MEMORY[0x1C68EB070](v21, -1, -1);
      MEMORY[0x1C68EB070](v20, -1, -1);
    }

    else
    {
    }
  }

  v30 = *(v0 + 264);
  v29 = *(v0 + 272);
  v31 = *(v0 + 256);

  v32 = *(v0 + 8);
  v33 = *MEMORY[0x1E69E9840];

  return v32();
}

uint64_t sub_1C0EF5DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C0EED570(a3, v27 - v11, &qword_1EBE773B0, &qword_1C0F57F40);
  v13 = sub_1C0F50320();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C0EEFAA8(v12, &qword_1EBE773B0, &qword_1C0F57F40);
  }

  else
  {
    sub_1C0F50310();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C0F502B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C0F501E0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_1C0EF606C()
{
  result = [objc_allocWithZone(type metadata accessor for VOMapsManager()) init];
  qword_1EBE77800 = result;
  return result;
}

id VOMapsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static VOMapsManager.sharedInstance.getter()
{
  if (qword_1EBE77188 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBE77800;

  return v1;
}

uint64_t sub_1C0EF612C(uint64_t a1)
{
  v2[147] = v1;
  v2[146] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40) - 8) + 64) + 15;
  v2[148] = swift_task_alloc();
  sub_1C0F502F0();
  v2[149] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();

  return MEMORY[0x1EEE6DFA0](sub_1C0EF6200, v5, v4);
}

void sub_1C0EF6200()
{
  v178 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);
  v3 = sub_1C0EFD4F4();
  v4 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport13VOMapsManager_inputFileDict);
  v151 = OBJC_IVAR____TtC26AccessibilitySharedSupport13VOMapsManager_inputFileDict;
  *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport13VOMapsManager_inputFileDict) = v3;

  v6 = sub_1C0EFC798(v5);

  v7 = *(v6 + 16);
  v150 = v1;
  if (v7)
  {
    v8 = sub_1C0EF7370(v7, 0);
    v9 = sub_1C0EFB754(&v168, v8 + 32, v7, v6);
    sub_1C0EFD8B0();
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v163 = *(v8 + 2);
  if (v163)
  {
    v10 = 0;
    v152 = (v153 + 368);
    v147 = (v153 + 1016);
    v11 = 32;
    v161 = v8;
    do
    {
      if (v10 >= *(v8 + 2))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v12 = *&v8[v11];
      v13 = *&v8[v11 + 16];
      *(v153 + 48) = *&v8[v11 + 32];
      v14 = *&v8[v11 + 48];
      v15 = *&v8[v11 + 64];
      v16 = *&v8[v11 + 96];
      *(v153 + 96) = *&v8[v11 + 80];
      *(v153 + 112) = v16;
      *(v153 + 64) = v14;
      *(v153 + 80) = v15;
      v17 = *&v8[v11 + 112];
      v18 = *&v8[v11 + 128];
      v19 = *&v8[v11 + 144];
      *(v153 + 169) = *&v8[v11 + 153];
      *(v153 + 144) = v18;
      *(v153 + 160) = v19;
      *(v153 + 128) = v17;
      *(v153 + 16) = v12;
      *(v153 + 32) = v13;
      v165 = *(v153 + 56);
      if (v165)
      {
        v20 = *(v153 + 160);
        v21 = *(v153 + 144);
        v156 = *(v153 + 168);
        v157 = *(v153 + 152);
        v22 = *(v153 + 128);
        v23 = *(v153 + 96);
        v158 = *(v153 + 104);
        v159 = *(v153 + 136);
        v24 = *(v153 + 48);
        v160 = *(v153 + 40);
        v25 = *(v153 + 16);
        v26 = *(v153 + 32);
        v154 = *(v153 + 24);
        sub_1C0EF1234(v153 + 16, v153 + 192);
        if (sub_1C0F50260())
        {
          v164 = v25;
          v144 = v22;
          v149 = v26;
          v148 = v21;
          v36 = v20;
          v37 = *(v153 + 1192);

          v166 = *(v153 + 16);
          v167 = *(v153 + 32);
          v38 = *(v153 + 144);
          v172 = *(v153 + 128);
          v173 = v38;
          v174[0] = *(v153 + 160);
          *(v174 + 9) = *(v153 + 169);
          v39 = *(v153 + 80);
          v168 = *(v153 + 64);
          v169 = v39;
          v40 = *(v153 + 112);
          v170 = *(v153 + 96);
          v171 = v40;

          v41 = sub_1C0F50210();
          v42 = sub_1C0EFD8B8(v41, v24, v165);
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v146 = MEMORY[0x1C68E9A00](v42, v44, v46, v48);
          v50 = v49;

          v145 = v50;

          v51 = *(v161 + 2);
          v143 = v36;
          if (v51)
          {
            v52 = 0;
            v53 = v161 + 32;
            v54 = MEMORY[0x1E69E7CC0];
            v55 = v25;
            v56 = v154;
            v57 = v153;
            while (2)
            {
              v58 = &v53[176 * v52];
              v59 = v52;
LABEL_22:
              if (v59 >= v51)
              {
                goto LABEL_67;
              }

              v61 = *v58;
              v62 = *(v58 + 2);
              *(v153 + 384) = *(v58 + 1);
              *(v153 + 400) = v62;
              *v152 = v61;
              v63 = *(v58 + 3);
              v64 = *(v58 + 4);
              v65 = *(v58 + 6);
              *(v153 + 448) = *(v58 + 5);
              *(v153 + 464) = v65;
              *(v153 + 416) = v63;
              *(v153 + 432) = v64;
              v66 = *(v58 + 7);
              v67 = *(v58 + 8);
              v68 = *(v58 + 9);
              *(v153 + 521) = *(v58 + 153);
              *(v153 + 496) = v67;
              *(v153 + 512) = v68;
              *(v153 + 480) = v66;
              v52 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
                goto LABEL_68;
              }

              v69 = v57[47];
              if (v69)
              {
                if (!v56)
                {
                  goto LABEL_31;
                }

                if (v57[46] != v55 || v69 != v56)
                {
                  v70 = sub_1C0F50790();
                  v57 = v153;
                  v56 = v154;
                  v55 = v164;
                  if ((v70 & 1) == 0)
                  {
                    goto LABEL_31;
                  }
                }
              }

              else if (v56)
              {
LABEL_31:
                v71 = v57[51];
                if (!v71 || (v57[50] != 1684107122 || v71 != 0xE400000000000000) && (v60 = sub_1C0F50790(), v57 = v153, v56 = v154, v55 = v164, (v60 & 1) == 0))
                {
                  sub_1C0EF1234(v152, (v57 + 68));
                  v72 = v54;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v176 = v54;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1C0EF8ECC(0, *(v54 + 2) + 1, 1);
                    v72 = v176;
                  }

                  v75 = *(v72 + 16);
                  v74 = *(v72 + 24);
                  v57 = v153;
                  if (v75 >= v74 >> 1)
                  {
                    sub_1C0EF8ECC((v74 > 1), v75 + 1, 1);
                    v57 = v153;
                    v72 = v176;
                  }

                  *(v72 + 16) = v75 + 1;
                  v54 = v72;
                  v76 = (v72 + 176 * v75);
                  v77 = *v152;
                  v78 = *(v153 + 400);
                  v76[3] = *(v153 + 384);
                  v76[4] = v78;
                  v76[2] = v77;
                  v79 = *(v153 + 416);
                  v80 = *(v153 + 432);
                  v81 = *(v153 + 464);
                  v76[7] = *(v153 + 448);
                  v76[8] = v81;
                  v76[5] = v79;
                  v76[6] = v80;
                  v82 = *(v153 + 480);
                  v83 = *(v153 + 496);
                  v84 = *(v153 + 512);
                  *(v76 + 185) = *(v153 + 521);
                  v76[10] = v83;
                  v76[11] = v84;
                  v76[9] = v82;
                  v55 = v164;
                  v53 = v161 + 32;
                  v56 = v154;
                  if (v52 != v51)
                  {
                    continue;
                  }

                  goto LABEL_42;
                }
              }

              break;
            }

            ++v59;
            v58 += 176;
            if (v52 == v51)
            {
              goto LABEL_42;
            }

            goto LABEL_22;
          }

          v54 = MEMORY[0x1E69E7CC0];
LABEL_42:

          v85 = *(v54 + 2);
          if (!v85)
          {
            v91 = v148;
            v90 = v23;
            v92 = v149;
LABEL_55:
            v175 = v54;

            sub_1C0EFAA60(&v175);
            v121 = v175;
            *(v153 + 1016) = v144;
            *(v153 + 1024) = v159;
            *(v153 + 1032) = v91;
            *(v153 + 1040) = v157;
            *(v153 + 1048) = v143;
            *(v153 + 1056) = v156;
            *(v153 + 1064) = v164;
            *(v153 + 1072) = v154;
            *(v153 + 1080) = v92;
            *(v153 + 1088) = v160;
            *(v153 + 1096) = v146;
            *(v153 + 1104) = v145;
            *(v153 + 1112) = v90;
            *(v153 + 1120) = v158;
            *(v153 + 1128) = v121;
            v122 = *v147;
            v123 = *(v153 + 1032);
            v124 = *(v153 + 1064);
            *(v153 + 928) = *(v153 + 1048);
            *(v153 + 944) = v124;
            *(v153 + 896) = v122;
            *(v153 + 912) = v123;
            v125 = *(v153 + 1080);
            v126 = *(v153 + 1096);
            v127 = *(v153 + 1112);
            *(v153 + 1008) = *(v153 + 1128);
            *(v153 + 976) = v126;
            *(v153 + 992) = v127;
            *(v153 + 960) = v125;
            v176 = sub_1C0EF27D0();
            v177 = v128;
            MEMORY[0x1C68E9A50](32, 0xE100000000000000);
            v129 = sub_1C0EF2AD4();
            MEMORY[0x1C68E9A50](v129);

            MEMORY[0x1C68E9A50](32, 0xE100000000000000);
            v130 = sub_1C0EF2F4C();
            MEMORY[0x1C68E9A50](v130);

            sub_1C0EFD968(v147);
            v32 = v176;
            v33 = v177;
            if (AXSSIsAppleInternalBuild())
            {
              v131 = v150;
              v132 = *(v150 + v151);
              if (v132 && *(v132 + 16))
              {
                v133 = *(v150 + v151);

                v134 = sub_1C0EFA930(0x7074754F65766173, 0xEA00000000007475);
                if (v135)
                {
                  sub_1C0EED190(*(v132 + 56) + 32 * v134, v153 + 1136);

                  if (swift_dynamicCast() & 1) != 0 && (*(v153 + 185))
                  {
                    v136 = *(v153 + 1184);

                    sub_1C0F50300();
                    v137 = sub_1C0F50320();
                    (*(*(v137 - 8) + 56))(v136, 0, 1, v137);
                    v138 = swift_allocObject();
                    *(v138 + 16) = 0;
                    *(v138 + 24) = 0;
                    *(v138 + 32) = v32;
                    *(v138 + 40) = v33;
                    *(v138 + 48) = xmmword_1C0F56FA0;
                    *(v138 + 64) = 0xE000000000000000;
                    sub_1C0EF5DAC(0, 0, v136, &unk_1C0F57018, v138);

                    sub_1C0EEFAA8(v136, &qword_1EBE773B0, &qword_1C0F57F40);
                  }
                }

                else
                {
                }
              }
            }

            else
            {

              v131 = v150;
            }

            v29 = v153;
            *(v153 + 720) = v166;
            *(v153 + 736) = v167;
            *(v153 + 752) = v146;
            *(v153 + 760) = v145;
            v139 = v173;
            *(v153 + 832) = v172;
            *(v153 + 848) = v139;
            *(v153 + 864) = v174[0];
            v140 = v169;
            *(v153 + 768) = v168;
            *(v153 + 784) = v140;
            v141 = v171;
            *(v153 + 800) = v170;
            *(v153 + 816) = v141;
            *(v153 + 873) = *(v174 + 9);
            sub_1C0EF1204(v153 + 720);
            v142 = *(v131 + v151);
            *(v131 + v151) = 0;

            goto LABEL_14;
          }

          v86 = *(v153 + 72) | *(v153 + 88);
          v155 = *(v153 + 64);
          v162 = *(v153 + 80);
          v87 = __sincos_stret(v155 * 0.0174532925);
          v88 = 0;
          v89 = 200;
          v91 = v148;
          v90 = v23;
          v92 = v149;
          while (v88 < *(v54 + 2))
          {
            if ((v86 & 1) == 0)
            {
              v93 = &v54[v89];
              if ((v54[v89 - 112] & 1) == 0 && (*(v93 - 96) & 1) == 0)
              {
                v94 = *(v93 - 15);
                v95 = *(v93 - 13);
                v96 = sin((v94 - v155) * 0.0174532925 * 0.5);
                v97 = v96 * v96;
                v98 = __sincos_stret(v94 * 0.0174532925);
                v99 = sin((v95 - v162) * 0.0174532925 * 0.5);
                v100 = v97 + v87.__cosval * v98.__cosval * (v99 * v99);
                v101 = sqrt(v100);
                v102 = sqrt(1.0 - v100);
                v103 = atan2(v101, v102);
                v104 = (v87.__sinval * -21000.0 + 6378160.0) * (v103 + v103);
                v105 = __sincos_stret(v95 * 0.0174532925 - v162 * 0.0174532925);
                v106 = atan2(v98.__cosval * v105.__sinval, v87.__cosval * v98.__sinval - v87.__sinval * v98.__cosval * v105.__cosval);
                v107 = fmod(v106, 6.28318531) * 57.2957795;
                v108 = sub_1C0EFDA74(v104);
                v110 = v109;
                sub_1C0EFDF3C(v107);
                v111 = v54;
                v113 = v112;
                v115 = v114;
                v176 = v108;
                v177 = v110;
                MEMORY[0x1C68E9A50](44, 0xE100000000000000);
                v116 = v113;
                v54 = v111;
                MEMORY[0x1C68E9A50](v116, v115);

                v117 = v176;
                v118 = v177;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v54 = sub_1C0EF9598(v111);
                }

                v92 = v149;
                if (v88 >= *(v54 + 2))
                {
                  goto LABEL_70;
                }

                v119 = &v54[v89];
                v120 = *&v54[v89 - 64];
                *(v119 - 9) = v117;
                *(v119 - 8) = v118;

                if (v88 >= *(v54 + 2))
                {
                  goto LABEL_71;
                }

                *(v119 - 1) = v104;
                *v119 = 0;
                v91 = v148;
                v90 = v23;
              }
            }

            ++v88;
            v89 += 176;
            if (v85 == v88)
            {
              goto LABEL_55;
            }
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          return;
        }

        sub_1C0EF1204(v153 + 16);
        v8 = v161;
      }

      ++v10;
      v11 += 176;
    }

    while (v163 != v10);
  }

  sub_1C0F50470();
  v27 = AXLogVoiceOverMapsAI();
  if (!v27)
  {
    goto LABEL_72;
  }

  v28 = v27;
  v29 = v153;
  v30 = *(v153 + 1192);

  sub_1C0F4FCF0();

  v31 = *(v150 + v151);
  *(v150 + v151) = 0;

  v32 = 0;
  v33 = 0;
LABEL_14:
  v34 = *(v29 + 1184);

  v35 = *(v29 + 8);

  v35(v32, v33);
}

id VOMapsManager.init()()
{
  *&v0[OBJC_IVAR____TtC26AccessibilitySharedSupport13VOMapsManager_inputFileDict] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VOMapsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VOMapsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VOMapsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0EF6E90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v75 = v2;
  v76 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[9];
    v60 = v5[8];
    v61[0] = v9;
    *(v61 + 9) = *(v5 + 153);
    v10 = v5[3];
    v11 = v5[5];
    v56 = v5[4];
    v57 = v11;
    v12 = v5[5];
    v13 = v5[7];
    v58 = v5[6];
    v59 = v13;
    v14 = v5[1];
    v53[0] = *v5;
    v53[1] = v14;
    v15 = v5[3];
    v17 = *v5;
    v16 = v5[1];
    v54 = v5[2];
    v55 = v15;
    v18 = v5[9];
    v51 = v60;
    v52[0] = v18;
    *(v52 + 9) = *(v5 + 153);
    v47 = v56;
    v48 = v12;
    v49 = v58;
    v50 = v8;
    v43 = v17;
    v44 = v16;
    v45 = v54;
    v46 = v10;
    v19 = v6[7];
    v20 = v6[9];
    v69 = v6[8];
    v70[0] = v20;
    *(v70 + 9) = *(v6 + 153);
    v21 = v6[3];
    v22 = v6[5];
    v65 = v6[4];
    v66 = v22;
    v23 = v6[5];
    v24 = v6[7];
    v67 = v6[6];
    v68 = v24;
    v25 = v6[1];
    v62[0] = *v6;
    v62[1] = v25;
    v26 = v6[3];
    v28 = *v6;
    v27 = v6[1];
    v63 = v6[2];
    v64 = v26;
    v29 = v6[9];
    v41 = v69;
    v42[0] = v29;
    *(v42 + 9) = *(v6 + 153);
    v37 = v65;
    v38 = v23;
    v39 = v67;
    v40 = v19;
    v33 = v28;
    v34 = v27;
    v35 = v63;
    v36 = v21;
    v30 = _s26AccessibilitySharedSupport10VOMapsItemV2eeoiySbAC_ACtFZ_0(&v43, &v33);
    v71[8] = v41;
    v72[0] = v42[0];
    *(v72 + 9) = *(v42 + 9);
    v71[4] = v37;
    v71[5] = v38;
    v71[6] = v39;
    v71[7] = v40;
    v71[0] = v33;
    v71[1] = v34;
    v71[2] = v35;
    v71[3] = v36;
    sub_1C0EF1234(v53, v32);
    sub_1C0EF1234(v62, v32);
    sub_1C0EF1204(v71);
    v73[8] = v51;
    v74[0] = v52[0];
    *(v74 + 9) = *(v52 + 9);
    v73[4] = v47;
    v73[5] = v48;
    v73[6] = v49;
    v73[7] = v50;
    v73[0] = v43;
    v73[1] = v44;
    v73[2] = v45;
    v73[3] = v46;
    sub_1C0EF1204(v73);
    if (!v30)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 11;
    v5 += 11;
  }

  return 1;
}

uint64_t sub_1C0EF70A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0EF70FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0EF71F4;

  return v7(a1);
}

uint64_t sub_1C0EF71F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_1C0EF72EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77940, &qword_1C0F57520);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1C0EF7370(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77918, &qword_1C0F57500);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

uint64_t sub_1C0EF7408(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C0F4F940();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1C0EFEEDC(&qword_1EBE77948);
  v36 = a2;
  v13 = sub_1C0F50170();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1C0EFEEDC(&qword_1EBE77950);
      v23 = sub_1C0F50190();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1C0EF7FFC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1C0EF76C0(__int128 *a1, __int128 *a2)
{
  v4 = a2[9];
  v71 = a2[8];
  v72[0] = v4;
  *(v72 + 9) = *(a2 + 153);
  v5 = a2[5];
  v67 = a2[4];
  v68 = v5;
  v6 = a2[7];
  v69 = a2[6];
  v70 = v6;
  v7 = a2[1];
  v63 = *a2;
  v64 = v7;
  v8 = a2[3];
  v65 = a2[2];
  v66 = v8;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1C0F50850();
  VOMapsItem.hash(into:)();
  v11 = sub_1C0F50890();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = (*(v9 + 48) + 176 * v13);
      v17 = v15[1];
      v16 = v15[2];
      v61[0] = *v15;
      v61[1] = v17;
      v61[2] = v16;
      v18 = v15[3];
      v19 = v15[4];
      v20 = v15[6];
      v61[5] = v15[5];
      v61[6] = v20;
      v61[3] = v18;
      v61[4] = v19;
      v21 = v15[7];
      v22 = v15[8];
      v23 = v15[9];
      *(v62 + 9) = *(v15 + 153);
      v61[8] = v22;
      v62[0] = v23;
      v61[7] = v21;
      v58 = v15[7];
      v59 = v15[8];
      v60[0] = v15[9];
      *(v60 + 9) = *(v15 + 153);
      v54 = v15[3];
      v55 = v15[4];
      v56 = v15[5];
      v57 = v15[6];
      v51 = *v15;
      v52 = v15[1];
      v53 = v15[2];
      v24 = _s26AccessibilitySharedSupport10VOMapsItemV2eeoiySbAC_ACtFZ_0(&v51, &v63);
      v82[0] = v60[0];
      *(v82 + 9) = *(v60 + 9);
      v77 = v55;
      v78 = v56;
      v80 = v58;
      v81 = v59;
      v79 = v57;
      v73 = v51;
      v74 = v52;
      v75 = v53;
      v76 = v54;
      sub_1C0EF1234(v61, v49);
      sub_1C0EF1204(&v73);
      if (v24)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v49[8] = v71;
    v50[0] = v72[0];
    *(v50 + 9) = *(v72 + 9);
    v49[4] = v67;
    v49[5] = v68;
    v49[6] = v69;
    v49[7] = v70;
    v49[0] = v63;
    v49[1] = v64;
    v49[2] = v65;
    v49[3] = v66;
    sub_1C0EF1204(v49);
    v33 = (*(v9 + 48) + 176 * v13);
    v34 = v33[7];
    v35 = v33[8];
    v36 = v33[9];
    *(v60 + 9) = *(v33 + 153);
    v59 = v35;
    v60[0] = v36;
    v58 = v34;
    v37 = v33[3];
    v38 = v33[4];
    v39 = v33[6];
    v56 = v33[5];
    v57 = v39;
    v54 = v37;
    v55 = v38;
    v41 = v33[1];
    v40 = v33[2];
    v51 = *v33;
    v52 = v41;
    v53 = v40;
    v42 = v33[9];
    a1[8] = v33[8];
    a1[9] = v42;
    *(a1 + 153) = *(v33 + 153);
    v43 = v33[5];
    a1[4] = v33[4];
    a1[5] = v43;
    v44 = v33[7];
    a1[6] = v33[6];
    a1[7] = v44;
    v45 = v33[1];
    *a1 = *v33;
    a1[1] = v45;
    v46 = v33[3];
    a1[2] = v33[2];
    a1[3] = v46;
    sub_1C0EF1234(&v51, v48);
    return 0;
  }

  else
  {
LABEL_5:
    v25 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v72[0];
    *(v82 + 9) = *(v72 + 9);
    v77 = v67;
    v78 = v68;
    v80 = v70;
    v81 = v71;
    v79 = v69;
    v73 = v63;
    v74 = v64;
    v75 = v65;
    v76 = v66;
    *&v51 = *v47;
    sub_1C0EF1234(&v73, v61);
    sub_1C0EF8278(&v73, v13, isUniquelyReferenced_nonNull_native);
    *v47 = v51;
    v27 = v72[0];
    a1[8] = v71;
    a1[9] = v27;
    *(a1 + 153) = *(v72 + 9);
    v28 = v68;
    a1[4] = v67;
    a1[5] = v28;
    v29 = v70;
    a1[6] = v69;
    a1[7] = v29;
    v30 = v64;
    *a1 = v63;
    a1[1] = v30;
    v31 = v66;
    result = 1;
    a1[2] = v65;
    a1[3] = v31;
  }

  return result;
}

uint64_t sub_1C0EF7A28(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C0F4F940();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77958, &qword_1C0F57528);
  result = sub_1C0F50570();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1C0EFEEDC(&qword_1EBE77948);
      result = sub_1C0F50170();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}