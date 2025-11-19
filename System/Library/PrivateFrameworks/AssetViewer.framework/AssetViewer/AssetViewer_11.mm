CGColorSpaceRef sub_24132574C(void *a1)
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (result)
  {
    v6 = result;
    v7 = [a1 width];
    if ((v7 - 0x2000000000000000) >> 62 == 3)
    {
      v2 = 4 * v7;
      v8 = [a1 height];
      if ((v8 * v2) >> 64 == (v8 * v2) >> 63)
      {
        v9 = malloc(v8 * v2);
        if (!v9)
        {
          sub_2412460C0();
          v24 = swift_allocError();
          *v25 = 0xD00000000000002BLL;
          *(v25 + 8) = 0x8000000241363040;
          *(v25 + 16) = 1;
          if (qword_27E537CD0 != -1)
          {
            swift_once();
          }

          v26 = sub_241352FFC();
          __swift_project_value_buffer(v26, qword_27E53A538);
          v27 = v24;
          v28 = sub_241352FDC();
          v29 = sub_2413540BC();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *&v35 = v31;
            *v30 = 136315138;
            swift_getErrorValue();
            v32 = sub_241354A3C();
            v34 = sub_2412DDC2C(v32, v33, &v35);

            *(v30 + 4) = v34;
            _os_log_impl(&dword_241215000, v28, v29, "Couldn't take snapshot. Error: %s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v31);
            MEMORY[0x245CE4870](v31, -1, -1);
            MEMORY[0x245CE4870](v30, -1, -1);
          }

          goto LABEL_17;
        }

        v1 = v9;
        MTLRegionMake2D([a1 width], objc_msgSend(a1, sel_height), &v35);
        [a1 getBytes:v1 bytesPerRow:v2 fromRegion:&v35 mipmapLevel:0];
        v10 = __CGBitmapContextCreate(v1, [a1 width], objc_msgSend(a1, sel_height), v2, v6);
        v2 = v10;
        if (v10)
        {
          Image = CGBitmapContextCreateImage(v10);
          if (Image)
          {
            v12 = Image;
            v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

            free(v1);
            return v13;
          }
        }

        sub_2412460C0();
        v3 = swift_allocError();
        *v14 = 0xD000000000000034;
        *(v14 + 8) = 0x8000000241363070;
        *(v14 + 16) = 1;
        if (qword_27E537CD0 == -1)
        {
LABEL_9:
          v15 = sub_241352FFC();
          __swift_project_value_buffer(v15, qword_27E53A538);
          v16 = v3;
          v17 = sub_241352FDC();
          v18 = sub_2413540BC();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            *&v35 = v20;
            *v19 = 136315138;
            swift_getErrorValue();
            v21 = sub_241354A3C();
            v23 = sub_2412DDC2C(v21, v22, &v35);

            *(v19 + 4) = v23;
            _os_log_impl(&dword_241215000, v17, v18, "Couldn't take snapshot. Error: %s", v19, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v20);
            MEMORY[0x245CE4870](v20, -1, -1);
            MEMORY[0x245CE4870](v19, -1, -1);
          }

          free(v1);
LABEL_17:

          return 0;
        }

LABEL_20:
        swift_once();
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_241325C08(void *a1)
{
  v2 = sub_24135152C();
  MEMORY[0x28223BE20](v2);
  if (a1)
  {
    v8 = a1;
    v3 = UIImagePNGRepresentation(v8);
    if (v3)
    {
      v4 = v3;
      v5 = sub_24135154C();
      v7 = v6;

      sub_24135155C();

      sub_24125D520(v5, v7);
    }

    else
    {
    }
  }
}

void sub_241325F50(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

void sub_241326010(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_241326074()
{
  v1 = *(v0 + 16);
  v2 = sub_24132574C(*(v0 + 32));
  v1();
}

uint64_t MTLRegionMake2D@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

uint64_t sub_241326100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_241351DEC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v48 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v48 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = *(a1 + 16);
  v49 = v4;
  if (v16)
  {
    v19 = *(v4 + 16);
    v17 = v4 + 16;
    v18 = v19;
    v62 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v20 = (a1 + v62);
    v21 = *(v17 + 56);
    v64 = (v17 + 72);
    v63 = *MEMORY[0x277CDAD68];
    v56 = *MEMORY[0x277CDAD60];
    v55 = *MEMORY[0x277CDAD88];
    v51 = *MEMORY[0x277CDAD58];
    v66 = (v17 - 8);
    v60 = (v17 + 16);
    v54 = (v17 + 80);
    v22 = MEMORY[0x277D84F90];
    v58 = v19;
    v59 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
    v61 = v21;
    v50 = v17;
    v19(v15, v20, v3);
    while (1)
    {
      v18(v13, v15, v3);
      v24 = (*v64)(v13, v3);
      if (v24 == v63)
      {
        (*v54)(v13, v3);
        v18(v65, v15, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2412A1780(0, v22[2] + 1, 1, v22);
        }

        v26 = v22[2];
        v25 = v22[3];
        v27 = v22;
        if (v26 >= v25 >> 1)
        {
          v27 = sub_2412A1780(v25 > 1, v26 + 1, 1, v22);
        }

        v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A930) + 48);
        (*v66)(v15, v3);
        *(v27 + 16) = v26 + 1;
        v22 = v27;
        v29 = v27 + v62;
        v21 = v61;
        (*v60)(v29 + v26 * v61, v65, v3);
        v30 = sub_241351D9C();
        (*(*(v30 - 8) + 8))(&v13[v28], v30);
        v31 = sub_241351DDC();
        (*(*(v31 - 8) + 8))(v13, v31);
        v18 = v58;
      }

      else if (v24 == v56 || v24 == v55)
      {
        v33 = *v66;
        (*v66)(v13, v3);
        v18(v57, v15, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_2412A1780(0, v59[2] + 1, 1, v59);
        }

        v35 = v59[2];
        v34 = v59[3];
        if (v35 >= v34 >> 1)
        {
          v59 = sub_2412A1780(v34 > 1, v35 + 1, 1, v59);
        }

        v33(v15, v3);
        v36 = v59;
        v59[2] = v35 + 1;
        v21 = v61;
        (*v60)(v36 + v62 + v35 * v61, v57, v3);
        v18 = v58;
      }

      else if (v24 == v51)
      {
        v18(v52, v15, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_2412A1780(0, v53[2] + 1, 1, v53);
        }

        v38 = v53[2];
        v37 = v53[3];
        if (v38 >= v37 >> 1)
        {
          v53 = sub_2412A1780(v37 > 1, v38 + 1, 1, v53);
        }

        (*v66)(v15, v3);
        v39 = v52;
        v40 = v53;
        v53[2] = v38 + 1;
        v21 = v61;
        (*v60)(v40 + v62 + v38 * v61, v39, v3);
      }

      else
      {
        v23 = *v66;
        (*v66)(v15, v3);
        v23(v13, v3);
      }

      v20 += v21;
      if (!--v16)
      {
        break;
      }

      v18(v15, v20, v3);
    }
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
  }

  if (!v22[2])
  {
    v43 = v49;
    if (v59[2])
    {
      v44 = *(v49 + 16);
      v45 = v59 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    }

    else
    {
      if (!v53[2])
      {
        (*(v49 + 56))(v48, 1, 1, v3);
        goto LABEL_36;
      }

      v44 = *(v49 + 16);
      v45 = v53 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    }

    v46 = v48;
    v44(v48, v45, v3);
    (*(v43 + 56))(v46, 0, 1, v3);
LABEL_36:

    goto LABEL_37;
  }

  v42 = v48;
  v41 = v49;
  (*(v49 + 16))(v48, v22 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v3);
  (*(v41 + 56))(v42, 0, 1, v3);

LABEL_37:
}

uint64_t sub_2413267E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3A0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - v4;
  ComponentType = REImageBasedLightComponentGetComponentType();
  result = sub_24131006C(ComponentType, 1);
  if (result)
  {
    result = REImageBasedLightComponentGetIBL();
    if (result)
    {
      v8 = result;
      sub_241351F2C();
      v12[3] = MEMORY[0x277D841D8];
      v12[0] = v8;
      sub_2413516EC();
      __swift_destroy_boxed_opaque_existential_0(v12);
      v9 = sub_24135170C();
      v10 = *(*(v9 - 8) + 56);
      v10(v5, 0, 1, v9);
      v10(v3, 1, 1, v9);
      v11 = sub_241351F0C();
      sub_241246278(v3, &qword_27E53A3A0);
      sub_241246278(v5, &qword_27E53A3A0);
      return v11;
    }
  }

  return result;
}

uint64_t sub_241326980(uint64_t result)
{
  v21 = result;
  v2 = *(v1 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v2)
  {
    v3 = v2;
    sub_24135292C();

    sub_2413524EC();

    sub_24135243C();
    if (swift_dynamicCastClass())
    {
      v4 = sub_2413523CC();
      v18 = v4;
      if (v4 >> 62)
      {
        goto LABEL_42;
      }

      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = v21;
      while (v5)
      {
        v7 = 0;
        v8 = v6 & 0xC000000000000001;
        v19 = v5;
        while ((v18 & 0xC000000000000001) != 0)
        {
          MEMORY[0x245CE29C0](v7, v18);
          v9 = __OFADD__(v7, 1);
          v10 = v7 + 1;
          if (v9)
          {
            goto LABEL_39;
          }

LABEL_13:
          v11 = sub_2413520BC();
          sub_24135207C();
          if (swift_dynamicCastClass())
          {
            v12 = sub_24135203C();
            v13 = sub_2412EE948(v12);

            if (!(v13 >> 62))
            {
              goto LABEL_15;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
            v13 = swift_allocObject();
            *(v13 + 16) = xmmword_241365C30;
            *(v13 + 32) = v11;
            if (!(v13 >> 62))
            {
LABEL_15:
              v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v20 = v10;
              if (!v14)
              {
                goto LABEL_6;
              }

              goto LABEL_16;
            }
          }

          v14 = sub_2413544EC();
          v20 = v10;
          if (!v14)
          {
            goto LABEL_6;
          }

LABEL_16:
          if (v14 < 1)
          {
            goto LABEL_40;
          }

          for (i = 0; i != v14; ++i)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              MEMORY[0x245CE29C0](i, v13);
            }

            else
            {
            }

            sub_24135201C();
            if (swift_dynamicCastClass())
            {
              v16 = sub_241351FFC();
              if (v16)
              {
                if (v8)
                {
                  if (sub_24135478C())
                  {
                    sub_241352C5C();
                    swift_dynamicCast();
                  }
                }

                else if (*(v21 + 16))
                {
                  sub_2412FD968(v16);
                  if (v17)
                  {
                  }

                  v8 = 0;
                }

                sub_24135200C();
              }
            }
          }

LABEL_6:

          v7 = v20;
          if (v20 == v19)
          {
            swift_unknownObjectRelease();
          }
        }

        if (v7 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v9 = __OFADD__(v7, 1);
        v10 = v7 + 1;
        if (!v9)
        {
          goto LABEL_13;
        }

LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v5 = sub_2413544EC();
        v6 = v21;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_241326D78(double a1, float a2, double a3, float a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    v9 = v8;

    if (v8)
    {
      v10 = a3;
      v11 = fminf(fmaxf(a2 - v10, 0.0), 1.0);
      v12 = ((v11 * v11) * ((v11 * -2.0) + 3.0)) * a4;
      v13 = *&v9[qword_27E53A1D8];
      *&v9[qword_27E53A1D8] = v12;
      sub_24131B3D8(v13);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_241326E5C(double a1, float a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    v5 = v4;

    if (v4)
    {
      v6 = *&v5[qword_27E53A1D8];
      *&v5[qword_27E53A1D8] = a2;
      sub_24131B3D8(v6);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_241326F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_241351B6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539F98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  result = dynamic_cast_existential_2_conditional(a1);
  if (result)
  {
    v17 = v5;
    v18 = v4;
    v19 = a2;

    sub_24135185C();
    v12 = sub_241351E5C();
    v13 = *(*(v12 - 8) + 48);
    if (v13(v10, 1, v12) == 1)
    {
      sub_241246278(v10, &qword_27E539F98);
      sub_241352C7C();
      v14 = sub_24135184C();
      if (!v13(v15, 1, v12))
      {
        (*(v17 + 16))(v7, v19, v18);
        sub_241351E3C();
      }

      v14(v20, 0);
    }

    else
    {

      return sub_241246278(v10, &qword_27E539F98);
    }
  }

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_241327238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_241246210(a3, v25 - v10, &unk_27E538850);
  v12 = sub_241353EEC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_241246278(v11, &unk_27E538850);
  }

  else
  {
    sub_241353EDC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_241353E8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_241353C9C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_241246278(a3, &unk_27E538850);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_241246278(a3, &unk_27E538850);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t TaskQueue.TaskCounter.__allocating_init(maxConcurrentTasks:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  v3 = OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_atLimitContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3B0);
  v5 = *(*(v4 - 8) + 56);
  v5(v2 + v3, 1, 1, v4);
  v5(v2 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_barrierContinuation, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_maxConcurrentTasks) = a1;
  return v2;
}

uint64_t TaskQueue.TaskCounter.init(maxConcurrentTasks:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v3 = OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_atLimitContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3B0);
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_barrierContinuation, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_maxConcurrentTasks) = a1;
  return v1;
}

void sub_2413276D8()
{
  v1 = *(v0 + 112);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 112) = v3;
  }
}

void sub_2413276F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3B0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v17 = *(v1 + 112);
  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
    return;
  }

  v26 = v7;
  v27 = v14;
  *(v1 + 112) = v18;
  v19 = OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_barrierContinuation;
  swift_beginAccess();
  sub_241246210(v1 + v19, v10, &qword_27E53A3C8);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    sub_241246278(v10, &qword_27E53A3C8);
LABEL_6:
    v21 = OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_atLimitContinuation;
    swift_beginAccess();
    sub_241246210(v1 + v21, v4, &qword_27E53A3C8);
    if (v20(v4, 1, v11) == 1)
    {
      sub_241246278(v4, &qword_27E53A3C8);
      return;
    }

    v22 = v27;
    (*(v12 + 32))(v27, v4, v11);
    if (*(v1 + 112) >= *(v1 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_maxConcurrentTasks))
    {
      (*(v12 + 8))(v22, v11);
      return;
    }

    sub_241353EAC();
    (*(v12 + 8))(v22, v11);
    v23 = v26;
    (*(v12 + 56))(v26, 1, 1, v11);
    swift_beginAccess();
    sub_241327AF4(v23, v1 + v21);
    goto LABEL_12;
  }

  (*(v12 + 32))(v16, v10, v11);
  if (v18)
  {
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  sub_241353EAC();
  (*(v12 + 8))(v16, v11);
  v24 = v26;
  (*(v12 + 56))(v26, 1, 1, v11);
  swift_beginAccess();
  sub_241327AF4(v24, v1 + v19);
LABEL_12:
  swift_endAccess();
}

uint64_t sub_241327AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_241327B64(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x2822009F8](sub_241327B88, v1, 0);
}

uint64_t sub_241327B88()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  if (*(v0 + 40) == 1 && v2 >= 1)
  {
    sub_241327F78();
    v6 = swift_task_alloc();
    *(v0 + 24) = v6;
    *v6 = v0;
    v6[1] = sub_241327D44;
LABEL_11:

    return MEMORY[0x2822007B8]();
  }

  if (v2 >= *(v1 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_maxConcurrentTasks))
  {
    sub_241327F78();
    v7 = swift_task_alloc();
    *(v0 + 32) = v7;
    *v7 = v0;
    v7[1] = sub_241327E68;
    goto LABEL_11;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_241327D44()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_241327E54, v1, 0);
}

uint64_t sub_241327E68()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24132A604, v1, 0);
}

unint64_t sub_241327F78()
{
  result = qword_27E53A3D0;
  if (!qword_27E53A3D0)
  {
    type metadata accessor for TaskQueue.TaskCounter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A3D0);
  }

  return result;
}

uint64_t sub_241327FF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3B0);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = *a3;
  swift_beginAccess();
  sub_241327AF4(v8, a2 + v11);
  return swift_endAccess();
}

uint64_t TaskQueue.TaskCounter.deinit()
{
  sub_241246278(v0 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_atLimitContinuation, &qword_27E53A3C8);
  sub_241246278(v0 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_barrierContinuation, &qword_27E53A3C8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskQueue.TaskCounter.__deallocating_deinit()
{
  sub_241246278(v0 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_atLimitContinuation, &qword_27E53A3C8);
  sub_241246278(v0 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_barrierContinuation, &qword_27E53A3C8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t TaskQueue.Behavior.maxConcurrentTasks.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

uint64_t TaskQueue.__allocating_init(behavior:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TaskQueue.init(behavior:bufferingPolicy:)(a1, a2);
  return v4;
}

uint64_t TaskQueue.init(behavior:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v23 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3D8);
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v23 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3E0);
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v23 - v10;
  if (*(a1 + 8))
  {
    v12 = 1;
  }

  else
  {
    v12 = *a1;
  }

  v24 = v12;
  type metadata accessor for TaskQueue.TaskCounter(0);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = 0;
  v14 = OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_atLimitContinuation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3B0);
  v16 = *(*(v15 - 8) + 56);
  v16(v13 + v14, 1, 1, v15);
  v16(v13 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_barrierContinuation, 1, 1, v15);
  *(v13 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_maxConcurrentTasks) = v24;
  *(v2 + OBJC_IVAR____TtC11AssetViewer9TaskQueue_counter) = v13;
  v17 = v28;
  sub_241353EFC();
  (*(v9 + 32))(v2 + OBJC_IVAR____TtC11AssetViewer9TaskQueue_taskContexts, v11, v25);
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC11AssetViewer9TaskQueue_dataContinuation, v8, v26);
  v18 = sub_241353EEC();
  v19 = v27;
  (*(*(v18 - 8) + 56))(v27, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;

  sub_241327238(0, 0, v19, &unk_24136AAB8, v20);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E537DA0);
  (*(*(v21 - 8) + 8))(v17, v21);
  return v2;
}

