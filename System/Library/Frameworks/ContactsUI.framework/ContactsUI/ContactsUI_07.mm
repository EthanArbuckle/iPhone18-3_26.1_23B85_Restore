uint64_t sub_199B43754(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_199B438B0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_199DFA87C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_199DFA87C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_199B486E4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_199B439A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

char *sub_199B43A58(char *result)
{
  v2 = v1;
  v3 = &result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  v4 = (*&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar] == 1) | *&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
  v5 = *&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  if (v5 != 1)
  {
    v4 &= *&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster + 8];
  }

  if (v4)
  {
    v82 = v1;
    v91 = *&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
    if (result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] == 2)
    {
      v80 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      v6 = aBlock;
      if (aBlock >> 62)
      {
        v38 = sub_199DFA87C();
        v6 = aBlock;
        if (!v38)
        {
        }
      }

      else
      {
        v38 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
        }
      }

      v88 = *v3;
      v90 = v6 & 0xC000000000000001;
      v81 = v6 & 0xFFFFFFFFFFFFFF8;
      v3 = 4;
      v84 = v38;
      v86 = v6;
      while (1)
      {
        v5 = (v3 - 4);
        if (v90)
        {
          v39 = MEMORY[0x19A8F8520](v3 - 4);
        }

        else
        {
          if (v5 >= *(v81 + 16))
          {
            goto LABEL_77;
          }

          v39 = *(v6 + 8 * v3);
        }

        v40 = v39;
        v41 = *&v39[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
        if (v41 >= 2)
        {
          v44 = [v41 imageData];
          v45 = sub_199DF71FC();
          v47 = v46;

          v42 = sub_199DF71EC();
          v43 = v48;
          sub_199A9EF34(v45, v47);
        }

        else
        {
          v42 = 0;
          v43 = 0xE000000000000000;
        }

        v49 = *&v40[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
        if (v49 >= 2)
        {
          v52 = [v49 identifier];
          v50 = sub_199DF9F8C();
          v51 = v53;
        }

        else
        {
          v50 = 0;
          v51 = 0xE000000000000000;
        }

        v93 = v43;
        sub_199DF81AC();
        MEMORY[0x19A8F7E00](v50, v51);

        v54 = v42;
        if (v88 >= 2)
        {
          v57 = [v88 imageData];
          v58 = sub_199DF71FC();
          v60 = v59;

          v55 = sub_199DF71EC();
          v56 = v61;
          sub_199A9EF34(v58, v60);
        }

        else
        {
          v55 = 0;
          v56 = 0xE000000000000000;
        }

        if (v91 >= 2)
        {
          v64 = [v91 identifier];
          v62 = sub_199DF9F8C();
          v63 = v65;

          v2 = v82;
        }

        else
        {
          v62 = 0;
          v63 = 0xE000000000000000;
        }

        aBlock = v55;
        v93 = v56;
        sub_199DF81AC();
        MEMORY[0x19A8F7E00](v62, v63);

        if (v54 == v55 && v43 == v93)
        {
          break;
        }

        v66 = sub_199DFA99C();

        if (v66)
        {
          goto LABEL_58;
        }

        v67 = v3 - 3;
        if (__OFADD__(v5, 1))
        {
          while (2)
          {
            __break(1u);
            while (2)
            {
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              v79 = v6;
              v7 = sub_199DFA87C();
              v6 = v79;
              if (!v7)
              {
              }

LABEL_8:
              v8 = 0;
              v87 = *v3;
              v89 = v6 & 0xC000000000000001;
              v83 = v6 & 0xFFFFFFFFFFFFFF8;
              v85 = v7;
              v3 = v6;
LABEL_9:
              if (v89)
              {
                v9 = MEMORY[0x19A8F8520](v8);
              }

              else
              {
                if (v8 >= *(v83 + 16))
                {
                  continue;
                }

                v9 = *(v6 + 8 * v8 + 32);
              }

              break;
            }

            v10 = v9;
            v11 = *&v9[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
            if (v11 >= 2)
            {
              v14 = [v11 imageData];
              v15 = sub_199DF71FC();
              v17 = v16;

              v12 = sub_199DF71EC();
              v13 = v18;
              sub_199A9EF34(v15, v17);
            }

            else
            {
              v12 = 0;
              v13 = 0xE000000000000000;
            }

            v19 = *&v10[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
            if (v19 >= 2)
            {
              v22 = [v19 identifier];
              v20 = sub_199DF9F8C();
              v21 = v23;
            }

            else
            {
              v20 = 0;
              v21 = 0xE000000000000000;
            }

            v93 = v13;
            sub_199DF81AC();
            MEMORY[0x19A8F7E00](v20, v21);

            v24 = v12;
            if (v87 >= 2)
            {
              v31 = [v87 imageData];
              v32 = sub_199DF71FC();
              v34 = v33;

              v25 = sub_199DF71EC();
              v26 = v35;
              sub_199A9EF34(v32, v34);
              if (v5 < 2)
              {
                goto LABEL_23;
              }

LABEL_21:
              v27 = [v5 identifier];
              v28 = sub_199DF9F8C();
              v30 = v29;

              v5 = v91;
            }

            else
            {
              v25 = 0;
              v26 = 0xE000000000000000;
              if (v5 >= 2)
              {
                goto LABEL_21;
              }

LABEL_23:
              v28 = 0;
              v30 = 0xE000000000000000;
            }

            aBlock = v25;
            v93 = v26;
            sub_199DF81AC();
            MEMORY[0x19A8F7E00](v28, v30);

            if (v24 == v25 && v13 == v93)
            {

LABEL_57:

              v68 = &v82[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
              *v68 = v8;
              v2 = v82;
              v68[8] = 0;
              v82[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair] = 1;
              goto LABEL_64;
            }

            v36 = sub_199DFA99C();

            if (v36)
            {
              goto LABEL_57;
            }

            v37 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
              continue;
            }

            break;
          }

          ++v8;
          v6 = v3;
          if (v37 == v85)
          {
          }

          goto LABEL_9;
        }

        ++v3;
        v6 = v86;
        if (v67 == v84)
        {
        }
      }

LABEL_58:

      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      if ((aBlock & 0xC000000000000001) != 0)
      {
        v69 = MEMORY[0x19A8F8520](v3 - 4, aBlock);
      }

      else
      {
        if (v5 >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_84;
        }

        v69 = *(aBlock + 8 * v3);
      }

      v70 = v69;

      v71 = v70[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair];

      if (v71 == 1)
      {
        v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair] = 1;
      }

      v72 = &v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
      *v72 = v5;
      v72[8] = 0;
LABEL_64:
      result = v80;
    }

    else if (!result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type])
    {
      v80 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      v6 = aBlock;
      if (aBlock >> 62)
      {
        goto LABEL_78;
      }

      v7 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
      }

      goto LABEL_8;
    }

    v63 = &v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
    if (v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex + 8])
    {
      return result;
    }

    sub_199B496F0(result);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (!(aBlock >> 62))
    {
      v73 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_68;
    }

LABEL_84:
    v73 = sub_199DFA87C();
LABEL_68:

    v74 = *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue];
    v75 = swift_allocObject();
    *(v75 + 16) = v2;
    v96 = sub_199B49D70;
    v97 = v75;
    aBlock = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = sub_199AB45A0;
    v95 = &block_descriptor_13;
    v76 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v77 = v2;

    [v74 performBlock_];
    _Block_release(v76);
    swift_unknownObjectRelease();
    if (__OFSUB__(v73, 1))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      if (!(aBlock >> 62))
      {
        v78 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_71;
      }
    }

    v78 = sub_199DFA87C();
LABEL_71:

    if (v73 - 1 != v78)
    {
      *v63 = 0;
      *(v63 + 8) = 1;
    }
  }

  return result;
}

id sub_199B44448()
{
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact);
  v7 = [v6 imageData];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_199DF71FC();
  v11 = v10;

  v12 = [v6 identifier];
  v13 = sub_199DF9F8C();
  v15 = v14;

  v54 = v13;
  v55 = v15;
  v52 = 58;
  v53 = 0xE100000000000000;
  sub_199A9C458();
  v16 = sub_199DFA64C();

  if (*(v16 + 16))
  {
    sub_199DF81AC();

    sub_199AA7630(v9, v11);
    [v6 cropRect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_199DF722C();
    v25 = objc_allocWithZone(MEMORY[0x1E695CD88]);
    v26 = sub_199DF9F5C();

    v27 = sub_199DF71DC();
    v28 = sub_199DF721C();
    v51 = v5;
    v29 = v9;
    v30 = v11;
    v31 = v2;
    v32 = v1;
    v33 = v28;
    v34 = [v25 initWithIdentifier:v26 imageData:v27 cropRect:v28 lastUsedDate:{v18, v20, v22, v24}];

    v1 = v32;
    v2 = v31;
    v11 = v30;
    v9 = v29;
    v5 = v51;
    sub_199A9EF34(v9, v11);
  }

  else
  {

    sub_199AA7630(v9, v11);
    [v6 cropRect];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_199DF722C();
    v44 = objc_allocWithZone(MEMORY[0x1E695CD88]);
    v45 = sub_199DF71DC();
    sub_199A9EF34(v9, v11);
    v46 = sub_199DF721C();
    v34 = [v44 initWithImageData:v45 cropRect:v46 lastUsedDate:{v37, v39, v41, v43}];
  }

  (*(v2 + 8))(v5, v1);
  v35 = v34;
  [v35 setSource_];
  [v6 isUsingSharedPhoto];
  v47 = [v6 thumbnailImageData];
  if (v47)
  {
    v48 = v47;
    sub_199DF71FC();

    sub_199A9EF34(v9, v11);
  }

  else
  {

    sub_199A9EF34(v9, v11);
  }

  return v35;
}

uint64_t sub_199B44844()
{
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contactForSharedProfile);
  v7 = [v6 imageData];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = sub_199DF71FC();
  v11 = v10;

  v12 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact);
  sub_199AA7630(v9, v11);
  [v12 cropRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_199DF722C();
  v21 = objc_allocWithZone(MEMORY[0x1E695CD88]);
  v22 = sub_199DF71DC();
  sub_199A9EF34(v9, v11);
  v23 = sub_199DF721C();
  v24 = [v21 initWithImageData:v22 cropRect:v23 lastUsedDate:{v14, v16, v18, v20}];

  (*(v2 + 8))(v5, v1);
  [v24 setSource_];
  v25 = [v6 thumbnailImageData];
  if (v25)
  {
    v26 = v25;
    sub_199DF71FC();
    sub_199A9EF34(v9, v11);
  }

  else
  {
    sub_199A9EF34(v9, v11);
  }

  return v24;
}

id sub_199B44AA4()
{
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v30 - v12;
  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  v14 = sub_199B73ABC(*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact));
  sub_199A7A02C(0, &unk_1EAF75580);
  v15 = sub_199B2B2CC(v14);
  v30[0] = v16;
  v17 = v15;
  v18 = [v14 serverUUID];
  if (v18)
  {
    v19 = v18;
    sub_199DF727C();

    v20 = sub_199DF729C();
    (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  }

  else
  {
    v20 = sub_199DF729C();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  }

  sub_199ADA5B8(v10, v13);
  sub_199DF729C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    sub_199A79A04(v13, &unk_1EAF73C00);
  }

  else
  {
    sub_199DF724C();
    (*(v21 + 8))(v13, v20);
  }

  sub_199DF722C();
  v22 = objc_allocWithZone(MEMORY[0x1E695CDD0]);
  v23 = sub_199DF9F5C();

  v24 = v17;
  v25 = v30[0];
  v26 = sub_199DF71DC();
  v27 = sub_199DF721C();
  v28 = [v22 initWithIdentifier:v23 posterData:v26 lastUsedDate:v27];

  sub_199A9EF34(v24, v25);
  (*(v2 + 8))(v5, v1);
  return v28;
}

id sub_199B44E6C()
{
  v58[1] = *MEMORY[0x1E69E9840];
  v1 = sub_199DF723C();
  v57 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v51 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact);
  v14 = [v13 wallpaper];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 contentIsSensitive];

    if (v16)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [v13 wallpaper];
  if (!v18)
  {
    return sub_199B44AA4();
  }

  v56 = v1;
  v19 = v18;
  v20 = [v18 posterArchiveData];

  v21 = sub_199DF71FC();
  v23 = v22;

  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 != 2 || *(v21 + 16) == *(v21 + 24))
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!v24)
  {
    if ((v23 & 0xFF000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_13:
    v55 = v17;
    v25 = objc_opt_self();
    v26 = sub_199DF71DC();
    v58[0] = 0;
    v27 = [v25 unarchiveCNConfigurationFromData:v26 error:v58];

    if (!v27)
    {
      v35 = v58[0];
      v36 = sub_199DF717C();

      swift_willThrow();
      sub_199A9EF34(v21, v23);

      return sub_199B44AA4();
    }

    v28 = v58[0];
    v29 = [v13 wallpaper];
    if (!v29 || (v30 = v29, v31 = [v29 extensionBundleID], v30, !v31))
    {
      v32 = [v13 wallpaperMetadata];
      if (!v32)
      {
        v52 = 0;
        v53 = 0;
LABEL_25:
        v38 = [v27 serverUUID];
        if (v38)
        {
          v39 = v38;
          sub_199DF727C();

          v40 = 0;
        }

        else
        {
          v40 = 1;
        }

        v41 = sub_199DF729C();
        v42 = *(v41 - 8);
        (*(v42 + 56))(v9, v40, 1, v41);
        sub_199ADA5B8(v9, v12);
        v43 = (*(v42 + 48))(v12, 1, v41);
        v54 = v27;
        if (v43 == 1)
        {
          sub_199A79A04(v12, &unk_1EAF73C00);
        }

        else
        {
          sub_199DF724C();
          (*(v42 + 8))(v12, v41);
        }

        sub_199AA7630(v21, v23);
        sub_199DF722C();
        v44 = objc_allocWithZone(MEMORY[0x1E695CDD0]);
        v45 = sub_199DF9F5C();

        v46 = sub_199DF71DC();
        v47 = sub_199DF721C();
        v48 = [v44 initWithIdentifier:v45 posterData:v46 lastUsedDate:v47];

        sub_199A9EF34(v21, v23);
        (*(v57 + 8))(v4, v56);
        v49 = v54;
        if (v53)
        {
          if (v52 == 0xD00000000000002ELL && v53 == 0x8000000199E45770)
          {

LABEL_37:
            sub_199A9EF34(v21, v23);
            return v48;
          }

          v50 = sub_199DFA99C();

          if (v50)
          {

            goto LABEL_37;
          }
        }

        [v13 isUsingSharedPhoto];

        sub_199A9EF34(v21, v23);
        return v48;
      }

      v33 = v32;
      v31 = [v32 extensionBundleID];
    }

    v52 = sub_199DF9F8C();
    v53 = v34;

    goto LABEL_25;
  }

  if (v21 != v21 >> 32)
  {
    goto LABEL_13;
  }

LABEL_20:
  sub_199A9EF34(v21, v23);
  return sub_199B44AA4();
}

id sub_199B45474()
{
  v45[1] = *MEMORY[0x1E69E9840];
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v42 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contactForSharedProfile);
  v15 = [v14 wallpaper];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 contentIsSensitive];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v14 wallpaper];
  if (!v18)
  {
    return sub_199B44AA4();
  }

  v19 = v18;
  v20 = [v18 posterArchiveData];

  v21 = sub_199DF71FC();
  v23 = v22;

  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 != 2 || *(v21 + 16) == *(v21 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v24)
  {
    if (v21 == v21 >> 32)
    {
LABEL_15:
      sub_199A9EF34(v21, v23);
      return sub_199B44AA4();
    }
  }

  else if ((v23 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  v44 = v2;
  v25 = objc_opt_self();
  v26 = sub_199DF71DC();
  v45[0] = 0;
  v27 = [v25 unarchiveCNConfigurationFromData:v26 error:v45];

  if (!v27)
  {
    v32 = v45[0];
    v33 = sub_199DF717C();

    swift_willThrow();
    sub_199A9EF34(v21, v23);

    return sub_199B44AA4();
  }

  v28 = v45[0];
  v29 = [v27 serverUUID];
  v43 = v27;
  if (v29)
  {
    v30 = v29;
    sub_199DF727C();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v35 = sub_199DF729C();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v10, v31, 1, v35);
  sub_199ADA5B8(v10, v13);
  if ((*(v36 + 48))(v13, 1, v35) == 1)
  {
    sub_199A79A04(v13, &unk_1EAF73C00);
  }

  else
  {
    sub_199DF724C();
    (*(v36 + 8))(v13, v35);
  }

  sub_199AA7630(v21, v23);
  sub_199DF722C();
  v37 = objc_allocWithZone(MEMORY[0x1E695CDD0]);
  v38 = sub_199DF9F5C();

  v39 = sub_199DF71DC();
  v40 = sub_199DF721C();
  v41 = [v37 initWithIdentifier:v38 posterData:v39 lastUsedDate:v40];

  sub_199A9EF34(v21, v23);
  (*(v44 + 8))(v5, v1);
  [v41 setContentIsSensitive_];
  sub_199A9EF34(v21, v23);

  return v41;
}

id sub_199B45958()
{
  v0 = sub_199DF723C();
  v35 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v33 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() lightGrayColor];
  v14 = sub_199B760E0(1, v12, v13, 0, 0, 2);
  v15 = objc_opt_self();
  v16 = sub_199DF9F5C();
  v17 = [v15 finalizedConfiguration:v14 forExtensionIdentifier:v16];

  if (v17)
  {

    v14 = v17;
  }

  sub_199A7A02C(0, &unk_1EAF75580);
  v18 = sub_199B2B2CC(v14);
  v34 = v0;
  v20 = v19;
  v21 = v18;
  v22 = [v14 serverUUID];
  if (v22)
  {
    v23 = v22;
    sub_199DF727C();

    v24 = sub_199DF729C();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  }

  else
  {
    v24 = sub_199DF729C();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  }

  sub_199ADA5B8(v8, v11);
  sub_199DF729C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    sub_199A79A04(v11, &unk_1EAF73C00);
  }

  else
  {
    sub_199DF724C();
    (*(v25 + 8))(v11, v24);
  }

  sub_199DF722C();
  v26 = objc_allocWithZone(MEMORY[0x1E695CDD0]);
  v27 = sub_199DF9F5C();

  v28 = v21;
  v29 = sub_199DF71DC();
  v30 = sub_199DF721C();
  v31 = [v26 initWithIdentifier:v27 posterData:v29 lastUsedDate:v30];

  sub_199A9EF34(v28, v20);
  (*(v35 + 8))(v3, v34);
  return v31;
}

void sub_199B45DDC()
{
  v1 = sub_199B465EC();
  v2 = [objc_opt_self() unifiedMeContactMonitor];
  v3 = [v2 isMeContact_];

  v72 = v0;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_199B469D4();
  }

  v89[4] = v1;
  v89[5] = v4;
  v5 = MEMORY[0x1E69E7CC0];
  v86 = MEMORY[0x1E69E7CC0];
  v70 = v4;
  v69 = v1;
  v6 = 0;
  v74 = v5;
  while (v6 != 2)
  {
    v7 = v89[v6++ + 4];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x19A8F7E80]();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
      }

      sub_199DFA10C();
      v74 = v86;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75570);
  swift_arrayDestroy();
  v9 = v74 >> 62;
  if (v0[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_loadingMode])
  {
    goto LABEL_13;
  }

  if (v9)
  {
    if (sub_199DFA87C())
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
  }

