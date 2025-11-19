uint64_t sub_2C14D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_3E6CD4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F36C8);
  v2[7] = swift_task_alloc();
  v4 = sub_3E6D44();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_2C1624, 0, 0);
}

uint64_t sub_2C1624()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_3E7114();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[2];
    sub_FCF8(v0[7], &qword_4F36C8);
    (*(v5 + 56))(v6, 1, 1, v4);
LABEL_10:

    v14 = v0[1];

    return v14();
  }

  v7 = *(v0[9] + 32);
  v7(v0[10], v0[7], v0[8]);
  if (sub_3E6D24() != 2)
  {
    v10 = sub_3E6D24();
    if (v10 == 2 || (v10 & 1) != 0)
    {
      v11 = v0[9];
      v12 = v0[8];
      v13 = v0[2];
      v7(v13, v0[10], v12);
      (*(v11 + 56))(v13, 0, 1, v12);
      goto LABEL_10;
    }
  }

  sub_3E6CC4();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_2C182C;
  v9 = v0[2];

  return ShowEntity.SingleShowWidgetShowQuery.defaultResult()(v9);
}

uint64_t sub_2C182C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_2C1984, 0, 0);
}

uint64_t sub_2C1984()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2C1A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_3EDD94();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_3E8C04();
  v5[17] = v7;
  v8 = *(v7 - 8);
  v5[18] = v8;
  v5[19] = *(v8 + 64);
  v5[20] = swift_task_alloc();
  v9 = sub_3ED014();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v5[23] = *(v10 + 64);
  v5[24] = swift_task_alloc();
  v11 = sub_3ED6F4();
  v5[25] = v11;
  v5[26] = *(v11 - 8);
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_2C1BFC, 0, 0);
}

uint64_t sub_2C1BFC()
{
  sub_36174(0, &qword_4FF648);
  v1 = sub_3EDE04();
  sub_3ED764();
  v2 = sub_3EDDF4();
  *(v0 + 224) = v2;
  v3 = v2;
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v24 = *(v0 + 184);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v23 = v4;
  v8 = *(v0 + 144);
  v28 = *(v0 + 128);
  v26 = *(v0 + 120);
  v9 = *(v0 + 104);
  v27 = *(v0 + 112);
  v10 = *(v0 + 88);
  v21 = *(v0 + 96);
  v22 = *(v0 + 136);
  v29 = *(v0 + 80);
  v25 = *(v0 + 72);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  (*(v5 + 16))(v4, v10, v7);
  sub_2C4930(v9, v0 + 16);
  (*(v8 + 16))(v6, v21, v22);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = (v24 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (*(v8 + 80) + v12 + 48) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v0 + 232) = v14;
  *(v14 + 2) = v3;
  *(v14 + 3) = v25;
  *(v14 + 4) = v29;
  (*(v5 + 32))(&v14[v11], v23, v7);
  v15 = &v14[v12];
  v16 = *(v0 + 32);
  *v15 = *(v0 + 16);
  *(v15 + 1) = v16;
  *(v15 + 2) = *(v0 + 48);
  (*(v8 + 32))(&v14[v13], v6, v22);
  (*(v26 + 104))(v28, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v27);
  v3;

  v17 = swift_task_alloc();
  *(v0 + 240) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD510);
  *v17 = v0;
  v17[1] = sub_2C1F54;
  v19 = *(v0 + 128);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 64, v19, sub_2C4DE0, v14, v18);
}

uint64_t sub_2C1F54()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);

  if (v0)
  {
    v3 = sub_2C2180;
  }

  else
  {
    v3 = sub_2C20D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2C20D8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2C2180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2C2218(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_3ECF74();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_3E7CA4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v3[12] = swift_task_alloc();
  v6 = sub_3E7784();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = _s7EpisodeVMa();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_2C2428, 0, 0);
}

uint64_t sub_2C2428()
{
  v1 = *(v0 + 24);
  v2 = *v1;
  *(v0 + 16) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD510);
  sub_2C4B48();
  v3 = sub_3ED894();
  if (v3)
  {
    if (*(v2 + 16))
    {
      v6 = *(v0 + 144);
      v7 = *(v0 + 128);
      v8 = *(v0 + 104);
      v9 = *(v0 + 112);
      v10 = *(v0 + 96);
      v11 = *(*(v0 + 136) + 80);
      *(v0 + 176) = v11;
      sub_29A88C(v2 + ((v11 + 32) & ~v11), v6);
      sub_152ED0(0, 1);
      sub_FBD0(v6 + *(v7 + 56), v10, &qword_4F1D50);
      if ((*(v9 + 48))(v10, 1, v8) == 1)
      {
        sub_FCF8(*(v0 + 96), &qword_4F1D50);
        sub_3ED004();
        v12 = swift_task_alloc();
        *(v0 + 168) = v12;
        *v12 = v0;
        v12[1] = sub_2C29E4;
        v13 = *(v0 + 64);
        v14 = *(v0 + 40);

        return sub_2A3A70(v14, v13);
      }

      v17 = *(v0 + 88);
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v21 = *(v0 + 40);
      v20 = *(v0 + 48);
      sub_2C4BAC(*(v0 + 96), *(v0 + 120), &type metadata accessor for ArtworkModel);
      v22 = v21[3];
      v23 = v21[4];
      __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_3ED004();
      ArtworkModel.widgetRequest(for:)(v18, v17);
      (*(v19 + 8))(v18, v20);
      v24 = swift_task_alloc();
      *(v0 + 152) = v24;
      *v24 = v0;
      v24[1] = sub_2C2758;
      v3 = *(v0 + 88);
      v4 = v22;
      v5 = v23;
    }

    else
    {
      __break(1u);
    }

    return ImageContentProvider.image(for:)(v3, v4, v5);
  }

  v16 = *(v0 + 8);

  return v16(v2);
}

uint64_t sub_2C2758(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 80);

  v7 = (v6 + 8);
  v8 = *(v4 + 88);
  v9 = *(v4 + 72);
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = sub_2C2C64;
  }

  else
  {
    *(v5 + 160) = a1;
    (*v7)(v8, v9);
    v10 = sub_2C2900;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_2C2900()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];
  sub_2C4C14(v0[15], &type metadata accessor for ArtworkModel);
  v4 = *(v3 + 60);

  *(v2 + v4) = v1;
  sub_3ED004();
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_2C29E4;
  v6 = v0[8];
  v7 = v0[5];

  return sub_2A3A70(v7, v6);
}

uint64_t sub_2C29E4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_2C2B3C, 0, 0);
}

uint64_t sub_2C2B3C()
{
  v1 = *(v0 + 144);
  v2 = (*(v0 + 176) + 32) & ~*(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA740);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_3F5630;
  sub_29A88C(v1, v3 + v2);

  sub_415F4(v4);
  sub_2C4C14(v1, _s7EpisodeVMa);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_2C2C64()
{
  v1 = v0[18];
  v2 = v0[16];
  sub_2C4C14(v0[15], &type metadata accessor for ArtworkModel);
  v3 = *(v2 + 60);

  *(v1 + v3) = 0;
  sub_3ED004();
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_2C29E4;
  v5 = v0[8];
  v6 = v0[5];

  return sub_2A3A70(v6, v5);
}

uint64_t sub_2C2D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  type metadata accessor for EpisodeListEntry();
  v11 = swift_task_alloc();
  v8[4] = v11;
  v12 = swift_task_alloc();
  v8[5] = v12;
  *v12 = v8;
  v12[1] = sub_2C2E24;

  return sub_2BF9EC(v11, a5, a6);
}

uint64_t sub_2C2E24()
{

  return _swift_task_switch(sub_2C2F20, 0, 0);
}

uint64_t sub_2C2F20()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_2C4C14(v1, type metadata accessor for EpisodeListEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2C2FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a4;
  type metadata accessor for EpisodeListEntry();
  v11 = swift_task_alloc();
  v8[5] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF628);
  v8[6] = v12;
  v8[7] = *(v12 - 8);
  v8[8] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[9] = v13;
  *v13 = v8;
  v13[1] = sub_2C3104;

  return sub_2BF9EC(v11, a5, a6);
}

uint64_t sub_2C3104()
{

  return _swift_task_switch(sub_2C3200, 0, 0);
}

uint64_t sub_2C3200()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  sub_2B3D14(v4, v1);
  sub_2C4C14(v4, type metadata accessor for EpisodeListEntry);
  v5(v1);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

void sub_2C32D8(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v52 = a4;
  v54 = a3;
  v57 = a2;
  v59 = a5;
  v6 = sub_3ECF74();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - v13;
  v15 = sub_3E8944();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v50 - v20;
  v21 = sub_3ED204();
  v53 = a1;
  v22 = [a1 podcastForUuid:v21];

  if (!v22)
  {
    goto LABEL_4;
  }

  v23 = v22;
  sub_3E8904();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_FCF8(v14, &qword_4E9FD0);
LABEL_4:
    *v59 = _swiftEmptyArrayStorage;
    return;
  }

  v24 = v58;
  (*(v16 + 32))(v58, v14, v15);
  sub_3E88F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF668);
  (*(v16 + 16))(v18, v24, v15);
  v25 = sub_3EDA04();
  v26 = v57;
  sub_3ED004();
  v27 = v55;
  v28 = v56;
  (*(v55 + 16))(v8, v11, v56);
  v29 = (*(v27 + 88))(v8, v28);
  v51 = v15;
  if (v29 == enum case for WidgetFamily.systemSmall(_:))
  {
    (*(v27 + 8))(v11, v28);
    v30 = 1;
    v31 = v25;
    goto LABEL_21;
  }

  v31 = v25;
  if (v29 == enum case for WidgetFamily.systemMedium(_:))
  {
    (*(v27 + 8))(v11, v28);
    v30 = 2;
    goto LABEL_21;
  }

  if (v29 == enum case for WidgetFamily.systemLarge(_:))
  {
    (*(v27 + 8))(v11, v28);
    v30 = 4;
    goto LABEL_21;
  }

  if (v29 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v32 = sub_3E8264();
    v33 = *(v27 + 8);
    v27 += 8;
    v29 = v33(v11, v28);
    v30 = v32;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  if (v29 == enum case for WidgetFamily.accessoryCorner(_:) || v29 == enum case for WidgetFamily.accessoryCircular(_:) || v29 == enum case for WidgetFamily.accessoryRectangular(_:) || v29 == enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v27 + 8))(v11, v28, v30);
    v30 = 1;
  }

  else
  {
    v34 = sub_3E8264();
    v35 = v11;
    v36 = *(v27 + 8);
    v36(v35, v28);
    v55 = v34;
    if (v34 < 0)
    {
      __break(1u);
      return;
    }

    v36(v8, v28);
    v30 = v55;
  }

LABEL_21:
  [v31 setFetchLimit:v30];
  v37 = [v23 smartPlayEpisode];
  v38 = v60;
  if (v37 && (v39 = v37, v40 = [v37 uuid], v39, v40))
  {
    v41 = sub_3ED244();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = sub_2C3914(v31, v41, v43, v53);
  if (v38)
  {

    (*(v16 + 8))(v58, v51);
  }

  else
  {
    v45 = v44;

    __chkstk_darwin(v46);
    v47 = v58;
    *(&v50 - 4) = v52;
    *(&v50 - 3) = v47;
    *(&v50 - 2) = v26;
    sub_263750(sub_2C4EC8, (&v50 - 6), v45);
    v49 = v48;

    *v59 = v49;
    (*(v16 + 8))(v47, v51);
  }
}

uint64_t sub_2C3914(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_36174(0, &qword_4F1C30);
  v9 = a4;
  v10 = sub_3EDDA4();
  if (v4)
  {
    return v9;
  }

  v11 = v10;
  v39 = a2;
  v37 = a4;
  v38 = a1;
  v40 = v10;
  v36 = v10 >> 62;
  if (v10 >> 62)
  {
LABEL_67:
    v12 = sub_3EE5A4();
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v13 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = sub_3EE3F4();
    }

    else
    {
      if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_67;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = [v14 uuid];
    if (!v16)
    {

      if (!a3)
      {
LABEL_33:

        goto LABEL_35;
      }

      goto LABEL_18;
    }

    v17 = v16;
    a1 = sub_3ED244();
    a4 = v18;

    if (a3)
    {
      if (a1 == v39 && a4 == a3)
      {

LABEL_35:
        v23 = sub_2BF95C(v13);
        v22 = v38;
        if (v40 >> 62)
        {
          goto LABEL_72;
        }

        while (1)
        {
LABEL_36:
          sub_152F90(0, 0, v23);
LABEL_37:

LABEL_38:
          v9 = v40;
          a1 = v40 >> 62;
          if (v40 >> 62)
          {
            v25 = sub_3EE5A4();
          }

          else
          {
            v25 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
          }

          a4 = &selRef_setDefaultTabInterval_;
          if ([v22 fetchLimit] >= v25)
          {
            return v9;
          }

          v26 = [v22 fetchLimit];
          if ((v26 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            a4 = v26;
            if (a1)
            {
              if (sub_3EE5A4() < 0)
              {
                goto LABEL_74;
              }

              v27 = sub_3EE5A4();
            }

            else
            {
              v27 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
            }

            if (v27 >= a4)
            {
              if ((v40 & 0xC000000000000001) != 0)
              {

                if (a4)
                {
                  v28 = 0;
                  do
                  {
                    v29 = v28 + 1;
                    sub_3EE3D4(v28);
                    v28 = v29;
                  }

                  while (a4 != v29);
                }
              }

              else
              {
              }

              if (a1)
              {
                a1 = sub_3EE5B4();
                v22 = v30;
                v23 = v31;
                a4 = v32;

                if (a4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              v23 = 0;
              a1 = v40 & 0xFFFFFFFFFFFFFF8;
              v22 = ((v40 & 0xFFFFFFFFFFFFFF8) + 32);
              a4 = (2 * a4) | 1;
              if ((a4 & 1) == 0)
              {
LABEL_57:
                sub_268F34(a1, v22, v23, a4);
                v9 = v33;
LABEL_64:
                swift_unknownObjectRelease();
                return v9;
              }

LABEL_58:
              sub_3EE824();
              swift_unknownObjectRetain_n();
              v34 = swift_dynamicCastClass();
              if (!v34)
              {
                swift_unknownObjectRelease();
                v34 = _swiftEmptyArrayStorage;
              }

              v35 = v34[2];

              if (!__OFSUB__(a4 >> 1, v23))
              {
                if (v35 == (a4 >> 1) - v23)
                {
                  v9 = swift_dynamicCastClass();
                  swift_unknownObjectRelease_n();
                  if (v9)
                  {
                    return v9;
                  }

                  v9 = _swiftEmptyArrayStorage;
                  goto LABEL_64;
                }

LABEL_76:
                swift_unknownObjectRelease_n();
                goto LABEL_57;
              }

LABEL_75:
              __break(1u);
              goto LABEL_76;
            }
          }

          __break(1u);
LABEL_72:
          if (sub_3EE5A4() < 0)
          {
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }
        }
      }

      a1 = sub_3EE804();

      if (a1)
      {
        goto LABEL_33;
      }

LABEL_18:
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      goto LABEL_19;
    }

    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

LABEL_19:
    ++v13;
    if (v20 == v12)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:

LABEL_25:
  if (a3)
  {
    v21 = sub_3ED204();
  }

  else
  {
    v21 = 0;
  }

  v22 = v38;
  v23 = [v37 episodeForUuid:v21];

  if (!v23)
  {
    goto LABEL_38;
  }

  if ([v23 isVisuallyPlayed])
  {
    goto LABEL_37;
  }

  if (!v36)
  {
    goto LABEL_36;
  }

  result = sub_3EE5A4();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t sub_2C3DDC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3ECF74();
  __chkstk_darwin(v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF428);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  v15 = sub_3E8C04();
  v16 = __chkstk_darwin(v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  (*(v20 + 16))(v18, a2, v16);
  v21 = v19;
  sub_3E8934();
  v22 = sub_3E7DF4();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  if (v40 > 5u)
  {
    if (v40 <= 7u)
    {
      if (v40 != 6)
      {
LABEL_19:
        sub_20C1D8(&v32);
        goto LABEL_20;
      }
    }

    else
    {
      if (v40 == 8 || v40 == 9)
      {
        goto LABEL_19;
      }

      v24 = v36 | v35 | v34;
      if (!(v38 | v39 | v32 | v37 | v24 | v33))
      {
        goto LABEL_4;
      }

      v25 = v38 | v39 | v37 | v24 | v33;
      if (v32 == 1 && !v25)
      {
        goto LABEL_4;
      }

      if (v32 != 2 || v25)
      {
        if ((v32 - 3) <= 3 && !v25)
        {
          goto LABEL_4;
        }

LABEL_20:
        sub_2BE348(v11, v14);
        v23 = &enum case for EyebrowBuilder.ListContext.show(_:);
        goto LABEL_21;
      }
    }

    sub_FCF8(v11, &qword_4EF428);
    *v14 = 0;
    v23 = &enum case for EyebrowBuilder.ListContext.listenNow(_:);
    goto LABEL_21;
  }

  if (v40 > 1u)
  {
    goto LABEL_19;
  }

  sub_20C1D8(&v32);
LABEL_4:
  sub_FCF8(v11, &qword_4EF428);
  v23 = &enum case for EyebrowBuilder.ListContext.mixedShows(_:);
LABEL_21:
  v26 = *v23;
  v27 = sub_3E7CB4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v14, v26, v27);
  (*(v28 + 56))(v14, 0, 1, v27);
  sub_3ED004();
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  return sub_2CC2AC(v21, v18, v14, v8, v30, a3);
}

uint64_t sub_2C41E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3ECF74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11._countAndFlagsBits = 0x7365646F73697045;
  v11._object = 0xE800000000000000;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v6 = sub_3E8614(v11, v12);
  v8 = v7;
  sub_3ED004();
  sub_2AAE24(v6, v8, v5, a1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2C42FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2400C;

  return sub_2BF9EC(a1, a2, a3);
}

uint64_t sub_2C43AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  type metadata accessor for EpisodeListEntry();
  v7 = swift_task_alloc();
  v4[4] = v7;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_2C448C;

  return sub_2BF9EC(v7, a2, a3);
}

uint64_t sub_2C448C()
{

  return _swift_task_switch(sub_2C4588, 0, 0);
}

uint64_t sub_2C4588()
{
  v1 = v0[4];
  sub_2B3D14(v1, v0[2]);
  sub_2C4C14(v1, type metadata accessor for EpisodeListEntry);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2C4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a4;
  v35 = a8;
  v32 = a7;
  v33 = a3;
  v30 = a1;
  v31 = a2;
  v9 = sub_3ED014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E7124();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_3ED6F4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_2C4930(v8, v36);
  (*(v13 + 16))(v15, v30, v12);
  v20 = v9;
  (*(v10 + 16))(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v9);
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = (v14 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v36[1];
  *(v23 + 32) = v36[0];
  *(v23 + 48) = v24;
  *(v23 + 64) = v36[2];
  (*(v13 + 32))(v23 + v21, v15, v12);
  (*(v10 + 32))(v23 + v22, v29, v20);
  v25 = (v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v34;
  *v25 = v33;
  v25[1] = v26;

  sub_D37B8(0, 0, v18, v35, v23);
}

uint64_t sub_2C496C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3E7124() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_3ED014() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2400C;

  return sub_2C2FB0(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_2C4B00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2C4B48()
{
  result = qword_4FF6D8;
  if (!qword_4FF6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FD510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF6D8);
  }

  return result;
}

uint64_t sub_2C4BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2C4C14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2C4C74()
{
  v1 = sub_3ED014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_3E8C04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 48) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_2C4DE0(void *a1@<X8>)
{
  v3 = *(sub_3ED014() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_3E8C04() - 8);
  sub_2C32D8(*(v1 + 16), v1 + v4, v1 + v5, v1 + ((v5 + *(v6 + 80) + 48) & ~*(v6 + 80)), a1);
}

uint64_t objectdestroyTm_9()
{
  v1 = sub_3E7124();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_3ED014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_2C505C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3E7124() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_3ED014() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2368C;

  return sub_2C2D3C(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_2C51F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2C523C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2C52E8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v62 = a2;
  v65 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF6E0);
  __chkstk_darwin(v59);
  v64 = &v50 - v4;
  v55 = sub_3E8C04();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3ED014();
  v66 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3ECF74();
  v67 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v50 - v12;
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  sub_3ED004();
  v68 = 40;
  v69 = 0xE100000000000000;
  sub_2CB680(&qword_4FDD60, &type metadata accessor for WidgetFamily);
  v70._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v70);
  v19 = a1;

  v71._countAndFlagsBits = 41;
  v71._object = 0xE100000000000000;
  sub_3ED3D4(v71);
  v20 = v68;
  v21 = v69;
  sub_36174(0, &qword_4F6BF0);
  v22 = sub_3EE0B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_3F5630;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_4F39C();
  *(v23 + 32) = v20;
  *(v23 + 40) = v21;

  sub_3ED9F4();
  sub_3E9744();

  v24 = *(v66 + 16);
  v61 = v6;
  v24(v8, v19, v6);
  sub_2C5FBC(v63, &v68);
  v25 = *(v67 + 16);
  v63 = v18;
  v26 = v18;
  v27 = v65;
  v25(v15, v26, v9);
  v28 = objc_opt_self();

  v29 = [v28 canExtensionOpenDatabase];
  v60 = v9;
  if (!v29)
  {
    v37 = sub_3E89A4();
    v38 = v64;
    (*(*(v37 - 8) + 56))(v64, 1, 3, v37);
    swift_storeEnumTagMultiPayload();
    sub_2C6048(v38, v20, v21, v8, v62, v27, &v68, v15);
    sub_FCF8(v38, &qword_4FF6E0);
    v35 = v67;
LABEL_18:

    (*(v66 + 8))(v8, v61);

    sub_2C7EF8(&v68);
    v48 = *(v35 + 8);
    v49 = v60;
    v48(v15, v60);
    return (v48)(v63, v49);
  }

  v50 = v20;
  v51 = v21;
  v30 = v64;
  v52 = v15;
  v53 = v8;
  v31 = v57;
  sub_3E8BB4();
  sub_3E8B84();
  v32 = v56;
  v33 = v19;
  sub_3ED004();
  v34 = v58;
  v25(v58, v32, v9);
  v35 = v67;
  v36 = (*(v67 + 88))(v34, v9);
  if (v36 == enum case for WidgetFamily.systemSmall(_:) || v36 == enum case for WidgetFamily.systemMedium(_:) || v36 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_7;
  }

  if (v36 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v39 = sub_3E8264();
    v36 = (*(v35 + 8))(v32, v9);
    if ((v39 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (v36 == enum case for WidgetFamily.accessoryCorner(_:) || v36 == enum case for WidgetFamily.accessoryCircular(_:) || v36 == enum case for WidgetFamily.accessoryRectangular(_:) || v36 == enum case for WidgetFamily.accessoryInline(_:))
  {
LABEL_7:
    (*(v35 + 8))(v32, v9);
LABEL_17:
    v43 = sub_36174(0, &qword_4F1C30);
    __chkstk_darwin(v43);
    *(&v50 - 2) = v31;
    *(&v50 - 1) = v33;
    _s7EpisodeVMa();
    v44 = sub_3EDF54();
    Snapshot = type metadata accessor for UpNextSnapshot(0);
    v46 = v54;
    v47 = v55;
    (*(v54 + 16))(v30 + *(Snapshot + 20), v31, v55);
    *v30 = v44;
    swift_storeEnumTagMultiPayload();
    v8 = v53;
    v15 = v52;
    sub_2C6048(v30, v50, v51, v53, v62, v65, &v68, v52);
    sub_FCF8(v30, &qword_4FF6E0);
    (*(v46 + 8))(v31, v47);
    goto LABEL_18;
  }

  v40 = sub_3E8264();
  v41 = *(v35 + 8);
  result = v41(v32, v9);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v41(v58, v9);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2C5B78(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF628);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_2B3D14(a1, &v9 - v6);
  a2(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2C5C74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3ECF74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11._countAndFlagsBits = 0x7478654E207055;
  v11._object = 0xE700000000000000;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v6 = sub_3E8614(v11, v12);
  v8 = v7;
  sub_3ED004();
  sub_2AAE24(v6, v8, v5, a1);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2C5D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2C5FBC(v3, v11);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = v11[3];
  *(v7 + 64) = v11[2];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[4];
  *(v7 + 112) = v12;
  v9 = v11[1];
  *(v7 + 32) = v11[0];
  *(v7 + 48) = v9;

  sub_2C52E8(a1, sub_2C603C, v7);
}

uint64_t sub_2C5E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2368C;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_2C5F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2400C;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_2C5FF4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2C6048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v187 = a8;
  v204 = a7;
  v210 = a6;
  v209 = a5;
  v217 = a4;
  v218 = a2;
  v219 = a3;
  v212 = a1;
  v203 = sub_3ED014();
  v201 = *(v203 - 8);
  __chkstk_darwin(v203);
  v197 = v8;
  v199 = v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3ECF74();
  v215 = *(v9 - 8);
  v216 = v9;
  __chkstk_darwin(v9);
  v185 = v10;
  v186 = v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF6E8);
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v188 = v159 - v11;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF6F0);
  v191 = *(v193 - 8);
  __chkstk_darwin(v193);
  v189 = v159 - v12;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF6F8);
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = v159 - v13;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF700);
  v200 = *(v202 - 8);
  __chkstk_darwin(v202);
  v198 = v159 - v14;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF708);
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = v159 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v16 - 8);
  v162 = v159 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF710);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = v159 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v19 - 8);
  v168 = v159 - v20;
  v167 = sub_3E7784();
  v169 = *(v167 - 8);
  __chkstk_darwin(v167);
  v161 = v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v21;
  __chkstk_darwin(v22);
  v170 = v159 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD610);
  __chkstk_darwin(v24 - 8);
  v176 = v159 - v25;
  v175 = _s7EpisodeVMa();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Snapshot = type metadata accessor for UpNextSnapshot(0);
  v182 = *(Snapshot - 8);
  __chkstk_darwin(Snapshot);
  v184 = v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v27;
  __chkstk_darwin(v28);
  v211 = v159 - v29;
  v207 = sub_3E5F84();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v172 = v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v205 = v159 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v33 - 8);
  v181 = v159 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD5B8);
  __chkstk_darwin(v35 - 8);
  v208 = v159 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v37 - 8);
  v171 = v159 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v213 = v159 - v40;
  v214 = type metadata accessor for EpisodeListEntry();
  __chkstk_darwin(v214);
  v42 = v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3E89A4();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v166 = v159 - v48;
  LoaderError = type metadata accessor for UpNextLoaderError(0);
  __chkstk_darwin(LoaderError - 8);
  v51 = v159 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = v159 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF6E0);
  __chkstk_darwin(v55);
  v57 = v159 - v56;
  sub_FBD0(v212, v159 - v56, &qword_4FF6E0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v70 = v211;
    sub_2CA1A8(v57, v211, type metadata accessor for UpNextSnapshot);
    sub_36174(0, &qword_4F6BF0);
    v71 = sub_3EE0B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_3F5310;
    v73 = *v70;
    v74 = *(*v70 + 16);
    *(v72 + 56) = &type metadata for Int;
    *(v72 + 64) = &protocol witness table for Int;
    *(v72 + 32) = v74;
    *(v72 + 96) = &type metadata for String;
    *(v72 + 104) = sub_4F39C();
    v75 = v219;
    *(v72 + 72) = v218;
    *(v72 + 80) = v75;

    sub_3ED9F4();
    sub_3E9744();

    v76 = sub_3E8B74();
    if (v76)
    {
      goto LABEL_14;
    }

    v77 = v171;
    sub_3E8BE4();
    v78 = v206;
    v79 = *(v206 + 48);
    v80 = v207;
    if (v79(v77, 1, v207) == 1)
    {
      v81 = v172;
      sub_3E5F74();
      if (v79(v77, 1, v80) != 1)
      {
        sub_FCF8(v77, &qword_4EF460);
      }
    }

    else
    {
      v81 = v172;
      (*(v78 + 32))(v172, v77, v80);
    }

    v87 = v205;
    sub_3E5F74();
    v88 = sub_3E5EC4();
    v89 = *(v78 + 8);
    v89(v87, v80);
    v76 = (v89)(v81, v80);
    if (v88)
    {
LABEL_14:
      __chkstk_darwin(v76);
      v159[-2] = v70;
      v90 = v176;
      sub_2B62D0(sub_2C9EDC, v73, v176);
      v91 = v175;
      if ((*(v174 + 48))(v90, 1, v175) == 1)
      {
        v92 = &qword_4FD610;
      }

      else
      {
        v93 = v173;
        sub_2CA1A8(v90, v173, _s7EpisodeVMa);
        v90 = v168;
        sub_FBD0(v93 + *(v91 + 56), v168, &qword_4F1D50);
        v94 = v169;
        if ((*(v169 + 48))(v90, 1, v167) != 1)
        {
          v95 = v70;
          v148 = v170;
          sub_2CA1A8(v90, v170, &type metadata accessor for ArtworkModel);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF770);
          v149 = sub_3ED6F4();
          (*(*(v149 - 8) + 56))(v162, 1, 1, v149);
          v150 = v161;
          sub_2CA290(v148, v161, &type metadata accessor for ArtworkModel);
          sub_2C5FBC(v204, &v221);
          v151 = (*(v94 + 80) + 16) & ~*(v94 + 80);
          v152 = (v160 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
          v153 = swift_allocObject();
          sub_2CA1A8(v150, v153 + v151, &type metadata accessor for ArtworkModel);
          v154 = v153 + v152;
          v155 = v224;
          *(v154 + 32) = v223;
          *(v154 + 48) = v155;
          *(v154 + 64) = v225;
          *(v154 + 80) = v226;
          v156 = v222;
          *v154 = v221;
          *(v154 + 16) = v156;
          *&v221 = sub_3E9E14();
          v220 = 0;
          sub_886BC(&qword_4FF778, &qword_4FF770);
          v157 = v163;
          sub_3E9FC4();

          sub_886BC(&qword_4FF780, &qword_4FF710);
          v158 = v165;
          v213 = sub_3E9F94();
          (*(v164 + 8))(v157, v158);
          sub_2CA230(v170, &type metadata accessor for ArtworkModel);
          sub_2CA230(v173, _s7EpisodeVMa);
          goto LABEL_20;
        }

        sub_2CA230(v93, _s7EpisodeVMa);
        v92 = &qword_4F1D50;
      }

      sub_FCF8(v90, v92);
    }

    v95 = v70;
    *&v221 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF718);
    v96 = v177;
    sub_3E9DF4();
    sub_886BC(&qword_4FF720, &qword_4FF708);
    v97 = v179;
    v213 = sub_3E9F94();
    (*(v178 + 8))(v96, v97);
