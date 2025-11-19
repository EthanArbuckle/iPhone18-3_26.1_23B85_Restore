void (*sub_19A732424@<X0>(uint64_t a1@<X0>, __objc2_class **a2@<X8>))(char *, void)
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v33 - v11, &qword_1EAFCD800);
  v13 = sub_19A7A8F64();
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  sub_19A5F2B54(v12, &qword_1EAFCD800);
  if (v14 != 1 || !*(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8))
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v34 = v9;
  v37 = v4;
  v15 = sub_19A652898();
  v16 = v15;
  v35 = a2;
  v36 = v5;
  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
LABEL_24:
    v18 = sub_19A7ABBE4();
  }

  else
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v5 = 0;
  v4 = v16 & 0xC000000000000001;
  a2 = &off_1E751B000;
  while (1)
  {
    if (v18 == v19)
    {

      return (*(v36 + 56))(v35, 1, 1, v37);
    }

    if (v4)
    {
      v20 = MEMORY[0x19A906130](v19, v16);
      if (__OFADD__(v19, 1))
      {
LABEL_16:
        __break(1u);
        return (*(v5 + 56))(a2, 1, 1, v4);
      }
    }

    else
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v20 = *(v16 + 8 * v19 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v19, 1))
      {
        goto LABEL_16;
      }
    }

    v21 = [v20 indexPathForItem_];
    if (v21)
    {
      break;
    }

    v22 = [v20 numberOfSections];
    swift_unknownObjectRelease();
    ++v19;
    v23 = __OFADD__(v5, v22);
    v5 += v22;
    if (v23)
    {
      goto LABEL_23;
    }
  }

  v25 = v21;

  v26 = v38;
  sub_19A7A9024();

  v28 = v36;
  v27 = v37;
  v29 = *(v36 + 32);
  v30 = v34;
  v29(v34, v26, v37);
  result = sub_19A7A9054();
  if (__OFADD__(*v31, v5))
  {
    __break(1u);
  }

  else
  {
    *v31 += v5;
    result(v39, 0);
    swift_unknownObjectRelease();
    v32 = v35;
    v29(v35, v30, v27);
    return (*(v28 + 56))(v32, 0, 1, v27);
  }

  return result;
}

id sub_19A732804(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = a3;
  v11 = a1;
  a4(v10);

  v12 = sub_19A7A9094();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_19A7A9014();
    (*(v13 + 8))(v9, v12);
    v15 = v16;
  }

  return v15;
}

uint64_t sub_19A732950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v24 - v6, &qword_1EAFCD800);
  v8 = sub_19A7A8F64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v27 = v9 + 48;
  v11 = v10(v7, 1, v8);
  sub_19A5F2B54(v7, &qword_1EAFCD800);
  if (v11 != 1 || !*(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8))
  {
    return 0;
  }

  v12 = sub_19A652898();
  v13 = v12;
  v25 = v10;
  v26 = v5;
  if (v12 >> 62)
  {
    goto LABEL_18;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    while (1)
    {
      v15 = 0;
      while ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x19A906130](v15, v13);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_14:
          __break(1u);
          return 0;
        }

LABEL_9:
        v18 = [v16 accessibilityTextForItem_];
        if (v18)
        {
          v20 = v18;

          v21 = sub_19A7AB014();

          swift_unknownObjectRelease();
          return v21;
        }

        swift_unknownObjectRelease();
        ++v15;
        if (v17 == v14)
        {
          goto LABEL_19;
        }
      }

      if (v15 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_18:
      v14 = sub_19A7ABBE4();
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    v16 = *(v13 + 8 * v15 + 32);
    swift_unknownObjectRetain();
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

LABEL_19:

  if (*(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8))
  {

    v22 = v26;
    sub_19A7A8F04();

    v25(v22, 1, v8);
    sub_19A5F2B54(v22, &qword_1EAFCD800);
  }

  v23 = sub_19A7AB0A4();

  return v23;
}

void sub_19A732D2C()
{
  v1 = sub_19A7A8C04();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A731188();
  v6 = *&v5[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration];
  v7 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  LODWORD(v6) = *(v6 + v7);

  if (v6 == 1)
  {
    v8 = *(*(v0 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig) + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration);
    v9 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
    swift_beginAccess();
    if ((*(v8 + v9) & 1) == 0)
    {
      v10 = sub_19A652898();
      if (v10 >> 62)
      {
        goto LABEL_20;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v11)
      {
        while (1)
        {
          v12 = sub_19A652898();
          v13 = v12;
          *&v30 = MEMORY[0x1E69E7CC0];
          if (v12 >> 62)
          {
            v14 = sub_19A7ABBE4();
            if (!v14)
            {
LABEL_23:
              v16 = MEMORY[0x1E69E7CC0];
LABEL_24:

              if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
              {
                v18 = sub_19A7ABBE4();
              }

              else
              {
                v18 = *(v16 + 16);
              }

              if (!v18)
              {
                if (qword_1ED8B2020 != -1)
                {
                  swift_once();
                }

                v30 = 0u;
                v31 = 0u;
                v19 = qword_1ED8B4238;
                sub_19A7A8BD4();
                v20 = [objc_opt_self() defaultCenter];
                v21 = sub_19A7A8BB4();
                [v20 postNotification_];

                if (qword_1EAFCAAB8 != -1)
                {
                  swift_once();
                }

                v22 = sub_19A7A9384();
                __swift_project_value_buffer(v22, qword_1EAFCAAC0);
                v23 = sub_19A7A9364();
                v24 = sub_19A7AB5A4();
                if (os_log_type_enabled(v23, v24))
                {
                  v25 = swift_slowAlloc();
                  *v25 = 0;
                  _os_log_impl(&dword_19A5EE000, v23, v24, "Notified the datasource our puppets did change.", v25, 2u);
                  MEMORY[0x19A907A30](v25, -1, -1);
                }

                (v2)[1](v4, v1);
              }

              return;
            }
          }

          else
          {
            v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v14)
            {
              goto LABEL_23;
            }
          }

          v27 = v4;
          v28 = v2;
          v29 = v1;
          v1 = 0;
          while ((v13 & 0xC000000000000001) != 0)
          {
            v2 = MEMORY[0x19A906130](v1, v13);
            v15 = v1 + 1;
            if (__OFADD__(v1, 1))
            {
LABEL_17:
              __break(1u);
LABEL_18:
              v1 = v29;
              v16 = v30;
              v4 = v27;
              v2 = v28;
              goto LABEL_24;
            }

LABEL_13:
            if ([v2 isReady])
            {
              swift_unknownObjectRelease();
            }

            else
            {
              sub_19A7ABD64();
              v4 = *(v30 + 16);
              sub_19A7ABD94();
              sub_19A7ABDA4();
              sub_19A7ABD74();
            }

            ++v1;
            if (v15 == v14)
            {
              goto LABEL_18;
            }
          }

          if (v1 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_20:
          v17 = sub_19A7ABBE4();

          if (!v17)
          {
            return;
          }
        }

        v2 = *(v13 + 8 * v1 + 32);
        swift_unknownObjectRetain();
        v15 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }
    }
  }
}

id sub_19A733188(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource_maxDisplayImageEdgeLength] = 0x4064000000000000;
  *&v1[OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___puppetQueue] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___internalSources] = 0;
  v3 = OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource_avtStore;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E698E348]) init];
  v1[OBJC_IVAR___STKImageGlyphAggregatingDataSource_isEnabled] = 1;
  *&v1[OBJC_IVAR___STKImageGlyphAggregatingDataSource_glyphType] = 0;
  *&v1[OBJC_IVAR___STKImageGlyphAggregatingDataSource_dataSources] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageGlyphAggregatingDataSource();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_19A7332A4()
{

  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource_avtStore);
}

id sub_19A733304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarGlyphDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_19A733508()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 104);
  }

  else
  {
    v3 = *(v0 + 32);
    v4 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
    v5 = v3;
    v6 = v0;
    v7 = ImageGlyphUIConfiguration.init(_:glyphType:)(0, v5);
    v8 = *(v0 + 104);
    *(v6 + 104) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_19A733644()
{
  v1 = sub_19A7AA764();
  v13 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19A7AA7B4();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v11 = sub_19A731204();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_19A74048C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_308;
  v8 = _Block_copy(aBlock);

  sub_19A7AA784();
  v14 = MEMORY[0x1E69E7CC0];
  sub_19A740A38(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
  sub_19A7ABB54();
  v9 = v11;
  MEMORY[0x19A905BE0](0, v6, v3, v8);
  _Block_release(v8);

  (*(v13 + 8))(v3, v1);
  (*(v4 + 8))(v6, v12);
}

void sub_19A733944()
{
  v61[6] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(*__swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72)) + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource_avtStore);
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 requestForPredefinedAvatars];
    v61[0] = 0;
    v6 = [v4 avatarsForFetchRequest:v5 error:v61];

    v7 = v61[0];
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF0F8);
      v8 = sub_19A7AB254();
      v9 = v7;

      v10 = sub_19A7309F8(v8);
      v11 = v1[12];
      v58 = MEMORY[0x1EEE9AC00](v10);
      MEMORY[0x1EEE9AC00](v58);

      os_unfair_lock_lock(v11 + 4);
      v7 = 0;
      sub_19A5F57B8(v12);
      os_unfair_lock_unlock(v11 + 4);

      v60 = MEMORY[0x1E69E7CC0];
      v59 = sub_19A69C69C(MEMORY[0x1E69E7CC0]);

      sub_19A73FCA0(v10, &v60, &v59);

      v13 = v60;
      v14 = sub_19A72AB7C(v1[14], v60);
      if (qword_1EAFCAAB8 != -1)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v15 = sub_19A7A9384();
        __swift_project_value_buffer(v15, qword_1EAFCAAC0);
        v16 = sub_19A7A9364();
        v17 = sub_19A7AB574();
        if (!os_log_type_enabled(v16, v17))
        {
          break;
        }

        v18 = swift_slowAlloc();
        *v18 = 134218240;
        *(v18 + 4) = *(v13 + 2);
        *(v18 + 12) = 2048;
        swift_beginAccess();
        v19 = 0;
        v20 = 0;
        v21 = 1 << *(v59 + 32);
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = -1;
        }

        v23 = v22 & *(v59 + 64);
        v24 = (v21 + 63) >> 6;
        while (v23)
        {
          v25 = v19;
LABEL_15:
          v26 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v27 = *(*(*(v59 + 56) + ((v25 << 9) | (8 * v26))) + 16);
          v28 = __OFADD__(v20, v27);
          v20 += v27;
          if (v28)
          {
            __break(1u);
            goto LABEL_18;
          }
        }

        while (1)
        {
          v25 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v25 >= v24)
          {
            *(v18 + 14) = v20;
            _os_log_impl(&dword_19A5EE000, v16, v17, "Loaded %ld animoji with a total of %ld poses", v18, 0x16u);
            MEMORY[0x19A907A30](v18, -1, -1);
            goto LABEL_24;
          }

          v23 = *(v59 + 64 + 8 * v25);
          ++v19;
          if (v23)
          {
            v19 = v25;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_34:
        swift_once();
      }

LABEL_24:

      v47 = v1[12];
      v48 = swift_beginAccess();
      v49 = MEMORY[0x1EEE9AC00](v48);
      MEMORY[0x1EEE9AC00](v49);

      os_unfair_lock_lock(v47 + 4);
      sub_19A5F57B8(v50);
      os_unfair_lock_unlock(v47 + 4);
      v46 = v14 ^ 1;
    }

    else
    {
LABEL_18:
      v29 = v7;
      v30 = sub_19A7A8D34();

      swift_willThrow();
      if (qword_1EAFCAAB8 != -1)
      {
        swift_once();
      }

      v31 = sub_19A7A9384();
      __swift_project_value_buffer(v31, qword_1EAFCAAC0);
      v32 = v30;
      v33 = sub_19A7A9364();
      v34 = sub_19A7AB584();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v61[0] = v36;
        *v35 = 136315138;
        swift_getErrorValue();
        v37 = sub_19A7AC124();
        v39 = sub_19A62540C(v37, v38, v61);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_19A5EE000, v33, v34, "Could not fetch avatars. %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x19A907A30](v36, -1, -1);
        MEMORY[0x19A907A30](v35, -1, -1);
      }

      v40 = v1[12];
      MEMORY[0x1EEE9AC00](v41);
      os_unfair_lock_lock(v40 + 4);
      sub_19A6FBE70(v61);
      os_unfair_lock_unlock(v40 + 4);
      v42 = v61[0];
      v43 = v1[12];
      MEMORY[0x1EEE9AC00](v44);

      os_unfair_lock_lock(v43 + 4);
      sub_19A5F57B8(v45);
      v46 = v42 != 0;
      os_unfair_lock_unlock(v43 + 4);
    }

    v52 = v1[12];
    MEMORY[0x1EEE9AC00](v51);

    os_unfair_lock_lock(v52 + 4);
    sub_19A5F57B8(v53);
    os_unfair_lock_unlock(v52 + 4);

    if (v46)
    {
      __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
      sub_19A732D2C();
    }

    else
    {
      if (qword_1EAFCAAB8 != -1)
      {
        swift_once();
      }

      v54 = sub_19A7A9384();
      __swift_project_value_buffer(v54, qword_1EAFCAAC0);
      v55 = sub_19A7A9364();
      v56 = sub_19A7AB574();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_19A5EE000, v55, v56, "Animoji did not change", v57, 2u);
        MEMORY[0x19A907A30](v57, -1, -1);
      }
    }
  }
}

uint64_t sub_19A734154(id *a1, char **a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = [*a1 identifier];
  v7 = sub_19A7AB014();
  v9 = v8;

  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_19A5F61A0(0, *(v10 + 2) + 1, 1, v10);
    *a2 = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_19A5F61A0((v12 > 1), v13 + 1, 1, v10);
    *a2 = v10;
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = v7;
  *(v14 + 5) = v9;
  v15 = [v5 identifier];
  if (!v15)
  {
    sub_19A7AB014();
    v15 = sub_19A7AAFE4();
  }

  v16 = [objc_opt_self() availableStickerNamesForAnimojiNamed:v15 inStickerPack:*MEMORY[0x1E698E2E0]];

  v17 = sub_19A7AB254();
  v18 = [v5 identifier];
  v19 = sub_19A7AB014();
  v21 = v20;

  v23 = sub_19A7306D0(v22);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *a3;
  *a3 = 0x8000000000000000;
  sub_19A650CB4(v23, v19, v21, v24);

  *a3 = v26;
  sub_19A797F6C(v5, v17);
}

uint64_t sub_19A734364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 112) = a2;

  *(a1 + 120) = a3;
}

uint64_t sub_19A7343C8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 112) = MEMORY[0x1E69E7CC0];

  *(a1 + 120) = sub_19A69C69C(v2);
}

uint64_t sub_19A734424(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v3 = *(v1 + 96);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 4);
  sub_19A6FBE70(&v7);
  os_unfair_lock_unlock(v3 + 4);
  if (v7 <= a1)
  {
    return 0;
  }

  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v3 + 4);
  sub_19A740AB8(&v7);
  os_unfair_lock_unlock(v3 + 4);
  return v7;
}

uint64_t sub_19A734554(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(v2 + 96);
  v5 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v3 + 4);
  sub_19A6FBE70(&v6);
  os_unfair_lock_unlock(v3 + 4);
  return v6;
}