LABEL_14:
  v10 = sub_199B46AC0();
  if (v9)
  {
    goto LABEL_68;
  }

  for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_199DFA87C())
  {
    v71 = v10 >> 62;
    if (!i)
    {
      break;
    }

    v88 = v5;
    sub_199DFA79C();
    if (i < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = i;
      if (!v71)
      {
        v77 = v10 & 0xFFFFFFFFFFFFFF8;
        v81 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_20;
      }
    }

    v77 = v10 & 0xFFFFFFFFFFFFFF8;
    v81 = sub_199DFA87C();
LABEL_20:
    v12 = 0;
    v78 = v10 & 0xC000000000000001;
    v76 = v10;
    v73 = v5;
    while (v12 < v5)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_66;
      }

      v75 = v12 + 1;
      if ((v74 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x19A8F8520]();
      }

      else
      {
        if (v12 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v27 = *(v74 + 32 + 8 * v12);
      }

      v28 = v27;
      if (v81)
      {
        v5 = 0;
        v82 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster;
        v83 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar;
        v84 = v27;
        while (1)
        {
          if (v78)
          {
            v29 = MEMORY[0x19A8F8520](v5, v10);
          }

          else
          {
            if (v5 >= *(v77 + 16))
            {
              goto LABEL_64;
            }

            v29 = *(v10 + 8 * v5 + 32);
          }

          v30 = v29;
          v31 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          v80 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar;
          v32 = *&v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
          if (v32 >= 2)
          {
            v35 = [v32 imageData];
            v36 = sub_199DF71FC();
            v38 = v37;

            v33 = sub_199DF71EC();
            v34 = v39;
            sub_199A9EF34(v36, v38);
          }

          else
          {
            v33 = 0;
            v34 = 0xE000000000000000;
          }

          v79 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster;
          v40 = *&v30[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
          if (v40 >= 2)
          {
            v43 = [v40 identifier];
            v41 = sub_199DF9F8C();
            v42 = v44;
          }

          else
          {
            v41 = 0;
            v42 = 0xE000000000000000;
          }

          v86 = v33;
          v87 = v34;
          sub_199DF81AC();
          MEMORY[0x19A8F7E00](v41, v42);

          v45 = v86;
          v46 = v87;
          v47 = *&v28[v83];
          if (v47 >= 2)
          {
            v50 = [v47 imageData];
            v51 = sub_199DF71FC();
            v53 = v52;

            v48 = sub_199DF71EC();
            v49 = v54;
            v55 = v53;
            v28 = v84;
            sub_199A9EF34(v51, v55);
          }

          else
          {
            v48 = 0;
            v49 = 0xE000000000000000;
          }

          v56 = *&v28[v82];
          if (v56 >= 2)
          {
            v59 = [v56 identifier];
            v57 = sub_199DF9F8C();
            v58 = v60;

            v10 = v76;
          }

          else
          {
            v57 = 0;
            v58 = 0xE000000000000000;
          }

          v86 = v48;
          v87 = v49;
          sub_199DF81AC();
          MEMORY[0x19A8F7E00](v57, v58);

          if (v45 == v86 && v46 == v87)
          {
            v14 = v79;
            v13 = v80;
            v15 = &v30[v80];
            v16 = &v30[v79];

LABEL_22:
            v17 = *&v30[v13];
            v18 = *(v15 + 1);
            v19 = *(v15 + 2);
            v20 = *(v15 + 3);
            v21 = *&v30[v14];
            v22 = *(v16 + 4);
            v23 = type metadata accessor for CNAvatarPosterPair();
            v24 = objc_allocWithZone(v23);
            v24[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
            v24[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 0;
            v25 = &v24[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
            *v25 = v17;
            v25[1] = v18;
            v25[2] = v19;
            v25[3] = v20;
            v26 = &v24[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
            *v26 = v21;
            *(v26 + 4) = v22;
            sub_199B492C4(v17, v18, v19, v20);
            sub_199AA2284(v21);
            sub_199B492C4(v17, v18, v19, v20);
            sub_199AA2284(v21);
            v85.receiver = v24;
            v85.super_class = v23;
            objc_msgSendSuper2(&v85, sel_init);

            sub_199AA2294(v21);
            sub_199B49278(v17, v18, v19, v20);
            v10 = v76;
LABEL_23:
            v5 = v73;
            goto LABEL_24;
          }

          v61 = sub_199DFA99C();

          if (v61)
          {
            v14 = v79;
            v13 = v80;
            v15 = &v30[v80];
            v16 = &v30[v79];
            goto LABEL_22;
          }

          ++v5;
          v28 = v84;
          if (v31 == v81)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
        break;
      }

LABEL_24:
      sub_199DFA77C();
      sub_199DFA7AC();
      sub_199DFA7BC();
      sub_199DFA78C();
      v12 = v75;
      if (v75 == v5)
      {

        v62 = v88;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v63 = sub_199DFA30C();
  v64 = CNUILogPosters();
  if (os_log_type_enabled(v64, v63))
  {
    sub_199DF81AC();
    v65 = swift_slowAlloc();
    *v65 = 134217984;
    if (v71)
    {
      v66 = sub_199DFA87C();
    }

    else
    {
      v66 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v65 + 4) = v66;

    _os_log_impl(&dword_199A75000, v64, v63, "Carousel has %ld recent pairs", v65, 0xCu);
    MEMORY[0x19A8FA1A0](v65, -1, -1);
  }

  v86 = v62;
  sub_199B438B0(v10, sub_199B48AC4);
  v67 = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v67;
  v68 = v72;
  sub_199DF842C();
}

char *sub_199B465EC()
{
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair))
  {
    return 0;
  }

  v1 = sub_199B44448();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode) == 1)
  {
    v8 = sub_199B44E6C();
    v10 = v9 & 0x101;
  }

  else
  {
    v10 = 0;
    v8 = 1;
  }

  v11 = type metadata accessor for CNAvatarPosterPair();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
  v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 0;
  v13 = &v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  *v13 = v1;
  v13[1] = v3 & 1;
  v13[2] = v5;
  v13[3] = v7;
  v14 = &v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  *v14 = v8;
  *(v14 + 4) = v10;
  v48 = v1;
  sub_199AFF43C(v5, v7);
  sub_199AA2284(v8);
  v51.receiver = v12;
  v51.super_class = v11;
  v15 = objc_msgSendSuper2(&v51, sel_init);
  v16 = sub_199B469D4();
  v17 = v16;
  v49 = v5;
  v50 = v7;
  if (v16)
  {
    v18 = *&v16[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
    v19 = v16;
    if (v18 > 1)
    {
      v23 = [v18 imageData];
      v24 = sub_199DF71FC();
      v26 = v25;

      v20 = sub_199DF71EC();
      v21 = v27;
      sub_199A9EF34(v24, v26);
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v28 = *&v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
    if (v28 >= 2)
    {
      v31 = [v28 identifier];
      v29 = sub_199DF9F8C();
      v30 = v32;
    }

    else
    {
      v29 = 0;
      v30 = 0xE000000000000000;
    }

    sub_199DF81AC();
    MEMORY[0x19A8F7E00](v29, v30);

    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v33 = *&v15[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  if (v33 >= 2)
  {
    v36 = [v33 imageData];
    v37 = sub_199DF71FC();
    v39 = v38;

    v34 = sub_199DF71EC();
    v35 = v40;
    sub_199A9EF34(v37, v39);
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  v41 = *&v15[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  if (v41 >= 2)
  {
    v44 = [v41 identifier];
    v42 = sub_199DF9F8C();
    v43 = v45;
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v42, v43);

  if (v21)
  {
    if (v22 == v34 && v21 == v35)
    {

      sub_199A9EF20(v49, v50);
      sub_199AA2294(v8);

LABEL_26:
      return 0;
    }

    v46 = sub_199DFA99C();

    sub_199A9EF20(v49, v50);
    sub_199AA2294(v8);

    if (v46)
    {
      goto LABEL_26;
    }
  }

  else
  {

    sub_199A9EF20(v49, v50);
    sub_199AA2294(v8);
  }

  return v15;
}

id sub_199B469D4()
{
  v1 = sub_199B44844();
  if (v1 == 1)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  v7 = v3;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode) == 1)
  {
    v8 = sub_199B45474();
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 1;
  }

  v11 = type metadata accessor for CNAvatarPosterPair();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
  v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 1;
  v13 = &v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  *v13 = v5;
  v13[1] = 0;
  v13[2] = v6;
  v13[3] = v7;
  v14 = &v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  *v14 = v8;
  *(v14 + 4) = v10;
  v15.receiver = v12;
  v15.super_class = v11;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_199B46AC0()
{
  v72[1] = *MEMORY[0x1E69E9840];
  v1 = &selRef_imagesFilter;
  v2 = [objc_allocWithZone(MEMORY[0x1E695CFB0]) init];
  if (!*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode))
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E695CDA8]) init];
    v21 = [*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact) identifier];
    if (!v21)
    {
      sub_199DF9F8C();
      v21 = sub_199DF9F5C();
    }

    v1 = [v2 recentImagesForContactWithIdentifier_];

    v72[0] = 0;
    v22 = [v20 performFetchRequest:v1 error:v72];
    v23 = v72[0];
    sub_199A7A02C(0, &qword_1EAF710C0);
    v24 = sub_199DFA0CC();
    v25 = v23;

    v72[0] = MEMORY[0x1E69E7CC0];
    if (v24 >> 62)
    {
      v3 = sub_199DFA87C();
      if (v3)
      {
LABEL_21:
        v62 = v25;
        v64 = v1;
        v67 = v2;
        v68 = v20;
        v4 = 0;
        v2 = (v24 & 0xC000000000000001);
        v5 = &unk_1EAF75000;
        v10 = 1;
        do
        {
          if (v2)
          {
            v26 = MEMORY[0x19A8F8520](v4, v24);
          }

          else
          {
            if (v4 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_65;
            }

            v26 = *(v24 + 8 * v4 + 32);
          }

          v27 = v26;
          v1 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            goto LABEL_64;
          }

          v28 = type metadata accessor for CNAvatarPosterPair();
          v29 = objc_allocWithZone(v28);
          v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
          v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 2;
          v30 = &v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
          *v30 = v27;
          *(v30 + 8) = xmmword_199E402D0;
          *(v30 + 3) = 0xF000000000000000;
          v31 = &v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
          *v31 = 1;
          *(v31 + 4) = 0;
          v69.receiver = v29;
          v69.super_class = v28;
          objc_msgSendSuper2(&v69, sel_init);
          MEMORY[0x19A8F7E80]();
          if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_199DFA0EC();
          }

          sub_199DFA10C();
          ++v4;
        }

        while (v1 != v3);
        v53 = v72[0];
        v2 = v67;
        v20 = v68;
        v25 = v62;
        v1 = v64;
        goto LABEL_72;
      }
    }

    else
    {
      v3 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_21;
      }
    }

    v53 = MEMORY[0x1E69E7CC0];
LABEL_72:

    return v53;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E695CE00]) init];
  v4 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact);
  v5 = &selRef_finishFlowAndSaveAsRecent_;
  v6 = [v4 identifier];
  if (!v6)
  {
    sub_199DF9F8C();
    v6 = sub_199DF9F5C();
  }

  v7 = [v2 recentPostersForContactWithIdentifier_];

  v72[0] = 0;
  v60 = v7;
  v8 = [(SEL *)v3 performFetchRequest:v7 error:v72];
  v9 = v72[0];
  sub_199A7A02C(0, &unk_1EAF75558);
  v10 = sub_199DFA0CC();
  v68 = v9;

  v72[0] = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_199DFA87C())
  {
    v61 = v3;
    v12 = MEMORY[0x1E69E7CC0];
    v66 = v2;
    if (!i)
    {
      break;
    }

    v63 = v4;
    v1 = 0;
    v2 = (v10 & 0xC000000000000001);
    v3 = (v10 & 0xFFFFFFFFFFFFFF8);
    v5 = 1;
    while (1)
    {
      if (v2)
      {
        v13 = MEMORY[0x19A8F8520](v1, v10);
      }

      else
      {
        if (v1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v13 = *(v10 + 8 * v1 + 32);
      }

      v14 = v13;
      v15 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v16 = [v13 pairedImage];
      v4 = type metadata accessor for CNAvatarPosterPair();
      v17 = objc_allocWithZone(v4);
      v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
      v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 2;
      v18 = &v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
      *v18 = v16;
      *(v18 + 8) = xmmword_199E402D0;
      *(v18 + 3) = 0xF000000000000000;
      v19 = &v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
      *v19 = v14;
      *(v19 + 4) = 1;
      v71.receiver = v17;
      v71.super_class = v4;
      objc_msgSendSuper2(&v71, sel_init);
      MEMORY[0x19A8F7E80]();
      if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v4 = *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_199DFA0EC();
      }

      sub_199DFA10C();
      v1 = (v1 + 1);
      if (v15 == i)
      {
        v59 = v72[0];
        v4 = v63;
        v2 = v66;
        v1 = &selRef_imagesFilter;
        v5 = 0x1E74F1000;
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  v59 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v32 = [objc_allocWithZone(MEMORY[0x1E695CDA8]) v1[71]];
  v33 = [v4 *(v5 + 3304)];
  if (!v33)
  {
    sub_199DF9F8C();
    v33 = sub_199DF9F5C();
  }

  v34 = [v2 recentImagesForContactWithIdentifier_];

  v72[0] = v68;
  v57 = v34;
  v35 = [v32 performFetchRequest:v34 error:v72];
  v56 = v72[0];

  sub_199A7A02C(0, &qword_1EAF710C0);
  v5 = sub_199DFA0CC();

  v72[0] = v12;
  if (v5 >> 62)
  {
    v68 = (v5 & 0xFFFFFFFFFFFFFF8);
    v36 = sub_199DFA87C();
    v58 = v32;
    if (v36)
    {
LABEL_36:
      v3 = 0;
      v65 = MEMORY[0x1E69E7CC0];
      v2 = &off_1E74E9000;
      v55 = xmmword_199E402D0;
      v10 = v68;
LABEL_37:
      v37 = v3;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x19A8F8520](v37, v5);
        }

        else
        {
          if (v37 >= *(v10 + 16))
          {
            goto LABEL_63;
          }

          v38 = *(v5 + 8 * v37 + 32);
        }

        v39 = v38;
        v3 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          goto LABEL_62;
        }

        v40 = [v38 pairedPoster];
        if (!v40)
        {
          goto LABEL_56;
        }

        v41 = [v39 pairedPoster];
        if (v41)
        {
          v42 = v41;
          v1 = [v41 posterData];

          v4 = sub_199DF71FC();
          v44 = v43;

          v45 = v44 >> 62;
          if ((v44 >> 62) > 1)
          {
            if (v45 != 2)
            {
              sub_199A9EF34(v4, v44);
LABEL_56:
              v48 = sub_199B44AA4();
              v49 = type metadata accessor for CNAvatarPosterPair();
              v50 = objc_allocWithZone(v49);
              v50[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
              v50[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 2;
              v51 = &v50[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
              *v51 = v39;
              *(v51 + 8) = xmmword_199E402D0;
              *(v51 + 3) = 0xF000000000000000;
              v52 = &v50[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
              *v52 = v48;
              *(v52 + 4) = 1;
              v70.receiver = v50;
              v70.super_class = v49;
              objc_msgSendSuper2(&v70, sel_init);
              MEMORY[0x19A8F7E80]();
              if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_199DFA0EC();
                v10 = v68;
              }

              sub_199DFA10C();
              v65 = v72[0];
              if (v3 != v36)
              {
                goto LABEL_37;
              }

              goto LABEL_69;
            }

            v1 = *(v4 + 16);
            v46 = *(v4 + 24);
            sub_199A9EF34(v4, v44);
          }

          else
          {
            if (!v45)
            {
              sub_199A9EF34(v4, v44);
              if ((v44 & 0xFF000000000000) == 0)
              {
                goto LABEL_56;
              }

              goto LABEL_39;
            }

            sub_199A9EF34(v4, v44);
            v1 = v4;
            v46 = v4 >> 32;
          }

          v47 = v1 == v46;
          v10 = v68;
          if (v47)
          {
            goto LABEL_56;
          }
        }

LABEL_39:

        v37 = (v37 + 1);
        if (v3 == v36)
        {
          goto LABEL_69;
        }
      }
    }
  }

  else
  {
    v68 = (v5 & 0xFFFFFFFFFFFFFF8);
    v36 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = v32;
    if (v36)
    {
      goto LABEL_36;
    }
  }

  v65 = MEMORY[0x1E69E7CC0];
LABEL_69:

  v72[0] = v59;
  sub_199B438B0(v65, sub_199B48AC4);

  return v72[0];
}

id sub_199B4744C()
{
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF722C();
  v6 = objc_allocWithZone(MEMORY[0x1E695CD88]);
  v7 = sub_199DF721C();
  v8 = [v6 initWithImageData:0 cropRect:v7 lastUsedDate:{0.0, 0.0, 0.0, 0.0}];

  (*(v2 + 8))(v5, v1);
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode) == 1)
  {
    v9 = sub_199B45958();
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for CNAvatarPosterPair();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
  v11[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 3;
  v12 = &v11[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  *v12 = v8;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0xF000000000000000;
  v13 = &v11[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  *v13 = v9;
  *(v13 + 4) = 0;
  v15.receiver = v11;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t type metadata accessor for CNAvatarPosterPairCollectionViewModel()
{
  result = qword_1EAF754F0;
  if (!qword_1EAF754F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199B47758()
{
  sub_199B47830();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_199B47830()
{
  if (!qword_1EAF75500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75CA0);
    v0 = sub_199DF843C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF75500);
    }
  }
}

uint64_t sub_199B47894@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNAvatarPosterPairCollectionViewModel();
  result = sub_199DF83BC();
  *a1 = result;
  return result;
}

uint64_t sub_199B478D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    sub_199DFAA9C();
    v9 = a2;
    sub_199DFA4FC();
  }

  else
  {
    sub_199DFAA9C();
  }

  sub_199DFAA9C();
  if (a5 >> 60 == 15)
  {
    return sub_199DFAA9C();
  }

  sub_199DFAA9C();

  return MEMORY[0x1EEDC45B0](a1, a4, a5);
}

void *sub_199B479A8@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    v4 = [result imageData];
    v5 = sub_199DF71FC();
    v7 = v6;

    v8 = sub_199DF71EC();
    v10 = v9;
    result = sub_199A9EF34(v5, v7);
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t sub_199B47A3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_199DFAA7C();
  sub_199B478D4(v6, v1, v2, v4, v3);
  return sub_199DFAABC();
}

uint64_t sub_199B47AB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_199DFAA7C();
  sub_199B478D4(v6, v1, v2, v4, v3);
  return sub_199DFAABC();
}

void sub_199B47B34(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*v1 identifier];
    v4 = sub_199DF9F8C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_199B47B9C()
{
  v1 = *v0;
  sub_199DFAA7C();
  sub_199DFAA9C();
  if (v1)
  {
    v2 = v1;
    sub_199DFA4FC();
  }

  sub_199DFAA9C();
  sub_199DFAA9C();
  return sub_199DFAABC();
}