LABEL_20:
    *&v221 = v73;
    v98 = v213;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD510);
    sub_886BC(&qword_4FF728, &qword_4FD510);
    v99 = v188;
    sub_3E9C34();
    v101 = v215;
    v100 = v216;
    v102 = v186;
    (*(v215 + 16))(v186, v187, v216);
    sub_2C5FBC(v204, &v221);
    v103 = (*(v101 + 80) + 16) & ~*(v101 + 80);
    v104 = (v185 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
    v105 = swift_allocObject();
    (*(v101 + 32))(v105 + v103, v102, v100);
    v106 = v105 + v104;
    v107 = v224;
    *(v106 + 32) = v223;
    *(v106 + 48) = v107;
    *(v106 + 64) = v225;
    *(v106 + 80) = v226;
    v108 = v222;
    *v106 = v221;
    *(v106 + 16) = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF730);
    sub_886BC(&qword_4FF738, &qword_4FF6E8);
    sub_886BC(&qword_4FF740, &qword_4FF730);
    v109 = v189;
    v110 = v192;
    sub_3EA1D4();

    (*(v190 + 8))(v99, v110);
    sub_886BC(&qword_4FF748, &qword_4FF6F0);
    v111 = v194;
    v112 = v193;
    sub_3EA0D4();
    (*(v191 + 8))(v109, v112);
    *&v221 = v98;
    v113 = v95;
    v114 = v184;
    sub_2CA290(v113, v184, type metadata accessor for UpNextSnapshot);
    v115 = v201;
    v116 = v199;
    v117 = v203;
    (*(v201 + 16))(v199, v217, v203);
    v118 = (*(v182 + 80) + 24) & ~*(v182 + 80);
    v119 = (v183 + *(v115 + 80) + v118) & ~*(v115 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = 0;
    sub_2CA1A8(v114, v120 + v118, type metadata accessor for UpNextSnapshot);
    (*(v115 + 32))(v120 + v119, v116, v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF750);
    sub_886BC(&qword_4FF758, &qword_4FF6F8);
    sub_886BC(&qword_4FF760, &qword_4FF750);
    v121 = v198;
    v122 = v196;
    sub_3E9FF4();

    (*(v195 + 8))(v111, v122);
    v123 = swift_allocObject();
    v124 = v219;
    v123[2] = v218;
    v123[3] = v124;
    v125 = v210;
    v123[4] = v209;
    v123[5] = v125;
    sub_886BC(&qword_4FF768, &qword_4FF700);

    v126 = v202;
    sub_3EA1A4();

    (*(v200 + 8))(v121, v126);
    if (qword_4E8AB8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_3E9C84();
    swift_endAccess();

    v127 = type metadata accessor for UpNextSnapshot;
    v128 = &v227;
    return sub_2CA230(*(v128 - 32), v127);
  }

  v58 = v218;
  sub_2CA1A8(v57, v54, type metadata accessor for UpNextLoaderError);
  sub_2CA290(v54, v51, type metadata accessor for UpNextLoaderError);
  v59 = (*(v44 + 48))(v51, 3, v43);
  v159[1] = v54;
  if (v59 > 1)
  {
    v82 = v208;
    v83 = v213;
    sub_36174(0, &qword_4F6BF0);
    v129 = sub_3EE0B4();
    sub_3ED9D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_3F5630;
    *(v130 + 56) = &type metadata for String;
    *(v130 + 64) = sub_4F39C();
    v131 = v219;
    *(v130 + 32) = v58;
    *(v130 + 40) = v131;

    sub_3E9744();

    LODWORD(v219) = 0;
  }

  else
  {
    if (v59)
    {
      sub_36174(0, &qword_4F6BF0);
      v84 = sub_3EE0B4();
      sub_3ED9D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_3F5630;
      *(v85 + 56) = &type metadata for String;
      *(v85 + 64) = sub_4F39C();
      v86 = v219;
      *(v85 + 32) = v58;
      *(v85 + 40) = v86;

      LODWORD(v219) = 2;
      sub_3E9744();
    }

    else
    {
      v60 = v166;
      (*(v44 + 32))(v166, v51, v43);
      sub_36174(0, &qword_4F6BF0);
      v61 = sub_3EE0B4();
      v62 = v44;
      LODWORD(v212) = sub_3ED9D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_3F5310;
      v64 = *(v44 + 16);
      v65 = v60;
      v64(v46, v60, v43);
      v66 = sub_3ED2B4();
      v68 = v67;
      *(v63 + 56) = &type metadata for String;
      v69 = sub_4F39C();
      *(v63 + 32) = v66;
      *(v63 + 40) = v68;
      *(v63 + 96) = &type metadata for String;
      *(v63 + 104) = v69;
      *(v63 + 64) = v69;
      *(v63 + 72) = v58;
      *(v63 + 80) = v219;

      sub_3E9744();

      (*(v62 + 8))(v65, v43);
      LODWORD(v219) = 0;
    }

    v82 = v208;
    v83 = v213;
  }

  v228._countAndFlagsBits = 0x7478654E207055;
  v228._object = 0xE700000000000000;
  v229._countAndFlagsBits = 0;
  v229._object = 0xE000000000000000;
  v218 = sub_3E8614(v228, v229);
  v212 = v132;
  v133 = v206;
  v134 = v207;
  (*(v206 + 56))(v83, 1, 1, v207);
  sub_3ED004();
  (*(v215 + 56))(v82, 0, 1, v216);
  v135 = sub_3E5DC4();
  v136 = *(*(v135 - 8) + 56);
  v137 = v181;
  v136(v181, 1, 1, v135);
  v138 = v205;
  sub_3E5F74();
  v139 = v214;
  sub_3E5FB4();
  v140 = v139[14];
  v136(&v42[v140], 1, 1, v135);
  v141 = v212;
  v142 = v213;
  *v42 = v218;
  *(v42 + 1) = v141;
  *&v42[v139[9]] = 0;
  *&v42[v139[10]] = 0;
  sub_FBD0(v142, &v42[v139[11]], &qword_4EF460);
  (*(v133 + 16))(&v42[v139[12]], v138, v134);
  sub_2ABFA8(v137, &v42[v140]);
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  v42[v139[15]] = 1;
  v42[32] = v219;
  result = sub_3E8264();
  if (result)
  {
    __chkstk_darwin(result);
    v144 = v208;
    v159[-2] = v208;
    *(v42 + 5) = sub_263314(sub_2CA210, &v159[-4], 1uLL, v145);
    v146 = v139[13];
    sub_3ECFE4();
    (*(v133 + 8))(v138, v134);
    sub_FCF8(v137, &unk_4E9EE0);
    sub_FCF8(v142, &qword_4EF460);
    sub_FCF8(v144, &qword_4FD5B8);
    v147 = sub_3ECFF4();
    (*(*(v147 - 8) + 56))(&v42[v146], 0, 1, v147);
    v209(v42);
    sub_2CA230(v42, type metadata accessor for EpisodeListEntry);
    v127 = type metadata accessor for UpNextLoaderError;
    v128 = &v191;
    return sub_2CA230(*(v128 - 32), v127);
  }

  __break(1u);
  return result;
}

uint64_t sub_2C7F28()
{
  type metadata accessor for UpNextSnapshot(0);
  v0 = sub_3E8BA4();
  if (v2 == -1)
  {
    return 0;
  }

  v3 = v0;
  v4 = v1;
  v5 = v2;
  v6 = sub_3E9594();
  sub_10EFE8(v3, v4, v5);
  return v6 & 1;
}

uint64_t sub_2C7FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_3E7CA4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_2C80B4, 0, 0);
}

uint64_t sub_2C80B4()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_3E76F4();
  MTWidgetBackgroundPreferredArtworkSize();
  sub_3E7C74();
  v6 = *(v3 + 8);
  v0[10] = v6;
  v0[11] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  sub_3E7C24();
  v6(v1, v4);
  v8 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v8);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2C8208;
  v10 = v0[9];

  return ImageContentProvider.image(for:)(v10, v8, v7);
}

uint64_t sub_2C8208(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2C83D8;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_2C8330;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2C8330()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  (*(v0 + 80))(*(v0 + 72), *(v0 + 40));
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2C83D8()
{
  (*(v0 + 80))(*(v0 + 72), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2C846C@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v7 = sub_3E5F84();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v42 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v36[-v10];
  v12 = sub_3ECF74();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v15 - 8);
  v17 = &v36[-v16];
  v18 = *a1;
  v19 = *a2;
  v38 = v19;
  v49._countAndFlagsBits = 0x7478654E207055;
  v49._object = 0xE700000000000000;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v20 = sub_3E8614(v49, v50);
  v39 = v21;
  v40 = v20;
  v41 = *(v18 + 16);
  if (v41)
  {
    v22 = 5;
  }

  else
  {
    v22 = 4;
  }

  v37 = v22;
  type metadata accessor for UpNextSnapshot(0);
  v23 = v19;

  sub_3E8BE4();
  v46 = v14;
  sub_3ED004();
  v24 = sub_3E5DC4();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v26 = v42;
  sub_3E5F74();
  v27 = type metadata accessor for EpisodeListEntry();
  sub_3E5FB4();
  v28 = v27[14];
  v29 = v24;
  v30 = v44;
  v25((a4 + v28), 1, 1, v29);
  v31 = v43;
  v32 = v39;
  *a4 = v40;
  *(a4 + 8) = v32;
  *(a4 + v27[9]) = v38;
  *(a4 + v27[10]) = v45;
  sub_FBD0(v17, a4 + v27[11], &qword_4EF460);
  (*(v31 + 16))(a4 + v27[12], v26, v30);

  sub_2ABFA8(v11, a4 + v28);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  if (v41 && *(v18 + 16))
  {
    *(a4 + v27[15]) = 0;
    *(a4 + 32) = 5;
    *(a4 + 40) = v18;
    v33 = a4 + v27[13];

    sub_2B10B8(v26, v18, v33);
  }

  else
  {
    *(a4 + 32) = v37;
    *(a4 + v27[15]) = 0;
    *(a4 + 40) = v18;
    v33 = a4 + v27[13];
    sub_3ECFE4();
  }

  (*(v31 + 8))(v26, v30);
  sub_FCF8(v11, &unk_4E9EE0);
  sub_FCF8(v17, &qword_4EF460);
  (*(v47 + 8))(v46, v48);
  v34 = sub_3ECFF4();
  return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
}

uint64_t sub_2C88F4(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v44 = a5;
  v45 = a4;
  v47 = a2;
  v48 = a3;
  v6 = _s7EpisodeVMa();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v42 = sub_36174(0, &qword_4F6BF0);
  v46 = sub_3EE0B4();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v13 = swift_allocObject();
  v40 = xmmword_3F5310;
  *(v13 + 16) = xmmword_3F5310;
  v43 = a1;
  v14 = *(a1 + 40);
  v15 = _swiftEmptyArrayStorage;
  v50 = v14;
  *&v51 = _swiftEmptyArrayStorage;
  v16 = *(v14 + 16);
  v49 = v7;
  if (v16)
  {
    v17 = *(v6 + 60);
    v18 = v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v19 = *(v7 + 72);
    do
    {
      sub_2CA290(v18, v12, _s7EpisodeVMa);
      v20 = *&v12[v17];
      v21 = v20;
      sub_2CA230(v12, _s7EpisodeVMa);
      if (v20)
      {
        sub_3ED564();
        if (*(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v51 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_3ED5A4();
        }

        sub_3ED604();
        v15 = v51;
      }

      v18 += v19;
      --v16;
    }

    while (v16);
  }

  if (v15 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)); ; i = sub_3EE5A4())
  {
    v24 = v47;
    v23 = v48;

    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = i;
    *(v13 + 96) = &type metadata for String;
    v25 = sub_4F39C();
    *(v13 + 104) = v25;
    *(v13 + 72) = v24;
    *(v13 + 80) = v23;

    sub_3ED9F4();
    v26 = v46;
    sub_3E9744();

    if (([objc_opt_self() isRunningOnInternalOS] & 1) == 0)
    {
      break;
    }

    v13 = sub_3EE0B4();
    v27 = swift_allocObject();
    v28 = v27;
    *(v27 + 16) = v40;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v25;
    *(v27 + 32) = v24;
    *(v27 + 40) = v23;
    v29 = *(v50 + 16);
    if (!v29)
    {

      v32 = _swiftEmptyArrayStorage;
LABEL_19:
      v28[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
      v28[13] = sub_886BC(&qword_4FF788, &unk_5010E0);
      v28[9] = v32;
      sub_3ED9F4();
      sub_3E9744();

      return v45(v43);
    }

    v47 = v27;
    v48 = v13;
    v55 = _swiftEmptyArrayStorage;

    sub_41BA8(0, v29, 0);
    v30 = v50;
    v31 = 0;
    v32 = v55;
    v33 = v50 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    while (v31 < *(v30 + 16))
    {
      sub_2CA290(v33 + *(v49 + 72) * v31, v9, _s7EpisodeVMa);
      v53 = 0;
      v54 = 0xE000000000000000;
      v34 = v9[16];
      v51 = *v9;
      v52 = v34;
      sub_3EE554();
      v56._countAndFlagsBits = 8250;
      v56._object = 0xE200000000000000;
      sub_3ED3D4(v56);
      sub_3ED3D4(*(v9 + 24));
      v57._countAndFlagsBits = 2108704;
      v57._object = 0xE300000000000000;
      sub_3ED3D4(v57);
      sub_3ED3D4(*(v9 + 88));
      v13 = v53;
      v35 = v54;
      sub_2CA230(v9, _s7EpisodeVMa);
      v55 = v32;
      v37 = v32[2];
      v36 = v32[3];
      if (v37 >= v36 >> 1)
      {
        sub_41BA8((v36 > 1), v37 + 1, 1);
        v32 = v55;
      }

      ++v31;
      v32[2] = v37 + 1;
      v38 = &v32[2 * v37];
      v38[4] = v13;
      v38[5] = v35;
      v30 = v50;
      if (v29 == v31)
      {
        v28 = v47;
        v13 = v48;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    ;
  }

  return v45(v43);
}

void sub_2C8E28(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3E9A04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (!*a1)
  {
    sub_3E9984();
    v11 = sub_3E99F4();
    v12 = sub_3ED9D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Critical failure: unable to recover with image placeholder. returning episode without artwork.", v13, 2u);
    }

    (*(v7 + 8))(v9, v6);
  }

  sub_2CA290(a2, a3, _s7EpisodeVMa);
  v14 = *(_s7EpisodeVMa() + 60);
  v15 = *(a3 + v14);
  v16 = v10;

  *(a3 + v14) = v10;
}

uint64_t sub_2C8FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_3E7CA4();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_2C9090, 0, 0);
}