uint64_t sub_19A734614@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(result + 120);
  if (*(v5 + 16))
  {

    v8 = sub_19A6955C0(a2, a3);
    if (v9)
    {
      v10 = *(*(v5 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  return result;
}

uint64_t sub_19A7346A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(v3 + 96);
  os_unfair_lock_lock(v5 + 4);
  sub_19A6FBE70(&v8);
  os_unfair_lock_unlock(v5 + 4);
  result = v8;
  if (v8)
  {
    if ((a3 & 0x8000000000000000) != 0 || *(v8 + 16) <= a3)
    {

      return 0;
    }

    else
    {
      v7 = *(v8 + 16 * a3 + 32);

      return v7;
    }
  }

  return result;
}

uint64_t sub_19A7347E0@<X0>(void *a1@<X8>)
{

  v3 = sub_19A72FE14(v2);

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 32);
    while (1)
    {
      v8 = *v7++;
      v9 = __OFADD__(v6, v8);
      v6 += v8;
      if (v9)
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
LABEL_7:

    *a1 = v6;
  }

  return result;
}

uint64_t sub_19A7348E4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(result + 112);
  if (*(v4 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(result + 120);
  if (*(v5 + 16))
  {
    v6 = v4 + 16 * a2;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);

    v9 = sub_19A6955C0(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v5 + 56) + 8 * v9);

      v13 = *(v12 + 16);
    }

    else
    {

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  return result;
}

char *sub_19A734A70(uint64_t a1)
{
  v3 = sub_19A7A9094();
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v15 = *(v1 + 96);
  v46 = sub_19A740B80;
  v47 = v1;
  os_unfair_lock_lock(v15 + 4);
  sub_19A6FBE70(&v49);
  os_unfair_lock_unlock(v15 + 4);
  v16 = v49;
  if (sub_19A7A9064() >= v16)
  {
    return sub_19A76E5A0(2, a1);
  }

  v17 = sub_19A7A9064();
  v18 = sub_19A734424(v17);
  if (!v19)
  {
    return sub_19A76E5A0(2, a1);
  }

  v20 = v18;
  v21 = v19;
  v22 = sub_19A7A9044();
  v23 = sub_19A7346A4(v20, v21, v22);
  if (!v24)
  {

    return sub_19A76E5A0(2, a1);
  }

  v25 = v24;
  v43 = v23;
  v26 = sub_19A7A8F64();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = v45;
  (*(v45 + 56))(v11, 1, 1, v3);
  v44 = type metadata accessor for ImageGlyph(0);
  v28 = objc_allocWithZone(v44);
  v42 = v20;
  v29 = v28;
  v30 = &v28[OBJC_IVAR___STKImageGlyph_optionalData];
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  *&v28[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
  v28[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
  sub_19A60F0CC(v14, &v28[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
  *&v29[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
  *&v29[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
  v31 = &v29[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
  v32 = v43;
  *v31 = v42;
  v31[1] = v21;
  v33 = &v29[OBJC_IVAR___STKImageGlyph_poseIdentifier];
  *v33 = v32;
  *(v33 + 1) = v25;
  v34 = &v29[OBJC_IVAR___STKImageGlyph_emoji];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 2) = 0u;
  *(v34 + 24) = 0;
  v35 = &v29[OBJC_IVAR___STKImageGlyph_emojiString];
  *v35 = 0;
  *(v35 + 1) = 0;
  sub_19A60F0CC(v11, v9, &unk_1EAFCF110);
  if ((*(v27 + 48))(v9, 1, v3) == 1)
  {
    sub_19A5F2B54(v9, &unk_1EAFCF110);
  }

  else
  {
    (*(v27 + 32))(v5, v9, v3);
    v37 = sub_19A76DC5C();
    v39 = v38;
    (*(v27 + 8))(v5, v3);
    *v30 = v37;
    v30[1] = v39;
  }

  v40 = &v29[OBJC_IVAR___STKImageGlyph_character];
  *v40 = 0;
  *(v40 + 1) = 0;
  v48.receiver = v29;
  v48.super_class = v44;
  v41 = objc_msgSendSuper2(&v48, sel_init);
  sub_19A5F2B54(v11, &unk_1EAFCF110);
  sub_19A5F2B54(v14, &qword_1EAFCD800);
  return v41;
}

id sub_19A734F24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v40 - v7;
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, v40 - v7, &qword_1EAFCD800);
  v9 = sub_19A7A8F64();
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v8, 1, v9);
  sub_19A5F2B54(v8, &qword_1EAFCD800);
  if (v11 != 1)
  {
    return 0;
  }

  v12 = *(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8);
  if (!v12)
  {
    return 0;
  }

  v13 = *(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier);

  sub_19A7A8F04();

  v14 = v10(v6, 1, v9);
  sub_19A5F2B54(v6, &qword_1EAFCD800);
  if (v14 != 1)
  {
    return 0;
  }

  v15 = *(a1 + OBJC_IVAR___STKImageGlyph_poseIdentifier + 8);
  if (!v15)
  {
    return 0;
  }

  v40[1] = *(a1 + OBJC_IVAR___STKImageGlyph_poseIdentifier);
  v40[2] = v15;
  v16 = *(v1 + 128);
  if (v16 >> 62)
  {
LABEL_31:
    v17 = sub_19A7ABBE4();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v17)
  {
LABEL_22:

    return 0;
  }

  v18 = 0;
  v41 = v16 & 0xFFFFFFFFFFFFFF8;
  v42 = v16 & 0xC000000000000001;
  while (1)
  {
    if (v42)
    {
      v19 = MEMORY[0x19A906130](v18, v16);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      if (v18 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v19 = *(v16 + 8 * v18 + 32);
      swift_unknownObjectRetain();
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_21;
      }
    }

    v21 = [v19 identifier];
    v22 = sub_19A7AB014();
    v24 = v23;

    if (v22 == v13 && v12 == v24)
    {
      break;
    }

    v26 = sub_19A7AC064();

    if (v26)
    {
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
    ++v18;
    if (v20 == v17)
    {
      goto LABEL_22;
    }
  }

LABEL_24:

  v27 = *MEMORY[0x1E698E2E0];
  v28 = sub_19A7AAFE4();
  v29 = sub_19A7AAFE4();
  v30 = [objc_opt_self() stickerConfigurationForAnimojiNamed:v28 inStickerPack:v27 stickerName:v29];

  if (!v30)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_19A7B6C20;
  v32 = [v30 localizedName];
  *(v31 + 32) = sub_19A7AB014();
  *(v31 + 40) = v33;
  result = [objc_opt_self() descriptionForAvatarWithRecord:v19 includeVideoPrefix:0];
  if (result)
  {
    v35 = result;

    v36 = sub_19A7AB014();
    v38 = v37;

    *(v31 + 48) = v36;
    *(v31 + 56) = v38;
    v43 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
    sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0);
    v39 = sub_19A7AAF94();

    swift_unknownObjectRelease();

    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A7353E8(uint64_t a1)
{
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_19A6FBE70(&v10);
  os_unfair_lock_unlock(v3 + 4);
  if (v10 > a1)
  {
    v4 = sub_19A734424(a1);
    if (v5)
    {
      v9 = MEMORY[0x1EEE9AC00](v4);
      MEMORY[0x1EEE9AC00](v9);

      os_unfair_lock_lock(v3 + 4);
      sub_19A6FBE70(&v10);
      os_unfair_lock_unlock(v3 + 4);

      if (v10)
      {
        v7 = MEMORY[0x1EEE9AC00](v6);
        MEMORY[0x1EEE9AC00](v7);
        os_unfair_lock_lock(v3 + 4);
        sub_19A60F150(&v10);
        os_unfair_lock_unlock(v3 + 4);

        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_19A7355C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v62 = a2;
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v66 = &v50 - v17;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v61 = v14;
    v51 = a4;
    v52 = v4;
    v70 = MEMORY[0x1E69E7CC0];
    v65 = v18;
    sub_19A5F6074(0, v18, 0);
    v68 = v70;
    v20 = sub_19A7A8F64();
    v21 = *(v20 - 8);
    v59 = (v9 + 56);
    v60 = v20;
    v58 = (v9 + 48);
    v54 = (v9 + 32);
    v22 = *(v21 + 56);
    v56 = v21 + 56;
    v57 = v22;
    v53 = (v9 + 8);
    v23 = (a1 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v64 = v23;
      v26 = v66;
      v57(v66, 1, 1, v60);
      v27 = v67;
      (*v59)(v67, 1, 1, v8);
      v63 = type metadata accessor for ImageGlyph(0);
      v28 = objc_allocWithZone(v63);
      v29 = &v28[OBJC_IVAR___STKImageGlyph_optionalData];
      *v29 = 0;
      v29[1] = 0xE000000000000000;
      *&v28[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
      v28[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
      sub_19A60F0CC(v26, &v28[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
      *&v28[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
      *&v28[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
      v30 = &v28[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
      *v30 = v62;
      v30[1] = a3;
      v31 = &v28[OBJC_IVAR___STKImageGlyph_poseIdentifier];
      *v31 = v24;
      v31[1] = v25;
      v32 = &v28[OBJC_IVAR___STKImageGlyph_emoji];
      *v32 = 0u;
      *(v32 + 1) = 0u;
      *(v32 + 2) = 0u;
      *(v32 + 24) = 0;
      v33 = &v28[OBJC_IVAR___STKImageGlyph_emojiString];
      *v33 = 0;
      v33[1] = 0;
      v34 = v27;
      v35 = v61;
      sub_19A60F0CC(v34, v61, &unk_1EAFCF110);
      if ((*v58)(v35, 1, v8) == 1)
      {
        swift_bridgeObjectRetain_n();

        sub_19A5F2B54(v35, &unk_1EAFCF110);
      }

      else
      {
        v36 = v55;
        (*v54)(v55, v35, v8);
        swift_bridgeObjectRetain_n();

        v37 = sub_19A76DC5C();
        v38 = a3;
        v40 = v39;
        (*v53)(v36, v8);
        *v29 = v37;
        v29[1] = v40;
        a3 = v38;
      }

      v41 = &v28[OBJC_IVAR___STKImageGlyph_character];
      *v41 = 0;
      v41[1] = 0;
      v69.receiver = v28;
      v69.super_class = v63;
      v42 = objc_msgSendSuper2(&v69, sel_init);
      sub_19A5F2B54(v67, &unk_1EAFCF110);
      sub_19A5F2B54(v66, &qword_1EAFCD800);
      v43 = sub_19A7663D0();
      v45 = v44;

      v46 = v68;
      v70 = v68;
      v48 = *(v68 + 16);
      v47 = *(v68 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_19A5F6074((v47 > 1), v48 + 1, 1);
        v46 = v70;
      }

      *(v46 + 16) = v48 + 1;
      v68 = v46;
      v49 = v46 + 16 * v48;
      *(v49 + 32) = v43;
      *(v49 + 40) = v45;
      v23 = v64 + 2;
      --v65;
    }

    while (v65);
    a4 = v51;
    v19 = v68;
  }

  *a4 = v19;
}

id sub_19A735B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C40;
  v7 = sub_19A65332C();
  v8 = type metadata accessor for ImageGlyphCategory(0);
  v9 = objc_allocWithZone(v8);
  sub_19A7A8F54();
  v10 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
  *&v9[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
  v11 = &v9[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
  *v11 = 0x696A6F6D654DLL;
  v11[1] = 0xE600000000000000;
  *&v9[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = 13;
  *&v9[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] = xmmword_19A7C0260;
  v9[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
  *&v9[v10] = v7;
  v28.receiver = v9;
  v28.super_class = v8;
  result = objc_msgSendSuper2(&v28, sel_init);
  *(inited + 32) = result;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x19A906130](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = result;
  }

  v14 = v13;

  v15 = a1;
  v16 = sub_19A7AB924();

  if ((v16 & 1) != 0 && ((v18 = *(v3 + 96), MEMORY[0x1EEE9AC00](v17), os_unfair_lock_lock(v18 + 4), sub_19A6FBE70(v27), os_unfair_lock_unlock(v18 + 4), v27[0] <= 0) ? (v21 = 0, v22 = 0) : (v20 = MEMORY[0x1EEE9AC00](v19), MEMORY[0x1EEE9AC00](v20), os_unfair_lock_lock(v18 + 4), sub_19A740AB8(v27), os_unfair_lock_unlock(v18 + 4), v21 = v27[0], v22 = v27[1]), (v23 = sub_19A734554(v21, v22), , v23) && (v24 = *(v23 + 16), , v24)))
  {
    MEMORY[0x19A903470](0, 0);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_19A7A9094();
  return (*(*(v26 - 8) + 56))(a2, v25, 1, v26);
}

void sub_19A735E48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 96);
  os_unfair_lock_lock(v5 + 4);
  sub_19A6FBE70(&v16);
  os_unfair_lock_unlock(v5 + 4);
  if (v16 <= a1)
  {
    goto LABEL_11;
  }

  MEMORY[0x1EEE9AC00](v6);
  os_unfair_lock_lock(v5 + 4);
  sub_19A6FBE70(&v16);
  os_unfair_lock_unlock(v5 + 4);
  v8 = v16;
  if (v16 < 0)
  {
    __break(1u);
    return;
  }

  if (!v16)
  {
LABEL_11:
    v14 = 1;
    goto LABEL_12;
  }

  v9 = 0;
  while (1)
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock(v5 + 4);
    sub_19A6FBE70(&v16);
    os_unfair_lock_unlock(v5 + 4);
    if (v9 >= v16)
    {
      break;
    }

    v10 = MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v10);
    os_unfair_lock_lock(v5 + 4);
    sub_19A740AB8(&v16);
    os_unfair_lock_unlock(v5 + 4);
    v12 = MEMORY[0x1EEE9AC00](v11);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock(v5 + 4);
    sub_19A6FBE70(&v16);
    os_unfair_lock_unlock(v5 + 4);

    v7 = v16;
    if (!v16)
    {
      break;
    }

    v13 = *(v16 + 16);

    if (a1 < v13)
    {
      goto LABEL_13;
    }

LABEL_7:
    ++v9;
    a1 -= v13;
    if (v8 == v9)
    {
      goto LABEL_11;
    }
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    goto LABEL_7;
  }

LABEL_13:
  MEMORY[0x19A903470](a1, v9);
  v14 = 0;
LABEL_12:
  v15 = sub_19A7A9094();
  (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_19A736150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a2 == 2 && (v5 = *(v3 + 96), v12 = MEMORY[0x1EEE9AC00](a1), MEMORY[0x1EEE9AC00](v12), os_unfair_lock_lock(v5 + 4), sub_19A740AA0(&v13), os_unfair_lock_unlock(v5 + 4), (v14 & 1) == 0) && (v7 = v13, v8 = MEMORY[0x1EEE9AC00](v6), MEMORY[0x1EEE9AC00](v8), os_unfair_lock_lock(v5 + 4), sub_19A6FBE70(&v13), os_unfair_lock_unlock(v5 + 4), v13))
  {

    MEMORY[0x19A903470](0, v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_19A7A9094();
  return (*(*(v10 - 8) + 56))(a3, v9, 1, v10);
}

uint64_t sub_19A736640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8))
  {
    goto LABEL_14;
  }

  v4 = *(a1 + OBJC_IVAR___STKImageGlyph_poseIdentifier + 8);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + OBJC_IVAR___STKImageGlyph_poseIdentifier);
  v6 = *(v2 + 96);
  v7 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock(v6 + 4);
  sub_19A740AA0(&v18);
  os_unfair_lock_unlock(v6 + 4);
  if (v19)
  {
    goto LABEL_14;
  }

  v17 = v18;
  v9 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  os_unfair_lock_lock(v6 + 4);
  sub_19A6FB524(&v18);
  os_unfair_lock_unlock(v6 + 4);
  if (!v18)
  {
    goto LABEL_14;
  }

  v10 = *(v18 + 16);
  if (!v10)
  {
LABEL_13:

LABEL_14:
    v14 = 1;
    goto LABEL_15;
  }

  v11 = 0;
  v12 = (v18 + 40);
  while (1)
  {
    v13 = *(v12 - 1) == v5 && v4 == *v12;
    if (v13 || (sub_19A7AC064() & 1) != 0)
    {
      break;
    }

    ++v11;
    v12 += 2;
    if (v10 == v11)
    {
      goto LABEL_13;
    }
  }

  MEMORY[0x19A903470](v11, v17);
  v14 = 0;
LABEL_15:
  v15 = sub_19A7A9094();
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_19A7371FC(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_19A7A9094();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_19A7A9024();

  return MEMORY[0x1EEE6DFA0](sub_19A7372F8, 0, 0);
}

uint64_t sub_19A7372F8()
{
  v1 = sub_19A734A70(v0[5]);
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_19A6F5DD0;

    return sub_19A73741C(v2);
  }

  else
  {

    v5 = v0[6];
    (*(v0[4] + 8))(v0[5], v0[3]);
    v5[2](v5, 0);
    _Block_release(v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_19A73741C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A73743C, 0, 0);
}

uint64_t sub_19A73743C()
{
  v22 = v0;
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier;
  v3 = *(v1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier);
  v0[4] = v3;
  v4 = *(v2 + 8);
  v0[5] = v4;
  if (v4 && (v5 = (v1 + OBJC_IVAR___STKImageGlyph_poseIdentifier), v6 = *v5, v0[6] = *v5, v7 = v5[1], (v0[7] = v7) != 0) && (v8 = v0[3], v9 = *(v8 + 96), v0[8] = v9, v10 = swift_task_alloc(), v10[2] = v8, v10[3] = v3, v10[4] = v4, v11 = swift_task_alloc(), *(v11 + 16) = sub_19A7402BC, *(v11 + 24) = v10, os_unfair_lock_lock(v9 + 4), sub_19A740B68(v21), os_unfair_lock_unlock(v9 + 4), v12 = v21[0], , , (v12 & 1) != 0))
  {
    v13 = v0[3];
    v14 = swift_task_alloc();
    v14[2] = v13;
    v14[3] = v3;
    v14[4] = v4;
    v14[5] = v6;
    v14[6] = v7;
    v15 = swift_task_alloc();
    *(v15 + 16) = sub_19A7402F0;
    *(v15 + 24) = v14;
    os_unfair_lock_lock(v9 + 4);
    sub_19A6FBE70(v21);
    v0[9] = 0;
    os_unfair_lock_unlock(v9 + 4);
    v16 = v21[0];

    v17 = v16;
    if (!v16)
    {
      v18 = swift_task_alloc();
      v0[10] = v18;
      *v18 = v0;
      v18[1] = sub_19A7376B4;

      return sub_19A798220(v3, v4, v6, v7);
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = v0[1];

  return v20(v17);
}

uint64_t sub_19A7376B4(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A7377B4, 0, 0);
}

uint64_t sub_19A7377B4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v15 = *(v0 + 32);
    v6 = *(v0 + 24);
    v7 = [v1 itk:*(*__swift_project_boxed_opaque_existential_1((v6 + 48) scaledImageMaxDimension:*(v6 + 72)) + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource_maxDisplayImageEdgeLength) scale:1.0];
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = v15;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    v9 = v7;
    *(v8 + 56) = v7;
    v10 = swift_task_alloc();
    *(v10 + 16) = sub_19A740348;
    *(v10 + 24) = v8;
    os_unfair_lock_lock(v3 + 4);
    sub_19A5F57B8(v11);
    os_unfair_lock_unlock(v3 + 4);
    if (v2)
    {
    }

    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_19A737934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{

  v11 = sub_19A730C0C(a2, a3);

  if (!v11)
  {
    v11 = sub_19A69D9D8(MEMORY[0x1E69E7CC0]);
  }

  v12 = a6;

  sub_19A7304E0(a6, a4, a5);

  sub_19A73D4F8(a2, a3, v11);
}

uint64_t sub_19A737BA8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_19A6FBEA4;

  return sub_19A73741C(v5);
}

uint64_t sub_19A737C6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{

  v10 = sub_19A730C0C(a1, a2);

  if (!v10)
  {
    goto LABEL_6;
  }

  if (!*(v10 + 16) || (v12 = sub_19A6955C0(a3, a4), (v13 & 1) == 0))
  {

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

LABEL_7:
  *a5 = v14;
  return result;
}

uint64_t sub_19A737D24()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return v0;
}

uint64_t sub_19A737D8C()
{
  sub_19A737D24();

  return swift_deallocClassInstance();
}

id sub_19A737EC8()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 104);
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
    v5 = v3;
    v6 = v0;
    v7 = ImageGlyphUIConfiguration.init(_:glyphType:)(0, v5);
    v8 = *(v0 + 104);
    *(v6 + 104) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_19A737F3C()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 128);
  }

  result = *(*(v0 + 120) + 16);
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

uint64_t sub_19A737F64()
{
  sub_19A73CB14();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_19A737FD0()
{
  sub_19A737F64();

  return swift_deallocClassInstance();
}

uint64_t sub_19A738234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{

  return 1;
}

char *sub_19A738274(uint64_t a1)
{
  v3 = sub_19A7A9094();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v15 = *(v1 + 88);
  v44 = sub_19A740B80;
  v45 = v1;
  os_unfair_lock_lock(v15 + 4);
  sub_19A6FBE70(&v47);
  os_unfair_lock_unlock(v15 + 4);
  v16 = v47;
  if (sub_19A7A9064() >= v16)
  {
    return sub_19A76E5A0(2, a1);
  }

  v17 = sub_19A737F3C();
  if (sub_19A7A9044() >= v17)
  {
    return sub_19A76E5A0(2, a1);
  }

  v18 = sub_19A7A9064();
  v19 = sub_19A73C0D4(v18);
  if (!v20)
  {
    return sub_19A76E5A0(2, a1);
  }

  v41 = v20;
  v42 = v19;
  v21 = *(v1 + 120);
  result = sub_19A7A9044();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v23 = v43;
  if (result >= *(v21 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v24 = v21 + 16 * result;
  v25 = *(v24 + 32);
  v26 = *(v24 + 40);
  v27 = sub_19A7A8F64();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  (*(v23 + 56))(v11, 1, 1, v3);
  v40 = type metadata accessor for ImageGlyph(0);
  v28 = objc_allocWithZone(v40);
  v29 = &v28[OBJC_IVAR___STKImageGlyph_optionalData];
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  *&v28[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
  v28[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
  sub_19A60F0CC(v14, &v28[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
  *&v28[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
  *&v28[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
  v30 = &v28[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
  v31 = v41;
  *v30 = v42;
  v30[1] = v31;
  v32 = &v28[OBJC_IVAR___STKImageGlyph_poseIdentifier];
  *v32 = v25;
  v32[1] = v26;
  v33 = &v28[OBJC_IVAR___STKImageGlyph_emoji];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 2) = 0u;
  *(v33 + 24) = 0;
  v34 = &v28[OBJC_IVAR___STKImageGlyph_emojiString];
  *v34 = 0;
  v34[1] = 0;
  sub_19A60F0CC(v11, v9, &unk_1EAFCF110);
  if ((*(v23 + 48))(v9, 1, v3) == 1)
  {

    sub_19A5F2B54(v9, &unk_1EAFCF110);
  }

  else
  {
    (*(v23 + 32))(v5, v9, v3);

    v35 = sub_19A76DC5C();
    v37 = v36;
    (*(v23 + 8))(v5, v3);
    *v29 = v35;
    v29[1] = v37;
  }

  v38 = &v28[OBJC_IVAR___STKImageGlyph_character];
  *v38 = 0;
  v38[1] = 0;
  v46.receiver = v28;
  v46.super_class = v40;
  v39 = objc_msgSendSuper2(&v46, sel_init);
  sub_19A5F2B54(v11, &unk_1EAFCF110);
  sub_19A5F2B54(v14, &qword_1EAFCD800);
  return v39;
}

id sub_19A738748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();

  v9 = a4(v8);

  (*(v6 + 8))(v8, v5);

  return v9;
}

id sub_19A738858(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v39 - v7;
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, v39 - v7, &qword_1EAFCD800);
  v9 = sub_19A7A8F64();
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v8, 1, v9);
  sub_19A5F2B54(v8, &qword_1EAFCD800);
  if (v11 != 1)
  {
    return 0;
  }

  v12 = *(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8);
  if (!v12)
  {
    return 0;
  }

  v13 = *(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier);

  sub_19A7A8F04();

  v14 = v10(v6, 1, v9);
  sub_19A5F2B54(v6, &qword_1EAFCD800);
  if (v14 == 1)
  {
    return 0;
  }

  v15 = *(a1 + OBJC_IVAR___STKImageGlyph_poseIdentifier + 8);
  if (!v15)
  {
    return 0;
  }

  v39[1] = *(a1 + OBJC_IVAR___STKImageGlyph_poseIdentifier);
  v39[2] = v15;
  v16 = *(v1 + 144);
  if (v16 >> 62)
  {
LABEL_31:
    v17 = sub_19A7ABBE4();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v17)
  {
LABEL_22:

    return 0;
  }

  v18 = 0;
  v40 = v16 & 0xFFFFFFFFFFFFFF8;
  v41 = v16 & 0xC000000000000001;
  while (1)
  {
    if (v41)
    {
      v19 = MEMORY[0x19A906130](v18, v16);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      if (v18 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v19 = *(v16 + 8 * v18 + 32);
      swift_unknownObjectRetain();
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_21;
      }
    }

    v21 = [v19 identifier];
    v22 = sub_19A7AB014();
    v24 = v23;

    if (v22 == v13 && v12 == v24)
    {
      break;
    }

    v26 = sub_19A7AC064();

    if (v26)
    {
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
    ++v18;
    if (v20 == v17)
    {
      goto LABEL_22;
    }
  }

LABEL_24:

  v27 = *MEMORY[0x1E698E2E0];
  v28 = sub_19A7AAFE4();
  v29 = [objc_opt_self() stickerConfigurationForMemojiInStickerPack:v27 stickerName:v28];

  if (!v29)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_19A7B6C20;
  v31 = [v29 localizedName];
  *(v30 + 32) = sub_19A7AB014();
  *(v30 + 40) = v32;
  result = [objc_opt_self() descriptionForAvatarWithRecord:v19 includeVideoPrefix:0];
  if (result)
  {
    v34 = result;

    v35 = sub_19A7AB014();
    v37 = v36;

    *(v30 + 48) = v35;
    *(v30 + 56) = v37;
    v42 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
    sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0);
    v38 = sub_19A7AAF94();

    swift_unknownObjectRelease();

    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19A738D04(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
  v7 = v6;

  if (v7)
  {
    v8 = sub_19A7AAFE4();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_19A738D9C(uint64_t a1)
{
  v2 = v1;
  v64 = sub_19A7A9094();
  v4 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v56 = &v52 - v13;
  v14 = *(v1 + 88);
  v68 = sub_19A740B80;
  v69 = v1;
  os_unfair_lock_lock(v14 + 4);
  sub_19A6FBE70(&v71);
  os_unfair_lock_unlock(v14 + 4);
  if (v71 <= a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v63 = sub_19A73C0D4(a1);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = *(v2 + 120);
    v18 = *(v17 + 16);
    if (v18)
    {
      v62 = v15;
      v71 = MEMORY[0x1E69E7CC0];
      sub_19A5F6074(0, v18, 0);
      v16 = v71;
      v19 = sub_19A7A8F64();
      v20 = *(v19 - 8);
      v60 = (v4 + 56);
      v61 = v19;
      v59 = (v4 + 48);
      v54 = (v4 + 32);
      v21 = *(v20 + 56);
      v57 = v20 + 56;
      v58 = v21;
      v53 = (v4 + 8);
      v22 = (v17 + 40);
      v23 = v56;
      do
      {
        v66 = v16;
        v67 = v18;
        v24 = *(v22 - 1);
        v25 = *v22;
        v58(v23, 1, 1, v61);
        v26 = v64;
        (*v60)(v11, 1, 1, v64);
        v65 = type metadata accessor for ImageGlyph(0);
        v27 = objc_allocWithZone(v65);
        v28 = &v27[OBJC_IVAR___STKImageGlyph_optionalData];
        *v28 = 0;
        v28[1] = 0xE000000000000000;
        *&v27[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
        v27[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
        sub_19A60F0CC(v23, &v27[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
        *&v27[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
        *&v27[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
        v29 = &v27[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
        v30 = v62;
        *v29 = v63;
        v29[1] = v30;
        v31 = &v27[OBJC_IVAR___STKImageGlyph_poseIdentifier];
        *v31 = v24;
        v31[1] = v25;
        v32 = &v27[OBJC_IVAR___STKImageGlyph_emoji];
        *v32 = 0u;
        *(v32 + 1) = 0u;
        *(v32 + 2) = 0u;
        *(v32 + 24) = 0;
        v33 = &v27[OBJC_IVAR___STKImageGlyph_emojiString];
        *v33 = 0;
        v33[1] = 0;
        sub_19A60F0CC(v11, v9, &unk_1EAFCF110);
        if ((*v59)(v9, 1, v26) == 1)
        {
          swift_bridgeObjectRetain_n();

          sub_19A5F2B54(v9, &unk_1EAFCF110);
        }

        else
        {
          v34 = v11;
          v35 = v9;
          v36 = v55;
          (*v54)(v55, v35, v26);
          swift_bridgeObjectRetain_n();

          v37 = sub_19A76DC5C();
          v38 = v26;
          v39 = v37;
          v41 = v40;
          v42 = v36;
          v9 = v35;
          v11 = v34;
          v23 = v56;
          (*v53)(v42, v38);
          *v28 = v39;
          v28[1] = v41;
        }

        v43 = &v27[OBJC_IVAR___STKImageGlyph_character];
        *v43 = 0;
        v43[1] = 0;
        v70.receiver = v27;
        v70.super_class = v65;
        v44 = objc_msgSendSuper2(&v70, sel_init);
        sub_19A5F2B54(v11, &unk_1EAFCF110);
        sub_19A5F2B54(v23, &qword_1EAFCD800);
        v45 = sub_19A7663D0();
        v47 = v46;

        v16 = v66;
        v71 = v66;
        v49 = *(v66 + 16);
        v48 = *(v66 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_19A5F6074((v48 > 1), v49 + 1, 1);
          v16 = v71;
        }

        *(v16 + 16) = v49 + 1;
        v50 = v16 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
        v22 += 2;
        v18 = v67 - 1;
      }

      while (v67 != 1);
    }
  }

  return v16;
}

id sub_19A739364(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);

  v6 = sub_19A7AB234();

  return v6;
}

id sub_19A7393E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C40;
  v6 = sub_19A65332C();
  v7 = type metadata accessor for ImageGlyphCategory(0);
  v8 = objc_allocWithZone(v7);
  sub_19A7A8F54();
  v9 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
  *&v8[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
  v10 = &v8[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
  *v10 = 0x696A6F6D654DLL;
  v10[1] = 0xE600000000000000;
  *&v8[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = 13;
  *&v8[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] = xmmword_19A7C0260;
  v8[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
  *&v8[v9] = v6;
  v18.receiver = v8;
  v18.super_class = v7;
  result = objc_msgSendSuper2(&v18, sel_init);
  *(inited + 32) = result;
  if ((inited & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x19A906130](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = result;
  }

  v13 = v12;

  v14 = a1;
  v15 = sub_19A7AB924();

  if (v15)
  {
    MEMORY[0x19A903470](0, 0);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_19A7A9094();
  return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
}

id sub_19A739880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{

  v6 = a5();
  v7 = _s10StickerKit25ImageGlyphUIConfigurationC6layout3forSo25NSCollectionLayoutSectionCSo0hI11Environment_p_tF_0();

  return v7;
}

uint64_t sub_19A7398E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 88);
  os_unfair_lock_lock(v5 + 4);
  sub_19A6FBE70(&v11);
  os_unfair_lock_unlock(v5 + 4);
  v6 = v11;
  result = sub_19A737F3C();
  if ((v6 * result) >> 64 != (v6 * result) >> 63)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 * result <= a1)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v8 = *(v2 + 128);
  if (!v8)
  {
    goto LABEL_10;
  }

  if (a1 != 0x8000000000000000 || v8 != -1)
  {
    MEMORY[0x19A903470](a1 % v8);
    v9 = 0;
LABEL_8:
    v10 = sub_19A7A9094();
    return (*(*(v10 - 8) + 56))(a2, v9, 1, v10);
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_19A739A20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;

  a4(a3);

  v9 = sub_19A7A9094();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_19A7A9014();
    (*(v10 + 8))(v8, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_19A739B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8) && (v4 = *(a1 + OBJC_IVAR___STKImageGlyph_poseIdentifier + 8)) != 0 && (v5 = *(a1 + OBJC_IVAR___STKImageGlyph_poseIdentifier), v6 = *(v2 + 88), v7 = MEMORY[0x1EEE9AC00](a1), MEMORY[0x1EEE9AC00](v7), os_unfair_lock_lock(v6 + 4), sub_19A73FC88(&v17), os_unfair_lock_unlock(v6 + 4), (v18 & 1) == 0) && (v8 = *(v2 + 120), (v9 = *(v8 + 16)) != 0))
  {
    v10 = 0;
    v11 = v17;
    v12 = (v8 + 40);
    while (1)
    {
      v13 = *(v12 - 1) == v5 && v4 == *v12;
      if (v13 || (sub_19A7AC064() & 1) != 0)
      {
        break;
      }

      ++v10;
      v12 += 2;
      if (v9 == v10)
      {
        goto LABEL_12;
      }
    }

    MEMORY[0x19A903470](v10, v11);
    v14 = 0;
  }

  else
  {
LABEL_12:
    v14 = 1;
  }

  v15 = sub_19A7A9094();
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

id sub_19A739D28(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = a3;

  a4(v9);

  v10 = sub_19A7A9094();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_19A7A9014();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_19A73A5F4(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_19A7A9094();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_19A7A9024();

  return MEMORY[0x1EEE6DFA0](sub_19A73A6F0, 0, 0);
}

uint64_t sub_19A73A6F0()
{
  v1 = sub_19A738274(v0[5]);
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_19A6F586C;

    return sub_19A73A814(v2);
  }

  else
  {

    v5 = v0[6];
    (*(v0[4] + 8))(v0[5], v0[3]);
    v5[2](v5, 0);
    _Block_release(v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_19A73A814(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A73A834, 0, 0);
}

uint64_t sub_19A73A834()
{
  v22 = v0;
  v1 = v0[2];
  v2 = v1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier;
  v3 = *(v1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier);
  v0[4] = v3;
  v4 = *(v2 + 8);
  v0[5] = v4;
  if (v4 && (v5 = (v1 + OBJC_IVAR___STKImageGlyph_poseIdentifier), v6 = *v5, v0[6] = *v5, v7 = v5[1], (v0[7] = v7) != 0) && (v8 = v0[3], v9 = *(v8 + 88), v0[8] = v9, v10 = swift_task_alloc(), v10[2] = v8, v10[3] = v3, v10[4] = v4, v11 = swift_task_alloc(), *(v11 + 16) = sub_19A73FBBC, *(v11 + 24) = v10, os_unfair_lock_lock(v9 + 4), sub_19A6FB608(v21), os_unfair_lock_unlock(v9 + 4), v12 = v21[0], , , (v12 & 1) != 0))
  {
    v13 = v0[3];
    v14 = swift_task_alloc();
    v14[2] = v13;
    v14[3] = v3;
    v14[4] = v4;
    v14[5] = v6;
    v14[6] = v7;
    v15 = swift_task_alloc();
    *(v15 + 16) = sub_19A73FBF0;
    *(v15 + 24) = v14;
    os_unfair_lock_lock(v9 + 4);
    sub_19A6FBE70(v21);
    v0[9] = 0;
    os_unfair_lock_unlock(v9 + 4);
    v16 = v21[0];

    v17 = v16;
    if (!v16)
    {
      v18 = swift_task_alloc();
      v0[10] = v18;
      *v18 = v0;
      v18[1] = sub_19A73AAAC;

      return sub_19A798220(v3, v4, v6, v7);
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = v0[1];

  return v20(v17);
}

uint64_t sub_19A73AAAC(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A73ABAC, 0, 0);
}

uint64_t sub_19A73ABAC()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v15 = *(v0 + 32);
    v6 = *(v0 + 24);
    v7 = [v1 itk:*(*__swift_project_boxed_opaque_existential_1((v6 + 40) scaledImageMaxDimension:*(v6 + 64)) + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource_maxDisplayImageEdgeLength) scale:1.0];
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = v15;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    v9 = v7;
    *(v8 + 56) = v7;
    v10 = swift_task_alloc();
    *(v10 + 16) = sub_19A73FC1C;
    *(v10 + 24) = v8;
    os_unfair_lock_lock(v3 + 4);
    sub_19A5F57B8(v11);
    os_unfair_lock_unlock(v3 + 4);
    if (v2)
    {
    }

    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_19A73AD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{

  v11 = sub_19A730C0C(a2, a3);

  if (!v11)
  {
    v11 = sub_19A69D9D8(MEMORY[0x1E69E7CC0]);
  }

  v12 = a6;

  sub_19A7304E0(a6, a4, a5);

  sub_19A73D4F8(a2, a3, v11);
}

uint64_t sub_19A73AFA0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_19A6F86E4;

  return sub_19A73A814(v5);
}

uint64_t sub_19A73B064@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{

  v10 = sub_19A730C0C(a1, a2);

  if (!v10)
  {
    goto LABEL_6;
  }

  if (!*(v10 + 16) || (v12 = sub_19A6955C0(a3, a4), (v13 & 1) == 0))
  {

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

LABEL_7:
  *a5 = v14;
  return result;
}

uint64_t sub_19A73B460()
{
  v1 = sub_19A7AA764();
  v13 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19A7AA7B4();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v11 = sub_19A731204();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_19A73FAEC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_145;
  v8 = _Block_copy(aBlock);

  sub_19A7AA784();
  v14 = MEMORY[0x1E69E7CC0];
  sub_19A740A38(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
  sub_19A7ABB54();
  v9 = v11;
  MEMORY[0x19A905BE0](0, v6, v3, v8);
  _Block_release(v8);

  (*(v13 + 8))(v3, v1);
  (*(v4 + 8))(v6, v12);
}

void sub_19A73B760()
{
  v65[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(*__swift_project_boxed_opaque_existential_1((Strong + 40), *(Strong + 64)) + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource_avtStore);
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 requestForCustomAvatars];
    v65[0] = 0;
    v6 = [v4 avatarsForFetchRequest:v5 error:v65];

    v7 = v65[0];
    v64 = v1;
    if (!v6)
    {
      v20 = v65[0];
      v8 = sub_19A7A8D34();

      swift_willThrow();
      if (qword_1EAFCAAB8 != -1)
      {
        goto LABEL_56;
      }

      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF0F8);
    v8 = sub_19A7AB254();
    v9 = v7;

    v10 = *(v1 + 88);
    v12 = MEMORY[0x1EEE9AC00](v11);
    MEMORY[0x1EEE9AC00](v12);

    os_unfair_lock_lock(v10 + 4);
    sub_19A5F57B8(v13);
    os_unfair_lock_unlock(v10 + 4);

    if (qword_1EAFCAAB8 != -1)
    {
      goto LABEL_53;
    }

LABEL_4:
    v14 = sub_19A7A9384();
    __swift_project_value_buffer(v14, qword_1EAFCAAC0);

    v15 = sub_19A7A9364();
    v16 = sub_19A7AB574();
    v17 = v8 >> 62;
    if (os_log_type_enabled(v15, v16))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      if (v17)
      {
        v19 = sub_19A7ABBE4();
        v17 = v8 >> 62;
      }

      else
      {
        v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 4) = v19;

      _os_log_impl(&dword_19A5EE000, v15, v16, "Loaded %ld memoji", v18, 0xCu);
      MEMORY[0x19A907A30](v18, -1, -1);
    }

    else
    {
    }

    if (v17)
    {
      v35 = sub_19A7ABBE4();
    }

    else
    {
      v35 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = MEMORY[0x1E69E7CC0];
    if (!v35)
    {
      goto LABEL_26;
    }

    v65[0] = MEMORY[0x1E69E7CC0];
    sub_19A5F6074(0, v35 & ~(v35 >> 63), 0);
    if ((v35 & 0x8000000000000000) == 0)
    {
      v37 = 0;
      v36 = v65[0];
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x19A906130](v37, v8);
        }

        else
        {
          v38 = *(v8 + 8 * v37 + 32);
          swift_unknownObjectRetain();
        }

        v39 = [v38 identifier];
        v40 = sub_19A7AB014();
        v42 = v41;
        swift_unknownObjectRelease();

        v65[0] = v36;
        v44 = v36[2];
        v43 = v36[3];
        if (v44 >= v43 >> 1)
        {
          sub_19A5F6074((v43 > 1), v44 + 1, 1);
          v36 = v65[0];
        }

        ++v37;
        v36[2] = v44 + 1;
        v45 = &v36[2 * v44];
        v45[4] = v40;
        v45[5] = v42;
      }

      while (v35 != v37);
      v1 = v64;
LABEL_26:
      v46 = sub_19A72AB7C(*(v1 + 112), v36);
      v47 = v46;
      v48 = *(v1 + 88);
      v49 = MEMORY[0x1EEE9AC00](v46);
      MEMORY[0x1EEE9AC00](v49);

      os_unfair_lock_lock(v48 + 4);
      sub_19A5F57B8(v50);
      os_unfair_lock_unlock(v48 + 4);

      if (v8 >> 62)
      {
        v51 = sub_19A7ABBE4();
        if (!v51)
        {
LABEL_39:
          v34 = v47 ^ 1;

          v1 = v64;
          goto LABEL_44;
        }
      }

      else
      {
        v51 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v51)
        {
          goto LABEL_39;
        }
      }

      v1 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x19A906130](v1, v8);
          v53 = (v1 + 1);
          if (__OFADD__(v1, 1))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        else
        {
          if (v1 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_53:
            swift_once();
            goto LABEL_4;
          }

          v52 = *(v8 + 8 * v1 + 32);
          swift_unknownObjectRetain();
          v53 = (v1 + 1);
          if (__OFADD__(v1, 1))
          {
            goto LABEL_38;
          }
        }

        sub_19A797F6C(v52, v64[15]);
        swift_unknownObjectRelease();
        ++v1;
        if (v53 == v51)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_9:
    v21 = sub_19A7A9384();
    __swift_project_value_buffer(v21, qword_1EAFCAAC0);
    v22 = v8;
    v23 = sub_19A7A9364();
    v24 = sub_19A7AB584();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v65[0] = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = sub_19A7AC124();
      v29 = sub_19A62540C(v27, v28, v65);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_19A5EE000, v23, v24, "Could not fetch avatars. %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v30 = v26;
      v1 = v64;
      MEMORY[0x19A907A30](v30, -1, -1);
      MEMORY[0x19A907A30](v25, -1, -1);
    }

    v31 = *(v1 + 88);
    MEMORY[0x1EEE9AC00](v32);
    os_unfair_lock_lock(v31 + 4);
    sub_19A6FBE70(v65);
    os_unfair_lock_unlock(v31 + 4);
    if (v65[0])
    {
      v34 = 1;
    }

    else
    {
      v55 = *(v1 + 144);
      if (v55 >> 62)
      {
        v33 = sub_19A7ABBE4();
      }

      else
      {
        v33 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v33 != 0;
    }

    v56 = *(v1 + 88);
    MEMORY[0x1EEE9AC00](v33);

    os_unfair_lock_lock(v56 + 4);
    sub_19A5F57B8(v57);
    os_unfair_lock_unlock(v56 + 4);

LABEL_44:
    v58 = *(v1 + 88);
    MEMORY[0x1EEE9AC00](v54);

    os_unfair_lock_lock(v58 + 4);
    sub_19A5F57B8(v59);
    os_unfair_lock_unlock(v58 + 4);

    if (v34)
    {
      __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
      sub_19A732D2C();
    }

    else
    {
      if (qword_1EAFCAAB8 != -1)
      {
        swift_once();
      }

      v60 = sub_19A7A9384();
      __swift_project_value_buffer(v60, qword_1EAFCAAC0);
      v61 = sub_19A7A9364();
      v62 = sub_19A7AB574();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_19A5EE000, v61, v62, "Memojis did not change", v63, 2u);
        MEMORY[0x19A907A30](v63, -1, -1);
      }
    }
  }
}

uint64_t sub_19A73C05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void *)@<X3>, _BYTE *a5@<X8>)
{
  v7 = *(a1 + 112);
  v10[0] = a2;
  v10[1] = a3;
  v9[2] = v10;

  LOBYTE(a4) = sub_19A6DCBAC(a4, v9, v7);

  *a5 = a4 & 1;
  return result;
}

uint64_t sub_19A73C0D4(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v3 = *(v1 + 88);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 4);
  sub_19A6FB524(&v7);
  os_unfair_lock_unlock(v3 + 4);
  if (v7 <= a1)
  {
    return 0;
  }

  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v3 + 4);
  sub_19A73FAD4(&v7);
  os_unfair_lock_unlock(v3 + 4);
  return v7;
}

uint64_t sub_19A73C204@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 112);
    if (*(v3 + 16) > a2)
    {
      v4 = v3 + 16 * a2;
      v5 = *(v4 + 40);
      *a3 = *(v4 + 32);
      a3[1] = v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A73C244@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 112);
  v6 = *(v5 + 16);
  v7 = v6 == 0;
  if (v6)
  {
    v10 = 0;
    v11 = (v5 + 40);
    while (1)
    {
      result = *(v11 - 1);
      if (result == a2 && *v11 == a3)
      {
        break;
      }

      result = sub_19A7AC064();
      if (result)
      {
        break;
      }

      ++v10;
      v11 += 2;
      v7 = v6 == v10;
      if (v6 == v10)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  *a4 = v10;
  *(a4 + 8) = v7;
  return result;
}

void sub_19A73C2F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(v1 + 88);
    v4 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock(v2 + 4);
    sub_19A5F5774(v3);
    os_unfair_lock_unlock(v2 + 4);
  }
}

uint64_t sub_19A73C3A0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_19A73DB18(v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_19A73C424()
{
  if (!*(v0 + 96))
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = sub_19A7AAFE4();
    v3 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_19A73CBB8;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_19A77855C;
    v6[3] = &block_descriptor_28;
    v4 = _Block_copy(v6);

    v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
    _Block_release(v4);

    *(v0 + 96) = v5;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A73C57C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_19A73C6E0();
    v5 = sub_19A7AB394();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    v7[5] = v4;
    sub_19A6816F0(0, 0, v2, &unk_19A7C0418, v7);
  }

  return result;
}

uint64_t sub_19A73C6E0()
{
  v0 = sub_19A7A8BF4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_19A73C77C(v0);

  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*(v1 + 16) && (v2 = sub_19A6955C0(0xD000000000000010, 0x800000019A7CCBB0), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  return v4;
}

unint64_t sub_19A73C77C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9E8);
    v2 = sub_19A7ABE94();
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
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_19A6A0AB0(*(a1 + 48) + 40 * v11, v24);
        sub_19A6120B4(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_19A6A0AB0(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_19A5F2B54(v21, &qword_1EAFCF0F0);

          goto LABEL_23;
        }

        sub_19A6120B4(v22 + 8, v20);
        sub_19A5F2B54(v21, &qword_1EAFCF0F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_19A6955C0(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_19A73CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_19A73CA7C, 0, 0);
}

uint64_t sub_19A73CA7C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 48);
    sub_19A73B460();
    sub_19A73C2F0(v1);
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_19A73CB14()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + 96) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A73CBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A60FB98;

  return sub_19A73CA5C(a1, v4, v5, v7, v6);
}

void *sub_19A73CC88(void *result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = result;
    v5 = *(v1 + 24);
    v6 = *result;
    if (v5)
    {
      v7 = v5 == result;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v10 = *(v6 + 128);
      *(v1 + 24) = *(result + v10);

      *(*(v4 + v10) + *(**(v4 + v10) + 120)) = 0;
    }

    else
    {
      v8 = *(v6 + 120);
      v9 = *(v6 + 128);
      *(*(result + v8) + *(**(result + v8) + 128)) = *(result + v9);

      *(*(v4 + v9) + *(**(v4 + v9) + 120)) = *(v4 + v8);
    }

    *(v4 + *(*v4 + 120)) = *(v1 + 32);

    *(v4 + *(*v4 + 128)) = 0;

    *(*(v1 + 32) + *(**(v1 + 32) + 128)) = v4;

    swift_retain_n();

    *(v1 + 32) = v4;
  }

  return result;
}

uint64_t sub_19A73CE8C(uint64_t result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = result;
    v5 = *(v1 + 24);
    if (v5)
    {
      v6 = v5 == result;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      *(v1 + 24) = *(result + 48);

      *(*(v4 + 48) + 40) = 0;
    }

    else
    {
      *(*(result + 40) + 48) = *(result + 48);

      *(*(v4 + 48) + 40) = *(v4 + 40);
    }

    *(v4 + 40) = *(v1 + 32);

    *(v4 + 48) = 0;

    *(*(v1 + 32) + 48) = v4;

    swift_retain_n();

    *(v1 + 32) = v4;
  }

  return result;
}

uint64_t sub_19A73CFD8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_19A7A8F64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = v2[2];
  if (*(v10 + 16) && (v11 = sub_19A6957E0(a1), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = *(*v13 + 112);
    v15 = *(v13 + v14);
    *(v13 + v14) = a2;

    v16 = a2;
    sub_19A73CC88(v13);
  }

  else
  {
    swift_endAccess();
    if (*(v3[2] + 16) >= v3[5] && (v17 = v3[3]) != 0)
    {
      v18 = v3[6];
      if (v18)
      {
        v19 = *v17;
        v33[1] = v17 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
        v20 = *(v19 + 104);
        swift_beginAccess();
        (*(v7 + 16))(v9, v17 + v20, v6);
        v35 = *(v17 + *(*v17 + 112));
        v21 = v35;

        sub_19A60138C(v18);
        v22 = v21;
        v18(v9, &v35);
        sub_19A60126C(v18);

        (*(v7 + 8))(v9, v6);
      }

      else
      {
      }

      v27 = *(*v17 + 104);
      swift_beginAccess();
      (*(v7 + 16))(v9, v17 + v27, v6);
      swift_beginAccess();
      sub_19A730320(0, v9);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v3[2];
      v3[2] = 0x8000000000000000;
      sub_19A650AE8(v17, a1, isUniquelyReferenced_nonNull_native);
      v3[2] = v34;
      swift_endAccess();
      swift_beginAccess();
      (*(v7 + 24))(v17 + v27, a1, v6);
      swift_endAccess();
      v29 = *(*v17 + 112);
      v30 = *(v17 + v29);
      *(v17 + v29) = a2;

      v31 = a2;
      sub_19A73CC88(v17);
    }

    else
    {
      (*(v7 + 16))(v9, a1, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF1A0);
      v23 = swift_allocObject();
      v24 = *(*v23 + 120);
      *(v23 + v24) = 0;
      *(v23 + *(*v23 + 128)) = 0;
      (*(v7 + 32))(v23 + *(*v23 + 104), v9, v6);
      *(v23 + *(*v23 + 112)) = a2;
      swift_beginAccess();
      swift_retain_n();
      v25 = a2;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v3[2];
      v3[2] = 0x8000000000000000;
      sub_19A650AE8(v23, a1, v26);
      v3[2] = v35;
      swift_endAccess();
      if (v3[3])
      {
        *(v23 + v24) = v3[4];

        *(v3[4] + *(*v3[4] + 128)) = v23;

        v3[4] = v23;
      }

      else
      {

        v3[3] = v23;

        v3[4] = v23;
      }
    }
  }
}

uint64_t sub_19A73D4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = v3[2];
  if (*(v8 + 16) && (v9 = sub_19A6955C0(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    *(v11 + 32) = a3;

    sub_19A73CE8C(v11);
  }

  else
  {
    swift_endAccess();
    if (*(v4[2] + 16) >= v4[5] && (v12 = v4[3]) != 0)
    {
      v13 = v4[6];
      if (v13)
      {
        swift_beginAccess();
        v14 = v12[3];
        v23[0] = v12[2];
        v23[1] = v14;
        v22[0] = v12[4];

        sub_19A60138C(v13);

        v13(v23, v22);
        sub_19A60126C(v13);
      }

      else
      {
      }

      swift_beginAccess();
      v17 = v12[2];
      v18 = v12[3];
      swift_beginAccess();

      sub_19A7305D8(0, v17, v18);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v4[2];
      v4[2] = 0x8000000000000000;
      sub_19A650E30(v12, a1, a2, isUniquelyReferenced_nonNull_native);

      v4[2] = v21;
      swift_endAccess();
      v12[2] = a1;
      v12[3] = a2;

      v12[4] = a3;

      sub_19A73CE8C(v12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF100);
      v15 = swift_allocObject();
      v15[5] = 0;
      v15[6] = 0;
      v15[2] = a1;
      v15[3] = a2;
      v15[4] = a3;
      swift_beginAccess();
      swift_retain_n();

      v16 = swift_isUniquelyReferenced_nonNull_native();
      v23[0] = v4[2];
      v4[2] = 0x8000000000000000;
      sub_19A650E30(v15, a1, a2, v16);
      v4[2] = v23[0];
      swift_endAccess();
      if (v4[3])
      {
        v15[5] = v4[4];

        *(v4[4] + 48) = v15;

        v4[4] = v15;
      }

      else
      {

        v4[3] = v15;

        v4[4] = v15;
      }
    }
  }
}

uint64_t sub_19A73D87C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19A7A8F64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 16);
  if (!*(v8 + 16))
  {
    return swift_endAccess();
  }

  v9 = sub_19A6957E0(a1);
  if ((v10 & 1) == 0)
  {
    return swift_endAccess();
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  (*(v5 + 16))(v7, a1, v4);
  swift_beginAccess();

  sub_19A730320(0, v7);
  swift_endAccess();
  v12 = *v11;
  v13 = *(*v11 + 120);
  v14 = *(v11 + v13);
  if (v14)
  {
    *(v14 + *(*v14 + 128)) = *(v11 + *(*v11 + 128));

    v12 = *v11;
  }

  v15 = *(v12 + 128);
  v16 = *(v11 + v15);
  if (v16)
  {
    *(v16 + *(*v16 + 120)) = *(v11 + v13);
  }

  v17 = *(v2 + 24);
  if (v17 && v11 == v17)
  {
    *(v2 + 24) = *(v11 + v15);
  }

  v18 = *(v2 + 32);
  if (v18)
  {
    if (v11 == v18)
    {
      v20 = *(v11 + v13);

      *(v2 + 32) = v20;
    }
  }
}

uint64_t sub_19A73DB18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!*(v6 + 16))
  {
    return swift_endAccess();
  }

  v7 = sub_19A6955C0(a1, a2);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();
  swift_beginAccess();

  sub_19A7305D8(0, a1, a2);
  swift_endAccess();
  v10 = *(v9 + 40);
  if (v10)
  {
    *(v10 + 48) = *(v9 + 48);
  }

  v11 = *(v9 + 48);
  if (v11)
  {
    *(v11 + 40) = *(v9 + 40);
  }

  v12 = *(v3 + 24);
  if (v12 && v9 == v12)
  {
    *(v3 + 24) = *(v9 + 48);
  }

  v13 = *(v3 + 32);
  if (v13)
  {
    if (v9 == v13)
    {
      v15 = *(v9 + 40);

      *(v3 + 32) = v15;
    }
  }
}

void *sub_19A73DCA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF1B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

size_t sub_19A73DD2C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF1B8);
  v4 = *(type metadata accessor for EmojiKeyboardWaypoint() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_19A73DE28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_19A73DECC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A7ABB74() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_19A7AC174();
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

unint64_t sub_19A73E03C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A7ABB74() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_19A7AC184();
      MEMORY[0x19A9065D0](v9);
      result = sub_19A7AC1B4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for EmojiKeyboardWaypoint() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

  return result;
}

uint64_t sub_19A73E20C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A7ABB74() + 1) & ~v5;
    do
    {
      sub_19A7AC184();

      sub_19A7AB0B4();
      v10 = sub_19A7AC1B4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

void sub_19A73E3BC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A7ABB74() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_19A7AB914();

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

unint64_t sub_19A73E548(int64_t a1, uint64_t a2)
{
  v40 = sub_19A7A8F64();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_19A7ABB74();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_19A740A38(&qword_1EAFCB3B8, MEMORY[0x1E69695A8]);
      v23 = sub_19A7AAF64();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_19A73E868(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A7ABB74() + 1) & ~v5;
    do
    {
      sub_19A7AC184();

      sub_19A7AB0B4();
      v9 = sub_19A7AC1B4();

      v10 = v9 & v7;
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
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

uint64_t sub_19A73EA28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19A7ABBE4();
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
      result = sub_19A7ABBE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19A623714(&qword_1EAFCF218, &qword_1EAFCF210);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF210);
            v9 = sub_19A651FAC(v13, i, a3);
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
        type metadata accessor for ImageGlyph(0);
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

uint64_t sub_19A73EBCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19A7ABBE4();
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
      result = sub_19A7ABBE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19A623714(&qword_1EAFCF178, &qword_1EAFCF170);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF170);
            v9 = sub_19A652034(v13, i, a3);
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
        sub_19A5F5028(0, &qword_1ED8B2068);
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

uint64_t sub_19A73ED80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19A7ABBE4();
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
      result = sub_19A7ABBE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19A623714(&qword_1EAFCF208, &qword_1EAFCF200);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF200);
            v9 = sub_19A652034(v13, i, a3);
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
        sub_19A5F5028(0, &unk_1EAFCC1A0);
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

uint64_t sub_19A73EF34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19A7ABBE4();
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
      result = sub_19A7ABBE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19A623714(&qword_1EAFCF198, &qword_1EAFCF190);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF190);
            v9 = sub_19A652034(v13, i, a3);
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
        sub_19A5F5028(0, &qword_1ED8B2030);
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

uint64_t sub_19A73F0E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19A7ABBE4();
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
      result = sub_19A7ABBE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19A623714(&unk_1EAFCF1F0, &qword_1EAFCD510);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD510);
            v9 = sub_19A652034(v13, i, a3);
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
        sub_19A7AAD24();
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

uint64_t sub_19A73F28C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19A7ABBE4();
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
      result = sub_19A7ABBE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19A623714(&unk_1EAFCF1E0, &qword_1EAFCF1D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF1D8);
            v9 = sub_19A652034(v13, i, a3);
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
        type metadata accessor for ImageGlyphLayoutSection();
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

uint64_t sub_19A73F430(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19A7ABBE4();
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
      result = sub_19A7ABBE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19A623714(&qword_1EAFCF1D0, &qword_1EAFCF1C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF1C8);
            v9 = sub_19A652034(v13, i, a3);
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
        sub_19A5F5028(0, &qword_1EAFCF1C0);
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

uint64_t sub_19A73F5E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19A7ABBE4();
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
      result = sub_19A7ABBE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19A623714(&unk_1EAFCA598, &unk_1EAFCF130);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF130);
            v9 = sub_19A6521BC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF0F8);
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

void *sub_19A73F7B0@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  result = a1(&v6);
  if (!v2)
  {
    v5 = v7;
    *a2 = v6;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_19A73F7FC(uint64_t a1, uint64_t a2)
{
  v8[3] = type metadata accessor for AvatarGlyphDataSource();
  v8[4] = &off_1F0DCC7B8;
  v8[0] = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_19A7C0270;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = MEMORY[0x1E69E7CC0];
  if (qword_1EAFCB030 != -1)
  {
    swift_once();
  }

  *(a2 + 88) = qword_1EAFDD668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(a2 + 96) = v5;
  *(a2 + 104) = 0;
  *(a2 + 112) = v4;

  *(a2 + 120) = sub_19A69C69C(v4);
  *(a2 + 128) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF148);
  v6 = swift_allocObject();
  v6[2] = sub_19A69C7B4(v4);
  v6[3] = 0;
  v6[6] = 0;
  v6[7] = 0;
  v6[4] = 0;
  v6[5] = 5;
  *(a2 + 136) = v6;
  sub_19A6C0AB4(v8, a2 + 48);
  sub_19A733644();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a2;
}

uint64_t sub_19A73F938(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for AvatarGlyphDataSource();
  v12[4] = &off_1F0DCC7B8;
  v12[0] = a1;
  *(a2 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 2;
  *(a2 + 32) = v4;
  if (qword_1EAFCB030 != -1)
  {
    swift_once();
  }

  *(a2 + 80) = qword_1EAFDD668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(a2 + 88) = v5;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = v4;
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E698E2E0];

  v8 = [v6 availableStickerNamesForMemojiInStickerPack_];
  v9 = sub_19A7AB254();

  *(a2 + 120) = sub_19A7306D0(v9);
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF148);
  v10 = swift_allocObject();
  v10[2] = sub_19A69C7B4(v4);
  v10[3] = 0;
  v10[6] = 0;
  v10[7] = 0;
  v10[4] = 0;
  v10[5] = 5;
  *(a2 + 152) = v10;
  sub_19A6C0AB4(v12, a2 + 40);
  sub_19A73C424();
  sub_19A73B460();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return a2;
}

uint64_t sub_19A73FAF4()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 144) = MEMORY[0x1E69E7CC0];

  *(v0 + 112) = v1;
}

uint64_t sub_19A73FB44()
{
  *(*(v0 + 16) + 144) = *(v0 + 24);
}

uint64_t sub_19A73FB80()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

unint64_t sub_19A73FCA0(unint64_t result, char **a2, uint64_t *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A906130](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_19A734154(&v11, a2, a3);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_19A7ABBE4();
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_19A73FDB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A740AE4(v2, v3);
}

uint64_t sub_19A73FE6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A740B08(v2, v3);
}

uint64_t sub_19A73FF20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A73AFA0(v2, v3, v4);
}

uint64_t sub_19A73FFD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A73A5F4(v2, v3, v4);
}

uint64_t sub_19A740088()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A740B10(v2, v3, v4);
}

uint64_t sub_19A740148()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A740AD4(v2, v3, v4);
}

uint64_t sub_19A740208()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60F860;

  return sub_19A740ADC(v2, v3);
}