uint64_t sub_199B47C30()
{
  v1 = *v0;
  if (*v0)
  {
    sub_199DFAA9C();
    v2 = v1;
    sub_199DFA4FC();
  }

  else
  {
    sub_199DFAA9C();
  }

  sub_199DFAA9C();
  return sub_199DFAA9C();
}

uint64_t sub_199B47CB4()
{
  v1 = *v0;
  sub_199DFAA7C();
  sub_199DFAA9C();
  if (v1)
  {
    v2 = v1;
    sub_199DFA4FC();
  }

  sub_199DFAA9C();
  sub_199DFAA9C();
  return sub_199DFAABC();
}

void *sub_199B47D44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_199B48DF0(*a1, v2 | *(a1 + 8), *a2, v3 | *(a2 + 8));
}

id sub_199B47DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_199B47E94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_199B47EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_199B47F98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_199B47FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CNAvatarPosterPairCollectionViewModel.LoadingMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CNAvatarPosterPairCollectionViewModel.LoadingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_199B481C8()
{
  result = qword_1EAF75538;
  if (!qword_1EAF75538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75538);
  }

  return result;
}

unint64_t sub_199B48220()
{
  result = qword_1EAF75540;
  if (!qword_1EAF75540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75540);
  }

  return result;
}

unint64_t sub_199B48278()
{
  result = qword_1EAF75548;
  if (!qword_1EAF75548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75548);
  }

  return result;
}

unint64_t sub_199B482D0()
{
  result = qword_1EAF75550;
  if (!qword_1EAF75550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75550);
  }

  return result;
}

uint64_t sub_199B48324@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_199DF6F2C();
    if (v10)
    {
      v11 = sub_199DF6F4C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_199DF6F3C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_199DF6F2C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_199DF6F4C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_199DF6F3C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_199B48554(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_199B48EB8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_199A9EF34(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_199B48324(v13, a3, a4, &v12);
  v10 = v4;
  sub_199A9EF34(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_199B486E4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_199DFA87C();
LABEL_9:
  result = sub_199DFA75C();
  *v1 = result;
  return result;
}

uint64_t sub_199B48784(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_199DFA87C();
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
      result = sub_199DFA87C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_199B49D9C(&qword_1EAF755B0, &qword_1EAF755A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF755A8);
            v9 = sub_199AA05F4(v13, i, a3);
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
        sub_199A7A02C(0, &qword_1EAF71030);
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

uint64_t sub_199B48924(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_199DFA87C();
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
      result = sub_199DFA87C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_199B49D9C(&unk_1EAF75598, &qword_1EAF75590);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75590);
            v9 = sub_199AA05F4(v13, i, a3);
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
        sub_199A7A02C(0, &qword_1EAF710C0);
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

uint64_t sub_199B48AC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_199DFA87C();
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
      result = sub_199DFA87C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_199B49D9C(&qword_1EAF75568, &qword_1EAF75CA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CA0);
            v9 = sub_199AA07DC(v13, i, a3);
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
        type metadata accessor for CNAvatarPosterPair();
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

uint64_t sub_199B48C50(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_199DFA87C();
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
      result = sub_199DFA87C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_199B49D9C(&qword_1EAF755B8, &qword_1EAF73560);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73560);
            v9 = sub_199AA05F4(v13, i, a3);
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
        sub_199A7A02C(0, &qword_1ED615BF0);
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

void *sub_199B48DF0(void *result, int a2, void *a3, int a4)
{
  if (!result)
  {
    if (a3 || ((a2 ^ a4) & 1) != 0)
    {
      return result;
    }

    return (((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8));
  }

  if (!a3)
  {
    return 0;
  }

  v5 = result;
  v6 = a2;
  v7 = a4;
  sub_199A7A02C(0, &unk_1EAF75558);
  v8 = a3;
  v9 = v5;
  LOBYTE(v5) = sub_199DFA4EC();

  result = 0;
  if (v5)
  {
    LOWORD(a4) = v7;
    LOWORD(a2) = v6;
    if (((v6 ^ v7) & 1) == 0)
    {
      return (((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8));
    }
  }

  return result;
}

uint64_t sub_199B48EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_199DF6F2C();
  v11 = result;
  if (result)
  {
    result = sub_199DF6F4C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_199DF6F3C();
  sub_199B48324(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_199B48F70(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_199AA7630(a3, a4);
          return sub_199B48554(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_199B490D8(_BOOL8 result, int a2, uint64_t a3, unint64_t a4, void *a5, int a6, uint64_t a7, unint64_t a8)
{
  if (result)
  {
    if (!a5)
    {
      return 0;
    }

    v13 = result;
    sub_199A7A02C(0, &qword_1EAF710C0);
    v16 = a5;
    v17 = v13;
    v18 = sub_199DFA4EC();

    result = 0;
    if (v18 & 1) == 0 || ((a2 ^ a6))
    {
      return result;
    }

LABEL_8:
    if (a4 >> 60 == 15)
    {
      if (a8 >> 60 == 15)
      {
        sub_199AFF43C(a3, a4);
        sub_199AFF43C(a7, a8);
        sub_199A9EF20(a3, a4);
        return 1;
      }
    }

    else if (a8 >> 60 != 15)
    {
      sub_199AFF43C(a3, a4);
      sub_199AFF43C(a7, a8);
      v19 = sub_199B48F70(a3, a4, a7, a8);
      sub_199A9EF20(a7, a8);
      sub_199A9EF20(a3, a4);
      return (v19 & 1) != 0;
    }

    sub_199AFF43C(a3, a4);
    sub_199AFF43C(a7, a8);
    sub_199A9EF20(a3, a4);
    sub_199A9EF20(a7, a8);
    return 0;
  }

  if (!a5 && ((a2 ^ a6) & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

void *sub_199B49278(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result != 1)
  {

    return sub_199A9EF20(a3, a4);
  }

  return result;
}

void *sub_199B492C4(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result != 1)
  {
    v7 = result;

    return sub_199AFF43C(a3, a4);
  }

  return result;
}

uint64_t sub_199B49310(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_199DFA87C();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_199B486E4(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_199A7A02C(0, &qword_1EAF710C0);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_199B49424(unint64_t a1, Class *a2, uint64_t a3, SEL *a4)
{
  v5 = a3;
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v27 = a2;
    v28 = a4;
    v29 = sub_199DFA87C();
    a4 = v28;
    a2 = v27;
    v5 = a3;
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_21:
    sub_199DFA30C();
    v30 = CNUILogPosters();
    sub_199DF7FEC();

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_3:
  v34 = a4;
  v8 = [objc_allocWithZone(*a2) init];
  if (v7)
  {
    v9 = sub_199DFA87C();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v35[0] = MEMORY[0x1E69E7CC0];
    sub_199A9C55C(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      __break(1u);
    }

    v31 = v5;
    v32 = v8;
    v33 = v4;
    v10 = 0;
    v11 = v35[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x19A8F8520](v10, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 identifier];
      v15 = sub_199DF9F8C();
      v17 = v16;

      v35[0] = v11;
      v19 = v11[2];
      v18 = v11[3];
      if (v19 >= v18 >> 1)
      {
        sub_199A9C55C((v18 > 1), v19 + 1, 1);
        v11 = v35[0];
      }

      ++v10;
      v11[2] = v19 + 1;
      v20 = &v11[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
    }

    while (v9 != v10);
    v8 = v32;
  }

  v21 = objc_opt_self();
  v22 = sub_199DFA0BC();

  v23 = [v21 *v34];

  v35[0] = 0;
  if ([v8 performDeleteRequest:v23 error:v35])
  {
    v24 = v35[0];
  }

  else
  {
    v25 = v35[0];
    sub_199DF717C();

    swift_willThrow();
  }
}

void sub_199B496F0(char *a1)
{
  v46 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar;
  v4 = *&a1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  if (v4 >= 2)
  {
    v5 = v1;
    v6 = v4;
    MEMORY[0x19A8F7E80]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_199DFA0EC();
    }

    sub_199DFA10C();
    v7 = [v6 pairedPoster];
    if (v7)
    {
      if (*&a1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster] < 2uLL)
      {
        v43 = v7;
        v8 = sub_199DFA2FC();
        v9 = CNUILogPosters();
        if (os_log_type_enabled(v9, v8))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 138412290;
          *(v10 + 4) = a1;
          *v11 = a1;
          v12 = a1;
          _os_log_impl(&dword_199A75000, v9, v8, "There was no poster in %@, but the avatar had a poster. Unexpected. Marking it for deletion.", v10, 0xCu);
          sub_199A79A04(v11, &unk_1EAF73A90);
          v13 = v11;
          v5 = v1;
          MEMORY[0x19A8FA1A0](v13, -1, -1);
          MEMORY[0x19A8FA1A0](v10, -1, -1);
        }

        v14 = v43;
        MEMORY[0x19A8F7E80]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_199DFA0EC();
        }

        sub_199DFA10C();

        goto LABEL_13;
      }
    }

LABEL_13:
    v1 = v5;
  }

  v15 = *&a1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  if (v15 >= 2)
  {
    sub_199AA2284(v15);
    v16 = v15;
    MEMORY[0x19A8F7E80]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_199DFA0EC();
    }

    sub_199DFA10C();
    v17 = [v16 pairedImage];
    if (v17)
    {
      v18 = v17;
      if (*&a1[v3] >= 2uLL)
      {
        sub_199AA2294(v15);
      }

      else
      {
        v19 = sub_199DFA2FC();
        v20 = CNUILogPosters();
        if (os_log_type_enabled(v20, v19))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = a1;
          *v22 = a1;
          v23 = a1;
          _os_log_impl(&dword_199A75000, v20, v19, "There was no avatar in %@, but the poster had an avatar. Unexpected. Marking it for deletion.", v21, 0xCu);
          sub_199A79A04(v22, &unk_1EAF73A90);
          MEMORY[0x19A8FA1A0](v22, -1, -1);
          MEMORY[0x19A8FA1A0](v21, -1, -1);
        }

        v24 = v18;
        MEMORY[0x19A8F7E80]();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_199DFA0EC();
        }

        sub_199DFA10C();

        sub_199AA2294(v15);
      }
    }

    else
    {
      sub_199AA2294(v15);
    }
  }

  v25 = sub_199DF81AC();
  sub_199B49424(v25, 0x1E695CDA8, 0x1E695CD98, &selRef_requestToDeleteImageForIdentifiers_);
  if (v1)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v26 = sub_199DF81AC();
    sub_199B49424(v26, 0x1E695CE00, 0x1E695CDF0, &selRef_requestToDeletePosterForIdentifiers_);

    v27 = CNUILogPosters();
    v28 = sub_199DFA33C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 136315394;
      v31 = sub_199A7A02C(0, &qword_1EAF710C0);
      v32 = sub_199DF81AC();
      v33 = MEMORY[0x19A8F7EB0](v32, v31);
      v35 = v34;

      v36 = sub_199A9BE90(v33, v35, &v44);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2080;
      v37 = sub_199A7A02C(0, &unk_1EAF75558);
      v38 = sub_199DF81AC();
      v39 = MEMORY[0x19A8F7EB0](v38, v37);
      v41 = v40;

      v42 = sub_199A9BE90(v39, v41, &v44);

      *(v29 + 14) = v42;
      _os_log_impl(&dword_199A75000, v27, v28, "Removed avatars: %s and posters: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8FA1A0](v30, -1, -1);
      MEMORY[0x19A8FA1A0](v29, -1, -1);
    }
  }
}

uint64_t sub_199B49D9C(unint64_t *a1, uint64_t *a2)
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

uint64_t CNContactHeaderQuickActionsGroupAction.init(actionBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CNContactHeaderQuickActionsModel.CustomAction.init(type:handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void CNContactHeaderQuickActionsModel.init(contacts:actionTypes:groupActionsPerType:container:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  *(v5 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = sub_199B4B498(MEMORY[0x1E69E7CC0]);
  v11 = sub_199B4B5B4(v10);
  *(v5 + 24) = a3;
  *(v5 + 32) = v11;
  sub_199DF81AC();

  v12 = objc_allocWithZone(CNContactQuickActionsController);
  swift_unknownObjectRetain();
  v13 = sub_199DFA0BC();
  v14 = [v12 initWithActionTypes:v13 contactQuickActionViewContainer:a4];

  swift_unknownObjectRelease();
  *(v5 + 40) = v14;
  v15 = type metadata accessor for CNContactHeaderQuickActionsControllerObserver();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_quickActionsController] = v14;
  *&v16[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_container] = a4;
  *&v16[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_actionTypes] = a2;
  v33.receiver = v16;
  v33.super_class = v15;
  swift_unknownObjectRetain();
  v17 = v14;
  sub_199DF81AC();
  v18 = objc_msgSendSuper2(&v33, sel_init);
  *(v5 + 48) = v18;
  [*(v5 + 40) setModelTrackingDelegate_];
  if (a1 >> 62)
  {
    if (sub_199DFA87C() == 1)
    {
      if (!sub_199DFA87C())
      {
        v20 = 0;
        goto LABEL_7;
      }

LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x19A8F8520](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

        v19 = *(a1 + 32);
      }

      v20 = v19;
LABEL_7:
      v21 = *(v5 + 16);
      *(v5 + 16) = v20;
      v22 = v20;

      if (v20)
      {
        v23 = *(v5 + 40);

        [v23 setContact_];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_21;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_3;
  }

  v24 = *(a2 + 16);
  if (v24)
  {
    v32 = a2;
    v25 = (a2 + 40);
    do
    {
      v29 = *(v25 - 1);
      v28 = *v25;
      sub_199DF81AC();
      v30 = sub_199DF9F5C();
      v31 = [a4 viewForActionType_];

      if (*(a3 + 16))
      {
        sub_199AEF9E8(v29, v28);
        v27 = v26;
      }

      else
      {

        v27 = 0;
      }

      [v31 setEnabled_];

      v25 += 2;
      --v24;
    }

    while (v24);
  }

  swift_unknownObjectRelease();
}

uint64_t CNContactHeaderQuickActionsModel.__allocating_init(contact:actionTypes:customActions:container:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_199B4B7DC(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t CNContactHeaderQuickActionsModel.init(contact:actionTypes:customActions:container:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_199B4B7DC(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

void sub_199B4A268(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    swift_beginAccess();
    v5 = *(v2 + 32);
    if (*(v5 + 16))
    {
      sub_199DF81AC();
      v6 = sub_199AEF9E8(a1, a2);
      if (v7)
      {
        v8 = *(*(v5 + 56) + 32 * v6 + 16);
        sub_199DF81AC();
        sub_199A9A57C(v8);

        if (v8)
        {
          v8(v9);

          v10 = v8;
        }

        else
        {

          v10 = 0;
        }

        sub_199A9A5FC(v10);
        return;
      }
    }

    v16 = *(v2 + 40);
    v17 = sub_199DF9F5C();
    [v16 executeTapBehaviorWithoutDisambiguationForActionType_];

    return;
  }

  v11 = *(v2 + 24);
  if (*(v11 + 16))
  {
    sub_199DF81AC();
    v12 = sub_199AEF9E8(a1, a2);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 16 * v12);
      swift_retain_n();

      v14(v15);
    }

    else
    {
    }
  }
}

uint64_t sub_199B4A420()
{
  v1 = *(v0 + 40);
  v2 = sub_199DF9F5C();
  v3 = [v1 disambiguationMenuForActionType_];

  sub_199A7A02C(0, &unk_1EAF755D8);
  v4 = sub_199DFA0CC();

  return v4;
}

id *CNContactHeaderQuickActionsModel.deinit()
{

  return v0;
}

uint64_t CNContactHeaderQuickActionsModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_199B4A558()
{
  v25 = *(*(v0 + OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_actionTypes) + 16);
  if (!v25)
  {
    return;
  }

  v28 = OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_quickActionsController;
  v24 = OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_container;
  v1 = sub_199DF81AC();
  v2 = 0;
  v23 = v1;
  do
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v27 = v2;
    v3 = *(v31 + v24);
    sub_199DF81AC();
    swift_unknownObjectRetain();
    v4 = sub_199DF9F5C();
    v5 = [v3 viewForActionType_];

    swift_unknownObjectRelease();
    v26 = v5;
    v6 = [v5 subviews];
    sub_199A7A02C(0, &unk_1EAF75660);
    v7 = sub_199DFA0CC();

    if (v7 >> 62)
    {
      v8 = sub_199DFA87C();
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }

    v9 = 0;
    v32 = v7 & 0xC000000000000001;
    v29 = v7;
    v30 = v8;
    do
    {
      if (v32)
      {
        v10 = MEMORY[0x19A8F8520](v9, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v31 + v28);
        v15 = v11;
        v16 = v14;
        v17 = sub_199DF9F5C();
        LODWORD(v14) = [v16 hasDefaultActionForActionType_];

        [v13 setShowsMenuAsPrimaryAction_];
        v7 = v29;
        v18 = *(v31 + v28);
        v19 = sub_199DF9F5C();
        v20 = [v18 disambiguationMenuForActionType_];

        sub_199A7A02C(0, &unk_1EAF755D8);
        v21 = sub_199DFA0CC();

        sub_199A7A02C(0, &unk_1EAF75C60);
        v22 = v21;
        v8 = v30;
        v11 = sub_199DFA46C();
        [v13 setMenu_];
      }

      ++v9;
    }

    while (v8 != v9);
LABEL_3:
    v2 = v27 + 1;

    v1 = v23;
  }

  while (v27 + 1 != v25);
}

id sub_199B4A974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactHeaderQuickActionsControllerObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_199B4AA08(uint64_t a1)
{
  v2 = sub_199DFA6AC();

  return sub_199B4ABD0(a1, v2);
}

unint64_t sub_199B4AA4C(unsigned __int8 a1)
{
  v2 = sub_199AA9A60();

  return sub_199B4AC98(a1, v2);
}

unint64_t sub_199B4AA90(uint64_t a1)
{
  sub_199DF9F8C();
  sub_199DFAA7C();
  sub_199DF9FEC();
  v2 = sub_199DFAABC();

  return sub_199B4AF50(a1, v2);
}

unint64_t sub_199B4AB20(uint64_t a1)
{
  v2 = sub_199DFAA6C();

  return sub_199B4B054(a1, v2);
}

unint64_t sub_199B4AB64(unsigned __int8 a1)
{
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](a1);
  v2 = sub_199DFAABC();

  return sub_199B4B0C0(a1, v2);
}

unint64_t sub_199B4ABD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_199B4BC40(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x19A8F8490](v9, a1);
      sub_199B4BC9C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_199B4AC98(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6464416C69616D65;
          }

          else
          {
            v8 = 0x64416C6174736F70;
          }

          if (v7 == 1)
          {
            v9 = 0xEC00000073736572;
          }

          else
          {
            v9 = 0xED00007373657264;
          }
        }

        else
        {
          v8 = 0x6D754E656E6F6870;
          v9 = 0xEB00000000726562;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE400000000000000;
          v8 = 1702129518;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x6D6F74737563;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x7961646874726962;
        }

        else
        {
          v8 = 0x52746361746E6F63;
        }

        if (v7 == 3)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xEF6E6F6974616C65;
        }
      }

      v10 = 0x6D6F74737563;
      if (v6 == 5)
      {
        v10 = 1702129518;
      }

      v11 = 0xE400000000000000;
      if (v6 != 5)
      {
        v11 = 0xE600000000000000;
      }

      v12 = 0x7961646874726962;
      if (v6 != 3)
      {
        v12 = 0x52746361746E6F63;
      }

      v13 = 0xEF6E6F6974616C65;
      if (v6 == 3)
      {
        v13 = 0xE800000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6464416C69616D65;
      if (v6 != 1)
      {
        v14 = 0x64416C6174736F70;
      }

      v15 = 0xED00007373657264;
      if (v6 == 1)
      {
        v15 = 0xEC00000073736572;
      }

      if (!v6)
      {
        v14 = 0x6D754E656E6F6870;
        v15 = 0xEB00000000726562;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_199DFA99C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_199B4AF50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_199DF9F8C();
      v8 = v7;
      if (v6 == sub_199DF9F8C() && v8 == v9)
      {
        break;
      }

      v11 = sub_199DFA99C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_199B4B054(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_199B4B0C0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_199B4B130(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75648);
    v3 = sub_199DFA8BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_199AAD408(v4, v13, &qword_1EAF75650);
      result = sub_199B4AA08(v13);
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
      result = sub_199B429C0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_199B4B26C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75688);
    v3 = sub_199DFA8BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_199DF81AC();
      result = sub_199AEF9E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_199B4B370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75670);
    v3 = sub_199DFA8BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_199AAD408(v4, &v11, &qword_1EAF72C68);
      v5 = v11;
      result = sub_199B4AA90(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_199B429C0(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_199B4B498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75698);
    v3 = sub_199DFA8BC();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;
      sub_199DF81AC();

      result = sub_199AEF9E8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_199B4B5B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75690);
    v3 = sub_199DFA8BC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      sub_199DF81AC();
      sub_199DF81AC();
      sub_199A9A57C(v9);
      result = sub_199AEF9E8(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_199B4B6FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75658);
    v3 = sub_199DFA8BC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_199B4AB20(v5);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_199B4B7DC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = sub_199B4B498(MEMORY[0x1E69E7CC0]);
  *(v4 + 32) = sub_199B4B5B4(v9);
  v10 = (v4 + 32);
  v11 = *(v4 + 16);
  v48 = v4;
  *(v4 + 16) = a1;
  v12 = a1;

  v13 = objc_allocWithZone(CNContactQuickActionsController);
  swift_unknownObjectRetain();
  v14 = sub_199DFA0BC();
  v15 = [v13 initWithActionTypes:v14 contactQuickActionViewContainer:a4];

  swift_unknownObjectRelease();
  *(v4 + 40) = v15;
  [v15 setContact_];
  v16 = *(v4 + 40);
  v17 = type metadata accessor for CNContactHeaderQuickActionsControllerObserver();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_quickActionsController] = v16;
  *&v18[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_container] = a4;
  *&v18[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_actionTypes] = a2;
  v51.receiver = v18;
  v51.super_class = v17;
  v49 = a4;
  swift_unknownObjectRetain();
  v19 = v16;
  v20 = objc_msgSendSuper2(&v51, sel_init);
  *(v4 + 48) = v20;
  [*(v4 + 40) setModelTrackingDelegate_];
  v21 = *(a3 + 16);
  if (!v21)
  {
    return v48;
  }

  v22 = (a3 + 56);
  while (1)
  {
    v28 = *(v22 - 3);
    v27 = *(v22 - 2);
    v29 = *(v22 - 1);
    v30 = *v22;
    swift_beginAccess();
    sub_199DF81AC();
    sub_199A9A57C(v29);
    sub_199DF81AC();
    sub_199A9A57C(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v10;
    v50 = *v10;
    *v10 = 0x8000000000000000;
    v33 = sub_199AEF9E8(v28, v27);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      break;
    }

    v39 = v34;
    if (v32[3] < v38)
    {
      sub_199B74CB0(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_199AEF9E8(v28, v27);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v41 = v50;
      if (v39)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v46 = v33;
    sub_199B75960();
    v33 = v46;
    v41 = v50;
    if (v39)
    {
LABEL_3:
      v23 = (v41[7] + 32 * v33);
      v24 = v23[2];
      *v23 = v28;
      v23[1] = v27;
      v23[2] = v29;
      v23[3] = v30;

      sub_199A9A5FC(v24);
      goto LABEL_4;
    }

LABEL_11:
    v41[(v33 >> 6) + 8] |= 1 << v33;
    v42 = (v41[6] + 16 * v33);
    *v42 = v28;
    v42[1] = v27;
    v43 = (v41[7] + 32 * v33);
    *v43 = v28;
    v43[1] = v27;
    v43[2] = v29;
    v43[3] = v30;
    v44 = v41[2];
    v37 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v37)
    {
      goto LABEL_17;
    }

    v41[2] = v45;
    sub_199DF81AC();
LABEL_4:
    v22 += 4;
    *v10 = v41;
    swift_endAccess();
    v25 = sub_199DF9F5C();
    v26 = [v49 viewForActionType_];

    [v26 setEnabled_];

    sub_199A9A5FC(v29);
    if (!--v21)
    {
      return v48;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_199DFA9FC();
  __break(1u);
  return result;
}

uint64_t sub_199B4BCF4()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF870E0);
  __swift_project_value_buffer(v0, qword_1EAF870E0);
  return sub_199DF803C();
}

id sub_199B4BDBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicateContactCardView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199B4BE34(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() viewControllerForContact_];
  [v2 setShowContactPhotoPosterCell_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75778);
  sub_199DF911C();
  [v2 setDelegate_];

  [v2 setAllowsEditing_];
  [v2 setAllowsActions_];
  [v2 setForcesTransparentBackground_];
  return v2;
}

id sub_199B4BF18@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for DuplicateContactCardView.Coordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV10ContactsUI24DuplicateContactCardView11Coordinator_parent] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v3;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a1 = result;
  return result;
}

void sub_199B4C034()
{
  sub_199B4C060();
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199B4C060()
{
  result = qword_1EAF75780;
  if (!qword_1EAF75780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75780);
  }

  return result;
}

id sub_199B4C0B4(id a1, id a2, char a3)
{
  v4 = a1;
  v48[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
LABEL_11:
    v37 = [v4 copyWithDistinctIdentifier];
    v38 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

LABEL_12:
    v39 = a2;
    [v37 mutableCopy];
    sub_199DFA66C();
    swift_unknownObjectRelease();
    sub_199B4C724();
    swift_dynamicCast();
    v40 = v48[0];
    [v39 updateImageForContact_];

    v4 = v39;
    v37 = v40;
    goto LABEL_13;
  }

  v5 = a1;
  v6 = [v5 identifier];
  v7 = sub_199DF9F8C();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_11;
  }

  v44 = a2;
  v11 = [objc_opt_self() descriptorForRequiredKeys];
  v46 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_199E37DF0;
  *(v12 + 32) = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v14 = sub_199DFA0BC();

  a2 = [v13 initWithKeysToFetch_];

  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_199E37D40;
  v17 = [v5 identifier];

  v18 = sub_199DF9F8C();
  v20 = v19;

  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = sub_199DFA0BC();

  v22 = [v15 predicateForContactsWithIdentifiers_];

  [a2 setPredicate_];
  [a2 setUnifyResults_];
  v48[0] = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = v48;
  v24 = swift_allocObject();
  v24[2] = sub_199B4C770;
  v24[3] = v23;
  aBlock[4] = sub_199B4C7AC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199B7EFB4;
  aBlock[3] = &block_descriptor_14;
  v25 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v45 = a2;
  v26 = [v46 enumerateContactsWithFetchRequest:a2 error:aBlock usingBlock:v25];
  _Block_release(v25);
  v27 = aBlock[0];
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_8;
  }

  a2 = v44;
  if (v26)
  {
    goto LABEL_15;
  }

  v11 = sub_199DF717C();

  swift_willThrow();
  v28 = v48[0];
  v48[0] = 0;

  if (qword_1EAF71F10 != -1)
  {
    goto LABEL_20;
  }