uint64_t sub_2C9090()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  ArtworkModel.widgetRequest(for:)(v2, v1);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_2C916C;
  v7 = v0[16];

  return ImageContentProvider.image(for:)(v7, v4, v5);
}

uint64_t sub_2C916C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[16];
  v6 = v3[14];
  v7 = v3[13];
  v4[18] = v1;

  v8 = *(v6 + 8);
  v4[19] = v8;
  v4[20] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  if (v1)
  {
    v9 = sub_2C93F0;
  }

  else
  {
    v9 = sub_2C92F8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_2C92F8()
{
  **(v0 + 64) = *(v0 + 24);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2C9370()
{

  **(v0 + 64) = *(v0 + 48);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2C93F0()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  ArtworkModel.widgetRequest(for:)(v2, v1);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_2C94CC;
  v7 = v0[15];

  return ImageContentProvider.image(for:)(v7, v4, v5);
}

uint64_t sub_2C94CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[19];
  v6 = v3[15];
  v7 = v3[13];
  v4[22] = v1;

  v5(v6, v7);
  if (v1)
  {
    v8 = sub_2C9654;
  }

  else
  {
    v8 = sub_2C9370;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_2C9654()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2C96CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_3E7CA4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_2C9790, 0, 0);
}

uint64_t sub_2C9790()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  ArtworkModel.widgetRequest(for:)(v2, v1);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_2C986C;
  v7 = v0[8];

  return ImageContentProvider.image(for:)(v7, v4, v5);
}

uint64_t sub_2C986C(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_2C9A64;
  }

  else
  {
    v4[11] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_2C99F4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_2C99F4()
{
  **(v0 + 16) = *(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2C9A64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2C9AE4()
{
  v1 = sub_3ECF74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5 + 48);

  return _swift_deallocObject(v0, v5 + 88, v3 | 7);
}

uint64_t sub_2C9B8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_3ECF74() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  result = sub_2CABD4(a1, v2 + v6, v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  *a2 = result;
  return result;
}

uint64_t sub_2C9C2C()
{
  v1 = (type metadata accessor for UpNextSnapshot(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_3ED014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v1[7];
  v12 = sub_3E8C04();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_2C9DA0@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for UpNextSnapshot(0);
  sub_3ED014();
  v7 = *(v3 + 16);

  return sub_2C846C(a1, a2, v7, a3);
}

uint64_t sub_2C9E90()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2C9EFC()
{
  v1 = sub_3E7784();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 32);
  if (v6 != 255)
  {
    sub_F2248(*(v5 + 16), *(v5 + 24), v6);
  }

  v7 = *(v5 + 64);
  if (v7 != 255)
  {
    sub_F2260(*(v5 + 56), v7);
  }

  v8 = *(v5 + 80);
  if (v8 != 255)
  {
    sub_F2260(*(v5 + 72), v8);
  }

  v9 = *(v5 + 96);
  if (v9 != 255)
  {
    sub_F2260(*(v5 + 88), v9);
  }

  v10 = *(v5 + 112);
  if (v10 != 255)
  {
    sub_F2260(*(v5 + 104), v10);
  }

  v11 = *(v5 + 128);
  if (v11 != 255)
  {
    sub_F2260(*(v5 + 120), v11);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + 44);
  v14 = sub_3E7624();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v12 + 48);

  return _swift_deallocObject(v0, v12 + 88, v2 | 7);
}

uint64_t sub_2CA0A0(uint64_t a1)
{
  v4 = *(sub_3E7784() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2368C;

  return sub_2C7FD8(a1, v1 + v5, v1 + v6);
}

uint64_t sub_2CA1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2CA230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2CA290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2CA2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v68 = a3;
  v72 = a1;
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF7C0);
  v64 = *(v4 - 1);
  v65 = v4;
  __chkstk_darwin(v4);
  v63 = &v60 - v5;
  v6 = sub_3ECF74();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v67 = v7;
  v69 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v8 - 8);
  v75 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4208);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = sub_3E7784();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v62 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  __chkstk_darwin(v23);
  v74 = &v60 - v24;
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  v28 = &v13[*(v11 + 56)];
  sub_FBD0(v72, v13, &qword_4F1D50);
  sub_FBD0(v73, v28, &qword_4F1D50);
  v73 = v15;
  v29 = *(v15 + 48);
  LODWORD(v15) = v29(v13, 1, v14);
  v30 = v29(v28, 1, v14);
  if (v15 != 1)
  {
    if (v30 != 1)
    {
      v65 = &type metadata accessor for ArtworkModel;
      v45 = v74;
      sub_2CA1A8(v13, v74, &type metadata accessor for ArtworkModel);
      v61 = v22;
      sub_2CA1A8(v28, v22, &type metadata accessor for ArtworkModel);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF770);
      v46 = sub_3ED6F4();
      (*(*(v46 - 8) + 56))(v75, 1, 1, v46);
      sub_1F958(v66, v76);
      sub_2CA290(v45, v19, &type metadata accessor for ArtworkModel);
      v47 = v69;
      v48 = v70;
      v49 = v71;
      (*(v70 + 16))(v69, v68, v71);
      v50 = v22;
      v51 = v62;
      sub_2CA290(v50, v62, &type metadata accessor for ArtworkModel);
      v52 = *(v73 + 80);
      v53 = (v52 + 56) & ~v52;
      v54 = (v16 + *(v48 + 80) + v53) & ~*(v48 + 80);
      v55 = (v67 + v52 + v54) & ~v52;
      v56 = swift_allocObject();
      sub_1D4F0(v76, v56 + 16);
      v57 = v19;
      v58 = v65;
      sub_2CA1A8(v57, v56 + v53, v65);
      (*(v48 + 32))(v56 + v54, v47, v49);
      sub_2CA1A8(v51, v56 + v55, v58);
      *&v76[0] = sub_3E9E14();
      sub_886BC(&qword_4FF778, &qword_4FF770);
      v36 = sub_3E9F94();

      sub_2CA230(v61, &type metadata accessor for ArtworkModel);
      sub_2CA230(v74, &type metadata accessor for ArtworkModel);
      return v36;
    }

    v28 = v13;
    goto LABEL_6;
  }

  if (v30 != 1)
  {
LABEL_6:
    sub_2CA1A8(v28, v27, &type metadata accessor for ArtworkModel);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF770);
    v37 = sub_3ED6F4();
    (*(*(v37 - 8) + 56))(v75, 1, 1, v37);
    sub_1F958(v66, v76);
    v38 = v74;
    sub_2CA1A8(v27, v74, &type metadata accessor for ArtworkModel);
    v39 = v69;
    v40 = v70;
    v41 = v71;
    (*(v70 + 16))(v69, v68, v71);
    v42 = (*(v73 + 80) + 56) & ~*(v73 + 80);
    v43 = (v16 + *(v40 + 80) + v42) & ~*(v40 + 80);
    v44 = swift_allocObject();
    sub_1D4F0(v76, v44 + 16);
    sub_2CA1A8(v38, v44 + v42, &type metadata accessor for ArtworkModel);
    (*(v40 + 32))(v44 + v43, v39, v41);
    *&v76[0] = sub_3E9E14();
    sub_886BC(&qword_4FF778, &qword_4FF770);
    v36 = sub_3E9F94();

    return v36;
  }

  v31 = sub_3E8664();
  sub_2CB680(&qword_4EE6D8, &type metadata accessor for ImageProviderError);
  v32 = swift_allocError();
  (*(*(v31 - 8) + 104))(v33, enum case for ImageProviderError.unsupportedRequest(_:), v31);
  *&v76[0] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
  v34 = v63;
  sub_3E9DD4();
  sub_886BC(&qword_4FF7C8, &qword_4FF7C0);
  v35 = v65;
  v36 = sub_3E9F94();
  (*(v64 + 8))(v34, v35);
  return v36;
}

uint64_t sub_2CABD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7EpisodeVMa();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v6);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF790);
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF798);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = sub_2CA2F8(a1 + *(v6 + 52), a1 + *(v6 + 56), a2, a3);
  v27 = 0;
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF7A0);
  sub_886BC(&qword_4FF7A8, &qword_4FF7A0);
  sub_3E9FC4();

  sub_2CA290(a1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s7EpisodeVMa);
  v15 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v16 = swift_allocObject();
  sub_2CA1A8(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s7EpisodeVMa);
  sub_886BC(&qword_4FF7B0, &qword_4FF790);
  v17 = v23;
  sub_3EA024();

  (*(v26 + 8))(v9, v17);
  sub_886BC(&qword_4FF7B8, &qword_4FF798);
  v18 = v24;
  v19 = sub_3E9F94();
  (*(v25 + 8))(v13, v18);
  return v19;
}

uint64_t sub_2CAF78()
{
  v1 = v0;
  v2 = _s7EpisodeVMa();
  v3 = *(*(v2 - 1) + 80);
  v49 = *(*(v2 - 1) + 64);
  v48 = (v3 + 16) & ~v3;
  v4 = v0 + v48;
  sub_3DEF8(*v4, *(v4 + 8), *(v4 + 16));

  v5 = v2[11];
  v6 = sub_3E5F84();
  v7 = *(v6 - 8);
  v46 = *(v7 + 48);
  if (!v46(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v47 = v7;

  v8 = v4 + v2[13];
  v9 = sub_3E7784();
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v8, 1, v9))
  {

    v11 = *(v8 + 32);
    if (v11 != 255)
    {
      sub_F2248(*(v8 + 16), *(v8 + 24), v11);
    }

    v12 = *(v8 + 64);
    if (v12 != 255)
    {
      sub_F2260(*(v8 + 56), v12);
    }

    v13 = *(v8 + 80);
    if (v13 != 255)
    {
      sub_F2260(*(v8 + 72), v13);
    }

    v14 = *(v8 + 96);
    if (v14 != 255)
    {
      sub_F2260(*(v8 + 88), v14);
    }

    v45 = v3;
    v15 = *(v8 + 112);
    if (v15 != 255)
    {
      sub_F2260(*(v8 + 104), v15);
    }

    v16 = v1;
    v17 = *(v8 + 128);
    if (v17 != 255)
    {
      sub_F2260(*(v8 + 120), v17);
    }

    v18 = *(v9 + 44);
    v19 = sub_3E7624();
    (*(*(v19 - 8) + 8))(v8 + v18, v19);

    v1 = v16;
    v3 = v45;
  }

  v20 = v4 + v2[14];
  if (!v10(v20, 1, v9))
  {

    v21 = *(v20 + 32);
    if (v21 != 255)
    {
      sub_F2248(*(v20 + 16), *(v20 + 24), v21);
    }

    v22 = *(v20 + 64);
    if (v22 != 255)
    {
      sub_F2260(*(v20 + 56), v22);
    }

    v23 = *(v20 + 80);
    if (v23 != 255)
    {
      sub_F2260(*(v20 + 72), v23);
    }

    v24 = *(v20 + 96);
    if (v24 != 255)
    {
      sub_F2260(*(v20 + 88), v24);
    }

    v25 = *(v20 + 112);
    if (v25 != 255)
    {
      sub_F2260(*(v20 + 104), v25);
    }

    v26 = *(v20 + 128);
    if (v26 != 255)
    {
      sub_F2260(*(v20 + 120), v26);
    }

    v27 = *(v9 + 44);
    v28 = sub_3E7624();
    (*(*(v28 - 8) + 8))(v20 + v27, v28);
  }

  v29 = v2[16];
  v30 = sub_3E5DC4();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(v4 + v29, 1, v30))
  {
    (*(v31 + 8))(v4 + v29, v30);
  }

  v32 = v2[20];
  if (!v46(v4 + v32, 1, v6))
  {
    (*(v47 + 8))(v4 + v32, v6);
  }

  v33 = v2[22];
  if (!v46(v4 + v33, 1, v6))
  {
    (*(v47 + 8))(v4 + v33, v6);
  }

  v34 = v2[23];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  (*(*(v35 - 8) + 8))(v4 + v34, v35);
  v36 = v4 + v2[24];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v38 = *(v47 + 8);
    v38(v36, v6);
    v38(v36 + *(v37 + 36), v6);
  }

  v39 = type metadata accessor for WidgetPredictedPlayState(0);
  v40 = *(v39 + 20);
  if (!v46(v36 + v40, 2, v6))
  {
    (*(v47 + 8))(v36 + v40, v6);
  }

  v41 = *(v39 + 24);
  v42 = sub_3E9224();
  v43 = *(v42 - 8);
  if (!(*(v43 + 48))(v36 + v41, 1, v42))
  {
    (*(v43 + 8))(v36 + v41, v42);
  }

  return _swift_deallocObject(v1, v48 + v49, v3 | 7);
}

void sub_2CB600(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s7EpisodeVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2C8E28(a1, v6, a2);
}

uint64_t sub_2CB680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2CB6C8()
{
  v1 = sub_3E7784();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_3ECF74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v9 = v0 + v3;

  v10 = *(v0 + v3 + 32);
  if (v10 != 255)
  {
    sub_F2248(*(v9 + 16), *(v9 + 24), v10);
  }

  v11 = *(v9 + 64);
  if (v11 != 255)
  {
    sub_F2260(*(v9 + 56), v11);
  }

  v12 = *(v9 + 80);
  if (v12 != 255)
  {
    sub_F2260(*(v9 + 72), v12);
  }

  v13 = *(v9 + 96);
  if (v13 != 255)
  {
    sub_F2260(*(v9 + 88), v13);
  }

  v14 = *(v9 + 112);
  if (v14 != 255)
  {
    sub_F2260(*(v9 + 104), v14);
  }

  v15 = *(v9 + 128);
  if (v15 != 255)
  {
    sub_F2260(*(v9 + 120), v15);
  }

  v16 = (v3 + v4 + v7) & ~v7;
  v17 = *(v1 + 44);
  v18 = sub_3E7624();
  (*(*(v18 - 8) + 8))(v9 + v17, v18);

  (*(v6 + 8))(v0 + v16, v5);

  return _swift_deallocObject(v0, v16 + v8, v2 | v7 | 7);
}

uint64_t sub_2CB8E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3E7784() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_3ECF74() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2400C;

  return sub_2C96CC(a1, v1 + 16, v1 + v6, v1 + v9);
}

