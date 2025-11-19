void sub_23EDA6170(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v18 = [objc_allocWithZone(MEMORY[0x277D257E8]) init];
  [v18 setLinearDepth_];
  [v18 setProjection_];
  v19 = sub_23EDA602C(a3);
  swift_beginAccess();
  v29[0] = *(a7 + 16);
  v20 = v29[0];
  v21 = v18;
  [a6 process:a1 layer:a2 face:v19 color:a4 depth:a5 params:v21 error:v29];
  v22 = v29[0];
  *(a7 + 16) = v29[0];
  v23 = v22;
  swift_endAccess();

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23EDA62CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16(a2, a3, a4, a5, a6, a7, a8, a9, a10);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

unint64_t sub_23EDA639C(unsigned int a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (a1 > 0x1000 || a2 > 0x1000)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v4 = sub_23EDC1790();
    __swift_project_value_buffer(v4, qword_27E3897E8);
    v5 = sub_23EDC1770();
    v6 = sub_23EDC1D80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23ED67000, v5, v6, "MXI baking resolution will be clamped to max (4096x4096)", v7, 2u);
      MEMORY[0x23EF24B30](v7, -1, -1);
    }

    if (v3 >= 0x1000)
    {
      v3 = 4096;
    }

    if (v2 >= 0x1000)
    {
      v2 = 4096;
    }

    else
    {
      v2 = v2;
    }
  }

  return v3 | (v2 << 32);
}

float32x4_t sub_23EDA64B0@<Q0>(__int128 *a1@<X0>, char a2@<W1>, float32x4_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = a1[5];
  v12 = a1[6];
  v43 = *a1;
  v48 = v11;
  v49 = v12;
  v50 = a1[7];
  v51 = *(a1 + 32);
  v13 = *(MEMORY[0x277D860B8] + 16);
  v39 = *MEMORY[0x277D860B8];
  v40 = v13;
  v14 = *(MEMORY[0x277D860B8] + 48);
  v41 = *(MEMORY[0x277D860B8] + 32);
  v37 = v14;
  v15 = [objc_opt_self() meters];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v17 = v16;

  (*(v7 + 8))(v10, v6);
  v18 = v17 * 0.5;
  if (a2)
  {
    v18 = -v18;
  }

  v19 = v37;
  v19.f32[0] = v37.f32[0] + v18;
  v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, v39.f32[0]), v40, *v39.f32, 1), v41, v39, 2), v19, v39, 3);
  v38 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, v40.f32[0]), v40, *v40.f32, 1), v41, v40, 2), v19, v40, 3);
  __asm { FMOV            V0.4S, #-1.0 }

  v36 = vmlaq_laneq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, v41.f32[0]), v40, *v41.f32, 1), _Q0, v41), v19, v41, 3);
  v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, v37.f32[0]), v40, *v37.f32, 1), v41, v37, 2), v19, v37, 3);
  v44 = v39;
  v45 = v40;
  v46 = v41;
  v47 = v19;
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v25.f32[0] = sub_23EDB4B90();
  v29 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v25, v39.f32[0]), 0, v26), 0, v27), 0, v28);
  v30 = vmulq_f32(v25, 0);
  v31 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(v30, v26, *v40.f32, 1), 0, v27), 0, v28);
  result = vmlaq_f32(vaddq_f32(v27, vmlaq_lane_f32(vmulq_n_f32(v25, v41.f32[0]), v26, *v41.f32, 1)), 0, v28);
  v33 = vmlaq_f32(vmlaq_f32(v30, 0, v26), 0, v27);
  v34 = v38;
  *a3 = v42;
  a3[1] = v34;
  v35 = v37;
  a3[2] = v36;
  a3[3] = v35;
  a3[4] = v29;
  a3[5] = v31;
  a3[6] = result;
  a3[7] = vaddq_f32(v28, v33);
  return result;
}

uint64_t sub_23EDA6788(uint64_t a1)
{
  v2 = type metadata accessor for StereoProperties();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23EDA67E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StereoProperties();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23EDA6848()
{
  result = qword_27E388DB8;
  if (!qword_27E388DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E388778, &unk_23EDC6B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DB8);
  }

  return result;
}

void sub_23EDA68AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float64_t a4@<D0>, float64_t a5@<D1>, unsigned int a6@<S2>)
{
  v10 = a1;
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  v111 = *(a2 + 72);
  v14 = *(a2 + 116);
  if (qword_27E3881B8 != -1)
  {
    a1 = swift_once();
  }

  v15 = qword_27E389878;
  v16 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  v17 = *(qword_27E389878 + OBJC_IVAR____TtC16AlchemistService10Signposter_queue);
  MEMORY[0x28223BE20](a1);
  sub_23EDC1DE0();
  if (v6)
  {
    return;
  }

  v77 = v16;
  v18.f64[0] = a4;
  sub_23EDB4BF0(v79, v18, a5, a6, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  v101 = v83;
  v93 = v79[0];
  v98 = v80;
  v99 = v81;
  v100 = v82;
  v102 = v79[0];
  v103 = v79[1];
  v104 = v79[2];
  v105 = v79[3];
  v110 = v83;
  v108 = v81;
  v109 = v82;
  v106 = v79[4];
  v107 = v80;
  *&v19 = sub_23EDB4A84();
  v94 = v19;
  v95 = v20;
  v96 = v21;
  v97 = v22;
  sub_23EDB4ACC(&v84, v14);
  v23 = v92;
  if (v13)
  {
    if (v12 <= 1)
    {
      if (v12)
      {
        LODWORD(v24) = 1024;
      }

      else
      {
        LODWORD(v24) = 512;
      }

      if (v12)
      {
        v25 = 1024;
      }

      else
      {
        v25 = 512;
      }
    }

    else if (v12 == 2)
    {
      LODWORD(v24) = 2048;
      v25 = 2048;
    }

    else if (v12 == 3)
    {
      LODWORD(v24) = 4096;
      v25 = 4096;
    }

    else
    {
      if (a4 <= -1.0)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (a4 >= 4294967300.0)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_69;
      }

      if (a5 <= -1.0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (a5 >= 4294967300.0)
      {
LABEL_71:
        __break(1u);
        return;
      }

      v27 = sub_23EDA639C(a4, a5);
      v24 = HIDWORD(v27);
      v25 = v27;
    }
  }

  else
  {
    v26 = sub_23EDA639C(v12, HIDWORD(v12));
    v25 = v26;
    v24 = HIDWORD(v26);
  }

  v28 = v89;
  v29 = v90;
  *(&v30 + 1) = v91.i64[1];
  v31 = v25;
  v32 = v24;
  if (v111)
  {
    *&v28 = v31 * 0.5;
    *(&v29 + 1) = v32 * 0.5;
    v75 = v29;
    v76 = v28;
    *&v30 = v31 * 0.5;
    *(&v30 + 1) = v32 * 0.5;
    v74 = v30;
    goto LABEL_36;
  }

  v33 = v93;
  v34 = DWORD1(v93);
  v35 = v93 / DWORD1(v93);
  if ((v31 / v32) >= v35)
  {
    v40 = v35 * v32;
    if (COERCE_INT(fabs(v35 * v32)) <= 2139095039)
    {
      if (v40 > -1.0)
      {
        if (v40 < 4295000000.0)
        {
          v38 = v32 / v34;
          v25 = v40;
          v37.f32[0] = v40 / v33;
          v39 = v38;
          goto LABEL_35;
        }

        goto LABEL_66;
      }

      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v36 = v31 / v35;
  if (COERCE_INT(fabs(v31 / v35)) > 2139095039)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v36 <= -1.0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v36 >= 4295000000.0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v37.f32[0] = v31 / v33;
  LODWORD(v24) = v36;
  v38 = v36 / v34;
  v39 = v37.f32[0];
LABEL_35:
  v37.f32[1] = v38;
  *&v28 = v39 * *&v89;
  DWORD1(v29) = vmuls_lane_f32(v39, *&v90, 1);
  v75 = v29;
  v76 = v28;
  *&v41 = vmul_f32(*v91.i8, v37);
  *(&v41 + 1) = vextq_s8(v91, v91, 8uLL).u64[0];
  v74 = v41;
LABEL_36:
  v42 = [v10 coords];
  if (v42)
  {
    v43 = v42;
    v73 = v24;
    v44 = [swift_unknownObjectRetain() contents];
    v45 = v43;
    v46 = [v10 numGaussians];
    if (v46)
    {
      v47 = v46;
      v48 = v46;
      v49 = sub_23ED73494(v46, 0);
      v46 = memcpy(v49 + 4, v44, 4 * (v47 + 2 * v48));
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
    }

    v71 = v86;
    v72 = v85;
    v69 = v88;
    v70 = v87;
    v53 = *(v15 + v77);
    MEMORY[0x28223BE20](v46);
    sub_23EDC1DE0();
    v54 = v49[2];
    if (v54)
    {
      v55 = (v49 + 5);
      v56 = 1.1755e-38;
      v57 = 3.4028e38;
      while (1)
      {
        v58 = vaddq_f32(v69, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v72, *(v55 - 2)), v71, *(v55 - 1)), v70, *v55));
        if (v11 == 1)
        {
          v58 = vabsq_f32(v58);
          v58.f32[0] = fmaxf(fmaxf(v58.f32[0], v58.f32[2]), v58.f32[1]);
          if (v58.f32[0] >= 0.0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v58.i32[0] = v58.i32[2];
          if (v58.f32[2] >= 0.0)
          {
LABEL_48:
            if (v58.f32[0] < v57)
            {
              v57 = v58.f32[0];
            }

            if (v56 <= v58.f32[0])
            {
              v56 = v58.f32[0];
            }
          }
        }

        v55 += 3;
        if (!--v54)
        {
          goto LABEL_53;
        }
      }
    }

    v56 = 1.1755e-38;
    v57 = 3.4028e38;
LABEL_53:

    v60 = v111 == 1 && v11 == 1;
    v61 = 1.0 / fmaxf((1.0 / v56) + -0.0001, 0.0001);
    v62 = (1.0 / v57) + 0.0001;
    if (v60)
    {
      v63 = 1000000.0;
    }

    else
    {
      v63 = v61;
    }

    v64 = *(v15 + v77);
    MEMORY[0x28223BE20](v59);
    sub_23EDC1DE0();
    v65 = swift_unknownObjectRelease();
    v66 = *(v15 + v77);
    MEMORY[0x28223BE20](v65);
    sub_23EDC1DE0();
    *a3 = v25;
    *(a3 + 4) = v73;
    *(a3 + 8) = 1.0 / v62;
    *(a3 + 12) = v63;
    v67 = v86;
    *(a3 + 16) = v85;
    *(a3 + 32) = v67;
    v68 = v88;
    *(a3 + 48) = v87;
    *(a3 + 64) = v68;
    *(a3 + 80) = v76;
    *(a3 + 96) = v75;
    *(a3 + 112) = v74;
    *(a3 + 128) = v23;
  }

  else
  {
    sub_23ED7E62C();
    swift_allocError();
    *v50 = 0xD00000000000001FLL;
    *(v50 + 8) = 0x800000023EDCB420;
    *(v50 + 16) = 2;
    v51 = swift_willThrow();
    v52 = *(v15 + v16);
    MEMORY[0x28223BE20](v51);
    sub_23EDC1DE0();
  }
}

id sub_23EDA70F8(CGColorSpace *a1)
{
  v1 = CGColorSpaceCopyName(a1);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = qword_27E388190;
    v2 = *MEMORY[0x277CBF4A8];
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_23EDC1790();
    __swift_project_value_buffer(v4, qword_27E3897E8);
    v5 = sub_23EDC1770();
    v6 = sub_23EDC1D80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23ED67000, v5, v6, "CGColorSpace for MXISceneBuilder does not have a valid name, set to linearSRGB.", v7, 2u);
      MEMORY[0x23EF24B30](v7, -1, -1);
    }
  }

  v8 = *MEMORY[0x277CBF4B8];
  type metadata accessor for CFString(0);
  sub_23EDA75CC(&qword_27E388D10, type metadata accessor for CFString);
  v9 = v2;
  LOBYTE(v8) = sub_23EDC14A0();

  if (v8)
  {
    v10 = MEMORY[0x277D25790];
    v11 = v9;
  }

  else
  {
    v12 = *MEMORY[0x277CBF4A8];
    v11 = v9;
    LOBYTE(v12) = sub_23EDC14A0();

    if ((v12 & 1) == 0)
    {
      v13 = *MEMORY[0x277CBF3E0];
      v11 = v11;
      LOBYTE(v13) = sub_23EDC14A0();

      if (v13 & 1) != 0 || (v14 = *MEMORY[0x277CBF490], v11 = v11, v15 = sub_23EDC14A0(), v11, (v15))
      {
        v10 = MEMORY[0x277D25788];
        goto LABEL_15;
      }

      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v18 = sub_23EDC1790();
      __swift_project_value_buffer(v18, qword_27E3897E8);
      v19 = v11;
      v11 = sub_23EDC1770();
      v20 = sub_23EDC1D80();

      if (!os_log_type_enabled(v11, v20))
      {

        v10 = MEMORY[0x277D25790];
        v11 = v19;
        goto LABEL_15;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      _os_log_impl(&dword_23ED67000, v11, v20, "%@ is unsupported in baking, setting to default linearSRGB", v21, 0xCu);
      sub_23ED6FA68(v22, &unk_27E388D00, &unk_23EDC6730);
      MEMORY[0x23EF24B30](v22, -1, -1);
      MEMORY[0x23EF24B30](v21, -1, -1);
    }

    v10 = MEMORY[0x277D25790];
  }

LABEL_15:

  v16 = *v10;
  return v16;
}

uint64_t sub_23EDA748C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23EDA74C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23EDA75CC(unint64_t *a1, void (*a2)(uint64_t))
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