LABEL_8:
  v29 = sub_199DF804C();
  __swift_project_value_buffer(v29, qword_1EAF870E0);
  v30 = v11;
  v31 = sub_199DF802C();
  v32 = sub_199DFA31C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v33 = 136315138;
    swift_getErrorValue();
    v34 = sub_199DFAA0C();
    v36 = sub_199A9BE90(v34, v35, aBlock);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_199A75000, v31, v32, "Failed to refetch contact for duplicate contact card. %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x19A8FA1A0](v43, -1, -1);
    MEMORY[0x19A8FA1A0](v33, -1, -1);
  }

  else
  {
  }

LABEL_15:
  v42 = v5;
  if (v48[0])
  {
    v42 = v48[0];
  }

  v37 = [v42 copyWithDistinctIdentifier];
  swift_unknownObjectRelease();

  v38 = sub_199B4C770;
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_13:

  sub_199A9A5FC(v38);
  return v37;
}

unint64_t sub_199B4C724()
{
  result = qword_1EAF710A0;
  if (!qword_1EAF710A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF710A0);
  }

  return result;
}

void sub_199B4C770(void *a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  *v4 = a1;
  v6 = a1;

  *a2 = 1;
}

void sub_199B4C804()
{
  sub_199B4C8B0();
  if (v0 <= 0x3F)
  {
    sub_199B4C944();
    if (v1 <= 0x3F)
    {
      sub_199DF884C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_199B4C8B0()
{
  if (!qword_1EAF71360)
  {
    type metadata accessor for CNWallpaperSuggestionsGalleryViewModel();
    sub_199B4D930(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel);
    v0 = sub_199DF87DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF71360);
    }
  }
}

void sub_199B4C944()
{
  if (!qword_1EAF714B8)
  {
    v0 = sub_199DFA63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF714B8);
    }
  }
}

unint64_t sub_199B4C994()
{
  result = qword_1EAF75788;
  if (!qword_1EAF75788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75788);
  }

  return result;
}

double sub_199B4C9E8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_199DF86EC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v23[-v13];
  if (a2)
  {
    v15 = 10.0;
  }

  else
  {
    v15 = *&a1;
  }

  type metadata accessor for CNWallpaperSuggestionsGalleryLayout(0);
  if (sub_199DF883C())
  {
    v16 = [objc_opt_self() mainScreen];
    [v16 bounds];

    if (*v3 == 1)
    {
      sub_199DF876C();
      sub_199DF893C();
      v23[8] = v17 & 1;
      v23[0] = v18 & 1;
      sub_199DF86CC();
      (*(v7 + 8))(v14, v6);
    }

    sub_199DF876C();
    sub_199DF893C();
    v23[24] = v19 & 1;
    v23[16] = v20 & 1;
    sub_199DF86CC();
    v21 = (*(v7 + 8))(v11, v6);
    return CGSizeMake(v21);
  }

  return v15;
}

uint64_t sub_199B4CC4C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v80 = a4;
  v79[1] = a3;
  v90 = a2;
  v87 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75790);
  MEMORY[0x1EEE9AC00](v92, v15);
  v85 = v79 - v16;
  v17 = sub_199DF86EC();
  v18 = *(v17 - 8);
  v20 = (MEMORY[0x1EEE9AC00])(v17, v19);
  v93 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v84 = v79 - v23;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75798);
  v83 = *(v86 - 8);
  v25 = (MEMORY[0x1EEE9AC00])(v86, v24);
  v89 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (MEMORY[0x1EEE9AC00])(v25, v27);
  v30 = v79 - v29;
  v32 = (MEMORY[0x1EEE9AC00])(v28, v31);
  v34 = v79 - v33;
  v36 = (MEMORY[0x1EEE9AC00])(v32, v35);
  v96 = v79 - v37;
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = v79 - v39;
  v107.origin.x = a6;
  v107.origin.y = a7;
  v107.size.width = a8;
  v107.size.height = a9;
  CGRectGetMidX(v107);
  v94 = v9;
  v88 = *v9;
  if (v88 == 1)
  {
    v41 = a5;
    sub_199DF876C();
    v42 = *(v18 + 56);
    v42(v40, 0, 1, v17);
  }

  else
  {
    v42 = *(v18 + 56);
    v41 = a5;
    v42(v40, 1, 1, v17);
  }

  v43 = v40;
  v91 = v40;
  v44 = v96;
  v82 = v41;
  sub_199DF876C();
  v42(v44, 0, 1, v17);
  sub_199B4D978(v43, v34);
  v45 = *(v18 + 48);
  v95 = v18 + 48;
  v46 = v45;
  v47 = v18;
  if (v45(v34, 1, v17) == 1)
  {
    sub_199A79A04(v34, &qword_1EAF75798);
  }

  else
  {
    sub_199DF893C();
    v98 = v48 & 1;
    v97 = v49 & 1;
    sub_199DF86CC();
    (*(v18 + 8))(v34, v17);
  }

  v50 = v85;
  v51 = v84;
  type metadata accessor for CNWallpaperSuggestionsGalleryLayout(0);
  if ((sub_199DF883C() & 1) == 0)
  {
    sub_199B4D978(v96, v30);
    if (v46(v30, 1, v17) == 1)
    {
      sub_199A79A04(v30, &qword_1EAF75798);
    }

    else
    {
      sub_199DF893C();
      v100 = v52 & 1;
      v99 = v53 & 1;
      sub_199DF86CC();
      (*(v18 + 8))(v30, v17);
    }
  }

  sub_199DF876C();
  if (v94[40])
  {
    if (v80)
    {
      v108.origin.x = a6;
      v108.origin.y = a7;
      v108.size.width = a8;
      v108.size.height = a9;
      CGRectGetHeight(v108);
    }

    v54 = v94;
  }

  else
  {
    v54 = v94;
  }

  if (sub_199DF883C())
  {
    v55 = [objc_opt_self() mainScreen];
    [v55 bounds];
  }

  v56 = *(*(v54 + 2) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat) == 1;
  v81 = a6;
  if (v56)
  {
    v57 = a7;
    v58 = objc_opt_self();
    v59 = [v58 mainScreen];
    [v59 bounds];

    v60 = [v58 mainScreen];
    [v60 bounds];

    v61 = a8;
    if (v54[24] != 1)
    {
      v62 = a9;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v90)
  {
    v109.origin.x = a6;
    v109.origin.y = a7;
    v109.size.width = a8;
    v109.size.height = a9;
    CGRectGetWidth(v109);
  }

  v57 = a7;
  v63 = [objc_opt_self() currentDevice];
  [v63 userInterfaceIdiom];

  v61 = a8;
  if (v54[24])
  {
LABEL_26:
    v62 = a9;
    goto LABEL_28;
  }

  v62 = a9;
LABEL_28:
  sub_199DF9C1C();
  v106 = 0;
  v105 = 0;
  sub_199DF86DC();
  v64 = *(v18 + 8);
  v64(v51, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757A0);
  v65 = *(v83 + 72);
  v66 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v67 = swift_allocObject() + v66;
  sub_199B4D978(v91, v67);
  sub_199B4D978(v96, v67 + v65);
  v94 = (v47 + 8);
  v68 = (v47 + 32);
  v69 = *(v92 + 48);
  *v50 = 0;
  sub_199B4D978(v67, v50 + v69);
  v70 = v89;
  sub_199B4D978(v50 + v69, v89);
  if (v46(v70, 1, v17) == 1)
  {
    sub_199A79A04(v70, &qword_1EAF75798);
  }

  else
  {
    (*v68)(v93, v70, v17);
    sub_199DF893C();
    v104 = v71 & 1;
    v103 = v72 & 1;
    sub_199DF86CC();
    if (v90)
    {
      v110.origin.x = v81;
      v110.origin.y = v57;
      v110.size.width = v61;
      v110.size.height = v62;
      CGRectGetWidth(v110);
    }

    sub_199DF9C1C();
    v102 = 0;
    v101 = 0;
    v73 = v93;
    sub_199DF86DC();
    v64(v73, v17);
    v70 = v89;
  }

  sub_199A79A04(v50, &qword_1EAF75790);
  v74 = *(v92 + 48);
  *v50 = 1;
  sub_199B4D978(v67 + v65, v50 + v74);
  sub_199B4D978(v50 + v74, v70);
  if (v46(v70, 1, v17) == 1)
  {
    sub_199A79A04(v70, &qword_1EAF75798);
  }

  else
  {
    (*v68)(v93, v70, v17);
    sub_199DF893C();
    v104 = v75 & 1;
    v103 = v76 & 1;
    sub_199DF86CC();
    if (v90)
    {
      v111.origin.x = v81;
      v111.origin.y = v57;
      v111.size.width = v61;
      v111.size.height = v62;
      CGRectGetWidth(v111);
    }

    sub_199DF9C1C();
    v102 = 0;
    v101 = 0;
    v77 = v93;
    sub_199DF86DC();
    v64(v77, v17);
  }

  sub_199A79A04(v50, &qword_1EAF75790);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_199A79A04(v96, &qword_1EAF75798);
  return sub_199A79A04(v91, &qword_1EAF75798);
}

uint64_t (*sub_199B4D85C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_199DF849C();
  return sub_199B4D8E4;
}

uint64_t sub_199B4D930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199B4D978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_199B4D9E8()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout(0);
  if (sub_199DF883C())
  {
    sub_199DF875C();
    sub_199B4D930(&qword_1EAF71368, MEMORY[0x1E697E3C0]);
    sub_199DFA29C();
    sub_199DFA2BC();
    if (__OFSUB__(sub_199DFA2AC(), *(v0 + *(v1 + 24))))
    {
      __break(1u);
    }

    else
    {
      v2 = [objc_opt_self() preferredFontForTextStyle_];
      [v2 lineHeight];
    }
  }
}

