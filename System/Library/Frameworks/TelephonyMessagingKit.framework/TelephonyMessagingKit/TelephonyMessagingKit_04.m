unint64_t sub_1E4B340FC()
{
  result = qword_1ECF94408;
  if (!qword_1ECF94408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94408);
  }

  return result;
}

unint64_t sub_1E4B34154()
{
  result = qword_1ECF94410;
  if (!qword_1ECF94410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94410);
  }

  return result;
}

unint64_t sub_1E4B341AC()
{
  result = qword_1ECF94418;
  if (!qword_1ECF94418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94418);
  }

  return result;
}

unint64_t sub_1E4B34204()
{
  result = qword_1ECF94420;
  if (!qword_1ECF94420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94420);
  }

  return result;
}

unint64_t sub_1E4B3425C()
{
  result = qword_1ECF94428;
  if (!qword_1ECF94428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94428);
  }

  return result;
}

unint64_t sub_1E4B342B4()
{
  result = qword_1ECF94430;
  if (!qword_1ECF94430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94430);
  }

  return result;
}

unint64_t sub_1E4B3430C()
{
  result = qword_1ECF94438;
  if (!qword_1ECF94438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94438);
  }

  return result;
}

unint64_t sub_1E4B34364()
{
  result = qword_1ECF94440;
  if (!qword_1ECF94440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94440);
  }

  return result;
}

unint64_t sub_1E4B343BC()
{
  result = qword_1ECF94448;
  if (!qword_1ECF94448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94448);
  }

  return result;
}

uint64_t sub_1E4B34B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_56Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v8 = *(*v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(*v7 + 64);
  v11 = *(v4 + 16);

  v12 = sub_1E4BEFAFC();
  (*(*(v12 - 8) + 8))(v4 + v9, v12);
  v13 = v7[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v14 - 8) + 8))(v4 + v9 + v13, v14);

  return MEMORY[0x1EEE6BDD0](v4, v9 + v10, v8 | 7);
}

uint64_t sub_1E4B34D50(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = v4 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a4(a1, v7, v8);
}

uint64_t sub_1E4B34E34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E4B34E90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4B34EE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4B34F8C()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF94620);
  v1 = __swift_project_value_buffer(v0, qword_1ECF94620);
  if (qword_1EE2BD750 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4B35054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (!v8)
  {
    if (qword_1ECF923D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v14, qword_1ECF94620);
    v9 = sub_1E4BEFB5C();
    v15 = sub_1E4BF04DC();
    if (os_log_type_enabled(v9, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136315138;
      *token.val = a1;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v18 = sub_1E4BEFF0C();
      v20 = sub_1E4B30548(v18, v19, &v33);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1E4AD3000, v9, v15, "Failed to create task for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E6921800](v17, -1, -1);
      MEMORY[0x1E6921800](v16, -1, -1);
    }

    goto LABEL_16;
  }

  v9 = v8;
  error = 0;
  v10 = SecTaskCopySigningIdentifier(v8, &error);
  if (!v10)
  {
    if (qword_1ECF923D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v21, qword_1ECF94620);
    v22 = sub_1E4BEFB5C();
    v23 = sub_1E4BF04DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136315394;
      *token.val = a1;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v26 = sub_1E4BEFF0C();
      v28 = sub_1E4B30548(v26, v27, &v34);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      swift_beginAccess();
      *token.val = error;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94638, &qword_1E4C05648);
      v29 = sub_1E4BEFF0C();
      v31 = sub_1E4B30548(v29, v30, &v34);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_1E4AD3000, v22, v23, "Could not get signing identifier for %s: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6921800](v25, -1, -1);
      MEMORY[0x1E6921800](v24, -1, -1);
    }

    swift_beginAccess();
    if (error)
    {
    }

LABEL_16:

    result = 0;
    goto LABEL_17;
  }

  v11 = v10;
  v12 = sub_1E4BEFEAC();

  swift_beginAccess();
  if (error)
  {
  }

  result = v12;
LABEL_17:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4B35420(uint64_t a1@<X8>)
{
  v10[3] = &type metadata for CoreTelephonyFeatureFlag;
  v10[4] = sub_1E4B3A828();
  v3 = sub_1E4BEFB0C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);
    os_unfair_lock_lock(v4 + 24);
    sub_1E4B3A87C(&v4[4], a1);
    os_unfair_lock_unlock(v4 + 24);
  }

  else
  {
    if (qword_1ECF923D8 != -1)
    {
      swift_once();
    }

    v5 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v5, qword_1ECF94640);
    v6 = sub_1E4BEFB5C();
    v7 = sub_1E4BF04BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E4AD3000, v6, v7, "Feature is disabled", v8, 2u);
      MEMORY[0x1E6921800](v8, -1, -1);
    }

    sub_1E4B304F4();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }
}

void sub_1E4B35598(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);
  os_unfair_lock_lock((v4 + 96));
  v5 = *(v4 + 48);

  os_unfair_lock_unlock((v4 + 96));
  if (v5)
  {
    goto LABEL_2;
  }

  sub_1E4B35420(v13);
  if (!v2)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v7 = *(*v6 + 48);
    v8 = *(*v6 + 56);
    __swift_project_boxed_opaque_existential_1((*v6 + 24), v7);
    v9 = *(v8 + 40);
    v10 = sub_1E4B3A788();
    v9(&v12, v10, &type metadata for ServiceStatusRequest, v10, v7, v8);
    v5 = v12;
    v11 = __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock((v4 + 96));
    sub_1E4B3A7DC(v4 + 16);
    os_unfair_lock_unlock((v4 + 96));
LABEL_2:
    *a1 = v5;
  }
}

uint64_t sub_1E4B356FC()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF94640);
  v1 = __swift_project_value_buffer(v0, qword_1ECF94640);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1E4B357D8()
{
  v1 = 0x5364696C61766E69;
  v2 = 0x4164696C61766E69;
  if (*v0 != 2)
  {
    v2 = 0x6C616E7265746E69;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1E4B3587C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B3A0B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B358A4(uint64_t a1)
{
  v2 = sub_1E4B390B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B358E0(uint64_t a1)
{
  v2 = sub_1E4B390B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B3591C(uint64_t a1)
{
  v2 = sub_1E4B3910C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B35958(uint64_t a1)
{
  v2 = sub_1E4B3910C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B35994(uint64_t a1)
{
  v2 = sub_1E4B39160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B359D0(uint64_t a1)
{
  v2 = sub_1E4B39160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B35A0C(uint64_t a1)
{
  v2 = sub_1E4B391B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B35A48(uint64_t a1)
{
  v2 = sub_1E4B391B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B35A84(uint64_t a1)
{
  v2 = sub_1E4B39208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B35AC0(uint64_t a1)
{
  v2 = sub_1E4B39208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TelephonyMessagingSession.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t TelephonyMessagingSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_id;
  v4 = sub_1E4BEFAFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E4B35BE8()
{
  v7[3] = &type metadata for MessagingClientProvider;
  v7[4] = &off_1F5EB6B98;
  v6[3] = &type metadata for FeatureFlagProvider;
  v6[4] = &off_1F5EAD208;
  v0 = type metadata accessor for TelephonyMessagingSession();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for MessagingClientProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v6, &type metadata for FeatureFlagProvider);
  v4 = sub_1E4B39A48(v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  qword_1ECF94658 = v4;
  return result;
}

uint64_t static TelephonyMessagingSession.shared.getter()
{
  if (qword_1ECF923E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1E4B35CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4B3A898(a1 + 40, &v7);
  if (v8)
  {
    return sub_1E4ADB544(&v7, a2);
  }

  sub_1E4AE0AE4(&v7, &qword_1ECF94870, &unk_1E4C05E30);
  result = sub_1E4B7BEB4();
  if (!v2)
  {
    v6 = result;
    v8 = type metadata accessor for Messaging.Client();
    v9 = &off_1F5EB64B8;
    *&v7 = v6;
    sub_1E4B39CCC(v6);
    sub_1E4AE0AE4(a1 + 40, &qword_1ECF94870, &unk_1E4C05E30);
    sub_1E4B14334(&v7, a1 + 40);
    return sub_1E4ADB544(&v7, a2);
  }

  return result;
}

uint64_t sub_1E4B35DD0(int64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1;
    sub_1E4B35E3C(&v3);
  }

  return result;
}

void sub_1E4B35E3C(int64_t *a1)
{
  v1 = *a1;
  if (qword_1ECF923D8 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v2 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v2, qword_1ECF94640);
    v3 = sub_1E4BEFB5C();
    v4 = sub_1E4BF04BC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1E4AD3000, v3, v4, "Received service status notification", v5, 2u);
      MEMORY[0x1E6921800](v5, -1, -1);
    }

    v6 = *(v74 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);
    os_unfair_lock_lock((v6 + 96));
    v84 = *(v6 + 40);

    os_unfair_lock_unlock((v6 + 96));
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v6 + 96));
    sub_1E4B3ABDC(v6 + 16, &v95);
    os_unfair_lock_unlock((v6 + 96));
    v80 = v95;
    if (!v95)
    {
      break;
    }

    if (!v1)
    {
      v8 = v95;
      goto LABEL_11;
    }

    swift_bridgeObjectRetain_n();
    v8 = v80;
    swift_bridgeObjectRetain_n();
    v9 = sub_1E4B8CD68(v80, v1);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v10 = v84;
    if (v9)
    {
      goto LABEL_73;
    }

LABEL_12:
    v75 = v1 + 64;
    v11 = 1 << *(v1 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v1 + 64);
    v70 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_cellularServiceStateNotificationManager;
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    v76 = v1;
    v82 = v8;
    v73 = v14;
LABEL_16:
    if (v13)
    {
LABEL_21:
      v17 = __clz(__rbit64(v13)) | (v15 << 6);
      v89 = *(*(v1 + 48) + v17);
      v18 = (*(v1 + 56) + 32 * v17);
      v19 = v18[2];
      v94 = v18[3];
      v83 = *v18;
      v81 = v18[1];
      if (v80 && *(v8 + 16) && (v20 = sub_1E4B8DB94(v89), (v21 & 1) != 0))
      {
        v22 = (*(v8 + 56) + 32 * v20);
        v77 = *v22;
        v78 = v22[1];
        v23 = v22[3];
        v87 = v22[2];

        v86 = v23;
      }

      else
      {
        v77 = 0;
        v78 = 0;
        v86 = 0;
        v87 = 0;
      }

      v13 &= v13 - 1;
      v24 = 1 << *(v94 + 32);
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(v94 + 64);
      v1 = (v24 + 63) >> 6;
      v88 = v19;

      swift_bridgeObjectRetain_n();
      v27 = 0;
      if (v89)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      v79 = v28;
LABEL_34:
      v29 = v87;
      while (v26)
      {
        v30 = v26;
LABEL_42:
        v26 = (v30 - 1) & v30;
        if (*(v10 + 16))
        {
          v33 = __clz(__rbit64(v30)) | (v27 << 6);
          v34 = *(*(v94 + 48) + v33);
          v92 = *(*(v94 + 56) + v33);
          v35 = sub_1E4B8EFCC(v34);
          if (v36)
          {
            v37 = *(v10 + 56) + 16 * v35;
            v85 = *v37;
            v90 = *(v37 + 8);
            if (!v29 || !*(v86 + 16) || (v38 = sub_1E4B8EFCC(v34), (v39 & 1) == 0) || *(*(v86 + 56) + v38) != v92)
            {

              v48 = sub_1E4BEFB5C();
              v49 = sub_1E4BF04CC();
              if (os_log_type_enabled(v48, v49))
              {
                v50 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                v97 = v72;
                *v50 = 136315394;
                v71 = v49;
                v51 = sub_1E4B30548(qword_1E4C05E70[v34], 0xE300000000000000, &v97);

                *(v50 + 4) = v51;
                *(v50 + 12) = 2080;
                v95 = 0;
                v96 = 0xE000000000000000;
                sub_1E4BF069C();
                MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F78, &unk_1E4C05E60);
                v52 = swift_allocObject();
                *(v52 + 16) = xmmword_1E4BFCCE0;
                *(v52 + 56) = MEMORY[0x1E69E6530];
                *(v52 + 64) = MEMORY[0x1E69E65A8];
                *(v52 + 32) = v79;
                v53 = sub_1E4BEFECC();
                MEMORY[0x1E69205B0](v53);

                MEMORY[0x1E69205B0](41, 0xE100000000000000);
                v54 = sub_1E4B30548(v95, v96, &v97);

                *(v50 + 14) = v54;
                _os_log_impl(&dword_1E4AD3000, v48, v71, "Notifying handler for %s/%s", v50, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1E6921800](v72, -1, -1);
                v55 = v50;
                v10 = v84;
                MEMORY[0x1E6921800](v55, -1, -1);
              }

              LOBYTE(v95) = v89;
              LOBYTE(v97) = v92;
              v85(&v95, &v97);

              goto LABEL_34;
            }

            v40 = sub_1E4BEFB5C();
            v41 = sub_1E4BF04CC();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v97 = v93;
              *v42 = 136315394;
              v91 = v41;
              v43 = sub_1E4B30548(qword_1E4C05E70[v34], 0xE300000000000000, &v97);

              *(v42 + 4) = v43;
              *(v42 + 12) = 2080;
              v95 = 0;
              v96 = 0xE000000000000000;
              sub_1E4BF069C();
              MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F78, &unk_1E4C05E60);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1E4BFCCE0;
              *(v44 + 56) = MEMORY[0x1E69E6530];
              *(v44 + 64) = MEMORY[0x1E69E65A8];
              *(v44 + 32) = v79;
              v45 = sub_1E4BEFECC();
              MEMORY[0x1E69205B0](v45);

              MEMORY[0x1E69205B0](41, 0xE100000000000000);
              v46 = sub_1E4B30548(v95, v96, &v97);

              *(v42 + 14) = v46;
              _os_log_impl(&dword_1E4AD3000, v40, v91, "Skipping notification for %s/%s since there was no change", v42, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E6921800](v93, -1, -1);
              v47 = v42;
              v29 = v87;
              MEMORY[0x1E6921800](v47, -1, -1);
            }

            v10 = v84;
          }
        }
      }

      v31 = v88;
      while (1)
      {
        v32 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v32 >= v1)
        {

          if (v29)
          {

            sub_1E4B3AC08(v77, v78, v29);
            v1 = v76;
            v8 = v82;
            if (v88)
            {
              if (v83 == v77)
              {
                if (v78 == v81 && v29 == v88)
                {

                  goto LABEL_71;
                }

                v66 = sub_1E4BF099C();

                if (v66)
                {
LABEL_71:

                  v10 = v84;
                  goto LABEL_68;
                }

LABEL_63:

                v56 = sub_1E4BEFB5C();
                v57 = sub_1E4BF04CC();

                if (os_log_type_enabled(v56, v57))
                {
                  v58 = swift_slowAlloc();
                  v59 = swift_slowAlloc();
                  *v58 = 136315394;
                  v95 = 0;
                  v96 = 0xE000000000000000;
                  v97 = v59;
                  sub_1E4BF069C();
                  MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
                  v60 = v83;
                  sub_1E4AEC058(v83);
                  MEMORY[0x1E69205B0](41, 0xE100000000000000);
                  v61 = sub_1E4B30548(v95, v96, &v97);

                  *(v58 + 4) = v61;
                  v31 = v88;
                  *(v58 + 12) = 2080;

                  v62 = v81;
                  v63 = sub_1E4B30548(v81, v88, &v97);

                  *(v58 + 14) = v63;
                  _os_log_impl(&dword_1E4AD3000, v56, v57, "Notifying of cellular service state change: %s/%s", v58, 0x16u);
                  swift_arrayDestroy();
                  v64 = v59;
                  v1 = v76;
                  MEMORY[0x1E6921800](v64, -1, -1);
                  MEMORY[0x1E6921800](v58, -1, -1);

                  v10 = v84;
                }

                else
                {

                  v10 = v84;
                  v60 = v83;
                  v62 = v81;
                }

                v8 = v82;
                v65 = *(v74 + v70);

                sub_1E4B74F94(v60, v62, v31);

LABEL_67:
                swift_bridgeObjectRelease_n();
LABEL_68:
                v14 = v73;
                goto LABEL_16;
              }

LABEL_62:

              goto LABEL_63;
            }
          }

          else
          {
            v1 = v76;
            v8 = v82;
            if (!v88)
            {

              goto LABEL_67;
            }
          }

          goto LABEL_62;
        }

        v30 = *(v94 + 64 + 8 * v32);
        ++v27;
        if (v30)
        {
          v27 = v32;
          goto LABEL_42;
        }
      }

      __break(1u);
    }

    else
    {
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          return;
        }

        v13 = *(v75 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_21;
        }
      }
    }

    __break(1u);
LABEL_78:
    swift_once();
  }

  if (v1)
  {
    v8 = 0;
LABEL_11:
    v10 = v84;

    goto LABEL_12;
  }

LABEL_73:

  v67 = sub_1E4BEFB5C();
  v68 = sub_1E4BF04CC();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_1E4AD3000, v67, v68, "No change in service status notification", v69, 2u);
    MEMORY[0x1E6921800](v69, -1, -1);
  }
}