uint64_t TaskQueue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3D8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC11AssetViewer9TaskQueue_dataContinuation;
  (*(v3 + 16))(&v12 - v5, v1 + OBJC_IVAR____TtC11AssetViewer9TaskQueue_dataContinuation, v2, v4);
  sub_241353F1C();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = OBJC_IVAR____TtC11AssetViewer9TaskQueue_taskContexts;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3E0);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v8((v1 + v7), v2);

  return v1;
}

uint64_t TaskQueue.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3D8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC11AssetViewer9TaskQueue_dataContinuation;
  (*(v3 + 16))(&v12 - v5, v1 + OBJC_IVAR____TtC11AssetViewer9TaskQueue_dataContinuation, v2, v4);
  sub_241353F1C();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = OBJC_IVAR____TtC11AssetViewer9TaskQueue_taskContexts;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3E0);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v8((v1 + v7), v2);

  return swift_deallocClassInstance();
}

uint64_t TaskQueue.receiveNext(isBarrier:task:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A400);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  v11[8] = a1;
  v12 = a2;
  v13 = a3;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3D8);
  sub_241353F0C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_241328B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A440);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241328C14, 0, 0);
}

uint64_t sub_241328C14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A3E0);
  sub_241353F2C();
  v0[15] = OBJC_IVAR____TtC11AssetViewer9TaskQueue_counter;
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_241328D00;
  v2 = v0[12];

  return MEMORY[0x2822003E8](v0 + 6, 0, 0, v2);
}

uint64_t sub_241328D00()
{

  return MEMORY[0x2822009F8](sub_241328DFC, 0, 0);
}

uint64_t sub_241328DFC()
{
  *(v0 + 136) = *(v0 + 48);
  v1 = *(v0 + 56);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *(*(v0 + 72) + *(v0 + 120));
    *(v0 + 160) = v2;

    return MEMORY[0x2822009F8](sub_241328EF4, v2, 0);
  }

  else
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_241328EF4()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 112);
  if ((*(v0 + 136) & 1) != 0 && v2 >= 1)
  {
    sub_241327F78();
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    *v3 = v0;
    v3[1] = sub_2413290AC;
LABEL_9:

    return MEMORY[0x2822007B8]();
  }

  if (v2 >= *(v1 + OBJC_IVAR____TtCC11AssetViewer9TaskQueue11TaskCounter_maxConcurrentTasks))
  {
    sub_241327F78();
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    *v5 = v0;
    v5[1] = sub_2413295E4;
    goto LABEL_9;
  }

  v4 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_2413291D8, v4, 0);
}

uint64_t sub_2413290AC()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_2413291BC, v1, 0);
}

uint64_t sub_2413291D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 160);
  v5 = *(v4 + 112);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  else
  {
    *(v4 + 112) = v7;
    return MEMORY[0x2822009F8](sub_24132920C, 0, 0);
  }
}

uint64_t sub_24132920C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  if (v3)
  {

    v22 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = sub_2413296F4;

    return v22();
  }

  else
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    v9 = sub_241353EEC();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v6, 1, 1, v9);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = v2;
    *(v11 + 48) = v1;
    *(v11 + 56) = v8;
    sub_241246210(v6, v7, &unk_27E538850);
    LODWORD(v6) = (*(v10 + 48))(v7, 1, v9);
    sub_24132A5E0(v3, v2);

    v12 = v0[10];
    if (v6 == 1)
    {
      sub_241246278(v0[10], &unk_27E538850);
    }

    else
    {
      sub_241353EDC();
      (*(v10 + 8))(v12, v9);
    }

    v13 = *(v11 + 16);
    swift_unknownObjectRetain();

    if (v13)
    {
      swift_getObjectType();
      v14 = sub_241353E8C();
      v16 = v15;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    sub_241246278(v0[11], &unk_27E538850);
    v17 = swift_allocObject();
    *(v17 + 16) = &unk_24136ABD0;
    *(v17 + 24) = v11;
    if (v16 | v14)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v14;
      v0[5] = v16;
    }

    v18 = v0[18];
    v19 = v0[17];
    swift_task_create();
    sub_24132A5F0(v19, v18);

    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_241328D00;
    v21 = v0[12];

    return MEMORY[0x2822003E8](v0 + 6, 0, 0, v21);
  }
}

uint64_t sub_2413295E4()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_24132A600, v1, 0);
}

uint64_t sub_2413296F4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);

  sub_24132A5F0(v3, v2);

  return MEMORY[0x2822009F8](sub_241329858, v1, 0);
}

uint64_t sub_241329858()
{
  sub_2413276F0();

  return MEMORY[0x2822009F8](sub_2413298C0, 0, 0);
}

uint64_t sub_2413298C0()
{
  sub_24132A5F0(v0[17], v0[18]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_241328D00;
  v2 = v0[12];

  return MEMORY[0x2822003E8](v0 + 6, 0, 0, v2);
}

uint64_t sub_241329974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24124647C;

  return sub_241328B04(a1, v4, v5, v6);
}

void sub_241329A60()
{
  sub_241329B98(319, &qword_27E53A418, MEMORY[0x277D857B8]);
  if (v0 <= 0x3F)
  {
    sub_241329B98(319, &qword_27E53A420, MEMORY[0x277D85788]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_241329B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for TaskContext);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_241329BF4()
{
  sub_241329E34();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of TaskQueue.TaskCounter.waitIfNecessary(isBarrier:)(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2412450EC;

  return v6(a1);
}

void sub_241329E34()
{
  if (!qword_27E53A438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E53A3B0);
    v0 = sub_24135432C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E53A438);
    }
  }
}

uint64_t getEnumTagSinglePayload for TaskQueue.Behavior(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TaskQueue.Behavior(uint64_t result, int a2, int a3)
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_241329EE8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241329F04(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_241329F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v7 + 24) = v8;
  *v8 = v7;
  v8[1] = sub_24132A020;

  return v10();
}

uint64_t sub_24132A020()
{

  return MEMORY[0x2822009F8](sub_24132A11C, 0, 0);
}

uint64_t sub_24132A11C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11AssetViewer9TaskQueue_counter);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24132A148, v1, 0);
}

uint64_t sub_24132A148()
{
  sub_2413276F0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24132A1A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24132A2A0;

  return v6(a1);
}

uint64_t sub_24132A2A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24132A398(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24124647C;

  return sub_24132A1A8(a1, v4);
}

uint64_t sub_24132A450(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2412450EC;

  return sub_24132A1A8(a1, v4);
}

uint64_t sub_24132A508(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24124647C;

  return sub_241329F34(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24132A5E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24132A5F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24132A62C(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v6 = a1;
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_2413544EC())
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = MEMORY[0x277D84FA0];
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = -1 << *(v6 + 32);
    v10 = v6 + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v6 + 56);

    v31 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5393E8);
  v8 = sub_2413545BC();
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_2413544AC();
  sub_241246158(0, a2);
  sub_2412B3208(a4, a2);
  result = sub_24135401C();
  v6 = v35;
  v10 = v36;
  v11 = v37;
  v31 = v38;
  v12 = v39;
LABEL_11:
  v16 = v8 + 56;
  while (v6 < 0)
  {
    v20 = sub_24135451C();
    if (!v20)
    {
LABEL_34:
      sub_24121C274();

      return v8;
    }

    *&v32 = v20;
    sub_241246158(0, a2);
    swift_dynamicCast();
LABEL_25:
    sub_241246158(0, a2);
    swift_dynamicCast();
    result = sub_24135454C();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v8 + 48) + 40 * v17;
    *(v18 + 32) = v34;
    *v18 = v32;
    *(v18 + 16) = v33;
    ++*(v8 + 16);
  }

  if (v12)
  {
    v19 = v31;
LABEL_24:
    v22 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v23 = *(*(v6 + 48) + ((v19 << 9) | (8 * v22)));
    goto LABEL_25;
  }

  v21 = v31;
  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v12 = *(v10 + 8 * v19);
    ++v21;
    if (v12)
    {
      v31 = v19;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_24132A98C()
{
  result = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  qword_27E53A450 = result;
  return result;
}

uint64_t sub_24132A9C0()
{
  v1 = v0;
  v2 = sub_241352FFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_logger, v2, v4);
  v8 = sub_241352FDC();
  v9 = sub_2413540DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_241215000, v8, v9, "InlinePreview.deinit called", v10, 2u);
    MEMORY[0x245CE4870](v10, -1, -1);
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v11((v1 + v7), v2);
  v12 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_id;
  v13 = sub_24135164C();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  MEMORY[0x245CE4980](v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_previewViewController);

  sub_2412186FC(*(v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_returnInlineReply));

  return v1;
}

uint64_t sub_24132ABDC()
{
  sub_24132A9C0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InlinePreview()
{
  result = qword_27E53A470;
  if (!qword_27E53A470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24132AC88()
{
  result = sub_241352FFC();
  if (v1 <= 0x3F)
  {
    result = sub_24135164C();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_24132ADC0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v1)
  {
    v2 = qword_27E537CB0;
    oslog = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    [qword_27E53A450 addSubview_];
  }

  else
  {
    oslog = sub_241352FDC();
    v3 = sub_2413540BC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_241215000, oslog, v3, "reparentARViewToContainer() called but arView is nil", v4, 2u);
      MEMORY[0x245CE4870](v4, -1, -1);
    }
  }
}

void sub_24132AEE4()
{
  v1 = sub_24135256C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2413525BC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = *(*(v0 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 clearColor];
    [v8 setBackgroundColor_];

    v10 = v8;
    v11 = [v7 clearColor];
    sub_2413525AC();

    v12 = sub_24135268C();
    sub_2413525CC();
    v12(v19, 0);
    (*(v2 + 104))(v4, *MEMORY[0x277CDB598], v1);
    sub_24135258C();

    sub_24135285C();
    v10[qword_27E53A1C0] = 0;
    sub_24131C5B4(0);
    sub_24131A3D0(0);
    sub_241321910(0);
    v13 = [v10 session];

    [v13 pause];
  }

  else
  {
    v18 = sub_241352FDC();
    v14 = sub_2413540BC();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_241215000, v18, v14, "updateARViewConfigurationForInline: ARView unexpectedly nil", v15, 2u);
      MEMORY[0x245CE4870](v15, -1, -1);
    }

    v16 = v18;
  }
}