uint64_t sub_199B4DC18(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757A8);
  v110 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v18);
  v20 = &v97 - v19;
  v120 = sub_199DF86EC();
  v109 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v21);
  v119 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v104 = &v97 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757B0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v112 = (&v97 - v32);
  v33 = sub_199DF875C();
  v108 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v113 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757B8);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v106 = &v97 - v38;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757C0);
  MEMORY[0x1EEE9AC00](v107, v39);
  v41 = &v97 - v40;
  v42 = [objc_opt_self() currentDevice];
  v118 = COERCE_DOUBLE([v42 userInterfaceIdiom]);

  v43 = sub_199B4D930(&qword_1EAF71368, MEMORY[0x1E697E3C0]);
  sub_199DFA29C();
  sub_199DFA2BC();
  v44 = sub_199DFA2AC();
  result = type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout(0);
  v103 = *(*&v10 + *(result + 24));
  v116 = v44 - v103;
  if (__OFSUB__(v44, v103))
  {
    goto LABEL_67;
  }

  v117 = result;
  v102 = *&a1;
  v111 = v29;
  v46 = 4;
  if (*&v118 == 1)
  {
    v46 = 5;
  }

  v47 = v46;
  sub_199DFA29C();
  sub_199DFA2BC();
  v115 = v33;
  v105 = v43;
  v48 = sub_199DFA2AC();
  if (v47 >= v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = v47;
  }

  v50 = *(*&v10 + 8);
  v51 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat;
  if (*(v50 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat))
  {
    v52 = 8.0;
  }

  else
  {
    v52 = 15.0;
  }

  if (a2)
  {
    v123.origin.x = a3;
    v123.origin.y = a4;
    v123.size.width = a5;
    v123.size.height = a6;
    Width = CGRectGetWidth(v123);
  }

  else
  {
    Width = v102;
  }

  v118 = (v49 + -1.0) * v52;
  v54 = Width - v118;
  v55 = *(v117 + 20);
  result = sub_199DF883C();
  if (result)
  {
    v56 = v54;
  }

  else
  {
    v56 = v54 / v49;
  }

  if (*(v50 + v51))
  {
    v57 = 117.0;
  }

  else
  {
    result = sub_199DF883C();
    v57 = 99.0;
    if ((result & 1) == 0)
    {
      v57 = v56 + 24.0;
    }
  }

  if (v49 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
  }

  else if (v49 < 9.22337204e18)
  {
    v98 = v57;
    v97 = v52;
    v58 = a3;
    v59 = a5;
    v60 = a6;
    v61 = v49;
    v62 = 0.0;
    v63 = 0.0;
    v64 = 0.0;
    if (v103 >= 1)
    {
      v63 = v56;
      if (sub_199DF883C())
      {
        v65 = v61;
        v63 = v56 / v61 <= 132.0 ? v56 / v61 : 132.0;
        v124.origin.x = v58;
        v124.origin.y = a4;
        v124.size.width = v59;
        v124.size.height = v60;
        v66 = (CGRectGetWidth(v124) - (v63 + 15.0) * v65) * 0.5;
        v62 = v66 < 0.0 ? 0.0 : v66;
        v118 = v63 * v65 + v118 + v62;
        v125.origin.x = v58;
        v125.origin.y = a4;
        v125.size.width = v59;
        v125.size.height = v60;
        v64 = 17.0;
        if (CGRectGetWidth(v125) < v118)
        {
          v62 = 0.0;
        }
      }
    }

    v117 = v55;
    v118 = v10;
    v67 = v108;
    v68 = v106;
    v69 = v115;
    (*(v108 + 16))(v106, a9, v115);
    (*(v67 + 32))(v113, v68, v69);
    sub_199B4D930(&qword_1EAF71370, MEMORY[0x1E697E3C0]);
    sub_199DFA08C();
    *&v102 = *(v107 + 36);
    *(v41 + *&v102) = 0;
    v70 = 0;
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757C8) + 36);
    v103 = (v109 + 2);
    v71 = (v109 + 4);
    v72 = (v110 + 7);
    v110 += 6;
    v101 = v56;
    v100 = v98;
    v99 = v63;
    ++v109;
    v106 = (v61 - 1);
    v73 = __OFSUB__(v61, 1);
    LODWORD(v107) = v73;
    v74 = v97 + v56;
    v75 = v98 + 17.0;
    v98 = v97 + v98;
    v97 = v97 + v63;
    v76 = v63 + 17.0;
    v77 = 0.0;
    v78 = a4;
    while (1)
    {
      while (1)
      {
        sub_199DFA2BC();
        if (*&v113[v41] == v121[0])
        {
          v79 = 1;
          v80 = v114;
          v81 = v111;
        }

        else
        {
          v108 = v70;
          v82 = sub_199DFA2DC();
          v83 = v104;
          v84 = v120;
          (*v103)(v104);
          v82(v121, 0);
          v85 = v108;
          sub_199DFA2CC();
          v80 = v114;
          v86 = *(v114 + 48);
          *v20 = v85;
          result = (*v71)(&v20[v86], v83, v84);
          v87 = __OFADD__(v85, 1);
          v70 = v85 + 1;
          if (v87)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          *(v41 + *&v102) = v70;
          v81 = v111;
          sub_199AB7794(v20, v111, &qword_1EAF757A8);
          v79 = 0;
        }

        (*v72)(v81, v79, 1, v80);
        v88 = v81;
        v89 = v112;
        sub_199AB7794(v88, v112, &qword_1EAF757B0);
        if ((*v110)(v89, 1, v80) == 1)
        {
          return sub_199A79A04(v41, &qword_1EAF757C0);
        }

        v90 = v20;
        v91 = *v89;
        (*v71)(v119, v89 + *(v80 + 48), v120);
        if ((sub_199DF883C() & 1) != 0 && v91 >= v116 && v91 == v116)
        {
          a4 = v64 + v78;
          v77 = v62;
          v78 = v64 + v78;
        }

        sub_199DF9C1C();
        LOBYTE(v121[0]) = 0;
        v122 = 0;
        v92 = v119;
        sub_199DF86DC();
        v93 = sub_199DF883C();
        result = (*v109)(v92, v120);
        if (v93)
        {
          break;
        }

        if (v107)
        {
          goto LABEL_64;
        }

        v96 = v75 + a4;
        if (v91 == v106)
        {
          a4 = v75 + a4;
          v77 = 0.0;
        }

        else
        {
          v77 = v74 + v77;
        }

        if (v91 == v106)
        {
          v78 = v96;
        }

LABEL_37:
        v20 = v90;
      }

      v94 = &v91[-v116];
      if (v91 < v116)
      {
        a4 = v98 + a4;
        v78 = a4;
        goto LABEL_37;
      }

      if (__OFSUB__(v91, v116))
      {
        goto LABEL_65;
      }

      if (v107)
      {
        goto LABEL_66;
      }

      v20 = v90;
      v95 = v76 + a4;
      if (v94 == v106)
      {
        a4 = v76 + a4;
        v77 = v62;
      }

      else
      {
        v77 = v97 + v77;
      }

      if (v94 == v106)
      {
        v78 = v95;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_199B4E7AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_199DF849C();
  return sub_199B4E9C8;
}

void sub_199B4E834(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_199B4E8C4()
{
  sub_199B4C8B0();
  if (v0 <= 0x3F)
  {
    sub_199DF884C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_199B4EA1C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199B4EAD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B4EB28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNWallpaperSuggestionsGalleryViewWrapper.__allocating_init(with:windowScene:mode:contact:isEditingSNaP:isOnboarding:photoLibraryAssetID:)(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v58 = a5;
  v59 = a6;
  v64 = a2;
  v13 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v61 = &v57 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757E0);
  MEMORY[0x1EEE9AC00](v60, v20);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v57 - v24;
  v65 = v8;
  v62 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  LOBYTE(v70) = 0;
  v26 = a4;
  swift_unknownObjectRetain();
  sub_199DF983C();
  v27 = v68;
  v16[88] = v67;
  *(v16 + 12) = v27;
  v70 = 0;
  v71 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74540);
  sub_199DF983C();
  v28 = v68;
  v29 = v69;
  *(v16 + 13) = v67;
  v16[112] = v28;
  *(v16 + 15) = v29;
  *(v16 + 16) = swift_getKeyPath();
  v16[136] = 0;
  v30 = v13[12];
  *&v16[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30);
  swift_storeEnumTagMultiPayload();
  v31 = objc_allocWithZone(type metadata accessor for CNWallpaperSuggestionsGalleryViewModel());
  v32 = v26;
  sub_199B2F998(v32, a3 != 0, a7, a8);

  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel);
  *(v16 + 1) = sub_199DF87AC();
  *(v16 + 2) = v33;
  swift_unknownObjectWeakAssign();
  v34 = v59;
  v16[v13[13]] = v58;
  v16[v13[14]] = v34;
  v35 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v36 = [v32 givenName];
  if (!v36)
  {
    sub_199DF9F8C();
    v36 = sub_199DF9F5C();
  }

  [v35 setGivenName_];

  v37 = [v32 familyName];
  if (!v37)
  {
    sub_199DF9F8C();
    v37 = sub_199DF9F5C();
  }

  [v35 setFamilyName_];

  v16[v13[15]] = [objc_opt_self() nameOrderForContact_] == 1;
  v38 = [v32 givenName];
  v39 = sub_199DF9F8C();
  v41 = v40;

  *(v16 + 3) = v39;
  *(v16 + 4) = v41;
  *(v16 + 5) = 0;
  v42 = [v32 familyName];
  v43 = sub_199DF9F8C();
  v45 = v44;

  *(v16 + 6) = v43;
  *(v16 + 7) = v45;
  *(v16 + 8) = 0;
  [v32 mutableCopy];
  sub_199DFA66C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_199A7A02C(0, &qword_1EAF710A0);
  swift_dynamicCast();
  *(v16 + 9) = v70;
  *(v16 + 10) = 0;
  v46 = v61;
  sub_199B58478(v16, v61, type metadata accessor for CNWallpaperSuggestionsGallery);
  KeyPath = swift_getKeyPath();
  sub_199B58478(v46, v25, type metadata accessor for CNWallpaperSuggestionsGallery);
  v48 = &v25[*(v60 + 36)];
  v50 = v63;
  v49 = v64;
  *v48 = KeyPath;
  v48[1] = v49;
  sub_199AAD408(v25, v50, &qword_1EAF757E0);
  v51 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757E8));
  v52 = v49;
  v53 = sub_199DF8DFC();
  v54 = v62;
  *&v62[OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController] = v53;
  v66.receiver = v54;
  v66.super_class = v65;
  v55 = objc_msgSendSuper2(&v66, sel_init);

  swift_unknownObjectRelease();
  sub_199A79A04(v25, &qword_1EAF757E0);
  return v55;
}

id CNWallpaperSuggestionsGalleryViewWrapper.init(with:windowScene:mode:contact:isEditingSNaP:isOnboarding:photoLibraryAssetID:)(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_199B5739C(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();

  return v10;
}

id CNWallpaperSuggestionsGalleryViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNWallpaperSuggestionsGalleryViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNWallpaperSuggestionsGalleryViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B4F38C@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v113, v2);
  v90 = &v84 - v3;
  v4 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757F8);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v9);
  v104 = &v84 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75800);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v11);
  v101 = &v84 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75808);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v13);
  v98 = &v84 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75810);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v15);
  v108 = &v84 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75818);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v17);
  v93 = &v84 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75820);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v19);
  v89 = &v84 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75828);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v21);
  v23 = &v84 - v22;
  v24 = v1;
  sub_199B58890(v1, v8, type metadata accessor for CNWallpaperSuggestionsGallery);
  v25 = *(v5 + 80);
  v26 = (v25 + 16) & ~v25;
  v115 = v26 + v6;
  v116 = v25;
  v27 = swift_allocObject();
  v117 = v26;
  v28 = v8;
  sub_199B58478(v8, v27 + v26, type metadata accessor for CNWallpaperSuggestionsGallery);
  *&v119 = sub_199B57D50;
  *(&v119 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E3A600;
  LOBYTE(v8) = sub_199DF919C();
  *(inited + 32) = v8;
  v30 = sub_199DF91BC();
  *(inited + 33) = v30;
  v31 = sub_199DF918C();
  *(inited + 34) = v31;
  sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v8)
  {
    sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v30)
  {
    sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v31)
  {
    sub_199DF91AC();
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75830);
  v33 = sub_199AA0B90(&qword_1EAF71380, &qword_1EAF75830);
  sub_199DF94AC();

  v34 = v24;
  v110 = *(v24 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v90;
  sub_199DF841C();

  v114 = type metadata accessor for CNWallpaperSuggestionsGallery;
  v112 = v34;
  v36 = v28;
  sub_199B58890(v34, v28, type metadata accessor for CNWallpaperSuggestionsGallery);
  v37 = swift_allocObject();
  v109 = type metadata accessor for CNWallpaperSuggestionsGallery;
  sub_199B58478(v28, v37 + v117, type metadata accessor for CNWallpaperSuggestionsGallery);
  *&v119 = v32;
  *(&v119 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = sub_199B57F6C();
  v38 = v89;
  v39 = v87;
  v40 = v113;
  sub_199DF962C();

  sub_199A79A04(v35, &unk_1EAF74FB8);
  (*(v88 + 8))(v23, v39);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  LOBYTE(v118) = v119;
  v111 = v36;
  v41 = v114;
  sub_199B58890(v34, v36, v114);
  v42 = swift_allocObject() + v117;
  v43 = v36;
  v44 = v109;
  sub_199B58478(v43, v42, v109);
  *&v119 = v39;
  *(&v119 + 1) = v40;
  v120 = OpaqueTypeConformance2;
  v121 = v85;
  v113 = MEMORY[0x1E6981440];
  v90 = swift_getOpaqueTypeConformance2();
  v45 = v93;
  v46 = v92;
  sub_199DF962C();

  (*(v91 + 8))(v38, v46);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v47 = v119;
  v118 = v119;
  v48 = v111;
  sub_199B58890(v112, v111, v41);
  v49 = swift_allocObject();
  v50 = v117;
  sub_199B58478(v48, v49 + v117, v44);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740A0);
  *&v119 = v46;
  *(&v119 + 1) = MEMORY[0x1E69E6370];
  v120 = v90;
  v121 = MEMORY[0x1E69E6388];
  v92 = swift_getOpaqueTypeConformance2();
  v52 = sub_199B58098();
  v53 = v95;
  v54 = v51;
  sub_199DF962C();

  (*(v94 + 8))(v45, v53);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v55 = v119;
  v118 = v119;
  v56 = v111;
  v57 = v112;
  sub_199B58890(v112, v111, v114);
  v58 = swift_allocObject();
  v59 = v109;
  sub_199B58478(v56, v58 + v50, v109);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FD0);
  *&v119 = v53;
  *(&v119 + 1) = v54;
  v120 = v92;
  v121 = v52;
  v93 = swift_getOpaqueTypeConformance2();
  v95 = sub_199B58230();
  v60 = v98;
  v61 = v97;
  v62 = v108;
  sub_199DF962C();

  (*(v96 + 8))(v62, v61);
  v63 = *(v57 + 40);
  v119 = *(v57 + 24);
  v120 = v63;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8);
  sub_199DF984C();
  v64 = v111;
  v65 = v114;
  sub_199B58890(v57, v111, v114);
  v66 = swift_allocObject();
  v67 = v117;
  sub_199B58478(v64, v66 + v117, v59);
  *&v119 = v61;
  *(&v119 + 1) = v94;
  v120 = v93;
  v121 = v95;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v101;
  v70 = v100;
  sub_199DF962C();

  (*(v99 + 8))(v60, v70);
  v71 = v112;
  v72 = *(v112 + 64);
  v119 = *(v112 + 48);
  v120 = v72;
  sub_199DF984C();
  v73 = v71;
  v74 = v111;
  sub_199B58890(v73, v111, v65);
  v75 = swift_allocObject() + v67;
  v76 = v109;
  sub_199B58478(v74, v75, v109);
  *&v119 = v70;
  v77 = MEMORY[0x1E69E6158];
  *(&v119 + 1) = MEMORY[0x1E69E6158];
  v120 = v68;
  v121 = MEMORY[0x1E69E6180];
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v104;
  v80 = v103;
  sub_199DF962C();

  (*(v102 + 8))(v69, v80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  LOBYTE(v118) = v119;
  sub_199B58890(v112, v74, v114);
  v81 = swift_allocObject();
  sub_199B58478(v74, v81 + v117, v76);
  *&v119 = v80;
  *(&v119 + 1) = v77;
  v120 = v78;
  v121 = MEMORY[0x1E69E6180];
  swift_getOpaqueTypeConformance2();
  v82 = v106;
  sub_199DF962C();

  return (*(v105 + 8))(v79, v82);
}

uint64_t sub_199B50374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v54 = a3;
  v52 = sub_199DF86BC();
  v5 = *(v52 - 8);
  v53 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v52, v6);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  v49 = *(v8 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75838);
  MEMORY[0x1EEE9AC00](v51, v12);
  v46 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75840);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v43 - v17;
  v55 = a2;
  v56 = a1;
  sub_199DF914C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75848);
  sub_199B584E8();
  sub_199DF854C();
  v19 = sub_199DF902C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF901C();
  sub_199AA0B90(&qword_1EAF71408, &qword_1EAF75840);
  sub_199DF95BC();
  (*(v20 + 8))(v23, v19);
  (*(v15 + 8))(v18, v14);
  v44 = type metadata accessor for CNWallpaperSuggestionsGallery;
  v45 = a2;
  sub_199B58890(a2, v11, type metadata accessor for CNWallpaperSuggestionsGallery);
  v24 = v5;
  v25 = *(v5 + 16);
  v26 = v50;
  v27 = v52;
  v25(v50, v47, v52);
  v28 = *(v49 + 80);
  v29 = (v28 + 16) & ~v28;
  v48 += v29;
  v30 = (v48 + *(v24 + 80)) & ~*(v24 + 80);
  v49 = v28 | 7;
  v31 = swift_allocObject();
  v53 = type metadata accessor for CNWallpaperSuggestionsGallery;
  sub_199B58478(v11, v31 + v29, type metadata accessor for CNWallpaperSuggestionsGallery);
  (*(v24 + 32))(v31 + v30, v26, v27);
  v32 = v46;
  v33 = &v46[*(v51 + 36)];
  *v33 = sub_199B58658;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  sub_199DF869C();
  v57 = v34;
  v35 = v44;
  sub_199B58890(a2, v11, v44);
  v36 = swift_allocObject();
  v37 = v53;
  sub_199B58478(v11, v36 + v29, v53);
  sub_199B5873C();
  sub_199B121E8();
  v38 = v54;
  sub_199DF962C();

  sub_199A984E8(v32);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75868);
  sub_199AA7690(v38 + *(v39 + 52));
  sub_199B58890(v45, v11, v35);
  v40 = swift_allocObject();
  result = sub_199B58478(v11, v40 + v29, v37);
  v42 = (v38 + *(v39 + 56));
  *v42 = sub_199B58820;
  v42[1] = v40;
  return result;
}

__n128 sub_199B50908@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75858);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75850);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v38 = &v35 - v11;
  v12 = type metadata accessor for CNWallpaperSuggestionsGalleryLayout(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v35 = *(a1 + *(type metadata accessor for CNWallpaperSuggestionsGallery(0) + 56));
  v21 = *(a1 + 16);
  v22 = *(a1 + 96);
  LOBYTE(v43) = *(a1 + 88);
  *(&v43 + 1) = v22;
  v37 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF984C();
  v36 = v41;
  v23 = *(a1 + 112);
  v24 = *(a1 + 120);
  *&v43 = *(a1 + 104);
  BYTE8(v43) = v23;
  *&v44 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74758);
  sub_199DF984C();
  v25 = v41;
  v26 = v42;
  sub_199AC2898(&v20[*(v13 + 40)]);
  *v20 = v35;
  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel();
  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel);
  *(v20 + 1) = sub_199DF87AC();
  *(v20 + 2) = v27;
  v20[24] = v36;
  *(v20 + 4) = v25;
  v20[40] = v26;
  v28 = v20;
  v29 = v38;
  sub_199B58478(v28, v16, type metadata accessor for CNWallpaperSuggestionsGalleryLayout);
  sub_199B58890(v16, v7, type metadata accessor for CNWallpaperSuggestionsGalleryLayout);
  sub_199AAD408(v7, v29, &qword_1EAF75858);
  sub_199B50D5C(a1, v29 + *(v9 + 52));
  sub_199A79A04(v7, &qword_1EAF75858);
  sub_199B588F8(v16, type metadata accessor for CNWallpaperSuggestionsGalleryLayout);
  sub_199DF869C();
  sub_199DF9B5C();
  sub_199DF897C();
  v30 = v40;
  sub_199AB7794(v29, v40, &qword_1EAF75850);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75848) + 36);
  v32 = v48;
  *(v31 + 64) = v47;
  *(v31 + 80) = v32;
  *(v31 + 96) = v49;
  v33 = v44;
  *v31 = v43;
  *(v31 + 16) = v33;
  result = v46;
  *(v31 + 32) = v45;
  *(v31 + 48) = result;
  return result;
}