uint64_t sub_1E4B36A38()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4B36A90();
  }

  return result;
}

void sub_1E4B36A90()
{
  v1 = v0;
  if (qword_1ECF923D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1ECF94640);
  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E4AD3000, v3, v4, "Reconnected, clearing service status cache", v5, 2u);
    MEMORY[0x1E6921800](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);
  os_unfair_lock_lock((v6 + 96));
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;

  os_unfair_lock_unlock((v6 + 96));
}

void TelephonyMessagingSession.cellularServices.getter()
{
  sub_1E4B35598(&v2);
  if (!v0)
  {

    sub_1E4B38DD4(v1);
    swift_bridgeObjectRelease_n();
  }
}

uint64_t TelephonyMessagingSession.smsService.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);
  os_unfair_lock_lock((v1 + 96));
  sub_1E4B39010((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 96));
  return v3;
}

uint64_t sub_1E4B36C84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for SMSService();
    swift_allocObject();
    v5 = sub_1E4BC326C();
    *a1 = v5;
  }

  *a2 = v5;
}

uint64_t TelephonyMessagingSession.mmsService.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);
  os_unfair_lock_lock(v1 + 24);
  sub_1E4B3902C(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 24);
  return v3;
}

uint64_t sub_1E4B36D60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for MMSService();
    swift_allocObject();
    v5 = sub_1E4B333B4();
    *(a1 + 8) = v5;
  }

  *a2 = v5;
}

uint64_t TelephonyMessagingSession.rcsService.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);
  os_unfair_lock_lock(v1 + 24);
  sub_1E4B39048(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 24);
  return v3;
}

uint64_t sub_1E4B36E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v10[3] = &type metadata for RCSService.DependencyProvider;
    v10[4] = &off_1F5EBAB40;
    type metadata accessor for RCSService();
    v8 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v10, &type metadata for RCSService.DependencyProvider);
    v6 = sub_1E4B3A240(a2, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    *(a1 + 16) = v6;
  }

  *a3 = v6;
}

uint64_t TelephonyMessagingSession.isConfiguredForCarrierMessaging.getter()
{
  sub_1E4B35420(v8);
  v0 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  v3 = *(v2 + 40);
  v4 = sub_1E4B39064();
  v3(&v7, v4, &type metadata for CarrierMessagingCapabilityRequest, v4, v1, v2);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t TelephonyMessagingSession.deinit()
{
  v1 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_id;
  v2 = sub_1E4BEFAFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_clientProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_featureFlagProvider));
  v3 = *(v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);

  v4 = *(v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_cellularServiceStateNotificationManager);

  return v0;
}

uint64_t TelephonyMessagingSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_id;
  v2 = sub_1E4BEFAFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_clientProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_featureFlagProvider));
  v3 = *(v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);

  v4 = *(v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_cellularServiceStateNotificationManager);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E4B37268@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_id;
  v5 = sub_1E4BEFAFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t TelephonyMessagingSession.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94680, &qword_1E4C05668);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94688, &qword_1E4C05670);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94690, &qword_1E4C05678);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94698, &qword_1E4C05680);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946A0, &qword_1E4C05688);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B390B8();
  sub_1E4BF0ACC();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1E4B39160();
      v24 = v33;
      sub_1E4BF08BC();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1E4B3910C();
      v24 = v36;
      sub_1E4BF08BC();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1E4B391B4();
    v24 = v30;
    sub_1E4BF08BC();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1E4B39208();
  sub_1E4BF08BC();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t TelephonyMessagingSession.Error.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946D0, &qword_1E4C05690);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946D8, &qword_1E4C05698);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946E0, &qword_1E4C056A0);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946E8, &qword_1E4C056A8);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946F0, &unk_1E4C056B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E4B390B8();
  v21 = v53;
  sub_1E4BF0ABC();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1E4BF088C();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1E4AE0F20();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1E4BF06EC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v34 = &type metadata for TelephonyMessagingSession.Error;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1E4B391B4();
        v39 = v42;
        sub_1E4BF07EC();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1E4B39208();
        v31 = v42;
        sub_1E4BF07EC();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1E4B39160();
      v38 = v42;
      sub_1E4BF07EC();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1E4B3910C();
      v40 = v42;
      sub_1E4BF07EC();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

void sub_1E4B37DA8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1ECF923E8 != -1)
    {
      swift_once();
    }

    v3 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v3, qword_1ECF95E30);
    v4 = sub_1E4BEFB5C();
    v5 = sub_1E4BF04BC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = sub_1E4BEFEFC();
      v10 = sub_1E4B30548(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1E4AD3000, v4, v5, "Received message %s before client has started listening for it, pending.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E6921800](v7, -1, -1);
      MEMORY[0x1E6921800](v6, -1, -1);
    }

    v11 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v12);

    os_unfair_lock_lock(v11 + 26);
    sub_1E4B3A980(&v11[4]);
    if (v0)
    {
      os_unfair_lock_unlock(v11 + 26);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v11 + 26);
    }
  }
}

void sub_1E4B37FB4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1ECF923E8 != -1)
    {
      swift_once();
    }

    v3 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v3, qword_1ECF95E30);
    v4 = sub_1E4BEFB5C();
    v5 = sub_1E4BF04BC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = sub_1E4BEFEFC();
      v10 = sub_1E4B30548(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1E4AD3000, v4, v5, "Received message %s before client has started listening for it, pending.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E6921800](v7, -1, -1);
      MEMORY[0x1E6921800](v6, -1, -1);
    }

    v11 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v12);

    os_unfair_lock_lock(v11 + 26);
    sub_1E4B3AAF4(&v11[4]);
    if (v0)
    {
      os_unfair_lock_unlock(v11 + 26);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v11 + 26);
    }
  }
}

void sub_1E4B381C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1ECF923E8 != -1)
    {
      swift_once();
    }

    v3 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v3, qword_1ECF95E30);
    v4 = sub_1E4BEFB5C();
    v5 = sub_1E4BF04BC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = sub_1E4BEFEFC();
      v10 = sub_1E4B30548(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1E4AD3000, v4, v5, "Received message %s before client has started listening for it, pending.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E6921800](v7, -1, -1);
      MEMORY[0x1E6921800](v6, -1, -1);
    }

    v11 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v12);

    os_unfair_lock_lock(v11 + 26);
    sub_1E4B3AB10(&v11[4]);
    if (v0)
    {
      os_unfair_lock_unlock(v11 + 26);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v11 + 26);
    }
  }
}

uint64_t sub_1E4B383CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94890, &qword_1E4C0E8D0) + 40);
  v32[3] = type metadata accessor for MMSReceivedNotification();
  v32[4] = sub_1E4B3AB2C(&qword_1ECF94898, type metadata accessor for MMSReceivedNotification);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_1E4B3AB74(a2 + v9, boxed_opaque_existential_1, type metadata accessor for MMSReceivedNotification);
  v31[0] = 4;
  v12 = *(a1 + 80);
  v11 = (a1 + 80);
  v13 = *(v12 + 16);
  sub_1E4B3AA00(v31, v30);
  sub_1E4BEFAAC();
  v29 = v8;
  v14 = sub_1E4B3EC34(sub_1E4B3AA5C);
  sub_1E4B7AAEC(v13, v13, v14);

  sub_1E4AE0AE4(v30, &qword_1ECF948A0, &unk_1E4C05E40);
  v15 = *(v5 + 8);
  v15(v8, v4);
  sub_1E4BEFAAC();
  v16 = *(*v11 + 16);
  v17 = *(v11 - 7);
  v27 = v8;
  v28 = v17;
  v18 = sub_1E4B7A308(sub_1E4B3AA7C, v26);
  v19 = *(*v11 + 16);
  if (v19 < v18)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1E4B7AAC4(v18, v19);
  v20 = *v11;
  v16 -= *(v20 + 16);
  v15(v8, v4);
  if (v16 < 1)
  {
    return sub_1E4B3AAA0(v31);
  }

  v8 = *(v20 + 16);
  if (qword_1ECF923E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v21 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v21, qword_1ECF95E30);
  v22 = sub_1E4BEFB5C();
  v23 = sub_1E4BF04BC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = v16;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v8;
    _os_log_impl(&dword_1E4AD3000, v22, v23, "Removed %ld expired messages, remaining: %ld", v24, 0x16u);
    MEMORY[0x1E6921800](v24, -1, -1);
  }

  return sub_1E4B3AAA0(v31);
}

uint64_t sub_1E4B38724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948A8, &unk_1E4C05E50) + 40);
  v32[3] = type metadata accessor for SMSReceivedNotification();
  v32[4] = sub_1E4B3AB2C(&qword_1ECF948B0, type metadata accessor for SMSReceivedNotification);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_1E4B3AB74(a2 + v9, boxed_opaque_existential_1, type metadata accessor for SMSReceivedNotification);
  v31[0] = 3;
  v12 = *(a1 + 80);
  v11 = (a1 + 80);
  v13 = *(v12 + 16);
  sub_1E4B3AA00(v31, v30);
  sub_1E4BEFAAC();
  v29 = v8;
  v14 = sub_1E4B3EC34(sub_1E4B3AC6C);
  sub_1E4B7AAEC(v13, v13, v14);

  sub_1E4AE0AE4(v30, &qword_1ECF948A0, &unk_1E4C05E40);
  v15 = *(v5 + 8);
  v15(v8, v4);
  sub_1E4BEFAAC();
  v16 = *(*v11 + 16);
  v17 = *(v11 - 7);
  v27 = v8;
  v28 = v17;
  v18 = sub_1E4B7A308(sub_1E4B3AC50, v26);
  v19 = *(*v11 + 16);
  if (v19 < v18)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1E4B7AAC4(v18, v19);
  v20 = *v11;
  v16 -= *(v20 + 16);
  v15(v8, v4);
  if (v16 < 1)
  {
    return sub_1E4B3AAA0(v31);
  }

  v8 = *(v20 + 16);
  if (qword_1ECF923E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v21 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v21, qword_1ECF95E30);
  v22 = sub_1E4BEFB5C();
  v23 = sub_1E4BF04BC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = v16;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v8;
    _os_log_impl(&dword_1E4AD3000, v22, v23, "Removed %ld expired messages, remaining: %ld", v24, 0x16u);
    MEMORY[0x1E6921800](v24, -1, -1);
  }

  return sub_1E4B3AAA0(v31);
}

uint64_t sub_1E4B38A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948B8, &qword_1E4C0E7B0) + 40);
  v32[3] = type metadata accessor for RCSReceivedNotification();
  v32[4] = sub_1E4B3AB2C(&qword_1ECF948C0, type metadata accessor for RCSReceivedNotification);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_1E4B3AB74(a2 + v9, boxed_opaque_existential_1, type metadata accessor for RCSReceivedNotification);
  v31[0] = 10;
  v12 = *(a1 + 80);
  v11 = (a1 + 80);
  v13 = *(v12 + 16);
  sub_1E4B3AA00(v31, v30);
  sub_1E4BEFAAC();
  v29 = v8;
  v14 = sub_1E4B3EC34(sub_1E4B3AC6C);
  sub_1E4B7AAEC(v13, v13, v14);

  sub_1E4AE0AE4(v30, &qword_1ECF948A0, &unk_1E4C05E40);
  v15 = *(v5 + 8);
  v15(v8, v4);
  sub_1E4BEFAAC();
  v16 = *(*v11 + 16);
  v17 = *(v11 - 7);
  v27 = v8;
  v28 = v17;
  v18 = sub_1E4B7A308(sub_1E4B3AC50, v26);
  v19 = *(*v11 + 16);
  if (v19 < v18)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1E4B7AAC4(v18, v19);
  v20 = *v11;
  v16 -= *(v20 + 16);
  v15(v8, v4);
  if (v16 < 1)
  {
    return sub_1E4B3AAA0(v31);
  }

  v8 = *(v20 + 16);
  if (qword_1ECF923E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v21 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v21, qword_1ECF95E30);
  v22 = sub_1E4BEFB5C();
  v23 = sub_1E4BF04BC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = v16;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v8;
    _os_log_impl(&dword_1E4AD3000, v22, v23, "Removed %ld expired messages, remaining: %ld", v24, 0x16u);
    MEMORY[0x1E6921800](v24, -1, -1);
  }

  return sub_1E4B3AAA0(v31);
}