void static ALCService.isSupported(image:)(void *a1@<X0>, char *a2@<X8>)
{
  [a1 extent];
  Width = CGRectGetWidth(v11);
  [a1 extent];
  Height = CGRectGetHeight(v12);
  if (Height >= Width)
  {
    v6 = Width;
  }

  else
  {
    v6 = Height;
  }

  [a1 extent];
  v7 = CGRectGetWidth(v13);
  [a1 extent];
  v8 = CGRectGetHeight(v14);
  if (v7 > v8)
  {
    v8 = v7;
  }

  if (v6 >= 32.0)
  {
    if (v8 <= 16384.0)
    {
      v10 = v8 / v6;
      v9 = v10 < 0.01 || v10 > 100.0;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 2;
  }

  *a2 = v9;
}

unint64_t ALCService.ImageSupportStatus.description.getter()
{
  v1 = 0x6574726F70707553;
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t ALCService.ImageSupportStatus.hashValue.getter()
{
  v1 = *v0;
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  return sub_23EDC2320();
}

unint64_t sub_23EDA7814()
{
  v1 = 0x6574726F70707553;
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000029;
  }
}

unint64_t sub_23EDA78C8()
{
  result = qword_27E388DD0;
  if (!qword_27E388DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DD0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16AlchemistService10ALCServiceC10ClientNameO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23EDA7944(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EDA799C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_23EDA79FC()
{
  v1 = *v0;
  sub_23EDC22F0();
  sub_23EDC2310();
  return sub_23EDC2320();
}

uint64_t sub_23EDA7A70()
{
  v1 = *v0;
  sub_23EDC22F0();
  sub_23EDC2310();
  return sub_23EDC2320();
}

uint64_t sub_23EDA7AB4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23EDA8950(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23EDA7AEC()
{
  if (*(v0 + 16) == 1)
  {
    if ((*(v0 + 48) & 1) == 0 && (*(v0 + 56) & 1) == 0)
    {
      v1 = *(v0 + 32);
      v2 = *(v0 + 40);
      v3 = *(v0 + 52) / sqrtf(((v2 * v2) + (v1 * v1)) / 1872.0);
      v4 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v5 = v3;
      v6 = [v4 initWithFloat_];
      swift_beginAccess();
      v7 = *(v0 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v0 + 24);
      *(v0 + 24) = 0x8000000000000000;
      sub_23ED78970(v6, 0xD000000000000013, 0x800000023EDCB5A0, isUniquelyReferenced_nonNull_native);
      *(v0 + 24) = v28;
      swift_endAccess();
      v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v10 = v1;
      v11 = [v9 initWithFloat_];
      swift_beginAccess();
      v12 = *(v0 + 24);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v0 + 24);
      *(v0 + 24) = 0x8000000000000000;
      sub_23ED78970(v11, 0x616D497475706E49, 0xEF68746469576567, v13);
      *(v0 + 24) = v29;
      swift_endAccess();
      v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v15 = v2;
      v16 = [v14 initWithFloat_];
      swift_beginAccess();
      v17 = *(v0 + 24);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v0 + 24);
      *(v0 + 24) = 0x8000000000000000;
      sub_23ED78970(v16, 0xD000000000000010, 0x800000023EDCB5C0, v18);
      *(v0 + 24) = v30;
      swift_endAccess();
      v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v20 = v2 / v1;
      v21 = [v19 initWithFloat_];
      swift_beginAccess();
      v22 = *(v0 + 24);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v0 + 24);
      *(v0 + 24) = 0x8000000000000000;
      sub_23ED78970(v21, 0xD000000000000015, 0x800000023EDCB5E0, v23);
      *(v0 + 24) = v31;
      swift_endAccess();
    }

    v24 = sub_23EDC19A0();
    aBlock[4] = sub_23EDA884C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23EDA7E58;
    aBlock[3] = &block_descriptor_0;
    v25 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v25);
  }

  swift_beginAccess();
  v26 = *(v0 + 24);
  *(v0 + 24) = MEMORY[0x277D84F98];
}

id sub_23EDA7E58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_23EDA889C();
    v5 = sub_23EDC1890();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_23EDA7EE4(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  v14[0] = *a1;
  v14[1] = v3;
  sub_23EDA8838(v14[0], v3);
  v4 = sub_23EDA870C(v14);
  if (v4 == 6)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v5 = sub_23EDC1790();
    __swift_project_value_buffer(v5, qword_27E3897E8);
    v6 = sub_23EDC1770();
    v7 = sub_23EDC1D80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23ED67000, v6, v7, "Unknown client name, telemetry report will be less useful.", v8, 2u);
      MEMORY[0x23EF24B30](v8, -1, -1);
    }
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  swift_beginAccess();
  v10 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_23ED78970(v9, 0x614E746E65696C43, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
  *(v2 + 24) = v13;
  return swift_endAccess();
}

uint64_t sub_23EDA8078()
{
  sub_23EDC1340();
  *(v0 + 52) = v1;
  *(v0 + 56) = 0;
  sub_23EDC1370();
  if (v2 > 0.0)
  {
    sub_23EDC1370();
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    swift_beginAccess();
    v5 = *(v0 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v0 + 24);
    *(v0 + 24) = 0x8000000000000000;
    sub_23ED78970(v4, 0x657265666E495046, 0xEF656D695465636ELL, isUniquelyReferenced_nonNull_native);
    *(v0 + 24) = v24;
    swift_endAccess();
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    swift_beginAccess();
    v8 = *(v0 + 24);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v0 + 24);
    *(v0 + 24) = 0x8000000000000000;
    sub_23ED78970(v7, 0xD000000000000016, 0x800000023EDCB510, v9);
    *(v0 + 24) = v25;
    swift_endAccess();
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    swift_beginAccess();
    v11 = *(v0 + 24);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v0 + 24);
    *(v0 + 24) = 0x8000000000000000;
    sub_23ED78970(v10, 0xD000000000000013, 0x800000023EDCB530, v12);
    *(v0 + 24) = v26;
    swift_endAccess();
  }

  sub_23EDC1380();
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  swift_beginAccess();
  v15 = *(v0 + 24);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v0 + 24);
  *(v0 + 24) = 0x8000000000000000;
  sub_23ED78970(v14, 0x657265666E49504ALL, 0xEF656D695465636ELL, v16);
  *(v0 + 24) = v27;
  swift_endAccess();
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  swift_beginAccess();
  v18 = *(v0 + 24);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v0 + 24);
  *(v0 + 24) = 0x8000000000000000;
  sub_23ED78970(v17, 0xD000000000000016, 0x800000023EDCB4D0, v19);
  *(v0 + 24) = v28;
  swift_endAccess();
  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  swift_beginAccess();
  v21 = *(v0 + 24);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v0 + 24);
  *(v0 + 24) = 0x8000000000000000;
  sub_23ED78970(v20, 0xD000000000000013, 0x800000023EDCB4F0, v22);
  *(v0 + 24) = v29;
  return swift_endAccess();
}

uint64_t sub_23EDA8430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  MEMORY[0x23EF237D0](1701669204, 0xE400000000000000);
  sub_23EDC23B0();
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  swift_beginAccess();
  v14 = *(v7 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v7 + 24);
  *(v7 + 24) = 0x8000000000000000;
  sub_23ED78970(v13, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v7 + 24) = v25;
  result = swift_endAccess();
  if ((a7 & 1) == 0)
  {

    MEMORY[0x23EF237D0](0x754379726F6D654DLL, 0xED0000746E657272);
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    swift_beginAccess();
    v18 = *(v7 + 24);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v7 + 24);
    *(v7 + 24) = 0x8000000000000000;
    sub_23ED78970(v17, a1, a2, v19);

    *(v7 + 24) = v26;
    swift_endAccess();

    MEMORY[0x23EF237D0](0x655079726F6D654DLL, 0xEA00000000006B61);
    v20 = a1;
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    swift_beginAccess();
    v22 = *(v7 + 24);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v7 + 24);
    *(v7 + 24) = 0x8000000000000000;
    sub_23ED78970(v21, v20, a2, v23);

    *(v7 + 24) = v27;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_23EDA86B0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23EDA870C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_23ED7A71C(&unk_285164940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DD8, "R^");
  swift_arrayDestroy();
  if (v1 <= 1)
  {
    if (!v1)
    {

      return 0;
    }

    if (v1 == 1)
    {

      return 2;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:

        return 3;
      case 3:

        return 5;
      case 4:

        return 6;
    }
  }

  if (*(v3 + 16))
  {
    v5 = sub_23ED906A8(v2, v1);
    if (v6)
    {
      v7 = *(*(v3 + 56) + v5);
      sub_23ED9E5BC(v2, v1);

      return v7;
    }
  }

  sub_23ED9E5BC(v2, v1);
  return 6;
}

uint64_t sub_23EDA8838(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_23EDA884C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23EDA889C()
{
  result = qword_27E388DE0;
  if (!qword_27E388DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E388DE0);
  }

  return result;
}

unint64_t sub_23EDA88FC()
{
  result = qword_27E388DE8;
  if (!qword_27E388DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DE8);
  }

  return result;
}

uint64_t sub_23EDA8950(uint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  else
  {
    return result;
  }
}

uint64_t ALCService.VersionError.hashValue.getter()
{
  sub_23EDC22F0();
  MEMORY[0x23EF24060](0);
  return sub_23EDC2320();
}

void sub_23EDA89EC()
{
  type metadata accessor for ALCService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 infoDictionary];
  if (v2)
  {
    v3 = v2;
    v4 = sub_23EDC18B0();

    if (*(v4 + 16) && (v5 = sub_23ED906A8(0x656C646E75424643, 0xEF6E6F6973726556), (v6 & 1) != 0))
    {
      sub_23ED71DA8(*(v4 + 56) + 32 * v5, v7);

      if (swift_dynamicCast())
      {

        return;
      }
    }

    else
    {
    }
  }

  sub_23EDA8BB4();
  swift_allocError();
  swift_willThrow();
}

unint64_t sub_23EDA8B50()
{
  result = qword_27E388DF0;
  if (!qword_27E388DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DF0);
  }

  return result;
}

unint64_t sub_23EDA8BB4()
{
  result = qword_27E388DF8;
  if (!qword_27E388DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DF8);
  }

  return result;
}

uint64_t sub_23EDA8C08(task_info_t task_info_out, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  task_info_outCnt = 93;
  result = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (result)
  {
    sub_23EDC1EC0();

    v4 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v4);

    sub_23EDA8E2C();
    v5 = swift_allocError();
    *v6 = 0xD000000000000024;
    v6[1] = 0x800000023EDCB630;
    result = swift_willThrow();
    *a2 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23EDA8D70()
{
  v28 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *task_info_out = 0u;
  v5 = 0u;
  result = sub_23EDA8C08(task_info_out, &v3);
  if (!v0)
  {
    if ((*(&v14 + 1) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    result = v13 >> 20;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23EDA8E2C()
{
  result = qword_27E388E00;
  if (!qword_27E388E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E00);
  }

  return result;
}

uint64_t sub_23EDA8E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23EDA8EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id Image.size.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    Width = CGImageGetWidth(*v0);
    CGImageGetHeight(v1);
    return Width;
  }

  if (*(v0 + 8) != 1)
  {
    Width = CVPixelBufferGetWidth(*v0);
    CVPixelBufferGetHeight(v1);
    return Width;
  }

  result = [(CGImage *)v1 extent];
  v4 = v3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = [(CGImage *)v1 extent];
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 < 9.22337204e18)
  {
    return v4;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23EDA9034()
{
  sub_23EDC22F0();
  sub_23EDC1A50();
  return sub_23EDC2320();
}

uint64_t sub_23EDA90A0()
{
  sub_23EDC22F0();
  sub_23EDC1A50();
  return sub_23EDC2320();
}

uint64_t sub_23EDA90F0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23EDC2070();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_23EDA9178@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_23EDC2070();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23EDA91D0(uint64_t a1)
{
  v2 = sub_23EDAA2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA920C(uint64_t a1)
{
  v2 = sub_23EDAA2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Image.CodingError.errorDescription.getter()
{
  v1 = sub_23EDC0F10();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23EDC1990();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (*v0)
  {
    *v0;
  }

  sub_23EDC1930();
  sub_23EDC0F00();
  return sub_23EDC19F0();
}

unint64_t sub_23EDA93B4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_23EDA9410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23EDAAFB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23EDA9438(uint64_t a1)
{
  v2 = sub_23EDA9984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA9474(uint64_t a1)
{
  v2 = sub_23EDA9984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDA94B0(uint64_t a1)
{
  v2 = sub_23EDA9A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA94EC(uint64_t a1)
{
  v2 = sub_23EDA9A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDA9528(uint64_t a1)
{
  v2 = sub_23EDA9A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA9564(uint64_t a1)
{
  v2 = sub_23EDA9A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDA95A0(uint64_t a1)
{
  v2 = sub_23EDA99D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA95DC(uint64_t a1)
{
  v2 = sub_23EDA99D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Image.CodingError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E08, &qword_23EDC6F40);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E10, &qword_23EDC6F48);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E18, &qword_23EDC6F50);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E20, &qword_23EDC6F58);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDA9984();
  sub_23EDC23A0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_23EDA9A2C();
      v12 = v26;
      sub_23EDC2140();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_23EDA99D8();
      v12 = v29;
      sub_23EDC2140();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_23EDA9A80();
    sub_23EDC2140();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_23EDA9984()
{
  result = qword_27E388E28;
  if (!qword_27E388E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E28);
  }

  return result;
}

unint64_t sub_23EDA99D8()
{
  result = qword_27E388E30;
  if (!qword_27E388E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E30);
  }

  return result;
}

unint64_t sub_23EDA9A2C()
{
  result = qword_27E388E38;
  if (!qword_27E388E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E38);
  }

  return result;
}

unint64_t sub_23EDA9A80()
{
  result = qword_27E388E40;
  if (!qword_27E388E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E40);
  }

  return result;
}

uint64_t Image.CodingError.hashValue.getter()
{
  v1 = *v0;
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  return sub_23EDC2320();
}

uint64_t Image.CodingError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E48, &qword_23EDC6F60);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E50, &qword_23EDC6F68);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E58, &qword_23EDC6F70);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E60, &unk_23EDC6F78);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23EDA9984();
  v20 = v43;
  sub_23EDC2360();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_23EDC2120();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_23ED928EC();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_23EDC1F30();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389020, &qword_23EDC5600) + 48);
      *v30 = &type metadata for Image.CodingError;
      sub_23EDC20A0();
      sub_23EDC1F10();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
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
          sub_23EDA9A2C();
          sub_23EDC2090();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_23EDA99D8();
          v33 = v22;
          sub_23EDC2090();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_23EDA9A80();
        sub_23EDC2090();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

uint64_t Image.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E68, &qword_23EDC6F88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDAA2B8();
  sub_23EDC23A0();
  v17 = v8;
  LOBYTE(v18) = v9;
  v11 = sub_23EDAA30C();
  if (v12 >> 60 == 15)
  {
    sub_23EDAA57C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v17 = v11;
    v18 = v12;
    v15 = v11;
    v16 = v12;
    sub_23EDAA5D0();
    sub_23EDC2190();
    (*(v4 + 8))(v7, v3);
    return sub_23ED6F900(v15, v16);
  }
}

unint64_t sub_23EDAA2B8()
{
  result = qword_27E388E70;
  if (!qword_27E388E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E70);
  }

  return result;
}

uint64_t sub_23EDAA30C()
{
  v1 = sub_23EDC16A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      [v6 extent];
      v8 = [v7 createCGImage:v6 fromRect:?];
    }

    else
    {
      v9 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
      v7 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      [v9 extent];
      v8 = [v7 createCGImage:v9 fromRect:?];
    }

    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    v8 = v6;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v11 = Mutable;
    sub_23EDC1680();
    sub_23EDC1670();
    (*(v2 + 8))(v5, v1);
    v12 = sub_23EDC19A0();

    v13 = CGImageDestinationCreateWithData(v11, v12, 1uLL, 0);

    if (v13)
    {
      CGImageDestinationAddImage(v13, v8, 0);
      if (CGImageDestinationFinalize(v13))
      {
        v14 = v11;
        v15 = sub_23EDC0EC0();

        return v15;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_23EDAA57C()
{
  result = qword_27E388E78;
  if (!qword_27E388E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E78);
  }

  return result;
}

unint64_t sub_23EDAA5D0()
{
  result = qword_27E388E80;
  if (!qword_27E388E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E80);
  }

  return result;
}

uint64_t Image.init(from:)@<X0>(uint64_t *a1@<X0>, CGImageRef *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E88, &qword_23EDC6F90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDAA2B8();
  sub_23EDC2360();
  if (!v2)
  {
    sub_23EDAA8A8();
    sub_23EDC20B0();
    v11 = v26;
    if (v26 >> 60 == 15)
    {
      sub_23EDAA57C();
      swift_allocError();
      *v12 = 2;
      swift_willThrow();
LABEL_11:
      (*(v6 + 8))(v9, v5);
      return __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

    v27 = a2;
    v13 = v25;
    v14 = sub_23EDC0EA0();
    v15 = CGDataProviderCreateWithCFData(v14);

    if (v15)
    {
      v16 = CGImageSourceCreateWithDataProvider(v15, 0);
      if (v16)
      {
        v17 = v16;
        PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v16);
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v17, PrimaryImageIndex, 0);

        v19 = ImageAtIndex;
        if (ImageAtIndex)
        {
          sub_23ED6F900(v13, v11);
          (*(v6 + 8))(v9, v5);
          v20 = v27;
          *v27 = v19;
          *(v20 + 8) = 0;
          return __swift_destroy_boxed_opaque_existential_0Tm(a1);
        }
      }

      else
      {
      }
    }

    sub_23EDAA57C();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    sub_23ED6F900(v13, v11);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_23EDAA8A8()
{
  result = qword_27E388E90;
  if (!qword_27E388E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E90);
  }

  return result;
}