uint64_t sub_2CBA20()
{
  v1 = sub_3E7784();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v29 = sub_3ECF74();
  v5 = *(v29 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v30 = v0;
  v8 = v0 + v3;

  v9 = *(v0 + v3 + 32);
  if (v9 != 255)
  {
    sub_F2248(*(v8 + 16), *(v8 + 24), v9);
  }

  v10 = *(v8 + 64);
  if (v10 != 255)
  {
    sub_F2260(*(v8 + 56), v10);
  }

  v11 = v3 + v4 + v6;
  v12 = *(v8 + 80);
  if (v12 != 255)
  {
    sub_F2260(*(v8 + 72), v12);
  }

  v13 = v11 & ~v6;
  v14 = *(v8 + 96);
  if (v14 != 255)
  {
    sub_F2260(*(v8 + 88), v14);
  }

  v15 = *(v8 + 112);
  if (v15 != 255)
  {
    sub_F2260(*(v8 + 104), v15);
  }

  v31 = v6;
  v32 = v4;
  v16 = (v7 + v2 + v13) & ~v2;
  v17 = *(v8 + 128);
  if (v17 != 255)
  {
    sub_F2260(*(v8 + 120), v17);
  }

  v18 = *(v1 + 44);
  v19 = sub_3E7624();
  v20 = *(*(v19 - 8) + 8);
  v20(v8 + v18, v19);

  (*(v5 + 8))(v30 + v13, v29);
  v21 = v30 + v16;

  v22 = *(v30 + v16 + 32);
  if (v22 != 255)
  {
    sub_F2248(*(v21 + 16), *(v21 + 24), v22);
  }

  v23 = *(v21 + 64);
  if (v23 != 255)
  {
    sub_F2260(*(v21 + 56), v23);
  }

  v24 = *(v21 + 80);
  if (v24 != 255)
  {
    sub_F2260(*(v21 + 72), v24);
  }

  v25 = *(v21 + 96);
  if (v25 != 255)
  {
    sub_F2260(*(v21 + 88), v25);
  }

  v26 = *(v21 + 112);
  if (v26 != 255)
  {
    sub_F2260(*(v21 + 104), v26);
  }

  v27 = *(v21 + 128);
  if (v27 != 255)
  {
    sub_F2260(*(v21 + 120), v27);
  }

  v20(v21 + *(v1 + 44), v19);

  return _swift_deallocObject(v30, v16 + v32, v2 | v31 | 7);
}

uint64_t sub_2CBD20(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_3E7784() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(sub_3ECF74() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v6 + v10) & ~v6;
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2400C;

  return sub_2C8FBC(a1, v1 + 16, v1 + v7, v1 + v10, v1 + v11);
}

uint64_t sub_2CBEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E89A4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2CBF3C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_3E89A4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2CBFE0()
{
  v0 = sub_3E89A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_2CC04C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3E8C04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2CC10C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_3E8C04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2CC1D0()
{
  sub_2CC254();
  if (v0 <= 0x3F)
  {
    sub_3E8C04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2CC254()
{
  if (!qword_4FD4A0)
  {
    _s7EpisodeVMa();
    v0 = sub_3ED674();
    if (!v1)
    {
      atomic_store(v0, &qword_4FD4A0);
    }
  }
}

uint64_t sub_2CC2AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v294 = a5;
  v295 = a4;
  v296 = a3;
  v266 = a6;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF340);
  __chkstk_darwin(v262);
  v263 = &v256 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v261 = &v256 - v10;
  v288 = _s7EpisodeVMa();
  __chkstk_darwin(v288);
  v303 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E5F84();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v265 = &v256 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v264 = &v256 - v16;
  __chkstk_darwin(v17);
  v257 = &v256 - v18;
  __chkstk_darwin(v19);
  v259 = &v256 - v20;
  __chkstk_darwin(v21);
  v304 = &v256 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v23 - 8);
  v297 = &v256 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v25 - 8);
  v307 = &v256 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v27 - 8);
  v311 = &v256 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v256 - v30;
  v291 = sub_3E5FC4();
  v290 = *(v291 - 8);
  __chkstk_darwin(v291);
  v279 = &v256 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_3E70B4();
  v277 = *(v280 - 8);
  __chkstk_darwin(v280);
  v281 = &v256 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_3E6EC4();
  __chkstk_darwin(v34 - 8);
  v278 = &v256 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v36 - 8);
  v38 = &v256 - v37;
  v302 = sub_3E7CB4();
  v301 = *(v302 - 8);
  __chkstk_darwin(v302);
  v300 = &v256 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v40 - 8);
  v258 = &v256 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v260 = &v256 - v43;
  __chkstk_darwin(v44);
  v313 = &v256 - v45;
  __chkstk_darwin(v46);
  v306 = &v256 - v47;
  __chkstk_darwin(v48);
  v310 = &v256 - v49;
  __chkstk_darwin(v50);
  v52 = &v256 - v51;
  __chkstk_darwin(v53);
  v55 = &v256 - v54;
  v57 = __chkstk_darwin(v56);
  v289 = v13;
  v58 = *(v13 + 56);
  v299 = &v256 - v59;
  v58(v57);
  v298 = v55;
  v305 = v12;
  v308 = v13 + 56;
  v309 = v58;
  (v58)(v55, 1, 1, v12);
  v60 = [a1 playState];
  [a1 duration];
  if (v60 >= 3)
  {
    goto LABEL_71;
  }

  v62 = v61;
  [a1 *off_4C3090[v60]];
  v64 = v63;
  v292 = a2;
  v65 = sub_3E8BA4();
  v67 = v66;
  v69 = v68;
  v70 = ~v68;
  v314 = a1;
  v71 = sub_3EDF44();
  v312 = v31;
  if (!v70)
  {
    if (v73 == -1)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_10EFE8(v71, v72, v73);
LABEL_11:
    LODWORD(v293) = 0;
    v82 = v302;
    v83 = v301;
    v84 = v300;
    v78 = v299;
    v79 = v298;
    goto LABEL_12;
  }

  if (v73 == -1)
  {
    v71 = v65;
    v72 = v67;
    v73 = v69;
    goto LABEL_10;
  }

  v74 = v71;
  v75 = v72;
  v76 = v73;
  v77 = sub_3E9594();
  sub_10EFE8(v74, v75, v76);
  sub_10EFE8(v65, v67, v69);
  if ((v77 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  LODWORD(v293) = sub_3E8B74();
  sub_3E8BC4();
  v78 = v299;
  sub_FCF8(v299, &qword_4EF460);
  sub_FACC(v52, v78, &qword_4EF460);
  sub_3E8BD4();
  v79 = v298;
  sub_FCF8(v298, &qword_4EF460);
  sub_FACC(v52, v79, &qword_4EF460);
  v80 = sub_3E8BF4();
  if (v81)
  {
    v82 = v302;
    v83 = v301;
    v84 = v300;
  }

  else
  {
    v190 = *&v80;
    *&v191 = COERCE_DOUBLE(sub_3E8B94());
    v82 = v302;
    v83 = v301;
    v84 = v300;
    if ((v192 & 1) == 0)
    {
      v62 = v190;
      v64 = *&v191;
    }
  }

LABEL_12:
  sub_FBD0(v296, v38, &qword_4EF468);
  v85 = *(v83 + 48);
  if (v85(v38, 1, v82) == 1)
  {
    *v84 = LOBYTE(v293) & 1;
    (*(v83 + 104))(v84, enum case for EyebrowBuilder.ListContext.upNextWidget(_:), v82);
    if (v85(v38, 1, v82) != 1)
    {
      sub_FCF8(v38, &qword_4EF468);
    }
  }

  else
  {
    (*(v83 + 32))(v84, v38, v82);
  }

  v86 = v84;
  v87 = v314;
  sub_2CEEF0(v86, &v321);
  v286 = *(&v321 + 1);
  v287 = v321;
  v285 = v322;
  v284 = *(&v322 + 1);
  v283 = v323;
  v282 = v324;
  sub_FBD0(v294, &v318, &qword_4FF900);
  v88 = v319;
  if (v319)
  {
    v89 = v320;
    v90 = __swift_project_boxed_opaque_existential_1(&v318, v319);
    *(&v322 + 1) = v88;
    v323 = *(*(v89 + 8) + 8);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v321);
    (*(*(v88 - 8) + 16))(boxed_opaque_existential_0Tm, v90, v88);
    __swift_destroy_boxed_opaque_existential_1Tm(&v318);
  }

  else
  {
    sub_FCF8(&v318, &qword_4FF900);
    v321 = 0u;
    v322 = 0u;
    v323 = 0;
  }

  v92 = v305;
  sub_FBD0(&v321, &v318, &qword_4FDA08);
  v93 = v319;
  sub_FCF8(&v318, &qword_4FDA08);
  if (!v93)
  {
    v94 = v87;
    sub_3E6EA4();
    (*(v277 + 104))(v281, enum case for WidgetEpisodePlayList.listenNow(_:), v280);
    v319 = sub_3E7094();
    v320 = sub_2CFB10(&qword_4FF908, &type metadata accessor for PlayPauseWidgetIntent);
    __swift_allocate_boxed_opaque_existential_0Tm(&v318);
    sub_3E7084();
    sub_51F9C(&v318, &v321, &qword_4FDA08);
  }

  v95 = sub_3EDF44();
  if (v97 == 0xFF)
  {
    v98 = v279;
    sub_3E5FB4();
    v281 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v280 = v99;
    (*(v290 + 8))(v98, v291);
    LODWORD(v279) = 2;
  }

  else
  {
    LODWORD(v279) = v97;
    v280 = v96;
    v281 = v95;
  }

  v100 = v311;
  v101 = [v87 podcast];
  if (v101 && (v102 = v101, v103 = [v101 title], v102, v103))
  {
    v104 = sub_3ED244();
  }

  else
  {
    v103 = [objc_opt_self() mainBundle];
    v255._countAndFlagsBits = 0xE000000000000000;
    v325._countAndFlagsBits = 0x44454C5449544E55;
    v325._object = 0xED0000574F48535FLL;
    v333.value._countAndFlagsBits = 0;
    v333.value._object = 0;
    v106.super.isa = v103;
    v341._countAndFlagsBits = 0;
    v341._object = 0xE000000000000000;
    v104 = sub_3E5A74(v325, v333, v106, v341, v255);
  }

  v278 = v104;
  v277 = v105;

  v107 = [v87 bestTitle];
  if (v107)
  {
    v108 = v107;
    v109 = sub_3ED244();
  }

  else
  {
    v108 = [objc_opt_self() mainBundle];
    v326._countAndFlagsBits = 0xD000000000000010;
    v255._countAndFlagsBits = 0xE000000000000000;
    v326._object = 0x800000000042CBD0;
    v334.value._countAndFlagsBits = 0;
    v334.value._object = 0;
    v111.super.isa = v108;
    v342._countAndFlagsBits = 0;
    v342._object = 0xE000000000000000;
    v109 = sub_3E5A74(v326, v334, v111, v342, v255);
  }

  v276 = v109;
  v275 = v110;

  v112 = sub_3E7784();
  v113 = *(v112 - 8);
  v114 = *(v113 + 56);
  v115 = v113 + 56;
  v114(v312, 1, 1, v112);
  v116 = [v314 podcast];
  v274 = v114;
  if (v116)
  {
    v117 = v116;
    sub_3EDF94();
  }

  else
  {
    v114(v100, 1, 1, v112);
  }

  v118 = v310;
  v119 = v295;
  v120 = v314;
  [v314 pubDate];
  sub_3E5E24();
  v309(v118, 0, 1, v92);
  v121 = [v120 bestSummary];
  v273 = v115;
  if (v121)
  {
    v122 = v121;
    v272 = sub_3ED244();
    v271 = v123;
  }

  else
  {
    v272 = 0;
    v271 = 0;
  }

  v124 = v119;
  v125 = v314;
  sub_2CF1E8(v124, v307);
  v291 = *&v62;
  sub_FBD0(v78, v306, &qword_4EF460);
  sub_FBD0(v79, v313, &qword_4EF460);
  sub_3EDF24();
  sub_3EDF34();
  LODWORD(v290) = [v125 isVisuallyPlayed];
  sub_FBD0(&v321, &v318, &qword_4FDA08);
  sub_3E5F64();
  v126 = v288;
  v268 = *(v288 + 44);
  v127 = v303;
  v128 = v309;
  v309(v303 + v268, 1, 1, v92);
  v129 = v126[12];
  v270 = v126[13];
  v130 = v92;
  v131 = (v127 + v129);
  v132 = v274;
  v274(v127 + v270, 1, 1, v112);
  v269 = v126[14];
  v132(v127 + v269, 1, 1, v112);
  *(v127 + v126[15]) = 0;
  v133 = v126[16];
  v134 = sub_3E5DC4();
  (*(*(v134 - 8) + 56))(v127 + v133, 1, 1, v134);
  v267 = v126[17];
  v273 = v126[20];
  v128(v127 + v273, 1, 1, v130);
  v135 = v126[22];
  v128(v127 + v135, 1, 1, v130);
  v136 = v126[23];
  v317 = 0;
  memset(v316, 0, sizeof(v316));
  sub_FBD0(v316, v315, &qword_4FDA08);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA08);
  sub_3E8314();
  sub_FCF8(v316, &qword_4FDA08);
  v137 = v280;
  *v127 = v281;
  *(v127 + 8) = v137;
  *(v127 + 16) = v279;
  v138 = v286;
  *(v127 + 24) = v287;
  *(v127 + 32) = v138;
  *(v127 + 40) = v285;
  v139 = v283;
  *(v127 + 48) = v284;
  *(v127 + 56) = v139;
  *(v127 + 64) = v282;
  v140 = v277;
  *(v127 + 72) = v278;
  *(v127 + 80) = v140;
  v141 = v275;
  *(v127 + 88) = v276;
  *(v127 + 96) = v141;
  sub_B8464(v310, v127 + v268, &qword_4EF460);
  v142 = v271;
  *v131 = v272;
  v131[1] = v142;
  sub_B8464(v312, v127 + v270, &qword_4F1D50);
  v143 = v306;
  v144 = v307;
  sub_B8464(v311, v127 + v269, &qword_4F1D50);
  sub_B8464(v144, v127 + v133, &unk_4E9EE0);
  v145 = LOBYTE(v293);
  *(v127 + v267) = LOBYTE(v293) & 1;
  *(v127 + v126[21]) = v290;
  v146 = v291;
  if (v62 <= 0.0)
  {
    v146 = 0;
  }

  v147 = v127 + v126[18];
  v148 = v127 + v126[19];
  *v147 = v146;
  *(v147 + 8) = v62 <= 0.0;
  *v148 = v64;
  *(v148 + 8) = 0;
  sub_B8464(v143, v127 + v273, &qword_4EF460);
  sub_B8464(v313, v127 + v135, &qword_4EF460);
  sub_FBD0(&v318, v316, &qword_4FDA08);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F0);
  (*(*(v149 - 8) + 8))(v127 + v136, v149);
  sub_FBD0(v316, v315, &qword_4FDA08);
  sub_3E8314();
  sub_FCF8(v316, &qword_4FDA08);
  v150 = v127 + v126[24];
  v151 = v289;
  if (v62 <= 0.0)
  {
    goto LABEL_45;
  }

  if ((v145 & 1) == 0)
  {
    v170 = v264;
    sub_3E5F64();
    v171 = v265;
    sub_3E5EE4();
    sub_2CFB10(&qword_4FEF08, &type metadata accessor for Date);
    v155 = v305;
    v60 = v305;
    v172 = sub_3ED164();
    if (v64 >= v62)
    {
      if (!v290)
      {
        if (v172)
        {
          v224 = v151[4];
          v225 = v261;
          v224(v261, v264, v155);
          v226 = v262;
          v224((v225 + *(v262 + 48)), v265, v155);
          v227 = v263;
          sub_FBD0(v225, v263, &qword_4FF340);
          v228 = *(v226 + 48);
          v224(v150, v227, v155);
          v229 = v151[1];
          v229(v227 + v228, v155);
          sub_FACC(v225, v227, &qword_4FF340);
          v230 = *(v226 + 48);
          v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
          v224((v150 + *(v231 + 36)), (v227 + v230), v155);
          v229(v227, v155);
          (*(*(v231 - 8) + 56))(v150, 0, 1, v231);
          v159 = type metadata accessor for WidgetPredictedPlayState(0);
          v309(v150 + v159[5], 1, 2, v155);
          sub_3E9204();
          v232 = [objc_opt_self() mainBundle];
          v255._countAndFlagsBits = 0xE000000000000000;
          v331._object = 0x800000000042C800;
          v331._countAndFlagsBits = 0xD000000000000013;
          v339.value._countAndFlagsBits = 0;
          v339.value._object = 0;
          v233.super.isa = v232;
          v347._countAndFlagsBits = 0;
          v347._object = 0xE000000000000000;
          v309 = sub_3E5A74(v331, v339, v233, v347, v255);
          v166 = v234;

          sub_FCF8(v294, &qword_4FF900);
          v235 = sub_3ECF74();
          (*(*(v235 - 8) + 8))(v295, v235);
          sub_FCF8(v296, &qword_4EF468);
          v236 = sub_3E8C04();
          (*(*(v236 - 8) + 8))(v292, v236);
          v229(v304, v155);
          goto LABEL_60;
        }

        goto LABEL_68;
      }

      if (v172)
      {
        v193 = v151[4];
        v194 = v261;
        v193(v261, v264, v155);
        v195 = v262;
        v193((v194 + *(v262 + 48)), v265, v155);
        v196 = v263;
        sub_FBD0(v194, v263, &qword_4FF340);
        v197 = *(v195 + 48);
        v193(v150, v196, v155);
        v198 = v151[1];
        v198(v196 + v197, v155);
        sub_FACC(v194, v196, &qword_4FF340);
        v199 = *(v195 + 48);
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
        v193((v150 + *(v200 + 36)), (v196 + v199), v155);
        v198(v196, v155);
        (*(*(v200 - 8) + 56))(v150, 0, 1, v200);
        v201 = type metadata accessor for WidgetPredictedPlayState(0);
        v309(v150 + *(v201 + 20), 1, 2, v155);
        sub_3E9204();
        v202 = [objc_opt_self() mainBundle];
        v255._countAndFlagsBits = 0xE000000000000000;
        v329._countAndFlagsBits = 0xD000000000000015;
        v329._object = 0x800000000042C820;
        v337.value._countAndFlagsBits = 0;
        v337.value._object = 0;
        v203.super.isa = v202;
        v345._countAndFlagsBits = 0;
        v345._object = 0xE000000000000000;
        v309 = sub_3E5A74(v329, v337, v203, v345, v255);
        v166 = v204;

        sub_FCF8(v294, &qword_4FF900);
        v205 = sub_3ECF74();
        (*(*(v205 - 8) + 8))(v295, v205);
        sub_FCF8(v296, &qword_4EF468);
        v206 = sub_3E8C04();
        (*(*(v206 - 8) + 8))(v292, v206);
        v198(v304, v155);
LABEL_65:
        sub_FCF8(&v318, &qword_4FDA08);
        sub_FCF8(v297, &qword_4EF470);
        sub_FCF8(v313, &qword_4EF460);
        sub_FCF8(v306, &qword_4EF460);
        sub_FCF8(v307, &unk_4E9EE0);
        sub_FCF8(v310, &qword_4EF460);
        sub_FCF8(v311, &qword_4F1D50);
        sub_FCF8(v312, &qword_4F1D50);
        (*(v301 + 8))(v300, v302);
        sub_FCF8(v298, &qword_4EF460);
        sub_FCF8(v299, &qword_4EF460);
        *(v150 + *(v201 + 28)) = xmmword_414E40;
        v238 = (v201 + 32);
        goto LABEL_62;
      }
    }

    else
    {
      if (v172)
      {
        v173 = v150;
        v293 = v64;
        v174 = v151[4];
        v175 = v261;
        v174(v261, v170, v155);
        v176 = v262;
        v174((v175 + *(v262 + 48)), v171, v155);
        v177 = v263;
        sub_FBD0(v175, v263, &qword_4FF340);
        v178 = *(v176 + 48);
        v174(v150, v177, v155);
        v290 = v151[1];
        (v290)(v177 + v178, v155);
        sub_FACC(v175, v177, &qword_4FF340);
        v179 = *(v176 + 48);
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
        v174((v150 + *(v180 + 36)), (v177 + v179), v155);
        v181 = v290;
        (v290)(v177, v155);
        (*(*(v180 - 8) + 56))(v150, 0, 1, v180);
        v159 = type metadata accessor for WidgetPredictedPlayState(0);
        v182 = v159[5];
        sub_3E5EE4();
        v183 = v173 + v182;
        v150 = v173;
        v309(v183, 0, 2, v155);
        sub_3E9204();
        v184 = [objc_opt_self() mainBundle];
        v255._countAndFlagsBits = 0xE000000000000000;
        v328._object = 0x800000000042C800;
        v328._countAndFlagsBits = 0xD000000000000013;
        v336.value._countAndFlagsBits = 0;
        v336.value._object = 0;
        v185.super.isa = v184;
        v344._countAndFlagsBits = 0;
        v344._object = 0xE000000000000000;
        v309 = sub_3E5A74(v328, v336, v185, v344, v255);
        v166 = v186;

        sub_FCF8(v294, &qword_4FF900);
        v187 = sub_3ECF74();
        (*(*(v187 - 8) + 8))(v295, v187);
        sub_FCF8(v296, &qword_4EF468);
        v188 = sub_3E8C04();
        (*(*(v188 - 8) + 8))(v292, v188);
        v189 = v304;
LABEL_49:
        v181(v189, v155);
LABEL_60:
        sub_FCF8(&v318, &qword_4FDA08);
        sub_FCF8(v297, &qword_4EF470);
        sub_FCF8(v313, &qword_4EF460);
        sub_FCF8(v306, &qword_4EF460);
        v169 = v307;
        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v152 = v144;
  v153 = v260;
  sub_FBD0(v143, v260, &qword_4EF460);
  v154 = v151[6];
  v155 = v305;
  if (v154(v153, 1, v305) == 1)
  {
LABEL_44:
    sub_FCF8(v153, &qword_4EF460);
    v144 = v152;
LABEL_45:
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
    (*(*(v158 - 8) + 56))(v150, 1, 1, v158);
    v159 = type metadata accessor for WidgetPredictedPlayState(0);
    v160 = v305;
    v309(v150 + v159[5], 1, 2, v305);
    v161 = v159[6];
    v162 = sub_3E9224();
    (*(*(v162 - 8) + 56))(v150 + v161, 1, 1, v162);
    v163 = [objc_opt_self() mainBundle];
    v255._countAndFlagsBits = 0xE000000000000000;
    v327._object = 0x800000000042C800;
    v327._countAndFlagsBits = 0xD000000000000013;
    v335.value._countAndFlagsBits = 0;
    v335.value._object = 0;
    v164.super.isa = v163;
    v343._countAndFlagsBits = 0;
    v343._object = 0xE000000000000000;
    v309 = sub_3E5A74(v327, v335, v164, v343, v255);
    v166 = v165;

    sub_FCF8(v294, &qword_4FF900);
    v167 = sub_3ECF74();
    (*(*(v167 - 8) + 8))(v295, v167);
    sub_FCF8(v296, &qword_4EF468);
    v168 = sub_3E8C04();
    (*(*(v168 - 8) + 8))(v292, v168);
    (v151[1])(v304, v160);
    sub_FCF8(&v318, &qword_4FDA08);
    sub_FCF8(v297, &qword_4EF470);
    sub_FCF8(v313, &qword_4EF460);
    sub_FCF8(v143, &qword_4EF460);
    v169 = v144;
LABEL_61:
    sub_FCF8(v169, &unk_4E9EE0);
    sub_FCF8(v310, &qword_4EF460);
    sub_FCF8(v311, &qword_4F1D50);
    sub_FCF8(v312, &qword_4F1D50);
    (*(v301 + 8))(v300, v302);
    sub_FCF8(v298, &qword_4EF460);
    sub_FCF8(v299, &qword_4EF460);
    v237 = (v150 + v159[7]);
    v238 = v159 + 8;
    *v237 = 0;
    v237[1] = 0;
LABEL_62:
    v239 = (v150 + *v238);
    *v239 = v309;
    v239[1] = v166;
    sub_2CFAAC(v303, v266);
    return sub_FCF8(&v321, &qword_4FDA08);
  }

  v293 = *&v150;
  v156 = v151[4];
  v157 = v259;
  v156(v259, v153, v155);
  v153 = v258;
  sub_FBD0(v313, v258, &qword_4EF460);
  if (v154(v153, 1, v155) == 1)
  {
    (v151[1])(v157, v155);
    v150 = *&v293;
    v152 = v307;
    goto LABEL_44;
  }

  v207 = v257;
  v156(v257, v153, v155);
  sub_2CFB10(&qword_4FEF08, &type metadata accessor for Date);
  if (sub_3ED154())
  {
    v60 = v155;
    if (sub_3ED164())
    {
      v208 = v151[2];
      v209 = v261;
      v208(v261, v157, v155);
      v210 = v262;
      v208((v209 + *(v262 + 48)), v207, v155);
      v211 = v263;
      sub_FBD0(v209, v263, &qword_4FF340);
      v212 = *(v210 + 48);
      v156(*&v293, v211, v155);
      v213 = v151[1];
      v213(v211 + v212, v155);
      sub_FACC(v209, v211, &qword_4FF340);
      v214 = *(v210 + 48);
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
      v216 = *&v293;
      v156((*&v293 + *(v215 + 36)), v211 + v214, v155);
      v213(v211, v155);
      v181 = v213;
      (*(*(v215 - 8) + 56))(v216, 0, 1, v215);
      v159 = type metadata accessor for WidgetPredictedPlayState(0);
      v309(v216 + v159[5], 2, 2, v155);
      v217 = v304;
      v218 = v257;
      sub_3E5E54();
      sub_3E9204();
      v219 = [objc_opt_self() mainBundle];
      v255._countAndFlagsBits = 0xE000000000000000;
      v330._countAndFlagsBits = 0xD000000000000014;
      v330._object = 0x800000000042C840;
      v338.value._countAndFlagsBits = 0;
      v338.value._object = 0;
      v220.super.isa = v219;
      v346._countAndFlagsBits = 0;
      v346._object = 0xE000000000000000;
      v309 = sub_3E5A74(v330, v338, v220, v346, v255);
      v166 = v221;

      sub_FCF8(v294, &qword_4FF900);
      v222 = sub_3ECF74();
      (*(*(v222 - 8) + 8))(v295, v222);
      sub_FCF8(v296, &qword_4EF468);
      v223 = sub_3E8C04();
      (*(*(v223 - 8) + 8))(v292, v223);
      v213(v218, v155);
      v213(v259, v155);
      v189 = v217;
      v150 = v216;
      goto LABEL_49;
    }

    goto LABEL_69;
  }

  v241 = v264;
  sub_3E5F64();
  v242 = v265;
  sub_3E5EE4();
  v60 = v155;
  if (sub_3ED164())
  {
    v243 = v261;
    v156(v261, v241, v155);
    v244 = v262;
    v156((v243 + *(v262 + 48)), v242, v155);
    v245 = v263;
    sub_FBD0(v243, v263, &qword_4FF340);
    v246 = *(v244 + 48);
    v150 = *&v293;
    v156(*&v293, v245, v155);
    v247 = v151[1];
    v247(v245 + v246, v155);
    sub_FACC(v243, v245, &qword_4FF340);
    v248 = *(v244 + 48);
    v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD9F8);
    v156((v150 + *(v249 + 36)), v245 + v248, v155);
    v247(v245, v155);
    (*(*(v249 - 8) + 56))(v150, 0, 1, v249);
    v201 = type metadata accessor for WidgetPredictedPlayState(0);
    v309(v150 + *(v201 + 20), 1, 2, v155);
    sub_3E9204();
    v250 = [objc_opt_self() mainBundle];
    v255._countAndFlagsBits = 0xE000000000000000;
    v332._countAndFlagsBits = 0xD000000000000015;
    v332._object = 0x800000000042C820;
    v340.value._countAndFlagsBits = 0;
    v340.value._object = 0;
    v251.super.isa = v250;
    v348._countAndFlagsBits = 0;
    v348._object = 0xE000000000000000;
    v309 = sub_3E5A74(v332, v340, v251, v348, v255);
    v166 = v252;

    sub_FCF8(v294, &qword_4FF900);
    v253 = sub_3ECF74();
    (*(*(v253 - 8) + 8))(v295, v253);
    sub_FCF8(v296, &qword_4EF468);
    v254 = sub_3E8C04();
    (*(*(v254 - 8) + 8))(v292, v254);
    v247(v257, v155);
    v247(v259, v155);
    v247(v304, v155);
    goto LABEL_65;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  type metadata accessor for MTEpisodePlayState(0);
  *&v321 = v60;
  result = sub_3EE854();
  __break(1u);
  return result;
}

uint64_t sub_2CEEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v5 = sub_3E7D14();
  v28 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E7CB4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_75918();
  v36 = v32;
  v37 = &protocol witness table for MTEpisode;
  v35 = v2;
  v29 = *(v10 + 16);
  v29(v12, a1, v9);
  v27 = *(v6 + 104);
  v27(v8, enum case for EyebrowBuilder.Style.default(_:), v5);
  sub_3E7D44();
  swift_allocObject();
  v13 = v2;
  sub_3E7D34();
  v14 = sub_3E7D24();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v15)
  {
    v17 = v15;
  }

  v33 = v17;
  v34 = v16;
  v31 = sub_3E7CD4();
  v36 = v32;
  v37 = &protocol witness table for MTEpisode;
  v35 = v13;
  v29(v12, v30, v9);
  v27(v8, enum case for EyebrowBuilder.Style.short(_:), v28);
  swift_allocObject();
  v18 = v13;
  sub_3E7D34();
  v19 = sub_3E7D24();
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v23 = sub_3E7CD4();

  v25 = v33;
  *a2 = v34;
  *(a2 + 8) = v25;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23 & 1;
  return result;
}