void *sub_19A7403C0@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    *a1 = v6;
    *(a1 + 8) = v5;
  }

  return result;
}

void *sub_19A740448@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_19A7404BC()
{
  *(*(v0 + 16) + 128) = *(v0 + 24);
}

uint64_t sub_19A740518()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A737BA8(v2, v3, v4);
}

uint64_t sub_19A7405CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A7371FC(v2, v3, v4);
}

uint64_t sub_19A740680()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A740AE0(v2, v3);
}

uint64_t sub_19A740734()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A740B04(v2, v3);
}

uint64_t sub_19A7407E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A740B0C(v2, v3, v4);
}

uint64_t sub_19A7408A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A740AD0(v2, v3, v4);
}

uint64_t sub_19A740968()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A740AD8(v2, v3);
}

uint64_t sub_19A740A38(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_19A740B98(void *a1)
{
  result = [a1 delegate];
  if (result)
  {
    swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (!v3)
    {

      return swift_unknownObjectRelease();
    }

    v4 = v3;
    v5 = [v1 info];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 objectForSetting_];

      if (v7)
      {
        sub_19A7ABB44();
        swift_unknownObjectRelease();
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
      }

      v11 = v9;
      v12 = v10;
      if (*(&v10 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && !v9)
        {
          ObjectType = swift_getObjectType();
          (*(v4 + 8))(ObjectType, v4);
        }

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v11 = 0u;
      v12 = 0u;
    }

    return sub_19A612E20(&v11);
  }

  return result;
}