CGImageRef_optional __swiftcall Image.asCGImage()()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      [v1 extent];
      v1 = [v2 createCGImage:v1 fromRect:?];
    }

    else
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
      v5 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      [v4 extent];
      v1 = [v5 createCGImage:v4 fromRect:?];
    }
  }

  else
  {
    v3 = v1;
  }

  return v1;
}

unint64_t sub_23EDAAA2C()
{
  result = qword_27E388E98;
  if (!qword_27E388E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E98);
  }

  return result;
}

uint64_t sub_23EDAAA90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23EDAAAD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_23EDAAB98()
{
  result = qword_27E388EA0;
  if (!qword_27E388EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EA0);
  }

  return result;
}

unint64_t sub_23EDAABF0()
{
  result = qword_27E388EA8;
  if (!qword_27E388EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EA8);
  }

  return result;
}

unint64_t sub_23EDAAC48()
{
  result = qword_27E388EB0;
  if (!qword_27E388EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EB0);
  }

  return result;
}

unint64_t sub_23EDAACA0()
{
  result = qword_27E388EB8;
  if (!qword_27E388EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EB8);
  }

  return result;
}

unint64_t sub_23EDAACF8()
{
  result = qword_27E388EC0;
  if (!qword_27E388EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EC0);
  }

  return result;
}

unint64_t sub_23EDAAD50()
{
  result = qword_27E388EC8;
  if (!qword_27E388EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EC8);
  }

  return result;
}

unint64_t sub_23EDAADA8()
{
  result = qword_27E388ED0;
  if (!qword_27E388ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388ED0);
  }

  return result;
}

unint64_t sub_23EDAAE00()
{
  result = qword_27E388ED8;
  if (!qword_27E388ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388ED8);
  }

  return result;
}

unint64_t sub_23EDAAE58()
{
  result = qword_27E388EE0;
  if (!qword_27E388EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EE0);
  }

  return result;
}

unint64_t sub_23EDAAEB0()
{
  result = qword_27E388EE8;
  if (!qword_27E388EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EE8);
  }

  return result;
}

unint64_t sub_23EDAAF08()
{
  result = qword_27E388EF0;
  if (!qword_27E388EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EF0);
  }

  return result;
}

unint64_t sub_23EDAAF60()
{
  result = qword_27E388EF8;
  if (!qword_27E388EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EF8);
  }

  return result;
}

uint64_t sub_23EDAAFB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000023EDCB6C0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023EDCB6E0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023EDCB700 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_23EDC2240();

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

uint64_t sub_23EDAB0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_23EDAB100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_23EDAB120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

void sub_23EDAB140(uint64_t a1@<X8>)
{
  if (*(v1 + 8) != 2)
  {
    goto LABEL_5;
  }

  v3 = *v1;
  IOSurface = CVPixelBufferGetIOSurface(v3);
  if (!IOSurface)
  {

LABEL_5:
    v8 = 0;
    v7 = 1;
    goto LABEL_6;
  }

  v5 = IOSurface;

  ID = IOSurfaceGetID(v5);
  v7 = 0;
  v8 = ID;
LABEL_6:
  *(a1 + 4) = 0;
  *a1 = v8;
  *(a1 + 5) = v7;
}

void sub_23EDAB1C8(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  sub_23EDAB1FC(a2);
}

void sub_23EDAB1FC(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389028, &unk_23EDC78F0);
  sub_23EDC17B0();
  if (v7)
  {
    v2 = swift_unknownObjectRetain();
    v3 = IOSurfaceLookupFromXPCObject(v2);
    if (v3)
    {
      v4 = v3;
      sub_23ED86F84(v3, a1);
      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_23ED87720();
      swift_allocError();
      *v6 = 1;
      *(v6 + 4) = 1;
      swift_willThrow();
      swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_23ED87720();
    swift_allocError();
    *v5 = 0;
    *(v5 + 4) = 1;
    swift_willThrow();
  }
}

void sub_23EDAB35C(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389028, &unk_23EDC78F0);
  sub_23EDC17B0();
  if (v7)
  {
    v2 = swift_unknownObjectRetain();
    v3 = IOSurfaceLookupFromXPCObject(v2);
    if (v3)
    {
      v4 = v3;
      sub_23EDB9B7C(v3, a1);
      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_23ED87720();
      swift_allocError();
      *v6 = 1;
      *(v6 + 4) = 1;
      swift_willThrow();
      swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_23ED87720();
    swift_allocError();
    *v5 = 0;
    *(v5 + 4) = 1;
    swift_willThrow();
  }
}

void sub_23EDAB4DC(uint64_t a1, void *a2, char a3)
{
  if (a3 == 2)
  {
    v3 = a2;
    IOSurface = CVPixelBufferGetIOSurface(v3);
    if (IOSurface)
    {
      v5 = IOSurface;

      IOSurfaceGetID(v5);
      XPCObject = IOSurfaceCreateXPCObject(v5);
      MEMORY[0x28223BE20](XPCObject);
      sub_23EDC17B0();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_23EDAB5CC(uint64_t a1)
{
  v2 = sub_23EDC1970();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23EDC0F10();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23EDC1990();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if ((a1 & 0x100000000) != 0)
  {
    sub_23EDC1930();
  }

  else
  {
    sub_23EDC1960();
    sub_23EDC1950();
    sub_23EDC1940();
    sub_23EDC1950();
    sub_23EDC1980();
  }

  sub_23EDC0F00();
  return sub_23EDC19F0();
}

uint64_t sub_23EDAB7C0(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389180, &qword_23EDC7BC0);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389188, &qword_23EDC7BC8);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389190, &qword_23EDC7BD0);
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389198, &qword_23EDC7BD8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB1200();
  v21 = v31;
  sub_23EDC23A0();
  if ((v21 & 0x100000000) != 0)
  {
    v24 = (v16 + 8);
    if (v21)
    {
      v33 = 1;
      sub_23EDB12A8();
      sub_23EDC2140();
      (*(v27 + 8))(v10, v28);
    }

    else
    {
      v32 = 0;
      sub_23EDB12FC();
      sub_23EDC2140();
      (*(v25 + 8))(v14, v26);
    }

    return (*v24)(v19, v15);
  }

  else
  {
    v34 = 2;
    sub_23EDB1254();
    sub_23EDC2140();
    v22 = v30;
    sub_23EDC21A0();
    (*(v29 + 8))(v6, v22);
    return (*(v16 + 8))(v19, v15);
  }
}