uint64_t sub_2CF1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a1;
  v5 = sub_3E5DC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3ECF74();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v74 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E8B34();
  v71 = *(v10 - 8);
  v72 = v10;
  __chkstk_darwin(v10);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E74D4();
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v17 - 8);
  v60 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  __chkstk_darwin(v22);
  v24 = &v59 - v23;
  v26 = __chkstk_darwin(v25);
  v28 = &v59 - v27;
  v75 = *(v6 + 56);
  v76 = v6 + 56;
  v75(&v59 - v27, 1, 1, v5, v26);
  v29 = [v3 podcast];
  v73 = a2;
  v64 = v6;
  if (v29)
  {
    v30 = v5;
    v31 = v29;
    v32 = [v29 storeCollectionId];

    v33 = objc_opt_self();
    if ([v33 isNotEmpty:v32])
    {
      if ([v33 isNotEmpty:{objc_msgSend(v3, "storeTrackId")}])
      {
        v77 = [v3 storeTrackId];
        v65 = sub_3EE7A4();
        v34 = [objc_opt_self() productURLForStoreCollectionId:v32 storeTrackId:{objc_msgSend(v3, "storeTrackId")}];
        if (v34)
        {
          v35 = v34;
          sub_3E5D44();

          v36 = 0;
        }

        else
        {
          v36 = 1;
        }

        v5 = v30;
        v6 = v64;
        (v75)(v24, v36, 1, v30);
        sub_51F9C(v24, v28, &unk_4E9EE0);
      }

      else
      {
        v65 = 0;
        v5 = v30;
        v6 = v64;
      }
    }

    else
    {
      v65 = 0;
      v5 = v30;
    }
  }

  else
  {
    v65 = 0;
  }

  sub_FBD0(v28, v21, &unk_4E9EE0);
  v37 = v5;
  v66 = *(v6 + 48);
  v38 = v66(v21, 1, v5);
  sub_FCF8(v21, &unk_4E9EE0);
  if (v38 == 1)
  {
    v39 = [v3 podcast];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 uuid];

      if (v41)
      {
        sub_3ED244();
      }
    }

    v42 = [v3 uuid];
    if (v42)
    {
      v43 = v42;
      sub_3ED244();
    }

    v44 = v61;
    sub_3E74C4();
    v46 = v62;
    v45 = v63;
    (*(v62 + 16))(v14, v44, v63);
    sub_3E7494();
    swift_allocObject();
    sub_3E7484();
    sub_3E7524();
    v47 = v60;
    sub_3E7514();

    (*(v46 + 8))(v44, v45);
    sub_51F9C(v47, v28, &unk_4E9EE0);
  }

  v48 = v68;
  v49 = v74;
  v50 = v69;
  (*(v68 + 16))(v74, v67, v69);
  v51 = (*(v48 + 88))(v49, v50);
  if (v51 == enum case for WidgetFamily.systemSmall(_:))
  {
    v52 = v70;
  }

  else
  {
    v52 = v70;
    if (v51 != enum case for WidgetFamily.systemMedium(_:) && v51 != enum case for WidgetFamily.systemLarge(_:) && v51 != enum case for WidgetFamily.systemExtraLarge(_:) && v51 != enum case for WidgetFamily.accessoryCorner(_:) && v51 != enum case for WidgetFamily.accessoryCircular(_:) && v51 != enum case for WidgetFamily.accessoryRectangular(_:) && v51 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v48 + 8))(v74, v50);
    }
  }

  sub_3E8244();
  sub_3E8224();
  sub_3E8B24();
  v53 = 1;
  v54 = v66(v28, 1, v37);
  v55 = v73;
  if (!v54)
  {
    v56 = v64;
    v57 = v59;
    (*(v64 + 16))(v59, v28, v37);
    sub_3E5CB4();
    (*(v56 + 8))(v57, v37);
    v53 = 0;
  }

  (*(v71 + 8))(v52, v72);
  (v75)(v55, v53, 1, v37);
  return sub_FCF8(v28, &unk_4E9EE0);
}

uint64_t sub_2CFAAC(uint64_t a1, uint64_t a2)
{
  v4 = _s7EpisodeVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2CFB10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2CFB68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3ECF74();
  __chkstk_darwin(v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v9 - 8);
  v11 = v20 - v10;
  v12 = sub_3E8C04();
  v13 = __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a2, v13);
  v17 = sub_3E7CB4();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = a1;
  sub_3ED004();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  return sub_2CC2AC(v18, v15, v11, v8, v20, a3);
}

uint64_t sub_2CFD4C@<X0>(_BYTE *a1@<X8>)
{
  sub_2A6A80();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t UpNextWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF910);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF918);
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF920);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  __chkstk_darwin(v9);
  v33 = &v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF928);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  __chkstk_darwin(v12);
  v36 = &v32 - v14;
  sub_3E8234();
  v47 = &type metadata for PersistedUpNextLoader;
  v48 = &off_4C30C8;
  v44 = sub_3E9264();
  v45 = &protocol witness table for CachingImageContentProvider;
  __swift_allocate_boxed_opaque_existential_0Tm(&v42);
  sub_3E9254();
  v46 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF930);
  sub_2D05CC();
  sub_2D06DC();
  sub_3ECFA4();
  sub_3EABC4();
  v15 = sub_886BC(&qword_4FF948, &qword_4FF910);
  sub_3EAD84();

  (*(v2 + 8))(v4, v1);
  sub_3EABC4();
  v42 = v1;
  v43 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v33;
  v17 = v34;
  sub_3EAD64();

  v19 = v17;
  (*(v35 + 8))(v8, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF618);
  v20 = sub_3ECF74();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_3F52F0;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, enum case for WidgetFamily.systemSmall(_:), v20);
  v26(v25 + v22, enum case for WidgetFamily.systemMedium(_:), v20);
  v26(v25 + 2 * v22, enum case for WidgetFamily.systemLarge(_:), v20);
  v26(v25 + 3 * v22, enum case for WidgetFamily.systemExtraLarge(_:), v20);
  v42 = v19;
  v43 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v29 = v36;
  v28 = v37;
  sub_3EAD74();

  (*(v38 + 8))(v18, v28);
  v42 = v28;
  v43 = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v39;
  sub_3EAD94();
  return (*(v40 + 8))(v29, v30);
}

uint64_t sub_2D0420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2B4108(a1, a2);
  v3 = type metadata accessor for EpisodeListWidgetMain();
  *(a2 + v3[5]) = 0;
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD2A0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCA8);
  swift_storeEnumTagMultiPayload();
  v6 = v3[8];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDCB0);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v3[9];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v3[10];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FD8E8);
  swift_storeEnumTagMultiPayload();
  v9 = v3[11];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF930);
  v12 = a2 + *(result + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 0;
  return result;
}

unint64_t sub_2D05CC()
{
  result = qword_4FF938;
  if (!qword_4FF938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF930);
    sub_2D0684();
    sub_886BC(&qword_4FDDA0, &qword_4FDDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF938);
  }

  return result;
}

unint64_t sub_2D0684()
{
  result = qword_4FF5F0;
  if (!qword_4FF5F0)
  {
    type metadata accessor for EpisodeListWidgetMain();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF5F0);
  }

  return result;
}

unint64_t sub_2D06DC()
{
  result = qword_4FF940;
  if (!qword_4FF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF940);
  }

  return result;
}

uint64_t sub_2D0774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF928);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FF910);
  sub_886BC(&qword_4FF948, &qword_4FF910);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2D09F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_2D0B18@<X0>(_BYTE *a1@<X8>)
{
  sub_2A6A80();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

ShelfKit::UpNextWidgetEpisode::Origin_optional __swiftcall UpNextWidgetEpisode.Origin.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B2A20;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t UpNextWidgetEpisode.Origin.rawValue.getter()
{
  v1 = 1752397168;
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
    return 0x6974634172657375;
  }
}

uint64_t sub_2D0C6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1752397168;
  v5 = 0x80000000004235A0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000000004235A0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6974634172657375;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEA00000000006E6FLL;
  }

  v8 = 1752397168;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974634172657375;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEA00000000006E6FLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_2D0D58()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_2D0DFC()
{
  sub_3ED394();
}

Swift::Int sub_2D0E8C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_2D0F38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0xE400000000000000;
  v5 = 1752397168;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000000004235A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974634172657375;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *UpNextWidgetEpisode.episode.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t UpNextWidgetEpisode.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UpNextWidgetEpisode() + 28);
  v4 = sub_3E5F84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UpNextWidgetEpisode()
{
  result = qword_4FFA10;
  if (!qword_4FFA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UpNextWidgetEpisode.init(personaUniqueIdentifier:episode:origin:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v8;
  v9 = *(type metadata accessor for UpNextWidgetEpisode() + 28);
  v10 = sub_3E5F84();
  v11 = *(*(v10 - 8) + 32);

  return v11(a6 + v9, a5, v10);
}

unint64_t sub_2D11D4()
{
  v1 = 0x65646F73697065;
  v2 = 0x6E696769726FLL;
  if (*v0 != 2)
  {
    v2 = 1702125924;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_2D1248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2D2888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2D1270(uint64_t a1)
{
  v2 = sub_2D1558();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2D12AC(uint64_t a1)
{
  v2 = sub_2D1558();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UpNextWidgetEpisode.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF950);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2D1558();
  sub_3EEA14();
  v12 = 0;
  sub_3EE734();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    sub_3E8B64();
    sub_2D22B8(&qword_4FF960, &type metadata accessor for ServerPodcastEpisode);
    sub_3EE724();
    v10[14] = *(v3 + 24);
    v10[13] = 2;
    sub_2D15AC();
    sub_3EE764();
    type metadata accessor for UpNextWidgetEpisode();
    v10[12] = 3;
    sub_3E5F84();
    sub_2D22B8(&qword_4FF970, &type metadata accessor for Date);
    sub_3EE764();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2D1558()
{
  result = qword_4FF958;
  if (!qword_4FF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF958);
  }

  return result;
}

unint64_t sub_2D15AC()
{
  result = qword_4FF968;
  if (!qword_4FF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF968);
  }

  return result;
}

void UpNextWidgetEpisode.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_3E5F84();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FF978);
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  WidgetEpisode = type metadata accessor for UpNextWidgetEpisode();
  __chkstk_darwin(WidgetEpisode);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2D1558();
  v22 = v8;
  v12 = v23;
  sub_3EE9F4();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v13 = a1;
    v14 = v20;
    v15 = v21;
    v29 = 0;
    *v11 = sub_3EE694();
    *(v11 + 1) = v16;
    v23 = v16;
    sub_3E8B64();
    v28 = 1;
    sub_2D22B8(&qword_4FF980, &type metadata accessor for ServerPodcastEpisode);
    sub_3EE684();
    *(v11 + 2) = v24;
    v26 = 2;
    sub_2D1A14();
    v17 = 0;
    sub_3EE6C4();
    v11[24] = v27;
    v25 = 3;
    sub_2D22B8(&qword_4FF990, &type metadata accessor for Date);
    sub_3EE6C4();
    (*(v14 + 8))(v22, v15);
    (*(v18 + 32))(&v11[*(WidgetEpisode + 28)], v5, v3);
    sub_2D1A68(v11, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    sub_2D1ACC(v11);
  }
}

unint64_t sub_2D1A14()
{
  result = qword_4FF988;
  if (!qword_4FF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF988);
  }

  return result;
}

uint64_t sub_2D1A68(uint64_t a1, uint64_t a2)
{
  WidgetEpisode = type metadata accessor for UpNextWidgetEpisode();
  (*(*(WidgetEpisode - 8) + 16))(a2, a1, WidgetEpisode);
  return a2;
}

uint64_t sub_2D1ACC(uint64_t a1)
{
  WidgetEpisode = type metadata accessor for UpNextWidgetEpisode();
  (*(*(WidgetEpisode - 8) + 8))(a1, WidgetEpisode);
  return a1;
}

uint64_t static UpNextWidgetEpisode.loadUpNextWidgetEpisode(forPersonaWithUniqueIdentifier:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EE444();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:kMTSharedGroupContainerId];
  if (v10)
  {
    v11 = v10;
    sub_3ED374();
    v12 = sub_3ED204();

    v13 = [v11 dataForKey:v12];

    if (v13)
    {
      v26 = v4;
      v14 = sub_3E5E04();
      v16 = v15;

      sub_3E5884();
      swift_allocObject();
      sub_3E5874();
      WidgetEpisode = type metadata accessor for UpNextWidgetEpisode();
      sub_2D22B8(&qword_4FF9A0, type metadata accessor for UpNextWidgetEpisode);
      sub_3E5844();
      if (v1)
      {

        v27 = v1;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
        if (swift_dynamicCast())
        {

          v18 = v26;
          (*(v26 + 32))(v6, v9, v3);
          v19 = swift_allocError();
          (*(v18 + 16))(v20, v6, v3);
          sub_2D1F30();
          swift_allocError();
          *v21 = v19;
          swift_willThrow();
          sub_68210(v14, v16);
          (*(v18 + 8))(v6, v3);
        }

        else
        {
          sub_68210(v14, v16);
        }
      }

      else
      {
        sub_68210(v14, v16);

        return (*(*(WidgetEpisode - 8) + 56))(a1, 0, 1, WidgetEpisode);
      }
    }

    else
    {
      v24 = type metadata accessor for UpNextWidgetEpisode();
      return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
    }
  }

  else
  {
    sub_2D1F30();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_2D1F30()
{
  result = qword_4FF998;
  if (!qword_4FF998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF998);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UpNextWidgetEpisode.storeAsUpNextWidgetEpisode()()
{
  v1 = sub_3EE454();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  sub_3E58D4();
  swift_allocObject();
  sub_3E58C4();
  type metadata accessor for UpNextWidgetEpisode();
  sub_2D22B8(&qword_4FF9A8, type metadata accessor for UpNextWidgetEpisode);
  v8 = sub_3E5894();
  v10 = v0;
  if (v0)
  {
  }

  else
  {
    v14 = v8;
    v15 = v9;

    v16 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:kMTSharedGroupContainerId];
    if (v16)
    {
      v17 = v16;
      isa = sub_3E5DF4().super.isa;
      sub_3ED374();
      v19 = sub_3ED204();

      [v17 setObject:isa forKey:v19];

      sub_68210(v14, v15);
      return;
    }

    sub_2D1F30();
    v10 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
    sub_68210(v14, v15);
  }

  v21[1] = v10;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
  if (swift_dynamicCast())
  {

    (*(v2 + 32))(v4, v7, v1);
    v11 = swift_allocError();
    (*(v2 + 16))(v12, v4, v1);
    sub_2D1F30();
    swift_allocError();
    *v13 = v11;
    swift_willThrow();
    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_2D22B8(unint64_t *a1, void (*a2)(uint64_t))
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

void static UpNextWidgetEpisode.deleteUpNextWidgetEpisode(forPersonaWithUniqueIdentifier:)()
{
  v0 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:kMTSharedGroupContainerId];
  if (v0)
  {
    v1 = v0;
    sub_3ED374();
    v2 = sub_3ED204();

    [v1 removeObjectForKey:v2];
  }

  else
  {
    sub_2D1F30();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }
}

unint64_t sub_2D23D4()
{
  result = qword_4FF9B0;
  if (!qword_4FF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FF9B0);
  }

  return result;
}

uint64_t sub_2D243C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3E5F84();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2D24FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_3E5F84();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2D25A0()
{
  sub_2D263C();
  if (v0 <= 0x3F)
  {
    sub_3E5F84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2D263C()
{
  if (!qword_4FFA20)
  {
    sub_3E8B64();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FFA20);
    }
  }
}

uint64_t sub_2D26A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2D26F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2D2748(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2D2784()
{
  result = qword_4FFA58;
  if (!qword_4FFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFA58);
  }

  return result;
}

unint64_t sub_2D27DC()
{
  result = qword_4FFA60;
  if (!qword_4FFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFA60);
  }

  return result;
}

unint64_t sub_2D2834()
{
  result = qword_4FFA68;
  if (!qword_4FFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFA68);
  }

  return result;
}

uint64_t sub_2D2888(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000000042CC30 == a2 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F73697065 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_3EE804();

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

unint64_t sub_2D29F4()
{
  result = qword_4FFA70;
  if (!qword_4FFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFA70);
  }

  return result;
}

id ErrorPresenter.__allocating_init(networkObserver:reachabilityType:airplaneModeInquiry:cellularDataInquiry:)(uint64_t a1, _BYTE *a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  LOBYTE(a2) = *a2;
  v9[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet] = 0;
  *&v9[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__error] = 0;
  sub_3E6BF4();
  *&v9[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_networkObserver] = a1;
  v9[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reachabilityType] = a2;
  *&v9[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_airplaneModeInquiry] = a3;
  *&v9[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_cellularDataInquiry] = a4;
  v15.receiver = v9;
  v15.super_class = v4;

  v10 = a3;
  v11 = a4;
  v12 = objc_msgSendSuper2(&v15, "init");
  swift_beginAccess();
  *(a1 + 32) = &protocol witness table for ErrorPresenter;
  swift_unknownObjectWeakAssign();
  v13 = v12;
  [v10 setDelegate:v13];

  return v13;
}

Swift::Void __swiftcall ErrorPresenter.update()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_networkObserver);
  if ([objc_opt_self() isLikelyToReachRemoteServerWithReachabilityFlags:{objc_msgSend(*(v1 + 16), "networkReachabilityFlags")}])
  {
    v4 = 0;
    v2 = &v4;
  }

  else if ([*(v0 + OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_airplaneModeInquiry) isEnabled])
  {
    v5 = 2;
    v2 = &v5;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_cellularDataInquiry);
    if ([v3 isSupported] && (objc_msgSend(v3, "isEnabledForDevice") & 1) == 0)
    {
      v6 = 3;
      v2 = &v6;
    }

    else if ([v3 isSupported] && (objc_msgSend(*(v1 + 16), "networkReachabilityFlags") & 0x40000) != 0 && (objc_msgSend(v3, "isEnabledForBundle") & 1) == 0)
    {
      v7 = 4;
      v2 = &v7;
    }

    else
    {
      v8 = 1;
      v2 = &v8;
    }
  }

  sub_2D2F7C(v2);
}

uint64_t ErrorPresenter.title.getter()
{
  swift_getKeyPath();
  v10._object = v0;
  sub_2D3F90();
  sub_3E6BC4();

  v1 = v0[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v6 = "CELLULAR_DATA_APP_ERROR";
      v7 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = "personaUniqueIdentifier";
      v7 = 0xD000000000000017;
    }

    v8 = v6 | 0x8000000000000000;
  }

  else
  {
    if (v1 < 2)
    {
      v2 = [objc_opt_self() mainBundle];
      v10._countAndFlagsBits = 0xE000000000000000;
      v11._countAndFlagsBits = 0x5F434952454E4547;
      v11._object = 0xED0000524F525245;
      v12.value._countAndFlagsBits = 0;
      v12.value._object = 0;
      v3.super.isa = v2;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v4 = sub_3E5A74(v11, v12, v3, v13, v10);

      return v4;
    }

    v8 = 0x800000000042CC90;
    v7 = 0xD000000000000013;
  }

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  return localizedStringReferencingWiFi(_:comment:)(*&v7, v9)._countAndFlagsBits;
}