uint64_t sub_24132B1F8(char a1)
{
  v21 = sub_2413517DC();
  v3 = *(v21 - 8);
  result = MEMORY[0x28223BE20](v21);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController);
  if (*(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
  {
    if (a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_enableShadowsInline);
    }

    v20 = v8;
    v9 = *(v7 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v9 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
    {

      if (!i)
      {
        break;
      }

      v11 = 0;
      v18 = v9 & 0xFFFFFFFFFFFFFF8;
      v19 = v9 & 0xC000000000000001;
      v12 = (v3 + 8);
      while (1)
      {
        if (v19)
        {
          v13 = MEMORY[0x245CE29C0](v11, v9);
        }

        else
        {
          if (v11 >= *(v18 + 16))
          {
            goto LABEL_24;
          }

          v13 = *(v9 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v3 = i;
        sub_24135296C();
        sub_2413516FC();
        v16 = *v12;
        (*v12)(v6, v21);
        REAnchorShadowMarkerComponentGetComponentType();
        REEntityRemoveComponentByClass();
        if (v20)
        {
          sub_24135296C();
          sub_2413516FC();
          v16(v6, v21);
          if (qword_27E537C38 != -1)
          {
            swift_once();
          }

          if (qword_27E537C40 != -1)
          {
            v17 = xmmword_27E541810;
            swift_once();
          }

          REAnchorShadowMarkerAddToAnchorEntity();
        }

        ++v11;
        if (v15 == i)
        {
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }
  }

  return result;
}

id sub_24132B4E8()
{
  v1 = OBJC_IVAR____TtC11AssetViewer13InlinePreview____lazy_storage___backgroundDimmingView;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer13InlinePreview____lazy_storage___backgroundDimmingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer13InlinePreview____lazy_storage___backgroundDimmingView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v4 setUserInteractionEnabled_];
    v5 = [objc_opt_self() blackColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_24132B5BC()
{
  v1 = v0;
  v2 = sub_24135164C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_logger;
  v7 = sub_241352FDC();
  v8 = sub_2413540DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_241215000, v7, v8, "Reattaching as inline", v9, 2u);
    MEMORY[0x245CE4870](v9, -1, -1);
  }

  v10 = [objc_opt_self() newFenceFromDefaultServer];
  if (v10)
  {
    v11 = v10;
    v64 = v5;
    v63 = v2;
    v12 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_remoteContext;
    v13 = [*(v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_remoteContext) addFence_];
    v14 = v11;
    v15 = sub_241352FDC();
    v16 = sub_2413540DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v62 = v12;
      v19 = v6;
      v20 = v3;
      v21 = v18;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *v18 = v11;
      *(v17 + 12) = 1024;
      *(v17 + 14) = v13;
      v22 = v14;
      _os_log_impl(&dword_241215000, v15, v16, "fenceHandle: %@, addFence success? %{BOOL}d", v17, 0x12u);
      sub_241246278(v21, &unk_27E539B90);
      v23 = v21;
      v3 = v20;
      v6 = v19;
      v12 = v62;
      MEMORY[0x245CE4870](v23, -1, -1);
      MEMORY[0x245CE4870](v17, -1, -1);
    }

    v24 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;
    result = *(*(v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (result)
    {
      [result setFrame_];
      sub_24132ADC0();
      sub_24132AEE4();
      v26 = objc_opt_self();
      [v26 begin];
      result = [v26 setAnimationDuration_];
      v27 = *(*(v1 + v24) + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v27)
      {
        v28 = *(v1 + v12);
        v29 = [v27 layer];
        [v28 setLayer_];

        v30 = sub_241352FDC();
        v31 = sub_2413540DC();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_241215000, v30, v31, "Committing CATransaction", v32, 2u);
          MEMORY[0x245CE4870](v32, -1, -1);
        }

        [v26 commit];
        v33 = [v14 createXPCRepresentation];
        v34 = (v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_returnInlineReply);
        v35 = *(v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_returnInlineReply);
        if (v35)
        {
          v36 = *(v3 + 16);
          v61[1] = v6;
          v37 = v64;
          v62 = v14;
          v38 = v63;
          v36(v64, v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_id, v63);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_241365EA0;
          v65 = 1953719668;
          v66 = 0xE400000000000000;
          sub_24124AD38(v35);
          swift_unknownObjectRetain();
          v40 = MEMORY[0x277D837D0];
          sub_24135456C();
          *(inited + 96) = v40;
          strcpy((inited + 72), "returnInline");
          *(inited + 85) = 0;
          *(inited + 86) = -5120;
          v41 = sub_241244BF0(inited);
          swift_setDeallocating();
          sub_241246278(inited + 32, &unk_27E538730);
          v35(v37, v33, v41);
          swift_unknownObjectRelease();

          sub_2412186FC(v35);
          v42 = v38;
          v14 = v62;
          (*(v3 + 8))(v37, v42);
          v43 = *v34;
        }

        else
        {
          v43 = 0;
        }

        *v34 = 0;
        v34[1] = 0;
        sub_2412186FC(v43);
        [v14 invalidate];
        v55 = sub_241352FDC();
        v56 = sub_2413540DC();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_241215000, v55, v56, "Finished remaining exit work", v57, 2u);
          MEMORY[0x245CE4870](v57, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
        v58 = swift_initStackObject();
        *(v58 + 16) = xmmword_241365EA0;
        *(v58 + 32) = 0xD000000000000011;
        v59 = v58 + 32;
        *(v58 + 40) = 0x80000002413612F0;
        *(v58 + 72) = MEMORY[0x277D839B0];
        *(v58 + 48) = 1;
        v60 = sub_241245974(v58);
        swift_setDeallocating();
        sub_241246278(v59, &unk_27E538A20);
        sub_2412FF19C(2, 0xD000000000000012, 0x8000000241363400, v60);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v44 = sub_241352FDC();
  v45 = sub_2413540BC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v64 = v5;
    v47 = v46;
    v48 = swift_slowAlloc();
    *v47 = 136315138;
    v65 = 0;
    v66 = 0xE000000000000000;
    v67 = v48;
    sub_2413545EC();

    v65 = 0xD000000000000010;
    v66 = 0x8000000241361280;
    MEMORY[0x245CE20D0](0xD000000000000022, 0x80000002413612A0);
    v49 = sub_2412DDC2C(v65, v66, &v67);

    *(v47 + 4) = v49;
    _os_log_impl(&dword_241215000, v44, v45, "Error in prepareFullscreenPreview: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245CE4870](v48, -1, -1);
    v50 = v47;
    v5 = v64;
    MEMORY[0x245CE4870](v50, -1, -1);
  }

  v51 = (v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_returnInlineReply);
  v52 = *(v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_returnInlineReply);
  if (v52)
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_id, v2);
    sub_24124AD38(v52);
    v53 = sub_241244BF0(MEMORY[0x277D84F90]);
    v52(v5, 0, v53);

    sub_2412186FC(v52);
    (*(v3 + 8))(v5, v2);
    v54 = *v51;
  }

  else
  {
    v54 = 0;
  }

  *v51 = 0;
  v51[1] = 0;
  return sub_2412186FC(v54);
}

void sub_24132BE58()
{
  v18 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;
  v1 = *(v0 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController);
  if (*(v1 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController);
    if (!v2)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v3 = (v19 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_savedInlineCameraState);
    v4 = *(v2 + 48);
    *v3 = *(v2 + 32);
    v3[1] = v4;
    v5 = *(v1 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v5 >> 62)
    {
LABEL_22:
      v6 = sub_2413544EC();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x245CE29C0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v11 = *(*(v19 + v18) + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        sub_24135292C();
        v13 = sub_2413524BC();

        if (!v13)
        {
          goto LABEL_24;
        }

        sub_241352C5C();
        sub_24135193C();
        sub_241352E0C();
        v21 = v15;
        v22 = v14;
        v20 = v16;

        v17 = &v9[OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform];
        *v17 = v22;
        *(v17 + 1) = v21;
        *(v17 + 2) = v20;

        ++v7;
        if (v10 == v6)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_17:
  }
}

void sub_24132C078(char a1)
{
  v2 = v1;
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;

  sub_2412547BC();

  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  v11 = os_log_type_enabled(v9, v10);
  if (a1)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_241215000, v9, v10, "Setting up animations for fullscreen", v12, 2u);
      MEMORY[0x245CE4870](v12, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      sub_24129B3BC();
      v14 = v23;
    }
  }

  else
  {
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_241215000, v9, v10, "Setting up animations for inline preview", v15, 2u);
      MEMORY[0x245CE4870](v15, -1, -1);
    }

    sub_24135163C();
    v16 = sub_2413515FC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = *(*(v2 + v8) + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata + 16);
    if (qword_27E537C60 != -1)
    {
      swift_once();
    }

    *&v26 = v16;
    *(&v26 + 1) = v18;
    LOBYTE(v27) = v19;
    *(&v27 + 1) = 0;
    *(&v27 + 3) = v24[0];
    BYTE7(v27) = BYTE4(v24[0]);
    *(&v27 + 1) = 3;
    v28 = xmmword_27E541898;
    v29 = qword_27E5418A8;
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = xmmword_27E541898;
    v25 = qword_27E5418A8;

    sub_241349C30(0, v24);

    sub_241244AE8(&v26);
    v20 = (v2 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineAnimationState);
    *(*(*(v2 + v8) + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_isLooping) = *(v2 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineAnimationState + 1);
    v21 = *v20;

    sub_24134950C(v21);
  }
}

uint64_t sub_24132C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v72 = a3;
  v73 = a4;
  v71 = a2;
  v75 = a1;
  v6 = sub_24135164C();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v7;
  MEMORY[0x28223BE20](v8);
  v61 = &v51 - v9;
  v74 = sub_24135152C();
  v10 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v62 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = sub_241352FDC();
  v16 = sub_2413540DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_241215000, v15, v16, "prepareInlinePreview", v17, 2u);
    MEMORY[0x245CE4870](v17, -1, -1);
  }

  if (qword_27E537BD8 != -1)
  {
    swift_once();
  }

  v67 = *(v10 + 16);
  v68 = v10 + 16;
  v67(v14, v75, v74);
  type metadata accessor for SecurityScopedURL();
  swift_allocObject();
  v18 = sub_2413197D0(v14, 0);
  type metadata accessor for MRQLFileManager.Token();
  v19 = swift_allocObject();
  v59 = v10;
  if (v18)
  {
    *(v19 + 16) = v18;
    v69 = v19;
    *(v19 + 24) = 0;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v69 = 0;
  }

  v20 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;
  v21 = *(v5 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineFrame + 16);
  v22 = *(v5 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineFrame + 24);

  sub_24124BCF8(0, 0, 0.0, 0.0, v21, v22);

  sub_24132AEE4();
  v23 = *(v5 + v20);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = (v23 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback);
  v26 = *(v23 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback);
  *v25 = sub_2413306B8;
  v25[1] = v24;

  sub_2412186FC(v26);

  if (qword_27E537CB0 != -1)
  {
    result = swift_once();
  }

  if (*(*(v5 + v20) + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
  {
    [qword_27E53A450 addSubview_];
    v58 = *(v5 + v20);
    v66 = swift_allocObject();
    swift_weakInit();
    v52 = v14;
    v28 = v14;
    v29 = v74;
    v67(v28, v75, v74);
    v30 = v63;
    v31 = *(v63 + 16);
    v56 = v63 + 16;
    v57 = v31;
    v32 = v61;
    v31(v61, v71, v6);
    v33 = v59;
    v34 = *(v59 + 80);
    v35 = (v34 + 24) & ~v34;
    v54 = v35;
    v36 = (v60 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = v36;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v65 = v6;
    v38 = *(v30 + 80);
    v53 = v5;
    v60 = v38 + 16;
    v55 = v34 | v38;
    v39 = swift_allocObject();
    *(v39 + 16) = v66;
    v59 = *(v33 + 32);
    (v59)(v39 + v35, v52, v29);
    *(v39 + v36) = v69;
    v40 = (v39 + v37);
    v41 = v73;
    *v40 = v72;
    v40[1] = v41;
    v63 = *(v30 + 32);
    v42 = v65;
    (v63)(v39 + ((v38 + 16 + v37) & ~v38), v32, v65);
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = v62;
    v67(v62, v75, v29);
    v45 = v64;
    v57(v64, v71, v42);
    v46 = v51;
    v47 = (v60 + v51) & ~v38;
    v48 = swift_allocObject();
    *(v48 + 16) = v43;
    (v59)(v48 + v54, v44, v74);
    v49 = (v48 + v46);
    v50 = v73;
    *v49 = v72;
    v49[1] = v50;
    (v63)(v48 + v47, v45, v65);

    swift_retain_n();

    sub_24124CEAC(v75, sub_2413306C0, v39, sub_2413307C8, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24132CAD0(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v3 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = Strong;
    if (Strong)
    {
    }

    sub_24132C078(v6 != 0);
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v11 = v10;
      v12 = v1;
      v13 = v2;
      v14 = v3;
      v15 = v9;
      sub_24129B7CC(&v11);
    }
  }

  return result;
}

void sub_24132CBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t, void), uint64_t a7, uint64_t a8)
{
  v13 = sub_24135152C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v64 = a5;
    v62 = a6;
    v19 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_logger;
    (*(v14 + 16))(v16, a4, v13);
    v65 = v18;
    v63 = v19;
    v20 = sub_241352FDC();
    v21 = sub_2413540DC();
    v22 = os_log_type_enabled(v20, v21);
    v60 = a8;
    v61 = a7;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v66 = v24;
      *v23 = 136380675;
      sub_24131A288();
      v25 = sub_24135491C();
      v27 = v26;
      (*(v14 + 8))(v16, v13);
      v28 = sub_2412DDC2C(v25, v27, &v66);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_241215000, v20, v21, "Successfully loaded file at %{private}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245CE4870](v24, -1, -1);
      MEMORY[0x245CE4870](v23, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    v29 = v65;
    v30 = swift_unknownObjectWeakLoadStrong();
    v31 = v64;
    if (v30)
    {

      v32 = sub_241352FDC();
      v33 = sub_2413540DC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_241215000, v32, v33, "  in fullscreen", v34, 2u);
        MEMORY[0x245CE4870](v34, -1, -1);
      }

      sub_24132BE58();
      v35 = swift_unknownObjectWeakLoadStrong();
      if (v35)
      {
        v36 = v35;
        sub_2412E2574();
      }
    }

    else
    {
      v37 = sub_241352FDC();
      v38 = sub_2413540DC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_241215000, v37, v38, "  still inline", v39, 2u);
        MEMORY[0x245CE4870](v39, -1, -1);
      }

      v40 = *(*(v29 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v40)
      {
        goto LABEL_18;
      }

      v41 = *(v29 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_remoteContext);
      v42 = [v40 layer];
      [v41 setLayer_];

      sub_24132B1F8(0);
    }

    Optional<A>.stop()(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365EA0;
    *(inited + 32) = 0xD000000000000011;
    v44 = inited + 32;
    *(inited + 40) = 0x80000002413612F0;
    v45 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    v46 = sub_241245974(inited);
    swift_setDeallocating();
    sub_241246278(v44, &unk_27E538A20);
    sub_2412FF19C(1, 0xD000000000000012, 0x80000002413614C0, v46);

    v47 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;
    v48 = *(*(v29 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController);
    if (v48)
    {
      v49 = fmodf(6.2832 - v48[9], 6.2832) * 57.296;
      v50 = fmodf(v48[8] + 6.2832, 6.2832) * 57.296;
      v51 = v48[15] / v48[13];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
      v52 = swift_initStackObject();
      *(v52 + 16) = xmmword_24136A9D0;
      v66 = sub_241353C0C();
      v67 = v53;
      sub_24135456C();

      v54 = sub_24134B094();

      *(v52 + 96) = MEMORY[0x277D839F8];
      *(v52 + 72) = v54;
      v66 = sub_241353C0C();
      v67 = v55;
      sub_24135456C();
      v56 = *(*(*(v29 + v47) + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_hasAudio);
      *(v52 + 168) = v45;
      *(v52 + 144) = v56;
      v66 = 7823737;
      v67 = 0xE300000000000000;
      sub_24135456C();
      v57 = MEMORY[0x277D83A90];
      *(v52 + 240) = MEMORY[0x277D83A90];
      *(v52 + 216) = v49;
      v66 = 0x6863746970;
      v67 = 0xE500000000000000;
      sub_24135456C();
      *(v52 + 312) = v57;
      *(v52 + 288) = v50;
      v66 = 0x656C616373;
      v67 = 0xE500000000000000;
      sub_24135456C();
      *(v52 + 384) = v57;
      *(v52 + 360) = v51;
      v58 = sub_241244BF0(v52);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538730);
      swift_arrayDestroy();
      v62(v60, v58, 0);

      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_24132D2B8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, void *), uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a4;
  v9 = sub_24135152C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v45 = a6;
    (*(v10 + 16))(v12, a3, v9);
    v15 = a1;
    v16 = sub_241352FDC();
    v17 = sub_2413540BC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v44 = v14;
      v19 = a1;
      v20 = v18;
      v21 = swift_slowAlloc();
      v48[0] = v21;
      *v20 = 136380931;
      sub_24131A288();
      HIDWORD(v43) = v17;
      v22 = sub_24135491C();
      v24 = v23;
      (*(v10 + 8))(v12, v9);
      v25 = sub_2412DDC2C(v22, v24, v48);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_241354A3C();
      v28 = sub_2412DDC2C(v26, v27, v48);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_241215000, v16, BYTE4(v43), "Failed to load file at %{private}s, error: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v21, -1, -1);
      a1 = v19;
      MEMORY[0x245CE4870](v20, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    v29 = sub_24135138C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539B80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241366280;
    *(inited + 32) = sub_241353C0C();
    *(inited + 40) = v31;
    v32 = [v29 domain];
    v33 = sub_241353C0C();
    v35 = v34;

    v36 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v33;
    *(inited + 56) = v35;
    *(inited + 80) = sub_241353C0C();
    *(inited + 88) = v37;
    v38 = [v29 code];
    *(inited + 120) = MEMORY[0x277D83B88];
    *(inited + 96) = v38;
    *(inited + 128) = sub_241353C0C();
    *(inited + 136) = v39;
    swift_getErrorValue();
    *(inited + 144) = sub_241354A3C();
    *(inited + 152) = v40;
    *(inited + 168) = v36;
    *(inited + 176) = 0xD000000000000011;
    *(inited + 184) = 0x80000002413612F0;
    *(inited + 216) = MEMORY[0x277D839B0];
    *(inited + 192) = 1;
    v41 = sub_241245974(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A20);
    swift_arrayDestroy();
    sub_2412FF19C(1, 0x616F4C7465737341, 0xEF64656C69614664, v41);

    v42 = sub_241244BF0(MEMORY[0x277D84F90]);
    v47(v45, v42, a1);
  }

  return result;
}

void sub_24132D740(uint64_t a1, void (*a2)(uint64_t, void, uint64_t), CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v13 = sub_241352FDC();
  v14 = sub_2413540DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *&v16 = COERCE_DOUBLE(swift_slowAlloc());
    v96 = *&v16;
    *v15 = 136315138;
    v17 = sub_2413541FC();
    v19 = sub_2412DDC2C(v17, v18, &v96);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_241215000, v13, v14, "Update frame to %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x245CE4870](v16, -1, -1);
    MEMORY[0x245CE4870](v15, -1, -1);
  }

  v20 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;
  v21 = *(*(v7 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v21)
  {
    v35 = sub_241352FDC();
    v36 = sub_2413540BC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v100 = *&v38;
      *v37 = 136315138;
      v96 = 0.0;
      v97 = 0xE000000000000000;
      sub_2413545EC();

      v96 = -2.31584178e77;
      v97 = 0x8000000241361280;
      MEMORY[0x245CE20D0](0xD000000000000026, 0x8000000241363300);
      v39 = sub_2412DDC2C(*&v96, v97, &v100);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_241215000, v35, v36, "Error in updateBounds: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x245CE4870](v38, -1, -1);
      MEMORY[0x245CE4870](v37, -1, -1);
    }

    sub_2412EB880();
    v40 = swift_allocError();
    *v41 = 0xD000000000000026;
    *(v41 + 8) = 0x8000000241363300;
    *(v41 + 16) = 1;
    a2(a1, 0, v40);
    v42 = v40;
    goto LABEL_16;
  }

  [v21 bounds];
  v106.origin.x = v22;
  v106.origin.y = v23;
  v106.size.width = v24;
  v106.size.height = v25;
  v103.origin.x = a3;
  v103.origin.y = a4;
  v103.size.width = a5;
  v103.size.height = a6;
  if (CGRectEqualToRect(v103, v106))
  {
    v96 = 0.0;
    v97 = 0xE000000000000000;
    sub_2413545EC();
    v100 = v96;
    v101 = v97;
    MEMORY[0x245CE20D0](0xD000000000000022, 0x80000002413633D0);
    v96 = a3;
    v97 = *&a4;
    v98 = a5;
    v99 = a6;
    type metadata accessor for CGRect(0);
    sub_2413546CC();
    v27 = *&v100;
    v26 = v101;

    v28 = sub_241352FDC();
    v29 = sub_2413540BC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v100 = *&v31;
      *v30 = 136315138;
      v96 = 0.0;
      v97 = 0xE000000000000000;
      sub_2413545EC();

      v96 = -2.31584178e77;
      v97 = 0x8000000241361280;
      MEMORY[0x245CE20D0](v27, v26);
      v32 = sub_2412DDC2C(*&v96, v97, &v100);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_241215000, v28, v29, "Error in updateBounds: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x245CE4870](v31, -1, -1);
      MEMORY[0x245CE4870](v30, -1, -1);
    }

    sub_2412EB880();
    v33 = swift_allocError();
    *v34 = v27;
    *(v34 + 8) = v26;
    *(v34 + 16) = 1;
    a2(a1, 0, v33);

    return;
  }

  v43 = (v7 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_inlineFrame);
  *v43 = a3;
  v43[1] = a4;
  v43[2] = a5;
  v43[3] = a6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v45 = 0x8000000241363330;
    v46 = sub_241352FDC();
    v47 = sub_2413540BC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v100 = *&v49;
      *v48 = 136315138;
      v96 = 0.0;
      v97 = 0xE000000000000000;
      sub_2413545EC();

      v96 = -2.31584178e77;
      v97 = 0x8000000241361280;
      MEMORY[0x245CE20D0](0xD00000000000009ELL, 0x8000000241363330);
      v50 = sub_2412DDC2C(*&v96, v97, &v100);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_241215000, v46, v47, "Error in updateBounds: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x245CE4870](v49, -1, -1);
      MEMORY[0x245CE4870](v48, -1, -1);
    }

    sub_2412EB880();
    v52 = swift_allocError();
    v53 = 0xD00000000000009ELL;
LABEL_15:
    *v51 = v53;
    *(v51 + 8) = v45;
    *(v51 + 16) = 1;
    a2(a1, 0, v52);
    v42 = v52;