unint64_t sub_23EDABB74()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_23EDABBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23EDB0AEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23EDABBF4(uint64_t a1)
{
  v2 = sub_23EDB1200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDABC30(uint64_t a1)
{
  v2 = sub_23EDB1200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDABC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E72757465527663 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23EDABD0C(uint64_t a1)
{
  v2 = sub_23EDB1254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDABD48(uint64_t a1)
{
  v2 = sub_23EDB1254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDABD84(uint64_t a1)
{
  v2 = sub_23EDB12A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDABDC0(uint64_t a1)
{
  v2 = sub_23EDB12A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDABDFC(uint64_t a1)
{
  v2 = sub_23EDB12FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDABE38(uint64_t a1)
{
  v2 = sub_23EDB12FC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23EDABE94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23EDB0C0C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_23EDABEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, a1);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    (*(v6 + 8))(v9, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 56))(v11, a2);
    return (*(v12 + 8))(v9, v11);
  }
}

uint64_t sub_23EDAC0D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = (*(a2 + 64))();
  if (!v3)
  {
    return (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
  }

  return result;
}

uint64_t sub_23EDAC150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, a2);
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    return (*(v6 + 8))(v9, a2);
  }

  (*(a3 + 72))(a1, v11, a3);
  return (*(v12 + 8))(v9, v11);
}

uint64_t sub_23EDAC320(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v7 = *(*a3 + 8);
  *(a1 + 8) = swift_getWitnessTable();
  v6 = *(v4 + 16);
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23EDAC468(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_23EDC1E40();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23EDAC4E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 4) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((a1 + v7 + 4) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_23EDAC680(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 4) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = &a1[v10 + 4] & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

uint64_t sub_23EDAC8E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23EDAC940@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a4;
  v87 = sub_23EDC1F30();
  v79 = *(v87 - 8);
  v7 = *(v79 + 64);
  v8 = MEMORY[0x28223BE20](v87);
  v84 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(a2 - 8);
  v10 = *(v85 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v83 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = &v68 - v16;
  v76 = sub_23EDC17D0();
  v75 = *(v76 - 8);
  v17 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23EDC1FC0();
  v81 = *(v19 - 8);
  v82 = v19;
  v20 = *(v81 + 64);
  MEMORY[0x28223BE20](v19);
  v78 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  v22 = *(v80 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v90 = &v68 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v68 - v29;
  v91 = a2;
  v88 = a3;
  v31 = type metadata accessor for XPCReferenceShareableWrapper();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v68 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v95;
  sub_23EDC2340();
  if (v37)
  {
    v64 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v64);
  }

  v70 = v35;
  v71 = v32;
  v72 = v31;
  v95 = a1;
  sub_23EDC1FB0();
  __swift_project_boxed_opaque_existential_1(v93, v94);
  v38 = v88;
  v39 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v40 = v90;
  sub_23EDC2260();
  v41 = v38;
  v42 = v39;
  v43 = v40;
  sub_23EDB04B8(v30, v28);
  v45 = v81;
  v44 = v82;
  if ((*(v81 + 48))(v28, 1, v82) == 1)
  {
    v46 = v41;
    (*(v80 + 8))(v43, v42);
    sub_23ED6FA68(v30, &qword_27E388470, &qword_23EDC5ED0);
    sub_23ED6FA68(v28, &qword_27E388470, &qword_23EDC5ED0);
    v48 = v85;
    v47 = v86;
    v49 = v91;
    v50 = v83;
  }

  else
  {
    v51 = v78;
    (*(v45 + 32))(v78, v28, v44);
    v52 = v95[4];
    __swift_project_boxed_opaque_existential_1(v95, v95[3]);
    v53 = sub_23EDC2350();
    if (*(v53 + 16) && (v54 = sub_23ED9C7E0(v51), (v55 & 1) != 0))
    {
      v69 = v30;
      sub_23ED71DA8(*(v53 + 56) + 32 * v54, v92);

      v56 = v77;
      v57 = v76;
      v58 = swift_dynamicCast();
      v59 = v75;
      (*(v75 + 56))(v56, v58 ^ 1u, 1, v57);
      v60 = (*(v59 + 48))(v56, 1, v57);
      v50 = v83;
      if (v60 != 1)
      {
        v66 = v73;
        (*(v59 + 32))(v73, v56, v57);
        v67 = v90;
        (*(v41 + 64))(v90, v66);
        (*(v59 + 8))(v66, v57);
        (*(v81 + 8))(v78, v82);
        (*(v80 + 8))(v67, AssociatedTypeWitness);
        sub_23ED6FA68(v69, &qword_27E388470, &qword_23EDC5ED0);
        v48 = v85;
        v47 = v86;
        v49 = v91;
        v50 = v74;
        goto LABEL_11;
      }

      v46 = v41;
      (*(v81 + 8))(v78, v82);
      (*(v80 + 8))(v90, AssociatedTypeWitness);
      sub_23ED6FA68(v69, &qword_27E388470, &qword_23EDC5ED0);
    }

    else
    {
      v61 = v51;
      v46 = v41;

      (*(v81 + 8))(v61, v82);
      (*(v80 + 8))(v90, v42);
      sub_23ED6FA68(v30, &qword_27E388470, &qword_23EDC5ED0);
      v56 = v77;
      (*(v75 + 56))(v77, 1, 1, v76);
      v50 = v83;
    }

    sub_23ED6FA68(v56, &unk_27E389000, &qword_23EDC78D0);
    v48 = v85;
    v47 = v86;
    v49 = v91;
  }

  __swift_project_boxed_opaque_existential_1(v93, v94);
  v62 = *(v46 + 8);
  sub_23EDC2260();
LABEL_11:
  v63 = v70;
  (*(v48 + 32))(v70, v50, v49);
  __swift_destroy_boxed_opaque_existential_0Tm(v93);
  (*(v71 + 32))(v47, v63, v72);
  v64 = v95;
  return __swift_destroy_boxed_opaque_existential_0Tm(v64);
}

uint64_t sub_23EDAD4F4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v70 = *(a2 + 24);
  v69 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = sub_23EDC1E40();
  v58 = *(v59 - 8);
  v5 = *(v58 + 64);
  v6 = MEMORY[0x28223BE20](v59);
  v60 = &v55 - v7;
  v63 = AssociatedTypeWitness;
  v62 = *(AssociatedTypeWitness - 8);
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v55 - v12;
  v13 = sub_23EDC17D0();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23EDC1FC0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  sub_23EDC1FB0();
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = v16;
  v30 = v17;
  sub_23EDC2380();
  sub_23EDB04B8(v27, v25);
  if ((*(v17 + 48))(v25, 1, v29) == 1)
  {
    sub_23ED6FA68(v25, &qword_27E388470, &qword_23EDC5ED0);
    v31 = v70;
LABEL_9:
    __swift_mutable_project_boxed_opaque_existential_0(v72, v73);
    v42 = *(v31 + 16);
    sub_23EDC2270();
    goto LABEL_10;
  }

  (*(v17 + 32))(v20, v25, v29);
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = sub_23EDC2390();
  if (!*(v33 + 16) || (v34 = sub_23ED9C7E0(v20), (v35 & 1) == 0))
  {

    (*(v17 + 8))(v20, v29);
    v36 = v65;
    (*(v66 + 56))(v65, 1, 1, v67);
    v31 = v70;
    goto LABEL_8;
  }

  v56 = v29;
  v57 = v20;
  sub_23ED71DA8(*(v33 + 56) + 32 * v34, v71);

  v36 = v65;
  v37 = v67;
  v38 = swift_dynamicCast();
  v39 = v66;
  (*(v66 + 56))(v36, v38 ^ 1u, 1, v37);
  v40 = (*(v39 + 48))(v36, 1, v37);
  v41 = v69;
  v31 = v70;
  if (v40 == 1)
  {
    (*(v30 + 8))(v57, v56);
LABEL_8:
    sub_23ED6FA68(v36, &unk_27E389000, &qword_23EDC78D0);
    goto LABEL_9;
  }

  (*(v39 + 32))(v64, v36, v37);
  v44 = v60;
  (*(v31 + 56))(v41, v31);
  v45 = v39;
  v47 = v62;
  v46 = v63;
  if ((*(v62 + 48))(v44, 1, v63) == 1)
  {
    (*(v45 + 8))(v64, v67);
    (*(v30 + 8))(v57, v56);
    (*(v58 + 8))(v44, v59);
    goto LABEL_9;
  }

  (*(v47 + 32))(v61, v44, v46);
  v65 = __swift_mutable_project_boxed_opaque_existential_0(v72, v73);
  swift_getAssociatedConformanceWitness();
  v48 = v68;
  sub_23EDC2270();
  if (v48)
  {
    v49 = v30;
    v50 = v64;
    v52 = v67;
    v53 = v57;
    v54 = v56;
    (*(v62 + 8))(v61, v63);
    (*(v66 + 8))(v50, v52);
    (*(v49 + 8))(v53, v54);
  }

  else
  {
    v51 = v64;
    (*(v31 + 72))(v64, v41, v31);
    (*(v62 + 8))(v61, v63);
    (*(v66 + 8))(v51, v67);
    (*(v30 + 8))(v57, v56);
  }

LABEL_10:
  sub_23ED6FA68(v27, &qword_27E388470, &qword_23EDC5ED0);
  return __swift_destroy_boxed_opaque_existential_0Tm(v72);
}

uint64_t sub_23EDADD10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v94 = sub_23EDC1F30();
  v89 = *(v94 - 8);
  v6 = *(v89 + 64);
  v7 = MEMORY[0x28223BE20](v94);
  v76 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a2 - 8);
  v9 = *(v75 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v85 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v61 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v88 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v80 = &v61 - v19;
  v79 = sub_23EDC17D0();
  v83 = *(v79 - 8);
  v20 = *(v83 + 64);
  MEMORY[0x28223BE20](v79);
  v72 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_23EDC1FC0();
  v82 = *(v87 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v87);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a3;
  v93 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  v26 = *(v81 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = &v61 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v61 - v34;
  v36 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v37 = v91;
  sub_23EDC2330();
  if (v37)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v36;
  }

  v91 = v35;
  v78 = v33;
  v90 = v28;
  v84 = AssociatedTypeWitness;
  v69 = v24;
  v77 = a1;
  v36 = sub_23EDC1870();
  v98 = v36;
  __swift_project_boxed_opaque_existential_1(&v96, v97);
  if (sub_23EDC2210())
  {
    goto LABEL_16;
  }

  v74 = (v82 + 48);
  v68 = (v82 + 32);
  v66 = (v83 + 56);
  v65 = (v83 + 48);
  v64 = (v83 + 32);
  v63 = v92 + 64;
  v62 = (v83 + 8);
  v67 = (v82 + 8);
  v73 = (v81 + 8);
  v83 = v89 + 88;
  LODWORD(v82) = *MEMORY[0x277D84160];
  v70 = *MEMORY[0x277D84158];
  v81 = v89 + 96;
  v61 = (v75 + 16);
  v75 += 8;
  v38 = v88;
  v39 = v84;
  do
  {
    v43 = v91;
    sub_23EDC1FB0();
    __swift_mutable_project_boxed_opaque_existential_0(&v96, v97);
    swift_getAssociatedConformanceWitness();
    sub_23EDC2200();
    v44 = v78;
    sub_23EDB04B8(v43, v78);
    v45 = v87;
    if ((*v74)(v44, 1, v87) == 1)
    {
      (*v73)(v90, v39);
      sub_23ED6FA68(v43, &qword_27E388470, &qword_23EDC5ED0);
      v40 = v44;
      v41 = &qword_27E388470;
      v42 = &qword_23EDC5ED0;
      goto LABEL_6;
    }

    v46 = v69;
    (*v68)(v69, v44, v45);
    v47 = v77[4];
    __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    v48 = v46;
    v49 = sub_23EDC2350();
    if (!*(v49 + 16) || (v50 = sub_23ED9C7E0(v46), (v51 & 1) == 0))
    {

      (*v67)(v46, v87);
      v39 = v84;
      (*v73)(v90, v84);
      sub_23ED6FA68(v91, &qword_27E388470, &qword_23EDC5ED0);
      v52 = v80;
      (*v66)(v80, 1, 1, v79);
      goto LABEL_13;
    }

    sub_23ED71DA8(*(v49 + 56) + 32 * v50, &v95);

    v52 = v80;
    v53 = v79;
    v54 = swift_dynamicCast();
    (*v66)(v52, v54 ^ 1u, 1, v53);
    v55 = (*v65)(v52, 1, v53);
    v39 = v84;
    if (v55 == 1)
    {
      (*v67)(v48, v87);
      (*v73)(v90, v39);
      sub_23ED6FA68(v91, &qword_27E388470, &qword_23EDC5ED0);
LABEL_13:
      v40 = v52;
      v41 = &unk_27E389000;
      v42 = &qword_23EDC78D0;
      goto LABEL_6;
    }

    v56 = v72;
    (*v64)(v72, v52, v53);
    v57 = v93;
    (*(v92 + 64))(v90, v56, v93);
    (*v61)(v71, v38, v57);
    sub_23EDC1B80();
    sub_23EDC1B60();
    (*v75)(v38, v57);
    (*v62)(v56, v53);
    (*v67)(v69, v87);
    (*v73)(v90, v39);
    v40 = v91;
    v41 = &qword_27E388470;
    v42 = &qword_23EDC5ED0;
LABEL_6:
    sub_23ED6FA68(v40, v41, v42);
    __swift_project_boxed_opaque_existential_1(&v96, v97);
  }

  while ((sub_23EDC2210() & 1) == 0);
  v36 = v98;
LABEL_16:
  v95 = v36;
  sub_23EDC1B80();
  swift_getWitnessTable();
  v58 = sub_23EDC1D20();
  v59 = v77;
  if (v58)
  {

    v36 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v96);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  return v36;
}

uint64_t sub_23EDAEB78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = sub_23EDC1E40();
  v84 = *(v71 - 8);
  v11 = *(v84 + 64);
  v12 = MEMORY[0x28223BE20](v71);
  v74 = v62 - v13;
  v75 = AssociatedTypeWitness;
  v87 = *(AssociatedTypeWitness - 8);
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v12);
  v73 = v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v80 = v62 - v18;
  v82 = sub_23EDC17D0();
  v79 = *(v82 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23EDC1FC0();
  v21 = *(v91 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v91);
  v83 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v89 = v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v92 = v62 - v29;
  v90 = *(a3 - 8);
  v30 = *(v90 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v98 = v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v32;
  MEMORY[0x28223BE20](v31);
  v93 = v62 - v33;
  v35 = a1[3];
  v34 = a1[4];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_23EDC2370();
  if (!a2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(&v95);
  }

  if (!sub_23EDC1B70())
  {
LABEL_27:

    return __swift_destroy_boxed_opaque_existential_0Tm(&v95);
  }

  v36 = 0;
  v88 = (v90 + 16);
  v85 = (v21 + 48);
  v86 = (v90 + 32);
  v78 = (v21 + 32);
  v77 = (v79 + 56);
  v72 = (v79 + 48);
  v68 = (v79 + 32);
  v67 = a4 + 56;
  v66 = (v87 + 48);
  v64 = (v87 + 32);
  v62[2] = a4 + 72;
  v65 = (v87 + 8);
  v69 = (v79 + 8);
  v79 = v21 + 8;
  v87 = v90 + 8;
  v63 = (v84 + 8);
  v37 = v91;
  while (1)
  {
    v38 = sub_23EDC1B40();
    sub_23EDC1B10();
    if (v38)
    {
      (*(v90 + 16))(v93, a2 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v36, a3);
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    result = sub_23EDC1EE0();
    if (v70 != 8)
    {
      break;
    }

    v94 = result;
    (*v88)(v93, &v94, a3);
    swift_unknownObjectRelease();
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_6:
    v40 = a4;
    (*v86)(v98, v93, a3);
    v41 = v92;
    sub_23EDC1FB0();
    v42 = v41;
    v43 = v89;
    sub_23EDB04B8(v42, v89);
    if ((*v85)(v43, 1, v37) == 1)
    {
      v44 = v43;
      v45 = &qword_27E388470;
      v46 = &qword_23EDC5ED0;
      goto LABEL_14;
    }

    v84 = v5;
    v47 = a2;
    v48 = v83;
    (*v78)(v83, v43, v37);
    v49 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v50 = sub_23EDC2390();
    if (!*(v50 + 16) || (v51 = sub_23ED9C7E0(v48), (v52 & 1) == 0))
    {

      (*v79)(v48, v91);
      v53 = v80;
      (*v77)(v80, 1, 1, v82);
      a2 = v47;
LABEL_13:
      v5 = v84;
      v44 = v53;
      v45 = &unk_27E389000;
      v46 = &qword_23EDC78D0;
LABEL_14:
      sub_23ED6FA68(v44, v45, v46);
      goto LABEL_15;
    }

    sub_23ED71DA8(*(v50 + 56) + 32 * v51, &v94);

    v53 = v80;
    v54 = v82;
    v55 = swift_dynamicCast();
    (*v77)(v53, v55 ^ 1u, 1, v54);
    a2 = v47;
    if ((*v72)(v53, 1, v54) == 1)
    {
      (*v79)(v83, v91);
      goto LABEL_13;
    }

    (*v68)(v76, v53, v54);
    a4 = v40;
    v57 = v74;
    (*(v40 + 56))(a3, v40);
    v58 = v75;
    v59 = (*v66)(v57, 1, v75);
    v5 = v84;
    if (v59 != 1)
    {
      (*v64)(v73, v57, v58);
      v62[1] = v97;
      v62[0] = __swift_mutable_project_boxed_opaque_existential_0(&v95, v96);
      swift_getAssociatedConformanceWitness();
      sub_23EDC2220();
      if (!v5)
      {
        v60 = v76;
        (*(a4 + 72))(v76, a3, a4);
        v5 = 0;
        v37 = v91;
        (*v65)(v73, v75);
        (*v69)(v60, v82);
        (*v79)(v83, v37);
        goto LABEL_17;
      }

      (*v65)(v73, v75);
      (*v69)(v76, v82);
      (*v79)(v83, v91);
LABEL_29:
      sub_23ED6FA68(v92, &qword_27E388470, &qword_23EDC5ED0);
      (*v87)(v98, a3);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v95);
    }

    (*v69)(v76, v82);
    (*v79)(v83, v91);
    (*v63)(v57, v71);
LABEL_15:
    __swift_mutable_project_boxed_opaque_existential_0(&v95, v96);
    v56 = *(v40 + 16);
    sub_23EDC2220();
    if (v5)
    {

      goto LABEL_29;
    }

    a4 = v40;
    v37 = v91;
LABEL_17:
    sub_23ED6FA68(v92, &qword_27E388470, &qword_23EDC5ED0);
    (*v87)(v98, a3);
    ++v36;
    if (v39 == sub_23EDC1B70())
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23EDAF77C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965636166727573 && a2 == 0xE900000000000044;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250746E65696C63 && a2 == 0xEF6174614479786FLL)
  {

    return 1;
  }

  else
  {
    v6 = sub_23EDC2240();

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

uint64_t sub_23EDAF890(char a1)
{
  sub_23EDC22F0();
  MEMORY[0x23EF24060](a1 & 1);
  return sub_23EDC2320();
}

uint64_t sub_23EDAF8D8(char a1)
{
  if (a1)
  {
    return 0x7250746E65696C63;
  }

  else
  {
    return 0x4965636166727573;
  }
}

uint64_t sub_23EDAF920(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v17 = *(a2 + 16);
  v20 = v17;
  v21 = v4;
  v22 = v5;
  v18 = v5;
  type metadata accessor for ProxyWithAnIOSurface.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_23EDC21C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v19;
  sub_23EDC23A0();
  v13 = *v12;
  LOBYTE(v20) = 0;
  v14 = v23;
  sub_23EDC21B0();
  if (!v14)
  {
    v15 = *(a2 + 52);
    LOBYTE(v20) = 1;
    sub_23EDC2150();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23EDAFAD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v11 = sub_23EDC1E40();
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v33 = &v27 - v13;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  type metadata accessor for ProxyWithAnIOSurface.CodingKeys();
  swift_getWitnessTable();
  v36 = sub_23EDC2130();
  v31 = *(v36 - 8);
  v14 = *(v31 + 64);
  MEMORY[0x28223BE20](v36);
  v16 = &v27 - v15;
  v32 = a2;
  v37 = a2;
  v38 = a3;
  v34 = a4;
  v39 = a4;
  v40 = a5;
  v17 = type metadata accessor for ProxyWithAnIOSurface();
  v27 = *(v17 - 8);
  v18 = *(v27 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v27 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v16;
  v22 = v41;
  sub_23EDC2360();
  if (v22)
  {
    v26 = a1;
  }

  else
  {
    v23 = v31;
    v41 = a1;
    v24 = v33;
    LOBYTE(v37) = 0;
    *v20 = sub_23EDC2110();
    LOBYTE(v37) = 1;
    sub_23EDC20B0();
    (*(v23 + 8))(v35, v36);
    (*(v28 + 32))(&v20[*(v17 + 52)], v24, v29);
    (*(v27 + 32))(v30, v20, v17);
    v26 = v41;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v26);
}

uint64_t sub_23EDAFE0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23EDADD10(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

BOOL sub_23EDAFE64(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_23EDAF858(*a1, *a2);
}

uint64_t sub_23EDAFE7C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_23EDAF890(*v1);
}

uint64_t sub_23EDAFE90(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_23EDAF868(a1, *v2);
}

uint64_t sub_23EDAFEA4(uint64_t a1, void *a2)
{
  sub_23EDC22F0();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_23EDAF868(v9, *v2);
  return sub_23EDC2320();
}

uint64_t sub_23EDAFEF0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_23EDAF8D8(*v1);
}

uint64_t sub_23EDAFF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_23EDAF77C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23EDAFF38@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_23EDB11F8();
  *a2 = result;
  return result;
}

uint64_t sub_23EDAFF6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23EDAFFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23EDB0050(void *a1, uint64_t a2, void *a3)
{
  sub_23EDC21E0();
  v5 = sub_23EDC1A20();

  xpc_dictionary_set_value(a1, (v5 + 32), a3);
}

uint64_t sub_23EDB0104(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;
  v10 = sub_23EDC1FC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23EDC1FB0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_27E388470;
    v16 = &qword_23EDC5ED0;
    v17 = v9;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v18 = a3(a1, a2);
    if (*(v18 + 16))
    {
      v19 = sub_23ED9C7E0(v14);
      if (v20)
      {
        sub_23ED71DA8(*(v18 + 56) + 32 * v19, v22);
        (*(v11 + 8))(v14, v10);

        sub_23ED6FA68(v22, &qword_27E3885E8, &qword_23EDC4840);
        return 1;
      }
    }

    (*(v11 + 8))(v14, v10);
    memset(v22, 0, sizeof(v22));
    v15 = &qword_27E3885E8;
    v16 = &qword_23EDC4840;
    v17 = v22;
  }

  sub_23ED6FA68(v17, v15, v16);
  return 0;
}

void sub_23EDB0348(uint64_t a1@<X8>)
{
  IOSurface = CVPixelBufferGetIOSurface(*(v1 + 24));
  v4 = IOSurface;
  if (IOSurface)
  {
    v5 = IOSurface;
    ID = IOSurfaceGetID(v5);

    v7 = ID;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 4) = 0;
  *a1 = v7;
  *(a1 + 5) = v4 == 0;
}

void sub_23EDB03B4(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  sub_23EDAB35C(a2);
}

void sub_23EDB03E8()
{
  IOSurface = CVPixelBufferGetIOSurface(*(v0 + 24));
  if (IOSurface)
  {
    v2 = IOSurface;
    IOSurfaceGetID(v2);
    XPCObject = IOSurfaceCreateXPCObject(v2);
    MEMORY[0x28223BE20](XPCObject);
    sub_23EDC17B0();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_23EDB04B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23EDB0560@<X0>(void *a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v8 = *a2;
  sub_23EDC21E0();
  v5 = sub_23EDC1A20();

  v6 = xpc_dictionary_get_value(a1, (v5 + 32));

  *a3 = v6;
  return result;
}

uint64_t sub_23EDB0610(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23EDB0680(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_23EDB07C0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCReferenceShareableDecodingError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for XPCReferenceShareableDecodingError(uint64_t result, int a2, int a3)
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

uint64_t sub_23EDB0A40(uint64_t a1)
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

uint64_t sub_23EDB0A5C(uint64_t result, int a2)
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

uint64_t sub_23EDB0AEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x800000023EDCB780 == a2;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023EDCB7A0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000024 && 0x800000023EDCB7C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23EDC2240();

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

unint64_t sub_23EDB0C0C(uint64_t *a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389140, &qword_23EDC7BA0);
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v37 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389148, &qword_23EDC7BA8);
  v39 = *(v41 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389150, &qword_23EDC7BB0);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389158, &qword_23EDC7BB8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_23EDB1200();
  v18 = v45;
  sub_23EDC2360();
  if (!v18)
  {
    v38 = v7;
    v45 = 0;
    v19 = v43;
    v20 = v44;
    v21 = v12;
    v22 = sub_23EDC2120();
    v23 = (2 * *(v22 + 16)) | 1;
    v47 = v22;
    v48 = v22 + 32;
    v49 = 0;
    v50 = v23;
    v24 = sub_23ED928EC();
    if (v24 == 3 || v49 != v50 >> 1)
    {
      v28 = sub_23EDC1F30();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389020, &qword_23EDC5600) + 48);
      *v30 = &type metadata for XPCReferenceShareableDecodingError;
      sub_23EDC20A0();
      sub_23EDC1F10();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        v51 = 1;
        sub_23EDB12A8();
        v25 = v45;
        sub_23EDC2090();
        if (!v25)
        {
          (*(v39 + 8))(v6, v41);
          (*(v12 + 8))(v15, v11);
          swift_unknownObjectRelease();
          v26 = 1;
          v27 = 1;
LABEL_16:
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          return v26 | (v27 << 32);
        }
      }

      else
      {
        v51 = 2;
        sub_23EDB1254();
        v34 = v45;
        sub_23EDC2090();
        if (!v34)
        {
          v35 = v40;
          v36 = sub_23EDC2100();
          (*(v42 + 8))(v20, v35);
          (*(v12 + 8))(v15, v11);
          swift_unknownObjectRelease();
          v27 = 0;
          v26 = v36;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v51 = 0;
      sub_23EDB12FC();
      v33 = v45;
      sub_23EDC2090();
      if (!v33)
      {
        (*(v19 + 8))(v10, v38);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v26 = 0;
        v27 = 1;
        goto LABEL_16;
      }
    }

    (*(v21 + 8))(v15, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v46);
}

unint64_t sub_23EDB1200()
{
  result = qword_27E389160;
  if (!qword_27E389160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389160);
  }

  return result;
}

unint64_t sub_23EDB1254()
{
  result = qword_27E389168;
  if (!qword_27E389168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389168);
  }

  return result;
}

unint64_t sub_23EDB12A8()
{
  result = qword_27E389170;
  if (!qword_27E389170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389170);
  }

  return result;
}

unint64_t sub_23EDB12FC()
{
  result = qword_27E389178;
  if (!qword_27E389178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389178);
  }

  return result;
}