uint64_t sub_1E4B38DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1E4BB0994(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1E4BF05DC();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = *(a1 + 56) + 32 * v7;
    v26 = *v11;
    v12 = *(v11 + 16);
    v25 = *(v11 + 8);
    v13 = *(v27 + 16);
    v14 = *(v27 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1E4BB0994((v14 > 1), v13 + 1, 1);
    }

    *(v27 + 16) = v13 + 1;
    v15 = v27 + 24 * v13;
    *(v15 + 32) = v26;
    *(v15 + 40) = v25;
    *(v15 + 48) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1E4B3A77C(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1E4B3A77C(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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

unint64_t sub_1E4B39064()
{
  result = qword_1EE2BECA0;
  if (!qword_1EE2BECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BECA0);
  }

  return result;
}

unint64_t sub_1E4B390B8()
{
  result = qword_1ECF946A8;
  if (!qword_1ECF946A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946A8);
  }

  return result;
}

unint64_t sub_1E4B3910C()
{
  result = qword_1ECF946B0;
  if (!qword_1ECF946B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946B0);
  }

  return result;
}

unint64_t sub_1E4B39160()
{
  result = qword_1ECF946B8;
  if (!qword_1ECF946B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946B8);
  }

  return result;
}

unint64_t sub_1E4B391B4()
{
  result = qword_1ECF946C0;
  if (!qword_1ECF946C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946C0);
  }

  return result;
}

unint64_t sub_1E4B39208()
{
  result = qword_1ECF946C8;
  if (!qword_1ECF946C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946C8);
  }

  return result;
}

unint64_t sub_1E4B39260()
{
  result = qword_1ECF946F8;
  if (!qword_1ECF946F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946F8);
  }

  return result;
}

unint64_t sub_1E4B39300(void *a1)
{
  a1[1] = sub_1E4B39338();
  a1[2] = sub_1E4B3938C();
  result = sub_1E4B304F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1E4B39338()
{
  result = qword_1ECF94708;
  if (!qword_1ECF94708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94708);
  }

  return result;
}

unint64_t sub_1E4B3938C()
{
  result = qword_1ECF94710;
  if (!qword_1ECF94710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94710);
  }

  return result;
}

uint64_t type metadata accessor for TelephonyMessagingSession()
{
  result = qword_1ECF94718;
  if (!qword_1ECF94718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4B39434()
{
  result = sub_1E4BEFAFC();
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

unint64_t sub_1E4B39508()
{
  result = qword_1ECF94728;
  if (!qword_1ECF94728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF945C0, &qword_1E4C058C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94728);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21TelephonyMessagingKit0B0O14ClientProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E4B39584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B395CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E4B39684()
{
  result = qword_1ECF94730;
  if (!qword_1ECF94730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94730);
  }

  return result;
}

unint64_t sub_1E4B396DC()
{
  result = qword_1ECF94738;
  if (!qword_1ECF94738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94738);
  }

  return result;
}

unint64_t sub_1E4B39734()
{
  result = qword_1ECF94740;
  if (!qword_1ECF94740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94740);
  }

  return result;
}

unint64_t sub_1E4B3978C()
{
  result = qword_1ECF94748;
  if (!qword_1ECF94748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94748);
  }

  return result;
}

unint64_t sub_1E4B397E4()
{
  result = qword_1ECF94750;
  if (!qword_1ECF94750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94750);
  }

  return result;
}

unint64_t sub_1E4B3983C()
{
  result = qword_1ECF94758;
  if (!qword_1ECF94758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94758);
  }

  return result;
}

unint64_t sub_1E4B39894()
{
  result = qword_1ECF94760;
  if (!qword_1ECF94760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94760);
  }

  return result;
}

unint64_t sub_1E4B398EC()
{
  result = qword_1ECF94768;
  if (!qword_1ECF94768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94768);
  }

  return result;
}

unint64_t sub_1E4B39944()
{
  result = qword_1ECF94770;
  if (!qword_1ECF94770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94770);
  }

  return result;
}

unint64_t sub_1E4B3999C()
{
  result = qword_1ECF94778;
  if (!qword_1ECF94778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94778);
  }

  return result;
}

unint64_t sub_1E4B399F4()
{
  result = qword_1ECF94780;
  if (!qword_1ECF94780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94780);
  }

  return result;
}

uint64_t sub_1E4B39A48(uint64_t a1)
{
  v2 = sub_1E4BEFAFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = &type metadata for MessagingClientProvider;
  v14[4] = &off_1F5EB6B98;
  v13[3] = &type metadata for FeatureFlagProvider;
  v13[4] = &off_1F5EAD208;
  v7 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_cellularServiceStateNotificationManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94850, &qword_1E4C05E18);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94858, &qword_1E4C05E20);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = v9;
  *(a1 + v7) = v8;
  sub_1E4BEFAEC();
  (*(v3 + 32))(a1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_id, v6, v2);
  sub_1E4B14334(v14, a1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_clientProvider);
  sub_1E4B14334(v13, a1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_featureFlagProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94860, &qword_1E4C05E28);
  v10 = swift_allocObject();
  *(v10 + 96) = 0;
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = MEMORY[0x1E69E7CC8];
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(a1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state) = v10;
  return a1;
}

uint64_t sub_1E4B39C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4B3AA00(a1, a3);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EB8, &qword_1E4C063F0) + 28);
  v6 = sub_1E4BEFABC();
  return (*(*(v6 - 8) + 16))(a3 + v5, a2, v6);
}

uint64_t sub_1E4B39CCC(uint64_t a1)
{
  v30 = type metadata accessor for Messaging.Client();
  v31 = &off_1F5EB64B8;
  v29[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *v2;

  sub_1E4B7C29C(v4, v3);

  v5 = __swift_project_boxed_opaque_existential_1(v29, v30);
  swift_allocObject();
  swift_weakInit();
  v6 = *(*v5 + 16);

  os_unfair_lock_lock(v6 + 26);
  sub_1E4B3A910(&v6[4]);
  os_unfair_lock_unlock(v6 + 26);

  v7 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v8 = *(*v7 + 48);
  v9 = *(*v7 + 56);
  __swift_project_boxed_opaque_existential_1((*v7 + 24), v8);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v9 + 72);
  v12 = type metadata accessor for RCSReceivedNotification();
  v13 = sub_1E4B3AB2C(&qword_1ECF94878, type metadata accessor for RCSReceivedNotification);

  v11(sub_1E4B3A92C, v10, v12, v13, v8, v9);

  v14 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v15 = *(*v14 + 48);
  v16 = *(*v14 + 56);
  __swift_project_boxed_opaque_existential_1((*v14 + 24), v15);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = *(v16 + 72);
  v19 = type metadata accessor for SMSReceivedNotification();
  v20 = sub_1E4B3AB2C(&qword_1ECF94880, type metadata accessor for SMSReceivedNotification);

  v18(sub_1E4B3A948, v17, v19, v20, v15, v16);

  v21 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v22 = *(*v21 + 48);
  v23 = *(*v21 + 56);
  __swift_project_boxed_opaque_existential_1((*v21 + 24), v22);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = *(v23 + 72);
  v26 = type metadata accessor for MMSReceivedNotification();
  v27 = sub_1E4B3AB2C(&qword_1ECF94888, type metadata accessor for MMSReceivedNotification);

  v25(sub_1E4B3A964, v24, v26, v27, v22, v23);

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1E4B3A0B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E4BF1BD0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5364696C61766E69 && a2 == 0xEE006E6F69737365 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164696C61766E69 && a2 == 0xEF746E656D756772 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1E4B3A240(uint64_t a1, void *a2)
{
  v35 = &type metadata for RCSService.DependencyProvider;
  v36 = &off_1F5EBAB40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94788, &qword_1E4C05D50);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94790, &qword_1E4C05D58);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  a2[8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94798, &qword_1E4C05D60);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947A0, &qword_1E4C05D68);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v5;
  *(v6 + 16) = v7;
  a2[9] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947A8, &qword_1E4C05D70);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947B0, &qword_1E4C05D78);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v5;
  *(v8 + 16) = v9;
  a2[10] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947B8, &qword_1E4C05D80);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947C0, &qword_1E4C05D88);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v5;
  *(v10 + 16) = v11;
  a2[11] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947C8, &qword_1E4C05D90);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947D0, &qword_1E4C05D98);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  v14 = MEMORY[0x1E69E7CC8];
  *(v13 + 16) = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = v13;
  a2[12] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947D8, &qword_1E4C05DA0);
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947E0, &qword_1E4C05DA8);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v14;
  *(v15 + 16) = v16;
  a2[13] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947E8, &qword_1E4C05DB0);
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947F0, &qword_1E4C05DB8);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v14;
  *(v17 + 16) = v18;
  a2[14] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947F8, &qword_1E4C05DC0);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94800, &qword_1E4C05DC8);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v14;
  *(v19 + 16) = v20;
  a2[15] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94808, &qword_1E4C05DD0);
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94810, &qword_1E4C05DD8);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v14;
  *(v21 + 16) = v22;
  a2[16] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94818, &qword_1E4C05DE0);
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94820, &qword_1E4C05DE8);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = v14;
  *(v23 + 16) = v24;
  a2[17] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94828, &qword_1E4C05DF0);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94830, &qword_1E4C05DF8);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v14;
  *(v25 + 16) = v26;
  a2[18] = v25;
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = v14;
  *(v27 + 16) = v28;
  a2[19] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94838, &qword_1E4C05E00);
  v29 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94840, &qword_1E4C05E08);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 16) = v14;
  *(v29 + 16) = v30;
  a2[20] = v29;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94848, &qword_1E4C05E10);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  sub_1E4B3A720(&v33, v31 + 16);
  a2[2] = v31;
  sub_1E4ADB544(&v34, (a2 + 3));
  return a2;
}

uint64_t sub_1E4B3A77C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1E4B3A788()
{
  result = qword_1EE2BDB38;
  if (!qword_1EE2BDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB38);
  }

  return result;
}

uint64_t sub_1E4B3A7DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 32);

  *(a1 + 32) = v3;
  return result;
}

unint64_t sub_1E4B3A828()
{
  result = qword_1ECF94868;
  if (!qword_1ECF94868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94868);
  }

  return result;
}

uint64_t sub_1E4B3A898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94870, &unk_1E4C05E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1E4B3AB2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4B3AB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B3ABDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = *(v2 + 16);
  *a2 = v3;
}

uint64_t sub_1E4B3AC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

double RCSSendSuggestionResponseRequest.response.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4B3AD98(v1, v7);
  v8 = *v7;
  v9 = v7[40];
  v19 = *(v7 + 3);
  v10 = *(v7 + 8);
  v11 = *(v7 + 9);
  v12 = *(v4 + 40);
  v13 = *(type metadata accessor for RCSService.SuggestionResponse(0) + 32);
  v14 = *(v7 + 8);
  v17 = *(v7 + 24);
  v18 = v14;
  sub_1E4B3B548(&v7[v12], a1 + v13, type metadata accessor for RCSService.Business.Suggestion);
  *a1 = v8;
  v15 = v18;
  *(a1 + 24) = v17;
  *(a1 + 8) = v15;
  *(a1 + 40) = v9;
  result = *&v19;
  *(a1 + 48) = v19;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  return result;
}

uint64_t sub_1E4B3AD98(uint64_t a1, uint64_t a2)
{
  v4 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B3AE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F707365725FLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B3AEA8(uint64_t a1)
{
  v2 = sub_1E4B3B4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B3AEE4(uint64_t a1)
{
  v2 = sub_1E4B3B4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSSendSuggestionResponseRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948C8, &qword_1E4C05E90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B3B4A8();
  sub_1E4BF0ACC();
  _s18SuggestionResponseV21CodableRepresentationVMa(0);
  sub_1E4B3B68C(&qword_1ECF948D8, _s18SuggestionResponseV21CodableRepresentationVMa);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t RCSSendSuggestionResponseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948E0, &qword_1E4C05E98);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RCSSendSuggestionResponseRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B3B4A8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = v19;
    sub_1E4B3B68C(&qword_1ECF948E8, _s18SuggestionResponseV21CodableRepresentationVMa);
    v17 = v21;
    sub_1E4BF087C();
    (*(v20 + 8))(v10, v7);
    sub_1E4B3B548(v17, v14, _s18SuggestionResponseV21CodableRepresentationVMa);
    sub_1E4B3B548(v14, v16, type metadata accessor for RCSSendSuggestionResponseRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B3B330(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948C8, &qword_1E4C05E90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B3B4A8();
  sub_1E4BF0ACC();
  _s18SuggestionResponseV21CodableRepresentationVMa(0);
  sub_1E4B3B68C(&qword_1ECF948D8, _s18SuggestionResponseV21CodableRepresentationVMa);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4B3B4A8()
{
  result = qword_1ECF948D0;
  if (!qword_1ECF948D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF948D0);
  }

  return result;
}

uint64_t type metadata accessor for RCSSendSuggestionResponseRequest()
{
  result = qword_1EE2BD958;
  if (!qword_1EE2BD958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4B3B548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B3B5B0(uint64_t a1)
{
  result = sub_1E4B3B68C(&qword_1EE2BD990, type metadata accessor for RCSSendSuggestionResponseRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4B3B608(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B3B68C(&qword_1EE2BD998, type metadata accessor for RCSSendSuggestionResponseRequest);
  result = sub_1E4B3B68C(&qword_1EE2BD9A0, type metadata accessor for RCSSendSuggestionResponseRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4B3B68C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4B3B6FC()
{
  result = _s18SuggestionResponseV21CodableRepresentationVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4B3B77C()
{
  result = qword_1ECF948F0;
  if (!qword_1ECF948F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF948F0);
  }

  return result;
}

unint64_t sub_1E4B3B7D4()
{
  result = qword_1ECF948F8;
  if (!qword_1ECF948F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF948F8);
  }

  return result;
}

unint64_t sub_1E4B3B82C()
{
  result = qword_1ECF94900;
  if (!qword_1ECF94900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94900);
  }

  return result;
}

uint64_t sub_1E4B3B880()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1EE2BD8A0);
  v1 = __swift_project_value_buffer(v0, qword_1EE2BD8A0);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1E4B3B9B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1E4B3B9E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1E4B3BA10@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1E4B3BAE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t Messaging.Server.__allocating_init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94908, &qword_1E4C06090);
  v1 = swift_allocObject();
  v2 = sub_1E4B0E634(0xD00000000000001CLL, 0x80000001E4BF1BF0);
  if (!v0)
  {
    v7 = &type metadata for DefaultNotifyProvider;
    v8 = &off_1F5EB8FD8;
    v9 = &type metadata for OSVariantProvider;
    v10 = &off_1F5EB9B50;
    v11 = &type metadata for FeatureFlagProvider;
    v12 = &off_1F5EAD208;
    v13 = &type metadata for TimeProvider;
    v14 = &off_1F5EB9B80;
    v3 = v2;
    sub_1E4B3EBA0(v6, v5);
    swift_allocObject();
    v1 = sub_1E4B40B8C(v3, v5);

    sub_1E4B40DE8(v6);
  }

  return v1;
}

uint64_t sub_1E4B3BC40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_1E4B3BD10(a1);
    v7 = v6;
    v9 = v8;

    if (!v2)
    {
      *a2 = v5;
      a2[1] = v7;
      a2[2] = v9;
    }
  }

  else
  {
    sub_1E4B41F1C();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E4B3BD10(void *a1)
{
  v23[3] = &type metadata for CoreTelephonyFeatureFlag;
  v23[4] = sub_1E4B3A828();
  v4 = sub_1E4BEFB0C();
  __swift_destroy_boxed_opaque_existential_1(v23);
  if ((v4 & 1) == 0)
  {
    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v8 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v8, qword_1EE2BD8A0);
    v9 = sub_1E4BEFB5C();
    v10 = sub_1E4BF04BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E4AD3000, v9, v10, "Rejecting incoming request due to feature being disabled", v11, 2u);
      MEMORY[0x1E6921800](v11, -1, -1);
    }

    sub_1E4B41F1C();
    swift_allocError();
    v13 = 3;
    goto LABEL_11;
  }

  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1E4B35054(*v5, v5[1], v5[2], v5[3]);
  if (!v7)
  {
    sub_1E4B41F1C();
    swift_allocError();
    v13 = 1;
LABEL_11:
    *v12 = v13;
    swift_willThrow();
    return v2;
  }

  v2 = v6;
  sub_1E4B40E90(a1);
  if (v1)
  {
  }

  else
  {
    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v15 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v15, qword_1EE2BD8A0);

    v16 = sub_1E4BEFB5C();
    v17 = sub_1E4BF04CC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v23[0] = v24;
      *v18 = 136315138;
      sub_1E4B42204();
      v19 = sub_1E4BF025C();
      v21 = sub_1E4B30548(v19, v20, v23);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_1E4AD3000, v16, v17, "Incoming request has entitlements: %s", v18, 0xCu);
      v22 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E6921800](v22, -1, -1);
      MEMORY[0x1E6921800](v18, -1, -1);
    }
  }

  return v2;
}