LABEL_16:

    return;
  }

  v54 = [objc_opt_self() newFenceFromDefaultServer];
  if (!v54)
  {
    v45 = 0x80000002413612A0;
    v87 = sub_241352FDC();
    v88 = sub_2413540BC();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v100 = *&v90;
      *v89 = 136315138;
      v96 = 0.0;
      v97 = 0xE000000000000000;
      sub_2413545EC();

      v96 = -2.31584178e77;
      v97 = 0x8000000241361280;
      MEMORY[0x245CE20D0](0xD000000000000022, 0x80000002413612A0);
      v91 = sub_2412DDC2C(*&v96, v97, &v100);

      *(v89 + 4) = v91;
      _os_log_impl(&dword_241215000, v87, v88, "Error in updateBounds: %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x245CE4870](v90, -1, -1);
      MEMORY[0x245CE4870](v89, -1, -1);
    }

    sub_2412EB880();
    v52 = swift_allocError();
    v53 = 0xD000000000000022;
    goto LABEL_15;
  }

  v55 = v54;
  v56 = objc_opt_self();
  [v56 begin];
  [v56 setAnimationDuration_];
  v93 = [*(v7 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_remoteContext) addFence_];
  v57 = v55;
  v58 = sub_241352FDC();
  v59 = sub_2413540DC();

  if (os_log_type_enabled(v58, v59))
  {
    v92 = v56;
    v60 = swift_slowAlloc();
    v94 = a2;
    v61 = v57;
    v62 = swift_slowAlloc();
    *v60 = 138412546;
    *(v60 + 4) = v61;
    *v62 = v55;
    *(v60 + 12) = 1024;
    *(v60 + 14) = v93;
    v63 = v61;
    _os_log_impl(&dword_241215000, v58, v59, "fenceHandle: %@, addFence success? %{BOOL}d", v60, 0x12u);
    sub_241246278(v62, &unk_27E539B90);
    v64 = v62;
    v57 = v61;
    a2 = v94;
    MEMORY[0x245CE4870](v64, -1, -1);
    v65 = v60;
    v56 = v92;
    MEMORY[0x245CE4870](v65, -1, -1);
  }

  v66 = *(*(v7 + v20) + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v66)
  {
    v67 = [v66 layer];
    [v67 setFrame_];

    [v56 commit];
    v68 = sub_241352FDC();
    v69 = sub_2413540DC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_241215000, v68, v69, "Replying fenceHandle", v70, 2u);
      MEMORY[0x245CE4870](v70, -1, -1);
    }

    a2(a1, [v57 createXPCRepresentation], 0);
    [v57 invalidate];
    v71 = sub_241352FDC();
    v72 = sub_2413540DC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_241215000, v71, v72, "updateBounds end", v73, 2u);
      MEMORY[0x245CE4870](v73, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538380);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_241366530;
    v104.origin.x = a3;
    v104.origin.y = a4;
    v104.size.width = a5;
    v104.size.height = a6;
    Width = CGRectGetWidth(v104);
    v76 = MEMORY[0x277D85048];
    *(v74 + 56) = MEMORY[0x277D85048];
    v77 = sub_2412AE514();
    *(v74 + 64) = v77;
    *(v74 + 32) = Width;
    v105.origin.x = a3;
    v105.origin.y = a4;
    v105.size.width = a5;
    v105.size.height = a6;
    Height = CGRectGetHeight(v105);
    *(v74 + 96) = v76;
    *(v74 + 104) = v77;
    *(v74 + 72) = Height;
    v79 = sub_241353C4C();
    v81 = v80;
    v82 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241366530;
    v96 = COERCE_DOUBLE(sub_241353C0C());
    v97 = v84;
    v85 = MEMORY[0x277D837D0];
    sub_24135456C();
    *(inited + 96) = v85;
    *(inited + 72) = v79;
    *(inited + 80) = v81;
    v96 = -2.31584178e77;
    v97 = 0x80000002413612F0;
    sub_24135456C();
    *(inited + 168) = MEMORY[0x277D839B0];
    *(inited + 144) = 1;
    sub_241244BF0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538730);
    swift_arrayDestroy();
    v86 = sub_241353B4C();

    [v82 sendAnalyticsWithEvent:5 payloadDict:v86];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_24132E43C()
{
  v1 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;
  if (*(*(v0 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
  {
    swift_beginAccess();

    sub_24132E5A8(v2);
    swift_endAccess();
    v3 = *(*(v0 + v1) + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (v3)
    {
      [*(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) cancelDeceleration];
      v4 = *(*(v0 + v1) + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
      if (v4)
      {
        v5 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
        if (v5)
        {
          v6 = v5;

          sub_24132A62C(v7, &unk_27E53A480, 0x277CDAA30, &qword_27E539B70);

          v8 = sub_241353FEC();

          [v6 processTouches:v8 phase:0];
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_24132E5A8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2413544AC();
    sub_241246158(0, &unk_27E53A480);
    sub_2412B3208(&qword_27E539B70, &unk_27E53A480);
    sub_24135401C();
    v1 = v15[1];
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  v9 = (v3 + 64) >> 6;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_24121C274();
      return;
    }

    while (1)
    {
      sub_24132F204(v15, v14, &unk_27E53A480, 0x277CDAA30, &unk_27E53A490, &unk_24136ACD0);

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_24135451C())
      {
        sub_241246158(0, &unk_27E53A480);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v4;
        v13 = v5;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_18;
    }

    v11 = v2[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_24132E7C4(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v33 = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2413544AC();
    sub_241246158(0, &unk_27E53A480);
    sub_2412B3208(&qword_27E539B70, &unk_27E53A480);
    sub_24135401C();
    v3 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v9 = ~v8;
    v10 = -v8;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a2 + 56);

    v5 = v9;
    v6 = 0;
  }

  v30 = v5;
  v12 = (v5 + 64) >> 6;
  v32 = v12;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (v7)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v18 = v3;
        v34 = v17;
        v19 = [v17 uid];
        v20 = sub_241353C0C();
        v22 = v21;

        v23 = [v33 uid];
        v24 = sub_241353C0C();
        v26 = v25;

        if (v20 == v24 && v22 == v26)
        {
          break;
        }

        v28 = sub_24135497C();

        v3 = v18;
        if (v28)
        {
          goto LABEL_25;
        }

        v6 = v15;
        v7 = v16;
        v12 = v32;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_24135451C())
        {
          sub_241246158(0, &unk_27E53A480);
          swift_dynamicCast();
          v17 = v40;
          v15 = v6;
          v16 = v7;
          if (v40)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_24121C274();
      [v33 cgLocation];
      v29 = v34;
      [v34 setCgLocation_];
      [v33 cgPreviousLocation];
      [v34 setCgPreviousLocation_];
      [v33 timestamp];
      [v34 setTimestamp_];
    }

    else
    {
LABEL_23:
      sub_24121C274();
      v29 = 0;
    }

    *a3 = v29;
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_23;
      }

      v14 = *(v4 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_24132EB0C(unint64_t a1)
{
  v2 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;
  if (*(*(v1 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
  {
    v3 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_allTouches;
    swift_beginAccess();
    v5 = *(v1 + v3);

    sub_24133026C(a1, v5);
    v7 = v6;

    v8 = sub_24133052C(v7);

    v9 = *(*(v1 + v2) + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
      if (v10)
      {
        v11 = v10;
        sub_24132A62C(v8, &unk_27E53A480, 0x277CDAA30, &qword_27E539B70);

        v12 = sub_241353FEC();

        [v11 processTouches:v12 phase:1];
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24132EC74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController;
  if (*(*(v3 + OBJC_IVAR____TtC11AssetViewer13InlinePreview_modelController) + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) == 2)
  {
    v7 = OBJC_IVAR____TtC11AssetViewer13InlinePreview_allTouches;
    swift_beginAccess();
    v9 = *(v4 + v7);

    sub_24133026C(a1, v9);
    v11 = v10;

    v12 = sub_24133052C(v11);

    v13 = *(*(v4 + v5) + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
      if (v14)
      {
        v15 = v14;
        sub_24132A62C(v12, &unk_27E53A480, 0x277CDAA30, &qword_27E539B70);
        v16 = sub_241353FEC();

        [v15 processTouches:v16 phase:a3];
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_2413544AC();
        sub_241246158(0, &unk_27E53A480);
        sub_2412B3208(&qword_27E539B70, &unk_27E53A480);
        sub_24135401C();
        v12 = v32;
        v17 = v33;
        v18 = v34;
        v19 = v35;
        v20 = v36;
      }

      else
      {
        v21 = -1 << *(v12 + 32);
        v17 = v12 + 56;
        v18 = ~v21;
        v22 = -v21;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v20 = v23 & *(v12 + 56);

        v19 = 0;
      }

      v24 = (v18 + 64) >> 6;
      if (v12 < 0)
      {
        goto LABEL_18;
      }

      while (1)
      {
        v25 = v19;
        v26 = v20;
        v27 = v19;
        if (!v20)
        {
          break;
        }

LABEL_16:
        v28 = (v26 - 1) & v26;
        v29 = *(*(v12 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v29)
        {
LABEL_22:
          sub_24121C274();

          return;
        }

        while (1)
        {
          swift_beginAccess();
          v30 = sub_24132FD98(v29, &unk_27E53A480, 0x277CDAA30, &unk_27E53A490, &unk_24136ACD0);
          swift_endAccess();

          v19 = v27;
          v20 = v28;
          if ((v12 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_18:
          if (sub_24135451C())
          {
            sub_241246158(0, &unk_27E53A480);
            swift_dynamicCast();
            v29 = v31;
            v27 = v19;
            v28 = v20;
            if (v31)
            {
              continue;
            }
          }

          goto LABEL_22;
        }
      }

      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          goto LABEL_22;
        }

        v26 = *(v17 + 8 * v27);
        ++v25;
        if (v26)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for InlinePreview.AnimationState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for InlinePreview.AnimationState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_24132F15C(uint64_t a1, uint64_t a2)
{
  sub_2413542AC();
  result = sub_24135448C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24132F204(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_2413544FC();

    if (v16)
    {

      sub_241246158(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_2413544EC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_24132F478(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_24132F678(v27 + 1, a5);
        }

        v28 = v15;
        sub_24132F15C(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_241246158(0, a3);
    v18 = sub_2413542AC();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_2413542BC();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_24132F898(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_24132F478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_2413545AC();
    v20 = v7;
    sub_2413544AC();
    if (sub_24135451C())
    {
      sub_241246158(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_24132F678(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_2413542AC();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_24135451C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_24132F678(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24135459C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_2413542AC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

void sub_24132F898(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_24132F678(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_24132FA28(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_24132FB68(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_2413542AC();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_241246158(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_2413542BC();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2413549CC();
  __break(1u);
}

id sub_24132FA28(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_24135458C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_24132FB68(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24135459C();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2413542AC();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_24132FD98(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = sub_24135452C();

    if (v13)
    {
      v14 = sub_24132FF4C(v11, v12, a4, a5, a2);

      return v14;
    }

    return 0;
  }

  v25 = v5;
  sub_241246158(0, a2);
  v16 = sub_2413542AC();
  v17 = -1 << *(v9 + 32);
  v18 = v16 & ~v17;
  if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v9 + 48) + 8 * v18);
    v21 = sub_2413542BC();

    if (v21)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v25;
  v26 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24132FA28(a4);
    v23 = v26;
  }

  v24 = *(*(v23 + 48) + 8 * v18);
  sub_2413300CC(v18);
  result = v24;
  *v25 = v26;
  return result;
}

uint64_t sub_24132FF4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v9 = v5;

  v10 = sub_2413544EC();
  v11 = swift_unknownObjectRetain();
  v12 = sub_24132F478(v11, v10, a3, a4, a5);
  v21 = v12;

  v13 = sub_2413542AC();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_241246158(0, a5);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_2413542BC();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_2413300CC(v15);
  result = sub_2413542BC();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2413300CC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24135446C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2413542AC();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_24133026C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2413544AC();
    sub_241246158(0, &unk_27E53A480);
    sub_2412B3208(&qword_27E539B70, &unk_27E53A480);
    sub_24135401C();
    v4 = v20[1];
    v5 = v20[2];
    v6 = v20[3];
    v7 = v20[4];
    v8 = v20[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(a1 + 56));

    v7 = 0;
  }

  while ((v4 & 0x8000000000000000) != 0)
  {
    v17 = sub_24135451C();
    if (!v17 || (v19 = v17, sub_241246158(0, &unk_27E53A480), swift_dynamicCast(), v16 = v20[0], v14 = v7, v15 = v8, !v20[0]))
    {
LABEL_22:
      sub_24121C274();
      return;
    }

LABEL_18:
    v20[0] = v16;
    sub_24132E7C4(v20, a2, &v19);
    if (v3)
    {

      sub_24121C274();

      return;
    }

    if (v19)
    {
      MEMORY[0x245CE21C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241353E4C();
      }

      sub_241353E6C();
    }

    v7 = v14;
    v8 = v15;
  }

  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = v5[v14];
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_24133052C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2413544EC())
  {
    v4 = sub_241246158(0, &unk_27E53A480);
    v5 = sub_2412B3208(&qword_27E539B70, &unk_27E53A480);
    result = MEMORY[0x245CE23C0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CDAA30uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245CE29C0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_24132F204(&v12, v10, &unk_27E53A480, 0x277CDAA30, &unk_27E53A490, &unk_24136ACD0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2413544EC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_2413306C0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24135152C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_24135164C() - 8);
  v10 = *(v2 + v7);
  v11 = *(v2 + 16);
  v12 = *(v2 + v8);
  v13 = *(v2 + v8 + 8);
  v14 = v2 + ((v8 + *(v9 + 80) + 16) & ~*(v9 + 80));

  sub_24132CBA4(a1, a2, v11, v2 + v6, v10, v12, v13, v14);
}

uint64_t sub_2413307C8(void *a1)
{
  v3 = *(sub_24135152C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_24135164C() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_24132D2B8(a1, v7, v1 + v4, v8, v9, v10);
}

dispatch_semaphore_t sub_241330904()
{
  result = dispatch_semaphore_create(1);
  qword_27E53A4B8 = result;
  return result;
}

uint64_t sub_241330928()
{
  type metadata accessor for ARViewCounter();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539D40);
  swift_allocObject();
  result = sub_24135311C();
  *(v0 + 16) = result;
  qword_27E541998 = v0;
  return result;
}

uint64_t sub_24133099C()
{

  return swift_deallocClassInstance();
}

void sub_2413309F8()
{
  if (qword_27E537CB8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E53A4B8;
  sub_2413541CC();

  if (qword_27E537CC0 != -1)
  {
    swift_once();
  }

  v1 = sub_2413530EC();
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v2;
    v1(v8, 0);

    if (qword_27E537CD0 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v3 = sub_241352FFC();
  __swift_project_value_buffer(v3, qword_27E53A538);
  v4 = sub_241352FDC();
  v5 = sub_2413540DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;

    sub_2413530FC();

    *(v6 + 4) = v8[0];
    _os_log_impl(&dword_241215000, v4, v5, "Incrementing - ARView counter now %ld", v6, 0xCu);
    MEMORY[0x245CE4870](v6, -1, -1);
  }

  v7 = qword_27E53A4B8;
  sub_2413541DC();
}

void sub_241330BEC()
{
  if (qword_27E537CB8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E53A4B8;
  sub_2413541CC();

  if (qword_27E537CC0 != -1)
  {
    swift_once();
  }

  v1 = sub_2413530EC();
  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    --*v2;
    v1(v8, 0);

    if (qword_27E537CD0 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v3 = sub_241352FFC();
  __swift_project_value_buffer(v3, qword_27E53A538);
  v4 = sub_241352FDC();
  v5 = sub_2413540DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;

    sub_2413530FC();

    *(v6 + 4) = v8[0];
    _os_log_impl(&dword_241215000, v4, v5, "Decrementing - ARView counter now %ld", v6, 0xCu);
    MEMORY[0x245CE4870](v6, -1, -1);
  }

  v7 = qword_27E53A4B8;
  sub_2413541DC();
}

uint64_t sub_241330DE0(uint64_t a1)
{
  v35 = sub_2413529AC();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_2412DE1D4(0, v5, 0);
    v38 = v39;
    v7 = a1 + 64;
    result = sub_24135445C();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 72;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 56) + *(v3 + 72) * v8, v35);
      v37 = sub_24135299C();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_2412DE1D4((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_24121C288(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_24121C288(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2413310E8()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E53A4C0);
  __swift_project_value_buffer(v0, qword_27E53A4C0);
  return sub_241352FEC();
}

uint64_t sub_24133116C(uint64_t a1, uint64_t *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A530);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_24135152C();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A528);
  *(v3 + 88) = swift_task_alloc();
  v6 = sub_241352A2C();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 112) = v7;
  *(v3 + 120) = v8;
  *(v3 + 128) = a2[1];
  *(v3 + 208) = *(a2 + 16);
  sub_241353ECC();
  *(v3 + 136) = sub_241353EBC();
  v10 = sub_241353E8C();
  *(v3 + 144) = v10;
  *(v3 + 152) = v9;

  return MEMORY[0x2822009F8](sub_241331344, v10, v9);
}

uint64_t sub_241331344()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_configurator;
  *(v0 + 160) = OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_configurator;
  v6 = sub_241352A5C();
  *(v0 + 168) = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  *(v0 + 176) = v8;
  *(v0 + 184) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_wasPreImportCallbackCalled) = 0;
  v9 = OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_url;
  v10 = *(v2 + 16);
  v10(v4 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_url, v3, v1);
  sub_2413513FC();
  sub_241353C8C();

  v11 = sub_24135486C();

  if (v11 == 1)
  {
    v12 = 0;
    goto LABEL_5;
  }

  if (!v11)
  {
    v12 = 2;
LABEL_5:
    v45 = v10;
    v13 = *(v0 + 208);
    v14 = *(v0 + 128);
    v15 = *(v0 + 120);
    v16 = *(v0 + 48);
    v17 = OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_fileType;
    *(v16 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_fileType) = v12;
    v18 = v16 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_options;
    *v18 = v15;
    *(v18 + 8) = v14;
    *(v18 + 16) = v13;
    v19 = sub_24135142C();
    v21 = *(v16 + v17);
    if (qword_27E537C60 != -1)
    {
      v40 = v19;
      v41 = v20;
      swift_once();
      v20 = v41;
      v19 = v40;
    }

    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v24 = *(v0 + 96);
    v25 = *(v0 + 56);
    v43 = *(v0 + 80);
    v44 = *(v0 + 64);
    v26 = *(v0 + 40);
    v27 = xmmword_27E541898;
    v28 = qword_27E5418A8;
    v29 = *(v0 + 48) + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata;
    *v29 = v19;
    *(v29 + 8) = v20;
    *(v29 + 16) = v21;
    *(v29 + 17) = 514;
    *(v29 + 24) = 3;
    *(v29 + 32) = v27;
    *(v29 + 48) = v28;

    sub_241352A1C();
    sub_2413529FC();
    swift_allocObject();
    swift_weakInit();
    sub_241352A0C();
    v45(v43, v26, v44);
    (*(v23 + 16))(v25, v22, v24);
    (*(v23 + 56))(v25, 0, 1, v24);
    v30 = swift_task_alloc();
    *(v0 + 192) = v30;
    *v30 = v0;
    v30[1] = sub_2413317B0;
    v32 = *(v0 + 80);
    v31 = *(v0 + 88);
    v33 = *(v0 + 56);

    return MEMORY[0x28212ACA0](v31, v32, v33);
  }

  v34 = *(v0 + 64);
  v35 = *(v0 + 72);
  v36 = *(v0 + 40);

  sub_241255C30();
  swift_allocError();
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  *v37 = 1;
  *(v37 + 24) = 2;
  swift_willThrow();
  v38 = *(v35 + 8);
  v38(v36, v34);
  v38(v4 + v9, v34);
  sub_241246278(v4 + v5, &qword_27E53A528);
  type metadata accessor for VariantsServiceImpl();
  swift_deallocPartialClassInstance();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2413317B0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_241331C5C;
  }

  else
  {
    v5 = sub_2413318EC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2413318EC()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[11];
  v5 = v0[6];

  v1(v4, 0, 1, v2);
  swift_beginAccess();
  sub_241255BC8(v4, v5 + v3, &qword_27E53A528);
  swift_endAccess();
  if (qword_27E537BA8 != -1)
  {
    swift_once();
  }

  v7 = qword_27E539040;
  v6 = *algn_27E539048;
  v8 = dword_27E539050 | (BYTE1(dword_27E539050) << 8);

  LOBYTE(v7) = sub_2412433F4(v7, v6, v8);

  if (v7)
  {
    if (qword_27E537CC8 != -1)
    {
      swift_once();
    }

    v9 = sub_241352FFC();
    __swift_project_value_buffer(v9, qword_27E53A4C0);
    v10 = sub_241352FDC();
    v11 = sub_2413540DC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_241215000, v10, v11, "Force throwing error for 3D", v12, 2u);
      MEMORY[0x245CE4870](v12, -1, -1);
    }

    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[12];
    v16 = v0[8];
    v17 = v0[9];
    v18 = v0[5];

    sub_241255C30();
    swift_allocError();
    *v19 = 0xD00000000000001ELL;
    *(v19 + 8) = 0x8000000241363530;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    swift_willThrow();
    (*(v17 + 8))(v18, v16);
    (*(v14 + 8))(v13, v15);

    v20 = v0[1];

    return v20();
  }

  else
  {
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];
    (*(v0[9] + 8))(v0[5], v0[8]);
    (*(v23 + 8))(v22, v24);

    v25 = v0[1];
    v26 = v0[6];

    return v25(v26);
  }
}

uint64_t sub_241331C5C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[5];

  (*(v5 + 8))(v6, v4);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

void sub_241331D40()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_241353A9C();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {
      sub_241334AD4();

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_27E537CC8 != -1)
  {
    swift_once();
  }

  v0 = sub_241352FFC();
  __swift_project_value_buffer(v0, qword_27E53A4C0);
  v1 = sub_241352FDC();
  v2 = sub_2413540BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_241215000, v1, v2, "Couldn't cast to Swift import session", v3, 2u);
    MEMORY[0x245CE4870](v3, -1, -1);
  }
}

uint64_t sub_241331EA4()
{
  v1[5] = v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A520);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A528);
  v1[8] = swift_task_alloc();
  sub_241353ECC();
  v1[9] = sub_241353EBC();
  v3 = sub_241353E8C();

  return MEMORY[0x2822009F8](sub_241331FB0, v3, v2);
}

uint64_t sub_241331FB0()
{
  v30 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_configurator;
  swift_beginAccess();
  sub_241246210(v2 + v3, v1, &qword_27E53A528);
  v4 = sub_241352A5C();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v1, 1, v4);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    v7 = v0[8];
    v26 = v0[6];
    v27 = v0[7];

    v8 = sub_241352A3C();
    (*(v5 + 8))(v7, v4);
    v10 = v8 + 64;
    v9 = *(v8 + 64);
    v28 = v8;
    v29[0] = MEMORY[0x277D84F90];
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & v9;
    v14 = (63 - v12) >> 6;

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_9:
        v17 = v0[7];
        v18 = __clz(__rbit64(v13)) | (v16 << 6);
        v19 = *(v28 + 56);
        v20 = (*(v28 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = sub_2413529EC();
        (*(*(v23 - 8) + 16))(&v17[*(v26 + 48)], v19 + *(*(v23 - 8) + 72) * v18, v23);
        *v17 = v21;
        *(v27 + 8) = v22;

        sub_2413322F4(v29, v17);
        v13 &= v13 - 1;
        result = sub_241246278(v0[7], &qword_27E53A520);
        v15 = v16;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    sub_241335CE4(v29);

    v24 = v29[0];

    v25 = v0[1];

    return v25(v24);
  }

  return result;
}

uint64_t sub_2413322F4(char **a1, uint64_t a2)
{
  v66 = a1;
  v3 = sub_2413529AC();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A520);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - v7;
  v9 = sub_2413529EC();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  v19 = v18;
  sub_241246210(a2, v8, &qword_27E53A520);

  (*(v19 + 32))(v17, &v8[*(v6 + 56)], v9);
  v20 = *(sub_2413529CC() + 16);

  if (v20 < 2)
  {
    return (*(v19 + 8))(v17, v9);
  }

  if (qword_27E537CC8 != -1)
  {
    swift_once();
  }

  v22 = sub_241352FFC();
  __swift_project_value_buffer(v22, qword_27E53A4C0);
  v23 = *(v19 + 16);
  v23(v15, v17, v9);
  v23(v12, v17, v9);
  v24 = sub_241352FDC();
  v25 = sub_2413540DC();
  v26 = os_log_type_enabled(v24, v25);
  v62 = v19;
  if (v26)
  {
    v27 = v19;
    v28 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v68 = v60;
    *v28 = 136315394;
    v59 = v25;
    v29 = sub_2413529DC();
    v31 = v30;
    v58 = v24;
    v32 = *(v27 + 8);
    v32(v15, v9);
    v33 = sub_2412DDC2C(v29, v31, &v68);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    sub_2413529CC();
    v34 = sub_241353B6C();
    v36 = v35;

    v61 = v32;
    v32(v12, v9);
    v37 = sub_2412DDC2C(v34, v36, &v68);

    *(v28 + 14) = v37;
    v38 = v58;
    _os_log_impl(&dword_241215000, v58, v59, "keyValuePair.value: %s: %s", v28, 0x16u);
    v39 = v60;
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v39, -1, -1);
    MEMORY[0x245CE4870](v28, -1, -1);
  }

  else
  {

    v40 = *(v19 + 8);
    v40(v12, v9);
    v61 = v40;
    v40(v15, v9);
  }

  v41 = sub_2413529DC();
  v43 = v42;
  v44 = sub_2413529CC();
  v45 = v67;
  v46 = sub_241330DE0(v44);

  v68 = v46;

  sub_2412A94BC(&v68);
  if (v45)
  {

    __break(1u);
  }

  else
  {
    v60 = v43;

    v47 = v68;
    v48 = v63;
    sub_2413529BC();
    v49 = sub_24135299C();
    v51 = v50;
    (*(v64 + 8))(v48, v65);
    v52 = *v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_2412A26E8(0, *(v52 + 2) + 1, 1, v52);
    }

    v55 = *(v52 + 2);
    v54 = *(v52 + 3);
    if (v55 >= v54 >> 1)
    {
      v52 = sub_2412A26E8((v54 > 1), v55 + 1, 1, v52);
    }

    result = v61(v17, v9);
    *(v52 + 2) = v55 + 1;
    v56 = &v52[40 * v55];
    v57 = v60;
    *(v56 + 4) = v41;
    *(v56 + 5) = v57;
    *(v56 + 6) = v47;
    *(v56 + 7) = v49;
    *(v56 + 8) = v51;
    *v66 = v52;
  }

  return result;
}

uint64_t sub_2413328E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v4[55] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  v4[56] = swift_task_alloc();
  v5 = sub_241351DEC();
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538328);
  v4[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A528);
  v4[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850);
  v4[63] = swift_task_alloc();
  sub_241353ECC();
  v4[64] = sub_241353EBC();
  v7 = sub_241353E8C();
  v4[65] = v7;
  v4[66] = v6;

  return MEMORY[0x2822009F8](sub_241332AF0, v7, v6);
}

uint64_t sub_241332AF0()
{
  v52 = v0;
  if (qword_27E537BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E539040;
  v1 = *algn_27E539048;
  v3 = dword_27E539050 | (BYTE1(dword_27E539050) << 8);

  LOBYTE(v2) = sub_2412433F4(v2, v1, v3);

  if (v2)
  {

    if (qword_27E537CC8 != -1)
    {
      swift_once();
    }

    v4 = 0xD00000000000001ELL;
    v5 = sub_241352FFC();
    __swift_project_value_buffer(v5, qword_27E53A4C0);
    v6 = sub_241352FDC();
    v7 = sub_2413540DC();
    v8 = "or this Configuration";
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_17;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Force throwing error for 3D";
LABEL_16:
    _os_log_impl(&dword_241215000, v6, v7, v10, v9, 2u);
    MEMORY[0x245CE4870](v9, -1, -1);
LABEL_17:

    sub_241255C30();
    swift_allocError();
    *v19 = v4;
    *(v19 + 8) = v8 | 0x8000000000000000;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }

  if (qword_27E537BB0 != -1)
  {
    swift_once();
  }

  v11 = unk_27E539088;
  *(v0 + 96) = xmmword_27E539078;
  *(v0 + 112) = v11;
  *(v0 + 128) = unk_27E539098;
  v12 = *&qword_27E539068;
  *(v0 + 64) = xmmword_27E539058;
  *(v0 + 80) = v12;
  sub_241246210(v0 + 64, v0 + 144, &qword_27E5380F8);
  v13 = sub_2412437D0();
  v15 = v14;
  sub_241246278(v0 + 64, &qword_27E5380F8);
  if (v15)
  {
    v16 = *(v0 + 424);
    *(v0 + 392) = v13;
    *(v0 + 400) = v15;
    v17 = swift_task_alloc();
    *(v17 + 16) = v0 + 392;
    LOBYTE(v16) = sub_2413483FC(sub_241336CB4, v17, v16);

    if (v16)
    {

      if (qword_27E537CC8 != -1)
      {
        swift_once();
      }

      v18 = sub_241352FFC();
      __swift_project_value_buffer(v18, qword_27E53A4C0);
      v6 = sub_241352FDC();
      v7 = sub_2413540DC();
      v8 = "after_processing";
      v4 = 0xD000000000000035;
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_17;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Force throwing error for this Configuration 3D";
      goto LABEL_16;
    }
  }

  if (qword_27E537CC8 != -1)
  {
    swift_once();
  }

  v22 = sub_241352FFC();
  *(v0 + 536) = __swift_project_value_buffer(v22, qword_27E53A4C0);

  v23 = sub_241352FDC();
  v24 = sub_2413540DC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v51 = v26;
    *v25 = 136315138;
    v27 = sub_241353B6C();
    v29 = sub_2412DDC2C(v27, v28, &v51);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_241215000, v23, v24, "Start loading %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x245CE4870](v26, -1, -1);
    MEMORY[0x245CE4870](v25, -1, -1);
  }

  if (qword_27E537D08 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 504);
  v31 = qword_27E53A740;
  *(v0 + 544) = qword_27E53A740;
  *(v0 + 552) = OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_url;
  v32 = sub_24135142C();
  v34 = v33;
  v35 = sub_241353EEC();
  *(v0 + 560) = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  *(v0 + 568) = v37;
  *(v0 + 576) = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v37(v30, 1, 1, v35);
  v38 = qword_27E537D00;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 496);
  v40 = *(v0 + 504);
  v41 = *(v0 + 432);
  v42 = qword_27E53A738;
  *(v0 + 584) = qword_27E53A738;
  v43 = sub_241336D0C(&qword_27E538508, type metadata accessor for Signposter.SignposterActor);
  *(v0 + 592) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  *(v44 + 32) = v31;
  *(v44 + 40) = 10;
  *(v44 + 48) = v32;
  *(v44 + 56) = v34;

  sub_241327238(0, 0, v40, &unk_24136ADF0, v44);

  v45 = OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_configurator;
  swift_beginAccess();
  sub_241246210(v41 + v45, v39, &qword_27E53A528);
  v46 = sub_241352A5C();
  v47 = (*(*(v46 - 8) + 48))(v39, 1, v46);
  if (v47 == 1)
  {
    __break(1u);
  }

  else
  {
    v49 = *(v0 + 424);
    *(v0 + 600) = sub_241352C5C();

    v50 = swift_task_alloc();
    *(v0 + 608) = v50;
    *v50 = v0;
    v50[1] = sub_2413332CC;
    v47 = *(v0 + 496);
    v48 = v49;
  }

  return MEMORY[0x282129BC8](v47, v48);
}

uint64_t sub_2413332CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 616) = a1;
  *(v4 + 624) = v1;

  v5 = *(v3 + 528);
  v6 = *(v3 + 520);
  if (v1)
  {
    v7 = sub_241333E54;
  }

  else
  {
    v7 = sub_241333414;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_241333414()
{
  v100 = v0;

  sub_24135191C();
  v93 = v2;
  v96 = v1;

  v3 = sub_241352FDC();
  v4 = sub_2413540DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v99 = v6;
    *v5 = 136315906;
    v7 = sub_241353B6C();
    v9 = sub_2412DDC2C(v7, v8, &v99);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v0 + 16) = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
    sub_24124A868();
    v10 = sub_2413549BC();
    v12 = sub_2412DDC2C(v10, v11, &v99);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2080;
    *(v0 + 32) = v93;
    v13 = sub_2413549BC();
    v15 = sub_2412DDC2C(v13, v14, &v99);

    *(v5 + 24) = v15;
    *(v5 + 32) = 2080;
    sub_24135176C();
    *(v0 + 48) = v16;
    v17 = sub_2413549BC();
    v19 = sub_2412DDC2C(v17, v18, &v99);

    *(v5 + 34) = v19;
    _os_log_impl(&dword_241215000, v3, v4, "Done loading %s. Visual Bounds: %s, %s, extents: %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245CE4870](v6, -1, -1);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v97 = *(v0 + 616);
  v94 = *(v0 + 592);
  v20 = *(v0 + 584);
  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  v23 = *(v0 + 544);
  v24 = *(v0 + 504);
  v25 = *(v0 + 432);
  v26 = sub_24135142C();
  v28 = v27;
  v21(v24, 1, 1, v22);
  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  *(v29 + 24) = v94;
  *(v29 + 32) = v23;
  *(v29 + 40) = 10;
  *(v29 + 48) = v26;
  *(v29 + 56) = v28;

  sub_241327238(0, 0, v24, &unk_241366C00, v29);

  v30 = OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_wasPreImportCallbackCalled;
  *(v25 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_wasPreImportCallbackCalled) = 0;
  printHierarchy(entity:level:debugString:)(v97, 0, 0x6F6C5F7265746661, 0xEA00000000006461);
  v95 = v25;
  v92 = v30;
  if (!*(v25 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_fileType))
  {

LABEL_7:
    v32 = *(v0 + 616);
    type metadata accessor for VariantsServiceImpl();
    v33 = sub_241333F84(v32, 0, 3);

    goto LABEL_9;
  }

  v31 = sub_24135497C();

  if (v31)
  {
    goto LABEL_7;
  }

  v33 = *(v0 + 616);
LABEL_9:
  v34 = *(v0 + 488);
  v35 = *(v0 + 464);
  v89 = *(v0 + 456);
  v36 = *(v0 + 448);
  sub_241352E7C();
  v37 = sub_241352E8C();
  (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
  v38 = sub_241352A7C();
  sub_241352ACC();
  v38(v0 + 336, 0);
  v98 = v33;
  sub_24133408C(v33, v36);
  v39 = *(v35 + 48);
  v40 = v39(v36, 1, v89);
  v41 = *(v0 + 480);
  v43 = *(v0 + 456);
  v42 = *(v0 + 464);
  v44 = *(v0 + 448);
  if (v40 == 1)
  {
    *v41 = xmmword_241365E70;
    v41[1] = xmmword_241364640;
    v41[2] = xmmword_241365EE0;
    v41[3] = xmmword_241365D00;
    (*(v42 + 104))();
    if (v39(v44, 1, v43) != 1)
    {
      sub_241246278(*(v0 + 448), &qword_27E538940);
    }
  }

  else
  {
    (*(v42 + 32))(v41, *(v0 + 448), *(v0 + 456));
  }

  v91 = *(*(v0 + 464) + 16);
  v91(*(v0 + 472), *(v0 + 480), *(v0 + 456));
  v45 = sub_241352FDC();
  v46 = sub_2413540DC();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 464);
  v49 = *(v0 + 472);
  v50 = *(v0 + 456);
  if (v47)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v99 = v52;
    *v51 = 136315138;
    v53 = AnchoringComponent.Target.arql_description.getter();
    v55 = v54;
    v90 = *(v48 + 8);
    v90(v49, v50);
    v56 = sub_2412DDC2C(v53, v55, &v99);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_241215000, v45, v46, "Anchor type: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x245CE4870](v52, -1, -1);
    MEMORY[0x245CE4870](v51, -1, -1);
  }

  else
  {

    v90 = *(v48 + 8);
    v90(v49, v50);
  }

  if (sub_24131487C(*(v0 + 480)))
  {
    v57 = sub_241352FDC();
    v58 = sub_2413540DC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_241215000, v57, v58, "Rotating asset 90° in variants loader", v59, 2u);
      MEMORY[0x245CE4870](v59, -1, -1);
    }

    sub_24135192C();
  }

  v60 = *(v0 + 616);
  v88 = *(v0 + 552);
  v61 = *(v0 + 480);
  v86 = v61;
  v62 = *(v0 + 464);
  v63 = *(v0 + 456);
  v87 = *(v0 + 432);
  v65 = *(v0 + 408);
  v64 = *(v0 + 416);

  ComponentType = REPerspectiveCameraComponentGetComponentType();
  sub_2413123F8(ComponentType, 1);
  v67 = RECustomMatrixCameraComponentGetComponentType();
  sub_2413123F8(v67, 1);
  v68 = REOrthographicCameraComponentGetComponentType();
  sub_2413123F8(v68, 1);
  printHierarchy(entity:level:debugString:)(v60, 0, 0xD000000000000010, 0x80000002413634D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_241365C30;
  *(v69 + 32) = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A60);
  v70 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_241365EA0;
  v91(v71 + v70, v61, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538870);
  v72 = sub_24135152C();
  v73 = *(v72 - 8);
  v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_241365EA0;
  (*(v73 + 16))(v75 + v74, v87 + v88, v72);
  v76 = sub_2412452E4(MEMORY[0x277D84F90]);

  v90(v86, v63);
  v77 = (v87 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata);
  v79 = *(v87 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata + 16);
  v78 = *(v87 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata + 32);
  v80 = *(v87 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata);
  *(v0 + 272) = *(v87 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata + 48);
  *(v0 + 240) = v79;
  *(v0 + 256) = v78;
  *(v0 + 224) = v80;
  v81 = *v77;
  v82 = v77[1];
  v83 = v77[2];
  *(v65 + 48) = *(v77 + 6);
  *(v65 + 16) = v82;
  *(v65 + 32) = v83;
  *v65 = v81;
  *v64 = v69;
  *(v64 + 8) = v71;
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = 1;
  *(v64 + 40) = v75;
  *(v64 + 48) = v76;
  *(v95 + v92) = 0;
  sub_241255B50(v0 + 224, v0 + 280);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_241333E54()
{
  v1 = v0[53];

  v2 = v0[78];
  v3 = v0[54];
  if (*(v1 + 16))
  {
    sub_241255C30();
    swift_allocError();
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    *(v4 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    swift_willThrow();
  }

  *(v3 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_wasPreImportCallbackCalled) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_241333F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_241335A0C(a1, a2, a3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {

    v5 = a1;
  }

  v9[0] = v5;
  v9[4] = a1;
  sub_241352C5C();
  sub_241336D0C(&qword_27E539D58, MEMORY[0x277CDB1C8]);
  if ((sub_241353BCC() & 1) == 0)
  {
    v6 = sub_241352B0C();
    v7 = sub_241352AFC();
    sub_241280EF8(v6);
    v7(v9, 0);
    sub_241352B1C();
  }

  return v5;
}

uint64_t sub_24133408C@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v57 = a2;
  v2 = sub_241352B6C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538558);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v57 - v9;
  v77 = sub_241352AAC();
  v74 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_241351E0C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v78 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538940);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v62 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v57 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v70 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v24 = sub_241351DEC();
  v25 = (*(v24 - 8) + 56);
  v64 = *v25;
  v64(v23, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241365C30;
  *(inited + 32) = v75;

  v73 = v23;
  result = swift_beginAccess();
  v28 = (v74 + 1);
  v74 = (v13 + 48);
  v75 = v28;
  v69 = (v13 + 32);
  v71 = (v25 - 1);
  v63 = v25;
  v58 = (v25 - 6);
  v67 = (v13 + 56);
  v66 = (v13 + 8);
  *&v29 = 136315138;
  v61 = v29;
  v60 = v8;
  v68 = v10;
  v59 = v4;
  v72 = v24;
  while (1)
  {
    v30 = inited >> 62;
    if (!(inited >> 62))
    {
      break;
    }

    result = sub_2413544EC();
    if (!result)
    {
      goto LABEL_48;
    }

    result = sub_2413544EC();
    if (!result)
    {
      goto LABEL_49;
    }

LABEL_4:
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x245CE29C0](0, inited);
      v31 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v30)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v31 = inited & 0xFFFFFFFFFFFFFF8;
      if (!v30)
      {
LABEL_7:
        result = *(v31 + 16);
        if (!result)
        {
          goto LABEL_46;
        }

        goto LABEL_16;
      }
    }

    result = sub_2413544EC();
    if (!result)
    {
      goto LABEL_46;
    }

    result = sub_2413544EC();
    if (result < 1)
    {
      goto LABEL_47;
    }

    result = sub_2413544EC();
LABEL_16:
    v32 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_45;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v80 = inited;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v30)
      {
LABEL_22:
        sub_2413544EC();
      }

LABEL_23:
      inited = sub_24135461C();
      v80 = inited;
      goto LABEL_24;
    }

    if (v30)
    {
      goto LABEL_22;
    }

    if (v32 > *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

LABEL_24:
    sub_241257B58(0, 1, 0);
    v80 = inited;
    v34 = v76;
    sub_241352A8C();
    sub_241352ABC();
    (*v75)(v34, v77);
    if ((*v74)(v10, 1, v12) == 1)
    {
      sub_241246278(v10, &qword_27E538558);
    }

    else
    {
      (*v69)(v78, v10, v12);
      v35 = v24;
      v36 = v70;
      sub_241246210(v73, v70, &qword_27E538940);
      v37 = *v71;
      LODWORD(v35) = (*v71)(v36, 1, v35);
      sub_241246278(v36, &qword_27E538940);
      if (v35 == 1)
      {
        v38 = v65;
        sub_241351DFC();
        v64(v38, 0, 1, v72);
        sub_241255BC8(v38, v73, &qword_27E538940);
        if (qword_27E537CC8 != -1)
        {
          swift_once();
        }

        v39 = sub_241352FFC();
        __swift_project_value_buffer(v39, qword_27E53A4C0);
        v40 = sub_241352FDC();
        v41 = sub_2413540DC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v79[0] = v43;
          *v42 = v61;
          v44 = v62;
          sub_241246210(v73, v62, &qword_27E538940);
          v45 = v72;
          result = v37(v44, 1, v72);
          if (result == 1)
          {
            goto LABEL_50;
          }

          v46 = AnchoringComponent.Target.arql_description.getter();
          v48 = v47;
          (*v58)(v44, v45);
          v49 = sub_2412DDC2C(v46, v48, v79);

          *(v42 + 4) = v49;
          _os_log_impl(&dword_241215000, v40, v41, "Found first anchor type: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x245CE4870](v43, -1, -1);
          MEMORY[0x245CE4870](v42, -1, -1);

          v4 = v59;
          v8 = v60;
        }

        else
        {
        }
      }

      (*v67)(v8, 1, 1, v12);
      v50 = sub_241352A7C();
      sub_241352ACC();
      v50(v79, 0);
      if (qword_27E537CC8 != -1)
      {
        swift_once();
      }

      v51 = sub_241352FFC();
      __swift_project_value_buffer(v51, qword_27E53A4C0);
      v52 = sub_241352FDC();
      v53 = sub_2413540DC();
      v54 = os_log_type_enabled(v52, v53);
      v24 = v72;
      if (v54)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_241215000, v52, v53, "Removed anchoring component", v55, 2u);
        MEMORY[0x245CE4870](v55, -1, -1);
      }

      (*v66)(v78, v12);
      v10 = v68;
    }

    sub_241352C5C();
    sub_2413518AC();
    sub_241281024(v4);

    inited = v80;
    if (v80 >> 62)
    {
      result = sub_2413544EC();
      if (result <= 0)
      {
LABEL_42:

        v56 = v73;
        sub_241246210(v73, v57, &qword_27E538940);
        return sub_241246278(v56, &qword_27E538940);
      }
    }

    else
    {
      result = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result <= 0)
      {
        goto LABEL_42;
      }
    }
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_241334AD4()
{
  v2 = v0;
  v117 = sub_24135164C();
  v97 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v96 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2413539FC();
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241353ABC();
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_27E537CC8 != -1)
  {
    swift_once();
  }

  v7 = sub_241352FFC();
  __swift_project_value_buffer(v7, qword_27E53A4C0);
  v8 = sub_241352FDC();
  v9 = sub_2413540DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v2;
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_241215000, v8, v9, "preImportCallbackCalled called", v11, 2u);
    v12 = v11;
    v2 = v10;
    MEMORY[0x245CE4870](v12, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_wasPreImportCallbackCalled) = 1;
  sub_241353A8C();
  MEMORY[0x245CE1E80](0xD000000000000031, 0x800000024135EEA0);
  LOBYTE(v112) = 0;
  sub_241353B0C();

  v13 = *(v2 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_options);
  *&v14 = *(v2 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_options + 8);
  v98 = v14;
  v15 = sub_241352FDC();
  v16 = sub_2413540DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v2;
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = v13;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v98;
    _os_log_impl(&dword_241215000, v15, v16, "Using texture downsampling config: %ldB memory, %d size", v18, 0x12u);
    v19 = v18;
    v2 = v17;
    MEMORY[0x245CE4870](v19, -1, -1);
  }

  sub_2412705A0(v13, *&v98);
  if (v1)
  {
    v23 = v1;
    v24 = sub_241352FDC();
    v25 = sub_2413540BC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_241215000, v24, v25, "HI error: %@", v26, 0xCu);
      sub_241246278(v27, &unk_27E539B90);
      MEMORY[0x245CE4870](v27, -1, -1);
      MEMORY[0x245CE4870](v26, -1, -1);
    }

    return swift_willThrow();
  }

  *(&v113 + 1) = &type metadata for AssetMemoryEstimate;
  *&v114 = &off_285303BD0;
  *&v112 = v20;
  *(&v112 + 1) = v21;
  *&v113 = v22;
  sub_241258074(&v112, v116);
  sub_24127C104(v116, &v112);
  v31 = sub_241352FDC();
  v32 = sub_2413540DC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    v34 = v2;
    v35 = *__swift_project_boxed_opaque_existential_1(&v112, *(&v113 + 1)) / 0x100000;
    __swift_destroy_boxed_opaque_existential_0(&v112);
    *(v33 + 4) = v35;
    v2 = v34;
    _os_log_impl(&dword_241215000, v31, v32, "Estimated texture: %ldMB", v33, 0xCu);
    MEMORY[0x245CE4870](v33, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v112);
  }

  if (qword_27E537B78 != -1)
  {
    swift_once();
  }

  v37 = qword_27E538EF0;
  v36 = *algn_27E538EF8;
  v38 = dword_27E538F00 | (BYTE1(dword_27E538F00) << 8);

  v39 = sub_2412433F4(v37, v36, v38);

  v40 = sub_241352FDC();
  v41 = sub_2413540DC();
  v42 = os_log_type_enabled(v40, v41);
  if ((v39 & 1) == 0)
  {
    if (v42)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_241215000, v40, v41, "Jetsam protector disabled", v54, 2u);
      MEMORY[0x245CE4870](v54, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A518);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_241365EA0;
    sub_24127C104(v116, v55 + 32);
    goto LABEL_26;
  }

  if (v42)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_241215000, v40, v41, "Jetsam protector enabled", v43, 2u);
    MEMORY[0x245CE4870](v43, -1, -1);
  }

  v44 = sub_24135142C();
  v45 = v93;
  sub_241260940(v44, v46, v93);

  v47 = sub_2413539EC();
  *&v98 = sub_24135398C();
  v92 = sub_2413539AC();
  v91 = sub_24135399C();
  v48 = sub_2413539CC();
  (*(v94 + 8))(v45, v95);

  v49 = sub_241352FDC();
  v50 = sub_2413540DC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v95 = v47;
    v52 = v51;
    *v51 = 134217984;
    *(v51 + 4) = v48 / 0x100000;

    _os_log_impl(&dword_241215000, v49, v50, "Estimated mesh: %ldMB", v52, 0xCu);
    v53 = v52;
    v47 = v95;
    MEMORY[0x245CE4870](v53, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A518);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_241366530;
  sub_24127C104(v116, v55 + 32);
  *(v55 + 96) = &type metadata for ARQLMeshAssetEstimate;
  *(v55 + 104) = &off_285303BB8;
  v56 = swift_allocObject();
  *(v55 + 72) = v56;
  v57 = v98;
  v56[2] = v47;
  v56[3] = v57;
  v58 = v91;
  v56[4] = v92;
  v56[5] = v58;
  v56[6] = v48;
  v56[7] = 1752393037;
  v56[8] = 0xE400000000000000;

  v60 = sub_2413367B4(v59);

  if (v60)
  {
LABEL_26:
    v61 = v96;
    sub_24135163C();
    v62 = sub_2413515FC();
    v64 = v63;
    (*(v97 + 8))(v61, v117);
    v65 = *(v2 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_fileType);
    *&v112 = v62;
    *(&v112 + 1) = v64;
    LOBYTE(v113) = v65;
    *(&v113 + 1) = 514;
    *(&v113 + 1) = -1;
    *&v114 = v55;
    *(&v114 + 1) = 0x656E6961746E6F43;
    v115 = 0xE900000000000072;
    sub_241353A8C();
    sub_241263F88(&v112);

    v66 = objc_opt_self();
    if ([v66 overridePreferredIblVersionKey])
    {
      *(&v113 + 1) = [v66 overridePreferredIblVersionKey];
    }

    v67 = sub_241352FDC();
    v68 = sub_2413540DC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v99[0] = v70;
      *v69 = 136315138;
      swift_beginAccess();
      v104 = v112;
      v105 = v113;
      v106 = v114;
      v107 = v115;
      v100 = v112;
      v101 = v113;
      v102 = v114;
      v103 = v115;
      sub_241255B50(&v104, &v108);
      v71 = AssetLoader.FileMetadata.description.getter();
      v73 = v72;
      v108 = v100;
      v109 = v101;
      v110 = v102;
      v111 = v103;
      sub_241244AE8(&v108);
      v74 = sub_2412DDC2C(v71, v73, v99);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_241215000, v67, v68, "Updated metadata: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x245CE4870](v70, -1, -1);
      MEMORY[0x245CE4870](v69, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v116);
    swift_beginAccess();
    v75 = v113;
    v100 = v112;
    v101 = v113;
    v76 = v114;
    v102 = v114;
    v77 = v115;
    v103 = v115;
    v78 = v2 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata;
    v79 = *(v2 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata + 16);
    v104 = *(v2 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata);
    v105 = v79;
    v106 = *(v2 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata + 32);
    v107 = *(v2 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_metadata + 48);
    *v78 = v112;
    *(v78 + 16) = v75;
    *(v78 + 32) = v76;
    *(v78 + 48) = v77;
    sub_241255B50(&v100, &v108);
    sub_241244AE8(&v104);
    v108 = v112;
    v109 = v113;
    v110 = v114;
    v111 = v115;
    return sub_241244AE8(&v108);
  }

  v80 = sub_241352FDC();
  v81 = sub_2413540BC();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v112 = v83;
    *v82 = 136315138;

    v85 = sub_24130C0C8(v84);
    v87 = v86;

    v88 = sub_2412DDC2C(v85, v87, &v112);

    *(v82 + 4) = v88;
    _os_log_impl(&dword_241215000, v80, v81, "Cannot support loading asset with mesh estimate: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);
    MEMORY[0x245CE4870](v83, -1, -1);
    MEMORY[0x245CE4870](v82, -1, -1);
  }

  sub_241255C30();
  swift_allocError();
  *v89 = v55;
  *(v89 + 8) = xmmword_24136AD00;
  *(v89 + 24) = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(v116);
}