unint64_t sub_23EDB1394()
{
  result = qword_27E3891A0;
  if (!qword_27E3891A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891A0);
  }

  return result;
}

unint64_t sub_23EDB13EC()
{
  result = qword_27E3891A8;
  if (!qword_27E3891A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891A8);
  }

  return result;
}

unint64_t sub_23EDB1444()
{
  result = qword_27E3891B0;
  if (!qword_27E3891B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891B0);
  }

  return result;
}

unint64_t sub_23EDB149C()
{
  result = qword_27E3891B8;
  if (!qword_27E3891B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891B8);
  }

  return result;
}

unint64_t sub_23EDB14F4()
{
  result = qword_27E3891C0;
  if (!qword_27E3891C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891C0);
  }

  return result;
}

unint64_t sub_23EDB154C()
{
  result = qword_27E3891C8;
  if (!qword_27E3891C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891C8);
  }

  return result;
}

unint64_t sub_23EDB15A4()
{
  result = qword_27E3891D0;
  if (!qword_27E3891D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891D0);
  }

  return result;
}

unint64_t sub_23EDB15FC()
{
  result = qword_27E3891D8;
  if (!qword_27E3891D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891D8);
  }

  return result;
}

unint64_t sub_23EDB1654()
{
  result = qword_27E3891E0;
  if (!qword_27E3891E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891E0);
  }

  return result;
}

unint64_t sub_23EDB16AC()
{
  result = qword_27E3891E8;
  if (!qword_27E3891E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891E8);
  }

  return result;
}

void ClientInfo.init()(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 processInfo];
  v4 = [v2 processInfo];

  v5 = [v2 processInfo];
  [v5 processIdentifier];

  v6 = [v3 processName];
  v7 = sub_23EDC19D0();
  v9 = v8;

  LODWORD(v6) = [v3 processIdentifier];
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6;
}

uint64_t ClientInfo.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ClientInfo.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void ClientInfo.init(processInfo:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 processInfo];

  v6 = [v4 processInfo];
  [v6 processIdentifier];

  v7 = [a1 processName];
  v8 = sub_23EDC19D0();
  v10 = v9;

  *a2 = v8;
  *(a2 + 8) = v10;
  LODWORD(v7) = [a1 processIdentifier];

  *(a2 + 16) = v7;
}

void ClientInfo.init(pid:)(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 processInfo];

  v6 = [v4 processInfo];
  [v6 processIdentifier];

  v7 = [v4 processInfo];
  v8 = [v7 processName];

  v9 = sub_23EDC19D0();
  v11 = v10;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = a1;
}

void ClientInfo.init(pid:name:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v9 = [v8 processInfo];

  v10 = [v8 processInfo];
  [v10 processIdentifier];

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = a1;
}

uint64_t ClientInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_23EDC1EC0();

  strcpy(v6, "Process Name:");
  MEMORY[0x23EF237D0](v1, v2);
  MEMORY[0x23EF237D0](977553696, 0xE400000000000000);
  v4 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v4);

  return v6[0];
}

BOOL static ClientInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_23EDC2240();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_23EDB1CA4()
{
  if (*v0)
  {
    result = 6580592;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_23EDB1CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_23EDC2240() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23EDC2240();

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

uint64_t sub_23EDB1DAC(uint64_t a1)
{
  v2 = sub_23EDB1FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB1DE8(uint64_t a1)
{
  v2 = sub_23EDB1FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClientInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3891F0, &qword_23EDC7FB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 4);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB1FB8();
  sub_23EDC23A0();
  v16 = 0;
  v11 = v13[1];
  sub_23EDC2160();
  if (!v11)
  {
    v15 = 1;
    sub_23EDC21A0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23EDB1FB8()
{
  result = qword_27E3891F8;
  if (!qword_27E3891F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891F8);
  }

  return result;
}

uint64_t ClientInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_23EDC1A50();
  return sub_23EDC2310();
}

uint64_t ClientInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_23EDC22F0();
  sub_23EDC1A50();
  sub_23EDC2310();
  return sub_23EDC2320();
}

uint64_t ClientInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389200, &qword_23EDC7FB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = objc_opt_self();
  v10 = [v9 processInfo];
  v11 = [v10 processName];

  sub_23EDC19D0();
  v12 = [v9 processInfo];
  [v12 processIdentifier];

  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB1FB8();
  sub_23EDC2360();
  if (!v2)
  {
    v14 = v21;
    v23 = 0;
    v15 = sub_23EDC20C0();
    v17 = v16;
    v20 = v15;

    v22 = 1;
    v19 = sub_23EDC2100();
    (*(v5 + 8))(v8, v4);
    *v14 = v20;
    *(v14 + 8) = v17;
    *(v14 + 16) = v19;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_23EDB234C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_23EDC22F0();
  sub_23EDC1A50();
  sub_23EDC2310();
  return sub_23EDC2320();
}

uint64_t sub_23EDB23B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_23EDC1A50();
  return sub_23EDC2310();
}

uint64_t sub_23EDB23E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_23EDC22F0();
  sub_23EDC1A50();
  sub_23EDC2310();
  return sub_23EDC2320();
}

unint64_t sub_23EDB244C()
{
  result = qword_27E389208;
  if (!qword_27E389208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389208);
  }

  return result;
}

BOOL sub_23EDB24A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_23EDC2240();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23EDB2518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_23EDB2560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23EDB25C4()
{
  result = qword_27E389210;
  if (!qword_27E389210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389210);
  }

  return result;
}

unint64_t sub_23EDB261C()
{
  result = qword_27E389218;
  if (!qword_27E389218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389218);
  }

  return result;
}

unint64_t sub_23EDB2674()
{
  result = qword_27E389220;
  if (!qword_27E389220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389220);
  }

  return result;
}

uint64_t sub_23EDB276C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23EDC1790();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23EDC1780();
}

uint64_t InferenceRequest.outputStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_outputStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389228, &qword_23EDC8220);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InferenceRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_requestID;
  v4 = sub_23EDC0EF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InferenceRequest.isCancelled.getter()
{
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v1 = sub_23EDC1790();
  __swift_project_value_buffer(v1, qword_27E3897E8);

  v2 = sub_23EDC1770();
  v3 = sub_23EDC1D70();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = *v0;
    v13 = sub_23EDC23E0();
    v14 = v7;
    MEMORY[0x23EF237D0](32, 0xE100000000000000);
    sub_23EDC0EF0();
    sub_23EDB33D4(&qword_27E388AE0, MEMORY[0x277CC95F0]);
    v8 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v8);

    v9 = sub_23ED713FC(v13, v14, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_23ED67000, v2, v3, "%s checking cancellation", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x23EF24B30](v5, -1, -1);
    MEMORY[0x23EF24B30](v4, -1, -1);
  }

  v10 = *(v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller + 24);
  v11 = *(v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller), v10);
  return (*(v11 + 8))(v10, v11) & 1;
}

Swift::Void __swiftcall InferenceRequest.cancel()()
{
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v1 = sub_23EDC1790();
  __swift_project_value_buffer(v1, qword_27E3897E8);

  v2 = sub_23EDC1770();
  v3 = sub_23EDC1D70();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    v6 = *v0;
    v12 = sub_23EDC23E0();
    v13 = v7;
    MEMORY[0x23EF237D0](32, 0xE100000000000000);
    sub_23EDC0EF0();
    sub_23EDB33D4(&qword_27E388AE0, MEMORY[0x277CC95F0]);
    v8 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v8);

    v9 = sub_23ED713FC(v12, v13, &v14);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_23ED67000, v2, v3, "cancelling %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x23EF24B30](v5, -1, -1);
    MEMORY[0x23EF24B30](v4, -1, -1);
  }

  v10 = *(v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller + 24);
  v11 = *(v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller), v10);
  (*(v11 + 16))(v10, v11);
}

uint64_t InferenceRequest.description.getter()
{
  v1 = *v0;
  v4 = sub_23EDC23E0();
  MEMORY[0x23EF237D0](32, 0xE100000000000000);
  sub_23EDC0EF0();
  sub_23EDB33D4(&qword_27E388AE0, MEMORY[0x277CC95F0]);
  v2 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v2);

  return v4;
}

uint64_t sub_23EDB2E6C()
{
  v1 = OBJC_IVAR____TtCC16AlchemistService16InferenceRequest14OutputDelegate_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389280, &unk_23EDC8380);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23EDB2EF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389278, &qword_23EDC8378);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  v10[1] = *a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389280, &unk_23EDC8380);
  sub_23EDC1C90();
  return (*(v5 + 8))(v8, v4);
}

uint64_t InferenceRequest.deinit()
{
  v1 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_outputStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389228, &qword_23EDC8220);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller));
  v3 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_requestID;
  v4 = sub_23EDC0EF0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t InferenceRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_outputStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389228, &qword_23EDC8220);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller));
  v3 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_requestID;
  v4 = sub_23EDC0EF0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23EDB31E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_requestID;
  v5 = sub_23EDC0EF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23EDB32A8()
{
  v1 = **v0;
  v4 = sub_23EDC23E0();
  MEMORY[0x23EF237D0](32, 0xE100000000000000);
  sub_23EDC0EF0();
  sub_23EDB33D4(&qword_27E388AE0, MEMORY[0x277CC95F0]);
  v2 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v2);

  return v4;
}