uint64_t sub_1E4B3C028(unint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4B3C088(a1);
  }

  return result;
}

void sub_1E4B3C088(unint64_t a1)
{
  v2 = (a1 + *(*a1 + 112));
  if (v2[1])
  {
    v3 = a1;
    v4 = *v2;
    v5 = v1[23];
    MEMORY[0x1EEE9AC00](a1);

    os_unfair_lock_lock(v5 + 20);
    sub_1E4B42044(v31);
    os_unfair_lock_unlock(v5 + 20);

    v6 = v31[0];
    if (qword_1EE2BD898 != -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v7 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v7, qword_1EE2BD8A0);
      swift_bridgeObjectRetain_n();

      v8 = sub_1E4BEFB5C();
      v9 = sub_1E4BF04BC();

      v30 = v3;
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v31[0] = v11;
        *v10 = 136315394;
        sub_1E4BEFAFC();
        sub_1E4B420B4(&qword_1ECF93B78);
        v12 = sub_1E4BF096C();
        v14 = sub_1E4B30548(v12, v13, v31);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2048;
        v15 = *(v6 + 16);

        *(v10 + 14) = v15;

        _os_log_impl(&dword_1E4AD3000, v8, v9, "New incoming connection: %s, flushing pending messages (%ld)", v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x1E6921800](v11, -1, -1);
        MEMORY[0x1E6921800](v10, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v16 = *(v6 + 16);
      if (!v16)
      {
        break;
      }

      v3 = 0;
      v17 = v6 + 32;
      while (v3 < *(v6 + 16))
      {
        v18 = sub_1E4B41A48(v17, v31);
        v19 = v1[2];
        v20 = MEMORY[0x1EEE9AC00](v18);
        v22 = *(v21 + 32);
        MEMORY[0x1EEE9AC00](v20);
        os_unfair_lock_lock(v22 + 24);
        sub_1E4B422DC(&v22[4]);
        ++v3;
        os_unfair_lock_unlock(v22 + 24);
        sub_1E4B41AA0(v31);
        v17 += 56;
        if (v16 == v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_15:
      swift_once();
    }

LABEL_10:

    v23 = v1[24];
    os_unfair_lock_lock((v23 + 32));
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = *(v23 + 24);
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = v25;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1E4B13604;
      *(v27 + 24) = v26;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1E4B13604;
      *(v28 + 24) = v26;
      *(v23 + 16) = sub_1E4B148C8;
      *(v23 + 24) = v28;

      os_unfair_lock_unlock((v23 + 32));

      v29 = *(v27 + 24);
      (*(v27 + 16))(v30);
      sub_1E4AD651C(sub_1E4B13684);
      sub_1E4AD651C(sub_1E4B13684);
    }

    else
    {
      os_unfair_lock_unlock((v23 + 32));
    }
  }
}

uint64_t Messaging.Server.setIncomingMessageValidationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[2];
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v5;
  v9 = *(v6 + 32);

  os_unfair_lock_lock(v9 + 24);
  sub_1E4B40E38(&v9[4]);
  os_unfair_lock_unlock(v9 + 24);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Messaging.Server.start()()
{
  v2 = v0;
  if (qword_1EE2BD898 != -1)
  {
    swift_once();
  }

  v3 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v3, qword_1EE2BD8A0);
  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "Starting server", v6, 2u);
    MEMORY[0x1E6921800](v6, -1, -1);
  }

  v7 = *(v2 + 16);
  sub_1E4B0E3F4();
  if (!v1)
  {
    sub_1E4B410F8();
  }
}

uint64_t Messaging.Server.setIncomingMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1E4B3C8A0(a1, a2, a3, a4, &unk_1F5EB2120, sub_1E4B41304, sub_1E4B6D168);
}

{
  return sub_1E4B3C8A0(a1, a2, a3, a4, &unk_1F5EB2148, &unk_1E4C060A0, sub_1E4B6D180);
}

{
  return sub_1E4B3C8A0(a1, a2, a3, a4, &unk_1F5EB2170, sub_1E4B422C0, sub_1E4B6D198);
}

{
  return sub_1E4B3C8A0(a1, a2, a3, a4, &unk_1F5EB2198, &unk_1E4C060B0, sub_1E4B6D1B0);
}

uint64_t sub_1E4B3C744(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4B33678;

  return v7(a1);
}

uint64_t sub_1E4B3C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void *, uint64_t, uint64_t))
{
  v14 = *(v7 + 16);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  v16 = *(a4 + 8);

  a7(a6, v15, a3, v16);
}

uint64_t sub_1E4B3C944(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4B34F84;

  return v7(a1);
}

uint64_t sub_1E4B3CA38(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v13[2] = a2;

  v8 = sub_1E4B3CC18(sub_1E4B420F8, v13, a1);
  v9 = sub_1E4BF01FC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1E4B41A48(a2, v14);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v8;
  v11 = v14[1];
  *(v10 + 40) = v14[0];
  *(v10 + 56) = v11;
  *(v10 + 72) = v14[2];
  *(v10 + 88) = v15;
  sub_1E4BA8E24(0, 0, v7, &unk_1E4C063E8, v10);
}

uint64_t sub_1E4B3CB9C(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + *(**a1 + 112));
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  if (*v3 == *(a2 + 40) && v4 == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C() & 1;
  }
}

void *sub_1E4B3CC18(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1E4BF061C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = MEMORY[0x1E6920D00](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1E4BF070C();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          sub_1E4BF073C();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          sub_1E4BF074C();
          v3 = &v22;
          sub_1E4BF071C();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

uint64_t sub_1E4B3CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E4B3CDF4, 0, 0);
}

uint64_t sub_1E4B3CDF4()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v11 = v0[2];
    }

    result = sub_1E4BF061C();
    v0[4] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[4] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[2];
        v0[5] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1E6920D00](0);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[6] = v4;
        v5 = v0[3];
        v6 = v5[3];
        v7 = v5[4];
        v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
        v9 = swift_task_alloc();
        v0[7] = v9;
        v10 = *(v7 + 8);
        *v9 = v0;
        v9[1] = sub_1E4B3CF4C;

        return sub_1E4B8661C(v8, v6, v10);
      }

      return result;
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E4B3CF4C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E4B3D190;
  }

  else
  {
    v3 = sub_1E4B3D060;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4B3D060()
{
  v1 = v0[6];

  v2 = v0[5] + 1;
  if (v2 == v0[4])
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[5] = v2;
    v5 = v0[2];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6920D00]();
    }

    else
    {
      v6 = *(v5 + 8 * v2 + 32);
    }

    v0[6] = v6;
    v7 = v0[3];
    v8 = v7[3];
    v9 = v7[4];
    v10 = __swift_project_boxed_opaque_existential_1(v7, v8);
    v11 = swift_task_alloc();
    v0[7] = v11;
    v12 = *(v9 + 8);
    *v11 = v0;
    v11[1] = sub_1E4B3CF4C;

    return sub_1E4B8661C(v10, v8, v12);
  }
}

uint64_t sub_1E4B3D190()
{
  if (qword_1EE2BD898 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1EE2BD8A0);
  v3 = v1;
  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04DC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v8 = v0[6];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "Failed to send pending message to connection: %@", v9, 0xCu);
    sub_1E4AE0AE4(v10, &qword_1ECF93B50, &qword_1E4C05660);
    MEMORY[0x1E6921800](v10, -1, -1);
    MEMORY[0x1E6921800](v9, -1, -1);
  }

  else
  {
    v13 = v0[6];
  }

  v14 = v0[5] + 1;
  if (v14 == v0[4])
  {
    v15 = v0[1];

    return v15();
  }

  else
  {
    v0[5] = v14;
    v17 = v0[2];
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1E6920D00]();
    }

    else
    {
      v18 = *(v17 + 8 * v14 + 32);
    }

    v0[6] = v18;
    v19 = v0[3];
    v20 = v19[3];
    v21 = v19[4];
    v22 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v23 = swift_task_alloc();
    v0[7] = v23;
    v24 = *(v21 + 8);
    *v23 = v0;
    v23[1] = sub_1E4B3CF4C;

    return sub_1E4B8661C(v22, v20, v24);
  }
}

void Messaging.Server.sendMessage<A>(_:matching:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = *(v4 + 184);
  os_unfair_lock_lock(v6 + 20);
  sub_1E4B3D4DC(&v6[4]);
  os_unfair_lock_unlock(v6 + 20);
  v7 = *(*(v4 + 16) + 32);
  os_unfair_lock_lock(v7 + 24);
  sub_1E4B414B8(&v7[4]);
  os_unfair_lock_unlock(v7 + 24);
}

void sub_1E4B3D4DC(uint64_t a1)
{
  v2 = sub_1E4BEFABC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E4BEFAAC();
  v7 = *(*(a1 + 56) + 16);
  v15 = v6;
  v16 = *a1;
  v8 = sub_1E4B7A760(sub_1E4B41C4C, v14);
  v9 = *(*(a1 + 56) + 16);
  if (v9 < v8)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1E4B7C6FC(v8, v9);
  a1 = v7 - *(*(a1 + 56) + 16);
  (*(v3 + 8))(v6, v2);
  if (a1 < 1)
  {
    return;
  }

  if (qword_1EE2BD898 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v10 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v10, qword_1EE2BD8A0);
  v11 = sub_1E4BEFB5C();
  v12 = sub_1E4BF04BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_1E4AD3000, v11, v12, "Removed %ld expired messages", v13, 0xCu);
    MEMORY[0x1E6921800](v13, -1, -1);
  }
}

uint64_t sub_1E4B3D6E4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = a7;
  v49 = a5;
  v52 = a4;
  v13 = a1;
  v57 = *(a7 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v54 = v15;
  v56 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v55 = &v49 - v18;
  v59 = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
LABEL_22:
    v19 = sub_1E4BF061C();
    v58 = v13;
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = v13;
    if (v19)
    {
LABEL_3:
      v53 = a6;
      v50 = a8;
      v51 = v9;
      a8 = 0;
      a6 = v13 & 0xC000000000000001;
      v9 = v13 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a6)
        {
          v20 = MEMORY[0x1E6920D00](a8, v13);
          v21 = a8 + 1;
          if (__OFADD__(a8, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (a8 >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v20 = *(v13 + 8 * a8 + 32);

          v21 = a8 + 1;
          if (__OFADD__(a8, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v26 = v59;
            a8 = v50;
            v9 = v51;
            a6 = v53;
            if ((v59 & 0x8000000000000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_38;
          }
        }

        v22 = (v20 + *(*v20 + 112));
        v23 = v22[1];
        if (v23 && (*v22 == a2 ? (v24 = v23 == a3) : (v24 = 0), v24 || (sub_1E4BF099C() & 1) != 0))
        {
          sub_1E4BF070C();
          v25 = *(v59 + 16);
          sub_1E4BF073C();
          v13 = v58;
          sub_1E4BF074C();
          sub_1E4BF071C();
        }

        else
        {
        }

        ++a8;
        if (v21 == v19)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_24:
  if ((v26 & 0x4000000000000000) != 0)
  {
LABEL_38:
    if (sub_1E4BF061C())
    {
      goto LABEL_37;
    }
  }

  else if (*(v26 + 16))
  {
    goto LABEL_37;
  }

  if (v52)
  {
    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v53 = a6;
    v31 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v31, qword_1EE2BD8A0);

    v32 = sub_1E4BEFB5C();
    v33 = sub_1E4BF04BC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = a8;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_1E4B30548(a2, a3, &v59);
      _os_log_impl(&dword_1E4AD3000, v32, v33, "There are no client connections matching %s, pending message", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v37 = v36;
      v13 = v58;
      MEMORY[0x1E6921800](v37, -1, -1);
      v38 = v35;
      a8 = v34;
      MEMORY[0x1E6921800](v38, -1, -1);
    }

    v39 = *(v49 + 184);
    MEMORY[0x1EEE9AC00](v40);
    *(&v49 - 6) = v9;
    *(&v49 - 5) = a8;
    v41 = v53;
    *(&v49 - 4) = v53;
    *(&v49 - 3) = a2;
    *(&v49 - 2) = a3;
    os_unfair_lock_lock(v39 + 20);
    sub_1E4B41A24(&v39[4]);
    os_unfair_lock_unlock(v39 + 20);
    a6 = v41;
  }

  else
  {
    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v27 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v27, qword_1EE2BD8A0);
    v28 = sub_1E4BEFB5C();
    v29 = sub_1E4BF04CC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1E4AD3000, v28, v29, "Dropping message since there are no client connections", v30, 2u);
      MEMORY[0x1E6921800](v30, -1, -1);
    }
  }

LABEL_37:
  v42 = sub_1E4BF01FC();
  v43 = v55;
  (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
  v45 = v56;
  v44 = v57;
  (*(v57 + 16))(v56, a6, v9);
  v46 = (*(v44 + 80) + 64) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 4) = v9;
  *(v47 + 5) = a8;
  *(v47 + 6) = v13;
  *(v47 + 7) = v26;
  (*(v44 + 32))(&v47[v46], v45, v9);

  sub_1E4BA8E24(0, 0, v43, &unk_1E4C06398, v47);
}

uint64_t sub_1E4B3DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = sub_1E4BEFABC();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23[3] = a5;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  v23[5] = a3;
  v23[6] = a4;
  v17 = *(*(a1 + 56) + 16);
  sub_1E4B41A48(v23, v22);

  sub_1E4BEFAAC();
  v21 = v15;
  v18 = sub_1E4B3EDB4(sub_1E4B41A80);
  sub_1E4B7C998(v17, v17, v18);

  sub_1E4AE0AE4(v22, &qword_1ECF94938, &unk_1E4C063A0);
  sub_1E4B41AA0(v23);
  return (*(v12 + 8))(v15, v24);
}

uint64_t sub_1E4B3DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E4B3DE7C, 0, 0);
}