id ErrorPresenter.init(networkObserver:reachabilityType:airplaneModeInquiry:cellularDataInquiry:)(uint64_t a1, _BYTE *a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a2) = *a2;
  v4[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet] = 0;
  *&v4[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__error] = 0;
  sub_3E6BF4();
  *&v4[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_networkObserver] = a1;
  v4[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reachabilityType] = a2;
  *&v4[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_airplaneModeInquiry] = a3;
  *&v4[OBJC_IVAR____TtC8ShelfKit14ErrorPresenter_cellularDataInquiry] = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;

  v10 = a3;
  v11 = a4;
  v12 = objc_msgSendSuper2(&v15, "init");
  swift_beginAccess();
  *(a1 + 32) = &protocol witness table for ErrorPresenter;
  swift_unknownObjectWeakAssign();
  v13 = v12;
  [v10 setDelegate:v13];

  return v13;
}

uint64_t sub_2D2F7C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet);
  KeyPath = swift_getKeyPath();
  if (v3 == v2)
  {
    sub_2D3F90();
    sub_3E6BC4();
  }

  else
  {
    __chkstk_darwin(KeyPath);
    sub_2D3F90();
    sub_3E6BB4();
  }
}

uint64_t ErrorPresenter.error.setter()
{
  swift_getKeyPath();
  sub_2D3F90();
  sub_3E6BB4();
}

uint64_t ErrorPresenter.reachabilityType.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reachabilityType;
  result = swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2D3F90();
    sub_3E6BB4();
  }

  return result;
}

uint64_t ErrorPresenter.reasonForNoInternet.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_2D3F90();
  sub_3E6BC4();

  *a1 = *(v1 + OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet);
  return result;
}

uint64_t sub_2D32A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2D3F90();
  sub_3E6BC4();

  *a2 = *(v3 + OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet);
  return result;
}

uint64_t sub_2D3360(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet) = a2;
  swift_getKeyPath();
  sub_2D3F90();
  sub_3E6BC4();
}

uint64_t ErrorPresenter.reachabilityType.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2D3F90();
  sub_3E6BC4();

  v3 = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reachabilityType;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_2D3474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2D3F90();
  sub_3E6BC4();

  v4 = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reachabilityType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*ErrorPresenter.reachabilityType.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2D3F90();
  sub_3E6BC4();

  *v4 = v1;
  swift_getKeyPath();
  sub_3E6BE4();

  swift_beginAccess();
  return sub_2D3658;
}

uint64_t ErrorPresenter.message.getter()
{
  v1 = v0;
  if (![objc_opt_self() isRunningOnInternalOS])
  {
    return 0;
  }

  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_3E8204();
  sub_3EDA44();

  if (v18)
  {
    return 0;
  }

  swift_getKeyPath();
  v18 = v1;
  sub_2D3F90();
  sub_3E6BC4();

  if (*(v1 + OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet) > 1u)
  {
    return 0;
  }

  swift_getKeyPath();
  v18 = v1;
  sub_3E6BC4();

  v3 = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__error;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result)
  {
    ErrorValue = swift_getErrorValue();
    v6 = v17;
    v7 = *(v17 - 8);
    v8 = __chkstk_darwin(ErrorValue);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_3EE8F4();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    v15 = 0x616E7265746E495BLL;
    v16 = 0xEB00000000205D6CLL;

    v19._countAndFlagsBits = v11;
    v19._object = v13;
    sub_3ED3D4(v19);
    swift_bridgeObjectRelease_n();
    return v15;
  }

  return result;
}

uint64_t ErrorPresenter.error.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2D3F90();
  sub_3E6BC4();

  v1 = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__error;
  swift_beginAccess();
  v2 = *(v4 + v1);
  swift_errorRetain();
  return v2;
}

uint64_t ErrorPresenter.settingsURL.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2D3F90();
  sub_3E6BC4();

  if (*(v1 + OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reasonForNoInternet) - 2 > 2)
  {
    v4 = 1;
  }

  else
  {
    v3 = [objc_opt_self() settingsURL];
    sub_3E5D44();

    v4 = 0;
  }

  v5 = sub_3E5DC4();
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_2D3AA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2D3F90();
  sub_3E6BC4();

  v4 = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__error;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_errorRetain();
}

uint64_t sub_2D3B40()
{
  swift_getKeyPath();
  sub_2D3F90();
  sub_3E6BB4();
}

uint64_t sub_2D3BDC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__error;
  swift_beginAccess();
  *(a1 + v4) = a2;
  swift_errorRetain();
}

void (*ErrorPresenter.error.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2D3F90();
  sub_3E6BC4();

  *v4 = v1;
  swift_getKeyPath();
  sub_3E6BE4();

  swift_beginAccess();
  return sub_2D3D6C;
}

void sub_2D3D78(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_3E6BD4();

  free(v1);
}

unint64_t sub_2D3F90()
{
  result = qword_4FFAB8;
  if (!qword_4FFAB8)
  {
    type metadata accessor for ErrorPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFAB8);
  }

  return result;
}

uint64_t type metadata accessor for ErrorPresenter()
{
  result = qword_4FFB58;
  if (!qword_4FFB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2D4094()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC8ShelfKit14ErrorPresenter__reachabilityType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_2D40F4()
{
  result = qword_4FFAC0;
  if (!qword_4FFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFAC0);
  }

  return result;
}

unint64_t sub_2D414C()
{
  result = qword_4FFAC8;
  if (!qword_4FFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFAC8);
  }

  return result;
}

uint64_t sub_2D41A8()
{
  result = sub_3E6C04();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2D42F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_3ED8A4();
  if (!v19)
  {
    return sub_3ED5D4();
  }

  v41 = v19;
  v45 = sub_3EE504();
  v32 = sub_3EE514();
  sub_3EE4B4(v41);
  result = sub_3ED874();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_3ED904();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_3EE4F4();
      result = sub_3ED8E4();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2D471C(unint64_t *a1, unint64_t isUniquelyReferenced_nonNull_native, char a3)
{
  if ((a3 & 1) == 0)
  {

    return isUniquelyReferenced_nonNull_native;
  }

  v5 = sub_628B0(_swiftEmptyArrayStorage);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_32;
  }

  v53 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v6 = *(&dword_10 + (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8));
  for (i = a1; v6; i = a1)
  {
    v7 = 0;
    v8 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v52 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      v9 = v7;
LABEL_6:
      if (!v8)
      {
        break;
      }

      v10 = sub_3EE3F4();
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_29;
      }

LABEL_9:
      v12 = *(v10 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
      v11 = *(v10 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid + 8);
      v13 = v5[2];

      if (v13)
      {
        a1 = v5;
        sub_552A8(v12, v11);
        if (v14)
        {

          ++v9;
          if (v7 == v6)
          {
            goto LABEL_33;
          }

          goto LABEL_6;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v5;
      a1 = v5;
      v15 = sub_552A8(v12, v11);
      v17 = v5[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_31;
      }

      v21 = v16;
      if (v5[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a1 = &v56;
          v27 = v15;
          sub_59118();
          v15 = v27;
        }
      }

      else
      {
        sub_56634(v20, isUniquelyReferenced_nonNull_native);
        a1 = v56;
        v15 = sub_552A8(v12, v11);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_67;
        }
      }

      isUniquelyReferenced_nonNull_native = v52;
      v5 = v56;
      if (v21)
      {
        v23 = *(v56 + 56);
        a1 = *(v23 + 8 * v15);
        *(v23 + 8 * v15) = v10;
      }

      else
      {
        *(v56 + 8 * (v15 >> 6) + 64) |= 1 << v15;
        v24 = (v5[6] + 16 * v15);
        *v24 = v12;
        v24[1] = v11;
        *(v5[7] + 8 * v15) = v10;
        v25 = v5[2];
        v19 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v19)
        {
          goto LABEL_66;
        }

        v5[2] = v26;
      }

      if (v7 == v6)
      {
        goto LABEL_33;
      }
    }

    if (v9 >= *(v53 + 16))
    {
      goto LABEL_30;
    }

    v10 = *(isUniquelyReferenced_nonNull_native + 8 * v9 + 32);

    v7 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v53 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v6 = sub_3EE5A4();
  }

LABEL_33:
  v28 = i;
  if (i >> 62)
  {
    goto LABEL_64;
  }

  v29 = *(&dword_10 + (i & 0xFFFFFFFFFFFFFF8));
LABEL_35:
  isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage;
  if (v29)
  {
    v30 = v28;
    v56 = _swiftEmptyArrayStorage;
    sub_41BA8(0, v29 & ~(v29 >> 63), 0);
    if ((v29 & 0x8000000000000000) == 0)
    {
      v31 = 0;
      v32 = v56;
      v33 = v30;
      v34 = v30 & 0xC000000000000001;
      v54 = v33 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v34)
        {
          v35 = sub_3EE3F4();
        }

        else
        {
          if ((v31 & 0x8000000000000000) != 0)
          {
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            v50 = v28;
            v51 = sub_3EE5A4();
            v28 = v50;
            v29 = v51;
            goto LABEL_35;
          }

          if (v31 >= *(v54 + 16))
          {
            goto LABEL_63;
          }

          v35 = v33[v31 + 4];
        }

        v37 = *(v35 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
        v36 = *(v35 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid + 8);

        v56 = v32;
        v39 = v32[2];
        v38 = v32[3];
        if (v39 >= v38 >> 1)
        {
          sub_41BA8((v38 > 1), v39 + 1, 1);
          v32 = v56;
        }

        ++v31;
        v32[2] = v39 + 1;
        v40 = &v32[2 * v39];
        v40[4] = v37;
        v40[5] = v36;
        isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage;
        v33 = i;
        if (v29 == v31)
        {
          goto LABEL_48;
        }
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    result = sub_3EE894();
    __break(1u);
    return result;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_48:
  v56 = v32;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_2D5738();
  v41 = sub_3ED4C4();

  v56 = _swiftEmptyArrayStorage;
  v42 = *(v41 + 16);
  if (!v42)
  {
    goto LABEL_59;
  }

  v43 = 0;
  do
  {
    v44 = (v41 + 40 + 16 * v43);
    v45 = v43;
    while (1)
    {
      if (v45 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      if (v5[2])
      {
        break;
      }

LABEL_52:
      ++v45;
      v44 += 2;
      if (v42 == v45)
      {
        goto LABEL_59;
      }
    }

    v46 = *(v44 - 1);
    v47 = *v44;

    sub_552A8(v46, v47);
    if ((v48 & 1) == 0)
    {

      goto LABEL_52;
    }

    sub_3ED564();
    if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v56 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    v43 = v45 + 1;
    sub_3ED604();
    isUniquelyReferenced_nonNull_native = v56;
  }

  while (v42 - 1 != v45);
LABEL_59:

  return isUniquelyReferenced_nonNull_native;
}

uint64_t static FreezableContentPresenter.itemsByApplyingFrozenOrderingToUniquePodcastLists<A>(currentItems:newItems:episodeOrderingFrozen:propertyGetter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a3)
  {
    v26 = a2;
    swift_getTupleTypeMetadata2();
    v11 = sub_3ED5D4();
    v12 = sub_2D53DC(v11, &type metadata for String, a6, &protocol witness table for String);

    v25 = v12;
    __chkstk_darwin(v13);
    v14 = sub_3ED674();
    sub_3ED0E4();
    swift_getWitnessTable();
    v15 = sub_3ED4F4();
    v16 = v27;
    v27 = a1;
    __chkstk_darwin(v15);
    v22[2] = a6;
    v22[3] = a4;
    v23 = a5;
    WitnessTable = swift_getWitnessTable();
    v27 = sub_2D42F8(sub_2D56E8, v22, v14, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v18);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_2D5738();
    v19 = sub_3ED4C4();

    v27 = v19;
    __chkstk_darwin(v20);
    v23 = a6;
    v24 = v16;
    v6 = sub_3ED4E4();
  }

  else
  {
  }

  return v6;
}

uint64_t sub_2D4F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double), uint64_t a4, uint64_t a5)
{
  v9 = sub_3EE0F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v22 - v15;
  v17 = a3(a2, v14);
  v19 = v18;

  v22[1] = a1;
  v23 = v17;
  v24 = v19;

  sub_3ED0F4();

  v20 = *(a5 - 8);
  if ((*(v20 + 48))(v16, 1, a5) == 1)
  {
    (*(v10 + 8))(v16, v9);
    (*(v20 + 16))(v12, a2, a5);
    (*(v20 + 56))(v12, 0, 1, a5);
    v23 = v17;
    v24 = v19;
    sub_3ED0E4();
    return sub_3ED104();
  }

  else
  {

    return (*(v10 + 8))(v16, v9);
  }
}

uint64_t sub_2D517C()
{

  sub_3ED0F4();
}

unint64_t sub_2D51F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3ED114();

  return sub_2D5254(a1, v6, a2, a3);
}

unint64_t sub_2D5254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_3ED174();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_2D53DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_3ED614())
  {
    sub_3EE604();
    v13 = sub_3EE5F4();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_3ED664();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_3ED5F4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_3EE3E4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2D51F8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2D56E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(v1 + 24))();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

unint64_t sub_2D5738()
{
  result = qword_4F6EC8;
  if (!qword_4F6EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_5010E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F6EC8);
  }

  return result;
}

uint64_t FreezableContentSubject.__allocating_init(initialState:)()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFB70);
  swift_allocObject();
  *(v0 + 16) = sub_3E9D94();
  return v0;
}

uint64_t FreezableContentSubject.init(initialState:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFB70);
  swift_allocObject();
  *(v0 + 16) = sub_3E9D94();
  return v0;
}

Swift::Void __swiftcall FreezableContentSubject.send(_:)(ShelfKit::FreezableContentSubject::State a1)
{
  v3 = sub_3EBBC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBC14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1 & 1;
  *(v12 + 24) = v13;
  v14 = objc_opt_self();

  if ([v14 isMainThread])
  {
    LOBYTE(aBlock[0]) = v13;
    sub_3E9D44();
  }

  else
  {
    sub_801B4();
    v19 = sub_3EDBC4();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2D60E8;
    *(v15 + 24) = v12;
    aBlock[4] = sub_FE5AC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_19;
    v16 = _Block_copy(aBlock);

    sub_3EBBE4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_2D6A4C(&qword_506A20, 255, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_DA8D4();
    sub_3EE244();
    v17 = v19;
    sub_3EDBE4();
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t FreezableContentSubject.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_3EBBC4();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3EBC14();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v18 = *(v3 + 16);
  v19 = *(v10 + 16);
  v19(&v30 - v16, a1, a2, v15);
  (v19)(v13, v17, a2);
  v20 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = a3;
  *(v21 + 4) = v18;
  (*(v10 + 32))(&v21[v20], v17, a2);
  v22 = objc_opt_self();

  if ([v22 isMainThread])
  {
    sub_3E9D84();
  }

  else
  {
    sub_801B4();
    v31 = sub_3EDBC4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_2D68B4;
    *(v23 + 24) = v21;
    aBlock[4] = sub_19CBC4;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_13_0;
    v24 = _Block_copy(aBlock);

    v25 = v32;
    sub_3EBBE4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_2D6A4C(&qword_506A20, 255, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_DA8D4();
    v26 = v34;
    v27 = v37;
    sub_3EE244();
    v28 = v31;
    sub_3EDBE4();
    _Block_release(v24);

    (*(v36 + 8))(v26, v27);
    (*(v33 + 8))(v25, v35);
  }

  return (*(v10 + 8))(v13, a2);
}

uint64_t sub_2D60B0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t FreezableContentSubject.send(completion:)(char a1)
{
  v3 = sub_3EBBC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBC14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1 & 1;
  *(v12 + 24) = v13;
  v14 = objc_opt_self();

  if ([v14 isMainThread])
  {
    LOBYTE(aBlock[0]) = v13;
    sub_3E9D24();
  }

  else
  {
    sub_801B4();
    v20 = sub_3EDBC4();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_2D6914;
    *(v16 + 24) = v12;
    aBlock[4] = sub_19CBC4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_23;
    v17 = _Block_copy(aBlock);

    sub_3EBBE4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_2D6A4C(&qword_506A20, 255, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_DA8D4();
    sub_3EE244();
    v18 = v20;
    sub_3EDBE4();
    _Block_release(v17);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t FreezableContentSubject.send(subscription:)(uint64_t a1)
{
  v3 = sub_3EBBC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBC14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  sub_1F958(a1, v23);
  sub_1F958(v23, v22);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  sub_1D4F0(v23, v12 + 24);
  v13 = objc_opt_self();

  if ([v13 isMainThread])
  {
    sub_3E9D34();
  }

  else
  {
    sub_801B4();
    v14 = sub_3EDBC4();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2D69C8;
    *(v15 + 24) = v12;
    aBlock[4] = sub_19CBC4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_33_0;
    v16 = _Block_copy(aBlock);
    v20 = v7;
    v17 = v16;

    sub_3EBBE4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_2D6A4C(&qword_506A20, 255, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_DA8D4();
    sub_3EE244();
    sub_3EDBE4();
    _Block_release(v17);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2D67F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2D6950()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2D6988()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2D6A4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2D6BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  swift_beginAccess();
  if (*(v5 + 40))
  {

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
    v7 = sub_2D7800(&qword_4F59A8, &qword_4F59A0);
    v8 = a3(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2D6C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_3EE0F4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - v10;
  (*(a2 + 32))(a1, a2, v9);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v13 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = a3(AssociatedTypeWitness, AssociatedConformanceWitness);
    v8 = v12;
    v7 = AssociatedTypeWitness;
  }

  (*(v8 + 8))(v11, v7);
  return v13 & 1;
}

uint64_t sub_2D6E24()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  result = *(v1 + 40);
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
    sub_2D7800(&qword_4F59A8, &qword_4F59A0);
    sub_3E8804();
  }

  return result;
}

Swift::Void __swiftcall PaginatedPublisherPresenter.prepareNextPage()()
{
  v2 = v1;
  v3 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_3EE0F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v11 - v8;
  (*(v2 + 32))(v3, v2, v7);
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) != 1)
  {
    swift_getAssociatedConformanceWitness();
    sub_3E8804();
    v6 = v10;
    v5 = AssociatedTypeWitness;
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_2D70A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71E8);
  v5 = sub_2D7800(&qword_4F71F0, &qword_4F71E8);
  LOBYTE(a3) = a3(v4, v5);

  return a3 & 1;
}

uint64_t sub_2D713C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71E8);
  sub_2D7800(&qword_4F71F0, &qword_4F71E8);
  sub_3E8804();
}

uint64_t sub_2D71F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_paginatedPublisher;
  swift_beginAccess();
  if (*(v3 + v5))
  {

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E78);
    v7 = sub_2D7800(&qword_4FA008, &qword_4F9E78);
    v8 = a3(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2D72B8()
{
  v1 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_paginatedPublisher;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E78);
    sub_2D7800(&qword_4FA008, &qword_4F9E78);
    sub_3E8804();
  }

  return result;
}

uint64_t sub_2D7390(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  if (*(v3 + 136))
  {

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
    v6 = sub_2D7800(&qword_4F59A8, &qword_4F59A0);
    v7 = a3(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2D7444()
{
  swift_beginAccess();
  result = *(v0 + 136);
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
    sub_2D7800(&qword_4F59A8, &qword_4F59A0);
    sub_3E8804();
  }

  return result;
}

uint64_t sub_2D7510(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  if (*(v3 + 144))
  {

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E78);
    v6 = sub_2D7800(&qword_4FA008, &qword_4F9E78);
    v7 = a3(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2D75C4()
{
  swift_beginAccess();
  result = *(v0 + 144);
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E78);
    sub_2D7800(&qword_4FA008, &qword_4F9E78);
    sub_3E8804();
  }

  return result;
}

uint64_t sub_2D7690(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 120);
  v6 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider_paginatedPublisher;
  swift_beginAccess();
  if (*(v5 + v6))
  {

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
    v8 = sub_2D7800(&qword_4F59A8, &qword_4F59A0);
    v9 = a3(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_2D7754()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider_paginatedPublisher;
  swift_beginAccess();
  result = *(v1 + v2);
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
    sub_2D7800(&qword_4F59A8, &qword_4F59A0);
    sub_3E8804();
  }

  return result;
}

uint64_t sub_2D7800(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PodcastsTabBarPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PodcastsTabBarPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2D7948;
}

void sub_2D7948(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PodcastsTabBarPresenter.isLoading.setter(char a1)
{
  v3 = a1 & 1;
  result = swift_beginAccess();
  v5 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v6 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(ObjectType, v6);
    }

    else
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v8 = *(v1 + 24);
      v9 = swift_getObjectType();
      (*(v8 + 24))(v9, v8);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*PodcastsTabBarPresenter.isLoading.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  *(v4 + 80) = *(v1 + 32);
  return sub_2D7B40;
}

void sub_2D7B40(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = v2[9];
  if (a2)
  {
    PodcastsTabBarPresenter.isLoading.setter(v3);
    goto LABEL_10;
  }

  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
  if (v3 != v5)
  {
    if (v3)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_10;
      }

      v6 = *(v2[9] + 24);
      ObjectType = swift_getObjectType();
      v8 = (v6 + 16);
    }

    else
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_10;
      }

      v6 = *(v2[9] + 24);
      ObjectType = swift_getObjectType();
      v8 = (v6 + 24);
    }

    (*v8)(ObjectType, v6);
    swift_unknownObjectRelease();
  }

LABEL_10:

  free(v2);
}

uint64_t PodcastsTabBarPresenter.__allocating_init(asPartOf:)()
{
  v0 = swift_allocObject();
  PodcastsTabBarPresenter.init(asPartOf:)();
  return v0;
}