uint64_t sub_23EDB33D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23EDB3444()
{
  sub_23EDB362C(319, &qword_27E389250, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_23EDC0EF0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23EDB3574()
{
  sub_23EDB362C(319, &qword_27E389268, MEMORY[0x277D858B0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23EDB362C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E389010, &qword_23EDC58B0);
    v7 = a3(a1, &type metadata for ALCInferenceOutput, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_23EDB36A8(uint64_t a1)
{
  result = sub_23EDB33D4(&qword_27E389270, type metadata accessor for InferenceRequest.OutputDelegate);
  *(a1 + 8) = result;
  return result;
}

void sub_23EDB3700()
{
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v0 = sub_23EDC1790();
  __swift_project_value_buffer(v0, qword_27E3897E8);
  oslog = sub_23EDC1770();
  v1 = sub_23EDC1D60();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23ED67000, oslog, v1, "InferenceRequest finished with summary", v2, 2u);
    MEMORY[0x23EF24B30](v2, -1, -1);
  }
}

uint64_t InferenceSessionDefinition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23EDC0EF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InferenceSessionDefinition.id.setter(uint64_t a1)
{
  v3 = sub_23EDC0EF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_23EDB38D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E65696C63;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E65696C63;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23EDC2240();
  }

  return v9 & 1;
}

uint64_t sub_23EDB3970()
{
  v1 = *v0;
  sub_23EDC22F0();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

uint64_t sub_23EDB39E4()
{
  *v0;
  sub_23EDC1A50();
}

uint64_t sub_23EDB3A44()
{
  v1 = *v0;
  sub_23EDC22F0();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

uint64_t sub_23EDB3AB4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23EDC2070();

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

void sub_23EDB3B14(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x746E65696C63;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23EDB3B44()
{
  if (*v0)
  {
    result = 0x746E65696C63;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_23EDB3B70@<X0>(char *a1@<X8>)
{
  v2 = sub_23EDC2070();

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

uint64_t sub_23EDB3BD4(uint64_t a1)
{
  v2 = sub_23EDB3E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB3C10(uint64_t a1)
{
  v2 = sub_23EDB3E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceSessionDefinition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389288, &qword_23EDC8390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB3E28();
  sub_23EDC23A0();
  LOBYTE(v16) = 0;
  sub_23EDC0EF0();
  sub_23EDB45BC(&qword_27E388960);
  sub_23EDC2190();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for InferenceSessionDefinition() + 20));
    v12 = *v11;
    v13 = v11[1];
    LODWORD(v11) = *(v11 + 4);
    v16 = v12;
    v17 = v13;
    v18 = v11;
    v15[7] = 1;
    sub_23EDB3EC8();

    sub_23EDC2190();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23EDB3E28()
{
  result = qword_27E389290;
  if (!qword_27E389290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389290);
  }

  return result;
}

uint64_t type metadata accessor for InferenceSessionDefinition()
{
  result = qword_27E3892B0;
  if (!qword_27E3892B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23EDB3EC8()
{
  result = qword_27E389298;
  if (!qword_27E389298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389298);
  }

  return result;
}

uint64_t InferenceSessionDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_23EDC0EF0();
  v23 = *(v25 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3892A0, &qword_23EDC8398);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v22 - v8;
  v10 = type metadata accessor for InferenceSessionDefinition();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14[*(v12 + 24)] = 0;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB3E28();
  sub_23EDC2360();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = v23;
  LOBYTE(v27) = 0;
  sub_23EDB45BC(&qword_27E388978);
  v17 = v25;
  sub_23EDC20F0();
  (*(v16 + 32))(v14, v6, v17);
  v30 = 1;
  sub_23EDB4270();
  sub_23EDC20F0();
  v18 = v28;
  v19 = v29;
  v20 = &v14[*(v10 + 20)];
  *v20 = v27;
  *(v20 + 1) = v18;
  *(v20 + 4) = v19;
  sub_23EDB42C4();
  (*(v24 + 8))(v9, v26);
  sub_23ED71264(v14, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_23EDB452C(v14);
}

unint64_t sub_23EDB4270()
{
  result = qword_27E3892A8;
  if (!qword_27E3892A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3892A8);
  }

  return result;
}

uint64_t sub_23EDB42C4()
{
  v1 = v0;
  v2 = sub_23EDC1050();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3892E0, &qword_23EDC85B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = type metadata accessor for InferenceSessionDefinition();
  v22[0] = *(v1 + *(v12 + 20) + 16);
  sub_23EDC0F30();
  v13 = sub_23EDC1140();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  sub_23EDC1030();
  sub_23EDC1040();
  (*(v3 + 8))(v6, v2);
  type metadata accessor for ModelManagerInterface();
  v16 = swift_allocObject();
  sub_23EDC1650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DA8, &qword_23EDC85C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23EDC4860;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v16 + 16) = sub_23EDC1640();
  v18 = *(v12 + 24);
  v19 = *(v1 + v18);

  *(v1 + v18) = v16;
  v20 = *(v16 + 16);
  return sub_23EDC1630();
}

uint64_t sub_23EDB452C(uint64_t a1)
{
  v2 = type metadata accessor for InferenceSessionDefinition();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23EDB45BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23EDC0EF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23EDB4600@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23EDC0EF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23EDB46AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23EDC0EF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23EDB4780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23EDC0EF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23EDB483C()
{
  sub_23EDC0EF0();
  if (v0 <= 0x3F)
  {
    sub_23EDB48C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23EDB48C8()
{
  if (!qword_27E3892C0)
  {
    type metadata accessor for ModelManagerInterface();
    v0 = sub_23EDC1E40();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3892C0);
    }
  }
}

unint64_t sub_23EDB4934()
{
  result = qword_27E3892C8;
  if (!qword_27E3892C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3892C8);
  }

  return result;
}

unint64_t sub_23EDB498C()
{
  result = qword_27E3892D0;
  if (!qword_27E3892D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3892D0);
  }

  return result;
}

unint64_t sub_23EDB49E4()
{
  result = qword_27E3892D8;
  if (!qword_27E3892D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3892D8);
  }

  return result;
}

__n128 sub_23EDB4A38@<Q0>(uint64_t a1@<X8>)
{
  v2 = vcvt_f32_u32(*v1);
  LODWORD(v3) = 0;
  *(&v3 + 1) = *(v1 + 100) / v2.f32[1];
  result.n128_u64[0] = vdiv_f32(*(v1 + 112), v2);
  result.n128_u64[1] = 1065353216;
  *a1 = COERCE_UNSIGNED_INT(*(v1 + 80) / v2.f32[0]);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

float sub_23EDB4A84()
{
  result = *v0 / (*(v0 + 80) + *(v0 + 80));
  v2 = *(v0 + 4) / (*(v0 + 100) + *(v0 + 100));
  return result;
}

__n128 sub_23EDB4ACC@<Q0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v6 = *(v2 + 80);
  v5 = *(v2 + 96);
  if (fabsf(a2 + -1.0) > 0.00001)
  {
    v7 = vcvt_f32_u32(*v2);
    v8 = sqrtf(vaddv_f32(vmul_f32(v7, v7))) * 0.5;
    v14 = *(v2 + 80);
    v15 = *(v2 + 96);
    v9 = atanf(v8 / *(&v5 + 1));
    v10 = tanf(v9 * a2);
    v6 = v14;
    v5 = v15;
    *&v6 = v8 / v10;
    *(&v5 + 1) = v8 / v10;
  }

  v11 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v11;
  v12 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v12;
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v6;
  result = *(v2 + 112);
  *(a1 + 96) = v5;
  *(a1 + 112) = result;
  *(a1 + 128) = *(v2 + 128);
  return result;
}

float sub_23EDB4B90()
{
  result = 2.0 / *v0;
  v2 = -2.0 / v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

void sub_23EDB4BF0(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>, unsigned int a4@<S2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, __n128 a8@<Q6>)
{
  if ((*&a2.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2.f64[0] <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2.f64[0] >= 4294967300.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a3 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3 < 4294967300.0)
  {
    v8 = a2.f64[0];
    LODWORD(v9) = 0;
    HIDWORD(v9) = a4;
    a2.f64[1] = a3;
    *&v10 = vmul_f32(vcvt_f32_f64(a2), 0x3F0000003F000000);
    *(&v10 + 1) = 1065353216;
    *a1 = v8;
    *(a1 + 4) = a3;
    *(a1 + 8) = 0x497424003C23D70ALL;
    *(a1 + 16) = a5;
    *(a1 + 32) = a6;
    *(a1 + 48) = a7;
    *(a1 + 64) = a8;
    *(a1 + 80) = a4;
    *(a1 + 96) = v9;
    *(a1 + 112) = v10;
    *(a1 + 128) = 1108344832;
    return;
  }

LABEL_13:
  __break(1u);
}

__n128 __swift_memcpy132_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_23EDB4CF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 132))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EDB4D18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
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

  *(result + 132) = v3;
  return result;
}

void sub_23EDB4D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23EDC13D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D18, &unk_23EDC6740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = *(v6 + 16);
  v14(&v22 - v12, a3, v5);
  (*(v6 + 56))(v13, 0, 1, v5);
  v15 = OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_auxiliaryOutput;
  swift_beginAccess();
  sub_23EDB5EEC(v13, v3 + v15);
  swift_endAccess();
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v16 = sub_23EDC1790();
  __swift_project_value_buffer(v16, qword_27E3897E8);
  v14(v9, a3, v5);
  v17 = sub_23EDC1770();
  v18 = sub_23EDC1D60();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    sub_23EDC1340();
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    *(v19 + 4) = v21;
    _os_log_impl(&dword_23ED67000, v17, v18, "ServiceOutputDelegate got outputFocalLength: %{public}f", v19, 0xCu);
    MEMORY[0x23EF24B30](v19, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

void sub_23EDB5028(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = v4;
  v6 = *a3;
  v7 = *(v3 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_inferenceOutput);
  *(v3 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_inferenceOutput) = *a3;

  sub_23EDB5EDC(v7);
  if (v6)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      if (v8 != 1)
      {
        if (v8 >= 3)
        {
          if (v8 != 3)
          {
            if (v8 >= 5)
            {
              if (v8 != 5)
              {
                v9 = *(v6 + 40);
                v10 = *(v6 + 48);
                v44 = *(v6 + 56);
                v11 = *(v6 + 64);
                v46 = v5;
                v12 = *(v6 + 80);
                v41 = *(v6 + 88);
                v42 = *(v6 + 72);
                v13 = *(v6 + 96);
                v14 = *(v6 + 112);
                v39 = *(v6 + 120);
                v40 = *(v6 + 104);
                v45 = *(v3 + 120);
                v50 = *(v6 + 32);
                v51 = v9;
                v49 = v14;
                v15 = v50;
                v43 = v10;
                v52 = v10;
                v16 = v11;
                v17 = v11;
                v18 = v12;
                v19 = v13;
                v20 = sub_23EDB575C(&v50);
                if (v46)
                {

                  return;
                }

                v47 = v16;
                v26 = v52;
                [v45 setCoords:v20 withFormat:30 stride:12 offset:0];
                swift_unknownObjectRelease();
                v50 = v43;
                v51 = v44;
                [v45 setRots:sub_23EDB575C(&v50) withFormat:27 stride:8 offset:0];
                swift_unknownObjectRelease();
                v50 = v47;
                v51 = v42;
                [v45 setScales:sub_23EDB575C(&v50) withFormat:26 stride:6 offset:0];
                swift_unknownObjectRelease();
                v50 = v12;
                v51 = v41;
                [v45 setFeatures:sub_23EDB575C(&v50) withFormat:26 stride:6 offset:0];
                swift_unknownObjectRelease();
                v50 = v13;
                v51 = v40;
                [v45 setAlphas:sub_23EDB575C(&v50) withFormat:53 stride:2 offset:0];
                swift_unknownObjectRelease();
                v50 = v13;
                v51 = v40;
                v48 = Image.size.getter();
                Image.size.getter();
                v28 = v48 * v27;
                if ((v48 * v27) >> 64 == (v48 * v27) >> 63)
                {
                  if ((v28 & 0x8000000000000000) == 0)
                  {
                    if (!HIDWORD(v28))
                    {
                      [v45 setNumGaussians_];
                      [v45 setActivationOpacity_];
                      [v45 setActivationScale_];
                      if ([v45 computeCovariancesWith:0 error:0] && objc_msgSend(v45, sel_computeCentroids))
                      {
                        if (v39 == 2)
                        {

                          v29 = *(v3 + 128);
                          *(v3 + 128) = v14;
                        }

                        else
                        {
                          if (qword_27E388190 != -1)
                          {
                            swift_once();
                          }

                          v35 = sub_23EDC1790();
                          __swift_project_value_buffer(v35, qword_27E3897E8);
                          v36 = sub_23EDC1770();
                          v37 = sub_23EDC1D80();
                          if (os_log_type_enabled(v36, v37))
                          {
                            v38 = swift_slowAlloc();
                            *v38 = 0;
                            _os_log_impl(&dword_23ED67000, v36, v37, "The inference depth output is not backed by a pixel buffer.", v38, 2u);
                            MEMORY[0x23EF24B30](v38, -1, -1);
                          }
                        }

                        return;
                      }

                      if (qword_27E388190 == -1)
                      {
                        goto LABEL_22;
                      }

                      goto LABEL_40;
                    }

LABEL_39:
                    __break(1u);
LABEL_40:
                    swift_once();
LABEL_22:
                    v30 = sub_23EDC1790();
                    __swift_project_value_buffer(v30, qword_27E3897E8);
                    v31 = sub_23EDC1770();
                    v32 = sub_23EDC1D80();
                    if (os_log_type_enabled(v31, v32))
                    {
                      v33 = swift_slowAlloc();
                      *v33 = 0;
                      _os_log_impl(&dword_23ED67000, v31, v32, "Failed to compute GSAsset covariances and centroids", v33, 2u);
                      MEMORY[0x23EF24B30](v33, -1, -1);
                    }

                    sub_23ED721D8();
                    swift_allocError();
                    *v34 = 10;
                    swift_willThrow();

                    return;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_39;
              }

              goto LABEL_35;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_27E388190 != -1)
  {
LABEL_36:
    swift_once();
  }

  v21 = sub_23EDC1790();
  __swift_project_value_buffer(v21, qword_27E3897E8);
  v22 = sub_23EDC1770();
  v23 = sub_23EDC1D80();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_23ED67000, v22, v23, "Failed to retrieve image buffers from inference output", v24, 2u);
    MEMORY[0x23EF24B30](v24, -1, -1);
  }

  sub_23ED721D8();
  swift_allocError();
  *v25 = 2;
  swift_willThrow();
}

uint8_t *sub_23EDB575C(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    v2 = v1;
    v3 = *a1;
    PixelFormatType = CVPixelBufferGetPixelFormatType(v3);
    if (PixelFormatType == 1278226534 || PixelFormatType == 1278226536)
    {
      v22 = 0;
      MEMORY[0x28223BE20](PixelFormatType);
      sub_23EDC1D30();
      if (v1)
      {

        swift_unknownObjectRelease();
        return v2;
      }

      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v18 = sub_23EDC1790();
      __swift_project_value_buffer(v18, qword_27E3897E8);
      v10 = sub_23EDC1770();
      v2 = sub_23EDC1D80();
      if (!os_log_type_enabled(v10, v2))
      {
LABEL_21:

        sub_23ED721D8();
        swift_allocError();
        *v20 = 5;
        swift_willThrow();

        return v2;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23ED67000, v10, v2, "Unable to create MTLBuffer from output image", v19, 2u);
      v17 = v19;
    }

    else
    {
      v2 = PixelFormatType;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v9 = sub_23EDC1790();
      __swift_project_value_buffer(v9, qword_27E3897E8);
      v10 = sub_23EDC1770();
      v11 = sub_23EDC1D80();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_21;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      v14 = sub_23EDBA72C(v2);
      v2 = v15;
      v16 = sub_23ED713FC(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_23ED67000, v10, v11, "Unsupported pixel format type in output image: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x23EF24B30](v13, -1, -1);
      v17 = v12;
    }

    MEMORY[0x23EF24B30](v17, -1, -1);
    goto LABEL_21;
  }

  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v5 = sub_23EDC1790();
  __swift_project_value_buffer(v5, qword_27E3897E8);
  v6 = sub_23EDC1770();
  v7 = sub_23EDC1D80();
  if (os_log_type_enabled(v6, v7))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23ED67000, v6, v7, "Unable to get the pixel buffer from output image", v2, 2u);
    MEMORY[0x23EF24B30](v2, -1, -1);
  }

  sub_23ED721D8();
  swift_allocError();
  *v8 = 2;
  swift_willThrow();
  return v2;
}

id sub_23EDB5B50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  LOBYTE(v19) = a3;
  v12 = Image.size.getter();
  LOBYTE(v17) = a3;
  result = Image.size.getter();
  if ((v12 * v14) >> 64 == (v12 * v14) >> 63)
  {
    if ((v12 * v14 * a4) >> 64 == (v12 * v14 * a4) >> 63)
    {
      v15 = [*(a6 + 112) newBufferWithBytesNoCopy:a1 length:a2 options:v17 deallocator:{a2, v19}];
      v16 = *a5;
      *a5 = v15;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23EDB5C2C()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();

  sub_23EDB5FE8(v0 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_auxiliaryOutput);
  sub_23EDB5EDC(*(v0 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_inferenceOutput));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ServiceOutputDelegate()
{
  result = qword_27E389300;
  if (!qword_27E389300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23EDB5CE8()
{
  sub_23EDB5DAC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23EDB5DAC()
{
  if (!qword_27E389310)
  {
    sub_23EDC13D0();
    v0 = sub_23EDC1E40();
    if (!v1)
    {
      atomic_store(v0, &qword_27E389310);
    }
  }
}

unint64_t sub_23EDB5E34(uint64_t a1)
{
  result = sub_23EDB5E5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23EDB5E5C()
{
  result = qword_27E389318;
  if (!qword_27E389318)
  {
    type metadata accessor for ServiceOutputDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389318);
  }

  return result;
}

uint64_t sub_23EDB5EDC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_23EDB5EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D18, &unk_23EDC6740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_23EDB5FB0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_23EDB5FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D18, &unk_23EDC6740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23EDB6050(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 128) = 0;
  v5 = OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_auxiliaryOutput;
  v6 = sub_23EDC13D0();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_inferenceOutput) = 1;
  *(v2 + 112) = a1;
  v7 = objc_allocWithZone(MEMORY[0x277D00868]);
  swift_unknownObjectRetain();
  v8 = [v7 init];
  *(v2 + 120) = v8;
  [v8 setCgColorSpace_];
  [*(v2 + 120) setNumGaussians_];
  [*(v2 + 120) setNumFeatures_];
  [*(v2 + 120) setMaxCoeff_];
  return v2;
}

uint64_t sub_23EDB61B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_23EDC13D0();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = sub_23EDC1220();
  v7[13] = v11;
  v12 = *(v11 - 8);
  v7[14] = v12;
  v13 = *(v12 + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v14 = sub_23EDC0EF0();
  v7[17] = v14;
  v15 = *(v14 - 8);
  v7[18] = v15;
  v16 = *(v15 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23EDB636C, v6, 0);
}

uint64_t sub_23EDB636C()
{
  v59 = v0;
  v1 = v0[6];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  sub_23ED83F54(v3, v2);
  v13 = *(v0[9] + 112);
  v0[23] = v13;
  if (v13)
  {
    v14 = qword_27E388190;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = v0[21];
    v15 = v0[22];
    v17 = v0[17];
    v18 = v0[18];
    v20 = v0[4];
    v19 = v0[5];
    v21 = sub_23EDC1790();
    v0[24] = __swift_project_value_buffer(v21, qword_27E3897E8);
    v22 = *(v18 + 16);
    v0[25] = v22;
    v0[26] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v15, v20, v17);
    v22(v16, v19, v17);
    v23 = sub_23EDC1770();
    v24 = sub_23EDC1D90();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[21];
    v26 = v0[22];
    v28 = v0[17];
    v29 = v0[18];
    if (v25)
    {
      v56 = v0[21];
      v30 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58[0] = v57;
      *v30 = 136446466;
      sub_23EDB7B7C(&qword_27E388AE0, MEMORY[0x277CC95F0]);
      v31 = sub_23EDC21E0();
      v55 = v24;
      v33 = v32;
      log = v23;
      v34 = *(v29 + 8);
      v34(v26, v28);
      v35 = sub_23ED713FC(v31, v33, v58);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      v36 = sub_23EDC21E0();
      v38 = v37;
      v34(v56, v28);
      v39 = sub_23ED713FC(v36, v38, v58);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_23ED67000, log, v55, "Running inference pipeline for <operation: %{public}s, provider: %{public}s>", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF24B30](v57, -1, -1);
      MEMORY[0x23EF24B30](v30, -1, -1);
    }

    else
    {

      v34 = *(v29 + 8);
      v34(v27, v28);
      v34(v26, v28);
    }

    v0[27] = v34;
    v43 = v0[16];
    v44 = v0[12];
    v45 = v0[3];
    v46 = *(v45 + 24);
    v47 = *(v45 + 40);
    LOBYTE(v58[0]) = 0;
    sub_23EDC1260();
    v0[28] = 0;
    v49 = v0[7];
    v48 = v0[8];
    v0[29] = swift_getObjectType();
    v50 = *(v48 + 24);
    v48 += 24;
    v0[30] = v50;
    v0[31] = v48 & 0xFFFFFFFFFFFFLL | 0xE148000000000000;
    v51 = *(v48 - 16);
    v53 = sub_23EDC1B90();
    v0[32] = v53;
    v0[33] = v52;

    return MEMORY[0x2822009F8](sub_23EDB688C, v53, v52);
  }

  else
  {
    v40 = sub_23EDC1530();
    sub_23EDB7B7C(&qword_27E388768, MEMORY[0x277D29DE0]);
    swift_allocError();
    v42 = v41;
    sub_23ED90B6C(MEMORY[0x277D84F90]);
    sub_23EDC1520();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D29DD8], v40);
    swift_willThrow();
    v5 = v0[21];
    v4 = v0[22];
    v7 = v0[19];
    v6 = v0[20];
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[12];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_23EDB688C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 56);
  (*(v0 + 240))(*(v0 + 32), *(v0 + 40), *(v0 + 96), *(v0 + 232), *(v0 + 64));
  *(v0 + 272) = v2;
  v4 = *(v0 + 72);
  if (v2)
  {
    v5 = sub_23EDB6DB0;
  }

  else
  {
    v5 = sub_23EDB6924;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23EDB6924()
{
  v1 = v0[15];
  v2 = v0[8];
  (*(v0[14] + 16))(v1, v0[16], v0[13]);
  sub_23ED8636C(v1, v0 + 2);
  v0[35] = *(v2 + 16);
  v0[36] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xD17D000000000000;
  v3 = v0[32];
  v4 = v0[33];

  return MEMORY[0x2822009F8](sub_23EDB69B8, v3, v4);
}

uint64_t sub_23EDB69B8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 56);
  (*(v0 + 280))(*(v0 + 32), *(v0 + 40), v0 + 16, *(v0 + 232), *(v0 + 64));
  *(v0 + 296) = v2;
  v4 = *(v0 + 16);

  v5 = *(v0 + 72);
  if (v2)
  {
    v6 = sub_23EDB6EB0;
  }

  else
  {
    v6 = sub_23EDB6A5C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23EDB6A5C()
{
  v46 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[5];
  v2(v0[20], v0[4], v5);
  v2(v4, v6, v5);
  v7 = sub_23EDC1770();
  v40 = sub_23EDC1D90();
  v8 = os_log_type_enabled(v7, v40);
  v9 = v0[27];
  v10 = v0[20];
  v41 = v0[19];
  v42 = v0[23];
  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[16];
  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[11];
  v17 = v0[10];
  v43 = v17;
  v44 = v0[12];
  if (v8)
  {
    log = v7;
    v18 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v18 = 136446466;
    sub_23EDB7B7C(&qword_27E388AE0, MEMORY[0x277CC95F0]);
    v38 = v14;
    v39 = v15;
    v19 = sub_23EDC21E0();
    v21 = v20;
    v9(v10, v11);
    v22 = sub_23ED713FC(v19, v21, &v45);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_23EDC21E0();
    v25 = v24;
    v9(v41, v11);
    v26 = sub_23ED713FC(v23, v25, &v45);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_23ED67000, log, v40, "Completed inference pipeline for <operation: %{public}s, provider: %{public}s>", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF24B30](v37, -1, -1);
    MEMORY[0x23EF24B30](v18, -1, -1);

    (*(v16 + 8))(v44, v43);
    (*(v38 + 8))(v13, v39);
  }

  else
  {

    v9(v41, v11);
    v9(v10, v11);
    (*(v16 + 8))(v44, v43);
    (*(v14 + 8))(v13, v15);
  }

  v28 = v0[21];
  v27 = v0[22];
  v30 = v0[19];
  v29 = v0[20];
  v32 = v0[15];
  v31 = v0[16];
  v33 = v0[12];

  v34 = v0[1];

  return v34();
}

uint64_t sub_23EDB6DB0()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[34];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[12];

  v16 = v0[1];

  return v16();
}

uint64_t sub_23EDB6EB0()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[37];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[12];

  v16 = v0[1];

  return v16();
}

uint64_t sub_23EDB6FB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23EDC0E80();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23EDB7080, v2, 0);
}

uint64_t sub_23EDB7080()
{
  v35 = v0;
  v1 = v0[4];
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v3 = sub_23EDC1330();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v2 = sub_23EDC1320();
  }

  v6 = qword_27E3881A0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = v0[3];
  v8 = sub_23EDC1790();
  __swift_project_value_buffer(v8, qword_27E389818);

  v9 = sub_23EDC1770();
  v10 = sub_23EDC1D90();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[2];
    v11 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23ED713FC(v12, v11, v34);
    _os_log_impl(&dword_23ED67000, v9, v10, "Received transition to loaded for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x23EF24B30](v14, -1, -1);
    MEMORY[0x23EF24B30](v13, -1, -1);
  }

  v15 = sub_23ED7CCEC(v0[2], v0[3]);
  if (v15)
  {
    if (v15 == 1)
    {
      if ((sub_23EDC1290() & 1) == 0)
      {
        sub_23ED7D270(v0[2], v0[3], v0[7]);
        v28 = v0[6];
        v27 = v0[7];
        v29 = v0[5];
        sub_23EDC12C0();
        (*(v28 + 8))(v27, v29);
      }

      sub_23EDC12F0();
    }
  }

  else
  {
    if ((sub_23EDC12B0() & 1) == 0)
    {
      sub_23ED7CEF4(v0[2], v0[3], v0[8]);
      v30 = v0[8];
      v31 = v0[5];
      v32 = v0[6];
      sub_23EDC12D0();
      (*(v32 + 8))(v30, v31);
    }

    sub_23EDC1310();
  }

  v16 = v0[3];

  v17 = sub_23EDC1770();
  v18 = sub_23EDC1D90();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[2];
    v19 = v0[3];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_23ED713FC(v20, v19, v34);
    _os_log_impl(&dword_23ED67000, v17, v18, "Successfully transitioned to loaded for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x23EF24B30](v22, -1, -1);
    MEMORY[0x23EF24B30](v21, -1, -1);
  }

  v24 = v0[7];
  v23 = v0[8];
  v25 = *(v1 + 112);
  *(v1 + 112) = v2;

  v26 = v0[1];

  return v26();
}