uint64_t sub_1E4B3DE7C()
{
  v1 = *(v0 + 10);
  v48 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_26:
    v2 = sub_1E4BF061C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      v1 = *(v0 + 10) + 32;
      v0 = "latitude";
      v46 = v5;
      v47 = v4;
      v45 = v1;
      while (1)
      {
        if (v4)
        {
          v6 = MEMORY[0x1E6920D00](v3, *(v43 + 80));
          v7 = __OFADD__(v3++, 1);
          if (v7)
          {
LABEL_23:
            __break(1u);
LABEL_24:
            v17 = v48;
            v0 = v43;
            goto LABEL_28;
          }
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v6 = *(v1 + 8 * v3);

          v7 = __OFADD__(v3++, 1);
          if (v7)
          {
            goto LABEL_23;
          }
        }

        v8 = v6 + *(*v6 + 112);
        if (*(v8 + 8) && (v9 = *(v8 + 16), *(v9 + 16)))
        {
          v10 = *(v9 + 40);
          sub_1E4BF0A6C();

          sub_1E4BEFF4C();
          v11 = sub_1E4BF0A9C();
          v12 = -1 << *(v9 + 32);
          v13 = v11 & ~v12;
          if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
          {
            v14 = ~v12;
            while (*(*(v9 + 48) + v13) != 1)
            {
              v15 = sub_1E4BF099C();

              if (v15)
              {
                goto LABEL_20;
              }

              v13 = (v13 + 1) & v14;
              if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
              {

                v2 = v44;
                goto LABEL_18;
              }
            }

LABEL_20:
            v2 = v44;
            v5 = v46;
            v4 = v47;

            sub_1E4BF070C();
            v16 = *(v48 + 16);
            sub_1E4BF073C();
            sub_1E4BF074C();
            sub_1E4BF071C();
            v1 = v45;
          }

          else
          {

LABEL_18:
            v5 = v46;
            v4 = v47;
            v1 = v45;
          }
        }

        else
        {
        }

        if (v3 == v2)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v49 = *(v0 + 11);

  sub_1E4B40718(v17);
  v18 = sub_1E4B41AD0(v49);

  if ((v18 & 0xC000000000000001) != 0)
  {
    sub_1E4BF060C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
    sub_1E4B14808(&qword_1ECF94940, &qword_1ECF93B58, &qword_1E4C063B0);
    result = sub_1E4BF027C();
    v18 = *(v0 + 2);
    v20 = *(v0 + 3);
    v21 = *(v0 + 4);
    v22 = *(v0 + 5);
    v23 = *(v0 + 6);
    *(v0 + 16) = v20;
    *(v0 + 17) = v21;
    *(v0 + 15) = v18;
    if (v18 < 0)
    {
      v38 = sub_1E4BF063C();
      if (!v38)
      {
LABEL_46:
        v39 = *(v0 + 16);
        v40 = *(v0 + 17);
        v41 = *(v0 + 15);
        sub_1E4B41C44();
        v42 = *(v0 + 1);

        return v42();
      }

      *(v0 + 9) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
      swift_dynamicCast();
      v32 = *(v0 + 8);
      v28 = v22;
      v31 = v23;
LABEL_40:
      *(v0 + 19) = v28;
      *(v0 + 20) = v31;
      *(v0 + 18) = v32;
      if (v32)
      {
        v33 = *(v0 + 14);
        v34 = swift_task_alloc();
        *(v0 + 21) = v34;
        v35 = *(v33 + 8);
        *v34 = v0;
        v34[1] = sub_1E4B3E3B4;
        v36 = *(v0 + 13);
        v37 = *(v0 + 12);

        return sub_1E4B8661C(v37, v36, v35);
      }

      goto LABEL_46;
    }

    v24 = v21 + 64;
  }

  else
  {
    v22 = 0;
    v25 = -1;
    v26 = -1 << *(v18 + 32);
    v20 = v18 + 56;
    if (-v26 < 64)
    {
      v25 = ~(-1 << -v26);
    }

    v23 = v25 & *(v18 + 56);
    *(v0 + 16) = v20;
    *(v0 + 17) = ~v26;
    *(v0 + 15) = v18;
    v24 = 63 - v26;
  }

  v27 = v23;
  v28 = v22;
  if (v23)
  {
LABEL_39:
    v31 = (v27 - 1) & v27;
    v32 = *(*(v18 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

    goto LABEL_40;
  }

  v29 = v24 >> 6;
  v30 = v22;
  while (1)
  {
    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v28 >= v29)
    {
      goto LABEL_46;
    }

    v27 = *(v20 + 8 * v28);
    ++v30;
    if (v27)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4B3E3B4()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1E4B3E69C;
  }

  else
  {
    v3 = sub_1E4B3E4C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4B3E4C8()
{
  v1 = v0[18];

  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[15];
  if (v5 < 0)
  {
    v11 = sub_1E4BF063C();
    if (!v11)
    {
LABEL_14:
      v17 = v0[16];
      v18 = v0[17];
      v19 = v0[15];
      sub_1E4B41C44();
      v20 = v0[1];

      return v20();
    }

    v0[9] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
    swift_dynamicCast();
    v10 = v0[8];
    v7 = v3;
    v9 = v4;
LABEL_10:
    v0[19] = v7;
    v0[20] = v9;
    v0[18] = v10;
    if (v10)
    {
      v12 = v0[14];
      v13 = swift_task_alloc();
      v0[21] = v13;
      v14 = *(v12 + 8);
      *v13 = v0;
      v13[1] = sub_1E4B3E3B4;
      v16 = v0[12];
      v15 = v0[13];

      return sub_1E4B8661C(v16, v15, v14);
    }

    goto LABEL_14;
  }

  v6 = v0[20];
  v7 = v0[19];
  if (v4)
  {
LABEL_7:
    v9 = (v6 - 1) & v6;
    v10 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v6)))));

    goto LABEL_10;
  }

  v8 = v0[19];
  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= ((v0[17] + 64) >> 6))
    {
      goto LABEL_14;
    }

    v6 = *(v0[16] + 8 * v7);
    ++v8;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4B3E69C()
{
  v1 = *(v0 + 176);
  *(v0 + 56) = v1;
  v2 = v0 + 56;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94948, &unk_1E4C0EF20);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 184) == 2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v17 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v17, qword_1EE2BD8A0);
    v18 = sub_1E4BEFB5C();
    v19 = sub_1E4BF04CC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E4AD3000, v18, v19, "Sent message to connection but client had no handlers", v20, 2u);
      MEMORY[0x1E6921800](v20, -1, -1);
    }

    v21 = *(v0 + 144);

    v22 = *(v0 + 56);
    goto LABEL_14;
  }

  if (qword_1EE2BD898 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v5 = *(v0 + 176);
    v6 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v6, qword_1EE2BD8A0);
    v7 = v5;
    v8 = sub_1E4BEFB5C();
    v9 = sub_1E4BF04DC();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 176);
    v12 = *(v0 + 144);
    if (v10)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v11;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1E4AD3000, v8, v9, "Failed to send message to connection: %@", v13, 0xCu);
      sub_1E4AE0AE4(v14, &qword_1ECF93B50, &qword_1E4C05660);
      MEMORY[0x1E6921800](v14, -1, -1);
      MEMORY[0x1E6921800](v13, -1, -1);
    }

    else
    {
      v23 = *(v0 + 144);

      v22 = v11;
LABEL_14:
    }

    v24 = *(v0 + 152);
    v25 = *(v0 + 160);
    v26 = *(v0 + 120);
    if (v26 < 0)
    {
      break;
    }

    v27 = *(v0 + 160);
    v2 = *(v0 + 152);
    if (v25)
    {
LABEL_21:
      v29 = (v27 - 1) & v27;
      v30 = *(*(v26 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v27)))));

      goto LABEL_24;
    }

    v28 = *(v0 + 152);
    while (1)
    {
      v2 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v2 >= ((*(v0 + 136) + 64) >> 6))
      {
        goto LABEL_28;
      }

      v27 = *(*(v0 + 128) + 8 * v2);
      ++v28;
      if (v27)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v31 = sub_1E4BF063C();
  if (!v31)
  {
    goto LABEL_28;
  }

  *(v2 + 16) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
  swift_dynamicCast();
  v30 = *(v2 + 8);
  v2 = v24;
  v29 = v25;
LABEL_24:
  *(v0 + 152) = v2;
  *(v0 + 160) = v29;
  *(v0 + 144) = v30;
  if (v30)
  {
    v32 = *(v0 + 112);
    v33 = swift_task_alloc();
    *(v0 + 168) = v33;
    v34 = *(v32 + 8);
    *v33 = v0;
    v33[1] = sub_1E4B3E3B4;
    v36 = *(v0 + 96);
    v35 = *(v0 + 104);

    return sub_1E4B8661C(v36, v35, v34);
  }

LABEL_28:
  v38 = *(v0 + 128);
  v39 = *(v0 + 136);
  v40 = *(v0 + 120);
  sub_1E4B41C44();
  v41 = *(v0 + 8);

  return v41();
}

uint64_t *Messaging.Server.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v2 = v0[23];

  v3 = v0[24];

  return v0;
}

uint64_t Messaging.Server.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v2 = v0[23];

  v3 = v0[24];

  return MEMORY[0x1EEE6BDC0](v0, 200, 7);
}

uint64_t sub_1E4B3EBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  result = sub_1E4AD651C(v6);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  return result;
}

uint64_t sub_1E4B3EC34(void (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EB8, &qword_1E4C063F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v13 - v7;
  v14 = MEMORY[0x1E69E7CC0];
  sub_1E4BB0954(0, 1, 0);
  v9 = v14;
  a1(v1);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1E4BB0954(v10 > 1, v11 + 1, 1);
      v9 = v14;
    }

    *(v9 + 16) = v11 + 1;
    sub_1E4AFD6D0(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, &qword_1ECF92EB8, &qword_1E4C063F0);
    return v9;
  }

  return result;
}

uint64_t sub_1E4B3EDB4(void (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F40, &qword_1E4BFDCD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v13 - v7;
  v14 = MEMORY[0x1E69E7CC0];
  sub_1E4BB09B4(0, 1, 0);
  v9 = v14;
  a1(v1);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1E4BB09B4(v10 > 1, v11 + 1, 1);
      v9 = v14;
    }

    *(v9 + 16) = v11 + 1;
    sub_1E4AFD6D0(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, &qword_1ECF92F40, &qword_1E4BFDCD0);
    return v9;
  }

  return result;
}