uint64_t sub_241335780()
{
  v1 = OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_url;
  v2 = sub_24135152C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_241246278(v0 + OBJC_IVAR____TtC11AssetViewer19VariantsServiceImpl_configurator, &qword_27E53A528);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VariantsServiceImpl()
{
  result = qword_27E53A500;
  if (!qword_27E53A500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2413358C4()
{
  sub_24135152C();
  if (v0 <= 0x3F)
  {
    sub_2413359B4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2413359B4()
{
  if (!qword_27E53A510)
  {
    sub_241352A5C();
    v0 = sub_24135432C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E53A510);
    }
  }
}

uint64_t sub_241335A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241352B6C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = sub_2413517DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < a2)
  {
    return 0;
  }

  v19 = a2;
  if (!sub_24135219C() || (v18 = sub_24135218C(), , sub_24135296C(), sub_2413516FC(), (*(v11 + 8))(v13, v10), !REEntityGetCustomComponent()))
  {
    sub_241352C5C();
    sub_2413518AC();
    sub_241352B2C();
    v14 = v19 + 1;
    v15 = __OFADD__(v19, 1);
    while (1)
    {
      result = sub_241352B3C();
      if (!v21)
      {
        break;
      }

      if (v15)
      {
        __break(1u);
        return result;
      }

      v17 = sub_241335A0C(v21, v14, a3);

      if (v17)
      {
        (*(v20 + 8))(v9, v7);
        return v17;
      }
    }

    (*(v20 + 8))(v9, v7);
    if (v19)
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sub_241335CE4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2412ED834(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_241335D50(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_241335D50(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24135490C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_241353E5C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_241335F38(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_241335E48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_241335E48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 40 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_24135497C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 40;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      v16 = *(v12 + 32);
      result = *(v12 + 40);
      *(v12 + 40) = *v12;
      v17 = *(v12 + 64);
      v18 = *(v12 + 72);
      *(v12 + 56) = v15;
      *(v12 + 72) = v16;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      *(v12 + 24) = v17;
      *(v12 + 32) = v18;
      v12 -= 40;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_241335F38(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v107 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v107 = *v107;
    if (!v107)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_2412ED820(v8);
      v8 = result;
    }

    v98 = v8 + 16;
    v99 = *(v8 + 2);
    if (v99 >= 2)
    {
      while (1)
      {
        v100 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v101 = &v8[16 * v99];
        v5 = *v101;
        v102 = &v98[2 * v99];
        v103 = v102[1];
        sub_241336554((v100 + 40 * *v101), (v100 + 40 * *v102), v100 + 40 * v103, v107);
        if (v4)
        {
        }

        if (v103 < v5)
        {
          goto LABEL_129;
        }

        if (v99 - 2 >= *v98)
        {
          goto LABEL_130;
        }

        *v101 = v5;
        *(v101 + 1) = v103;
        v104 = *v98 - v99;
        if (*v98 < v99)
        {
          goto LABEL_131;
        }

        v99 = *v98 - 1;
        result = memmove(v102, v102 + 2, 16 * v104);
        *v98 = v99;
        v5 = a3;
        if (v99 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 40 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 40 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_24135497C();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 40 * v9 + 48);
        v17 = v16;
        do
        {
          result = v16[4];
          v19 = v17[5];
          v17 += 5;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24135497C();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 40 * v7 - 16;
          v22 = 40 * v9 + 32;
          v23 = v7;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v33 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v33 + v22);
              v26 = *(v33 + v22 - 32);
              v27 = (v33 + v21);
              v28 = *(v25 - 1);
              v29 = *v25;
              v30 = *(v25 - 3);
              v31 = v27[1];
              v32 = *(v27 - 1);
              *(v25 - 2) = *(v27 - 3);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v27 - 3) = v26;
              *(v27 - 1) = v30;
              *v27 = v28;
              v27[1] = v29;
            }

            ++v24;
            v21 -= 40;
            v22 += 40;
          }

          while (v24 < v23);
        }
      }
    }

    v34 = v5[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v34)
        {
          v35 = v5[1];
        }

        else
        {
          v35 = v9 + a4;
        }

        if (v35 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v35)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2412A1444(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      result = sub_2412A1444((v51 > 1), v52 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v53;
    v54 = &v8[16 * v52];
    *(v54 + 4) = v9;
    *(v54 + 5) = v7;
    v55 = *v107;
    if (!*v107)
    {
      goto LABEL_142;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v8 + 4);
          v58 = *(v8 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_74:
          if (v60)
          {
            goto LABEL_120;
          }

          v73 = &v8[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_123;
          }

          v79 = &v8[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_127;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v83 = &v8[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_88:
        if (v78)
        {
          goto LABEL_122;
        }

        v86 = &v8[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_125;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_95:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v95 = *&v8[16 * v94 + 32];
        v96 = *&v8[16 * v56 + 40];
        sub_241336554((*v5 + 40 * v95), (*v5 + 40 * *&v8[16 * v56 + 32]), *v5 + 40 * v96, v55);
        if (v4)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2412ED820(v8);
        }

        if (v94 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v97 = &v8[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        result = sub_2412ED794(v56);
        v53 = *(v8 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v8[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_118;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_119;
      }

      v68 = &v8[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_121;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_124;
      }

      if (v72 >= v64)
      {
        v90 = &v8[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_128;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v36 = *v5;
  v37 = *v5 + 40 * v7 - 40;
  v105 = v9;
  v38 = v9 - v7;
LABEL_43:
  v39 = (v36 + 40 * v7);
  v40 = *v39;
  v41 = v39[1];
  v42 = v38;
  v43 = v37;
  while (1)
  {
    v44 = v40 == *v43 && v41 == *(v43 + 8);
    if (v44 || (result = sub_24135497C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v37 += 40;
      --v38;
      if (v7 != v35)
      {
        goto LABEL_43;
      }

      v7 = v35;
      v5 = a3;
      v9 = v105;
      goto LABEL_54;
    }

    if (!v36)
    {
      break;
    }

    v45 = *(v43 + 48);
    v46 = *(v43 + 16);
    v47 = *(v43 + 32);
    v40 = *(v43 + 40);
    *(v43 + 40) = *v43;
    v48 = *(v43 + 64);
    v49 = *(v43 + 72);
    *(v43 + 56) = v46;
    *(v43 + 72) = v47;
    *v43 = v40;
    *(v43 + 8) = v45;
    v41 = v45;
    *(v43 + 24) = v48;
    *(v43 + 32) = v49;
    v43 -= 40;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_241336554(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_24135497C() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v16 = v7 == v4;
      v4 += 40;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v16 = v7 == v6;
    v6 += 40;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 40;
    v5 -= 40;
    v18 = v12;
    do
    {
      v19 = *(v18 - 40);
      v20 = *(v18 - 32);
      v18 -= 40;
      v21 = v19 == *(v6 - 5) && v20 == *(v6 - 4);
      if (!v21 && (sub_24135497C() & 1) != 0)
      {
        if ((v5 + 40) != v6)
        {
          v24 = *v17;
          v25 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v24;
          *(v5 + 16) = v25;
        }

        if (v12 <= v4 || (v6 -= 40, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 40) != v12)
      {
        v22 = *v18;
        v23 = *(v18 + 16);
        *(v5 + 32) = *(v18 + 32);
        *v5 = v22;
        *(v5 + 16) = v23;
      }

      v5 -= 40;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v26 = (v12 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v26])
  {
    memmove(v6, v4, 40 * v26);
  }

  return 1;
}

BOOL sub_2413367B4(void *a1)
{
  if (qword_27E537C68 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v2 = sub_24130C2C4();
    v3 = a1[2];
    if (!v3)
    {
      break;
    }

    v4 = 0;
    v5 = (a1 + 4);
    while (1)
    {
      sub_24127C104(v5, &v35);
      v6 = *(&v36 + 1);
      v7 = v37;
      a1 = __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      v8 = (*(v7 + 8))(v6, v7);
      v9 = __OFADD__(v4, v8);
      v4 += v8;
      if (v9)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(&v35);
      v5 += 40;
      if (!--v3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  v4 = 0;
LABEL_8:
  if (qword_27E537B88 != -1)
  {
    swift_once();
  }

  v37 = xmmword_27E538F70;
  v38 = *&byte_27E538F80;
  v39 = byte_27E538F90;
  v35 = xmmword_27E538F50;
  v36 = xmmword_27E538F60;
  sub_241246210(&v35, v33, &qword_27E5380C0);
  v10 = sub_241244570();
  sub_241246278(&v35, &qword_27E5380C0);
  v9 = __OFADD__(v4, v10);
  v11 = v4 + v10;
  if (v9)
  {
    __break(1u);
  }

  else if (qword_27E537B90 == -1)
  {
    goto LABEL_12;
  }

  swift_once();
LABEL_12:
  v33[2] = xmmword_27E538FB8;
  v33[3] = *&byte_27E538FC8;
  v34 = byte_27E538FD8;
  v33[0] = xmmword_27E538F98;
  v33[1] = xmmword_27E538FA8;
  sub_241246210(v33, v31, &qword_27E5380C0);
  v12 = sub_241244570();
  sub_241246278(v33, &qword_27E5380C0);
  v13 = v11 * v12;
  if ((v11 * v12) >> 64 == (v11 * v12) >> 63)
  {
    if (qword_27E537B98 == -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_14:
  v31[2] = xmmword_27E539000;
  v31[3] = *&byte_27E539010;
  v32 = byte_27E539020;
  v31[0] = xmmword_27E538FE0;
  v31[1] = xmmword_27E538FF0;
  sub_241246210(v31, v29, &qword_27E5380C0);
  v14 = sub_241244570();
  sub_241246278(v31, &qword_27E5380C0);
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
  }

  else if (qword_27E537C58 == -1)
  {
    goto LABEL_16;
  }

  swift_once();
LABEL_16:
  v16 = sub_241352FFC();
  __swift_project_value_buffer(v16, qword_27E539EB0);
  v17 = sub_241352FDC();
  v18 = sub_2413540AC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    v29[2] = xmmword_27E538F70;
    v29[3] = *&byte_27E538F80;
    v30 = byte_27E538F90;
    v29[0] = xmmword_27E538F50;
    v29[1] = xmmword_27E538F60;
    sub_241246210(v29, v27, &qword_27E5380C0);
    v20 = sub_241244570();
    sub_241246278(v29, &qword_27E5380C0);
    *(v19 + 4) = v20;
    *(v19 + 12) = 2048;
    v27[2] = xmmword_27E538FB8;
    v27[3] = *&byte_27E538FC8;
    v28 = byte_27E538FD8;
    v27[0] = xmmword_27E538F98;
    v27[1] = xmmword_27E538FA8;
    sub_241246210(v27, v26, &qword_27E5380C0);
    v21 = sub_241244570();
    sub_241246278(v27, &qword_27E5380C0);
    *(v19 + 14) = v21;
    _os_log_impl(&dword_241215000, v17, v18, "SharedUserDefaults.model3DPerFileOverheadBufferInBytes: %ld,\n SharedUserDefaults.model3DPerFileMemoryEstimateMultiplier: %ld", v19, 0x16u);
    MEMORY[0x245CE4870](v19, -1, -1);
  }

  v22 = sub_241352FDC();
  v23 = sub_2413540DC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134219008;
    *(v24 + 4) = v2;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v2 / 0x100000;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v15;
    *(v24 + 32) = 2048;
    *(v24 + 34) = v15 / 0x100000;
    *(v24 + 42) = 1024;
    *(v24 + 44) = v2 >= v15;
    MEMORY[0x245CE4870](v24, -1, -1);
  }

  return v2 >= v15;
}

uint64_t sub_241336CB4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24135497C() & 1;
  }
}

uint64_t sub_241336D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241336D70()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E53A538);
  __swift_project_value_buffer(v0, qword_27E53A538);
  return sub_241352FEC();
}

uint64_t asvLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  v3 = __swift_project_value_buffer(v2, qword_27E53A538);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

dispatch_semaphore_t sub_241336E88()
{
  result = dispatch_semaphore_create(1);
  qword_27E53A550 = result;
  return result;
}

void sub_241336ED0()
{
  v0 = sub_2413515EC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - v5;
  if (qword_27E537CD8 != -1)
  {
    swift_once();
  }

  v7 = qword_27E53A550;
  sub_2413541CC();

  if (__OFSUB__(qword_27E5419A8, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_27E5419A8;
    if (qword_27E537CD0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v8 = sub_241352FFC();
  v42 = __swift_project_value_buffer(v8, qword_27E53A538);
  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = qword_27E5419A8;
    _os_log_impl(&dword_241215000, v9, v10, "Decrementing - Shared engine counter now %ld", v11, 0xCu);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  if (!qword_27E5419A8)
  {
    v12 = sub_241352FDC();
    v13 = sub_2413540DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_241215000, v12, v13, "Deleting shared engine", v14, 2u);
      MEMORY[0x245CE4870](v14, -1, -1);
    }

    sub_241353A9C();
    if (sub_24135396C() >= 1)
    {
      v16 = (v1 + 8);
      v17 = 11;
      *&v15 = 67109120;
      v41 = v15;
      while (1)
      {
        v18 = sub_241352FDC();
        v19 = sub_2413540BC();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = v41;
          *(v20 + 4) = sub_24135396C();
          _os_log_impl(&dword_241215000, v18, v19, "ImportSessions count is still %d > 0", v20, 8u);
          MEMORY[0x245CE4870](v20, -1, -1);
        }

        if (--v17 <= 1)
        {
          break;
        }

        v21 = [objc_opt_self() currentRunLoop];
        sub_2413515CC();
        sub_24135158C();
        v22 = *v16;
        (*v16)(v4, v0);
        v23 = sub_24135159C();
        v22(v6, v0);
        [v21 runUntilDate_];

        if (sub_24135396C() <= 0)
        {
          goto LABEL_20;
        }
      }

      v24 = sub_241352FDC();
      v25 = sub_2413540BC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_241215000, v24, v25, "ImportSessions failed to terminate normally after 1 second", v26, 2u);
        MEMORY[0x245CE4870](v26, -1, -1);
      }
    }

LABEL_20:
    sub_241351CEC();
    sub_241351CDC();
    sub_241351CCC();

    sub_241352D7C();

    v28 = MEMORY[0x245CE3D50](v27);
    sub_241351CDC();
    sub_241351C7C();

    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v29 = sub_241351B1C();
    MEMORY[0x28223BE20](v29);
    *(&v41 - 2) = v43;
    sub_24128792C(sub_241337A5C, (&v41 - 2), v29);

    __swift_destroy_boxed_opaque_existential_0(v43);
    objc_autoreleasePoolPop(v28);
    v30 = MEMORY[0x245CE3D50]();
    sub_241352C5C();
    sub_241352BFC();
    MEMORY[0x245CE0060](0);
    sub_241352DAC();
    sub_241352D3C();
    sub_241352D5C();
    objc_autoreleasePoolPop(v30);
    v31 = sub_241352FDC();
    v32 = sub_2413540DC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_241215000, v31, v32, "Before deinit RIOImportSession", v33, 2u);
      MEMORY[0x245CE4870](v33, -1, -1);
    }

    MEMORY[0x245CE3BC0]();
    v34 = sub_241352FDC();
    v35 = sub_2413540DC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_241215000, v34, v35, "Before shutting down", v36, 2u);
      MEMORY[0x245CE4870](v36, -1, -1);
    }

    MEMORY[0x245CE3CB0]();
    v37 = sub_241352FDC();
    v38 = sub_2413540DC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_241215000, v37, v38, "Deleted shared engine", v39, 2u);
      MEMORY[0x245CE4870](v39, -1, -1);
    }
  }

  v40 = qword_27E53A550;
  sub_2413541DC();
}

void sub_2413375C8()
{
  if (qword_27E537CD8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E53A550;
  sub_2413541CC();

  if (__OFADD__(qword_27E5419A8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_27E5419A8;
    if (qword_27E537CD0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v1 = sub_241352FFC();
  __swift_project_value_buffer(v1, qword_27E53A538);
  v2 = sub_241352FDC();
  v3 = sub_2413540DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = qword_27E5419A8;
    _os_log_impl(&dword_241215000, v2, v3, "Incrementing - Shared engine counter now %ld", v4, 0xCu);
    MEMORY[0x245CE4870](v4, -1, -1);
  }

  v5 = qword_27E53A550;
  sub_2413541DC();
}

void sub_241337748()
{
  if (qword_27E537CD8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E53A550;
  sub_2413541CC();

  sub_241351CEC();
  if (sub_241351C9C())
  {

    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v1 = sub_241352FFC();
    __swift_project_value_buffer(v1, qword_27E53A538);
    v2 = sub_241352FDC();
    v3 = sub_2413540DC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_241215000, v2, v3, "Creating shared engine", v4, 2u);
      MEMORY[0x245CE4870](v4, -1, -1);
    }
  }

  MEMORY[0x245CE3CC0](0);
  sub_241351CBC();
  sub_241352DAC();
  sub_241352D2C();
  sub_241352D4C();
  sub_241351CBC();
  sub_241351CDC();
  sub_241351CCC();

  sub_241352D8C();

  if (__OFADD__(qword_27E5419A8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_27E5419A8;
    if (qword_27E537CD0 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v5 = sub_241352FFC();
  __swift_project_value_buffer(v5, qword_27E53A538);
  v6 = sub_241352FDC();
  v7 = sub_2413540DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = qword_27E5419A8;
    _os_log_impl(&dword_241215000, v6, v7, "Shared engine counter now %ld", v8, 0xCu);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  v9 = qword_27E53A550;
  sub_2413541DC();
}

void sub_241337AB8(char a1, char a2)
{
  v3 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  if (!*(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController))
  {
    __break(1u);
    goto LABEL_19;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24135316C();

  if (v18 <= 0.0)
  {
    return;
  }

  if (a2)
  {
    v6 = *(v2 + v3);
    if (!v6)
    {
LABEL_20:
      __break(1u);
      return;
    }

    if (*(*(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState) == 1)
    {
      v7 = *(*(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_playbackViewController) + OBJC_IVAR____TtC11AssetViewer30PlaybackControlsViewController_scrubberView);
      v9 = *&v7[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 8];
      v8 = *&v7[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 16];
      v10 = v9 + 2.22044605e-16;
      v11 = v9 + 1.11022302e-15;
      v12 = v10 <= 0.0 || v8 > v11;
      if (!v12 && v8 + 2.22044605e-16 >= 0.0)
      {
        v13 = v2;
        v14 = v7;
        if (a1)
        {
          sub_241281CD4(v15, v16, v17);
        }

        else
        {
          sub_241281E54();
        }

        v2 = v13;
      }
    }
  }

  if (!*(v2 + v3))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_24134950C(a1 & 1);
}

void sub_241337C60(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  if (a2 - 2 >= 2)
  {
    if (!a2)
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v11 = sub_241352FFC();
      __swift_project_value_buffer(v11, qword_27E53A538);
      v12 = sub_241352FDC();
      v13 = sub_2413540DC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_241215000, v12, v13, "[Animation] Play pressed", v14, 2u);
        MEMORY[0x245CE4870](v14, -1, -1);
      }

      sub_241337AB8(1, 1);
      if (!*(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController))
      {
        goto LABEL_27;
      }

      v15 = *&a1[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime];

      sub_241349784(v15);

      v16 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesPlayPauseButtonPressed;
      v17 = *(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesPlayPauseButtonPressed);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v20 = sub_241352FFC();
    __swift_project_value_buffer(v20, qword_27E53A538);
    v21 = sub_241352FDC();
    v22 = sub_2413540DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_241215000, v21, v22, "[Animation] Pause pressed", v23, 2u);
      MEMORY[0x245CE4870](v23, -1, -1);
    }

    sub_241337AB8(0, 1);
    v16 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesPlayPauseButtonPressed;
    v24 = *(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesPlayPauseButtonPressed);
    v18 = __OFADD__(v24, 1);
    v19 = v24 + 1;
    if (v18)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

LABEL_24:
    *(v3 + v16) = v19;
    return;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v5 = sub_241352FFC();
  __swift_project_value_buffer(v5, qword_27E53A538);
  v6 = a1;
  v7 = sub_241352FDC();
  v8 = sub_2413540DC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *&v6[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime];
    _os_log_impl(&dword_241215000, v7, v8, "[Animation] skipToTime: %f", v9, 0xCu);
    MEMORY[0x245CE4870](v9, -1, -1);
  }

  sub_241337AB8(*&v6[OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24] > 0.0, 0);
  if (!*(v3 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController))
  {
    goto LABEL_26;
  }

  v10 = *&v6[OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime];

  sub_241349784(v10);
}

void sub_241338038(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v4 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController);
  v7 = a1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime;
  v8 = *(a1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime);
  v9 = OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_audioPlaybackStates;
  swift_beginAccess();
  v10 = *(v6 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = (v10 + 40);
    do
    {
      MEMORY[0x245CE3490](*(v12 - 1), *v12, v8);
      v12 += 3;
      --v11;
    }

    while (v11);
  }

  if (*(a1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing + 24) <= 0.0)
  {
    goto LABEL_14;
  }

  if (*(v7 + 8) <= 0.0)
  {
    v13 = *(v2 + v3);
    if (v13)
    {
      if (*(*(v13 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState + 2) != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_10:
  if (qword_27E537CD0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v14 = sub_241352FFC();
    __swift_project_value_buffer(v14, qword_27E53A538);
    v15 = sub_241352FDC();
    v16 = sub_2413540DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_241215000, v15, v16, "[Scrubber] Setting playback state to play", v17, 2u);
      MEMORY[0x245CE4870](v17, -1, -1);
    }

    sub_241337AB8(1, 1);
LABEL_14:
    v18 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnimationScrubbed);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (!v19)
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsTimesAnimationScrubbed) = v20;
}

void sub_241338268(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (v2)
  {
    if (*(*(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState + 2) == 1)
    {
      v3 = *(a1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime);
      v4 = v3 + *(a1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_currentTime + 8);
      v5 = (a1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
      v6 = *(a1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
      if (v4 <= v3)
      {
        v18 = *(v5 + 3);
        v19 = *(v5 + 4);
        LOBYTE(v51) = *(a1 + OBJC_IVAR____TtC11AssetViewer12ScrubberView_timing);
        v21 = *(v5 + 1);
        v20 = *(v5 + 2);
        *(&v51 + 1) = v4;
        *&v52 = v20;
        *(&v52 + 1) = v18;
        v53 = v19;
        v50[0] = v6;
        *&v50[8] = v21;
        *&v50[16] = v20;
        *&v50[24] = v18;
        *&v50[32] = v19;
        v22 = v52;
        *v5 = v51;
        *(v5 + 1) = v22;
        *(v5 + 4) = v53;
        if (v4 != v21)
        {
          sub_241283228(v50, &v51);
        }

        v23 = *v5;
        v25.f64[0] = *(v5 + 1);
        v24 = *(v5 + 2);
        v27 = *(v5 + 3);
        Current = *(v5 + 4);
        if (v27 != 1.0)
        {
          v37 = *(v5 + 1);
          v40 = v24 + v27 * (CFAbsoluteTimeGetCurrent() - Current);
          CFAbsoluteTimeGetCurrent();
          Current = CFAbsoluteTimeGetCurrent();
          v25.f64[0] = v37;
          v24 = v40;
        }

        LOBYTE(v47) = v23;
        *(&v47 + 1) = *&v25.f64[0];
        *&v48 = v24;
        *(&v48 + 1) = 0x3FF0000000000000;
        v49 = Current;
        *&v46[32] = *(v5 + 4);
        v28 = *(v5 + 1);
        *v46 = *v5;
        *&v46[16] = v28;
        v29 = v48;
        *v5 = v47;
        *(v5 + 1) = v29;
        *(v5 + 4) = v49;
        v25.f64[1] = v24;
        __asm { FMOV            V2.2D, #1.0 }

        _Q2.f64[1] = Current;
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v25, *&v46[8]), vceqq_f64(_Q2, *&v46[24])))) & 1) == 0 || ((v23 ^ v46[0]))
        {
          sub_241283228(v46, &v47);
        }

        v31 = *v5;
        v38 = *(v5 + 1);
        v41 = *(v5 + 3);
        v32 = CFAbsoluteTimeGetCurrent();
        LOBYTE(v43) = v31;
        v33.f64[0] = v41;
        *(&v43 + 1) = v38;
        *&v44 = 0;
        *(&v44 + 1) = v41;
        v45 = v32;
        *&v42[32] = *(v5 + 4);
        v34 = *(v5 + 1);
        *v42 = *v5;
        *&v42[16] = v34;
        v35 = v44;
        *v5 = v43;
        *(v5 + 1) = v35;
        *(v5 + 4) = v45;
        v33.f64[1] = v32;
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v38, *&v42[8]), vceqq_f64(v33, *&v42[24])))) & 1) == 0 || ((v31 ^ v42[0]))
        {
          sub_241283228(v42, &v43);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_2413385F4(0.0);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v8.f64[0] = *(v5 + 1);
        v7 = *(v5 + 2);
        v10 = *(v5 + 3);
        v9 = *(v5 + 4);
        if (v10 != 1.0)
        {
          v36 = *(v5 + 1);
          v39 = v7 + v10 * (CFAbsoluteTimeGetCurrent() - v9);
          CFAbsoluteTimeGetCurrent();
          v9 = CFAbsoluteTimeGetCurrent();
          v8.f64[0] = v36;
          v7 = v39;
        }

        LOBYTE(v51) = v6;
        *(&v51 + 1) = *&v8.f64[0];
        *&v52 = v7;
        *(&v52 + 1) = 0x3FF0000000000000;
        v53 = v9;
        *&v50[32] = *(v5 + 4);
        v11 = *(v5 + 1);
        *v50 = *v5;
        *&v50[16] = v11;
        v12 = v52;
        *v5 = v51;
        *(v5 + 1) = v12;
        *(v5 + 4) = v53;
        v8.f64[1] = v7;
        __asm { FMOV            V2.2D, #1.0 }

        _Q2.f64[1] = v9;
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, *&v50[8]), vceqq_f64(_Q2, *&v50[24])))) & 1) == 0 || ((v6 ^ v50[0]))
        {
          sub_241283228(v50, &v51);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2413385F4(double a1)
{
  v2 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v3 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController) + OBJC_IVAR____TtC11AssetViewer24ModelAnimationController_animationState;
  if (*(v5 + 8) == a1)
  {
    return;
  }

  v6 = v1;
  *(v5 + 8) = a1;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v7 = sub_241352FFC();
  __swift_project_value_buffer(v7, qword_27E53A538);
  v8 = sub_241352FDC();
  v9 = sub_2413540DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&dword_241215000, v8, v9, "[Animation] didScrubToTime: %f", v10, 0xCu);
    MEMORY[0x245CE4870](v10, -1, -1);
  }

  if (!*(v6 + v2))
  {
    goto LABEL_12;
  }

  sub_241349784(a1);
}

uint64_t (*sub_241338788(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_24133A404(v4, a2);
  return sub_241338800;
}

uint64_t (*sub_241338804(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_24133A4AC(v4, a2);
  return sub_24133AFB4;
}

void sub_24133887C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_241338918()
{
  swift_beginAccess();

  v1 = sub_24133A9FC(v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388D0);
  result = sub_24135480C();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v1[8];
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(v1[6] + 8 * v13);
      result = *(v1[7] + 16 * v13 + 8);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v3[6] + 8 * v13) = v14;
      *(v3[7] + 8 * v13) = result;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        break;
      }

      v3[2] = v17;
      result = swift_unknownObjectRetain();
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        return v3;
      }

      v12 = v1[v4 + 8];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_241338A98()
{
  v1 = *(v0 + 16);
  if (v1 < 3)
  {
    *(v0 + 16) = v1 + 1;
    return;
  }

  *(v0 + 16) = 0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 40) + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v84 = *(v0 + 40);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v12 = MEMORY[0x277D84F98];
  v81 = MEMORY[0x277D84F98];
  v83 = MEMORY[0x277D84F98];
  while (v8)
  {
    v86 = v12;
LABEL_14:
    v14 = __clz(__rbit64(v8)) | (v10 << 6);
    v15 = *(*(v84 + 48) + 8 * v14);
    v16 = (*(v84 + 56) + 16 * v14);
    v17 = *v16;
    v18 = *(v16 + 1);
    swift_unknownObjectRetain();
    v19 = RECheckEntityInsideCustomMatrixCameraFrustumAnyViewWithCustomViewport();
    v85 = v19;
    if (v17 == 1)
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = v18;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88[0] = v11;
      v23 = sub_2412FDB74(v15);
      v24 = *(v11 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_82;
      }

      if (*(v11 + 24) >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v28 = v11;
          if ((v22 & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_29;
        }

        v77 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388D0);
        v40 = sub_24135480C();
        v28 = v40;
        if (*(v11 + 16))
        {
          v41 = (v40 + 64);
          v42 = (v11 + 64);
          v43 = ((1 << *(v28 + 32)) + 63) >> 6;
          if (v28 != v11 || v41 >= &v42[8 * v43])
          {
            memmove(v41, v42, 8 * v43);
          }

          v44 = 0;
          *(v28 + 16) = *(v11 + 16);
          v45 = 1 << *(v11 + 32);
          if (v45 < 64)
          {
            v46 = ~(-1 << v45);
          }

          else
          {
            v46 = -1;
          }

          v47 = v46 & *(v11 + 64);
          v48 = (v45 + 63) >> 6;
          v79 = v48;
          if (v47)
          {
            do
            {
              v49 = __clz(__rbit64(v47));
              v82 = (v47 - 1) & v47;
LABEL_48:
              v52 = v49 | (v44 << 6);
              v53 = *(*(v11 + 56) + 8 * v52);
              *(*(v28 + 48) + 8 * v52) = *(*(v11 + 48) + 8 * v52);
              *(*(v28 + 56) + 8 * v52) = v53;
              swift_unknownObjectRetain();
              v48 = v79;
              v47 = v82;
            }

            while (v82);
          }

          v50 = v44;
          while (1)
          {
            v44 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              break;
            }

            if (v44 >= v48)
            {
              goto LABEL_66;
            }

            v51 = *(v11 + 64 + 8 * v44);
            ++v50;
            if (v51)
            {
              v49 = __clz(__rbit64(v51));
              v82 = (v51 - 1) & v51;
              goto LABEL_48;
            }
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          sub_2413549DC();
          __break(1u);
          return;
        }

LABEL_66:

        if (v77)
        {
          goto LABEL_29;
        }

LABEL_67:
        *(v28 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        *(*(v28 + 48) + 8 * v23) = v15;
        *(*(v28 + 56) + 8 * v23) = v20;
        v69 = *(v28 + 16);
        v36 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v36)
        {
          goto LABEL_84;
        }

        *(v28 + 16) = v70;
      }

      else
      {
        v27 = v22;
        sub_2412A5B9C(v26, isUniquelyReferenced_nonNull_native);
        v28 = v88[0];
        v29 = sub_2412FDB74(v15);
        if ((v27 & 1) != (v30 & 1))
        {
          goto LABEL_87;
        }

        v23 = v29;
        if ((v27 & 1) == 0)
        {
          goto LABEL_67;
        }

LABEL_29:
        *(*(v28 + 56) + 8 * v23) = v20;
        swift_unknownObjectRelease();
      }

      v81 = v28;
      goto LABEL_73;
    }

    if (v19)
    {
LABEL_22:
      v28 = v11;
      goto LABEL_73;
    }

    swift_unknownObjectRetain();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v88[0] = v86;
    v32 = sub_2412FDB74(v15);
    v34 = *(v86 + 16);
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v38 = v33;
    if (*(v86 + 24) >= v37)
    {
      if ((v31 & 1) == 0)
      {
        v78 = v18;
        v80 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388D0);
        v54 = sub_24135480C();
        v83 = v54;
        if (*(v86 + 16))
        {
          v55 = (v54 + 64);
          v56 = ((1 << *(v83 + 32)) + 63) >> 6;
          if (v83 != v86 || v55 >= v86 + 64 + 8 * v56)
          {
            memmove(v55, (v86 + 64), 8 * v56);
          }

          v57 = 0;
          *(v83 + 16) = *(v86 + 16);
          v58 = 1 << *(v86 + 32);
          v59 = *(v86 + 64);
          if (v58 < 64)
          {
            v60 = ~(-1 << v58);
          }

          else
          {
            v60 = -1;
          }

          v61 = v60 & v59;
          v62 = (v58 + 63) >> 6;
          if ((v60 & v59) != 0)
          {
            do
            {
              v63 = __clz(__rbit64(v61));
              v61 &= v61 - 1;
              v64 = v63 | (v57 << 6);
              v65 = v86;
LABEL_64:
              v68 = *(*(v65 + 56) + 8 * v64);
              *(*(v83 + 48) + 8 * v64) = *(*(v65 + 48) + 8 * v64);
              *(*(v83 + 56) + 8 * v64) = v68;
              swift_unknownObjectRetain();
            }

            while (v61);
          }

          v66 = v57;
          v65 = v86;
          while (1)
          {
            v57 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
              goto LABEL_86;
            }

            if (v57 >= v62)
            {
              break;
            }

            v67 = *(v86 + 64 + 8 * v57);
            ++v66;
            if (v67)
            {
              v61 = (v67 - 1) & v67;
              v64 = __clz(__rbit64(v67)) | (v57 << 6);
              goto LABEL_64;
            }
          }
        }

        v18 = v78;
        v32 = v80;
        if (v38)
        {
LABEL_33:
          *(*(v83 + 56) + 8 * v32) = v18;
          swift_unknownObjectRelease();
          v28 = v11;
          v86 = v83;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      v83 = v86;
    }

    else
    {
      sub_2412A5B9C(v37, v31);
      v83 = v88[0];
      v32 = sub_2412FDB74(v15);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_87;
      }
    }

    if (v38)
    {
      goto LABEL_33;
    }

LABEL_71:
    *(v83 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    *(*(v83 + 48) + 8 * v32) = v15;
    *(*(v83 + 56) + 8 * v32) = v18;
    v71 = *(v83 + 16);
    v36 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v36)
    {
      goto LABEL_83;
    }

    *(v83 + 16) = v72;
    v28 = v11;
    v86 = v83;
LABEL_73:
    v73 = sub_2413388C8();
    v75 = sub_241338804(v87, v15);
    if (*(v74 + 8))
    {
      *v74 = v85 ^ 1;
    }

    (v75)(v87, 0);
    (v73)(v88, 0);
    v8 &= v8 - 1;
    swift_unknownObjectRelease();
    v11 = v28;
    v12 = v86;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v13);
    ++v10;
    if (v8)
    {
      v86 = v12;
      v10 = v13;
      goto LABEL_14;
    }
  }

  if ((*(v81 + 16) || *(v83 + 16)) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    sub_24123E374(Strong);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2413391A4()
{

  sub_24124B00C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_241339218(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24135446C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_241354ACC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_241339388(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24135446C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_241354ADC();
      MEMORY[0x245CE2EA0](v9);
      result = sub_241354B1C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_24133951C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24135446C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_2413542AC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_2413396A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24135446C() + 1) & ~v5;
    do
    {
      sub_241354ADC();
      sub_241353CCC();

      result = sub_241354B1C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2413399F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24135446C() + 1) & ~v5;
    do
    {
      sub_2412B365C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_24135454C();
      result = sub_2412AF728(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_241339B9C(int64_t a1, uint64_t a2)
{
  v38 = sub_24135152C();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_24135446C();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_24133AF00(&qword_27E538AD0, MEMORY[0x277CC9260]);
      v22 = sub_241353B8C();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}