uint64_t sub_23EDB7448(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23EDB746C, v2, 0);
}

uint64_t sub_23EDB746C()
{
  v24 = v0;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_23EDC1790();
  __swift_project_value_buffer(v2, qword_27E389818);

  v3 = sub_23EDC1770();
  v4 = sub_23EDC1D90();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23ED713FC(v6, v5, v23);
    _os_log_impl(&dword_23ED67000, v3, v4, "Received transition to unloaded for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EF24B30](v8, -1, -1);
    MEMORY[0x23EF24B30](v7, -1, -1);
  }

  v9 = v0[4];
  if (*(v9 + 112))
  {
    v11 = v0[2];
    v10 = v0[3];
    v12 = *(v9 + 112);

    v13 = sub_23ED7CCEC(v11, v10);
    if (v13)
    {
      if (v13 == 1)
      {
        sub_23EDC12E0();
        sub_23EDC1280();
      }
    }

    else
    {
      sub_23EDC1300();
      sub_23EDC12A0();
    }

    v14 = v0[3];

    v15 = sub_23EDC1770();
    v16 = sub_23EDC1D90();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[2];
      v17 = v0[3];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_23ED713FC(v18, v17, v23);
      _os_log_impl(&dword_23ED67000, v15, v16, "Successfully transitioned to unloaded for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x23EF24B30](v20, -1, -1);
      MEMORY[0x23EF24B30](v19, -1, -1);
    }
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_23EDB7758(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23EDB777C, v2, 0);
}

uint64_t sub_23EDB777C()
{
  v26 = v0;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_23EDC1790();
  __swift_project_value_buffer(v2, qword_27E389818);

  v3 = sub_23EDC1770();
  v4 = sub_23EDC1D90();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23ED713FC(v6, v5, v25);
    _os_log_impl(&dword_23ED67000, v3, v4, "Received transition to dynamic mode for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EF24B30](v8, -1, -1);
    MEMORY[0x23EF24B30](v7, -1, -1);
  }

  if (*(v0[4] + 112))
  {
    v9 = objc_opt_self();

    v10 = [v9 aneArchitectureType];
    v11 = sub_23EDC19D0();
    v13 = v12;

    if (v11 == 3354984 && v13 == 0xE300000000000000 || (sub_23EDC2240() & 1) != 0 || v11 == 1731408232 && v13 == 0xE400000000000000)
    {
    }

    else
    {
      v14 = sub_23EDC2240();

      if ((v14 & 1) == 0)
      {
        v15 = sub_23ED7CCEC(v0[2], v0[3]);
        if (v15)
        {
          if (v15 == 1)
          {
            sub_23EDC12E0();
          }
        }

        else
        {
          sub_23EDC1300();
        }

        goto LABEL_18;
      }
    }

    sub_23EDC1270();
LABEL_18:
    v16 = v0[3];

    v17 = sub_23EDC1770();
    v18 = sub_23EDC1D90();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[2];
      v19 = v0[3];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_23ED713FC(v20, v19, v25);
      _os_log_impl(&dword_23ED67000, v17, v18, "Successfully transitioned to dynamic mode for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x23EF24B30](v22, -1, -1);
      MEMORY[0x23EF24B30](v21, -1, -1);
    }
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_23EDB7B20()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23EDB7B7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23EDB7BD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23EDC13F0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23EDB7C98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_23EDC13F0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for InferenceRecipe()
{
  result = qword_27E389320;
  if (!qword_27E389320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23EDB7D88()
{
  result = sub_23EDC13F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23EDB7E0C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389330, &qword_23EDC8898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB84C0();
  sub_23EDC23A0();
  v11 = *(v3 + 4);
  v13 = *(v3 + 3);
  v12 = *(v3 + 4);
  v20 = *v3;
  v21 = v11;
  v22 = v13;
  v23 = v12;
  v19[15] = 0;
  sub_23EDB8514();
  v14 = v13;

  sub_23EDC2190();
  v15 = v22;

  if (!v2)
  {
    v16 = *(v3 + 10);
    LOBYTE(v20) = 1;
    sub_23EDC2170();
    v17 = *(type metadata accessor for InferenceRecipe() + 24);
    LOBYTE(v20) = 2;
    sub_23EDC13F0();
    sub_23EDB85BC(&qword_27E389348);
    sub_23EDC2190();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_23EDB801C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_23EDC13F0();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389350, &qword_23EDC88A0);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - v8;
  v10 = type metadata accessor for InferenceRecipe();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB84C0();
  sub_23EDC2360();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v21 = a1;
    v16 = v24;
    v15 = v25;
    v17 = v13;
    v30 = 0;
    sub_23EDB8568();
    v18 = v26;
    sub_23EDC20F0();
    v19 = v28;
    *v17 = v27;
    *(v17 + 16) = v19;
    *(v17 + 24) = v29;
    LOBYTE(v27) = 1;
    sub_23EDC20D0();
    *(v17 + 40) = v20;
    LOBYTE(v27) = 2;
    sub_23EDB85BC(&qword_27E389360);
    sub_23EDC20F0();
    (*(v16 + 8))(v9, v18);
    (*(v22 + 32))(v17 + *(v10 + 24), v6, v15);
    sub_23ED6FAC8(v17, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    sub_23EDB8600(v17);
  }
}

uint64_t sub_23EDB8388()
{
  v1 = 0x6E654C6C61636F66;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_23EDB83F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23EDB8774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23EDB8418(uint64_t a1)
{
  v2 = sub_23EDB84C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB8454(uint64_t a1)
{
  v2 = sub_23EDB84C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23EDB84C0()
{
  result = qword_27E389338;
  if (!qword_27E389338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389338);
  }

  return result;
}

unint64_t sub_23EDB8514()
{
  result = qword_27E389340;
  if (!qword_27E389340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389340);
  }

  return result;
}

unint64_t sub_23EDB8568()
{
  result = qword_27E389358;
  if (!qword_27E389358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389358);
  }

  return result;
}

uint64_t sub_23EDB85BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23EDC13F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23EDB8600(uint64_t a1)
{
  v2 = type metadata accessor for InferenceRecipe();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23EDB8670()
{
  result = qword_27E389368;
  if (!qword_27E389368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389368);
  }

  return result;
}

unint64_t sub_23EDB86C8()
{
  result = qword_27E389370;
  if (!qword_27E389370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389370);
  }

  return result;
}

unint64_t sub_23EDB8720()
{
  result = qword_27E389378;
  if (!qword_27E389378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389378);
  }

  return result;
}

uint64_t sub_23EDB8774(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E654C6C61636F66 && a2 == 0xED00007850687467 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023EDCB9A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23EDC2240();

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

void sub_23EDB88A0(uint64_t a1)
{
  sub_23EDB8DEC();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_23EDC1E40();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23EDB8928(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_23EDB8AE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 8) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = &a1[v11 + 8] & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

void sub_23EDB8DEC()
{
  if (!qword_27E389400)
  {
    v0 = sub_23EDC1720();
    if (!v1)
    {
      atomic_store(v0, &qword_27E389400);
    }
  }
}

void sub_23EDB8E40(uint64_t a1)
{
  v2 = *v1;
  v5[2] = *(a1 + 16);
  v5[8] = sub_23EDC1E40();
  v5[9] = sub_23EDB8F9C;
  v5[10] = v5;
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_23EDB8FB8();
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_23EDB8F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for WriteOnceReadMany() + 28);
  v5 = sub_23EDC1E40();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_23EDB8FB8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

double sub_23EDB8FE0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  Width = CVPixelBufferGetWidth(v3);
  Height = CVPixelBufferGetHeight(v3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v3);

  *a2 = Width;
  *(a2 + 8) = Height;
  *(a2 + 16) = PixelFormatType;
  *(a2 + 24) = v3;
  type metadata accessor for PixelBufferArchive.HiddenBufferData();
  v7 = swift_allocObject();
  result = 0.0;
  *(v7 + 16) = xmmword_23EDC45C0;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_23EDB9068()
{
  sub_23ED6F900(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_23EDB90C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23EDB910C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

int64_t sub_23EDB9164()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v2;
  if (v3 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v5 = *(v0 + 24);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
  result = CVPixelBufferGetHeight(v5);
  v8 = BytesPerRow * result;
  if ((BytesPerRow * result) >> 64 == (BytesPerRow * result) >> 63)
  {
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    result = CVPixelBufferGetBaseAddress(v5);
    if (result)
    {
      v4 = sub_23EDB9FB8(result, v8);
      v9 = *(v1 + 16);
      v10 = *(v1 + 24);
      *(v1 + 16) = v4;
      *(v1 + 24) = v11;
      sub_23ED922EC(v4, v11);
      sub_23ED6F900(v9, v10);
      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
LABEL_5:
      sub_23EDBA068(v2, v3);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23EDB9244()
{
  v1 = 0x6144726566667562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265666552637078;
  }
}

uint64_t sub_23EDB92B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23EDBA264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23EDB92D8(uint64_t a1)
{
  v2 = sub_23EDB9E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB9314(uint64_t a1)
{
  v2 = sub_23EDB9E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDB9350(void *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389470, &qword_23EDC8BB0);
  v26 = *(v29 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v25 - v4;
  v6 = *v1;
  v7 = v1[1];
  v37 = *(v1 + 4);
  v8 = v1[3];
  v9 = v1[4];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB9E04();
  v27 = v5;
  sub_23EDC23A0();
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if (sub_23EDB00D4(v11, v12))
  {
    v32 = v6;
    v33 = v7;
    v34 = v37;
    v35 = v8;
    v36 = v9;
    LOBYTE(v30) = 0;
    v13 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389460, &qword_23EDC8BA8);
    sub_23ED86D4C(&qword_27E389480, &qword_27E389460, &qword_23EDC8BA8);
    v14 = v29;
    v15 = v27;
    sub_23EDC2190();
    v16 = v35;

    return (*(v26 + 8))(v15, v14);
  }

  else
  {
    v18 = v26;
    v19 = v6;
    v32 = v6;
    v33 = v7;
    v20 = v37;
    v34 = v37;
    v35 = v8;
    v36 = v9;
    v30 = sub_23EDB9164();
    v31 = v21;
    v38 = 1;
    sub_23EDAA5D0();
    v22 = v28;
    v23 = v29;
    v24 = v27;
    sub_23EDC2190();
    sub_23ED6F8AC(v30, v31);
    if (!v22)
    {
      v32 = v19;
      v33 = v7;
      v34 = v20;
      LOBYTE(v30) = 2;
      sub_23EDB9EAC();
      sub_23EDC2190();
    }

    return (*(v18 + 8))(v24, v23);
  }
}

uint64_t sub_23EDB9604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389448, &qword_23EDC8BA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB9E04();
  sub_23EDC2360();
  if (!v2)
  {
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    if (sub_23EDB00EC(v12, v13))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389460, &qword_23EDC8BA8);
      v27 = 0;
      sub_23ED86D4C(&qword_27E389468, &qword_27E389460, &qword_23EDC8BA8);
      sub_23EDC20F0();
      (*(v6 + 8))(v9, v5);
      v14 = v23;
      v15 = v24;
      v17 = v25;
      v16 = v26;
    }

    else
    {
      v27 = 1;
      sub_23EDAA8A8();
      sub_23EDC20F0();
      v19 = *(&v23 + 1);
      v18 = v23;
      v27 = 2;
      sub_23EDB9E58();
      sub_23EDC20F0();
      v20 = v18;
      v22 = v18;
      v15 = v24;
      v21 = v23;
      v17 = sub_23EDBA390(v20, v19, &v23);
      (*(v6 + 8))(v9, v5);
      sub_23ED6F8AC(v22, v19);
      type metadata accessor for PixelBufferArchive.HiddenBufferData();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_23EDC45C0;
      v14 = v21;
    }

    *a2 = v14;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
    *(a2 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_23EDB99F0(uint64_t a1)
{
  v2 = sub_23EDB9DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB9A2C(uint64_t a1)
{
  v2 = sub_23EDB9DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDB9A68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389438, &qword_23EDC8B98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB9DB0();
  sub_23EDC23A0();
  return (*(v3 + 8))(v6, v2);
}

void sub_23EDB9B7C(__IOSurface *a1@<X1>, uint64_t a2@<X8>)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v3 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], a1, 0, v6);
  if (v3 || !v6[0])
  {
    sub_23ED87720();
    swift_allocError();
    *v4 = v3;
    *(v4 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    sub_23EDB8FE0(v6[0], a2);
  }

  v5 = *MEMORY[0x277D85DE8];
}

unint64_t sub_23EDB9C48(uint64_t a1)
{
  *(a1 + 8) = sub_23EDB8568();
  result = sub_23EDB8514();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23EDB9C88()
{
  result = qword_27E389420;
  if (!qword_27E389420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389420);
  }

  return result;
}

unint64_t sub_23EDB9CE0()
{
  result = qword_27E389428;
  if (!qword_27E389428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389428);
  }

  return result;
}

unint64_t sub_23EDB9D34(uint64_t a1)
{
  result = sub_23EDB9D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23EDB9D5C()
{
  result = qword_27E389430;
  if (!qword_27E389430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389430);
  }

  return result;
}

unint64_t sub_23EDB9DB0()
{
  result = qword_27E389440;
  if (!qword_27E389440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389440);
  }

  return result;
}

unint64_t sub_23EDB9E04()
{
  result = qword_27E389450;
  if (!qword_27E389450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389450);
  }

  return result;
}

unint64_t sub_23EDB9E58()
{
  result = qword_27E389458;
  if (!qword_27E389458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389458);
  }

  return result;
}

unint64_t sub_23EDB9EAC()
{
  result = qword_27E389478;
  if (!qword_27E389478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389478);
  }

  return result;
}

uint64_t sub_23EDB9F00(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23EDB9FB8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23EDB9F00(a1, &a1[a2]);
  }

  v3 = sub_23EDC0DF0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_23EDC0DB0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23EDC0E90();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_23EDBA068(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23ED922EC(a1, a2);
  }

  return a1;
}

unint64_t sub_23EDBA0B0()
{
  result = qword_27E389488;
  if (!qword_27E389488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389488);
  }

  return result;
}

unint64_t sub_23EDBA108()
{
  result = qword_27E389490;
  if (!qword_27E389490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389490);
  }

  return result;
}

unint64_t sub_23EDBA160()
{
  result = qword_27E389498;
  if (!qword_27E389498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389498);
  }

  return result;
}