id sub_19A740F10(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_19A6DB1A8;
    v14[3] = &block_descriptor_29;
    v10 = _Block_copy(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for AvatarEditorClientToHostAction();
  v15.receiver = v5;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v10, a5);
  sub_19A60126C(a3);

  _Block_release(v10);
  return v12;
}

id sub_19A7410D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarEditorClientToHostAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A741134()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCF220);
  __swift_project_value_buffer(v0, qword_1EAFCF220);
  return sub_19A7A9374();
}

void sub_19A741528(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  swift_beginAccess();
  sub_19A60F0CC(v1 + v6, v5, &qword_1EAFCD800);
  v7 = sub_19A7A8F64();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_19A5F2B54(v5, &qword_1EAFCD800);
    v9 = 0;
  }

  else
  {
    v9 = sub_19A7A8F24();
    (*(v8 + 8))(v5, v7);
  }

  v10 = sub_19A7AAFE4();
  [a1 encodeObject:v9 forKey:v10];
}

uint64_t sub_19A74172C(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_19A7A8F64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF2A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  sub_19A60F0CC(a1, v34, &unk_1EAFCD750);
  if (!v35)
  {
    v24 = &unk_1EAFCD750;
    v25 = v34;
LABEL_10:
    sub_19A5F2B54(v25, v24);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v23 = 0;
    return v23 & 1;
  }

  v31 = v7;
  v32 = v14;
  v17 = v33;
  v18 = v5;
  v19 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  swift_beginAccess();
  sub_19A60F0CC(v2 + v19, v16, &qword_1EAFCD800);
  v20 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  swift_beginAccess();
  v21 = *(v8 + 48);
  sub_19A60F0CC(v16, v10, &qword_1EAFCD800);
  sub_19A60F0CC(v17 + v20, &v10[v21], &qword_1EAFCD800);
  v22 = *(v18 + 48);
  if (v22(v10, 1, v4) != 1)
  {
    v26 = v32;
    sub_19A60F0CC(v10, v32, &qword_1EAFCD800);
    if (v22(&v10[v21], 1, v4) != 1)
    {
      v28 = v31;
      (*(v18 + 32))(v31, &v10[v21], v4);
      sub_19A746C28(&qword_1EAFCB3B0, MEMORY[0x1E69695A8]);
      v23 = sub_19A7AAFD4();

      v29 = *(v18 + 8);
      v29(v28, v4);
      sub_19A5F2B54(v16, &qword_1EAFCD800);
      v29(v26, v4);
      sub_19A5F2B54(v10, &qword_1EAFCD800);
      return v23 & 1;
    }

    sub_19A5F2B54(v16, &qword_1EAFCD800);
    (*(v18 + 8))(v26, v4);
    goto LABEL_9;
  }

  sub_19A5F2B54(v16, &qword_1EAFCD800);
  if (v22(&v10[v21], 1, v4) != 1)
  {
LABEL_9:
    v24 = &qword_1EAFCF2A0;
    v25 = v10;
    goto LABEL_10;
  }

  sub_19A5F2B54(v10, &qword_1EAFCD800);
  v23 = 1;
  return v23 & 1;
}