uint64_t sub_199B50D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v70 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (v48 - v9);
  v11 = *(a1 + 16);
  sub_199DF869C();
  v13 = v12;
  v14 = *(a1 + 72);
  v57 = *(a1 + 80);
  v58 = v14;
  *&v72 = v14;
  *(&v72 + 1) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75870);
  sub_199DF986C();
  v68 = v87;
  v69 = v86;
  v67 = v88;
  sub_199DF869C();
  v16 = v15;
  v17 = type metadata accessor for CNWallpaperSuggestionsGalleryViewModel();
  v18 = sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel);
  v19 = v11;
  v48[1] = v18;
  v49 = v17;
  v59 = sub_199DF87AC();
  v66 = v20;
  *&v72 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748);
  sub_199DF983C();
  v64 = v87;
  v65 = v86;
  KeyPath = swift_getKeyPath();
  v101 = 0;
  v62 = swift_getKeyPath();
  v61 = sub_199AC3DD4(*(a1 + 128), *(a1 + 136));
  v60 = v101;
  v21 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0.0;
  v22 = 0;
  v50 = 0.0;
  v51 = 0;
  v71 = 0;
  v23 = 0;
  v24 = 0;
  v56 = 0;
  if (*(a1 + *(v21 + 56)) == 1)
  {
    v56 = *(a1 + *(v21 + 60));
    v25 = *(a1 + 40);
    v72 = *(a1 + 24);
    *&v73 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8);
    sub_199DF986C();
    v54 = v87;
    v55 = v86;
    v52 = v89;
    v53 = v88;
    v26 = *(a1 + 64);
    v72 = *(a1 + 48);
    *&v73 = v26;
    sub_199DF986C();
    v22 = v86;
    v50 = v88;
    v51 = v87;
    v71 = v89;
    v86 = v58;
    v87 = v57;
    sub_199DF984C();
    sub_199A7A02C(0, &qword_1EAF710A0);
    sub_199DF983C();
    v23 = v86;
    v24 = v87;
  }

  v57 = v24;
  v58 = v23;
  v27 = v13 * 0.35;
  swift_unknownObjectWeakLoadStrong();
  sub_199AC2898(v10 + *(v4 + 28));
  *v10 = sub_199DF87AC();
  v10[1] = v28;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  sub_199B58890(v10, v70, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  *&v72 = v59;
  *(&v72 + 1) = v66;
  *&v73 = v27;
  *(&v73 + 1) = v65;
  *&v74 = v64;
  *(&v74 + 1) = v69;
  *&v75 = v68;
  v49 = v10;
  *(&v75 + 1) = v67;
  *&v76 = v16;
  *(&v76 + 1) = KeyPath;
  LOBYTE(v77) = v60;
  *(&v77 + 1) = *v100;
  DWORD1(v77) = *&v100[3];
  *(&v77 + 1) = v62;
  v78 = v61;
  *(a2 + 96) = v61;
  v29 = v75;
  *(a2 + 32) = v74;
  *(a2 + 48) = v29;
  v30 = v73;
  *a2 = v72;
  *(a2 + 16) = v30;
  v31 = v77;
  *(a2 + 64) = v76;
  *(a2 + 80) = v31;
  v32 = v56;
  v33 = v22;
  v48[0] = v22;
  v35 = v54;
  v34 = v55;
  *&v79 = v56;
  *(&v79 + 1) = v55;
  v36 = v52;
  v37 = v53;
  *&v80 = v54;
  *(&v80 + 1) = v53;
  *&v81 = v52;
  *(&v81 + 1) = v33;
  v39 = v50;
  v38 = v51;
  *&v82 = v51;
  *(&v82 + 1) = v50;
  *&v83 = v71;
  *(&v83 + 1) = v58;
  v40 = v57;
  v84 = v57;
  v41 = v79;
  *(a2 + 120) = v80;
  *(a2 + 104) = v41;
  v42 = v81;
  v43 = v82;
  v44 = v83;
  *(a2 + 184) = v40;
  *(a2 + 168) = v44;
  *(a2 + 152) = v43;
  *(a2 + 136) = v42;
  v45 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75878) + 64);
  v46 = v70;
  sub_199B58890(v70, v45, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  sub_199AAD408(&v72, &v86, &qword_1EAF75880);
  sub_199AAD408(&v79, &v86, &qword_1EAF75888);
  sub_199B588F8(v49, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  sub_199B588F8(v46, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v85[0] = v32;
  v85[1] = v34;
  v85[2] = v35;
  *&v85[3] = v37;
  v85[4] = v36;
  v85[5] = v48[0];
  v85[6] = v38;
  *&v85[7] = v39;
  v85[8] = v71;
  v85[9] = v58;
  v85[10] = v57;
  sub_199A79A04(v85, &qword_1EAF75888);
  v86 = v59;
  v87 = v66;
  v88 = v27;
  v89 = v65;
  v90 = v64;
  v91 = v69;
  v92 = v68;
  v93 = v67;
  v94 = v16;
  v95 = KeyPath;
  v96 = v60;
  *v97 = *v100;
  *&v97[3] = *&v100[3];
  v98 = v62;
  v99 = v61;
  return sub_199A79A04(&v86, &qword_1EAF75880);
}

uint64_t sub_199B51310()
{
  sub_199DF869C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74758);
  return sub_199DF985C();
}

uint64_t sub_199B51384(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = *a2;
  v10 = *(a3 + 96);
  LOBYTE(v19) = *(a3 + 88);
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  result = sub_199DF984C();
  if ((v17 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    v12 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
    v13 = (*(*(v12 - 8) + 48))(v8, 1, v12);
    result = sub_199A79A04(v8, &unk_1EAF74FB8);
    if (v13 == 1)
    {
      v14 = *(a3 + 112);
      v15 = *(a3 + 120);
      v19 = *(a3 + 104);
      LOBYTE(v20) = v14;
      v21 = v15;
      v17 = v9;
      v18 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74758);
      return sub_199DF985C();
    }
  }

  return result;
}

uint64_t sub_199B51534(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12[-v6];
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v9 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  LODWORD(a1) = (*(*(v9 - 8) + 48))(v7, 1, v9);
  result = sub_199A79A04(v7, &unk_1EAF74FB8);
  if (a1 == 1)
  {
    v11 = *(a2 + 96);
    v12[16] = *(a2 + 88);
    v13 = v11;
    v12[15] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
    return sub_199DF985C();
  }

  return result;
}

uint64_t sub_199B516A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(a2, v12, &unk_1EAF74FB8);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    return sub_199A79A04(v12, &unk_1EAF74FB8);
  }

  sub_199B58478(v12, v17, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  v20 = *(a3 + 16);
  if (*(v20 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat) == 1)
  {
    if (v17[*(v13 + 20)] > 2u || v17[*(v13 + 20)])
    {
      v23 = sub_199DFA99C();

      if ((v23 & 1) == 0)
      {
        v25 = sub_199AC3DD4(*(a3 + 128), *(a3 + 136));
        if (v25)
        {
          v26 = v25;
          v27 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
          sub_199B2BE70(v26, *(a3 + *(v27 + 52)));
        }

        return sub_199B588F8(v17, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      }
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v34 = 0uLL;
    v24 = v20;
    sub_199DF842C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v34) = 1;
    sub_199DF842C();
    return sub_199B588F8(v17, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_199B588F8(v17, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  }

  v22 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  result = (v18)(v8, 1, v13);
  if (result != 1)
  {
    sub_199B588F8(v8, type metadata accessor for CNWallpaperSuggestionsGallerySource);
    v28 = sub_199DF9F5C();

    v29 = *(a3 + 40);
    v34 = *(a3 + 24);
    v35 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8);
    sub_199DF984C();
    v30 = sub_199DF9F5C();

    v31 = *(a3 + 64);
    v34 = *(a3 + 48);
    v35 = v31;
    sub_199DF984C();
    v32 = sub_199DF9F5C();

    [v22 suggestionsGalleryDidSelectAvatarSourceType:v28 withGivenName:v30 familyName:v32];
    swift_unknownObjectRelease();

    return sub_199B588F8(v17, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  }

  __break(1u);
  return result;
}

void sub_199B51C08(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC);
  if (v3)
  {
    if (*a2 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = v3;
        [v5 suggestionsGalleryDidRequestPresentationOfPosterEditingViewController_];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v7 = *(*(a3 + 16) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC);

      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_199B51CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v14 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_lastSelectedSource;
  swift_beginAccess();
  sub_199AAD408(v13 + v14, v7, &unk_1EAF74FB8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_199A79A04(v7, &unk_1EAF74FB8);
    return;
  }

  sub_199B58478(v7, v12, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v15 = v30;
  if (!v30)
  {
    goto LABEL_15;
  }

  v16 = v12[*(v8 + 20)];
  v17 = v16 >= 2;
  if (v16 > 2)
  {
    if (v16 != 3 && v16 == 4)
    {
      goto LABEL_16;
    }

    v18 = MEMORY[0x1E695CCE8];
  }

  else
  {
    v18 = MEMORY[0x1E695CCF0];
    if (v17)
    {
      v18 = MEMORY[0x1E695CCE0];
    }
  }

  v20 = *v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(a3 + 40);
    v30 = *(a3 + 24);
    v31 = v23;
    v24 = v20;
    v25 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8);
    sub_199DF984C();
    v26 = sub_199DF9F5C();

    v27 = *(a3 + 64);
    v30 = *(a3 + 48);
    v31 = v27;
    sub_199DF984C();
    v28 = sub_199DF9F5C();

    [v22 suggestionsGalleryDidFinishWithPosterConfiguration:v25 posterType:v24 withGivenName:v26 familyName:v28];
    swift_unknownObjectRelease();

LABEL_15:
    sub_199B588F8(v12, type metadata accessor for CNWallpaperSuggestionsGallerySource);
    return;
  }

LABEL_16:
  sub_199B588F8(v12, type metadata accessor for CNWallpaperSuggestionsGallerySource);
}

void sub_199B52020(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8);
      sub_199DF984C();
      v6 = sub_199DF9F5C();

      sub_199DF984C();
      v7 = sub_199DF9F5C();

      [v4 suggestionsGalleryDidSelectSuggestedAvatar:v5 withGivenName:v6 familyName:v7];

      swift_unknownObjectRelease();
    }
  }
}

void sub_199B52134(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_199DF6EFC();
  v6 = *(v5 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v5, v7).n128_u64[0];
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a3 + 16);
  v14 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
  [*(v13 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact) mutableCopy];
  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199A7A02C(0, &qword_1EAF710A0);
  swift_dynamicCast();
  v15 = v18[1];
  v18[2] = v11;
  v18[3] = v12;
  sub_199DF6EEC();
  sub_199A9C458();
  sub_199DFA65C();
  (*(v6 + 8))(v10, v5);
  v16 = sub_199DF9F5C();

  [v15 setGivenName_];

  v17 = *(v13 + v14);
  *(v13 + v14) = v15;
}

void sub_199B522F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
  [*(v3 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact) mutableCopy];
  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199A7A02C(0, &qword_1EAF710A0);
  swift_dynamicCast();
  v5 = sub_199DF9F5C();
  [v7 setFamilyName_];

  v6 = *(v3 + v4);
  *(v3 + v4) = v7;
}

void sub_199B523CC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v8 = sub_199B2DB98();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong suggestionsGalleryDidRequestPresentationOfImagePickerController_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (v9)
    {

      v5 = sub_199AC3DD4(*(a3 + 128), *(a3 + 136));
      if (v5)
      {
        v6 = v5;
        v7 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
        sub_199B2BE70(v6, *(a3 + *(v7 + 52)));
      }
    }
  }
}

id sub_199B5250C()
{
  result = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  qword_1EAF757D0 = result;
  return result;
}

uint64_t sub_199B52540@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75910);
  MEMORY[0x1EEE9AC00](v53, v3);
  v52 = (&v47 - v4);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75918);
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v6);
  v8 = &v47 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75920);
  MEMORY[0x1EEE9AC00](v55, v9);
  if (*(*(v2 + 8) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat) == 1)
  {
    v57 = *(v2 + 24);
    v50 = v11;
    v51 = &v47 - v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75940);
    v49 = v5;
    sub_199DF986C();
    v47 = v64;
    v12 = v65;
    v13 = swift_allocObject();
    v14 = *(v2 + 48);
    *(v13 + 48) = *(v2 + 32);
    *(v13 + 64) = v14;
    *(v13 + 80) = *(v2 + 64);
    *(v13 + 96) = *(v2 + 80);
    v15 = *(v2 + 16);
    *(v13 + 16) = *v2;
    *(v13 + 32) = v15;
    v57 = v47;
    *&v59[0] = 0;
    v58 = v12;
    BYTE8(v59[0]) = 0;
    v59[1] = 0uLL;
    LOBYTE(v60) = 0;
    *(&v60 + 1) = 0;
    *&v61 = 0;
    WORD4(v61) = 0;
    *&v62 = sub_199B591E8;
    *(&v62 + 1) = v13;
    v63 = 0uLL;
    v68 = *(v2 + 40);
    *&v69 = *(v2 + 56);
    sub_199B591F0(v2, &v64);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75948);
    MEMORY[0x19A8F7740](&v64, v16);
    v17 = v64;
    *&v68 = v64;
    v18 = swift_allocObject();
    v19 = *(v2 + 48);
    *(v18 + 48) = *(v2 + 32);
    *(v18 + 64) = v19;
    *(v18 + 80) = *(v2 + 64);
    *(v18 + 96) = *(v2 + 80);
    v20 = *(v2 + 16);
    *(v18 + 16) = *v2;
    *(v18 + 32) = v20;
    sub_199B591F0(v2, &v64);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75938);
    v48 = v8;
    v22 = v21;
    v23 = sub_199A7A02C(0, &qword_1EAF710A0);
    v24 = sub_199B5915C();
    v25 = sub_199B58134(&qword_1EAF71098, &qword_1EAF710A0);
    sub_199DF962C();

    v66[2] = v60;
    v66[3] = v61;
    v66[4] = v62;
    v66[5] = v63;
    v64 = v57;
    v65 = v58;
    v66[0] = v59[0];
    v66[1] = v59[1];
    sub_199A79A04(&v64, &qword_1EAF75938);
    *&v68 = *(v2 + 64);
    v26 = swift_allocObject();
    v27 = *(v2 + 48);
    *(v26 + 48) = *(v2 + 32);
    *(v26 + 64) = v27;
    *(v26 + 80) = *(v2 + 64);
    *(v26 + 96) = *(v2 + 80);
    v28 = *(v2 + 16);
    *(v26 + 16) = *v2;
    *(v26 + 32) = v28;
    sub_199B591F0(v2, &v57);
    *&v57 = v22;
    *(&v57 + 1) = v23;
    *&v58 = v24;
    *(&v58 + 1) = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = sub_199B121E8();
    v31 = v54;
    v32 = v48;
    sub_199DF962C();

    (*(v49 + 8))(v32, v31);
    v33 = v50;
    v34 = v55;
    (*(v50 + 16))();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75930);
    *&v57 = v31;
    *(&v57 + 1) = MEMORY[0x1E69E7DE0];
    *&v58 = OpaqueTypeConformance2;
    *(&v58 + 1) = v30;
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71180, &qword_1EAF75930);
    sub_199DF8EDC();
    return (*(v33 + 8))(v51, v34);
  }

  else
  {
    v36 = sub_199DF9B5C();
    v38 = v37;
    sub_199B52F70(v2, &v68);
    v57 = v68;
    v58 = v69;
    v59[0] = v70[0];
    *(v59 + 9) = *(v70 + 9);
    v64 = v68;
    v65 = v69;
    v66[0] = v70[0];
    *(v66 + 9) = *(v70 + 9);
    sub_199AAD408(&v57, v67, &qword_1EAF75928);
    sub_199A79A04(&v64, &qword_1EAF75928);
    v39 = v52;
    *v52 = v36;
    v39[1] = v38;
    v40 = v58;
    *(v39 + 1) = v57;
    *(v39 + 2) = v40;
    *(v39 + 3) = v59[0];
    *(v39 + 57) = *(v59 + 9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75930);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75938);
    v42 = sub_199A7A02C(255, &qword_1EAF710A0);
    v43 = sub_199B5915C();
    v44 = sub_199B58134(&qword_1EAF71098, &qword_1EAF710A0);
    *&v68 = v41;
    *(&v68 + 1) = v42;
    *&v69 = v43;
    *(&v69 + 1) = v44;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = sub_199B121E8();
    *&v68 = v54;
    *(&v68 + 1) = MEMORY[0x1E69E7DE0];
    *&v69 = v45;
    *(&v69 + 1) = v46;
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71180, &qword_1EAF75930);
    return sub_199DF8EDC();
  }
}

void sub_199B52CA0(uint64_t a1)
{
  v2 = sub_199AC3DD4(*(a1 + 72), *(a1 + 80));
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75948);
    MEMORY[0x19A8F7740](aBlock, v5);
    v6 = aBlock[0];
    v7 = swift_allocObject();
    v8 = *(a1 + 48);
    *(v7 + 48) = *(a1 + 32);
    *(v7 + 64) = v8;
    *(v7 + 80) = *(a1 + 64);
    *(v7 + 96) = *(a1 + 80);
    v9 = *(a1 + 16);
    *(v7 + 16) = *a1;
    *(v7 + 32) = v9;
    aBlock[4] = sub_199B5A858;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B77770;
    aBlock[3] = &block_descriptor_150;
    v10 = _Block_copy(aBlock);
    sub_199B591F0(a1, &v11);

    [v4 incomingCallPlaceholderSnapshotForContact:v6 windowScene:v3 completionBlock:{v10, v11, v12}];
    _Block_release(v10);
  }
}

void sub_199B52E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_199AC3DD4(*(a3 + 72), *(a3 + 80));
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_self();
    v18 = *(a3 + 40);
    v19 = *(a3 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75948);
    MEMORY[0x19A8F7740](aBlock, v12);
    v13 = aBlock[0];
    v14 = swift_allocObject();
    v15 = *(a3 + 48);
    *(v14 + 48) = *(a3 + 32);
    *(v14 + 64) = v15;
    *(v14 + 80) = *(a3 + 64);
    *(v14 + 96) = *(a3 + 80);
    v16 = *(a3 + 16);
    *(v14 + 16) = *a3;
    *(v14 + 32) = v16;
    aBlock[4] = a5;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B77770;
    aBlock[3] = a6;
    v17 = _Block_copy(aBlock);
    sub_199B591F0(a3, &v18);

    [v11 incomingCallPlaceholderSnapshotForContact:v13 windowScene:v10 completionBlock:{v17, v18, v19}];
    _Block_release(v17);
  }
}

id sub_199B52F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EAF71F18 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v3 = qword_1EAF757D0;
  v4 = *(a1 + 16);
  v5 = objc_opt_self();
  v6 = v3;
  v10 = [v5 defaultSettings];
  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = v10;
  *(a2 + 24) = 1;
  *(a2 + 32) = v6;
  *(a2 + 40) = v4;
  *(a2 + 48) = v10;
  *(a2 + 56) = 1;
  v7 = v6;

  return v10;
}

uint64_t sub_199B53060(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75940);
  return sub_199DF985C();
}