unint64_t sub_23EDBA1B8()
{
  result = qword_27E3894A0;
  if (!qword_27E3894A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894A0);
  }

  return result;
}

unint64_t sub_23EDBA210()
{
  result = qword_27E3894A8;
  if (!qword_27E3894A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894A8);
  }

  return result;
}

uint64_t sub_23EDBA264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265666552637078 && a2 == 0xEC00000065636E65;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726566667562 && a2 == 0xEA00000000006174 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023EDCBA10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23EDC2240();

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

int64_t sub_23EDBA390(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 4);
  v9 = sub_23EDC1420();
  v10 = v9;
  if (v3)
  {
    return v10;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
  result = CVPixelBufferGetHeight(v10);
  v13 = result * BytesPerRow;
  if ((result * BytesPerRow) >> 64 != (result * BytesPerRow) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (!v17)
    {
      if (v18 == v13)
      {
        goto LABEL_10;
      }

LABEL_15:
      sub_23EDBA510();
      swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 5;
      swift_willThrow();

      return v10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v14)
  {
    if (BYTE6(a2) != v13)
    {
      goto LABEL_15;
    }

LABEL_10:
    MEMORY[0x28223BE20](result);
    sub_23EDC1D30();
    return v10;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    if (HIDWORD(a1) - a1 != v13)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_23EDBA510()
{
  result = qword_27E3894B0;
  if (!qword_27E3894B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894B0);
  }

  return result;
}

void *sub_23EDBA564(void *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v3)
    {
      __src = a2;
      v17 = a3;
      v18 = BYTE2(a3);
      v19 = BYTE3(a3);
      v20 = BYTE4(a3);
      v21 = BYTE5(a3);
      return memcpy(result, &__src, BYTE6(a3));
    }

    v11 = a2;
    v10 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {
      v4 = result;
      v12 = sub_23EDC0DC0();
      if (!v12)
      {
LABEL_26:
        result = sub_23EDC0DD0();
        goto LABEL_27;
      }

      v13 = v12;
      v14 = sub_23EDC0DE0();
      if (!__OFSUB__(v11, v14))
      {
        v7 = (v11 - v14 + v13);
        result = sub_23EDC0DD0();
        if (v7)
        {
          goto LABEL_16;
        }

LABEL_27:
        __break(1u);
        return result;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 != 2)
  {
    return result;
  }

  v4 = result;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_23EDC0DC0();
  if (v7)
  {
    v8 = sub_23EDC0DE0();
    if (__OFSUB__(v5, v8))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v7 += v5 - v8;
  }

  v9 = __OFSUB__(v6, v5);
  v10 = v6 - v5;
  if (v9)
  {
    goto LABEL_23;
  }

  result = sub_23EDC0DD0();
  if (!v7)
  {
    __break(1u);
    return result;
  }

LABEL_16:
  if (result >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = result;
  }

  return memmove(v4, v7, v15);
}

uint64_t sub_23EDBA72C(unsigned int a1)
{
  v2 = sub_23EDC1A40();
  v4 = v3;
  v5 = sub_23EDC1A40();
  v7 = v6;
  v8 = sub_23EDC1A40();
  v10 = v9;
  v11 = sub_23EDC1A40();
  v13 = v12;
  if (sub_23EDBAA58(v2, v4) & 1) != 0 && (sub_23EDBAA58(v5, v7) & 1) != 0 && (sub_23EDBAA58(v8, v10) & 1) != 0 && (sub_23EDBAA58(v11, v13))
  {
    MEMORY[0x23EF237D0](39, 0xE100000000000000);
    sub_23EDC18F0();

    sub_23EDC18F0();

    sub_23EDC18F0();

    sub_23EDC18F0();

    MEMORY[0x23EF237D0](39, 0xE100000000000000);
    return 0;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3894F0, &qword_23EDC9018);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23EDC4860;
    v16 = MEMORY[0x277D83C10];
    *(v15 + 56) = MEMORY[0x277D83B88];
    *(v15 + 64) = v16;
    *(v15 + 32) = a1;
    return sub_23EDC19E0();
  }
}

unint64_t sub_23EDBAA58(unint64_t a1, unint64_t a2)
{
  if (sub_23EDC1900() & 1) != 0 || (sub_23EDC1910() & 1) != 0 || (sub_23EDC18E0())
  {
    return 1;
  }

  if ((sub_23EDC18D0() & 1) == 0)
  {
    return 0;
  }

  result = sub_23EDBB984(a1, a2);
  if ((result & 0x100000000) == 0)
  {
    return (result - 14) <= 0xFFFFFFFB && (result - 8232) >= 2 && result != 133;
  }

  __break(1u);
  return result;
}

uint64_t PixelDimensions.description.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](2127904, 0xE300000000000000);
  v2 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v2);

  return v5;
}

uint64_t sub_23EDBABC0()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_23EDBABF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_23EDC2240() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23EDC2240();

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

uint64_t sub_23EDBACC8(uint64_t a1)
{
  v2 = sub_23EDBBDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBAD04(uint64_t a1)
{
  v2 = sub_23EDBBDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PixelDimensions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3894B8, &qword_23EDC8D80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBBDCC();
  sub_23EDC23A0();
  v14 = 0;
  sub_23EDC2180();
  if (!v2)
  {
    v13 = 1;
    sub_23EDC2180();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PixelDimensions.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x23EF24060](*v0);
  return MEMORY[0x23EF24060](v1);
}

uint64_t PixelDimensions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  MEMORY[0x23EF24060](v2);
  return sub_23EDC2320();
}

uint64_t PixelDimensions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3894C8, &qword_23EDC8D88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBBDCC();
  sub_23EDC2360();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_23EDC20E0();
    v15 = 1;
    v12 = sub_23EDC20E0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_23EDBB130()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  MEMORY[0x23EF24060](v2);
  return sub_23EDC2320();
}

uint64_t sub_23EDBB18C()
{
  v1 = v0[1];
  MEMORY[0x23EF24060](*v0);
  return MEMORY[0x23EF24060](v1);
}

uint64_t sub_23EDBB1C8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  MEMORY[0x23EF24060](v2);
  return sub_23EDC2320();
}

uint64_t sub_23EDBB268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (a2 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (a4 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  if (a2 <= a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v8 = v6 >= v7;
  v9 = v5 < v4 || v8;
  if (v4 >= v5)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

BOOL sub_23EDBB2A8(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return (_s16AlchemistService15PixelDimensionsV1loiySbAC_ACtFZ_0(&v5, &v4) & 1) == 0;
}

uint64_t sub_23EDBB2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (a2 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (a4 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  if (a2 <= a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v8 = v6 < v7;
  if (v5 < v4)
  {
    v8 = 0;
  }

  return v4 < v5 || v8;
}

uint64_t sub_23EDBB33C()
{
  v1 = v0[1];
  v2 = *(v0 + 4);
  v6 = *v0;
  v7 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](2127904, 0xE300000000000000);
  v3 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v3);

  MEMORY[0x23EF237D0](32, 0xE100000000000000);
  v4 = sub_23EDBA72C(v2);
  MEMORY[0x23EF237D0](v4);

  return v7;
}

uint64_t sub_23EDBB40C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389510, &qword_23EDC9100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v16 = *(v1 + 4);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBC004();
  sub_23EDC23A0();
  v14 = v9;
  v15 = v8;
  v17 = 0;
  sub_23EDBC0AC();
  v11 = v13[1];
  sub_23EDC2190();
  if (!v11)
  {
    LOBYTE(v14) = 1;
    sub_23EDC21B0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_23EDBB5B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3894F8, &qword_23EDC90F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBC004();
  sub_23EDC2360();
  if (!v2)
  {
    v16 = 0;
    sub_23EDBC058();
    sub_23EDC20F0();
    v11 = v15[0];
    v12 = v15[1];
    LOBYTE(v15[0]) = 1;
    v13 = sub_23EDC2110();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_23EDBB770()
{
  if (*v0)
  {
    result = 0x726F466C65786970;
  }

  else
  {
    result = 0x6F69736E656D6964;
  }

  *v0;
  return result;
}

uint64_t sub_23EDBB7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL;
  if (v6 || (sub_23EDC2240() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23EDC2240();

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

uint64_t sub_23EDBB8A8(uint64_t a1)
{
  v2 = sub_23EDBC004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBB8E4(uint64_t a1)
{
  v2 = sub_23EDBC004();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23EDBB984(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_23EDBBAD4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_23EDC1EB0();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_23EDC1F40() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_23EDBBAD4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_23EDBBB6C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_23EDBBBE0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_23EDBBB6C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_23EDBBD04(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23EDBBBE0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_23EDC1F40();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}