uint64_t PodcastsTabBarPresenter.init(asPartOf:)()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  *(v0 + 48) = 2;
  *(v0 + 32) = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3EC394();
  ObjectType = swift_getObjectType();
  LibraryDataProviderProtocol.fetchShowCountObserver()(ObjectType, v5[1]);
  swift_allocObject();
  swift_weakInit();
  v3 = sub_36174(0, &qword_4F10B0);

  v5[3] = v3;
  v5[4] = &protocol witness table for OS_dispatch_queue;
  v5[0] = sub_3EDBC4();
  sub_3ECD94();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v1;
}

uint64_t sub_2D7DE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2D7E1C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_3EBBC4();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3EBC14();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_36174(0, &qword_4F10B0);
  v11 = sub_3EDBC4();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v10;
  aBlock[4] = sub_2D97F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_14;
  v13 = _Block_copy(aBlock);

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_2D9760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v13);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

uint64_t sub_2D80FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = *(v1 + 32);
    *(v1 + 32) = 0;
    if (v2 == 1)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v3 + 24))(ObjectType, v3);
        swift_unknownObjectRelease();
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_2D9800(v6);
  }

  return result;
}

uint64_t sub_2D8214()
{
  v0 = sub_3EBBC4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3EBC14();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E9A04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9944();
  swift_errorRetain();
  v10 = sub_3E99F4();
  v11 = sub_3ED9E4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v2;
    v14 = v13;
    *v12 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_0, v10, v11, "could not fetch library show count observer, %@", v12, 0xCu);
    sub_D1C44(v14);
    v2 = v22;
  }

  (*(v7 + 8))(v9, v6);
  sub_36174(0, &qword_4F10B0);
  v16 = sub_3EDBC4();
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2D9740;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_2D9760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  v19 = v26;
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v18);

  (*(v25 + 8))(v2, v19);
  return (*(v23 + 8))(v5, v24);
}

uint64_t sub_2D8650()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 32);
    *(v1 + 32) = 0;
    if (v2 == 1)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v3 + 24))(ObjectType, v3);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

Swift::Void __swiftcall PodcastsTabBarPresenter.viewDidLoad()()
{
  swift_beginAccess();
  if (*(v0 + 32))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v1 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v1 + 16))(ObjectType, v1);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_2D87B0();
  }
}

void sub_2D87B0()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (v1 != 2 && (v1 & 1) != 0 && *(v0 + 33) == 1)
  {
    v2 = v0;
    sub_3E76B4();
    if (sub_3E76A4())
    {
      v3 = [objc_opt_self() sharedInstance];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6BC8);
      v4 = [v3 storefrontSupportsColdStart];
      v5 = [v4 asyncValuePromise];

      sub_3ECDF4();
      v6 = [v3 coldStartLandOnListenNow];
      v7 = [v6 asyncValuePromise];

      sub_3ECDF4();
      sub_886BC(&qword_4FFCD8, &qword_4F6BC8);
      sub_3ECD84();
      swift_allocObject();
      swift_weakInit();
      v12[3] = sub_36174(0, &qword_4F10B0);
      v12[4] = &protocol witness table for OS_dispatch_queue;
      v12[0] = sub_3EDBC4();
      sub_3ECD94();

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      sub_3ED9C4();
      sub_36174(0, &qword_4F6BF0);
      v9 = sub_3EE024();
      sub_3E9754();

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v2 + 24);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_3ED9C4();
    sub_36174(0, &qword_4F6BF0);
    v8 = sub_3EE024();
    sub_3E9754();
  }
}

void sub_2D8B58()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = v0;
    v3 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v4);
    v6 = *(v5 + 40);

    v6(sub_2D98DC, v3, v4, v5);
    swift_endAccess();
    sub_1F958(v1 + 16, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v8 + 24))(&v14, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v9 = v14 == 0;
    swift_beginAccess();
    v10 = *(v2 + 48);
    *(v2 + 48) = v9;
    if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
    {
      sub_2D87B0();
    }

    *(v2 + 33) = 0;
  }
}

uint64_t sub_2D8CC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_3EBBC4();
  v13 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBC14();
  v6 = *(v12 - 8);
  __chkstk_darwin(v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36174(0, &qword_4F10B0);
  v9 = sub_3EDBC4();
  aBlock[4] = sub_2D98E4;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1279E4;
  aBlock[3] = &block_descriptor_18;
  v10 = _Block_copy(aBlock);

  sub_3EBBE4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_2D9760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
  sub_886BC(&qword_506A30, &unk_503DE0);
  sub_3EE244();
  sub_3EDBE4();
  _Block_release(v10);

  (*(v13 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v12);
}

uint64_t sub_2D8F78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);

    if (v1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        swift_beginAccess();
        sub_1F958(v1 + 16, v8);
        v4 = v9;
        v5 = v10;
        __swift_project_boxed_opaque_existential_1(v8, v9);
        (*(v5 + 24))(&v11, v4, v5);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        v6 = v11 == 0;
        swift_beginAccess();
        v7 = *(v3 + 48);
        *(v3 + 48) = v6;
        if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
        {
          sub_2D87B0();
        }
      }
    }
  }

  return result;
}

void PodcastsTabBarPresenter.isLibraryEmpty.setter(int a1)
{
  v3 = a1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  *(v1 + 48) = a1;
  if (v3 == 2)
  {
    if (v4 == 2)
    {
      return;
    }

LABEL_6:
    sub_2D87B0();
    return;
  }

  if (v4 == 2 || ((v4 ^ a1) & 1) != 0)
  {
    goto LABEL_6;
  }
}

void (*PodcastsTabBarPresenter.isLibraryEmpty.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 48);
  return sub_2D91FC;
}

void sub_2D91FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 24);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  if (v2 == 2)
  {
    if (v4 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
  {
LABEL_6:
    sub_2D87B0();
  }

LABEL_7:

  free(v1);
}

void sub_2D9270(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ([*a1 BOOLValue] && objc_msgSend(v1, "BOOLValue"))
  {
    sub_3ED9C4();
    sub_36174(0, &qword_4F6BF0);
    v7 = sub_3EE024();
    sub_3E9754();
  }

  else
  {
    sub_3ED9C4();
    sub_36174(0, &qword_4F6BF0);
    v2 = sub_3EE024();
    sub_3E9754();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 24);

        ObjectType = swift_getObjectType();
        (*(v5 + 8))(ObjectType, v5);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_2D942C()
{
  sub_3ED9D4();
  sub_36174(0, &qword_4F6BF0);
  v0 = sub_3EE024();
  sub_3E9754();
}

uint64_t PodcastsTabBarPresenter.deinit()
{
  sub_13A0E0(v0 + 16);

  return v0;
}

uint64_t PodcastsTabBarPresenter.__deallocating_deinit()
{
  sub_13A0E0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2D9524@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2D9574(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2D95CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_2D963C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2D9760()
{
  result = qword_506A20;
  if (!qword_506A20)
  {
    sub_3EBBC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_506A20);
  }

  return result;
}

uint64_t sub_2D97B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_2D9800(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = a1;
    swift_beginAccess();
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v4);
    v6 = *(v5 + 40);

    v6(0, 0, v4, v5);
    swift_endAccess();

    a1 = v3;
  }

  *(v1 + 40) = a1;

  sub_2D8B58();
}

__n128 AnyReferenceLinkView.init(_:style:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = v3;
  return result;
}

uint64_t AnyReferenceLinkView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v81 = sub_3E9A04();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFCE0);
  __chkstk_darwin(v87);
  v88 = &v72 - v4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFCE8);
  __chkstk_darwin(v97);
  v89 = &v72 - v5;
  v76 = type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase(0);
  __chkstk_darwin(v76);
  v74 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v72 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFCF0);
  __chkstk_darwin(v86);
  v79 = &v72 - v9;
  v83 = type metadata accessor for URLReferenceLink();
  __chkstk_darwin(v83);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v72 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFCF8);
  __chkstk_darwin(v92);
  v85 = &v72 - v13;
  v90 = type metadata accessor for AppReferenceLink();
  __chkstk_darwin(v90);
  v84 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v72 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFD00);
  __chkstk_darwin(v95);
  v93 = &v72 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFD08);
  __chkstk_darwin(v91);
  v20 = &v72 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFD10);
  __chkstk_darwin(v96);
  v22 = &v72 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFD18);
  __chkstk_darwin(v23);
  v25 = &v72 - v24;
  v26 = type metadata accessor for PodcastsReferenceLink();
  __chkstk_darwin(v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v72 - v30;
  v32 = v2;
  sub_BD054(v2, &v100);
  sub_1FE90(&v100, v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0028);
  if (swift_dynamicCast())
  {
    v33 = v28;
    sub_2DB768(v31, v28, type metadata accessor for PodcastsReferenceLink);
    sub_2DB7D0(v28, v25, type metadata accessor for PodcastsReferenceLink);
    v34 = type metadata accessor for PodcastsReferenceLinkView();
    v35 = &v25[*(v34 + 20)];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    v36 = &v25[*(v34 + 24)];
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    v37 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFD60) + 36)];
    sub_BD054(v32, v37);
    *(v37 + 40) = swift_getKeyPath();
    *(v37 + 48) = 0;
    *(v37 + 56) = swift_getKeyPath();
    *(v37 + 64) = 0;
    v38 = *(v32 + 40);
    KeyPath = swift_getKeyPath();
    v40 = &v25[*(v23 + 36)];
    *v40 = KeyPath;
    v40[8] = v38;
    sub_FBD0(v25, v20, &qword_4FFD18);
    swift_storeEnumTagMultiPayload();
    sub_2DAB08(&qword_4FFD50, &qword_4FFD18, &unk_4166F8, sub_2DAA4C);
    sub_2DAB08(&qword_4FFD70, &qword_4FFCF8, &unk_4166D8, sub_2DABB8);
    sub_3EADE4();
    sub_FBD0(v22, v93, &qword_4FFD10);
    swift_storeEnumTagMultiPayload();
    sub_2DA968();
    sub_2DACBC();
    sub_3EADE4();
    sub_FCF8(v22, &qword_4FFD10);
    sub_FCF8(v25, &qword_4FFD18);
    sub_2DB838(v33, type metadata accessor for PodcastsReferenceLink);
    return __swift_destroy_boxed_opaque_existential_1Tm(v99);
  }

  v72 = v23;
  v73 = v22;
  v41 = v92;
  if (swift_dynamicCast())
  {
    v42 = v84;
    sub_2DB768(v17, v84, type metadata accessor for AppReferenceLink);
    v43 = v85;
    sub_2DB7D0(v42, v85, type metadata accessor for AppReferenceLink);
    v44 = type metadata accessor for AppReferenceLinkView();
    v45 = v43 + *(v44 + 20);
    *v45 = swift_getKeyPath();
    *(v45 + 8) = 0;
    v46 = v43 + *(v44 + 24);
    *v46 = swift_getKeyPath();
    *(v46 + 8) = 0;
    v47 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFD80) + 36);
    sub_BD054(v2, v47);
    *(v47 + 40) = swift_getKeyPath();
    *(v47 + 48) = 0;
    *(v47 + 56) = swift_getKeyPath();
    *(v47 + 64) = 0;
    v48 = *(v2 + 40);
    v49 = swift_getKeyPath();
    v50 = v43 + *(v41 + 36);
    *v50 = v49;
    *(v50 + 8) = v48;
    sub_FBD0(v43, v20, &qword_4FFCF8);
    swift_storeEnumTagMultiPayload();
    sub_2DAB08(&qword_4FFD50, &qword_4FFD18, &unk_4166F8, sub_2DAA4C);
    sub_2DAB08(&qword_4FFD70, &qword_4FFCF8, &unk_4166D8, sub_2DABB8);
    v51 = v73;
    sub_3EADE4();
    sub_FBD0(v51, v93, &qword_4FFD10);
    swift_storeEnumTagMultiPayload();
    sub_2DA968();
    sub_2DACBC();
    sub_3EADE4();
    sub_FCF8(v51, &qword_4FFD10);
    sub_FCF8(v43, &qword_4FFCF8);
    v52 = type metadata accessor for AppReferenceLink;
LABEL_7:
    sub_2DB838(v42, v52);
    return __swift_destroy_boxed_opaque_existential_1Tm(v99);
  }

  v53 = v82;
  if (swift_dynamicCast())
  {
    v42 = v77;
    sub_2DB768(v53, v77, type metadata accessor for URLReferenceLink);
    v54 = v79;
    sub_2DB7D0(v42, v79, type metadata accessor for URLReferenceLink);
    v55 = type metadata accessor for URLReferenceLinkView(0);
    v56 = v54 + *(v55 + 20);
    *v56 = swift_getKeyPath();
    *(v56 + 8) = 0;
    v57 = v54 + *(v55 + 24);
    *v57 = swift_getKeyPath();
    *(v57 + 8) = 0;
    v58 = v75;
    swift_storeEnumTagMultiPayload();
    sub_2DB7D0(v58, v74, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
    sub_3EB8B4();
    sub_2DB838(v58, type metadata accessor for URLReferenceLinkView.MetadataLoadingPhase);
    v59 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFD30) + 36);
    sub_BD054(v2, v59);
    *(v59 + 40) = swift_getKeyPath();
    *(v59 + 48) = 0;
    *(v59 + 56) = swift_getKeyPath();
    *(v59 + 64) = 0;
    LOBYTE(v59) = *(v2 + 40);
    v60 = swift_getKeyPath();
    v61 = v54 + *(v86 + 36);
    *v61 = v60;
    *(v61 + 8) = v59;
    sub_FBD0(v54, v88, &qword_4FFCF0);
    swift_storeEnumTagMultiPayload();
    sub_2DAB08(&qword_4FFD20, &qword_4FFCF0, &unk_4166D0, sub_2DA858);
    v62 = v89;
    sub_3EADE4();
    sub_FBD0(v62, v93, &qword_4FFCE8);
    swift_storeEnumTagMultiPayload();
    sub_2DA968();
    sub_2DACBC();
    sub_3EADE4();
    sub_FCF8(v62, &qword_4FFCE8);
    sub_FCF8(v54, &qword_4FFCF0);
    v52 = type metadata accessor for URLReferenceLink;
    goto LABEL_7;
  }

  v63 = v78;
  sub_3E9944();
  v64 = sub_3E99F4();
  v65 = sub_3ED9D4();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v93;
  if (v66)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v98 = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_2EDD0(0xD000000000000010, 0x800000000042CF60, &v98);
    _os_log_impl(&dword_0, v64, v65, "Unhandled reference link component model: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
  }

  (*(v80 + 8))(v63, v81);
  swift_storeEnumTagMultiPayload();
  sub_2DAB08(&qword_4FFD20, &qword_4FFCF0, &unk_4166D0, sub_2DA858);
  v70 = v89;
  sub_3EADE4();
  sub_FBD0(v70, v67, &qword_4FFCE8);
  swift_storeEnumTagMultiPayload();
  sub_2DA968();
  sub_2DACBC();
  sub_3EADE4();
  sub_FCF8(v70, &qword_4FFCE8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v99);
}

unint64_t sub_2DA858()
{
  result = qword_4FFD28;
  if (!qword_4FFD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFD30);
    sub_2DAC74(&qword_4FFD38, type metadata accessor for URLReferenceLinkView);
    sub_2DA914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFD28);
  }

  return result;
}

unint64_t sub_2DA914()
{
  result = qword_4FFD40;
  if (!qword_4FFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFD40);
  }

  return result;
}

unint64_t sub_2DA968()
{
  result = qword_4FFD48;
  if (!qword_4FFD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFD10);
    sub_2DAB08(&qword_4FFD50, &qword_4FFD18, &unk_4166F8, sub_2DAA4C);
    sub_2DAB08(&qword_4FFD70, &qword_4FFCF8, &unk_4166D8, sub_2DABB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFD48);
  }

  return result;
}

unint64_t sub_2DAA4C()
{
  result = qword_4FFD58;
  if (!qword_4FFD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFD60);
    sub_2DAC74(&qword_4FFD68, type metadata accessor for PodcastsReferenceLinkView);
    sub_2DA914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFD58);
  }

  return result;
}

uint64_t sub_2DAB08(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_886BC(&qword_4F16E8, &qword_4F16E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2DABB8()
{
  result = qword_4FFD78;
  if (!qword_4FFD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFD80);
    sub_2DAC74(&qword_4FFD88, type metadata accessor for AppReferenceLinkView);
    sub_2DA914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFD78);
  }

  return result;
}

uint64_t sub_2DAC74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2DACBC()
{
  result = qword_4FFD90;
  if (!qword_4FFD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFCE8);
    sub_2DAB08(&qword_4FFD20, &qword_4FFCF0, &unk_4166D0, sub_2DA858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFD90);
  }

  return result;
}

uint64_t sub_2DAD78(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDA8);
  __chkstk_darwin(v3);
  v5 = &v16[-v4 - 8];
  v6 = sub_3EAAF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *(v1 + 56);
  if (*(v1 + 64) == 1)
  {
    v16[0] = *(v1 + 56);
    if (v10 > 1u)
    {
LABEL_3:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDB0);
      (*(*(v11 - 8) + 16))(v5, a1, v11);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDB8);
      sub_2DBAE0();
      sub_886BC(&qword_4FFDE8, &qword_4FFDB0);
      return sub_3EADE4();
    }
  }

  else
  {

    sub_3ED9E4();
    v13 = sub_3EB034();
    v15 = v1;
    v14 = v13;
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v10, 0);
    (*(v7 + 8))(v9, v6);
    if (v16[0] > 1u)
    {
      goto LABEL_3;
    }
  }

  sub_2DB100(a1, v16);
  sub_FBD0(v16, v5, &qword_4FFDB8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDB0);
  sub_2DBAE0();
  sub_886BC(&qword_4FFDE8, &qword_4FFDB0);
  sub_3EADE4();
  return sub_FCF8(v16, &qword_4FFDB8);
}

uint64_t sub_2DB100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_3EAAF4();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDB0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for PodcastsReferenceLink();
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD054(v2, v40);
  sub_1FE90(v40, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0028);
  if (swift_dynamicCast())
  {
    v32 = &type metadata for AnyReferenceLink;
    v33 = sub_112C60();
    v31[0] = swift_allocObject();
    sub_BD054(v2, v31[0] + 16);
    (*(v9 + 16))(v11, a1, v8);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    (*(v9 + 32))(v16 + v15, v11, v8);
    *&v35 = swift_getKeyPath();
    BYTE8(v35) = 0;
    KeyPath = swift_getKeyPath();
    LOBYTE(v37) = 0;
    *&v34 = sub_2DBE74;
    *(&v34 + 1) = v16;
    sub_FBD0(v31, v29, &qword_4FFDD0);
    v30 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDE0);
    sub_886BC(&qword_4FFDC8, &qword_4FFDD0);
    sub_886BC(&qword_4FFDD8, &qword_4FFDE0);
    sub_3EADE4();
    sub_FCF8(v31, &qword_4FFDD0);
    sub_2DB838(v14, type metadata accessor for PodcastsReferenceLink);
  }

  else
  {
    v25 = a1;
    v17 = *(v2 + 40);
    v18 = *(v2 + 48);

    if ((v18 & 1) == 0)
    {
      sub_3ED9E4();
      v19 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();

      (*(v26 + 8))(v7, v27);
      v17 = v29[0];
    }

    v32 = &type metadata for PodcastsContextMenuProvider;
    v33 = sub_2DBBC4();
    v20 = swift_allocObject();
    v31[0] = v20;
    v20[6] = &type metadata for AnyReferenceLink;
    v20[7] = sub_112C60();
    v21 = swift_allocObject();
    v20[3] = v21;
    sub_BD054(v3, v21 + 16);
    v20[2] = v17;
    (*(v9 + 16))(v11, v25, v8);
    v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v23 = swift_allocObject();
    (*(v9 + 32))(v23 + v22, v11, v8);
    v34 = 0u;
    v35 = 0u;
    LOBYTE(KeyPath) = 1;
    v37 = sub_2DBC94;
    v38 = v23;
    sub_FBD0(v31, v29, &qword_4FFDE0);
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDE0);
    sub_886BC(&qword_4FFDC8, &qword_4FFDD0);
    sub_886BC(&qword_4FFDD8, &qword_4FFDE0);
    sub_3EADE4();
    sub_FCF8(v31, &qword_4FFDE0);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v39);
}

uint64_t sub_2DB71C(void (*a1)(void))
{
  a1();

  return sub_3EEB34();
}

uint64_t sub_2DB768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2DB7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2DB838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2DB8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2DB8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2DB95C()
{
  result = qword_4FFD98;
  if (!qword_4FFD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFDA0);
    sub_2DA968();
    sub_2DACBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFD98);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2DBA18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2DBA60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2DBAE0()
{
  result = qword_4FFDC0;
  if (!qword_4FFDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFDB8);
    sub_886BC(&qword_4FFDC8, &qword_4FFDD0);
    sub_886BC(&qword_4FFDD8, &qword_4FFDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFDC0);
  }

  return result;
}

unint64_t sub_2DBBC4()
{
  result = qword_4FFDF0;
  if (!qword_4FFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFDF0);
  }

  return result;
}

uint64_t sub_2DBC18()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2DBC58()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2DBD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFDB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

unint64_t sub_2DBDB0()
{
  result = qword_4FFDF8;
  if (!qword_4FFDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFE00);
    sub_2DBAE0();
    sub_886BC(&qword_4FFDE8, &qword_4FFDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFDF8);
  }

  return result;
}