id sub_19A741C30()
{
  result = [objc_allocWithZone(type metadata accessor for LocalStickerEffectEditorViewControllerConfiguration()) init];
  qword_1EAFDD780 = result;
  return result;
}

id sub_19A741C64@<X0>(void *a1@<X8>)
{
  if (qword_1EAFCB698 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EAFDD780;
  *a1 = qword_1EAFDD780;

  return v2;
}

uint64_t sub_19A741D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_19A7AAC14();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_19A7AB354();
  v5[10] = sub_19A7AB344();
  v8 = sub_19A7AB2E4();
  v5[11] = v8;
  v5[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_19A741E00, v8, v7);
}

uint64_t sub_19A741E00()
{
  (*(v0[8] + 104))(v0[9], *MEMORY[0x1E69D4708], v0[7]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_19A741EBC;
  v2 = v0[9];

  return sub_19A7697C0(v2);
}

uint64_t sub_19A741EBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_19A742048, v7, v6);
}

uint64_t sub_19A742048()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = *(v3 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker);
    *(v3 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker) = v1;
    v5 = v1;

    v6 = *(v3 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_imageGlyph);
    *(v3 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_imageGlyph) = v2;
    v7 = v2;

    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_19A742218;
    v9 = v0[5];

    return sub_19A742A28(v9);
  }

  else
  {

    if (qword_1EAFCB690 != -1)
    {
      swift_once();
    }

    v11 = sub_19A7A9384();
    __swift_project_value_buffer(v11, qword_1EAFCF220);
    v12 = sub_19A7A9364();
    v13 = sub_19A7AB584();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_19A5EE000, v12, v13, "Can not create sticker", v14, 2u);
      MEMORY[0x19A907A30](v14, -1, -1);
    }

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_19A742218(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_19A742340, v4, v3);
}

void sub_19A742340()
{
  v1 = *(v0 + 128);
  if (!v1)
  {
    v60 = *(v0 + 112);

    goto LABEL_16;
  }

  v2 = *(v0 + 48);
  v3 = &v1[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_delegate];
  swift_beginAccess();
  *(v3 + 1) = &protocol witness table for LocalStickerEffectEditorViewController;
  swift_unknownObjectWeakAssign();
  v4 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);
  v5 = v1;
  v6 = [v4 initWithRootViewController_];
  [v2 addChildViewController_];
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    v9 = [*(v0 + 48) view];
    if (!v9)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = v9;
    v11 = *(v0 + 48);
    [v9 addSubview_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_19A7BB2E0;
    v13 = [v8 topAnchor];
    v14 = [v11 view];
    if (!v14)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = v14;
    v16 = *MEMORY[0x1E69DDCE0];
    v17 = *(v0 + 48);
    v18 = [v14 topAnchor];

    v19 = [v13 constraintEqualToAnchor:v18 constant:v16];
    *(v12 + 32) = v19;
    v20 = [v8 bottomAnchor];
    v21 = [v17 view];
    if (!v21)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v22 = v21;
    v23 = *(MEMORY[0x1E69DDCE0] + 16);
    v24 = *(v0 + 48);
    v25 = [v21 bottomAnchor];

    v26 = [v20 constraintEqualToAnchor:v25 constant:-v23];
    *(v12 + 40) = v26;
    v27 = [v8 leftAnchor];
    v28 = [v24 view];
    if (!v28)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v29 = v28;
    v30 = *(MEMORY[0x1E69DDCE0] + 8);
    v31 = *(v0 + 48);
    v32 = [v28 leftAnchor];

    v33 = [v27 constraintEqualToAnchor:v32 constant:v30];
    *(v12 + 48) = v33;
    v34 = [v8 rightAnchor];
    v35 = [v31 view];
    if (!v35)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v36 = v35;
    v37 = *(MEMORY[0x1E69DDCE0] + 24);
    v38 = objc_opt_self();
    v39 = [v36 rightAnchor];

    v40 = [v34 constraintEqualToAnchor:v39 constant:-v37];
    *(v12 + 56) = v40;
    sub_19A5F5028(0, &qword_1ED8B2030);
    v41 = sub_19A7AB234();

    [v38 activateConstraints_];

    v42 = sub_19A7AAFE4();
    [v8 setAccessibilityIdentifier_];
  }

  [v6 didMoveToParentViewController_];
  v43 = [v5 view];
  if (!v43)
  {
    __break(1u);
    goto LABEL_20;
  }

  v44 = v43;
  v45 = [objc_opt_self() clearColor];
  [v44 setBackgroundColor_];

  v46 = [v5 view];
  if (!v46)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v47 = v46;
  v48 = [v46 layer];

  [v48 setHitTestsAsOpaque_];
  v49 = [v5 view];

  if (!v49)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v49 setClipsToBounds_];

  v50 = [v6 view];
  if (!v50)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = *(v0 + 128);
  v52 = *(v0 + 48);
  [v50 setAlpha_];

  v53 = sub_19A7885C0();
  [v53 setHidden_];

  v54 = *&v52[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stickerEditorController];
  *&v52[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stickerEditorController] = v51;
  v55 = v5;

  v56 = *&v52[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_navController];
  *&v52[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_navController] = v6;
  v57 = v6;

  v58 = [v52 view];
  if (!v58)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v59 = v58;
  v60 = *(v0 + 112);

  [v59 layoutIfNeeded];

  sub_19A7439F4(1);
LABEL_16:

  v61 = *(v0 + 8);

  v61();
}

uint64_t sub_19A742A28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_19A7A9304();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_19A7AB354();
  v2[9] = sub_19A7AB344();
  v5 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A742B34, v5, v4);
}