uint64_t sub_1E4B3EF34(_BYTE *a1, char a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1E4BF0A6C();
  if (a2)
  {
    v6 = 0xD00000000000002BLL;
  }

  else
  {
    v6 = 0xD000000000000029;
  }

  if (a2)
  {
    v7 = "per.carrier-messaging-app";
  }

  else
  {
    v7 = "latitude";
  }

  v8 = v7 | 0x8000000000000000;
  sub_1E4BEFF4C();

  v9 = sub_1E4BF0A9C();
  v10 = -1 << *(v4 + 32);
  v11 = v9 & ~v10;
  if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(v4 + 48) + v11) ? 0xD00000000000002BLL : 0xD000000000000029;
      v14 = *(*(v4 + 48) + v11) ? "per.carrier-messaging-app" : "latitude";
      if (v13 == v6 && (v14 | 0x8000000000000000) == v8)
      {
        break;
      }

      v16 = sub_1E4BF099C();

      if (v16)
      {
        goto LABEL_23;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v19 = *(*(v4 + 48) + v11);
  }

  else
  {
LABEL_21:
    v17 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v19 = a2 & 1;
    sub_1E4B3FBD0(a2 & 1, v11, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = v19;
  return result;
}

uint64_t sub_1E4B3F0F0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1E4BF062C();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_1E4BF061C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = sub_1E4B3F380(v7, result + 1);
        v21 = *(v20 + 16);
        if (*(v20 + 24) <= v21)
        {
          sub_1E4B3F858(v21 + 1);
        }

        sub_1E4B3FAEC(v22, v20);

        *v3 = v20;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_1E4BF0A6C();
    sub_1E4BEFAFC();
    sub_1E4B420B4(&qword_1ECF94700);
    sub_1E4BEFDDC();
    v11 = sub_1E4BF0A9C();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);

        v16 = sub_1E4BEFADC();

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v17 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v3;

      sub_1E4B3FDD0(v19, v13, isUniquelyReferenced_nonNull_native);
      *v3 = v25;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E4B3F380(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94950, &qword_1E4C063B8);
    v2 = sub_1E4BF066C();
    v16 = v2;
    sub_1E4BF060C();
    for (; sub_1E4BF063C(); ++*(v16 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_1E4B3F858(v10 + 1);
      }

      v2 = v16;
      v3 = *(v16 + 40);
      sub_1E4BF0A6C();
      sub_1E4BEFAFC();
      sub_1E4B420B4(&qword_1ECF94700);
      sub_1E4BEFDDC();
      result = sub_1E4BF0A9C();
      v5 = v16 + 56;
      v6 = -1 << *(v16 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v16 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1E4B3F5C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94970, &qword_1E4C063C8);
  result = sub_1E4BF065C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1E4BF0A6C();
      sub_1E4BEFF4C();

      result = sub_1E4BF0A9C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E4B3F858(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94950, &qword_1E4C063B8);
  result = sub_1E4BF065C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1E4BF0A6C();
      sub_1E4BEFAFC();
      sub_1E4B420B4(&qword_1ECF94700);
      sub_1E4BEFDDC();
      result = sub_1E4BF0A9C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1E4B3FAEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1E4BF0A6C();
  sub_1E4BEFAFC();
  sub_1E4B420B4(&qword_1ECF94700);
  sub_1E4BEFDDC();
  sub_1E4BF0A9C();
  v5 = -1 << *(a2 + 32);
  result = sub_1E4BF05FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1E4B3FBD0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v24 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1E4B3F5C8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1E4B3FFB4();
      goto LABEL_28;
    }

    sub_1E4B40244(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1E4BF0A6C();
  if (v5)
  {
    v10 = 0xD00000000000002BLL;
  }

  else
  {
    v10 = 0xD000000000000029;
  }

  if (v5)
  {
    v11 = "per.carrier-messaging-app";
  }

  else
  {
    v11 = "latitude";
  }

  v12 = v11 | 0x8000000000000000;
  sub_1E4BEFF4C();

  result = sub_1E4BF0A9C();
  v13 = -1 << *(v8 + 32);
  a2 = result & ~v13;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = *(*(v8 + 48) + a2) ? 0xD00000000000002BLL : 0xD000000000000029;
      v16 = *(*(v8 + 48) + a2) ? "per.carrier-messaging-app" : "latitude";
      if (v15 == v10 && (v16 | 0x8000000000000000) == v12)
      {
        goto LABEL_31;
      }

      v18 = sub_1E4BF099C();

      if (v18)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v24 & 1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_1E4BF09EC();
  __break(1u);
  return result;
}

uint64_t sub_1E4B3FDD0(uint64_t result, unint64_t a2, char a3)
{
  v18 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E4B3F858(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1E4B400F4();
      goto LABEL_12;
    }

    sub_1E4B404A4(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1E4BF0A6C();
  sub_1E4BEFAFC();
  sub_1E4B420B4(&qword_1ECF94700);
  sub_1E4BEFDDC();
  result = sub_1E4BF0A9C();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
      v11 = *(*(v7 + 48) + 8 * a2);

      v12 = sub_1E4BEFADC();

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v17;
  *(*v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v18;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E4BF09EC();
  __break(1u);
  return result;
}

void *sub_1E4B3FFB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94970, &qword_1E4C063C8);
  v2 = *v0;
  v3 = sub_1E4BF064C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E4B400F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94950, &qword_1E4C063B8);
  v2 = *v0;
  v3 = sub_1E4BF064C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E4B40244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94970, &qword_1E4C063C8);
  result = sub_1E4BF065C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1E4BF0A6C();
      sub_1E4BEFF4C();

      result = sub_1E4BF0A9C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E4B404A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94950, &qword_1E4C063B8);
  result = sub_1E4BF065C();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1E4BF0A6C();
      sub_1E4BEFAFC();
      sub_1E4B420B4(&qword_1ECF94700);

      sub_1E4BEFDDC();
      result = sub_1E4BF0A9C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E4B40718(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1E4BF061C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1E4BF061C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1E4B40808(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E4B408C4(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E4B40808(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1E4BF061C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1E4BF06CC();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1E4B408C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E4BF061C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E4BF061C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E4B14808(&qword_1ECF94960, &qword_1ECF94958, &qword_1E4C063C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94958, &qword_1E4C063C0);
            v9 = sub_1E4B40A74(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1E4B40A74(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E6920D00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1E4B40AF4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4B40AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4B41A48(a1, a3);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F40, &qword_1E4BFDCD0) + 28);
  v6 = sub_1E4BEFABC();
  return (*(*(v6 - 8) + 16))(a3 + v5, a2, v6);
}

void *sub_1E4B40B8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94978, &qword_1E4C063D0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v3[24] = v6;
  v3[2] = a1;
  sub_1E4B14334(a2, (v3 + 3));
  sub_1E4B14334(a2 + 40, (v3 + 8));
  sub_1E4B14334(a2 + 80, (v3 + 13));
  sub_1E4B14334(a2 + 120, (v3 + 18));
  sub_1E4B14334((v3 + 18), v15);
  v16 = xmmword_1E4C06080;
  sub_1E4B14334(v15, v17);

  __swift_destroy_boxed_opaque_existential_1(v15);
  *(&v18 + 1) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94980, &qword_1E4C063D8);
  v7 = swift_allocObject();
  *(v7 + 80) = 0;
  v8 = v17[0];
  *(v7 + 16) = v16;
  *(v7 + 32) = v8;
  v9 = v18;
  *(v7 + 48) = v17[1];
  *(v7 + 64) = v9;
  v3[23] = v7;
  v10 = v3[2];
  swift_allocObject();
  swift_weakInit();
  v11 = *(v10 + 32);

  os_unfair_lock_lock(v11 + 24);
  sub_1E4B41F8C(&v11[4]);
  os_unfair_lock_unlock(v11 + 24);

  v12 = v3[2];
  swift_allocObject();
  swift_weakInit();

  v13 = *(v12 + 32);
  os_unfair_lock_lock(v13 + 24);
  sub_1E4B41FEC(&v13[4]);
  os_unfair_lock_unlock(v13 + 24);

  Messaging.Server.setIncomingMessageValidationHandler(_:)(nullsub_1, 0);
  sub_1E4B40DE8(a2);
  return v3;
}

uint64_t sub_1E4B40E38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);

  result = sub_1E4AD651C(v5);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  return result;
}

uint64_t sub_1E4B40E90(void *a1)
{
  v2 = sub_1E4BEFCEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1E69E7CD0];
  sub_1E4BEFF1C();
  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    sub_1E4BEFCDC();
    LOBYTE(v9) = sub_1E4BF04AC();
    (*(v3 + 8))(v6, v2);
    if (v9)
    {
      sub_1E4B3EF34(&v22, 1);
    }
  }

  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  sub_1E4BEFCDC();
  LOBYTE(v14) = sub_1E4BF04AC();
  (*(v3 + 8))(v6, v2);
  if (v14)
  {
    sub_1E4B3EF34(&v23, 0);
  }

  v18 = v24;
  if (!*(v24 + 16))
  {

    sub_1E4B41F1C();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  return v18;
}

void sub_1E4B410F8()
{
  if (qword_1EE2BD898 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v0, qword_1EE2BD8A0);
  v1 = sub_1E4BEFB5C();
  v2 = sub_1E4BF04BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1E4B30548(0xD000000000000023, 0x80000001E4BF1CB0, &v10);
    _os_log_impl(&dword_1E4AD3000, v1, v2, "Posting server ready notification: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1E6921800](v4, -1, -1);
    MEMORY[0x1E6921800](v3, -1, -1);
  }

  v5 = sub_1E4BEFF1C();
  v6 = notify_post((v5 + 32));

  if (v6)
  {
    oslog = sub_1E4BEFB5C();
    v7 = sub_1E4BF04DC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v6;
      _os_log_impl(&dword_1E4AD3000, oslog, v7, "Failed to post server ready notification: %u", v8, 8u);
      MEMORY[0x1E6921800](v8, -1, -1);
    }
  }
}

uint64_t sub_1E4B41304()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1E4B4132C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B33678;

  return sub_1E4B3C744(a1, v7);
}

uint64_t sub_1E4B413E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4B3C944(a1, v7);
}

uint64_t sub_1E4B414B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*(a1 + 8));
}

unint64_t sub_1E4B414F0()
{
  result = qword_1ECF94910;
  if (!qword_1ECF94910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94910);
  }

  return result;
}

unint64_t sub_1E4B41548()
{
  result = qword_1ECF94918;
  if (!qword_1ECF94918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94918);
  }

  return result;
}

unint64_t sub_1E4B415A0()
{
  result = qword_1ECF94920;
  if (!qword_1ECF94920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94920);
  }

  return result;
}

unint64_t sub_1E4B415F8()
{
  result = qword_1ECF94928;
  if (!qword_1ECF94928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94928);
  }

  return result;
}

uint64_t _s4CardV9FontStyleVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s4CardV9FontStyleVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1E4B416EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B41734(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1E4B417BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B41804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4B4187C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B418C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4B41914(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E4B34F84;

  return sub_1E4B3DE54(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t sub_1E4B41AD0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1E4BF061C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
  v5 = sub_1E4B14808(&qword_1ECF94940, &qword_1ECF93B58, &qword_1E4C063B0);
  result = MEMORY[0x1E69208B0](v3, v4, v5);
  v13 = result;
  if (!v2)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v2)
      {
        v10 = MEMORY[0x1E6920D00](v9, a1);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_15:
          __break(1u);
          return v13;
        }
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = *(a1 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1E4B3F0F0(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }
  }

  v8 = result;
  v7 = sub_1E4BF061C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1E4B41C70(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    sub_1E4B41F1C();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    return;
  }

  v6 = sub_1E4B40E90((a1 + 40));
  if (v3)
  {
LABEL_10:

    return;
  }

  v7 = v6;
  v19 = a1;
  if (!*(v6 + 16) || (v8 = *(v6 + 40), sub_1E4BF0A6C(), sub_1E4BEFF4C(), v9 = sub_1E4BF0A9C(), v10 = -1 << *(v7 + 32), v11 = v9 & ~v10, ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0))
  {
LABEL_9:

    a3(v19);
    goto LABEL_10;
  }

  v12 = ~v10;
  while (*(*(v7 + 48) + v11) != 1)
  {
    v13 = sub_1E4BF099C();

    if (v13)
    {
      goto LABEL_13;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_13:

  if (qword_1EE2BD898 != -1)
  {
    swift_once();
  }

  v15 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v15, qword_1EE2BD8A0);
  v16 = sub_1E4BEFB5C();
  v17 = sub_1E4BF04CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1E4AD3000, v16, v17, "Connection has internal entitlement, allowing incoming message", v18, 2u);
    MEMORY[0x1E6921800](v18, -1, -1);
  }
}

unint64_t sub_1E4B41F1C()
{
  result = qword_1ECF94968;
  if (!qword_1ECF94968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94968);
  }

  return result;
}

uint64_t sub_1E4B41F8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  result = sub_1E4AD651C(v5);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1E4B41FEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  result = sub_1E4AD651C(v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

int64_t sub_1E4B42044@<X0>(int64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v5[2] = *(v1 + 16);
  v5[3] = v3;
  result = sub_1E4B76ECC(sub_1E4B421D8, v5);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B420B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E4BEFAFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B42118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E4B33678;

  return sub_1E4B3CDD4(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1E4B421D8(uint64_t a1)
{
  if (*(a1 + 40) == *(v1 + 16) && *(a1 + 48) == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

unint64_t sub_1E4B42204()
{
  result = qword_1ECF94988;
  if (!qword_1ECF94988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94988);
  }

  return result;
}

unint64_t sub_1E4B4226C()
{
  result = qword_1ECF94990;
  if (!qword_1ECF94990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94990);
  }

  return result;
}

uint64_t RCSService.FileDownloadRequest.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.FileDownloadRequest(0) + 20);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.FileDownloadRequest.fileURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSService.FileDownloadRequest(0) + 20);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSService.FileDownloadRequest.destinationFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.FileDownloadRequest(0) + 24);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.FileDownloadRequest.destinationFileURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSService.FileDownloadRequest(0) + 24);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSService.FileDownloadRequest.init(cellularServiceID:fileURL:destinationFileURL:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for RCSService.FileDownloadRequest(0);
  v8 = *(v7 + 20);
  v9 = sub_1E4BEFA6C();
  v12 = *(*(v9 - 8) + 32);
  (v12)((v9 - 8), &a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return v12(v10, a3, v9);
}

uint64_t RCSService.FileDownloadRequest.Metadata.suggestedFileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSService.FileDownloadRequest.Metadata.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSService.FileDownloadRequest.Metadata(0) + 20);

  return sub_1E4B0B8C4(v3, a1);
}

uint64_t RCSService.FileDownloadRequest.Metadata.init(suggestedFileName:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for RCSService.FileDownloadRequest.Metadata(0) + 20);

  return sub_1E4AE2138(a3, v5);
}