uint64_t sub_2DBE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppReferenceLink();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2DBF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppReferenceLink();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for AppReferenceLinkView()
{
  result = qword_4FFE60;
  if (!qword_4FFE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2DC064()
{
  type metadata accessor for AppReferenceLink();
  if (v0 <= 0x3F)
  {
    sub_23FD50();
    if (v1 <= 0x3F)
    {
      sub_2DC100();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2DC100()
{
  if (!qword_4FFE70)
  {
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4FFE70);
    }
  }
}

uint64_t sub_2DC16C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppReferenceLink();
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2DCAE0(v1, v6, type metadata accessor for AppReferenceLink);
  v7 = &v6[v4[10]];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = &v6[v4[11]];
  v11 = *(v10 + 1);
  v32 = *v10;
  v33 = v8;
  v12 = v4[13];
  v13 = &v6[v4[12]];
  v14 = *(v13 + 1);
  v31 = *v13;
  sub_FBD0(&v6[v12], &v34, &qword_4F00B0);
  v15 = v35;
  *(a1 + 48) = v34;
  *(a1 + 64) = v15;
  *(a1 + 80) = v36;
  v16 = v4[14];
  v17 = type metadata accessor for ReferenceLinkTextStackView();
  v18 = v17[8];
  v19 = sub_3E7D54();
  (*(*(v19 - 8) + 16))(a1 + v18, &v6[v16], v19);
  sub_FBD0(&v6[v4[15]], a1 + v17[9], &qword_4F00B8);

  sub_2DCA60(v6);
  v20 = a1 + v17[11];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v17[12];
  *(a1 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  swift_storeEnumTagMultiPayload();
  v22 = v32;
  *a1 = v33;
  *(a1 + 8) = v9;
  *(a1 + 16) = v22;
  *(a1 + 24) = v11;
  *(a1 + 32) = v31;
  *(a1 + 40) = v14;
  *(a1 + v17[10]) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEA8);
  sub_2DC474(a1 + v23[17]);
  v24 = a1 + v23[18];
  v25 = *(v1 + 16);
  v26 = *(v1 + 24);
  sub_FBD0(v1 + v4[17], &v34, &qword_4F00B0);
  v27 = v35;
  *(v24 + 16) = v34;
  *(v24 + 32) = v27;
  *(v24 + 48) = v36;
  *v24 = v25;
  *(v24 + 8) = v26;
  *(v24 + 56) = swift_getKeyPath();
  *(v24 + 64) = 0;
  *(v24 + 72) = swift_getKeyPath();
  *(v24 + 80) = 0;
  *(v24 + 88) = swift_getKeyPath();
  *(v24 + 96) = 0;
  v28 = v23[19];
  *(a1 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0);
  swift_storeEnumTagMultiPayload();
  v29 = a1 + v23[20];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
}

uint64_t sub_2DC474@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v46 = sub_3EA7F4();
  __chkstk_darwin(v46);
  v4 = (v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_3E7784();
  __chkstk_darwin(v5 - 8);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EAAF4();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEB0);
  __chkstk_darwin(v48);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEB8);
  __chkstk_darwin(v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEC0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = type metadata accessor for AppReferenceLink();
  v22 = v21;
  if (*(v2 + *(v21 + 28)))
  {
    v41[1] = v15;
    v42 = v14;
    v23 = v2 + *(type metadata accessor for AppReferenceLinkView() + 24);
    v24 = *v23;
    v25 = v2;
    if (*(v23 + 8) == 1)
    {
      v26 = *v23;
      v49 = *v23;
    }

    else
    {

      sub_3ED9E4();
      v41[0] = v2;
      v30 = sub_3EB034();
      v25 = v41[0];
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_23968C(v24, 0);
      (*(v43 + 8))(v9, v44);
      v26 = v49;
    }

    v31 = v25 + *(v22 + 24);
    v32 = v45;
    sub_2DCAE0(v31, v45, &type metadata accessor for ArtworkModel);
    v33 = *(v46 + 20);
    v34 = enum case for RoundedCornerStyle.continuous(_:);
    v35 = sub_3EABE4();
    (*(*(v35 - 8) + 104))(v4 + v33, v34, v35);
    v36 = 5.0;
    if (v26 < 2)
    {
      v36 = 6.0;
    }

    *v4 = v36;
    v4[1] = v36;
    sub_2DCB48(v32, v11, &type metadata accessor for ArtworkModel);
    v37 = v48;
    sub_2DCB48(v4, &v11[*(v48 + 36)], &type metadata accessor for RoundedRectangle);
    v38 = &v11[*(v37 + 40)];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = v42;
    sub_2DCBB0(v11, v42);
    v28 = &qword_4FFEB0;
    sub_FBD0(v39, v17, &qword_4FFEB0);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FFEC8, &qword_4FFEC0);
    sub_886BC(&qword_4FFED0, &qword_4FFEB0);
    sub_3EADE4();
    v29 = v39;
  }

  else
  {
    sub_2DCAE0(v2 + *(v21 + 24), v20, &type metadata accessor for ArtworkModel);
    v27 = &v20[*(v18 + 40)];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = &qword_4FFEC0;
    sub_FBD0(v20, v17, &qword_4FFEC0);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FFEC8, &qword_4FFEC0);
    sub_886BC(&qword_4FFED0, &qword_4FFEB0);
    sub_3EADE4();
    v29 = v20;
  }

  return sub_FCF8(v29, v28);
}

uint64_t sub_2DCA60(uint64_t a1)
{
  v2 = type metadata accessor for AppReferenceLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2DCAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2DCB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2DCBB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DCC64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LinkClearSwipeAction();
  sub_94D40(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_3EA6F4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_3ED9E4();
    v13 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t LinkClearSwipeAction.init(featherWidth:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_3E5FC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  v10 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  a3[3] = v10;
  a3[4] = v12;
  v13 = *(type metadata accessor for LinkClearSwipeAction() + 28);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  result = swift_storeEnumTagMultiPayload();
  *a3 = 0x4030000000000000;
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

uint64_t type metadata accessor for LinkClearSwipeAction()
{
  result = qword_4FFFF0;
  if (!qword_4FFFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkClearSwipeAction.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = sub_3EA5E4();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEE0);
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEE8);
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v41 = a1;
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFEF8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFF00);
  v15 = sub_2DD734();
  v16 = sub_886BC(&qword_4FFF70, &qword_4FFF00);
  v43 = v13;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  swift_getOpaqueTypeConformance2();
  sub_3EB1F4();
  sub_3EA5D4();
  v17 = sub_886BC(&qword_4FFF78, &qword_4FFEE0);
  v18 = v38;
  sub_3EB724();
  (*(v39 + 8))(v5, v18);
  (*(v35 + 8))(v8, v6);
  v43 = v6;
  v44 = v18;
  v45 = v17;
  v46 = &protocol witness table for PlainListStyle;
  swift_getOpaqueTypeConformance2();
  v19 = v40;
  v20 = v36;
  sub_3EB534();
  (*(v37 + 8))(v12, v20);
  v21 = sub_3EBA84();
  v23 = v22;
  v24 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFF80) + 36);
  v25 = v19;
  sub_2DDB60(&static Color.black.getter, &static Color.clear.getter, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFF88);
  v27 = (v24 + *(v26 + 36));
  *v27 = v21;
  v27[1] = v23;
  v28 = sub_3EBA94();
  v30 = v29;
  v31 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFF90) + 36);
  result = sub_2DDB60(&static Color.clear.getter, &static Color.black.getter, v31);
  v33 = (v31 + *(v26 + 36));
  *v33 = v28;
  v33[1] = v30;
  return result;
}

uint64_t sub_2DD46C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFF10);
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEF8);
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  v22 = sub_3EB774();
  v10 = sub_3EB9A4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFF38);
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFF28) + 36)] = v10;
  v12 = *a2;
  v13 = &v6[*(v4 + 36)];
  *v13 = 0;
  *(v13 + 1) = v12;
  *(v13 + 2) = 0;
  *(v13 + 3) = v12;
  v13[32] = 0;
  sub_3EA3D4();
  sub_2DD828();
  sub_3EB584();
  sub_FCF8(v6, &qword_4FFF10);
  v14 = sub_3EBA74();
  v16 = v15;
  v17 = &v9[*(v7 + 36)];

  sub_3E6B94();
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFF68) + 36)];
  *v18 = v14;
  v18[1] = v16;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFF00);
  sub_2DD734();
  sub_886BC(&qword_4FFF70, &qword_4FFF00);
  sub_3EB504();
  return sub_2DE578(v9);
}

unint64_t sub_2DD734()
{
  result = qword_4FFF08;
  if (!qword_4FFF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFF10);
    sub_2DD828();
    swift_getOpaqueTypeConformance2();
    sub_886BC(&qword_4FFF60, &qword_4FFF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFF08);
  }

  return result;
}

unint64_t sub_2DD828()
{
  result = qword_4FFF18;
  if (!qword_4FFF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFF10);
    sub_2DD8E0();
    sub_886BC(&qword_4FFF50, &qword_4FFF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFF18);
  }

  return result;
}

unint64_t sub_2DD8E0()
{
  result = qword_4FFF20;
  if (!qword_4FFF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFF28);
    sub_886BC(&qword_4FFF30, &qword_4FFF38);
    sub_886BC(&qword_4FFF40, &qword_4FFF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FFF20);
  }

  return result;
}

uint64_t sub_2DD9C4(uint64_t a1)
{
  v2 = type metadata accessor for LinkClearSwipeAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_2DE5E0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2DE768(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_3EB904();
}

uint64_t sub_2DDAF0@<X0>(uint64_t a1@<X8>)
{
  sub_3EABC4();
  result = sub_3EB374();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2DDB60@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v26 = a1;
  v3 = sub_3EA6F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500048);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500050);
  __chkstk_darwin(v27);
  v15 = &v26 - v14;

  sub_3E6B94();
  sub_3EBA74();
  sub_3EA434();
  v16 = &v13[*(v11 + 44)];
  v17 = v31;
  *v16 = v30;
  *(v16 + 1) = v17;
  *(v16 + 2) = v32;
  sub_2DCC64(v9);
  (*(v4 + 104))(v6, enum case for LayoutDirection.leftToRight(_:), v3);
  v18 = sub_3EA6E4();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC160);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_3F5310;
  if (v18)
  {
    *(v20 + 32) = v26();
    v21 = v28();
  }

  else
  {
    *(v20 + 32) = v28();
    v21 = v26();
  }

  *(v20 + 40) = v21;
  sub_3EBB64();
  sub_3EBB74();
  sub_3EBA14();
  sub_3EA5A4();
  v22 = v33;
  sub_2DE364(v13, v15);
  v23 = &v15[*(v27 + 36)];
  *v23 = v22;
  v24 = v34;
  *(v23 + 24) = v35;
  *(v23 + 8) = v24;
  sub_2DE3D4();
  sub_3EB5E4();
  return sub_FCF8(v15, &qword_500050);
}

uint64_t sub_2DDF08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2DDFD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2DE088()
{
  sub_178DA4();
  if (v0 <= 0x3F)
  {
    sub_94C68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2DE128()
{
  result = qword_500030;
  if (!qword_500030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFF90);
    sub_2DE1E0();
    sub_886BC(&qword_500040, &qword_4FFF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500030);
  }

  return result;
}

unint64_t sub_2DE1E0()
{
  result = qword_500038;
  if (!qword_500038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FFEE0);
    sub_3EA5E4();
    sub_886BC(&qword_4FFF78, &qword_4FFEE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_886BC(&qword_500040, &qword_4FFF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500038);
  }

  return result;
}

uint64_t sub_2DE364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2DE3D4()
{
  result = qword_500058;
  if (!qword_500058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500050);
    sub_2DE48C();
    sub_886BC(&qword_500070, &qword_500078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500058);
  }

  return result;
}

unint64_t sub_2DE48C()
{
  result = qword_500060;
  if (!qword_500060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_500048);
    sub_2DE518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500060);
  }

  return result;
}

unint64_t sub_2DE518()
{
  result = qword_500068;
  if (!qword_500068)
  {
    sub_3E6BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_500068);
  }

  return result;
}

uint64_t sub_2DE578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2DE5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkClearSwipeAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DE644()
{
  v1 = (type metadata accessor for LinkClearSwipeAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_3EA6F4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2DE768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkClearSwipeAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DE844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PodcastsReferenceLink();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2DE914(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PodcastsReferenceLink();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for PodcastsReferenceLinkView()
{
  result = qword_5000D8;
  if (!qword_5000D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2DEA1C()
{
  type metadata accessor for PodcastsReferenceLink();
  if (v0 <= 0x3F)
  {
    sub_23FD50();
    if (v1 <= 0x3F)
    {
      sub_2DC100();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2DEAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PodcastsReferenceLink();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E015C(v1, v6, type metadata accessor for PodcastsReferenceLink);
  sub_2EB56C(v6, a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500118);
  sub_2DEC7C(a1 + v7[17]);
  sub_2DF258(a1 + v7[18]);
  v8 = v7[19];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDDD0);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + v7[20];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  sub_FBD0(v1 + *(v4 + 68), v14, &qword_4F00B0);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_500120) + 36);
  v11 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v11;
  *(v10 + 32) = v15;
  *(v10 + 40) = swift_getKeyPath();
  *(v10 + 48) = 0;
  result = swift_getKeyPath();
  *(v10 + 56) = result;
  *(v10 + 64) = 0;
  return result;
}

uint64_t sub_2DEC7C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v45 = sub_3EA7F4();
  __chkstk_darwin(v45);
  v3 = (&v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_3E7784();
  __chkstk_darwin(v4 - 8);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EAAF4();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEB0);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEB8);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FFEC0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  if (*(v1 + 16) == 1)
  {
    v21 = type metadata accessor for PodcastsReferenceLink();
    sub_2E015C(v1 + *(v21 + 24), v20, &type metadata accessor for ArtworkModel);
    v22 = &v20[*(v18 + 40)];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    v23 = &qword_4FFEC0;
    sub_FBD0(v20, v17, &qword_4FFEC0);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FFEC8, &qword_4FFEC0);
    sub_886BC(&qword_4FFED0, &qword_4FFEB0);
    sub_3EADE4();
    v24 = v20;
  }

  else
  {
    v40 = v15;
    v41 = v18;
    v25 = v1 + *(type metadata accessor for PodcastsReferenceLinkView() + 24);
    v26 = *v25;
    if (*(v25 + 8) == 1)
    {
      v27 = *v25;
      v47 = *v25;
    }

    else
    {

      sub_3ED9E4();
      v28 = sub_3EB034();
      v39 = v9;
      v29 = v28;
      sub_3E9754();

      v9 = v39;
      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_23968C(v26, 0);
      (*(v42 + 8))(v8, v43);
      v27 = v47;
    }

    v30 = type metadata accessor for PodcastsReferenceLink();
    v31 = v44;
    sub_2E015C(v1 + *(v30 + 24), v44, &type metadata accessor for ArtworkModel);
    v32 = *(v45 + 20);
    v33 = enum case for RoundedCornerStyle.continuous(_:);
    v34 = sub_3EABE4();
    (*(*(v34 - 8) + 104))(v3 + v32, v33, v34);
    v35 = 5.0;
    if (v27 < 2)
    {
      v35 = 6.0;
    }

    *v3 = v35;
    v3[1] = v35;
    sub_2DCB48(v31, v11, &type metadata accessor for ArtworkModel);
    sub_2DCB48(v3, &v11[*(v9 + 36)], &type metadata accessor for RoundedRectangle);
    v36 = &v11[*(v9 + 40)];
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    sub_2DCBB0(v11, v14);
    v23 = &qword_4FFEB0;
    sub_FBD0(v14, v17, &qword_4FFEB0);
    swift_storeEnumTagMultiPayload();
    sub_886BC(&qword_4FFEC8, &qword_4FFEC0);
    sub_886BC(&qword_4FFED0, &qword_4FFEB0);
    sub_3EADE4();
    v24 = v14;
  }

  return sub_FCF8(v24, v23);
}

uint64_t sub_2DF258@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7 == 3)
  {
    v12 = *(v1 + *(type metadata accessor for PodcastsReferenceLinkView() + 20) + 8);

    if ((v12 & 1) == 0)
    {
      sub_3ED9E4();
      v13 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();

      (*(v4 + 8))(v6, v3);
    }

    v15 = *(v1 + 24);
    v14 = *(v1 + 32);
    v16 = *(v1 + 40);
    if (*(v1 + *(type metadata accessor for PodcastsReferenceLink() + 44)) == 2)
    {
      v17 = 0;
    }

    else
    {
      v27 = sub_3E79D4();
      v29 = v28;
      v17 = 1;
      if (v27 != sub_3E79D4() || v29 != v30)
      {
        v17 = sub_3EE804();
      }
    }

    KeyPath = swift_getKeyPath();
    v53 = 0;
    v37 = swift_getKeyPath();
    v51 = 0;
    sub_3E8DC4();
    sub_3DE90(v15, v14, v16);
    sub_3EC394();
    v67 = 0;
    v68 = 0;
    v70 = 0;
    v71 = 0;
    v69 = 2;
    if (sub_3E8DB4())
    {
      v38 = a1;
      v32 = v17 & 1;
      sub_3E8A44();
      sub_2E0064(&qword_4F1850, &type metadata accessor for PodcastStateMachine);
      v33 = sub_3EA5B4();
      v35 = v34;

      *&v39 = v15;
      *(&v39 + 1) = v14;
      LOBYTE(v40) = v16;
      *(&v40 + 1) = *v54;
      DWORD1(v40) = *&v54[3];
      *(&v40 + 1) = KeyPath;
      LOBYTE(v41) = v53;
      *(&v41 + 1) = *v52;
      DWORD1(v41) = *&v52[3];
      *(&v41 + 1) = v37;
      LOBYTE(v42) = v51;
      BYTE1(v42) = v32;
      WORD3(v42) = v50;
      *(&v42 + 2) = v49;
      *(&v42 + 1) = v33;
      v43 = v35;
      v48 = v35;
      v46 = v41;
      v47 = v42;
      v44 = v39;
      v45 = v40;
      *&v60 = v15;
      *(&v60 + 1) = v14;
      LOBYTE(v61) = v16;
      DWORD1(v61) = *&v54[3];
      *(&v61 + 1) = *v54;
      *(&v61 + 1) = KeyPath;
      LOBYTE(v62) = v53;
      DWORD1(v62) = *&v52[3];
      *(&v62 + 1) = *v52;
      *(&v62 + 1) = v37;
      LOBYTE(v63) = v51;
      BYTE1(v63) = v32;
      WORD3(v63) = v50;
      *(&v63 + 2) = v49;
      *(&v63 + 1) = v33;
      v64 = v35;
      sub_2DFFB4(&v39, &v55);
      sub_2E0010(&v60);
      v56 = v45;
      v57 = v46;
      v58 = v47;
      v59 = v48;
      v55 = v44;
    }

    else
    {

      sub_3DEF8(v15, v14, v16);
      sub_23968C(KeyPath, v53);

      v59 = 0;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
    }

    v61 = v56;
    v62 = v57;
    v63 = v58;
    v64 = v59;
    v60 = v55;
    v65 = 1;
    sub_FBD0(&v55, &v44, &qword_500170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500170);
    sub_2DFD84();
    sub_2DFEE4(&qword_500168, &qword_500170, &unk_416DA8, sub_2DFF60);
    sub_3EADE4();
    sub_FBD0(&v44, &v60, &qword_500128);
    v66 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500128);
    sub_2DFCCC();
    sub_3EADE4();
    sub_FCF8(&v55, &qword_500170);
    v25 = &v44;
    v26 = &qword_500128;
    return sub_FCF8(v25, v26);
  }

  if (v7 != 2)
  {
    v66 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500128);
    sub_2DFCCC();
    return sub_3EADE4();
  }

  v8 = type metadata accessor for PodcastsReferenceLinkView();
  v9 = v1 + *(v8 + 24);
  v10 = *v9;
  LODWORD(v9) = *(v9 + 8);
  v38 = a1;
  if (v9 != 1)
  {

    sub_3ED9E4();
    v19 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v10, 0);
    (*(v4 + 8))(v6, v3);
    if (v39 > 1u)
    {
      goto LABEL_5;
    }

LABEL_12:
    v20 = *(v1 + *(v8 + 20) + 8);

    if ((v20 & 1) == 0)
    {
      sub_3ED9E4();
      v21 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();

      (*(v4 + 8))(v6, v3);
    }

    v22 = *(v1 + 24);
    v23 = *(v1 + 32);
    v24 = *(v1 + 40);
    sub_3DE90(v22, v23, v24);
    sub_2E87A4(v22, v23, v24, &v60);
    BYTE1(v64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500150);
    sub_2DFEE4(&qword_500148, &qword_500150, &unk_416DA0, sub_2DFE3C);
    sub_2DFE90();
    sub_3EADE4();
    goto LABEL_15;
  }

  LOBYTE(v39) = v10;
  if (v10 <= 1u)
  {
    goto LABEL_12;
  }

LABEL_5:
  *(&v45 + 1) = type metadata accessor for PodcastsReferenceLink();
  *&v46 = sub_2E0064(&qword_500180, type metadata accessor for PodcastsReferenceLink);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v44);
  sub_2E015C(v1, boxed_opaque_existential_0Tm, type metadata accessor for PodcastsReferenceLink);
  LOBYTE(v55) = 0;
  sub_3EB8B4();
  BYTE8(v46) = v60;
  *&v47 = *(&v60 + 1);
  *(&v47 + 1) = swift_getKeyPath();
  LOBYTE(v48) = 0;
  sub_2E00AC(&v44, &v60);
  BYTE1(v64) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500150);
  sub_2DFEE4(&qword_500148, &qword_500150, &unk_416DA0, sub_2DFE3C);
  sub_2DFE90();
  sub_3EADE4();
  sub_2E0108(&v44);
LABEL_15:
  sub_FBD0(&v55, &v60, &qword_500140);
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500170);
  sub_2DFD84();
  sub_2DFEE4(&qword_500168, &qword_500170, &unk_416DA8, sub_2DFF60);
  sub_3EADE4();
  sub_FBD0(&v44, &v60, &qword_500128);
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500128);
  sub_2DFCCC();
  sub_3EADE4();
  sub_FCF8(&v44, &qword_500128);
  v25 = &v55;
  v26 = &qword_500140;
  return sub_FCF8(v25, v26);
}