uint64_t sub_199B53104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75898);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v29 - v5;
  v7 = sub_199DF884C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v29 - v18);
  v20 = *(a1 + 8);
  v21 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) + 28);
  v22 = *(v8 + 16);
  v31 = a1;
  v22(v11, a1 + v21, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v20;
  sub_199DF841C();

  if (v32)
  {
    v24 = *(v32 + 16);
  }

  else
  {
    v24 = 0;
  }

  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel();
  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel);
  *v19 = sub_199DF87AC();
  v19[1] = v25;
  (*(v8 + 32))(v19 + *(v12 + 20), v11, v7);
  *(v19 + *(v12 + 24)) = v24;
  sub_199B58478(v19, v15, type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout);
  sub_199B58890(v15, v6, type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout);
  v26 = v30;
  sub_199AAD408(v6, v30, &qword_1EAF75898);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758A0);
  sub_199B53448(v31, (v26 + *(v27 + 44)));
  sub_199A79A04(v6, &qword_1EAF75898);
  return sub_199B588F8(v15, type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout);
}

uint64_t sub_199B53448@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  v3 = sub_199DF8CDC();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v70 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = v63 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758A8);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v9);
  v68 = v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758B0);
  v12 = *(v11 - 8);
  v80 = v11;
  v81 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v67 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v66 = v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758B8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v82 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v75 = v63 - v23;
  v24 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758C0);
  v78 = *(v28 - 8);
  v79 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v77 = v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v63 - v33;
  v35 = *(a1 + 8);
  v84 = sub_199B2C6C8();
  v65 = a1;
  sub_199B58890(a1, v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v36 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v63[1] = v26;
  v37 = swift_allocObject();
  v64 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B58478(v64, v37 + v36, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758C8);
  sub_199DF729C();
  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  sub_199AA0B90(&qword_1EAF71118, &qword_1EAF758C8);
  sub_199B58020(&qword_1EAF71970, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton);
  sub_199B58020(&qword_1EAF71878, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  v76 = v34;
  sub_199DF99FC();
  if (*(v35 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat))
  {
    v38 = 1;
    v39 = v80;
    v40 = v75;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    v41 = v84;
    if (!v84)
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v84 = v41;
    v42 = v64;
    sub_199B58890(v65, v64, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
    v43 = swift_allocObject();
    sub_199B58478(v42, v43 + v36, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758E0);
    sub_199AA0B90(&qword_1EAF71110, &qword_1EAF758D8);
    sub_199B59000();
    sub_199B59108();
    v44 = v68;
    sub_199DF99FC();
    v45 = v72;
    sub_199DF8CCC();
    v47 = v73;
    v46 = v74;
    (*(v73 + 16))(v70, v45, v74);
    sub_199B58020(&qword_1EAF75900, MEMORY[0x1E697F260]);
    v48 = sub_199DF865C();
    (*(v47 + 8))(v45, v46);
    v49 = v67;
    (*(v69 + 32))(v67, v44, v71);
    v50 = v80;
    *&v49[*(v80 + 36)] = v48;
    v51 = v49;
    v52 = v66;
    sub_199AB7794(v51, v66, &qword_1EAF758B0);
    v40 = v75;
    sub_199AB7794(v52, v75, &qword_1EAF758B0);
    v38 = 0;
    v39 = v50;
  }

  (*(v81 + 56))(v40, v38, 1, v39);
  v54 = v77;
  v53 = v78;
  v55 = *(v78 + 16);
  v56 = v76;
  v57 = v79;
  v55(v77, v76, v79);
  v58 = v82;
  sub_199AAD408(v40, v82, &qword_1EAF758B8);
  v59 = v83;
  v55(v83, v54, v57);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758D0);
  sub_199AAD408(v58, &v59[*(v60 + 48)], &qword_1EAF758B8);
  sub_199A79A04(v40, &qword_1EAF758B8);
  v61 = *(v53 + 8);
  v61(v56, v57);
  sub_199A79A04(v58, &qword_1EAF758B8);
  return (v61)(v54, v57);
}

uint64_t sub_199B53D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  swift_unknownObjectWeakLoadStrong();
  v7 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  sub_199B58890(a1, a3 + *(v7 + 24), type metadata accessor for CNWallpaperSuggestionsGallerySource);
  v8 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) + 28);
  v9 = *(v7 + 28);
  v10 = sub_199DF884C();
  (*(*(v10 - 8) + 16))(a3 + v9, a2 + v8, v10);
  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel();
  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel);
  v11 = v6;
  *a3 = sub_199DF87AC();
  a3[1] = v12;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t sub_199B53E64@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_199DF8CDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - v12;
  v27 = *a1;
  v14 = *(a2 + 8);
  swift_unknownObjectWeakLoadStrong();
  v15 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) + 28);
  v16 = type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0);
  v17 = v16[7];
  v18 = sub_199DF884C();
  (*(*(v18 - 8) + 16))(&a3[v17], a2 + v15, v18);
  KeyPath = swift_getKeyPath();
  *&a3[v16[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  swift_storeEnumTagMultiPayload();
  *a3 = v14;
  swift_unknownObjectWeakInit();
  v20 = v14;
  v21 = v27;
  swift_unknownObjectRelease();
  *(a3 + 2) = v21;
  v22 = &a3[v16[8]];
  *v22 = KeyPath;
  v22[8] = 0;
  v23 = v16[10];
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75908);
  sub_199DF983C();
  *&a3[v23] = v30;
  sub_199DF8CCC();
  (*(v7 + 16))(v28, v13, v6);
  sub_199B58020(&qword_1EAF75900, MEMORY[0x1E697F260]);
  v24 = sub_199DF865C();
  (*(v7 + 8))(v13, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758E0);
  *&a3[*(result + 36)] = v24;
  return result;
}

uint64_t sub_199B54120(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_199DFA17C();
  *(v1 + 24) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B541B8, v3, v2);
}

uint64_t sub_199B541B8()
{

  sub_199B2CCE4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199B54220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v16 = sub_199B58B58();
  v9 = v8;
  sub_199B58890(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_199B58478(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  sub_199B58890(v4, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v12 = swift_allocObject();
  sub_199B58478(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75890) + 36));
  sub_199DF871C();
  result = sub_199DFA18C();
  *v13 = &unk_199E41200;
  v13[1] = v12;
  *a3 = v16;
  a3[1] = v9;
  a3[2] = sub_199B58C70;
  a3[3] = v11;
  return result;
}

uint64_t sub_199B543F8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_199DF886C();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v32 = &v31 - v7;
  v36 = type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0);
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v36, v10);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A20) - 8;
  MEMORY[0x1EEE9AC00](v37, v11);
  v13 = &v31 - v12;
  sub_199B58890(v1, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_199B58478(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton);
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A28);
  sub_199B5A29C();
  sub_199DF989C();
  sub_199B58890(v1, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton);
  v16 = swift_allocObject();
  sub_199B58478(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton);
  v17 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A48) + 36)];
  sub_199DF871C();
  sub_199DFA18C();
  *v17 = &unk_199E41658;
  *(v17 + 1) = v16;
  LOBYTE(v16) = sub_199DF919C();
  sub_199DF84FC();
  v18 = &v13[*(v37 + 44)];
  *v18 = v16;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = 0;
  if (sub_199DF883C())
  {
    v24 = v32;
    sub_199AC3B48(v32);
    v26 = v33;
    v25 = v34;
    v27 = v35;
    (*(v34 + 104))(v33, *MEMORY[0x1E697E7D8], v35);
    v23 = sub_199DF885C();
    v28 = *(v25 + 8);
    v28(v26, v27);
    v28(v24, v27);
  }

  v29 = v38;
  sub_199AB7794(v13, v38, &qword_1EAF75A20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A50);
  *(v29 + *(result + 36)) = v23 & 1;
  return result;
}

uint64_t sub_199B547F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  v4 = v1;
  return sub_199DF842C();
}

uint64_t sub_199B54868@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_199DF8CDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  v20 = *(a1 + *(type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0) + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A58);
  result = sub_199DF984C();
  v14 = v19;
  if (v19)
  {
    v15 = [objc_opt_self() defaultSettings];
    sub_199DF8CCC();
    (*(v5 + 16))(v8, v12, v4);
    sub_199B58020(&qword_1EAF75900, MEMORY[0x1E697F260]);
    v16 = sub_199DF865C();
    result = (*(v5 + 8))(v12, v4);
    v17 = 0x406A800000000000;
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v16 = 0;
  }

  *a2 = v14;
  a2[1] = v17;
  a2[2] = v15;
  a2[3] = 0;
  a2[4] = v16;
  return result;
}

uint64_t sub_199B54A50(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_199DFA17C();
  *(v1 + 24) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B54AE8, v3, v2);
}

uint64_t sub_199B54AE8()
{

  sub_199B54B4C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_199B54B4C()
{
  v1 = v0;
  v2 = sub_199DF886C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0);
  v12 = v0 + *(v11 + 40);
  v14 = *v12;
  v13 = *(v12 + 8);
  v41 = *v12;
  v42 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A58);
  sub_199DF984C();
  if (v40)
  {
  }

  else
  {
    v39 = v15;
    v16 = *(v0 + 16);
    v17 = [objc_allocWithZone(CNPhotoPickerRecentsProvider) init];
    v18 = sub_199AC22BC(*(v1 + *(v11 + 32)), *(v1 + *(v11 + 32) + 8));
    v19 = v17;
    sub_199AC3B48(v10);
    (*(v3 + 104))(v6, *MEMORY[0x1E697E7D8], v2);
    LOBYTE(v17) = sub_199DF885C();
    v20 = *(v3 + 8);
    v20(v6, v2);
    v20(v10, v2);
    v21 = [objc_opt_self() defaultProvider];
    v22 = sub_199DF9F5C();
    v23 = [v21 newSerialSchedulerWithName_];

    swift_unknownObjectRelease();
    v24 = [v19 providerItemForContactImage:v16 size:v17 & 1 scale:v23 RTL:objc_msgSend(objc_opt_self() renderingQueue:sel_mainThreadScheduler) callbackQueue:1 fallbackToDefaultItem:{212.0, 212.0, v18}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v25 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    if (v24)
    {
      v26 = v24;
      v27 = [v26 imageData];
      v28 = sub_199DF71FC();
      v30 = v29;

      v31 = sub_199DF71DC();
      sub_199A9EF34(v28, v30);
      [v25 setImageData_];

      [v26 cropRect];
      [v25 setCropRect_];
    }

    else
    {
      v32 = [v16 imageData];
      v33 = sub_199DF71FC();
      v35 = v34;

      v36 = sub_199DF71DC();
      sub_199A9EF34(v33, v35);
      [v25 setImageData_];

      [v16 cropRect];
      [v25 setCropRect_];
    }

    v41 = v14;
    v42 = v13;
    v40 = v25;

    v37 = v25;
    v38 = v14;
    sub_199DF985C();
  }
}

uint64_t sub_199B54F9C()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 lineHeight];

  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  return sub_199DF883C();
}

uint64_t sub_199B55080()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14[-v8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if (v14[15] == 1)
  {
    v10 = *(v0 + *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0) + 24) + *(v1 + 20));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (!(*(v2 + 48))(v9, 1, v1))
    {
      sub_199B58890(v9, v5, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      sub_199A79A04(v9, &unk_1EAF74FB8);
      v13 = v5[*(v1 + 20)];
      sub_199B588F8(v5, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      v11 = sub_199AA9278(v10, v13);
      return v11 & 1;
    }

    sub_199A79A04(v9, &unk_1EAF74FB8);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_199B552DC@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = sub_199DF883C();
  if (*(*(v1 + 8) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat))
  {
    v9 = 0x4020000000000000;
  }

  else
  {
    v9 = 0x4018000000000000;
  }

  if (v8)
  {
    v15 = sub_199DF8CFC();
    v16 = v9;
    v17 = 0;
    sub_199B599F0();
  }

  else
  {
    v15 = sub_199DF8D4C();
    v16 = v9;
    v17 = 0;
    sub_199B598F0();
  }

  v10 = sub_199DF9BBC();
  sub_199B58890(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  result = sub_199B58478(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  *a1 = sub_199B59944;
  a1[1] = v12;
  return result;
}

uint64_t sub_199B5548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  sub_199B58890(a2, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_199B58478(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton);
  v14 = a3;
  v15 = a2;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75968);
  sub_199B59A7C();
  return sub_199DF989C();
}

uint64_t sub_199B55610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  v18 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v24[1] = 0;
  v19 = v18;
  sub_199DF842C();
  v20 = a1 + *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0) + 24);
  v21 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  if (!*(v20 + *(v21 + 20)))
  {
    v24[0] = v19;
    sub_199DF728C();
    v22 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
    *&v17[*(v22 + 20)] = 1;
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199AAD408(v17, v13, &qword_1EAF74FC8);
    sub_199DF842C();
    sub_199A79A04(v17, &qword_1EAF74FC8);
  }

  sub_199B58890(v20, v9, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199AAD408(v9, v5, &unk_1EAF74FB8);
  v19;
  sub_199DF842C();
  sub_199B2BC48();
  return sub_199A79A04(v9, &unk_1EAF74FB8);
}

__n128 sub_199B55938@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75970);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v18 - v10;
  *(v18 - v10) = a1;
  v13 = *(v12 + 52);

  sub_199B55B30(a2, a3, &v11[v13]);
  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  if (sub_199DF883C())
  {
    sub_199DF869C();
  }

  if (sub_199DF883C())
  {
    sub_199DF9B6C();
  }

  else
  {
    sub_199DF9B5C();
  }

  sub_199DF897C();
  sub_199AB7794(v11, a4, &qword_1EAF75970);
  v14 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75968) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_199B55B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75988);
  MEMORY[0x1EEE9AC00](v71, v5);
  v72 = v6;
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75990);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v68 - v13);
  *v14 = sub_199DF9B5C();
  v14[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75998);
  sub_199B561B8(a1, a2, v14 + *(v16 + 44));
  v17 = sub_199DF9B5C();
  v70 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759A0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v68 - v21;
  v23 = sub_199B55080();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759A8);
  v26 = v24;
  v27 = *(v24 - 8);
  if (v23)
  {
    v68 = &v68;
    MEMORY[0x1EEE9AC00](v24, v25);
    v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_199DF85FC();
    v30 = sub_199DF971C();
    v69 = v14;
    v31 = v30;
    KeyPath = swift_getKeyPath();
    v33 = &v29[*(v26 + 36)];
    *v33 = KeyPath;
    v33[1] = v31;
    v14 = v69;
    sub_199AB7794(v29, v22, &qword_1EAF759A8);
    (*(v27 + 56))(v22, 0, 1, v26);
  }

  else
  {
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  }

  v34 = v14 + *(v11 + 36);
  sub_199AB7794(v22, v34, &qword_1EAF759A0);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759B0) + 36));
  v36 = v70;
  *v35 = v17;
  v35[1] = v36;
  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  if (sub_199DF883C())
  {
    sub_199DF869C();
  }

  sub_199DF9B5C();
  sub_199DF897C();
  sub_199AB7794(v14, v10, &qword_1EAF75990);
  v37 = &v10[*(v71 + 36)];
  v38 = v82;
  *(v37 + 4) = v81;
  *(v37 + 5) = v38;
  *(v37 + 6) = v83;
  v39 = v78;
  *v37 = v77;
  *(v37 + 1) = v39;
  v40 = v80;
  *(v37 + 2) = v79;
  *(v37 + 3) = v40;
  v41 = v73;
  sub_199AB7794(v10, v73, &qword_1EAF75988);
  v75 = sub_199AA9D28();
  v76 = v42;
  sub_199A9C458();
  v43 = sub_199DF93CC();
  v45 = v44;
  v47 = v46;
  v48 = [objc_opt_self() labelColor];
  sub_199DF969C();
  v49 = sub_199DF933C();
  v51 = v50;
  v53 = v52;

  sub_199ACE3E8(v43, v45, v47 & 1);

  sub_199DF92EC();
  v54 = sub_199DF939C();
  v56 = v55;
  v58 = v57;
  v60 = v59;

  sub_199ACE3E8(v49, v51, v53 & 1);

  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v68 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v41, v64, &qword_1EAF75988);
  v65 = v74;
  sub_199AAD408(v64, v74, &qword_1EAF75988);
  v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759B8) + 48);
  *v66 = v54;
  *(v66 + 8) = v56;
  v58 &= 1u;
  *(v66 + 16) = v58;
  *(v66 + 24) = v60;
  sub_199ACE3F8(v54, v56, v58);
  sub_199DF81AC();
  sub_199A79A04(v41, &qword_1EAF75988);
  sub_199ACE3E8(v54, v56, v58);

  return sub_199A79A04(v64, &qword_1EAF75988);
}