void sub_19A742B34()
{
  v127 = v1;
  v113 = OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker;
  v114 = v1[3];
  v3 = *(v114 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker);
  if (!v3)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v4 = v3;
  v0 = sub_19A7AAD94();

  v124 = v1;
  if (v0 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v6 = 0;
    v2 = (v0 & 0xC000000000000001);
    while (1)
    {
      if (v2)
      {
        v7 = MEMORY[0x19A906130](v6, v0);
      }

      else
      {
        if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v0 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = sub_19A7AACF4();
      v12 = v11;
      if (v10 == sub_19A7AAC94() && v12 == v13)
      {

LABEL_16:

        goto LABEL_21;
      }

      v14 = sub_19A7AC064();

      if (v14)
      {
        goto LABEL_16;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  v8 = 0;
LABEL_21:
  v15 = v124[3];
  v16 = OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_animatedRepresentation;
  v17 = *(v15 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_animatedRepresentation);
  *(v15 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_animatedRepresentation) = v8;

  v18 = *(v114 + v113);
  if (!v18)
  {
    goto LABEL_115;
  }

  v19 = v18;
  v20 = sub_19A7AAD94();

  v110 = v16;
  v111 = v15;
  if (v20 >> 62)
  {
    goto LABEL_39;
  }

  for (j = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_19A7ABBE4())
  {
    v22 = 0;
    v2 = (v20 & 0xC000000000000001);
    while (1)
    {
      if (v2)
      {
        v23 = MEMORY[0x19A906130](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v26 = sub_19A7AACF4();
      v28 = v27;
      if (v26 == sub_19A7AAC84() && v28 == v29)
      {

LABEL_36:

        goto LABEL_41;
      }

      v30 = sub_19A7AC064();

      if (v30)
      {
        goto LABEL_36;
      }

      ++v22;
      if (v25 == j)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:

  v24 = 0;
LABEL_41:
  v31 = v124;
  v32 = v124[3];
  v33 = *(v32 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stillRepresentation);
  v112 = OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stillRepresentation;
  *(v32 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stillRepresentation) = v24;
  v0 = v24;

  if (v24)
  {

    v34 = v112;
    goto LABEL_78;
  }

  v35 = *(v114 + v113);
  if (!v35)
  {
    goto LABEL_116;
  }

  v36 = v35;
  v0 = sub_19A7AAD94();

  v109 = v32;
  if (v0 >> 62)
  {
LABEL_58:
    v37 = sub_19A7ABBE4();
    if (v37)
    {
      goto LABEL_46;
    }

LABEL_59:

    v45 = *(v114 + v113);
    if (v45)
    {
      v46 = v45;

      v47 = sub_19A7AAD94();

      if (v47 >> 62)
      {
        goto LABEL_75;
      }

      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
LABEL_76:

        v2 = 0;
        goto LABEL_77;
      }

LABEL_62:
      v49 = 0;
      v118 = v47 & 0xFFFFFFFFFFFFFF8;
      v120 = v47 & 0xC000000000000001;
      v117 = (v31[5] + 8);
      while (1)
      {
        if (v120)
        {
          v50 = MEMORY[0x19A906130](v49, v47);
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
LABEL_72:
            __break(1u);
LABEL_73:

            v31 = v124;
            goto LABEL_77;
          }
        }

        else
        {
          if (v49 >= *(v118 + 16))
          {
            __break(1u);
LABEL_75:
            v48 = sub_19A7ABBE4();
            if (!v48)
            {
              goto LABEL_76;
            }

            goto LABEL_62;
          }

          v50 = *(v47 + 8 * v49 + 32);
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_72;
          }
        }

        v52 = v47;
        v53 = v48;
        v55 = v31[7];
        v54 = v31[8];
        v56 = v31[4];
        v2 = v50;
        sub_19A7AAC74();
        sub_19A7A92D4();
        v123 = sub_19A7A9294();
        v57 = *v117;
        (*v117)(v55, v56);
        v57(v54, v56);
        if (v123)
        {
          goto LABEL_73;
        }

        ++v49;
        v48 = v53;
        v58 = v51 == v53;
        v31 = v124;
        v47 = v52;
        if (v58)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_117;
  }

  v37 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_59;
  }

LABEL_46:
  v38 = 0;
  v116 = (v31[5] + 8);
  while ((v0 & 0xC000000000000001) == 0)
  {
    if (v38 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_58;
    }

    v39 = *(v0 + 8 * v38 + 32);
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_55;
    }

LABEL_50:
    v42 = v31[7];
    v41 = v31[8];
    v43 = v31[4];
    v2 = v39;
    sub_19A7AAC74();
    sub_19A7A92B4();
    v122 = sub_19A7A9294();
    v44 = *v116;
    (*v116)(v42, v43);
    v44(v41, v43);
    if (v122)
    {
      goto LABEL_56;
    }

    ++v38;
    v31 = v124;
    if (v40 == v37)
    {
      goto LABEL_59;
    }
  }

  v39 = MEMORY[0x19A906130](v38, v0);
  v40 = v38 + 1;
  if (!__OFADD__(v38, 1))
  {
    goto LABEL_50;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  v31 = v124;

LABEL_77:
  v32 = v109;
  v34 = v112;
  v0 = *(v109 + v112);
  *(v109 + v112) = v2;
LABEL_78:

  v59 = *(v32 + v34);
  if (!v59)
  {
    if (qword_1EAFCB690 != -1)
    {
      swift_once();
    }

    v72 = v31[3];
    v73 = sub_19A7A9384();
    __swift_project_value_buffer(v73, qword_1EAFCF220);
    v74 = v72;
    v75 = sub_19A7A9364();
    v76 = sub_19A7AB584();
    if (!os_log_type_enabled(v75, v76))
    {
      v95 = v31[3];

LABEL_103:
LABEL_109:
      v103 = 0;
      goto LABEL_110;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v125 = v78;
    *v77 = 136315138;
    v79 = *(v114 + v113);
    v0 = v31[3];
    if (!v79)
    {
LABEL_118:

      __break(1u);
      return;
    }

    v80 = v78;
    v81 = v79;

    v0 = sub_19A7AAD94();
    if (v0 >> 62)
    {
      v82 = sub_19A7ABBE4();
      if (v82)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v82 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v82)
      {
LABEL_88:
        v115 = v80;
        v119 = v77;
        v121 = v75;
        v126 = MEMORY[0x1E69E7CC0];
        sub_19A65AED0(0, v82 & ~(v82 >> 63), 0);
        if ((v82 & 0x8000000000000000) == 0)
        {
          v83 = 0;
          v84 = v31[5];
          v85 = v126;
          v86 = v0;
          v87 = v82;
          do
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v88 = MEMORY[0x19A906130](v83);
            }

            else
            {
              v88 = *(v86 + 8 * v83 + 32);
            }

            v89 = v88;
            sub_19A7AAC74();

            v126 = v85;
            v91 = *(v85 + 16);
            v90 = *(v85 + 24);
            if (v91 >= v90 >> 1)
            {
              sub_19A65AED0(v90 > 1, v91 + 1, 1);
              v85 = v126;
            }

            v92 = v124[6];
            v93 = v124[4];
            ++v83;
            *(v85 + 16) = v91 + 1;
            (*(v84 + 32))(v85 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v91, v92, v93);
            v86 = v0;
          }

          while (v87 != v83);

          v77 = v119;
          v75 = v121;
          v80 = v115;
          goto LABEL_108;
        }

        __break(1u);
        goto LABEL_114;
      }
    }

    v85 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v31 = v124;
    v104 = MEMORY[0x19A9056A0](v85, v124[4]);
    v106 = v105;

    v107 = sub_19A62540C(v104, v106, &v125);

    *(v77 + 4) = v107;
    _os_log_impl(&dword_19A5EE000, v75, v76, "missing still representation: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x19A907A30](v80, -1, -1);
    MEMORY[0x19A907A30](v77, -1, -1);

    goto LABEL_109;
  }

  v60 = v59;
  v61 = sub_19A7AACC4();
  v63 = v62;
  v64 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v65 = sub_19A7A8E14();
  v66 = [v64 initWithData_];

  sub_19A612F14(v61, v63);
  if (!v66)
  {
    if (qword_1EAFCB690 != -1)
    {
      swift_once();
    }

    v94 = sub_19A7A9384();
    __swift_project_value_buffer(v94, qword_1EAFCF220);
    v95 = sub_19A7A9364();
    v96 = sub_19A7AB584();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_19A5EE000, v95, v96, "Can not create image", v97, 2u);
      MEMORY[0x19A907A30](v97, -1, -1);
    }

    goto LABEL_103;
  }

  v67 = *(v111 + v110);
  if (v67)
  {
    v68 = v67;
    v69 = sub_19A7AACC4();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0xF000000000000000;
  }

  v98 = v31[3];
  v99 = sub_19A6BE2A0(*(v31[2] + OBJC_IVAR___STKImageGlyph_stickerEffectType));
  v100 = *(v98 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_effect);
  *(v98 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_effect) = v99;
  v101 = v99;

  objc_allocWithZone(type metadata accessor for StickerEditViewController());
  v102 = v101;
  v103 = sub_19A78B2C4(v66, v69, v71, v101);

  sub_19A612F00(v69, v71);
LABEL_110:

  v108 = v31[1];

  v108(v103);
}

void sub_19A743650(char *a1)
{
  v2 = v1;
  v4 = sub_19A7AAA14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_effect);
  *(v2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_effect) = a1;

  v9 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  v10 = *&a1[v9];
  if (v10 == 5)
  {
    v11 = *(v2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_animatedRepresentation);
    if (!v11)
    {
LABEL_11:
      v22 = a1;
LABEL_12:
      (*(v5 + 104))(v7, *MEMORY[0x1E69D4638], v4);
      sub_19A7AAAC4();
      swift_allocObject();
      sub_19A7AAA04();
      v23 = *(v2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker);
      if (v23)
      {
        v24 = v23;
        sub_19A7AA9F4();

        return;
      }

      goto LABEL_15;
    }

    v10 = OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker;
    v12 = *(v2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker);
    if (!v12)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v13 = a1;
    a1 = v12;
    v14 = v11;
    sub_19A7AAEC4();

    v15 = *(v2 + v10);
    if (v15)
    {
LABEL_10:
      v21 = v15;
      sub_19A7AAE14();

      goto LABEL_12;
    }

    __break(1u);
  }

  v16 = *(v2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stillRepresentation);
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker;
  v18 = *(v2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker);
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = a1;
  v20 = v18;
  v14 = v16;
  sub_19A7AAE94();
  sub_19A7AAEC4();

  v15 = *(v2 + v17);
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
}

void sub_19A7439F4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v83 - v4;
  v6 = &v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sourceRect];
  if (!CGRectEqualToRect(*&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sourceRect], *MEMORY[0x1E695F050]))
  {
    v7 = OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stickerEditorController;
    v8 = *&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stickerEditorController];
    if (v8)
    {
      v9 = OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_previewView;
      if (!*&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_previewView])
      {
        v10 = *&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_imageGlyph];
        if (v10)
        {
          v95 = v1;
          v94 = v10;
          v93 = v10;
          v11 = v8;
          v12 = sub_19A7885C0();

          [v12 frame];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          v21 = *v6;
          v22 = v6[1];
          if (a1)
          {
            v23 = v14;
          }

          else
          {
            v23 = *v6;
          }

          v84 = v23;
          if (a1)
          {
            v24 = v16;
          }

          else
          {
            v24 = v22;
          }

          v25 = v6[2];
          v26 = v6[3];
          if (a1)
          {
            v27 = v18;
          }

          else
          {
            v27 = v6[2];
          }

          v97 = v27;
          if (a1)
          {
            v28 = v20;
          }

          else
          {
            v28 = v26;
          }

          if ((a1 & 1) == 0)
          {
            v21 = v14;
            v22 = v16;
          }

          *&v96 = v22;
          if (a1)
          {
            v29 = v25;
          }

          else
          {
            v29 = v18;
          }

          if (a1)
          {
            v20 = v26;
          }

          v30 = v21;
          v88 = v21;
          v31 = v29;
          v89 = v29;
          v32 = v20;
          MidX = CGRectGetMidX(*&v21);
          v34 = v84;
          v100.origin.x = v84;
          v90 = v24;
          v100.origin.y = v24;
          v35 = v97;
          v100.size.width = v97;
          v87 = v28;
          v100.size.height = v28;
          v36 = MidX - CGRectGetMidX(v100);
          v101.origin.x = v30;
          v37 = *&v96;
          *&v101.origin.y = v96;
          v101.size.width = v29;
          v101.size.height = v20;
          MidY = CGRectGetMidY(v101);
          v102.origin.x = v34;
          v102.origin.y = v24;
          v102.size.width = v35;
          v102.size.height = v28;
          v39 = CGRectGetMidY(v102);
          aBlock.a = 1.0;
          aBlock.b = 0.0;
          aBlock.c = 0.0;
          aBlock.d = 1.0;
          aBlock.tx = 0.0;
          aBlock.ty = 0.0;
          CGAffineTransformTranslate(&v98, &aBlock, v36, MidY - v39);
          *&v92 = v98.tx;
          ty = v98.ty;
          v86 = *&v98.a;
          v85 = *&v98.c;
          v40 = v88;
          v103.origin.x = v88;
          v103.origin.y = v37;
          v41 = v89;
          v103.size.width = v89;
          v103.size.height = v20;
          Width = CGRectGetWidth(v103);
          v104.origin.x = v34;
          v43 = v90;
          v104.origin.y = v90;
          v44 = v97;
          v104.size.width = v97;
          v45 = v87;
          v104.size.height = v87;
          v46 = Width / CGRectGetWidth(v104);
          v105.origin.x = v40;
          v47 = v34;
          v48 = v43;
          *&v105.origin.y = v96;
          v105.size.width = v41;
          v105.size.height = v20;
          Height = CGRectGetHeight(v105);
          v106.origin.x = v47;
          v106.origin.y = v48;
          v106.size.width = v44;
          v106.size.height = v45;
          v50 = CGRectGetHeight(v106);
          *&aBlock.c = v85;
          *&aBlock.a = v86;
          *&aBlock.tx = v92;
          aBlock.ty = ty;
          CGAffineTransformScale(&v98, &aBlock, v46, Height / v50);
          v92 = *&v98.c;
          v96 = *&v98.a;
          tx = v98.tx;
          v52 = v98.ty;
          type metadata accessor for StickerView();
          v53 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v54 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
          swift_beginAccess();
          v53[v54] = 0;
          v55 = *&v53[OBJC_IVAR___STKStickerView_effectView];
          if (v55)
          {
            *(v55 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = 0;
          }

          v56 = v53;
          [v56 setContentMode_];
          [v56 setFrame_];
          *&aBlock.c = v92;
          *&aBlock.a = v96;
          aBlock.tx = tx;
          aBlock.ty = v52;
          [v56 setTransform_];

          v57 = v95;
          v58 = *&v95[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_effect];
          v59 = sub_19A7AB394();
          (*(*(v59 - 8) + 56))(v5, 1, 1, v59);
          sub_19A7AB354();
          v60 = v58;
          v97 = COERCE_DOUBLE(v93);
          v61 = v56;
          v62 = v60;
          v63 = sub_19A7AB344();
          v64 = swift_allocObject();
          v65 = MEMORY[0x1E69E85E0];
          v64[2] = v63;
          v64[3] = v65;
          v64[4] = v61;
          v64[5] = 0;
          v64[6] = v94;
          v64[7] = v58;
          sub_19A6816F0(0, 0, v5, &unk_19A7BE500, v64);

          v66 = [v57 view];
          if (v66)
          {
            v67 = v66;
            [v66 addSubview_];

            v68 = *&v57[v9];
            *&v57[v9] = v61;
            v69 = v61;

            v70 = *&v57[v7];
            if (v70)
            {
              v71 = v70;
              v72 = sub_19A7885C0();
              v57 = v95;
              v73 = v72;

              [v73 setHidden_];
            }

            v74 = objc_opt_self();
            v75 = swift_allocObject();
            *(v75 + 16) = v57;
            *(v75 + 24) = a1 & 1;
            *(v75 + 32) = v69;
            *&aBlock.tx = sub_19A74682C;
            *&aBlock.ty = v75;
            *&aBlock.a = MEMORY[0x1E69E9820];
            *&aBlock.b = 1107296256;
            *&aBlock.c = sub_19A6815D4;
            *&aBlock.d = &block_descriptor_62_0;
            v76 = _Block_copy(&aBlock);
            v77 = v69;
            v78 = v57;

            v79 = swift_allocObject();
            *(v79 + 16) = v78;
            *(v79 + 24) = v77;
            *&aBlock.tx = sub_19A74683C;
            *&aBlock.ty = v79;
            *&aBlock.a = MEMORY[0x1E69E9820];
            *&aBlock.b = 1107296256;
            *&aBlock.c = sub_19A765D14;
            *&aBlock.d = &block_descriptor_68_0;
            v80 = _Block_copy(&aBlock);
            v81 = v77;
            v82 = v78;

            [v74 animateWithDuration:0 delay:v76 usingSpringWithDamping:v80 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];

            _Block_release(v80);
            _Block_release(v76);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

id sub_19A744134(uint64_t a1, char a2, id a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_navController);
  if (!v4)
  {
LABEL_6:
    v9[0] = 0x3FF0000000000000;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x3FF0000000000000;
    v9[4] = 0;
    v9[5] = 0;
    return [a3 setTransform_];
  }

  result = [v4 view];
  if (result)
  {
    v7 = result;
    v8 = 0.0;
    if (a2)
    {
      v8 = 1.0;
    }

    [result setAlpha_];

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_19A7441DC(int a1, uint64_t a2, id a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stickerEditorController);
  if (v5)
  {
    v6 = v5;
    v7 = sub_19A7885C0();

    [v7 setHidden_];
  }

  [a3 removeFromSuperview];
  v8 = *(a2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_previewView);
  *(a2 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_previewView) = 0;
}

id sub_19A744274(char a1)
{
  v2 = v1;
  if (qword_1EAFCB690 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCF220);
  v5 = sub_19A7A9364();
  v6 = sub_19A7AB574();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19A5EE000, v5, v6, "viewWillDisappear", v7, 2u);
    MEMORY[0x19A907A30](v7, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for LocalStickerEffectEditorViewController();
  return objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
}

void sub_19A7443D4(uint64_t a1, char *a2)
{
  sub_19A743650(a2);
  v3 = [v2 _hostedWindowScene];
  if (v3)
  {
    v4 = v3;
    v5 = sub_19A74584C(0, 0, 0xE000000000000000, 0, 0);
    [v4 sendAction_];
  }
}

void sub_19A744478(char a1, double a2, double a3, double a4, double a5)
{
  v6 = (v5 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sourceRect);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  sub_19A7439F4(a1);
}

id LocalStickerEffectEditorViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EAFCB690 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCF220);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for LocalStickerEffectEditorViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id LocalStickerEffectEditorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LocalStickerEffectEditorViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stickerEditorController] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_navController] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stillRepresentation] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_animatedRepresentation] = 0;
  v6 = &v3[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sourceRect];
  v7 = *(MEMORY[0x1E695F050] + 16);
  *v6 = *MEMORY[0x1E695F050];
  *(v6 + 1) = v7;
  *&v3[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_imageGlyph] = 0;
  *&v3[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_previewView] = 0;
  v8 = OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_effect;
  if (qword_1EAFCB328 != -1)
  {
    swift_once();
  }

  v9 = qword_1EAFCB330;
  *&v3[v8] = qword_1EAFCB330;
  v10 = v9;
  if (a2)
  {
    v11 = sub_19A7AAFE4();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for LocalStickerEffectEditorViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id LocalStickerEffectEditorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalStickerEffectEditorViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stickerEditorController] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_navController] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sticker] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stillRepresentation] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_animatedRepresentation] = 0;
  v3 = &v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sourceRect];
  v4 = *(MEMORY[0x1E695F050] + 16);
  *v3 = *MEMORY[0x1E695F050];
  *(v3 + 1) = v4;
  *&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_imageGlyph] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_previewView] = 0;
  v5 = OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_effect;
  if (qword_1EAFCB328 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAFCB330;
  *&v1[v5] = qword_1EAFCB330;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for LocalStickerEffectEditorViewController();
  v7 = v6;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id sub_19A744A20(void *a1)
{
  result = [a1 delegate];
  if (result)
  {
    type metadata accessor for RemoteStickerEffectEditorViewController();
    if (!swift_dynamicCastClass())
    {

      return swift_unknownObjectRelease();
    }

    v3 = [v1 info];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 objectForSetting_];

      if (v5)
      {
        sub_19A7ABB44();
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = 0u;
        v8 = 0u;
      }

      v9 = v7;
      v10 = v8;
      if (*(&v8 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && !v7)
        {
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong stickerEffectEditorViewControllerControllerDidTapDone];
            swift_unknownObjectRelease();
          }
        }

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = 0u;
      v10 = 0u;
    }

    return sub_19A5F2B54(&v9, &unk_1EAFCD750);
  }

  return result;
}

uint64_t sub_19A744D9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF2C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A746BD4();
  sub_19A7AC1D4();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  type metadata accessor for CGRect(0);
  sub_19A746C28(&qword_1EAFCF2D0, type metadata accessor for CGRect);
  sub_19A7ABFE4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_19A7ABFC4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A744F6C()
{
  if (*v0)
  {
    return 0x676E69776F6873;
  }

  else
  {
    return 0x6552656372756F73;
  }
}

uint64_t sub_19A744FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463;
  if (v6 || (sub_19A7AC064() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69776F6873 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A7AC064();

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

uint64_t sub_19A745090(uint64_t a1)
{
  v2 = sub_19A746BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A7450CC(uint64_t a1)
{
  v2 = sub_19A746BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_19A745108@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_19A7469C4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_19A745168(void *a1)
{
  v3 = sub_19A79BDD4();
  [v3 invalidate];

  if ([a1 delegate])
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4 && (v5 = v4, ([v4 respondsToSelector_] & 1) != 0) && (v6 = objc_msgSend(v5, sel_window)) != 0 && (v7 = v6, v8 = objc_msgSend(v6, sel_rootViewController), v7, v8))
    {
      type metadata accessor for LocalStickerEffectEditorViewController();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
LABEL_19:
        swift_unknownObjectRelease();

        return;
      }

      v10 = v9;
      v11 = [v1 info];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 objectForSetting_];

        if (v13)
        {
          sub_19A7ABB44();
          swift_unknownObjectRelease();
        }

        else
        {
          v16 = 0u;
          v17 = 0u;
        }

        v18 = v16;
        v19 = v17;
        if (*(&v17 + 1))
        {
          if ((swift_dynamicCast() & 1) != 0 && !v16)
          {
            sub_19A6E52F0(0, &v18);
            v14 = v20;
            if (v20 != 2)
            {
              v15 = (v10 + OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_sourceRect);
              *v15 = v18;
              v15[1] = v19;
              sub_19A7439F4(v14 & 1);
            }
          }

          goto LABEL_19;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        v18 = 0u;
        v19 = 0u;
      }

      sub_19A5F2B54(&v18, &unk_1EAFCD750);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_19A745420(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8.receiver = a1;
  v8.super_class = a5();
  return objc_msgSendSuper2(&v8, sel_initWithInfo_responder_, a3, a4);
}

id sub_19A745494(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_19A7454F0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7.receiver = a1;
  v7.super_class = a4();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v7, sel_initWithXPCDictionary_, a3);
  swift_unknownObjectRelease();
  if (v5)
  {
  }

  return v5;
}

id sub_19A745580(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_19A74561C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), double a7)
{
  v12 = a1;
  if (a3)
  {
    v17[4] = a3;
    v17[5] = a4;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_19A6DB1A8;
    v17[3] = a5;
    v13 = _Block_copy(v17);
  }

  else
  {
    v13 = 0;
  }

  v14 = a6(a1);
  v18.receiver = v7;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, v12, a2, v13, a7);
  sub_19A60126C(a3);

  _Block_release(v13);
  return v15;
}