uint64_t sub_1E4B4282C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E4B42974()
{
  if (!qword_1EE2BD740)
  {
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2BD740);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E4BEFA6C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm_0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1E4BEFA6C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4B42B30()
{
  result = sub_1E4BEFA6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_13Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1E4B42D4C()
{
  sub_1E4B42974();
  if (v0 <= 0x3F)
  {
    sub_1E4AF1BE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4B42DD0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF949F0, &qword_1E4C065E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B43BE0();
  sub_1E4BF0ACC();
  v19 = *v3;
  v18 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
    v12 = *(v11 + 20);
    v17 = 1;
    sub_1E4BEFA6C();
    sub_1E4B4282C(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
    sub_1E4BF093C();
    v13 = *(v11 + 24);
    v16 = 2;
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E4B42FE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1E4BEFA6C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A00, &qword_1E4C065F0);
  v32 = *(v35 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v26 - v11;
  v13 = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B43BE0();
  v36 = v12;
  v18 = v37;
  sub_1E4BF0ABC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = a1;
  v30 = v7;
  v20 = v32;
  v19 = v33;
  v21 = v34;
  v40 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v29 = v16;
  *v16 = v41;
  v39 = 1;
  sub_1E4B4282C(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  sub_1E4BF087C();
  v26 = v13;
  v22 = *(v13 + 20);
  v23 = v29;
  v27 = *(v19 + 32);
  v28 = v22;
  v27(&v29[v22], v9, v21);
  v38 = 2;
  v24 = v30;
  sub_1E4BF087C();
  (*(v20 + 8))(v36, v35);
  v27((v23 + *(v26 + 24)), v24, v21);
  sub_1E4B43C34(v23, v31, _s19FileDownloadRequestV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1E4B43C9C(v23, _s19FileDownloadRequestV21CodableRepresentationVMa);
}

uint64_t sub_1E4B43408(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF949D8, &qword_1E4C065D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B43B8C();
  sub_1E4BF0ACC();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1E4BF08CC();
  if (!v2)
  {
    v13 = *(_s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0) + 20);
    v15[14] = 1;
    sub_1E4BEFB4C();
    sub_1E4AF109C(&qword_1ECF92C08);
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E4B435A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF949E8, &qword_1E4C065E0);
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v20 - v6;
  v8 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B43B8C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v8;
  v25 = 0;
  v13 = v23;
  *v11 = sub_1E4BF080C();
  v11[1] = v14;
  v20 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v20 - v17;
  sub_1E4BEFB4C();
  v24 = 1;
  sub_1E4AF109C(&qword_1ECF92C38);
  sub_1E4BF082C();
  (*(v4 + 8))(v7, v13);
  sub_1E4AE2138(v18, v11 + *(v21 + 20));
  sub_1E4B43C34(v11, v22, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B43C9C(v11, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
}

unint64_t sub_1E4B43884()
{
  v1 = 0x4C5255656C6966;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4B438E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B43F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B43908(uint64_t a1)
{
  v2 = sub_1E4B43BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B43944(uint64_t a1)
{
  v2 = sub_1E4B43BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4B439B0()
{
  if (*v0)
  {
    result = 0x54746E65746E6F63;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B439F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1CE0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E4BF099C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E4B43AE4(uint64_t a1)
{
  v2 = sub_1E4B43B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B43B20(uint64_t a1)
{
  v2 = sub_1E4B43B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4B43B8C()
{
  result = qword_1ECF949E0;
  if (!qword_1ECF949E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF949E0);
  }

  return result;
}

unint64_t sub_1E4B43BE0()
{
  result = qword_1ECF949F8;
  if (!qword_1ECF949F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF949F8);
  }

  return result;
}

uint64_t sub_1E4B43C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B43C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4B43D20()
{
  result = qword_1ECF94A08;
  if (!qword_1ECF94A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A08);
  }

  return result;
}

unint64_t sub_1E4B43D78()
{
  result = qword_1ECF94A10;
  if (!qword_1ECF94A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A10);
  }

  return result;
}

unint64_t sub_1E4B43DD0()
{
  result = qword_1ECF94A18;
  if (!qword_1ECF94A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A18);
  }

  return result;
}

unint64_t sub_1E4B43E28()
{
  result = qword_1ECF94A20;
  if (!qword_1ECF94A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A20);
  }

  return result;
}

unint64_t sub_1E4B43E80()
{
  result = qword_1ECF94A28;
  if (!qword_1ECF94A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A28);
  }

  return result;
}

unint64_t sub_1E4B43ED8()
{
  result = qword_1ECF94A30;
  if (!qword_1ECF94A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A30);
  }

  return result;
}

uint64_t sub_1E4B43F2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF1D00 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t RCSSendDispositionRequest.messageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t RCSSendDispositionRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t RCSSendDispositionRequest.destination.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t RCSSendDispositionRequest.group.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1E4B440B4(v2, v3);
}

uint64_t sub_1E4B440B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E4B440F8()
{
  v1 = *v0;
  v2 = 0x496567617373656DLL;
  v3 = 0x6567617373656DLL;
  v4 = 0x74616E6974736564;
  if (v1 != 3)
  {
    v4 = 0x70756F7267;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E4B441A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B44E7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B441C8(uint64_t a1)
{
  v2 = sub_1E4B44534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B44204(uint64_t a1)
{
  v2 = sub_1E4B44534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSSendDispositionRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A38, &qword_1E4C06820);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v29 = *(v1 + 1);
  v30 = v10;
  v35 = v1[24];
  v11 = *(v1 + 4);
  v27 = *(v1 + 5);
  v28 = v11;
  v12 = *(v1 + 6);
  v25 = *(v1 + 7);
  v26 = v12;
  v13 = *(v1 + 9);
  v21 = *(v1 + 8);
  v22 = v13;
  v14 = *(v1 + 11);
  v23 = *(v1 + 10);
  v24 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B44534();
  sub_1E4BF0ACC();
  LOBYTE(v31) = v9;
  v36 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v16 = v27;
    v17 = v28;
    v18 = v35;
    v19 = v26;
    v31 = v29;
    v32 = v30;
    v36 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();

    LOBYTE(v31) = v18;
    v32 = v17;
    v33 = v16;
    v36 = 2;
    sub_1E4B07B38();

    sub_1E4BF093C();

    v31 = v19;
    v32 = v25;
    v36 = 3;
    sub_1E4AE2E40();

    sub_1E4BF093C();

    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v36 = 4;
    sub_1E4B440B4(v21, v22);
    sub_1E4AE8804();
    sub_1E4BF08EC();
    sub_1E4B44588(v31, v32);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E4B44534()
{
  result = qword_1ECF94A40;
  if (!qword_1ECF94A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A40);
  }

  return result;
}

uint64_t sub_1E4B44588(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t RCSSendDispositionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A48, &qword_1E4C06828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B44534();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v44;
  LOBYTE(v38) = 1;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v58 = v11;
  v12 = v44;
  v37 = v45;
  LOBYTE(v38) = 2;
  sub_1E4B07D30();
  sub_1E4BF087C();
  v34 = v12;
  v35 = v44;
  v13 = v45;
  v36 = v46;
  LOBYTE(v38) = 3;
  sub_1E4AE3140();
  sub_1E4BF087C();
  v14 = v13;
  v15 = v45;
  v33 = v44;
  v59 = 4;
  sub_1E4AE88AC();
  sub_1E4BF082C();
  (*(v6 + 8))(v9, v5);
  v31 = *(&v56 + 1);
  v32 = v56;
  v29 = *(&v57 + 1);
  v30 = v57;
  v16 = v58;
  LOBYTE(v38) = v58;
  v17 = v15;
  v28 = v15;
  v18 = v34;
  *(&v38 + 1) = v34;
  v19 = v37;
  *&v39 = v37;
  BYTE8(v39) = v35;
  *&v40 = v14;
  v20 = v36;
  *(&v40 + 1) = v36;
  v21 = v33;
  *&v41 = v33;
  *(&v41 + 1) = v17;
  v42 = v56;
  v43 = v57;
  v22 = v39;
  *a2 = v38;
  a2[1] = v22;
  v23 = v40;
  v24 = v41;
  v25 = v43;
  a2[4] = v42;
  a2[5] = v25;
  a2[2] = v23;
  a2[3] = v24;
  sub_1E4B44A88(&v38, &v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v44) = v16;
  v45 = v18;
  v46 = v19;
  v47 = v35;
  v48 = v14;
  v49 = v20;
  v50 = v21;
  v51 = v28;
  v52 = v32;
  v53 = v31;
  v54 = v30;
  v55 = v29;
  return sub_1E4B44AC0(&v44);
}

unint64_t sub_1E4B44AF0(uint64_t a1)
{
  result = sub_1E4B44B18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B44B18()
{
  result = qword_1EE2BDA08;
  if (!qword_1EE2BDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA08);
  }

  return result;
}

unint64_t sub_1E4B44B78(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B44BA8();
  result = sub_1E4B44BFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B44BA8()
{
  result = qword_1EE2BDA10;
  if (!qword_1EE2BDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA10);
  }

  return result;
}

unint64_t sub_1E4B44BFC()
{
  result = qword_1EE2BDA18;
  if (!qword_1EE2BDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21TelephonyMessagingKit9RCSHandleO5GroupVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E4B44CB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E4B44CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E4B44D78()
{
  result = qword_1ECF94A50;
  if (!qword_1ECF94A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A50);
  }

  return result;
}

unint64_t sub_1E4B44DD0()
{
  result = qword_1ECF94A58;
  if (!qword_1ECF94A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A58);
  }

  return result;
}

unint64_t sub_1E4B44E28()
{
  result = qword_1ECF94A60;
  if (!qword_1ECF94A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A60);
  }

  return result;
}

uint64_t sub_1E4B44E7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t RCSService.SuggestionResponse.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

__n128 RCSService.SuggestionResponse.destination.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1E4ADD764(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t RCSService.SuggestionResponse.messageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t RCSService.SuggestionResponse.messageID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t RCSService.SuggestionResponse.originatingMessageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

uint64_t RCSService.SuggestionResponse.originatingMessageID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t RCSService.SuggestionResponse.suggestion.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSService.SuggestionResponse(0) + 32);

  return sub_1E4B45270(a1, v3);
}

uint64_t sub_1E4B45270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Suggestion(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RCSService.SuggestionResponse.init(cellularServiceID:destination:messageID:originatingMessageID:suggestion:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(a2 + 16);
  *(a6 + 8) = *a2;
  v8 = *(a2 + 32);
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = a4[1];
  *a6 = *a1;
  *(a6 + 24) = v7;
  *(a6 + 40) = v8;
  *(a6 + 48) = v9;
  *(a6 + 56) = v10;
  *(a6 + 64) = v11;
  *(a6 + 72) = v12;
  v13 = a6 + *(type metadata accessor for RCSService.SuggestionResponse(0) + 32);

  return sub_1E4B45390(a5, v13);
}

uint64_t sub_1E4B45390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Suggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B45408(uint64_t a1)
{
  v2 = sub_1E4B45AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B45444(uint64_t a1)
{
  v2 = sub_1E4B45AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B45480(uint64_t a1)
{
  v2 = sub_1E4B45A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B454BC(uint64_t a1)
{
  v2 = sub_1E4B45A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B454F8()
{
  v1 = 0x6E4F65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x52724F6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6E4F6568636163;
  }
}

uint64_t sub_1E4B45568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B47964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B45590(uint64_t a1)
{
  v2 = sub_1E4B459EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B455CC(uint64_t a1)
{
  v2 = sub_1E4B459EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B45608(uint64_t a1)
{
  v2 = sub_1E4B45A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B45644(uint64_t a1)
{
  v2 = sub_1E4B45A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.BusinessInformationRequest.CachePolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A68, &qword_1E4C06A60);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A70, &qword_1E4C06A68);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A78, &qword_1E4C06A70);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A80, &qword_1E4C06A78);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B459EC();
  sub_1E4BF0ACC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1E4B45A94();
      v12 = v26;
      sub_1E4BF08BC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1E4B45A40();
      v12 = v29;
      sub_1E4BF08BC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1E4B45AE8();
    sub_1E4BF08BC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1E4B459EC()
{
  result = qword_1ECF94A88;
  if (!qword_1ECF94A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A88);
  }

  return result;
}

unint64_t sub_1E4B45A40()
{
  result = qword_1ECF94A90;
  if (!qword_1ECF94A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A90);
  }

  return result;
}

unint64_t sub_1E4B45A94()
{
  result = qword_1ECF94A98;
  if (!qword_1ECF94A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A98);
  }

  return result;
}

unint64_t sub_1E4B45AE8()
{
  result = qword_1ECF94AA0;
  if (!qword_1ECF94AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AA0);
  }

  return result;
}

uint64_t RCSService.BusinessInformationRequest.CachePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSService.BusinessInformationRequest.CachePolicy.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94AA8, &qword_1E4C06A80);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94AB0, &qword_1E4C06A88);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94AB8, &qword_1E4C06A90);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94AC0, &unk_1E4C06A98);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E4B459EC();
  v20 = v43;
  sub_1E4BF0ABC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1E4BF088C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1E4AE0F1C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1E4BF06EC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v30 = &type metadata for RCSService.BusinessInformationRequest.CachePolicy;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1E4B45A94();
          sub_1E4BF07EC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1E4B45A40();
          v33 = v22;
          sub_1E4BF07EC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1E4B45AE8();
        sub_1E4BF07EC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t RCSService.BusinessInformationRequest.handle.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t RCSService.BusinessInformationRequest.handle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

_BYTE *RCSService.BusinessInformationRequest.init(cellularServiceID:handle:cachePolicy:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  return result;
}

unint64_t sub_1E4B46240()
{
  result = qword_1ECF94AC8;
  if (!qword_1ECF94AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AC8);
  }

  return result;
}

uint64_t sub_1E4B46344(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4B46390()
{
  result = qword_1ECF94AD0;
  if (!qword_1ECF94AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AD0);
  }

  return result;
}