uint64_t sub_199B561B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74640);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v125 = &v109 - v7;
  v121 = sub_199DF9F4C();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v8);
  v119 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759C0);
  MEMORY[0x1EEE9AC00](v127, v10);
  v12 = &v109 - v11;
  v123 = sub_199DF96AC();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v13);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759C8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v109 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759D0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v109 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759D8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v128 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v130 = &v109 - v30;
  v124 = *(a1 + 8);
  if (*(v124 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat) == 1)
  {
    v115 = v17;
    v116 = v16;
    v117 = a2;
    v112 = sub_199DF896C();
    v31 = *(v112 + 20);
    v32 = *MEMORY[0x1E697F468];
    v33 = sub_199DF8D1C();
    v34 = *(*(v33 - 8) + 104);
    v111 = v32;
    v110 = v34;
    v34(&v24[v31], v32, v33);
    __asm { FMOV            V0.2D, #16.0 }

    v109 = _Q0;
    *v24 = _Q0;
    *&v126 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
    v40 = sub_199AAA0C0();
    v41 = a1;
    KeyPath = swift_getKeyPath();
    v43 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759E8) + 36)];
    *v43 = KeyPath;
    v43[1] = v40;
    v114 = sub_199DF9B5C();
    v113 = v44;
    v45 = &v24[*(v21 + 36)];
    v118 = v41;
    if (sub_199B55080())
    {
      (*(v122 + 104))(v15, *MEMORY[0x1E69814D8], v123);
      v46 = sub_199DF979C();
      v47 = v116;
      v48 = v20 + *(v116 + 36);
      v110(&v48[*(v112 + 20)], v111, v33);
      *v48 = v109;
      *&v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C10) + 36)] = 256;
      *v20 = v46;
      sub_199AB7794(v20, v45, &qword_1EAF759C8);
      v49 = 0;
    }

    else
    {
      v49 = 1;
      v47 = v116;
    }

    (*(v115 + 56))(v45, v49, 1, v47);
    v57 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759F0) + 36));
    v58 = v113;
    *v57 = v114;
    v57[1] = v58;
    sub_199AAD408(v24, v12, &qword_1EAF759D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759E0);
    sub_199B59BEC();
    sub_199B59D8C();
    sub_199DF8EDC();
    sub_199A79A04(v24, &qword_1EAF759D0);
    a1 = v118;
  }

  else
  {
    *&v126 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
    v50 = sub_199AAA0C0();
    v51 = swift_getKeyPath();
    v52 = sub_199DF9B5C();
    v54 = v53;
    if (sub_199B55080())
    {
      (*(v122 + 104))(v15, *MEMORY[0x1E69814D8], v123);
      v55 = sub_199DF979C();
      v56 = 256;
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    *v12 = v51;
    *(v12 + 1) = v50;
    *(v12 + 2) = v55;
    *(v12 + 12) = v56;
    *(v12 + 4) = v52;
    *(v12 + 5) = v54;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759E0);
    sub_199B59BEC();
    sub_199B59D8C();
    sub_199DF8EDC();
  }

  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  v59 = a1 + *(v126 + 24);
  if (*(v59 + *(type metadata accessor for CNWallpaperSuggestionsGallerySource(0) + 20)) == 3)
  {
  }

  else
  {
    v60 = sub_199DFA99C();

    if ((v60 & 1) == 0)
    {
      v90 = v125;
      v91 = sub_199DF97EC();
      sub_199DF869C();
      sub_199B54F9C();
      sub_199DF925C();
      v92 = sub_199DF922C();
      (*(*(v92 - 8) + 56))(v90, 1, 1, v92);
      v93 = sub_199DF928C();
      sub_199A79A04(v90, &unk_1EAF74640);
      v94 = swift_getKeyPath();
      v95 = sub_199AA9EB0();
      v96 = swift_getKeyPath();
      v131 = v91;
      v132 = v94;
      v133 = v93;
      v134 = v96;
      v135 = v95;
      v136 = 1;
      goto LABEL_18;
    }
  }

  v61 = *(v124 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact);
  v62 = objc_opt_self();
  v63 = v61;
  v64 = [v62 abbreviatedStringFromContact:v63 trimmingWhitespace:1];
  if (v64)
  {
    v65 = v64;
    v66 = sub_199DF9F8C();
    v68 = v67;

    v63 = v65;
  }

  else
  {
    v69 = v119;
    sub_199DF9EEC();
    v66 = sub_199AA8A84(v69, MEMORY[0x1E69E7CC0]);
    v68 = v70;
    (*(v120 + 8))(v69, v121);
  }

  *&v137 = v66;
  *(&v137 + 1) = v68;
  sub_199A9C458();
  v71 = sub_199DF93CC();
  v73 = v72;
  v75 = v74;
  sub_199DF869C();
  sub_199B54F9C();
  sub_199DF923C();
  v76 = *MEMORY[0x1E6980E28];
  v77 = sub_199DF922C();
  v78 = *(v77 - 8);
  v79 = v125;
  (*(v78 + 104))(v125, v76, v77);
  (*(v78 + 56))(v79, 0, 1, v77);
  sub_199DF928C();
  sub_199A79A04(v79, &unk_1EAF74640);
  v80 = sub_199DF939C();
  v82 = v81;
  LOBYTE(v78) = v83;

  sub_199ACE3E8(v71, v73, v75 & 1);

  sub_199AA9EB0();
  v84 = sub_199DF933C();
  v86 = v85;
  LOBYTE(v73) = v87;
  v89 = v88;

  sub_199ACE3E8(v80, v82, v78 & 1);

  v131 = v84;
  v132 = v86;
  v133 = v73 & 1;
  v134 = v89;
  v135 = 0;
  v136 = 0;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A08);
  sub_199B59F50();
  sub_199DF8EDC();
  v127 = v138;
  v126 = v137;
  v97 = v139;
  v98 = v140;
  v99 = v130;
  v100 = v128;
  sub_199AAD408(v130, v128, &qword_1EAF759D8);
  v101 = v129;
  sub_199AAD408(v100, v129, &qword_1EAF759D8);
  v102 = v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A18) + 48);
  v103 = v127;
  v104 = v126;
  *v102 = v126;
  *(v102 + 16) = v103;
  *(v102 + 32) = v97;
  *(v102 + 40) = v98;
  v105 = v104;
  v106 = v103;
  v107 = *(&v103 + 1);
  sub_199B5A0C0(v104, *(&v104 + 1), v103, *(&v103 + 1), v97, v98);
  sub_199A79A04(v99, &qword_1EAF759D8);
  sub_199B5A158(v105, *(&v105 + 1), v106, v107, v97, v98);
  return sub_199A79A04(v100, &qword_1EAF759D8);
}

double sub_199B56F6C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_199B56FEC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF81AC();
  v3 = v2;
  return sub_199DF842C();
}

uint64_t sub_199B570BC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_199DF842C();
}

uint64_t sub_199B57128()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();
}

uint64_t sub_199B571A4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  sub_199AAD408(a1, &v14 - v10, &unk_1EAF74FB8);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199AAD408(v11, v7, &unk_1EAF74FB8);
  v12;
  sub_199DF842C();
  sub_199B2BC48();
  return sub_199A79A04(v11, &unk_1EAF74FB8);
}

uint64_t sub_199B5732C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_199DF842C();
}

id sub_199B5739C(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v61 = a2;
  v57 = __PAIR64__(a6, a5);
  v12 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v59 = &v57 - v18;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757E0);
  MEMORY[0x1EEE9AC00](v58, v19);
  v60 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v57 - v23;
  swift_unknownObjectWeakInit();
  LOBYTE(v67) = 0;
  v25 = a4;
  swift_unknownObjectRetain();
  sub_199DF983C();
  v26 = v65;
  v15[88] = v64;
  *(v15 + 12) = v26;
  v67 = 0;
  v68 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74540);
  sub_199DF983C();
  v27 = v65;
  v28 = v66;
  *(v15 + 13) = v64;
  v15[112] = v27;
  *(v15 + 15) = v28;
  *(v15 + 16) = swift_getKeyPath();
  v15[136] = 0;
  v29 = v12[12];
  *&v15[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30);
  swift_storeEnumTagMultiPayload();
  v30 = objc_allocWithZone(type metadata accessor for CNWallpaperSuggestionsGalleryViewModel());
  v31 = v25;
  sub_199B2F998(v31, a3 != 0, a7, a8);

  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel);
  *(v15 + 1) = sub_199DF87AC();
  *(v15 + 2) = v32;
  swift_unknownObjectWeakAssign();
  v33 = BYTE4(v57);
  v15[v12[13]] = v57;
  v15[v12[14]] = v33;
  v34 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v35 = [v31 givenName];
  if (!v35)
  {
    sub_199DF9F8C();
    v35 = sub_199DF9F5C();
  }

  [v34 setGivenName_];

  v36 = [v31 familyName];
  if (!v36)
  {
    sub_199DF9F8C();
    v36 = sub_199DF9F5C();
  }

  [v34 setFamilyName_];

  v15[v12[15]] = [objc_opt_self() nameOrderForContact_] == 1;
  v37 = [v31 givenName];
  v38 = sub_199DF9F8C();
  v40 = v39;

  *(v15 + 3) = v38;
  *(v15 + 4) = v40;
  *(v15 + 5) = 0;
  v41 = [v31 familyName];
  v42 = sub_199DF9F8C();
  v44 = v43;

  *(v15 + 6) = v42;
  *(v15 + 7) = v44;
  *(v15 + 8) = 0;
  [v31 mutableCopy];
  sub_199DFA66C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_199A7A02C(0, &qword_1EAF710A0);
  swift_dynamicCast();
  *(v15 + 9) = v67;
  *(v15 + 10) = 0;
  v45 = v59;
  sub_199B58478(v15, v59, type metadata accessor for CNWallpaperSuggestionsGallery);
  KeyPath = swift_getKeyPath();
  sub_199B58478(v45, v24, type metadata accessor for CNWallpaperSuggestionsGallery);
  v47 = &v24[*(v58 + 36)];
  v49 = v60;
  v48 = v61;
  *v47 = KeyPath;
  v47[1] = v48;
  sub_199AAD408(v24, v49, &qword_1EAF757E0);
  v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757E8));
  v51 = v48;
  v52 = sub_199DF8DFC();
  v53 = v62;
  *&v62[OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController] = v52;
  v54 = type metadata accessor for CNWallpaperSuggestionsGalleryViewWrapper();
  v63.receiver = v53;
  v63.super_class = v54;
  v55 = objc_msgSendSuper2(&v63, sel_init);
  sub_199A79A04(v24, &qword_1EAF757E0);
  return v55;
}

void sub_199B57A2C()
{
  sub_199B4C8B0();
  if (v0 <= 0x3F)
  {
    sub_199B594A0(319, &qword_1EAF711D0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_199B57C10();
      if (v2 <= 0x3F)
      {
        sub_199B594A0(319, &qword_1EAF711C0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_199B594F0(319, &qword_1EAF711D8, &qword_1EAF74540, &unk_199E3D4D0, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_199B594F0(319, &qword_1EAF713E0, &qword_1EAF72E80, &unk_199E398B0, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_199B57C78(319, &qword_1EAF713F0, MEMORY[0x1E697E730]);
              if (v6 <= 0x3F)
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

void sub_199B57C10()
{
  if (!qword_1EAF711B0)
  {
    sub_199A7A02C(255, &qword_1EAF710A0);
    v0 = sub_199DF987C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF711B0);
    }
  }
}

void sub_199B57C78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_199DF859C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_199B57CFC()
{
  result = qword_1EAF757F0;
  if (!qword_1EAF757F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF757F0);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  MEMORY[0x19A8FA290](v0 + v3);

  sub_199AC6288(*(v5 + 128), *(v5 + 136));
  v6 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF884C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B57EEC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_199B516A8(a1, a2, v6);
}

unint64_t sub_199B57F6C()
{
  result = qword_1EAF71850;
  if (!qword_1EAF71850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74FB8);
    sub_199B58020(&qword_1EAF71880, type metadata accessor for CNWallpaperSuggestionsGallerySource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71850);
  }

  return result;
}

uint64_t sub_199B58020(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_199B58098()
{
  result = qword_1EAF71040;
  if (!qword_1EAF71040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF740A0);
    sub_199B58134(&qword_1EAF71038, &qword_1EAF71048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71040);
  }

  return result;
}

uint64_t sub_199B58134(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_199A7A02C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_199B5819C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_199B58230()
{
  result = qword_1EAF71718;
  if (!qword_1EAF71718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74FD0);
    sub_199B582B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71718);
  }

  return result;
}

unint64_t sub_199B582B4()
{
  result = qword_1EAF71728;
  if (!qword_1EAF71728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71728);
  }

  return result;
}

uint64_t sub_199B58338(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_199B583E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_199B58478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_199B584E8()
{
  result = qword_1EAF71320;
  if (!qword_1EAF71320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75848);
    sub_199B58574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71320);
  }

  return result;
}

unint64_t sub_199B58574()
{
  result = qword_1EAF713A0;
  if (!qword_1EAF713A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75850);
    sub_199AA0B90(&qword_1EAF713C0, &qword_1EAF75858);
    sub_199AA0B90(&qword_1EAF71140, &qword_1EAF75860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF713A0);
  }

  return result;
}

uint64_t sub_199B58658()
{
  type metadata accessor for CNWallpaperSuggestionsGallery(0);
  sub_199DF86BC();

  return sub_199B51310();
}

unint64_t sub_199B5873C()
{
  result = qword_1EAF712E8;
  if (!qword_1EAF712E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75840);
    sub_199AA0B90(&qword_1EAF71408, &qword_1EAF75840);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712E8);
  }

  return result;
}

uint64_t sub_199B58820(char *a1)
{
  v3 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199B51534(a1, v4);
}

uint64_t sub_199B58890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B588F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_199B589A0()
{
  sub_199B4C8B0();
  if (v0 <= 0x3F)
  {
    sub_199DF884C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_199B58A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_199B58AB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199B58B58()
{
  v0 = sub_199DF9F4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v5 = sub_199AA8A84(v4, MEMORY[0x1E69E7CC0]);
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_199B58C70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199B53104(v4, a1);
}

uint64_t objectdestroy_99Tm()
{
  v1 = (type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  MEMORY[0x19A8FA290](v0 + v3 + 16);
  v5 = v1[9];
  v6 = sub_199DF884C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B58DD0()
{
  v2 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_199AA7314;

  return sub_199B54120(v0 + v3);
}

uint64_t sub_199B58EC8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_199B58F80@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_199B53E64(a1, v6, a2);
}

unint64_t sub_199B59000()
{
  result = qword_1EAF758E8;
  if (!qword_1EAF758E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF758E0);
    sub_199B58020(&qword_1EAF71948, type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton);
    sub_199AA0B90(&qword_1EAF758F0, &qword_1EAF758F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF758E8);
  }

  return result;
}

unint64_t sub_199B59108()
{
  result = qword_1EAF71720;
  if (!qword_1EAF71720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71720);
  }

  return result;
}

unint64_t sub_199B5915C()
{
  result = qword_1EAF71348;
  if (!qword_1EAF71348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75938);
    sub_199B4152C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71348);
  }

  return result;
}

uint64_t objectdestroy_126Tm()
{

  sub_199AC6288(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

void sub_199B5934C()
{
  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel();
  if (v0 <= 0x3F)
  {
    sub_199DF884C();
    if (v1 <= 0x3F)
    {
      sub_199B594A0(319, &qword_1EAF713F8, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_199B57C78(319, &qword_1EAF713E8, MEMORY[0x1E697E7E0]);
        if (v3 <= 0x3F)
        {
          sub_199B594F0(319, &qword_1EAF711A8, &qword_1EAF75908, &unk_199E41318, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_199B594A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_199B594F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_199B5957C()
{
  sub_199B4C8B0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CNWallpaperSuggestionsGallerySource(319);
    if (v1 <= 0x3F)
    {
      sub_199DF884C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_199B59624()
{
  result = qword_1EAF71340;
  if (!qword_1EAF71340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75890);
    sub_199AA0B90(qword_1EAF71748, &qword_1EAF75950);
    sub_199B596DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71340);
  }

  return result;
}

unint64_t sub_199B596DC()
{
  result = qword_1EAF713A8;
  if (!qword_1EAF713A8)
  {
    sub_199DF871C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF713A8);
  }

  return result;
}

unint64_t sub_199B59728()
{
  result = qword_1EAF71230;
  if (!qword_1EAF71230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75938);
    sub_199A7A02C(255, &qword_1EAF710A0);
    sub_199B5915C();
    sub_199B58134(&qword_1EAF71098, &qword_1EAF710A0);
    swift_getOpaqueTypeConformance2();
    sub_199B121E8();
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71180, &qword_1EAF75930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71230);
  }

  return result;
}

unint64_t sub_199B598F0()
{
  result = qword_1EAF713B0;
  if (!qword_1EAF713B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF713B0);
  }

  return result;
}

uint64_t sub_199B59944(uint64_t a1)
{
  v3 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_199B5548C(a1, v1 + v4, v5);
}

unint64_t sub_199B599F0()
{
  result = qword_1EAF75960;
  if (!qword_1EAF75960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75960);
  }

  return result;
}

unint64_t sub_199B59A7C()
{
  result = qword_1EAF71318;
  if (!qword_1EAF71318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75968);
    sub_199B59B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71318);
  }

  return result;
}

unint64_t sub_199B59B08()
{
  result = qword_1EAF71398;
  if (!qword_1EAF71398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75970);
    sub_199AA0B90(&qword_1EAF713B8, &qword_1EAF75978);
    sub_199AA0B90(&qword_1EAF71138, &qword_1EAF75980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71398);
  }

  return result;
}

unint64_t sub_199B59BEC()
{
  result = qword_1EAF712B0;
  if (!qword_1EAF712B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF759D0);
    sub_199B59CA4();
    sub_199AA0B90(&qword_1EAF71248, &qword_1EAF759F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712B0);
  }

  return result;
}

unint64_t sub_199B59CA4()
{
  result = qword_1EAF71310;
  if (!qword_1EAF71310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF759E8);
    sub_199B58020(&qword_1EAF71250, MEMORY[0x1E697EAF0]);
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71310);
  }

  return result;
}

unint64_t sub_199B59D8C()
{
  result = qword_1EAF71278;
  if (!qword_1EAF71278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF759E0);
    sub_199B59E44();
    sub_199AA0B90(&qword_1EAF71240, &qword_1EAF75A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71278);
  }

  return result;
}

unint64_t sub_199B59E44()
{
  result = qword_1EAF712D0;
  if (!qword_1EAF712D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF759F8);
    sub_199B59EFC();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712D0);
  }

  return result;
}

unint64_t sub_199B59EFC()
{
  result = qword_1EAF71198;
  if (!qword_1EAF71198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71198);
  }

  return result;
}

unint64_t sub_199B59F50()
{
  result = qword_1EAF71280;
  if (!qword_1EAF71280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A08);
    sub_199B5A008();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71280);
  }

  return result;
}

unint64_t sub_199B5A008()
{
  result = qword_1EAF712D8;
  if (!qword_1EAF712D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A10);
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712D8);
  }

  return result;
}

uint64_t sub_199B5A0C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_199ACE3F8(a1, a2, a3 & 1);

    return sub_199DF81AC();
  }
}

uint64_t sub_199B5A158(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_199ACE3E8(a1, a2, a3 & 1);
  }
}

uint64_t sub_199B5A218(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_199B5A29C()
{
  result = qword_1EAF75A30;
  if (!qword_1EAF75A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A28);
    sub_199B5A320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A30);
  }

  return result;
}

unint64_t sub_199B5A320()
{
  result = qword_1EAF75A38;
  if (!qword_1EAF75A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A40);
    sub_199AD5A34();
    sub_199AA0B90(&qword_1EAF758F0, &qword_1EAF758F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A38);
  }

  return result;
}

uint64_t objectdestroy_202Tm()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  MEMORY[0x19A8FA290](v0 + v3 + 8);
  v6 = v1[7];
  v7 = sub_199DF884C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  sub_199AC6290(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_199DF886C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B5A578()
{
  v2 = *(type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_199AA7688;

  return sub_199B54A50(v0 + v3);
}

unint64_t sub_199B5A644()
{
  result = qword_1EAF75A68;
  if (!qword_1EAF75A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A50);
    sub_199B5A6D0();
    sub_199B5A808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A68);
  }

  return result;
}

unint64_t sub_199B5A6D0()
{
  result = qword_1EAF75A70;
  if (!qword_1EAF75A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A20);
    sub_199B5A75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A70);
  }

  return result;
}

unint64_t sub_199B5A75C()
{
  result = qword_1EAF75A78;
  if (!qword_1EAF75A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A48);
    sub_199AA0B90(&qword_1EAF75A80, &qword_1EAF75A88);
    sub_199B596DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A78);
  }

  return result;
}

unint64_t sub_199B5A808()
{
  result = qword_1EAF75A90;
  if (!qword_1EAF75A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A90);
  }

  return result;
}

id sub_199B5A864(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing] = 0;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_scrollDirection] = 1;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cardSizeMultiplier] = 0x3FE6666666666666;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_maximumVerticalRevealFraction] = 0x3FD0000000000000;
  v5 = &v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes] = v6;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgresses] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete] = v6;
  v7 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_indexPathToMaintainForTransition;
  v8 = sub_199DF738C();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_mode] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewLayout();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_199B5A9EC()
{
  v1 = v0;
  v23 = sub_199DF738C();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v2);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_199DF72CC();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B18);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  sub_199DF72DC();
  v12 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete;
  sub_199DF72FC();
  sub_199B5EB10(&qword_1EAF75B20, MEMORY[0x1E6969B50]);
  v24 = v0;
  ++v25;
  v22 = v26 + 32;
  while (1)
  {
    sub_199DFA2BC();
    sub_199B5EB10(&qword_1EAF75B28, MEMORY[0x1E6969B18]);
    v13 = sub_199DF9EDC();
    (*v25)(v7, v4);
    if (v13)
    {
      break;
    }

    v14 = sub_199DFA2DC();
    v16 = *v15;
    v14(v28, 0);
    sub_199DFA2CC();
    MEMORY[0x19A8F5130](v16, 0);
    v17 = *(v1 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v12) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_199AB2B7C(0, v17[2] + 1, 1, v17);
      *(v1 + v12) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_199AB2B7C(v19 > 1, v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    (*(v26 + 32))(v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20, v27, v23);
    v1 = v24;
    *(v24 + v12) = v17;
  }

  return sub_199A79A04(v11, &qword_1EAF75B18);
}