id sub_19A745814(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19A74584C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v20[5] = a2;
  v20[6] = a3;
  v7 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v8 = [v7 init];
  if (a4)
  {
    v9 = sub_19A7A8CA4();
    swift_allocObject();
    v10 = sub_19A7A8C94();
    v11 = &unk_1EAFCB0B0;
    v12 = MEMORY[0x1E69689D8];
  }

  else
  {
    v9 = sub_19A7A8B84();
    swift_allocObject();
    v10 = sub_19A7A8B74();
    v11 = &unk_1ED8B3400;
    v12 = MEMORY[0x1E6968010];
  }

  v20[3] = v9;
  v20[4] = sub_19A746C28(v11, v12);
  v20[0] = v10;
  __swift_project_boxed_opaque_existential_1(v20, v9);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v13 = sub_19A7A8E14();
  [v8 setObject:v13 forSetting:1];

  if (a5)
  {
    v14 = [objc_opt_self() _synchronizedDrawingFence];
    [v8 setObject:v14 forSetting:2];
    sub_19A612F14(v18, v19);
  }

  else
  {
    sub_19A612F14(v18, v19);
  }

  v15 = sub_19A7AB4B4();
  [v8 setObject:v15 forSetting:0];

  type metadata accessor for StickerEffectEditorViewControllerConfigurationClientToHostAction();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v8 responder:0];

  return v16;
}

id sub_19A745B74(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  v8 = sub_19A7A8F64();
  v9 = *(*(v8 - 8) + 56);
  v9(&v1[v7], 1, 1, v8);
  sub_19A5F5028(0, &qword_1EAFCF2A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = sub_19A7AAFE4();
  v12 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v11];

  if (v12)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    v13 = swift_dynamicCast() ^ 1;
    v14 = v6;
  }

  else
  {
    sub_19A5F2B54(v19, &unk_1EAFCD750);
    v14 = v6;
    v13 = 1;
  }

  v9(v14, v13, 1, v8);
  swift_beginAccess();
  sub_19A6264EC(v6, &v1[v7]);
  swift_endAccess();
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

void sub_19A745D98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_19A7A9094();
  v58 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_19A7A8F64();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDC18);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v52 - v16;
  if (qword_1EAFCB690 != -1)
  {
    swift_once();
  }

  v18 = sub_19A7A9384();
  __swift_project_value_buffer(v18, qword_1EAFCF220);
  v19 = sub_19A7A9364();
  v20 = sub_19A7AB574();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_19A5EE000, v19, v20, "viewIsAppearing", v21, 2u);
    MEMORY[0x19A907A30](v21, -1, -1);
  }

  v22 = [v1 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = v22;
  v24 = [objc_opt_self() clearColor];
  [v23 setBackgroundColor_];

  if (*&v1[OBJC_IVAR____TtC10StickerKit38LocalStickerEffectEditorViewController_stickerEditorController])
  {
    return;
  }

  v25 = [v1 view];
  if (!v25)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = [v25 window];

  if (v27)
  {
    v28 = [v27 windowScene];

    if (v28)
    {
      v55 = v7;
      v29 = v28;
      sub_19A7AB8F4();

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDC20);
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v17, 1, v30) == 1)
      {

        sub_19A5FA874(v17);
      }

      else
      {
        v54 = v29;
        swift_getOpaqueTypeConformance2();
        sub_19A62655C();
        v32 = sub_19A7A93D4();
        (*(v31 + 8))(v17, v30);
        v33 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
        swift_beginAccess();
        sub_19A60F0CC(v32 + v33, v11, &qword_1EAFCD800);
        v35 = v59;
        v34 = v60;
        if ((*(v59 + 48))(v11, 1, v60) == 1)
        {

          sub_19A5F2B54(v11, &qword_1EAFCD800);
        }

        else
        {
          v53 = v32;
          (*(v35 + 32))(v14, v11, v34);
          if (qword_1ED8B2A98 != -1)
          {
            swift_once();
          }

          sub_19A7A8F14();
          sub_19A658194(1, v6);

          v36 = v58;
          v37 = v55;
          v38 = (*(v58 + 48))(v6, 1, v55);
          v39 = v57;
          if (v38 == 1)
          {
            (*(v59 + 8))(v14, v60);

            sub_19A5F2B54(v6, &unk_1EAFCF110);
          }

          else
          {
            (*(v36 + 32))(v57, v6, v37);
            v40 = sub_19A65382C();
            if (v40)
            {
              v41 = v40;
              v42 = sub_19A7AB394();
              v43 = v56;
              (*(*(v42 - 8) + 56))(v56, 1, 1, v42);
              sub_19A7AB354();
              v44 = v41;
              v45 = v1;
              v46 = sub_19A7AB344();
              v47 = swift_allocObject();
              v48 = MEMORY[0x1E69E85E0];
              v47[2] = v46;
              v47[3] = v48;
              v47[4] = v44;
              v47[5] = v45;
              sub_19A6816F0(0, 0, v43, &unk_19A7C0858, v47);

              (*(v36 + 8))(v39, v37);
              (*(v59 + 8))(v14, v60);
              return;
            }

            (*(v36 + 8))(v39, v37);
            (*(v59 + 8))(v14, v60);
          }
        }
      }
    }
  }

  v49 = sub_19A7A9364();
  v50 = sub_19A7AB584();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_19A5EE000, v49, v50, "Can not find sticker", v51, 2u);
    MEMORY[0x19A907A30](v51, -1, -1);
  }
}

uint64_t type metadata accessor for LocalStickerEffectEditorViewControllerConfiguration()
{
  result = qword_1EAFCF288;
  if (!qword_1EAFCF288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A746670()
{
  sub_19A625D6C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_19A746844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A60F860;

  return sub_19A741D0C(a1, v4, v5, v7, v6);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19A746918(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_19A74696C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_19A7469C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF2B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A746BD4();
  sub_19A7AC1C4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  type metadata accessor for CGRect(0);
  v16 = 0;
  sub_19A746C28(&qword_1EAFCF2C0, type metadata accessor for CGRect);
  sub_19A7ABF64();
  v12 = v15;
  v13 = v14;
  LOBYTE(v14) = 1;
  v9 = sub_19A7ABF44();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = v12;
  *a2 = v13;
  *(a2 + 16) = v11;
  *(a2 + 32) = v9 & 1;
  return result;
}

unint64_t sub_19A746BD4()
{
  result = qword_1EAFCF2B8;
  if (!qword_1EAFCF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF2B8);
  }

  return result;
}

uint64_t sub_19A746C28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A746C84()
{
  result = qword_1EAFCF2D8;
  if (!qword_1EAFCF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF2D8);
  }

  return result;
}

unint64_t sub_19A746CDC()
{
  result = qword_1EAFCF2E0;
  if (!qword_1EAFCF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF2E0);
  }

  return result;
}

unint64_t sub_19A746D34()
{
  result = qword_1EAFCF2E8;
  if (!qword_1EAFCF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF2E8);
  }

  return result;
}

uint64_t sub_19A746DA4()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCF2F0);
  __swift_project_value_buffer(v0, qword_1EAFCF2F0);
  return sub_19A7A9374();
}

id EmojiMetadataHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmojiMetadataHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiMetadataHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EmojiMetadataHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiMetadataHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_19A5F5028(0, &qword_1EAFD0400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF308);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_19A7B90E0;
    *(v5 + 32) = sub_19A5F5028(0, &qword_1EAFCA418);
    *(v5 + 40) = sub_19A5F5028(0, &qword_1EAFCF310);
    *(v5 + 48) = sub_19A5F5028(0, &qword_1EAFCF318);
    sub_19A612F68(a1, a2);
    sub_19A7AB6D4();

    sub_19A612F00(a1, a2);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCFD8);
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_19A5F2B54(v7, &unk_1EAFCD750);
      return 0;
    }
  }

  return result;
}

CFMutableDataRef sub_19A7472D0(CGImageSource *a1)
{
  v2 = sub_19A7A9304();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CFDataCreateMutable(0, 0);
  if (result)
  {
    v7 = result;
    sub_19A7A92B4();
    sub_19A7A9284();
    (*(v3 + 8))(v5, v2);
    v8 = sub_19A7AAFE4();

    v9 = CGImageDestinationCreateWithData(v7, v8, 1uLL, 0);

    if (v9)
    {
      v10 = v9;
      v11 = sub_19A7AAF34();
      CGImageDestinationAddImageFromSource(v10, a1, 0, v11);

      CGImageDestinationFinalize(v10);
    }

    else
    {
      if (qword_1EAFCB6A0 != -1)
      {
        swift_once();
      }

      v12 = sub_19A7A9384();
      __swift_project_value_buffer(v12, qword_1EAFCF2F0);
      v10 = sub_19A7A9364();
      v13 = sub_19A7AB584();
      if (os_log_type_enabled(v10, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_19A5EE000, v10, v13, "Unable to add metadata to image", v14, 2u);
        MEMORY[0x19A907A30](v14, -1, -1);
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v16 = xmmword_19A7BB5E0;
      v15 = v7;
      sub_19A7A8E24();

      if (*(&v16 + 1) >> 60 != 15)
      {
        return v16;
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A7475D8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_19A7AA734();
}

uint64_t sub_19A7477F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  return v1;
}

void sub_19A74786C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_19A7AA764();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_19A7AA7B4();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_19A7AA7D4();
  v41 = *(v50 - 8);
  v9 = MEMORY[0x1EEE9AC00](v50);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - v13;
  v51 = sub_19A7A9094();
  v48 = *(v51 - 8);
  v15 = *(v48 + 64);
  v16 = MEMORY[0x1EEE9AC00](v51);
  v39 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v35 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = a1;
  v53 = a2;

  sub_19A7A96B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  sub_19A74A73C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v18 = aBlock;
  if (aBlock)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    if (v53)
    {
      v19 = sub_19A7AAFE4();
    }

    else
    {
      v19 = 0;
    }

    [v18 selectAvatarRecordWithIdentifier:v19 animated:0];
  }

  if (a2)
  {
    sub_19A658194(2, v14);
    v20 = v48;
    v21 = v51;
    if ((*(v48 + 48))(v14, 1, v51) == 1)
    {
      sub_19A5F2B54(v14, &unk_1EAFCF110);
    }

    else
    {
      v36 = *(v20 + 32);
      v22 = v49;
      v36(v49, v14, v21);
      v23 = sub_19A7A9064();
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = v23;

      sub_19A7A96B4();
      sub_19A74A260();
      sub_19A631AE0();
      v37 = sub_19A7AB794();
      v24 = v38;
      sub_19A7AA7C4();
      v25 = v40;
      sub_19A7AA814();
      v41 = *(v41 + 8);
      (v41)(v24, v50);
      v26 = v39;
      v27 = v51;
      (*(v20 + 16))(v39, v22, v51);
      v28 = (*(v20 + 80) + 24) & ~*(v20 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v3;
      v36((v29 + v28), v26, v27);
      v56 = sub_19A754300;
      v57 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_19A6815D4;
      v55 = &block_descriptor_31;
      v30 = _Block_copy(&aBlock);

      v31 = v42;
      sub_19A7AA784();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_19A74BE14(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
      sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
      v32 = v44;
      v33 = v47;
      sub_19A7ABB54();
      v34 = v37;
      MEMORY[0x19A905B40](v25, v31, v32, v30);
      _Block_release(v30);

      (*(v46 + 8))(v32, v33);
      (*(v43 + 8))(v31, v45);
      (v41)(v25, v50);
      (*(v20 + 8))(v49, v51);
    }
  }
}

uint64_t sub_19A74802C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29[1] = a1;
  v29[2] = a2;
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v29[0] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - v8;
  *a3 = 0;
  v30 = 0xC08F400000000000;
  sub_19A7AA454();
  v10 = *(&v31 + 1);
  *(a3 + 8) = v31;
  *(a3 + 16) = v10;
  v30 = 0xC08F400000000000;
  sub_19A7AA454();
  v11 = *(&v31 + 1);
  *(a3 + 24) = v31;
  *(a3 + 32) = v11;
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED8B2AA0;
  if (qword_1EAFCAFA0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_1EAFDD648);
  v30 = sub_19A658B20(v13);
  sub_19A7AA454();
  *(a3 + 40) = v31;
  v14 = type metadata accessor for CategoryBar(0);
  v15 = *(v5 + 16);
  v15(v9, v13, v4);
  v15(v29[0], v9, v4);
  sub_19A7AA454();
  (*(v5 + 8))(v9, v4);
  *(a3 + v14[9]) = v12;
  v16 = (a3 + v14[12]);
  type metadata accessor for SelectionFeedbackGenerator();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v30 = v17;
  v18 = v12;
  sub_19A7AA454();
  v19 = *(&v31 + 1);
  *v16 = v31;
  v16[1] = v19;
  v20 = v14[13];
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  swift_storeEnumTagMultiPayload();
  v21 = v14[14];
  *(a3 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CategoryBar.ScrollPosition(0);
  sub_19A74BE14(&qword_1EAFCAFB0, type metadata accessor for CategoryBar.ScrollPosition);

  v22 = sub_19A7A9914();
  v23 = (a3 + v14[10]);
  *v23 = v22;
  v23[1] = v24;
  type metadata accessor for CategoryBar.Configuration(0);
  sub_19A74BE14(&unk_1EAFCAFD0, type metadata accessor for CategoryBar.Configuration);

  v25 = sub_19A7A9914();
  v26 = (a3 + v14[11]);
  *v26 = v25;
  v26[1] = v27;
  sub_19A749458();
}

uint64_t sub_19A748454()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  return v1;
}

uint64_t sub_19A7484C8()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCF320);
  __swift_project_value_buffer(v0, qword_1EAFCF320);
  return sub_19A7A9374();
}

uint64_t sub_19A748548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = v43 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v49 = v43 - v7;
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v43 - v12;
  v14 = type metadata accessor for CategoryBar(0);
  v15 = *(v14 + 32);
  v46 = v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF340);
  sub_19A7AA464();
  v16 = sub_19A7A9064();
  v44 = *(v9 + 8);
  v44(v13, v8);
  if (!sub_19A75BDF8(v16))
  {
    v28 = *(a1 + 40);
    v50 = *(a1 + 48);
    v51 = v28;
    v53 = v28;
    v54 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF510);
    sub_19A7AA464();
    v29 = v55;
    v30 = sub_19A65883C(2);
    if (v31)
    {
      if (v29 != -1)
      {
        goto LABEL_18;
      }
    }

    else if (v29 != v30)
    {
      goto LABEL_18;
    }
  }

  v43[1] = v15;
  v17 = sub_19A65883C(5);
  v43[0] = a1;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  if (v18)
  {
    v21 = -1;
  }

  else
  {
    v21 = v17;
  }

  v53 = v19;
  v54 = v20;
  v55 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF510);
  sub_19A7AA474();
  v50 = v20;
  v51 = v19;
  v53 = v19;
  v54 = v20;
  sub_19A7AA464();
  v22 = v49;
  sub_19A75C0D0(v55, v49);
  v23 = v22;
  v24 = *(v9 + 48);
  if (v24(v23, 1, v8) == 1)
  {
    if (sub_19A659378(3))
    {
      v26 = v25;
      swift_unknownObjectRelease();
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v32 = v45;
    a1 = v43[0];
    MEMORY[0x19A903470](0, v27);
    v33 = v49;
    if (v24(v49, 1, v8) != 1)
    {
      sub_19A5F2B54(v33, &unk_1EAFCF110);
    }
  }

  else
  {
    v32 = v45;
    (*(v9 + 32))(v45, v23, v8);
    a1 = v43[0];
  }

  (*(v9 + 16))(v13, v32, v8);
  sub_19A7AA474();
  v44(v32, v8);
LABEL_18:
  v34 = v8;
  v35 = v46;
  v53 = v51;
  v54 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF510);
  sub_19A7AA464();
  v36 = v55;
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v36;

  sub_19A7A96B4();
  sub_19A74A068();

  v37 = v47;
  sub_19A7AA464();
  (*(v9 + 56))(v37, 0, 1, v34);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A60F0CC(v37, v48, &unk_1EAFCF110);

  sub_19A7A96B4();
  sub_19A5F2B54(v37, &unk_1EAFCF110);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v53) = 0;
  sub_19A7A96B4();
  v38 = (a1 + *(v35 + 48));
  v40 = *v38;
  v39 = v38[1];
  v53 = v40;
  v54 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF468);
  sub_19A7AA464();
  v41 = v55;
  sub_19A786230();
  if ((*(v41 + 24) & 1) == 0)
  {
    sub_19A786230();
  }

  [*(v41 + 16) selectionChanged];
  if (*(v41 + 24) == 1)
  {
    *(v41 + 24) = 0;
    [*(v41 + 16) userInteractionEnded];
  }
}