unint64_t sub_1E4B463E8()
{
  result = qword_1ECF94AD8;
  if (!qword_1ECF94AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AD8);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B46498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1E4B464E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RCSService.Business.Suggestion(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RCSService.Business.Suggestion(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4B466EC()
{
  result = type metadata accessor for RCSService.Business.Suggestion(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4B46780()
{
  result = qword_1ECF94AF0;
  if (!qword_1ECF94AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AF0);
  }

  return result;
}

uint64_t sub_1E4B467D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94B38, &qword_1E4C07050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B4784C();
  sub_1E4BF0ACC();
  LOBYTE(v20) = *v3;
  v25 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v20 = *(v3 + 8);
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = 1;
    sub_1E4ADD6D8(v20, v11, v12, v13, v14);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v20, v21, v22, v23, v24);
    v15 = *(v3 + 56);
    v20 = *(v3 + 48);
    v21 = v15;
    v25 = 2;
    sub_1E4AE2DEC();

    sub_1E4BF093C();

    v16 = *(v3 + 72);
    v20 = *(v3 + 64);
    v21 = v16;
    v25 = 3;

    sub_1E4BF093C();

    v17 = *(_s18SuggestionResponseV21CodableRepresentationVMa(0) + 32);
    LOBYTE(v20) = 4;
    type metadata accessor for RCSService.Business.Suggestion(0);
    sub_1E4B46344(&qword_1ECF92AF0, type metadata accessor for RCSService.Business.Suggestion);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E4B46AB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for RCSService.Business.Suggestion(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94B48, &qword_1E4C07058);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - v10;
  v12 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E4B4784C();
  v35 = v11;
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v18 = v7;
  v19 = v33;
  v20 = v15;
  v43 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  *v15 = v37;
  v43 = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v21 = v19;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v31[1] = v37;
  v31[2] = v40;
  *(v20 + 8) = v37;
  *(v20 + 16) = v22;
  v31[3] = v23;
  *(v20 + 24) = v23;
  *(v20 + 32) = v24;
  v42 = v25;
  *(v20 + 40) = v25;
  v43 = 2;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v26 = v38;
  *(v20 + 48) = v37;
  *(v20 + 56) = v26;
  v43 = 3;
  v31[0] = 0;
  sub_1E4BF087C();
  v27 = v38;
  *(v20 + 64) = v37;
  *(v20 + 72) = v27;
  LOBYTE(v37) = 4;
  sub_1E4B46344(&qword_1ECF92B18, type metadata accessor for RCSService.Business.Suggestion);
  v29 = v34;
  v28 = v35;
  sub_1E4BF087C();
  (*(v21 + 8))(v28, v29);
  sub_1E4B45390(v18, v20 + *(v12 + 32));
  sub_1E4B478A0(v20, v32, _s18SuggestionResponseV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1E4B47908(v20);
}

uint64_t sub_1E4B46F24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94B50, &qword_1E4C07060);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v14[0] = *(v1 + 1);
  v17 = v1[24];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B47A94();
  sub_1E4BF0ACC();
  LOBYTE(v15) = v8;
  v18 = 0;
  sub_1E4ADBE98();
  v11 = v14[1];
  sub_1E4BF093C();
  if (!v11)
  {
    v12 = v17;
    v15 = v14[0];
    v16 = v9;
    v18 = 1;
    sub_1E4AE2E40();

    sub_1E4BF093C();

    LOBYTE(v15) = v12;
    v18 = 2;
    sub_1E4B47AE8();
    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E4B47120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94B68, &qword_1E4C07068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B47A94();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v17;
  v19 = 1;
  sub_1E4AE3140();
  sub_1E4BF087C();
  v12 = v18;
  v16 = v17;
  v19 = 2;
  sub_1E4B47B3C();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v13 = v17;
  *a2 = v11;
  *(a2 + 8) = v16;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B4735C()
{
  v1 = *v0;
  v2 = 0x74616E6974736564;
  v3 = 0x496567617373656DLL;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6974736567677573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E4B47414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B47DC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B4743C(uint64_t a1)
{
  v2 = sub_1E4B4784C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B47478(uint64_t a1)
{
  v2 = sub_1E4B4784C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B474E4(uint64_t a1)
{
  v2 = sub_1E4B47A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B47520(uint64_t a1)
{
  v2 = sub_1E4B47A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4B47590()
{
  result = qword_1ECF94AF8;
  if (!qword_1ECF94AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AF8);
  }

  return result;
}

unint64_t sub_1E4B475E8()
{
  result = qword_1ECF94B00;
  if (!qword_1ECF94B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B00);
  }

  return result;
}

unint64_t sub_1E4B47640()
{
  result = qword_1ECF94B08;
  if (!qword_1ECF94B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B08);
  }

  return result;
}

unint64_t sub_1E4B47698()
{
  result = qword_1ECF94B10;
  if (!qword_1ECF94B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B10);
  }

  return result;
}

unint64_t sub_1E4B476F0()
{
  result = qword_1ECF94B18;
  if (!qword_1ECF94B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B18);
  }

  return result;
}

unint64_t sub_1E4B47748()
{
  result = qword_1ECF94B20;
  if (!qword_1ECF94B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B20);
  }

  return result;
}

unint64_t sub_1E4B477A0()
{
  result = qword_1ECF94B28;
  if (!qword_1ECF94B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B28);
  }

  return result;
}

unint64_t sub_1E4B477F8()
{
  result = qword_1ECF94B30;
  if (!qword_1ECF94B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B30);
  }

  return result;
}

unint64_t sub_1E4B4784C()
{
  result = qword_1ECF94B40;
  if (!qword_1ECF94B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B40);
  }

  return result;
}

uint64_t sub_1E4B478A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B47908(uint64_t a1)
{
  v2 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4B47964(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6E4F6568636163 && a2 == 0xE900000000000079;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4F65746F6D6572 && a2 == 0xEA0000000000796CLL || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52724F6568636163 && a2 == 0xED000065746F6D65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

unint64_t sub_1E4B47A94()
{
  result = qword_1ECF94B58;
  if (!qword_1ECF94B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B58);
  }

  return result;
}

unint64_t sub_1E4B47AE8()
{
  result = qword_1ECF94B60;
  if (!qword_1ECF94B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B60);
  }

  return result;
}

unint64_t sub_1E4B47B3C()
{
  result = qword_1ECF94B70;
  if (!qword_1ECF94B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B70);
  }

  return result;
}

unint64_t sub_1E4B47BB4()
{
  result = qword_1ECF94B78;
  if (!qword_1ECF94B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B78);
  }

  return result;
}

unint64_t sub_1E4B47C0C()
{
  result = qword_1ECF94B80;
  if (!qword_1ECF94B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B80);
  }

  return result;
}

unint64_t sub_1E4B47C64()
{
  result = qword_1ECF94B88;
  if (!qword_1ECF94B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B88);
  }

  return result;
}

unint64_t sub_1E4B47CBC()
{
  result = qword_1ECF94B90;
  if (!qword_1ECF94B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B90);
  }

  return result;
}

unint64_t sub_1E4B47D14()
{
  result = qword_1ECF94B98;
  if (!qword_1ECF94B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B98);
  }

  return result;
}

unint64_t sub_1E4B47D6C()
{
  result = qword_1ECF94BA0;
  if (!qword_1ECF94BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BA0);
  }

  return result;
}

uint64_t sub_1E4B47DC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1D20 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

_BYTE *CriticalMessageNotification.init(cellularServiceID:messageID:)@<X0>(_BYTE *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 4) = v3;
  return result;
}

uint64_t sub_1E4B47FE0(uint64_t a1)
{
  v2 = sub_1E4B481F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4801C(uint64_t a1)
{
  v2 = sub_1E4B481F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CriticalMessageNotification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94BA8, &qword_1E4C07280);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B481F8();
  sub_1E4BF0ACC();
  v17 = v9;
  v16 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v14 = v13;
    v15 = 1;
    sub_1E4B4824C();
    sub_1E4BF093C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E4B481F8()
{
  result = qword_1ECF94BB0;
  if (!qword_1ECF94BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BB0);
  }

  return result;
}

unint64_t sub_1E4B4824C()
{
  result = qword_1ECF94BB8;
  if (!qword_1ECF94BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BB8);
  }

  return result;
}

uint64_t CriticalMessageNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94BC0, &qword_1E4C07288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B481F8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v17 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v11 = v18;
    v16 = 1;
    sub_1E4B48474();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    v13 = v15;
    *a2 = v11;
    *(a2 + 4) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B48474()
{
  result = qword_1ECF94BC8;
  if (!qword_1ECF94BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BC8);
  }

  return result;
}

unint64_t sub_1E4B484C8(uint64_t a1)
{
  result = sub_1E4B484F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B484F0()
{
  result = qword_1ECF94BD0;
  if (!qword_1ECF94BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BD0);
  }

  return result;
}

unint64_t sub_1E4B48550(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B48580();
  result = sub_1E4B485D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B48580()
{
  result = qword_1ECF94BD8;
  if (!qword_1ECF94BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BD8);
  }

  return result;
}

unint64_t sub_1E4B485D4()
{
  result = qword_1ECF94BE0;
  if (!qword_1ECF94BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BE0);
  }

  return result;
}

unint64_t sub_1E4B4867C()
{
  result = qword_1ECF94BE8;
  if (!qword_1ECF94BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BE8);
  }

  return result;
}

unint64_t sub_1E4B486D4()
{
  result = qword_1ECF94BF0;
  if (!qword_1ECF94BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BF0);
  }

  return result;
}

unint64_t sub_1E4B4872C()
{
  result = qword_1ECF94BF8;
  if (!qword_1ECF94BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BF8);
  }

  return result;
}

uint64_t SandboxExtensionClass.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

char *sub_1E4B4880C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = *result;
  v4[5] = 0;
  *(v4 + 48) = 1;
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  if (v8)
  {
    if (*MEMORY[0x1E69E9BB0])
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!*MEMORY[0x1E69E9BA8])
  {
    __break(1u);
    return result;
  }

LABEL_5:

  sub_1E4BEFF7C();
  v22 = a2;
  sub_1E4BEFA5C();
  v11 = *MEMORY[0x1E69E9BE0];
  v12 = sub_1E4BEFF1C();

  v13 = sub_1E4BEFF1C();

  v14 = v9(v12 + 32, v13 + 32, v11);

  if (v14)
  {
    v4[3] = sub_1E4BEFF7C();
    v4[4] = v15;
    free(v14);
    v16 = OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL;
    v17 = sub_1E4BEFA6C();
    (*(*(v17 - 8) + 32))(v4 + v16, v22, v17);
    v4[2] = a3;
  }

  else
  {
    sub_1E4B49C60();
    swift_allocError();
    *v18 = 0;
    *(v18 + 4) = 1;
    swift_willThrow();

    v19 = sub_1E4BEFA6C();
    (*(*(v19 - 8) + 8))(v22, v19);
    v20 = *(*v4 + 48);
    v21 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.consume()()
{
  if (*(v0 + 48) == 1)
  {
    v1 = v0;
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    v6 = *(v1 + 32);
    v7 = sub_1E4BEFF1C();

    v8 = v5(v7 + 32);

    if (v8 == -1)
    {
      if (qword_1ECF92430 != -1)
      {
        swift_once();
      }

      v17 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v17, qword_1ECFD4470);
      v18 = sub_1E4BEFB5C();
      v19 = sub_1E4BF04DC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        *(v20 + 4) = MEMORY[0x1E6920390]();
        _os_log_impl(&dword_1E4AD3000, v18, v19, "Failed to consume sandbox extension: %d", v20, 8u);
        MEMORY[0x1E6921800](v20, -1, -1);
      }

      v21 = MEMORY[0x1E6920390]();
      sub_1E4B49C60();
      swift_allocError();
      *v22 = v21;
      *(v22 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      if (qword_1ECF92430 != -1)
      {
        swift_once();
      }

      v9 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v9, qword_1ECFD4470);
      v10 = sub_1E4BEFB5C();
      v11 = sub_1E4BF04BC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1E4AD3000, v10, v11, "Successfully consumed sandbox extension", v12, 2u);
        MEMORY[0x1E6921800](v12, -1, -1);
      }

      *(v1 + 40) = v8;
      *(v1 + 48) = 0;
    }
  }

  else
  {
    if (qword_1ECF92430 != -1)
    {
      swift_once();
    }

    v13 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v13, qword_1ECFD4470);
    v14 = sub_1E4BEFB5C();
    v15 = sub_1E4BF04BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1E4AD3000, v14, v15, "Trying to consume sandbox extension that is already consumed. ", v16, 2u);
      MEMORY[0x1E6921800](v16, -1, -1);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.release()()
{
  if (*(v0 + 48))
  {
    if (qword_1ECF92430 != -1)
    {
      swift_once();
    }

    v1 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v1, qword_1ECFD4470);
    v2 = sub_1E4BEFB5C();
    v3 = sub_1E4BF04BC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E4AD3000, v2, v3, "Trying to release sandbox extension that is not consumed.", v4, 2u);
      MEMORY[0x1E6921800](v4, -1, -1);
    }
  }

  else
  {
    v5 = v0;
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);

    LODWORD(v9) = v9(v6);

    if (v9 == sub_1E4BEFD5C())
    {
      if (qword_1ECF92430 != -1)
      {
        swift_once();
      }

      v10 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v10, qword_1ECFD4470);
      v11 = sub_1E4BEFB5C();
      v12 = sub_1E4BF04BC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1E4AD3000, v11, v12, "Successfully released sandbox extension", v13, 2u);
        MEMORY[0x1E6921800](v13, -1, -1);
      }

      *(v5 + 40) = 0;
      *(v5 + 48) = 1;
    }

    else
    {
      if (qword_1ECF92430 != -1)
      {
        swift_once();
      }

      v14 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v14, qword_1ECFD4470);
      v15 = sub_1E4BEFB5C();
      v16 = sub_1E4BF04DC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = MEMORY[0x1E6920390]();
        _os_log_impl(&dword_1E4AD3000, v15, v16, "Failed to release sandbox extension: %d", v17, 8u);
        MEMORY[0x1E6921800](v17, -1, -1);
      }

      v18 = MEMORY[0x1E6920390]();
      sub_1E4B49C60();
      swift_allocError();
      *v19 = v18;
      *(v19 + 4) = 0;
      swift_willThrow();
    }
  }
}

void SandboxExtension.withResource<A>(_:)(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  SandboxExtension.consume()();
  if (!v7)
  {
    a1(v3 + OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL);
    SandboxExtension.release()();
    if (v8)
    {
      v9 = v8;
      (*(*(a2 - 8) + 8))(a3, a2);
      SandboxExtension.release()();
      if (v10)
      {
      }

      else
      {
        swift_willThrow();
      }
    }
  }
}

uint64_t SandboxExtension.withResource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E4B49160, 0, 0);
}

uint64_t sub_1E4B49160()
{
  v1 = v0[6];
  SandboxExtension.consume()();
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[6];
    v6 = OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL;
    v11 = (v0[3] + *v0[3]);
    v7 = *(v0[3] + 4);
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_1E4B492B4;
    v9 = v0[4];
    v10 = v0[2];

    return v11(v10, v5 + v6);
  }
}

uint64_t sub_1E4B492B4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E4B494A8;
  }

  else
  {
    v3 = sub_1E4B493C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4B493C8()
{
  v1 = v0[8];
  v2 = v0[6];
  SandboxExtension.release()();
  if (v3)
  {
    v4 = v3;
    (*(*(v0[5] - 8) + 8))(v0[2]);
    v5 = v0[6];
    SandboxExtension.release()();
    if (v6)
    {
    }

    else
    {
      swift_willThrow();
    }

    v7 = v0[1];
  }

  else
  {
    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_1E4B494A8()
{
  v1 = v0[8];
  v2 = v0[6];
  SandboxExtension.release()();
  if (v3)
  {
  }

  else
  {
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t SandboxExtension.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL;
  v4 = sub_1E4BEFA6C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SandboxExtension.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL;
  v4 = sub_1E4BEFA6C();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E4B49654()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1E4B4969C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4C5255656C6966;
  }

  else
  {
    v4 = 0x6E656B6F74;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x4C5255656C6966;
  }

  else
  {
    v6 = 0x6E656B6F74;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();
  }

  return v9 & 1;
}

uint64_t sub_1E4B49740()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B497C0()
{
  *v0;
  sub_1E4BEFF4C();
}

uint64_t sub_1E4B4982C()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B498A8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E4BF07DC();

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

void sub_1E4B49908(uint64_t *a1@<X8>)
{
  v2 = 0x6E656B6F74;
  if (*v1)
  {
    v2 = 0x4C5255656C6966;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E4B49944()
{
  if (*v0)
  {
    result = 0x4C5255656C6966;
  }

  else
  {
    result = 0x6E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B4997C@<X0>(char *a1@<X8>)
{
  v2 = sub_1E4BF07DC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1E4B499E0(uint64_t a1)
{
  v2 = sub_1E4B49FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}