void sub_19A748B20(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = sub_19A7A9094();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CategoryBar(0);
  sub_19A658194(2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_19A5F2B54(v12, &unk_1EAFCF110);
    if (qword_1EAFCB6A8 != -1)
    {
      swift_once();
    }

    v17 = sub_19A7A9384();
    __swift_project_value_buffer(v17, qword_1EAFCF320);

    v18 = sub_19A7A9364();
    v19 = sub_19A7AB584();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = a2;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_19A62540C(v20, a3, v25);
      _os_log_impl(&dword_19A5EE000, v18, v19, "Was asked to select an avatar, but I can't find it. %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x19A907A30](v22, -1, -1);
      MEMORY[0x19A907A30](v21, -1, -1);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    v25[0] = a2;
    v25[1] = a3;

    sub_19A7A96B4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    sub_19A74A73C();

    (*(v14 + 16))(v9, v16, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A60F0CC(v9, v24, &unk_1EAFCF110);

    sub_19A7A96B4();
    sub_19A5F2B54(v9, &unk_1EAFCF110);
    (*(v14 + 8))(v16, v13);
  }
}

void sub_19A748F98()
{
  v0 = sub_19A7A9094();
  __swift_allocate_value_buffer(v0, qword_1EAFDD648);
  v1 = __swift_project_value_buffer(v0, qword_1EAFDD648);
  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B2D20;
  sub_19A778F34(v1);
}

uint64_t sub_19A749048@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A7A9B34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CategoryBar(0);
  sub_19A60F0CC(v1 + *(v10 + 52), v9, &qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A97A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_19A7AB594();
    v13 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_19A749250@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A7A9B34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CategoryBar(0);
  sub_19A60F0CC(v1 + *(v10 + 56), v9, &qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A9954();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_19A7AB594();
    v13 = sub_19A7A9EB4();
    sub_19A7A9324();

    sub_19A7A9B24();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_19A749458()
{
  v1 = type metadata accessor for CategoryBar(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v15[1])
  {
  }

  v9 = v15[0];
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_19A754C94(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CategoryBar);
  sub_19A7AB354();
  v11 = sub_19A7AB344();
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_19A753DD4(v4, v13 + v12, type metadata accessor for CategoryBar);
  sub_19A6816F0(v9, 0, v7, &unk_19A7C11D8, v13);
}

uint64_t sub_19A7496A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = sub_19A7AB354();
  v4[10] = sub_19A7AB344();
  v5 = swift_task_alloc();
  v4[11] = v5;
  *v5 = v4;
  v5[1] = sub_19A749754;

  return sub_19A749A24();
}

uint64_t sub_19A749754(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  v5 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A749898, v5, v4);
}

uint64_t sub_19A749898()
{
  v1 = v0[13];

  if (v1)
  {
    type metadata accessor for CategoryBar(0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    if (v0[3])
    {
    }

    else
    {
      v3 = v0[12];
      v2 = v0[13];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[4] = v3;
      v0[5] = v2;

      sub_19A7A96B4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_19A7A96A4();

      sub_19A74A73C();
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A749A24()
{

  return MEMORY[0x1EEE6DFA0](sub_19A749AB0, 0, 0);
}

uint64_t sub_19A749AB0()
{
  v27 = v0;
  v26[1] = *MEMORY[0x1E69E9840];
  v1 = [objc_allocWithZone(MEMORY[0x1E698E348]) init];
  v2 = [objc_opt_self() requestForStorePrimaryAvatar];
  *(v0 + 40) = 0;
  v3 = [v1 avatarsForFetchRequest:v2 error:v0 + 40];

  v4 = *(v0 + 40);
  if (!v3)
  {
    v14 = v4;
    v3 = sub_19A7A8D34();

    swift_willThrow();
    if (qword_1EAFCB6A8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF0F8);
  v5 = sub_19A7AB254();
  v6 = v4;

  if (v5 >> 62)
  {
    if (sub_19A7ABBE4())
    {
      goto LABEL_4;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A906130](0, v5);
      goto LABEL_7;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v5 + 32);
      swift_unknownObjectRetain();
LABEL_7:

      v8 = [v7 identifier];
      v9 = sub_19A7AB014();
      v11 = v10;

      swift_unknownObjectRelease();
      v12 = v11;
      v13 = v9;
      goto LABEL_15;
    }

    __break(1u);
LABEL_20:
    swift_once();
LABEL_9:
    v15 = sub_19A7A9384();
    __swift_project_value_buffer(v15, qword_1EAFCF320);
    v16 = v3;
    v17 = sub_19A7A9364();
    v18 = sub_19A7AB584();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = sub_19A7AC124();
      v23 = sub_19A62540C(v21, v22, v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_19A5EE000, v17, v18, "Could not load primary avatar. %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x19A907A30](v20, -1, -1);
      MEMORY[0x19A907A30](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

LABEL_14:
  v13 = 0;
  v12 = 0;
LABEL_15:
  v24 = *(v0 + 8);

  return v24(v13, v12);
}

uint64_t sub_19A749E30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();
}

uint64_t sub_19A749EA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();
}

uint64_t sub_19A749F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_19A60F0CC(a1, &v9 - v6, &unk_1EAFCF110);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A60F0CC(v7, v4, &unk_1EAFCF110);

  sub_19A7A96B4();
  return sub_19A5F2B54(v7, &unk_1EAFCF110);
}

uint64_t sub_19A74A068()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if ((v6 & 1) == 0)
  {
    v1 = sub_19A65883C(2);
    if (v2)
    {
      v3 = -1;
    }

    else
    {
      v3 = v1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    if ((v3 == v5) != v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_19A7A96B4();
    }
  }

  return result;
}

void sub_19A74A260()
{
  v0 = sub_19A7A9094();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  MEMORY[0x19A903470](0, v10);
  v4 = sub_19A658B20(v3);
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v4 != v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v4;

    sub_19A7A96B4();
    sub_19A74A068();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (sub_19A75BDF8(v10))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    MEMORY[0x19A903470](0, v10);
    v6 = sub_19A65382C();
    v5(v3, v0);
    if (v6)
    {
      v8 = *&v6[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
      v7 = *&v6[OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8];

      if (v7)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_19A7A96A4();

        if (v11)
        {
          if (v8 == v10 && v7 == v11)
          {

LABEL_12:

            return;
          }

          v9 = sub_19A7AC064();

          if (v9)
          {
            goto LABEL_12;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v10 = v8;
        v11 = v7;

        sub_19A7A96B4();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_19A7A96A4();

        sub_19A74A73C();
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_19A74A6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_19A7A96B4();
  return a7(v8);
}

uint64_t sub_19A74A73C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6[-v1];

  sub_19A7A8F04();

  v3 = sub_19A7A8F64();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_19A5F2B54(v2, &qword_1EAFCD800);
  swift_getKeyPath();
  swift_getKeyPath();
  v6[15] = v4;

  return sub_19A7A96B4();
}

uint64_t sub_19A74A8AC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = sub_19A7A9094();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A60F0CC(v8, v6, &unk_1EAFCF110);

  sub_19A7A96B4();
  return sub_19A5F2B54(v8, &unk_1EAFCF110);
}

uint64_t sub_19A74AA38()
{
  v1 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__isDragging;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCF540);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__indexPath;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF438);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__categoryBarVersion;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB50);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__categoryIndex, v7);
  v9 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__percentage;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF538);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v3(v0 + OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__selectedAvatarIsEditable, v2);
  v8(v0 + OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__lastScrolledSection, v7);
  v3(v0 + OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__isShowingAvatar, v2);
  v11 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__selectedMemojiIdentifier;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF530);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v3(v0 + OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__presentEditor, v2);
  v13 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__avatarPicker;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF528);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t sub_19A74ACD4()
{
  sub_19A74AA38();

  return swift_deallocClassInstance();
}

void sub_19A74AD54()
{
  sub_19A74BC9C(319, &unk_1ED8B20D0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_19A6B9814(319, &qword_1ED8B20F0, &unk_1EAFCF110);
    if (v1 <= 0x3F)
    {
      sub_19A74BC9C(319, &qword_1ED8B20C0, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_19A74BC9C(319, &qword_1ED8B20C8, MEMORY[0x1E69E63B0], MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          sub_19A6B9814(319, &unk_1ED8B20E0, qword_1EAFCEEB0);
          if (v4 <= 0x3F)
          {
            sub_19A6B9814(319, &unk_1ED8B20B0, &qword_1EAFCF338);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_19A74AFDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF528);
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v58 = &v44 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF530);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v44 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF538);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v44 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB50);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF438);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v47);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCF540);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED8B2AA0;
  *(v0 + 16) = qword_1ED8B2AA0;
  v21 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__isDragging;
  LOBYTE(v61) = 0;
  v22 = v20;
  sub_19A7A9664();
  v46 = *(v17 + 32);
  v46(v0 + v21, v19, v16);
  v23 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__indexPath;
  v24 = sub_19A7A9094();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v45 = v16;
  sub_19A60F0CC(v15, v12, &unk_1EAFCF110);
  sub_19A7A9664();
  sub_19A5F2B54(v15, &unk_1EAFCF110);
  (*(v48 + 32))(v0 + v23, v10, v49);
  v25 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__categoryBarVersion;
  v61 = 0;
  sub_19A7A9664();
  v26 = *(v52 + 32);
  v27 = v54;
  v26(v0 + v25, v7, v54);
  v28 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__categoryIndex;
  v61 = -1;
  sub_19A7A9664();
  v26(v0 + v28, v7, v27);
  v29 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__percentage;
  v61 = 0;
  v30 = v50;
  sub_19A7A9664();
  (*(v51 + 32))(v0 + v29, v30, v53);
  v31 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__selectedAvatarIsEditable;
  LOBYTE(v61) = 0;
  sub_19A7A9664();
  v32 = v19;
  v33 = v19;
  v34 = v45;
  v44 = v17 + 32;
  v35 = v46;
  v46(v0 + v31, v32, v45);
  v36 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__lastScrolledSection;
  v61 = -1;
  sub_19A7A9664();
  v26(v0 + v36, v7, v27);
  v37 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__isShowingAvatar;
  LOBYTE(v61) = 0;
  sub_19A7A9664();
  v35(v0 + v37, v33, v34);
  v38 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__selectedMemojiIdentifier;
  v61 = 0;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0);
  v39 = v55;
  sub_19A7A9664();
  (*(v56 + 32))(v0 + v38, v39, v57);
  v40 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__presentEditor;
  LOBYTE(v61) = 0;
  sub_19A7A9664();
  v35(v0 + v40, v33, v34);
  v41 = OBJC_IVAR____TtCV10StickerKit11CategoryBar14ScrollPosition__avatarPicker;
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF338);
  v42 = v58;
  sub_19A7A9664();
  (*(v59 + 32))(v0 + v41, v42, v60);
  return v0;
}

double sub_19A74B728()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  return v1;
}

uint64_t sub_19A74B7D8()
{
  v1 = OBJC_IVAR____TtCV10StickerKit11CategoryBar13Configuration__size;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE028);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV10StickerKit11CategoryBar13Configuration__animatedBackground;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCF540);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_19A74B8F4()
{
  sub_19A74BE5C(319, &qword_1EAFCA858, type metadata accessor for CGSize, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_19A74BC9C(319, &unk_1ED8B20D0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_19A74BA58()
{
  sub_19A74BC9C(319, &qword_1EAFCA680, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_19A74BC9C(319, &qword_1EAFCA670, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_19A74BE5C(319, &qword_1EAFCA6B0, MEMORY[0x1E6969C28], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ImageGlyphDataSource();
        if (v3 <= 0x3F)
        {
          sub_19A74BCEC();
          if (v4 <= 0x3F)
          {
            sub_19A74BD80();
            if (v5 <= 0x3F)
            {
              sub_19A74BE5C(319, &qword_1EAFCA698, type metadata accessor for SelectionFeedbackGenerator, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_19A74BE5C(319, &unk_1EAFCA830, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_19A74BE5C(319, &qword_1EAFCA820, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
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

void sub_19A74BC9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_19A74BCEC()
{
  if (!qword_1EAFCA7C8)
  {
    type metadata accessor for CategoryBar.ScrollPosition(255);
    sub_19A74BE14(&qword_1EAFCAFB0, type metadata accessor for CategoryBar.ScrollPosition);
    v0 = sub_19A7A9924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA7C8);
    }
  }
}

void sub_19A74BD80()
{
  if (!qword_1EAFCA7D8)
  {
    type metadata accessor for CategoryBar.Configuration(255);
    sub_19A74BE14(&unk_1EAFCAFD0, type metadata accessor for CategoryBar.Configuration);
    v0 = sub_19A7A9924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFCA7D8);
    }
  }
}

uint64_t sub_19A74BE14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19A74BE5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_19A74BEC0()
{
  type metadata accessor for CategoryBar(0);
  v0 = sub_19A652898();
  v1 = sub_19A652F7C(v0);

  if (v1 >> 62)
  {
    sub_19A7ABBE4();
  }
}

uint64_t sub_19A74BFBC()
{
  type metadata accessor for CategoryBar(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v3 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v1 = sub_19A652898();
    v2 = sub_19A652F7C(v1);

    if (v2 >> 62)
    {
      sub_19A7ABBE4();
    }
  }

  return result;
}

uint64_t sub_19A74C134(char a1, double a2, double a3)
{
  v4 = v3;
  LOBYTE(v5) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v86 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v80 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v85 = v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v80 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v84 = v80 - v19;
  v20 = sub_19A7A9094();
  v21 = *(v20 - 8);
  v87 = v20;
  v88 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_19A7A9954();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v80 - v29;
  if ((v5 & 1) != 0 || (v31 = *(v3 + 16), v92 = *(v3 + 8), v93 = v31, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF460), result = sub_19A7AA464(), vabdd_f64(a2, v91) > 5.0))
  {
    v82 = v23;
    v83 = v12;
    v33 = *(v3 + 8);
    v34 = *(v3 + 16);
    v91 = a2;
    v92 = v33;
    v93 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF460);
    sub_19A7AA474();
    sub_19A749250(v30);
    (*(v25 + 104))(v27, *MEMORY[0x1E697E7D8], v24);
    v35 = sub_19A7A9944();
    v90 = v4;
    v36 = *(v25 + 8);
    (v36)(v27, v24);
    (v36)(v30, v24);
    v37 = a3 - a2;
    if ((v35 & 1) == 0)
    {
      v37 = a2;
    }

    v38 = v37 / a3;
    v89 = type metadata accessor for CategoryBar(0);
    v39 = *(v90 + *(v89 + 36));
    v40 = sub_19A652898();
    v41 = sub_19A652F7C(v40);

    if (v41 >> 62)
    {
      goto LABEL_61;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A7ABBE4())
    {

      *v43.i64 = v38 * i;
      if (COERCE__INT64(fabs(*v43.i64)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (*v43.i64 <= -9.22337204e18)
      {
        goto LABEL_63;
      }

      if (*v43.i64 >= 9.22337204e18)
      {
        goto LABEL_64;
      }

      if (__OFSUB__(i, 1))
      {
        goto LABEL_65;
      }

      if (i - 1 >= *v43.i64)
      {
        v36 = *v43.i64;
      }

      else
      {
        v36 = i - 1;
      }

      v27 = v36 & ~(v36 >> 63);
      if (v5)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v92 = v36 & ~(v36 >> 63);

        sub_19A7A96B4();
        return sub_19A74A068();
      }

      v81 = v43;
      v5 = sub_19A652898();
      i = sub_19A652F7C(v5);

      if ((i & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if (v27 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v44 = *(i + 8 * v27 + 32);
LABEL_19:
      v5 = v44;

      v45 = sub_19A659730(v5);
      if (v45)
      {
        v41 = v45;
        v46 = [v45 numberOfItemsInCategory_];
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0;
      }

      *v47.i64 = *v81.i64 - trunc(*v81.i64);
      v48.f64[0] = NAN;
      v48.f64[1] = NAN;
      v49 = *vbslq_s8(vnegq_f64(v48), v47, v81).i64 * v46;
      if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (v49 <= -9.22337204e18)
      {
        goto LABEL_69;
      }

      if (v49 >= 9.22337204e18)
      {
        goto LABEL_70;
      }

      if (__OFSUB__(v46, 1))
      {
        goto LABEL_71;
      }

      if (v46 - 1 >= v49)
      {
        v12 = v49;
      }

      else
      {
        v12 = v46 - 1;
      }

      v50 = sub_19A652898();
      v5 = sub_19A652F7C(v50);

      v41 = v5 >> 62;
      if (!(v5 >> 62))
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < v27)
        {
          goto LABEL_74;
        }

        goto LABEL_31;
      }

LABEL_72:
      result = sub_19A7ABBE4();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (sub_19A7ABBE4() < v27)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_31:
      v81.i64[0] = v17;
      if ((v5 & 0xC000000000000001) != 0 && v36 > 0)
      {
        type metadata accessor for ImageGlyphCategory(0);

        v51 = 0;
        do
        {
          v52 = v51 + 1;
          sub_19A7ABCE4();
          v51 = v52;
        }

        while (v36 != v52);
      }

      else
      {
      }

      if (v41)
      {
        v41 = sub_19A7ABE54();
        v36 = v55;
        v54 = v56;
        v27 = v57;
      }

      else
      {
        v54 = 0;
        v41 = v5 & 0xFFFFFFFFFFFFFF8;
        v36 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
        v27 = (2 * v27) | 1;
      }

      v17 = v80;
      MEMORY[0x1EEE9AC00](v53);
      v80[-2] = v90;
      sub_19A753E84(sub_19A753E64, &v80[-4], v36, v54, v27);
      v59 = v58;
      swift_unknownObjectRelease();
      v60 = v59;
      v61 = *(v59 + 16);
      if (!v61)
      {
        v5 = 0;
        v23 = v81.i64[0];
LABEL_46:
        v65 = v12 & ~(v12 >> 63);

        v66 = v5 + v65;
        if (!__OFADD__(v5, v65))
        {
          v5 = v84;
          sub_19A657D48(v66, v84);
          v36 = v87;
          v17 = v88;
          v67 = v88 + 48;
          v39 = *(v88 + 6);
          v68 = v39(v5, 1, v87);
          v80[1] = v67;
          v81.i64[0] = v39;
          if (v68 != 1)
          {
            v70 = v82;
            v17[4](v82, v5, v36);
            v71 = v17;
            goto LABEL_52;
          }

          if (qword_1EAFCAFA0 == -1)
          {
LABEL_49:
            v69 = __swift_project_value_buffer(v36, qword_1EAFDD648);
            v70 = v82;
            v17[2](v82, v69, v36);
            v71 = v17;
            if (v39(v5, 1, v36) != 1)
            {
              sub_19A5F2B54(v5, &unk_1EAFCF110);
            }

LABEL_52:
            swift_getKeyPath();
            swift_getKeyPath();
            sub_19A7A96A4();

            v72 = v85;
            v71[2](v85, v70, v36);
            (v71[7])(v72, 0, 1, v36);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_19A60F0CC(v72, v83, &unk_1EAFCF110);

            sub_19A7A96B4();
            sub_19A5F2B54(v72, &unk_1EAFCF110);
            v73 = v86;
            sub_19A60F0CC(v23, v86, &unk_1EAFCF110);
            if ((v81.i64[0])(v73, 1, v36) == 1)
            {
              sub_19A5F2B54(v73, &unk_1EAFCF110);
              sub_19A7A9064();
              v74 = v88;
              goto LABEL_55;
            }

            v75 = sub_19A7A9064();
            v74 = v88;
            (*(v88 + 1))(v73, v36);
            if (v75 != sub_19A7A9064())
            {
LABEL_55:
              v76 = (v90 + *(v89 + 48));
              v78 = *v76;
              v77 = v76[1];
              v92 = v78;
              v93 = v77;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF468);
              sub_19A7AA464();
              v79 = v91;
              if ((*(*&v91 + 24) & 1) == 0)
              {
                sub_19A786230();
              }

              [*(*&v79 + 16) selectionChanged];
            }

            sub_19A5F2B54(v23, &unk_1EAFCF110);
            return v74[1](v70, v36);
          }

LABEL_76:
          swift_once();
          goto LABEL_49;
        }

LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v5 = 0;
      v62 = (v60 + 32);
      v23 = v81.i64[0];
      while (1)
      {
        v63 = *v62++;
        v64 = __OFADD__(v5, v63);
        v5 += v63;
        if (v64)
        {
          break;
        }

        if (!--v61)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_61:
      ;
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v44 = MEMORY[0x19A906130](v27, i);
    goto LABEL_19;
  }

  return result;
}