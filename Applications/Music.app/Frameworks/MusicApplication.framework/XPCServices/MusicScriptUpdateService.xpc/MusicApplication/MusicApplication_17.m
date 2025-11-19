uint64_t sub_1001ADD7C(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 descriptionText];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v9 = v6;
        v10 = [v12 descriptionText];
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v9 = v6;
          v10 = [v14 descriptionText];
          if (!v10)
          {
LABEL_13:

            v16 = 0;
            v18 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v19 = result;
          v9 = v6;
          v10 = [v19 descriptionText];
          if (!v10)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v15 = v10;
    v16 = sub_1004BBE64();
    v18 = v17;

LABEL_14:
    *a2 = v16;
    a2[1] = v18;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4644;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5B00;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4680;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5B78;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.duration.getter()
{
  v9 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B46AC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5BF0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

id sub_1001AE424(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result duration];
      *a2 = v6;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.editorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B46B4;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B5C68;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_1001AE66C(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = [v10 *a3];
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v11 = v8;
        v12 = [v14 *a3];
        if (!v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          v11 = v8;
          v12 = [v16 *a3];
          if (!v12)
          {
LABEL_13:

            v18 = 0;
            v20 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v21 = result;
          v11 = v8;
          v12 = [v21 *a3];
          if (!v12)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v17 = v12;
    v18 = sub_1004BBE64();
    v20 = v19;

LABEL_14:
    *a2 = v18;
    a2[1] = v20;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B46D8;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B5CE0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.episodeCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B46FC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5D58;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.explicitRating.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4728;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5DD0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_1001AECE0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result explicitRating];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.genreNames.getter()
{
  v16 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v16;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4730;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5E48;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v16 && (v8 = [v16 name]) != 0)
    {
      v9 = v8;
      v10 = sub_1004BBE64();
      v12 = v11;

      sub_100003ABC(&qword_100602EB0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1004C50A0;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v16;

    return v13;
  }

  return result;
}

void sub_1001AEFE0(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      v6 = [v5 genre];
      v7 = *a2;
      *a2 = v6;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.handle.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4738;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B5EC0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4764;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5F38;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4790;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B5FB0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1001AF580(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasStoreLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4798;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6028;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1001AF7E8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasTimeSyncedLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B47A0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B60A0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_1001AFA50(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result hasSocialPosts];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isExplicitContent.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B47A8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6118;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_1001AFC94(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          v6 = &selRef_isExplicitSong;
          goto LABEL_5;
        }

        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (!result)
        {
          return result;
        }
      }
    }

    v6 = &selRef_hasExplicitContent;
LABEL_5:
    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B47B0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6190;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_1001AFF24(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result traits];
      *a2 = result & 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPreorder.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B47B8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6208;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B47E4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6280;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4810;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B62F8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B483C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6370;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_1001B0658(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result hasLightweightProfile];
      *a2 = result ^ 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.itemKind.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4844;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B63E8;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void sub_1001B086C(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v5;
      v10 = [v8 curatorKind];
      if (v10 <= 1)
      {
        if (!v10)
        {

          return;
        }

        if (v10 == 1)
        {
          goto LABEL_22;
        }
      }

      else if (v10 == 2 || v10 == 3 || v10 == 4)
      {
        goto LABEL_22;
      }

      sub_1004BD404(24);
      v16._countAndFlagsBits = 0xD000000000000013;
      v16._object = 0x80000001004FEA90;
      sub_1004BC024(v16);
      v17._object = 0x8000000100502CF0;
      v17._countAndFlagsBits = 0xD000000000000012;
      sub_1004BC024(v17);
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      sub_1004BC024(v18);
      type metadata accessor for MPModelCuratorKind(0);
      sub_1004BD5C4();
      sub_1004BD624();
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v9 = v5;
      [v15 isArtistUploadedContent];
      [v15 hasVideo];
LABEL_22:
      v11 = sub_1004BBE64();
      v13 = v12;

      *a2 = v11;
      a2[1] = v13;
      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
LABEL_4:
      *a2 = sub_1004BBE64();
      a2[1] = v6;
LABEL_5:
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B6CD4();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001B484C;
  *(v6 + 24) = v5;
  v11[4] = sub_1000E639C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100008224;
  v11[3] = &unk_1005B6460;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1001B0E3C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_1004B6F34();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_100603110);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_1004B67C4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (v18)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = v18;
      v22 = [v20 lastModifiedDateComponents];
      if (v22)
      {
        v23 = v22;
        sub_1004B6784();

        (*(v11 + 32))(v16, v14, v10);
        v24 = [objc_opt_self() storeServerCalendar];
        sub_1004B6ED4();

        sub_1004B6EE4();
        (*(v4 + 8))(v6, v3);
        (*(v11 + 8))(v16, v10);
        sub_100047A5C(v9, v25, &qword_100603110);
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.movementCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4854;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B64D8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4880;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B6550;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B48AC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B65C8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.name.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B48D8;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B6640;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_1001B1770(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
LABEL_15:
      v12 = v7;
      v10 = v6;
      v11 = [v12 title];
LABEL_16:
      v13 = v11;
      if (v13)
      {
LABEL_17:
        v14 = v13;
LABEL_18:
        v15 = sub_1004BBE64();
        v17 = v16;

LABEL_27:
        *a2 = v15;
        a2[1] = v17;
      }

      goto LABEL_25;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (!v8)
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (!v8)
            {
              objc_opt_self();
              v7 = swift_dynamicCastObjCClass();
              if (!v7)
              {
                objc_opt_self();
                v7 = swift_dynamicCastObjCClass();
                if (!v7)
                {
                  objc_opt_self();
                  v18 = swift_dynamicCastObjCClass();
                  if (v18)
                  {
                    v19 = v18;
                    v10 = v6;
                    v20 = [v19 show];
                    v15 = v20;
                    if (!v20)
                    {

                      goto LABEL_26;
                    }

                    v14 = [v20 title];

                    if (v14)
                    {
                      goto LABEL_18;
                    }
                  }

                  else
                  {
                    objc_opt_self();
                    result = swift_dynamicCastObjCClass();
                    if (!result)
                    {
                      return result;
                    }

                    v21 = result;
                    v10 = v6;
                    v13 = [v21 title];
                    if (v13)
                    {
                      goto LABEL_17;
                    }
                  }

LABEL_25:

                  v15 = 0;
LABEL_26:
                  v17 = 0;
                  goto LABEL_27;
                }
              }

              goto LABEL_15;
            }
          }
        }
      }
    }

    v9 = v8;
    v10 = v6;
    v11 = [v9 name];
    goto LABEL_16;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.nameRaw.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B48E0;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B66B8;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

Class sub_1001B1CAC(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_100003ABC(&qword_100603110);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  a3();

  v9 = sub_1004B6CD4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = sub_1004B6C34().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

uint64_t ModelObjectBackedStoreItemMetadata.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B6CD4();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001B490C;
  *(v6 + 24) = v5;
  v11[4] = sub_1000E639C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100008224;
  v11[3] = &unk_1005B6730;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B1F80(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = sub_1004B67C4();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_100605190);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v65 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v65 - v13;
  __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v17 = sub_100003ABC(&qword_100603110);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v65 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v65 - v25;
  __chkstk_darwin(v24);
  v28 = &v65 - v27;
  v29 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v31 = *(a1 + v29);
  if (v31)
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      v34 = v31;
      v35 = [v33 releaseDateComponents];
      if (v35)
      {
        v36 = v35;
        sub_1004B6784();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v45 = v67;
      v44 = v68;
      (*(v67 + 56))(v14, v37, 1, v68);
      sub_1001B4A90(v14, v16);
      if ((*(v45 + 48))(v16, 1, v44))
      {

        sub_100007214(v16, &qword_100605190);
        v46 = sub_1004B6CD4();
        (*(*(v46 - 8) + 56))(v28, 1, 1, v46);
      }

      else
      {
        v47 = v66;
        (*(v45 + 16))(v66, v16, v44);
        sub_100007214(v16, &qword_100605190);
        sub_1004B67A4();

        (*(v45 + 8))(v47, v44);
      }

      v23 = v28;
    }

    else
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        v40 = v31;
        v41 = [v39 releaseDateComponents];
        if (v41)
        {
          v42 = v41;
          sub_1004B6784();

          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        v55 = v67;
        v54 = v68;
        (*(v67 + 56))(v8, v43, 1, v68);
        sub_1001B4A90(v8, v11);
        if ((*(v55 + 48))(v11, 1, v54))
        {

          sub_100007214(v11, &qword_100605190);
          v56 = sub_1004B6CD4();
          (*(*(v56 - 8) + 56))(v26, 1, 1, v56);
        }

        else
        {
          v57 = v66;
          (*(v55 + 16))(v66, v11, v54);
          sub_100007214(v11, &qword_100605190);
          sub_1004B67A4();

          (*(v55 + 8))(v57, v54);
        }

        v23 = v26;
      }

      else
      {
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          v49 = v48;
          v50 = v31;
          v51 = [v49 releaseDate];
          if (v51)
          {
            v52 = v51;
            sub_1004B6C94();

            v53 = 0;
            v50 = v52;
          }

          else
          {
            v53 = 1;
          }

          v63 = sub_1004B6CD4();
          (*(*(v63 - 8) + 56))(v23, v53, 1, v63);
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v58 = result;
          v59 = v31;
          v60 = [v58 releaseDate];
          if (v60)
          {
            v61 = v60;
            sub_1004B6C94();

            v62 = 0;
            v59 = v61;
          }

          else
          {
            v62 = 1;
          }

          v64 = sub_1004B6CD4();
          (*(*(v64 - 8) + 56))(v20, v62, 1, v64);
          v23 = v20;
        }
      }
    }

    return sub_100047A5C(v23, v69, &qword_100603110);
  }

  return result;
}

id sub_1001B2654(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v12);

  v5 = v13;
  if (v13)
  {
    v6 = sub_100009178(v12, v13);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1004BD9A4();
    (*(v7 + 8))(v9, v5);
    sub_100004C6C(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ModelObjectBackedStoreItemMetadata.socialProfileID.getter@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1001B4914;
  *(v5 + 24) = v4;
  v10[4] = sub_1000E639C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100008224;
  v10[3] = &unk_1005B67A8;
  v6 = _Block_copy(v10);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B2904(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = (a1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
      swift_beginAccess();
      v7 = v6[1];
      if (v7)
      {
        v8 = *v6;
        v9 = &type metadata for String;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10[2] = 0;
      }

      v10[0] = v8;
      v10[1] = v7;
      v10[3] = v9;

      return sub_100047A5C(v10, a2, &qword_100605110);
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.seasonNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B491C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6820;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1001B2B88(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 season];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 number];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.shortName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4924;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B6898;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_1001B2DD8(uint64_t a1, uint64_t *a2, uint64_t a3, SEL *a4, uint64_t a5, SEL *a6)
{
  v10 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v12 = *(a1 + v10);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v16 = [v14 *a4];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1004BBE64();
        v20 = v19;

LABEL_11:
        *a2 = v18;
        a2[1] = v20;
      }
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v21 = result;
      v22 = v12;
      v23 = [v21 *a6];
      if (v23)
      {
        v24 = v23;
        v18 = sub_1004BBE64();
        v20 = v25;

        goto LABEL_11;
      }
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  return result;
}

id sub_1001B2F38(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = a1;
  a3();

  v9 = sub_1004B6B04();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    sub_1004B6A44(v11);
    v14 = v13;
    (*(v10 + 8))(v7, v9);
    v12 = v14;
  }

  return v12;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B6B04();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001B4960;
  *(v6 + 24) = v5;
  v11[4] = sub_1000E639C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100008224;
  v11[3] = &unk_1005B6910;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.showComposer.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4984;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6988;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_1001B33B0(uint64_t a1, _BYTE *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.storeID.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = &type metadata for String;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[3] = v6;
}

uint64_t ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B49B0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6A00;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_1001B36E8(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = *(v7 + 16);
      v9 = v7;
      v10 = v5;
      v11 = v8(ObjectType, v9);

      *a2 = v11 & 1;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.trackCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B49B8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6A78;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_1001B394C(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.trackNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B49E4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000E639C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005B6AF0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_1001B3B7C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = &selRef_trackNumber;
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v6 = &selRef_episodeNumber;
    }

    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B6B04();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001B49EC;
  *(v6 + 24) = v5;
  v11[4] = sub_1000E639C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100008224;
  v11[3] = &unk_1005B6B68;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B3DE8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v11 = *(a1 + v9);
  if (v11)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v12 = result;
      v13 = v11;
      v14 = [v12 *a3];
      if (v14)
      {
        v15 = v14;
        sub_1004B6A94();

        v16 = 0;
        v13 = v15;
      }

      else
      {
        v16 = 1;
      }

      v17 = sub_1004B6B04();
      (*(*(v17 - 8) + 56))(v8, v16, 1, v17);
      return sub_100047A5C(v8, a2, &qword_100600DE0);
    }
  }

  return result;
}

id sub_1001B3F70(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1004BBE24();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ModelObjectBackedStoreItemMetadata.workName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001B4A10;
  *(v3 + 24) = v2;
  v9[4] = sub_1000E639C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100008224;
  v9[3] = &unk_1005B6BE0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_1001B4164(uint64_t a1, uint64_t *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v9 = *(a1 + v7);
  if (v9)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v10 = result;
      v11 = v9;
      v12 = [v10 *a4];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1004BBE64();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      *a2 = v14;
      a2[1] = v16;
    }
  }

  return result;
}

id ModelObjectBackedStoreItemMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001B4320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100003ABC(&qword_100603110);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  *&v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v10 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11.super.isa = sub_1004BBC24().super.isa;

  sub_1000F8B64(a3, v9);
  v12 = sub_1004B6CD4();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    isa = sub_1004B6C34().super.isa;
    (*(v13 + 8))(v9, v12);
  }

  v15 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v18.receiver = v4;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithStorePlatformDictionary:parentStoreItemMetadata:expirationDate:", v11.super.isa, a2, isa);

  sub_100007214(a3, &qword_100603110);
  return v16;
}

uint64_t sub_1001B44DC()
{

  return swift_deallocObject();
}

uint64_t sub_1001B451C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B4A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100605190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionMode.allowsMotion.getter()
{
  v1 = v0;
  v2 = sub_1004B7074();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MotionMode.off(_:))
  {
    return 0;
  }

  if (v6 == enum case for MotionMode.wifiOnly(_:))
  {
    v8 = [objc_opt_self() sharedMonitor];
    [v8 networkType];

    return ICEnvironmentNetworkTypeIsWiFi();
  }

  else if (v6 == enum case for MotionMode.on(_:))
  {
    return 1;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_1004BD404(24);

    v9 = 0xD00000000000001ELL;
    v10 = 0x8000000100502D30;
    sub_1001B4FFC();
    v11._countAndFlagsBits = sub_1004BD934();
    sub_1004BC024(v11);

    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

unint64_t sub_1001B4FFC()
{
  result = qword_100605198;
  if (!qword_100605198)
  {
    sub_1004B7074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605198);
  }

  return result;
}

id sub_1001B5054()
{
  type metadata accessor for NetworkMonitor();
  v0 = swift_allocObject();
  result = NetworkMonitor.init()();
  static NetworkMonitor.shared = v0;
  return result;
}

uint64_t NetworkMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkMonitor.init()();
  return v0;
}

uint64_t *NetworkMonitor.shared.unsafeMutableAddressor()
{
  if (qword_100600018 != -1)
  {
    swift_once();
  }

  return &static NetworkMonitor.shared;
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (qword_100600018 != -1)
  {
    swift_once();
  }
}

uint64_t NetworkMonitor.isOnline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_1001B521C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1001B529C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t NetworkMonitor.$isOnline.getter()
{
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t sub_1001B5384()
{
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t sub_1001B53FC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100605D10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

id NetworkMonitor.init()()
{
  v1 = sub_100003ABC(&qword_1006051A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - v3;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
    v8 = [result hasProperNetworkConditionsToShowCloudMedia];

    LOBYTE(aBlock[0]) = v8;
    sub_1004B8564();
    (*(v2 + 32))(v0 + v7, v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001B5908;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001B5910;
    aBlock[3] = &unk_1005B6C30;
    v13 = _Block_copy(aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B57EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1001B5824()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v1 = result;
      if (([result shouldProhibitMusicActionForCurrentNetworkConditions] & 1) == 0)
      {
        [v1 hasProperNetworkConditionsToShowCloudMedia];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      return sub_1004B85B4();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001B5910(uint64_t a1)
{
  v2 = sub_1004B65F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1004B65C4();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001B5A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_100003ABC(&qword_1006051A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_100003ABC(&qword_1006051A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor()
{
  result = qword_1006051D8;
  if (!qword_1006051D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B5B8C()
{
  sub_1001B5C1C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001B5C1C()
{
  if (!qword_100605D80)
  {
    v0 = sub_1004B85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100605D80);
    }
  }
}

uint64_t static Notice.variant(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v209 = a2;
  v3 = sub_1004BBDF4();
  __chkstk_darwin(v3 - 8);
  v214 = type metadata accessor for Notice.Thumbnail(0);
  v212 = *(v214 - 8);
  __chkstk_darwin(v214);
  v5 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&unk_100603F30);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v202 - v10;
  v12 = sub_100003ABC(&qword_100605260);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = (&v202 - v17);
  __chkstk_darwin(v16);
  v207 = (&v202 - v19);
  v20 = sub_1004B6E64();
  __chkstk_darwin(v20 - 8);
  v213 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004BBE14();
  v23 = *(v22 - 8);
  v210 = v22;
  v211 = v23;
  v24 = __chkstk_darwin(v22);
  v208 = &v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v202 - v26;
  v28 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v28);
  v30 = (&v202 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001B9170(a1, v30, type metadata accessor for Notice.Variant);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = *v30;
      v87 = v30[1];
      v89 = Notice.Variant.id.getter();
      v202 = v90;
      v203 = v89;
      if (v87)
      {
        v205 = v87;
        v206 = v88;
        v204 = 0x7265646C6F66;
        v91 = v214;
        v92 = v211;
        v93 = v212;
        v94 = v27;
        v95 = v209;
        v96 = v210;
        v97 = v208;
      }

      else
      {
        v94 = v27;
        sub_1004BBDA4();
        v96 = v210;
        v92 = v211;
        v97 = v208;
        (*(v211 + 16))(v208, v27, v210);
        v91 = v214;
        v93 = v212;
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v204 = 0x672E657261757173;
        v187 = qword_100617118;
        sub_1004B6DF4();
        v188 = sub_1004BBED4();
        v205 = v189;
        v206 = v188;
        (*(v92 + 8))(v27, v96);
        v95 = v209;
      }

      sub_1004BBDA4();
      (*(v92 + 16))(v97, v94, v96);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v190 = qword_100617118;
      sub_1004B6DF4();
      v214 = sub_1004BBED4();
      v192 = v191;
      (*(v92 + 8))(v94, v96);
      v193 = sub_1004BA344();
      v194 = v207;
      *v207 = v193;
      swift_storeEnumTagMultiPayload();
      v195 = *(v93 + 56);
      v195(v194, 0, 1, v91);
      v196 = type metadata accessor for Notice(0);
      v197 = v196[5];
      v195(v95 + v197, 1, 1, v91);
      v198 = (v95 + v196[7]);
      v183 = (v95 + v196[8]);
      v121 = v95 + v196[9];
      v122 = v95 + v196[10];
      v199 = v202;
      *v95 = v203;
      v95[1] = v199;
      result = sub_1001B8C90(v194, v95 + v197);
      v200 = (v95 + v196[6]);
      v201 = v205;
      *v200 = v206;
      v200[1] = v201;
      *v198 = v214;
      v198[1] = v192;
      goto LABEL_74;
    case 2u:
      v71 = *v30;
      v70 = v30[1];
      v72 = v30[2];
      v73 = Notice.Variant.id.getter();
      v203 = v74;
      v204 = v73;
      if (v72)
      {
        v205 = v72;
        v206 = v70;
        v76 = v210;
        v75 = v211;
        v77 = v27;
        v79 = v208;
        v78 = v209;
      }

      else
      {
        v77 = v27;
        sub_1004BBDA4();
        v76 = v210;
        v75 = v211;
        v79 = v208;
        (*(v211 + 16))(v208, v27, v210);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v165 = qword_100617118;
        sub_1004B6DF4();
        v166 = sub_1004BBED4();
        v205 = v167;
        v206 = v166;
        (*(v75 + 8))(v27, v76);
        v78 = v209;
      }

      sub_1004BBDE4();
      v218._countAndFlagsBits = 0;
      v218._object = 0xE000000000000000;
      sub_1004BBDD4(v218);
      v215 = v71;
      sub_1004BBDB4();
      v168._object = 0x8000000100502E20;
      v168._countAndFlagsBits = 0xD000000000000015;
      goto LABEL_65;
    case 3u:
      v83 = *v30;
      v82 = v30[1];
      v84 = v30[2];
      v85 = Notice.Variant.id.getter();
      v203 = v86;
      v204 = v85;
      if (v84)
      {
        v205 = v84;
        v206 = v82;
        v76 = v210;
        v75 = v211;
        v77 = v27;
        v79 = v208;
        v78 = v209;
      }

      else
      {
        v77 = v27;
        sub_1004BBDA4();
        v76 = v210;
        v75 = v211;
        v79 = v208;
        (*(v211 + 16))(v208, v27, v210);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v169 = qword_100617118;
        sub_1004B6DF4();
        v170 = sub_1004BBED4();
        v205 = v171;
        v206 = v170;
        (*(v75 + 8))(v27, v76);
        v78 = v209;
      }

      sub_1004BBDE4();
      v219._countAndFlagsBits = 0;
      v219._object = 0xE000000000000000;
      sub_1004BBDD4(v219);
      v215 = v83;
      sub_1004BBDB4();
      v168._countAndFlagsBits = 0xD000000000000013;
      v168._object = 0x8000000100502E00;
LABEL_65:
      sub_1004BBDD4(v168);
      sub_1004BBE04();
      (*(v75 + 16))(v79, v77, v76);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v172 = qword_100617118;
      sub_1004B6DF4();
      v173 = sub_1004BBED4();
      v175 = v174;
      (*(v75 + 8))(v77, v76);
      v176 = sub_1004BA344();
      v177 = v207;
      *v207 = v176;
      v178 = v214;
      swift_storeEnumTagMultiPayload();
      v179 = *(v212 + 56);
      v179(v177, 0, 1, v178);
      v180 = type metadata accessor for Notice(0);
      v181 = v180[5];
      v179(v78 + v181, 1, 1, v178);
      v182 = (v78 + v180[7]);
      v183 = (v78 + v180[8]);
      v121 = v78 + v180[9];
      v122 = v78 + v180[10];
      v184 = v203;
      *v78 = v204;
      v78[1] = v184;
      result = sub_1001B8C90(v177, v78 + v181);
      v185 = (v78 + v180[6]);
      v186 = v205;
      *v185 = v206;
      v185[1] = v186;
      *v182 = v173;
      v182[1] = v175;
LABEL_74:
      *v183 = 0;
      v183[1] = 0;
      break;
    case 4u:
      v56 = *v30;
      v55 = v30[1];
      v57 = Notice.Variant.id.getter();
      v203 = v58;
      if (v55)
      {
        v205 = v55;
        v206 = v56;
        v59 = v214;
        v61 = v210;
        v60 = v211;
        v62 = v27;
      }

      else
      {
        v62 = v27;
        sub_1004BBDA4();
        v61 = v210;
        v60 = v211;
        (*(v211 + 16))(v208, v27, v210);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v143 = qword_100617118;
        sub_1004B6DF4();
        v144 = sub_1004BBED4();
        v205 = v145;
        v206 = v144;
        (*(v60 + 8))(v27, v61);
        v59 = v214;
      }

      v146 = v209;
      v147 = qword_1006006D8;

      if (v147 != -1)
      {
        swift_once();
      }

      v204 = v57;
      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        sub_1004BBDA4();
        (*(v60 + 16))(v208, v62, v61);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v148 = qword_100617118;
        sub_1004B6DF4();
        v149 = sub_1004BBED4();
        v213 = v150;
        v214 = v149;
        (*(v60 + 8))(v62, v61);
        v152 = swift_allocObject();
        *(v152 + 16) = v56;
        *(v152 + 24) = v55;
        v151 = sub_1001B8D38;
      }

      else
      {

        v151 = 0;
        v152 = 0;
        v213 = 0;
        v214 = 0;
      }

      v153 = sub_1004BA344();
      v154 = v207;
      *v207 = v153;
      swift_storeEnumTagMultiPayload();
      v155 = *(v212 + 56);
      v155(v154, 0, 1, v59);
      v156 = type metadata accessor for Notice(0);
      v157 = v59;
      v158 = v156[5];
      v155(v146 + v158, 1, 1, v157);
      v159 = (v146 + v156[7]);
      v160 = (v146 + v156[8]);
      v121 = v146 + v156[9];
      v122 = v146 + v156[10];
      v161 = v203;
      *v146 = v204;
      v146[1] = v161;
      result = sub_1001B8C90(v154, v146 + v158);
      v162 = (v146 + v156[6]);
      v163 = v205;
      *v162 = v206;
      v162[1] = v163;
      v164 = v213;
      *v159 = v214;
      v159[1] = v164;
      *v160 = v151;
      v160[1] = v152;
      *v121 = 2;
      goto LABEL_37;
    case 5u:
      v100 = Notice.Variant.id.getter();
      v205 = v101;
      v206 = v100;
      v50 = v27;
      sub_1004BBDA4();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 6u:
    case 7u:
    case 8u:
      v108 = Notice.Variant.id.getter();
      v205 = v109;
      v206 = v108;
      v50 = v27;
      sub_1004BBDA4();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 9u:
      v68 = Notice.Variant.id.getter();
      v205 = v69;
      v206 = v68;
      v50 = v27;
      sub_1004BBDA4();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xAu:
      v104 = Notice.Variant.id.getter();
      v205 = v105;
      v206 = v104;
      v65 = v27;
      sub_1004BBDA4();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xBu:
      v53 = Notice.Variant.id.getter();
      v205 = v54;
      v206 = v53;
      v50 = v27;
      sub_1004BBDA4();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xCu:
      v63 = Notice.Variant.id.getter();
      v205 = v64;
      v206 = v63;
      v65 = v27;
      sub_1004BBDA4();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xDu:
      v102 = Notice.Variant.id.getter();
      v205 = v103;
      v206 = v102;
      v65 = v27;
      sub_1004BBDA4();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xEu:
      v48 = Notice.Variant.id.getter();
      v205 = v49;
      v206 = v48;
      v50 = v27;
      sub_1004BBDA4();
      v52 = v210;
      v51 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_34;
      }

LABEL_75:
      swift_once();
LABEL_34:
      v110 = qword_100617118;
      sub_1004B6DF4();
      v45 = sub_1004BBED4();
      v47 = v111;
      (*(v51 + 8))(v50, v52);
      goto LABEL_35;
    case 0xFu:
      v80 = Notice.Variant.id.getter();
      v205 = v81;
      v206 = v80;
      v65 = v27;
      sub_1004BBDA4();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0x10u:
      v40 = Notice.Variant.id.getter();
      v205 = v41;
      v206 = v40;
      sub_1004BBDA4();
      v43 = v210;
      v42 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v44 = qword_100617118;
      sub_1004B6DF4();
      v45 = sub_1004BBED4();
      v47 = v46;
      (*(v42 + 8))(v27, v43);
      goto LABEL_35;
    case 0x11u:
      v98 = Notice.Variant.id.getter();
      v205 = v99;
      v206 = v98;
      v65 = v27;
      sub_1004BBDA4();
      v67 = v210;
      v66 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_32;
      }

LABEL_81:
      swift_once();
LABEL_32:
      v106 = qword_100617118;
      sub_1004B6DF4();
      v45 = sub_1004BBED4();
      v47 = v107;
      (*(v66 + 8))(v65, v67);
LABEL_35:
      v112 = sub_1004BA344();
      v113 = v207;
      *v207 = v112;
      v114 = v214;
      swift_storeEnumTagMultiPayload();
      v115 = *(v212 + 56);
      v115(v113, 0, 1, v114);
      v116 = type metadata accessor for Notice(0);
      v117 = v116[5];
      v118 = v209;
      v115(v209 + v117, 1, 1, v114);
      v119 = (v118 + v116[7]);
      v120 = (v118 + v116[8]);
      v121 = v118 + v116[9];
      v122 = v118 + v116[10];
      v123 = v205;
      *v118 = v206;
      v118[1] = v123;
      result = sub_1001B8C90(v113, v118 + v117);
      v125 = (v118 + v116[6]);
      *v125 = v45;
      v125[1] = v47;
      *v119 = 0;
      v119[1] = 0;
      *v120 = 0;
      v120[1] = 0;
      break;
    default:
      v31 = *v30;
      v206 = v30[1];
      v207 = v31;
      v32 = sub_100003ABC(&qword_100605268);
      v33 = *(v32 + 48);
      v202 = *(v30 + *(v32 + 64));
      sub_1001B8D40(v30 + v33, v11);
      v34 = Notice.Variant.id.getter();
      v204 = v35;
      v205 = v34;
      sub_10000F778(v11, v9, &unk_100603F30);
      v36 = sub_1004BB6C4();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v9, 1, v36) == 1)
      {
        sub_100007214(v9, &unk_100603F30);
        v38 = 1;
        v39 = v214;
      }

      else
      {
        (*(v37 + 32))(v5, v9, v36);
        v39 = v214;
        swift_storeEnumTagMultiPayload();
        sub_1001B8DB0(v5, v15);
        v38 = 0;
      }

      v126 = v212;
      v127 = *(v212 + 56);
      v127(v15, v38, 1, v39);
      v212 = *(v126 + 48);
      v128 = (v212)(v15, 1, v39);
      v203 = v127;
      if (v128 == 1)
      {
        *v18 = sub_1004BA344();
        swift_storeEnumTagMultiPayload();
        v127(v18, 0, 1, v39);
        if ((v212)(v15, 1, v39) != 1)
        {
          sub_100007214(v15, &qword_100605260);
        }
      }

      else
      {
        sub_1001B8DB0(v15, v18);
        v127(v18, 0, 1, v39);
      }

      sub_1004BBDE4();
      v216._countAndFlagsBits = 0;
      v216._object = 0xE000000000000000;
      sub_1004BBDD4(v216);
      v215 = v202;
      sub_1004BBDB4();
      v217._countAndFlagsBits = 0x297328676E6F7320;
      v217._object = 0xEE00646564646120;
      sub_1004BBDD4(v217);
      sub_1004BBE04();
      v130 = v210;
      v129 = v211;
      (*(v211 + 16))(v208, v27, v210);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v131 = qword_100617118;
      sub_1004B6DF4();
      v132 = sub_1004BBED4();
      v134 = v133;
      (*(v129 + 8))(v27, v130);
      sub_100007214(v11, &unk_100603F30);
      v135 = type metadata accessor for Notice(0);
      v136 = v135[5];
      v137 = v209;
      v203(v209 + v136, 1, 1, v214);
      v138 = (v137 + v135[7]);
      v139 = (v137 + v135[8]);
      v121 = v137 + v135[9];
      v122 = v137 + v135[10];
      v140 = v204;
      *v137 = v205;
      v137[1] = v140;
      result = sub_1001B8C90(v18, v137 + v136);
      v141 = (v137 + v135[6]);
      v142 = v206;
      *v141 = v207;
      v141[1] = v142;
      *v138 = v132;
      v138[1] = v134;
      *v139 = 0;
      v139[1] = 0;
      break;
  }

  *v121 = 0;
LABEL_37:
  v121[8] = 0;
  *v122 = 1;
  return result;
}

uint64_t Notice.thumbnail.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Notice(0) + 20);

  return sub_1001B8C90(a1, v3);
}

uint64_t Notice.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 24));

  return v1;
}

uint64_t Notice.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.headnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 28));

  return v1;
}

uint64_t Notice.headnote.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.link.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 32));
  sub_10002F518(v1);
  return v1;
}

uint64_t Notice.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 32));
  result = sub_10003CC4C(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.hapticFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Notice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Notice.isDismissable.setter(char a1)
{
  result = type metadata accessor for Notice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Notice.init(id:image:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v36 = a12;
  v34 = a11;
  v35 = a4;
  v33 = a10;
  v16 = sub_100003ABC(&qword_100605260);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  *(&v33 - v17) = a3;
  v19 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 0, 1, v19);
  v21 = type metadata accessor for Notice(0);
  v22 = v21[5];
  v20(&a9[v22], 1, 1, v19);
  v23 = &a9[v21[7]];
  v24 = &a9[v21[8]];
  v25 = v21[10];
  v26 = &a9[v21[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_1001B8C90(v18, &a9[v22]);
  v28 = &a9[v21[6]];
  v29 = v37;
  *v28 = v35;
  *(v28 + 1) = v29;
  v30 = v39;
  *v23 = v38;
  *(v23 + 1) = v30;
  v32 = v33;
  v31 = v34;
  *v24 = v40;
  *(v24 + 1) = v32;
  *v26 = v31;
  v26[8] = v36 & 1;
  a9[v25] = 1;
  return result;
}

uint64_t Notice.init(id:thumbnail:message:headnote:link:hapticFeedback:isDismissable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v17 = type metadata accessor for Notice(0);
  v18 = v17[5];
  v19 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = v17[10];
  v23 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_1001B8C90(a3, &a9[v18]);
  v25 = &a9[v17[6]];
  *v25 = a4;
  *(v25 + 1) = a5;
  *v20 = a6;
  *(v20 + 1) = a7;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v23 = a11;
  v23[8] = a12 & 1;
  a9[v22] = a13;
  return result;
}

uint64_t Notice.init(id:symbol:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v34 = a11;
  v32 = a10;
  v33 = a3;
  v30 = a8;
  v31 = a9;
  v14 = sub_100003ABC(&qword_100605260);
  __chkstk_darwin(v14 - 8);
  v16 = (&v30 - v15);
  *v16 = sub_1004BA344();
  v17 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 0, 1, v17);
  v19 = type metadata accessor for Notice(0);
  v20 = v19[5];
  v18((a7 + v20), 1, 1, v17);
  v21 = (a7 + v19[7]);
  v22 = (a7 + v19[8]);
  v23 = v19[10];
  v24 = a7 + v19[9];
  *a7 = a1;
  a7[1] = a2;
  result = sub_1001B8C90(v16, a7 + v20);
  v26 = (a7 + v19[6]);
  v27 = v35;
  *v26 = v33;
  v26[1] = v27;
  v28 = v37;
  *v21 = v36;
  v21[1] = v28;
  v29 = v31;
  *v22 = v30;
  v22[1] = v29;
  *v24 = v32;
  v24[8] = v34 & 1;
  *(a7 + v23) = 1;
  return result;
}

uint64_t Notice.withLink(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1001B9170(v3, a3, type metadata accessor for Notice);
  v7 = (a3 + *(type metadata accessor for Notice(0) + 32));
  v8 = *v7;

  result = sub_10003CC4C(v8);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

unint64_t Notice.Variant.id.getter()
{
  v1 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001B9170(v0, v3, type metadata accessor for Notice.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7478654E79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1001B9B20(v3, type metadata accessor for Notice.Variant);
      result = 0x466F546465766F6DLL;
      break;
    case 2:
      sub_1001B9B20(v3, type metadata accessor for Notice.Variant);
      result = 0xD000000000000016;
      break;
    case 3:
      sub_1001B9B20(v3, type metadata accessor for Notice.Variant);
      result = 0xD000000000000014;
      break;
    case 4:
      sub_1001B9B20(v3, type metadata accessor for Notice.Variant);
      result = 0x726F727265;
      break;
    case 5:
      return result;
    case 6:
      result = 0x7473614C79616C70;
      break;
    case 7:
      result = 0x6575516F54646461;
      break;
    case 8:
      result = 0x6574664179616C70;
      break;
    case 9:
      result = 0x417972617262696CLL;
      break;
    case 10:
      result = 0x72437265646C6F66;
      break;
    case 11:
      result = 0x436E6F6974617473;
      break;
    case 12:
      result = 0x64656E6E6970;
      break;
    case 13:
      result = 0x64656E6E69706E75;
      break;
    case 14:
      result = 0x657469726F766166;
      break;
    case 15:
      result = 0x69726F7661666E75;
      break;
    case 16:
      result = 0x4C74736567677573;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    default:

      v6 = sub_100003ABC(&qword_100605268);
      sub_100007214(&v3[*(v6 + 48)], &unk_100603F30);
      result = 0x506F546465646461;
      break;
  }

  return result;
}

uint64_t sub_1001B8904(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_100600DE0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    a1 = 0xD000000000000010;
    v13 = 0x8000000100502F40;
  }

  v14 = sub_10003D264(&_swiftEmptyArrayStorage);
  sub_100144204(a1, v13, 0xD000000000000032, 0x80000001004FFE30, &_swiftEmptyArrayStorage, v14, &_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage, v12, 1u);
  v15 = v4;

  sub_10000F778(v12, v10, &qword_100600DE0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_100007214(v12, &qword_100600DE0);
  }

  else
  {
    v16 = v30;
    (*(v5 + 32))(v30, v10, v4);
    v17 = objc_opt_self();
    v18 = [v17 sharedApplication];
    sub_1004B6A44(v19);
    v21 = v20;
    v22 = [v18 canOpenURL:v20];

    if (v22)
    {
      v23 = [v17 sharedApplication];
      sub_1004B6A44(v24);
      v26 = v25;
      sub_10003D128(&_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_1000C8DC0();
      isa = sub_1004BBC24().super.isa;

      [v23 openURL:v26 options:isa completionHandler:0];
    }

    (*(v5 + 8))(v16, v15);
    v10 = v12;
  }

  return sub_100007214(v10, &qword_100600DE0);
}

uint64_t sub_1001B8C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100605260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8D00()
{

  return swift_deallocObject();
}

uint64_t sub_1001B8D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&unk_100603F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB6C4();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Notice.Thumbnail(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = sub_100003ABC(&qword_1006054A8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v17 = *(v14 + 56);
  sub_1001B9170(a1, &v23 - v15, type metadata accessor for Notice.Thumbnail);
  sub_1001B9170(a2, &v16[v17], type metadata accessor for Notice.Thumbnail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001B9170(v16, v12, type metadata accessor for Notice.Thumbnail);
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = sub_1004BA364();

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1001B9170(v16, v10, type metadata accessor for Notice.Thumbnail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v24;
      (*(v24 + 32))(v6, &v16[v17], v4);
      v20 = sub_1004BB6B4();
      v21 = *(v19 + 8);
      v21(v6, v4);
      v21(v10, v4);
LABEL_12:
      sub_1001B9B20(v16, type metadata accessor for Notice.Thumbnail);
      return v20 & 1;
    }

    (*(v24 + 8))(v10, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_100007214(v16, &qword_1006054A8);
    v20 = 0;
    return v20 & 1;
  }

  sub_1001B9B20(v16, type metadata accessor for Notice.Thumbnail);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1001B9170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9MusicCore6NoticeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100605260);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_100003ABC(&qword_1006054A0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = *a1;
  v15 = a1[1];
  v39 = a1;
  if ((v14 != *a2 || v15 != a2[1]) && (sub_1004BD9C4() & 1) == 0)
  {
    return 0;
  }

  v16 = a2;
  v38 = type metadata accessor for Notice(0);
  v17 = *(v38 + 20);
  v18 = *(v11 + 48);
  sub_10000F778(v39 + v17, v13, &qword_100605260);
  v19 = v16 + v17;
  v20 = v16;
  sub_10000F778(v19, &v13[v18], &qword_100605260);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_100007214(v13, &qword_100605260);
      goto LABEL_13;
    }

LABEL_9:
    sub_100007214(v13, &qword_1006054A0);
    return 0;
  }

  sub_10000F778(v13, v10, &qword_100605260);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    sub_1001B9B20(v10, type metadata accessor for Notice.Thumbnail);
    goto LABEL_9;
  }

  sub_1001B8DB0(&v13[v18], v7);
  v23 = _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_1001B9B20(v7, type metadata accessor for Notice.Thumbnail);
  sub_1001B9B20(v10, type metadata accessor for Notice.Thumbnail);
  sub_100007214(v13, &qword_100605260);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v24 = v38;
  v25 = *(v38 + 24);
  v26 = (v39 + v25);
  v27 = *(v39 + v25 + 8);
  v28 = (v20 + v25);
  if ((*v26 != *v28 || v27 != v28[1]) && (sub_1004BD9C4() & 1) == 0)
  {
    return 0;
  }

  v29 = *(v24 + 28);
  v30 = (v39 + v29);
  v31 = *(v39 + v29 + 8);
  v32 = (v20 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33 && (*v30 == *v32 && v31 == v33 || (sub_1004BD9C4() & 1) != 0))
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v33)
  {
    return 0;
  }

LABEL_23:
  v34 = *(v24 + 36);
  v35 = (v39 + v34);
  v36 = *(v39 + v34 + 8);
  v37 = v20 + v34;
  result = *(v37 + 8);
  if ((v36 & 1) == 0)
  {
    return (*v35 == *v37) & ~result;
  }

  return result;
}

uint64_t sub_1001B95BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&qword_100605260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001B968C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_100605260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001B973C()
{
  sub_1001B9840(319, &qword_1006052D8, type metadata accessor for Notice.Thumbnail);
  if (v0 <= 0x3F)
  {
    sub_1000E461C();
    if (v1 <= 0x3F)
    {
      sub_10002DF44();
      if (v2 <= 0x3F)
      {
        sub_1001B9840(319, &unk_1006052E0, type metadata accessor for FeedbackType);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001B9840(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001B9894()
{
  result = sub_1004BB6C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001B9900()
{
  sub_1001B99E0();
  if (v0 <= 0x3F)
  {
    sub_1001B9AD8(319, &qword_100605458);
    if (v1 <= 0x3F)
    {
      sub_1001B9A60(319, &qword_100605460);
      if (v2 <= 0x3F)
      {
        sub_1001B9A60(319, &qword_100605468);
        if (v3 <= 0x3F)
        {
          sub_1001B9AD8(319, &unk_100605470);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001B99E0()
{
  if (!qword_100605450)
  {
    sub_100003B68(&unk_100603F30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100605450);
    }
  }
}

void sub_1001B9A60(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_100003B68(&unk_100606160);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1001B9AD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1000E461C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1001B9B20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v14 = v13[7];
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = v13[8];
  a7[v13[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  sub_1001BDCE0(a4, &a7[v13[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001B9CD4(a5, &a7[v14]);
  *&a7[v16] = a6;
  return result;
}

uint64_t sub_1001B9CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1006054C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v22 = a3;
  v23 = a6;
  v12 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v16 = &a7[v15[6]];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v18 = *(*(v17 - 8) + 56);
  v18(v14, 1, 1, v17);
  v19 = v15[7];
  v18(&a7[v19], 1, 1, v17);
  v20 = v15[8];
  a7[v15[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = v22;
  result = sub_1001B9CD4(v14, &a7[v19]);
  *&a7[v20] = v23;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v32 = a3;
  v33 = a7;
  v31 = a2;
  v13 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = a4;
  v19[1] = a5;
  swift_storeEnumTagMultiPayload();
  v20 = sub_1004B68B4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(a6, 1, v20) == 1)
  {
    sub_100007214(a6, &qword_1006011E8);
    v22 = 1;
  }

  else
  {
    (*(v21 + 32))(v15, a6, v20);
    swift_storeEnumTagMultiPayload();
    v22 = 0;
  }

  v23 = *(v17 + 56);
  v23(v15, v22, 1, v16);
  v24 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v25 = v24[7];
  v23(&a8[v25], 1, 1, v16);
  v26 = v24[8];
  a8[v24[9]] = 1;
  v28 = v31;
  v27 = v32;
  *a8 = a1;
  *(a8 + 1) = v28;
  *(a8 + 2) = v27;
  sub_1001BDCE0(v19, &a8[v24[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001B9CD4(v15, &a8[v25]);
  *&a8[v26] = v33;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004B68B4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_100007214(a1, &qword_1006011E8);
    v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 1;
  }

  else
  {
    (*(v5 + 32))(a2, a1, v4);
    v11 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v7 = *(*(v11 - 8) + 56);
    v9 = a2;
    v10 = 0;
    v8 = v11;
  }

  return v7(v9, v10, 1, v8);
}

{
  v4 = sub_1004B68B4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v28 = a3;
  v29 = a7;
  v14 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v14 - 8);
  v16 = (&v28 - v15);
  v17 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004B68B4();
  (*(*(v21 - 8) + 32))(v20, a4, v21);
  swift_storeEnumTagMultiPayload();
  if (a6)
  {
    *v16 = a5;
    v16[1] = a6;
    swift_storeEnumTagMultiPayload();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v18 + 56);
  v23(v16, v22, 1, v17);
  v24 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v25 = v24[7];
  v23((a8 + v25), 1, 1, v17);
  v26 = v24[8];
  *(a8 + v24[9]) = 1;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = v28;
  sub_1001BDCE0(v20, a8 + v24[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001B9CD4(v16, a8 + v25);
  *(a8 + v26) = v29;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = a1;
    a3[1] = a2;
    v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);
    v6 = a3;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a3;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.title.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 24);

  return sub_1001BA8D0(a1, v3);
}

uint64_t NowPlaying.TrackMetadata.subtitle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 28);

  return sub_1001B9CD4(a1, v3);
}

void *NowPlaying.TrackMetadata.artwork.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32));
  v2 = v1;
  return v1;
}

void NowPlaying.TrackMetadata.artwork.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t sub_1001BA8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.StringKind.description.getter()
{
  v1 = v0;
  v2 = sub_1004B68B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BDC78(v1, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1001BAAC0();
  v9 = sub_1004B69C4();
  (*(v3 + 8))(v5, v2);
  return v9;
}

unint64_t sub_1001BAAC0()
{
  result = qword_1006043A0;
  if (!qword_1006043A0)
  {
    sub_1004B68B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006043A0);
  }

  return result;
}

uint64_t sub_1001BAB1C()
{
  v1 = v0;
  v2 = sub_1004B68B4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BDC78(v1, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v6, v8, v2);
  sub_1001BAAC0();
  v9 = sub_1004B69C4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(uint64_t a1)
{
  v3 = sub_100003ABC(&qword_1006054D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v7 = *(v1 + *(v6 + 32));
  sub_10000F778(a1, v5, &qword_1006054D0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    v8 = v7;
    sub_100007214(v5, &qword_1006054D0);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *&v5[*(v6 + 32)];
    v8 = v10;
    v11 = v7;
    sub_1001BDD48(v5, type metadata accessor for NowPlaying.TrackMetadata);
    if (v7)
    {
      if (v10)
      {
        if ([v11 isArtworkVisuallyIdenticalToCatalog:v8])
        {
          v9 = 1;
        }

        else
        {
          sub_100009130(0, &qword_100604490);
          v9 = sub_1004BCFA4();
        }
      }

      else
      {
        v9 = 0;
        v8 = v11;
      }

      goto LABEL_13;
    }

    if (v10)
    {
LABEL_3:
      v9 = 0;
LABEL_13:

      return v9 & 1;
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t NowPlaying.TrackMetadata.isEmpty.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_100600020 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v4 = sub_100007084(v3, static NowPlaying.TrackMetadata.notPlaying);
  if (v1 == *v4 && v2 == v4[1])
  {
    return 1;
  }

  return sub_1004BD9C4();
}

void sub_1001BAF2C()
{
  v0 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v0 - 8);
  v28 = &v26 - v1;
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  sub_100007108(v14, static NowPlaying.TrackMetadata.notPlaying);
  v15 = sub_100007084(v14, static NowPlaying.TrackMetadata.notPlaying);
  sub_1004BBDA4();
  v16 = *(v4 + 16);
  v27 = v3;
  v16(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v17 = qword_100617118;
  sub_1004B6DF4();
  v18 = sub_1004BBED4();
  v20 = v19;
  (*(v4 + 8))(v9, v27);
  *v13 = v18;
  v13[1] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = *(v11 + 56);
  v22 = v28;
  v21(v28, 1, 1, v10);
  v23 = v14[7];
  v21(&v15[v23], 1, 1, v10);
  v24 = v14[8];
  *&v15[v24] = 0;
  v15[v14[9]] = 1;
  *v15 = 0x79616C705F746F6ELL;
  *(v15 + 1) = 0xEB00000000676E69;
  *(v15 + 2) = 0;
  sub_1001BDCE0(v13, &v15[v14[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001B9CD4(v22, &v15[v23]);
  v25 = *&v15[v24];
  *&v15[v24] = 0;
}

void sub_1001BB300()
{
  v0 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v0 - 8);
  v28 = &v26 - v1;
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  sub_100007108(v14, static NowPlaying.TrackMetadata.loading);
  v15 = sub_100007084(v14, static NowPlaying.TrackMetadata.loading);
  sub_1004BBDA4();
  v16 = *(v4 + 16);
  v27 = v3;
  v16(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v17 = qword_100617118;
  sub_1004B6DF4();
  v18 = sub_1004BBED4();
  v20 = v19;
  (*(v4 + 8))(v9, v27);
  *v13 = v18;
  v13[1] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = *(v11 + 56);
  v22 = v28;
  v21(v28, 1, 1, v10);
  v23 = v14[7];
  v21((v15 + v23), 1, 1, v10);
  v24 = v14[8];
  *(v15 + v24) = 0;
  *(v15 + v14[9]) = 1;
  strcpy(v15, "i_am_loading");
  *(v15 + 13) = 0;
  *(v15 + 14) = -5120;
  *(v15 + 16) = 0;
  sub_1001BDCE0(v13, v15 + v14[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001B9CD4(v22, v15 + v23);
  v25 = *(v15 + v24);
  *(v15 + v24) = 0;
}

uint64_t sub_1001BB6D0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);

  return sub_100007084(v3, a2);
}

uint64_t sub_1001BB748@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v6 = sub_100007084(v5, a2);
  return sub_1001BDC78(v6, a3, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v67) = a3;
  v74 = a2;
  v76 = a4;
  v5 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v5 - 8);
  v73 = &v63 - v6;
  v75 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin(v75);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B68E4();
  __chkstk_darwin(v8 - 8);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1004B68B4();
  v70 = *(v72 - 8);
  v10 = __chkstk_darwin(v72);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v63 - v12;
  v13 = sub_1004B6E64();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1004BBE14();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  sub_1004BBDA4();
  v21 = *(v15 + 16);
  v21(v18, v20, v14);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v22 = qword_100617118;
  sub_1004B6DF4();
  v23 = v22;
  v24 = sub_1004BBED4();
  v64 = v25;
  v65 = v24;
  v26 = *(v15 + 8);
  v26(v20, v14);
  sub_1004BBDA4();
  v21(v18, v20, v14);
  sub_1004B6DF4();
  v27 = sub_1004BBED4();
  v29 = v28;
  v26(v20, v14);
  v30 = [a1 route];
  v31 = a1;
  if (v30)
  {
    v32 = v30;
    v33 = [v30 routeName];

    v34 = sub_1004BBE64();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = [a1 representedBundleDisplayName];
  if (!v37)
  {
    if (v67)
    {
      goto LABEL_11;
    }

LABEL_12:

    v42 = v64;

    v36 = v42;
    v41 = v65;
    v34 = v65;
    goto LABEL_13;
  }

  v38 = v37;
  sub_1004BBE64();
  v40 = v39;

  if ((v67 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!v40)
  {
LABEL_11:

    v42 = v64;

    v41 = v65;
    goto LABEL_13;
  }

  v36 = v29;
  v34 = v27;
  v42 = v64;
  v41 = v65;
LABEL_13:
  sub_1004B68D4();
  sub_1004B68C4();
  v43 = [v31 representedBundleID];
  if (!v43)
  {
    v43 = [v31 bundleID];
    if (!v43)
    {
      v66 = 0xD000000000000013;
      v67 = 0x8000000100502F80;
      v71 = v31;
      if (v36)
      {
        goto LABEL_16;
      }

LABEL_18:
      v34 = v41;
      goto LABEL_19;
    }
  }

  v44 = v43;
  v66 = sub_1004BBE64();
  v67 = v45;

  v71 = v31;
  if (!v36)
  {
    goto LABEL_18;
  }

LABEL_16:

  v42 = v36;
LABEL_19:
  v46 = v70;
  v47 = v68;
  v48 = v72;
  (*(v70 + 16))(v68, v77, v72);
  v49 = v75;
  v50 = v69;
  v51 = &v69[*(v75 + 24)];
  *v51 = v34;
  v51[1] = v42;
  v52 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v53 = v73;
  (*(v46 + 32))(v73, v47, v48);
  swift_storeEnumTagMultiPayload();
  v54 = *(*(v52 - 8) + 56);
  v54(v53, 0, 1, v52);
  v55 = v49[7];
  v54(v50 + v55, 1, 1, v52);
  v56 = v49[8];
  *(v50 + v49[9]) = 1;
  v57 = v67;
  *v50 = v66;
  v50[1] = v57;
  v58 = v74;
  v50[2] = v74;
  v59 = v58;
  sub_1001B9CD4(v53, v50 + v55);
  *(v50 + v56) = 0;
  v60 = v76;
  sub_1001BDCE0(v50, v76, type metadata accessor for NowPlaying.TrackMetadata);
  v61 = v71;
  LOBYTE(v51) = [v71 isSystemMusicPath];

  result = (*(v46 + 8))(v77, v48);
  *(v60 + v49[9]) = v51;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100003ABC(&qword_1006011E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v13 - 8);
  v75 = &v67 - v14;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = __chkstk_darwin(v15);
  v78 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = (&v67 - v18);
  v20 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v21 = *(v20 - 1);
  __chkstk_darwin(v20);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v79 = a2;
    v80 = a3;
    v76 = v20;
    v77 = a4;
    v24 = a1;
    v25 = [v24 metadataObject];
    if (v25)
    {
      v70 = v25;
      v26 = [v25 innermostModelObject];
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      v69 = a5;
      v71 = v21;
      v72 = v27;
      v28 = v80;
      if (v27)
      {

        if (v79 && (v29 = [v79 items], v30 = objc_msgSend(v29, "firstSection"), v29, v30) && (v31 = objc_msgSend(v30, "metadataObject"), v30, v31))
        {
          v32 = [v31 anyObject];

          v33 = v74;
          if (v32)
          {
            objc_opt_self();
            v67 = v32;
            v32 = swift_dynamicCastObjCClass();
            if (!v32)
            {
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v74;
        }

        v68 = a1;
        if (v28)
        {
          MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(v32, v28, v77);
        }

        else
        {
          *v19 = MPModelSong.nowPlayingTitle(from:)(v32);
          v19[1] = v38;
        }

        swift_storeEnumTagMultiPayload();
        v39 = [v24 queueItemIdentifier];
        v74 = sub_1004BBE64();
        v67 = v40;

        sub_1001BDC78(v19, v78, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v41 = v32;
        MPModelSong.preferredBylineAttribution(with:from:)(&off_1005A5C58, v32, v12);
        v42 = sub_1004B68B4();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(v12, 1, v42) == 1)
        {
          sub_100007214(v12, &qword_1006011E8);
          v44 = 1;
          v45 = v75;
        }

        else
        {
          v45 = v75;
          (*(v43 + 32))(v75, v12, v42);
          swift_storeEnumTagMultiPayload();
          v44 = 0;
        }

        v46 = v33;
        v47 = *(v73 + 56);
        v47(v45, v44, 1, v46);
        v48 = [v72 artworkCatalog];

        sub_10003CC4C(v80);
        sub_1001BDD48(v19, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v20 = v76;
        v49 = v76[7];
        v47(v23 + v49, 1, 1, v46);
        v50 = v20[8];
        *(v23 + v20[9]) = 1;
        v52 = v67;
        v51 = v68;
        *v23 = v74;
        v23[1] = v52;
        v23[2] = v51;
        sub_1001BDCE0(v78, v23 + v20[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        sub_1001B9CD4(v45, v23 + v49);
        *(v23 + v50) = v48;
        a5 = v69;
      }

      else
      {
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v36 = v35;
          v37 = v26;
          NowPlaying.TrackMetadata.init(tvEpisode:item:)(v36, v24, v23);

          sub_10003CC4C(v28);
          v20 = v76;
        }

        else
        {
          objc_opt_self();
          v54 = swift_dynamicCastObjCClass();
          v20 = v76;
          if (!v54)
          {

            if (qword_100600030 != -1)
            {
              swift_once();
            }

            v57 = sub_1004B80B4();
            sub_100007084(v57, qword_1006054B0);
            v58 = v70;
            v59 = sub_1004B8094();
            v60 = sub_1004BC994();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = v24;
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v82 = v63;
              *v62 = 136315138;
              v81 = [v58 type];
              type metadata accessor for MPModelGenericObjectType(0);
              v64 = sub_1004BBF04();
              v66 = sub_100012018(v64, v65, &v82);
              a5 = v69;

              *(v62 + 4) = v66;
              _os_log_impl(&_mh_execute_header, v59, v60, "Unexpected metadataObject type %s", v62, 0xCu);
              sub_100004C6C(v63);

              sub_10003CC4C(v80);
            }

            else
            {

              sub_10003CC4C(v80);
            }

            v34 = 1;
            goto LABEL_23;
          }

          v55 = v54;
          v56 = v26;
          NowPlaying.TrackMetadata.init(movie:item:)(v55, v24, v23);

          sub_10003CC4C(v80);
        }
      }

      sub_1001BDCE0(v23, a5, type metadata accessor for NowPlaying.TrackMetadata);
      v34 = 0;
LABEL_23:
      v21 = v71;
      return (*(v21 + 56))(a5, v34, 1, v20);
    }

    sub_10003CC4C(v80);
    v34 = 1;
    v20 = v76;
  }

  else
  {
    sub_10003CC4C(a3);

    v34 = 1;
  }

  return (*(v21 + 56))(a5, v34, 1, v20);
}

uint64_t NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = sub_100003ABC(&qword_1006011E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v45 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = (&v38 - v21);
  v42 = v20;
  v43 = a4;
  if (v20)
  {
    MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(a2, v20, a4);
  }

  else
  {
    *v22 = MPModelSong.nowPlayingTitle(from:)(a2);
    v22[1] = v23;
  }

  swift_storeEnumTagMultiPayload();
  v44 = a3;
  v24 = [a3 queueItemIdentifier];
  v25 = sub_1004BBE64();
  v39 = v26;
  v40 = v25;

  sub_1001BDC78(v22, v45, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v41 = a2;
  MPModelSong.preferredBylineAttribution(with:from:)(&off_1005A5C80, a2, v12);
  v27 = sub_1004B68B4();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v12, 1, v27) == 1)
  {
    sub_100007214(v12, &qword_1006011E8);
    v29 = 1;
  }

  else
  {
    (*(v28 + 32))(v15, v12, v27);
    swift_storeEnumTagMultiPayload();
    v29 = 0;
  }

  v30 = *(v17 + 56);
  v30(v15, v29, 1, v16);
  v31 = [a1 artworkCatalog];

  sub_10003CC4C(v42);
  sub_1001BDD48(v22, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v32 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v33 = v32[7];
  v30(a5 + v33, 1, 1, v16);
  v34 = v32[8];
  *(a5 + v32[9]) = 1;
  v35 = v39;
  *a5 = v40;
  a5[1] = v35;
  v36 = v45;
  a5[2] = v44;
  sub_1001BDCE0(v36, a5 + v32[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001B9CD4(v15, a5 + v33);
  *(a5 + v34) = v31;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(tvEpisode:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v6 - 8);
  v50 = &v45 - v7;
  v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100003ABC(&qword_1006011E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_1004B6E64();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1004BBE14();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  v51 = a2;
  v22 = [a2 queueItemIdentifier];
  v23 = sub_1004BBE64();
  v45 = v24;
  v46 = v23;

  v47 = a1;
  v25 = [a1 title];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1004BBE64();
    v29 = v28;
  }

  else
  {
    sub_1004BBDA4();
    (*(v16 + 16))(v19, v21, v15);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v30 = qword_100617118;
    sub_1004B6DF4();
    v27 = sub_1004BBED4();
    v29 = v31;
    (*(v16 + 8))(v21, v15);
  }

  v32 = sub_1004B68B4();
  v33 = *(v32 - 8);
  (*(v33 + 56))(v13, 1, 1, v32);
  v34 = v47;
  v35 = [v47 artworkCatalog];

  *v10 = v27;
  v10[1] = v29;
  v36 = v49;
  swift_storeEnumTagMultiPayload();
  if ((*(v33 + 48))(v13, 1, v32) == 1)
  {
    sub_100007214(v13, &qword_1006011E8);
    v37 = 1;
    v38 = v50;
  }

  else
  {
    v38 = v50;
    (*(v33 + 32))(v50, v13, v32);
    swift_storeEnumTagMultiPayload();
    v37 = 0;
  }

  v39 = *(v48 + 56);
  v39(v38, v37, 1, v36);
  v40 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v41 = v40[7];
  v39(a3 + v41, 1, 1, v36);
  v42 = v40[8];
  *(a3 + v40[9]) = 1;
  v43 = v45;
  *a3 = v46;
  a3[1] = v43;
  a3[2] = v51;
  sub_1001BDCE0(v10, a3 + v40[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001B9CD4(v38, a3 + v41);
  *(a3 + v42) = v35;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(movie:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_1004B6E64();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1004BBE14();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = [a2 queueItemIdentifier];
  v18 = sub_1004BBE64();
  v37 = v19;
  v38 = v18;

  v20 = [a1 title];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1004BBE64();
    v24 = v23;
  }

  else
  {
    sub_1004BBDA4();
    (*(v11 + 16))(v14, v16, v10);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v25 = qword_100617118;
    sub_1004B6DF4();
    v22 = sub_1004BBED4();
    v24 = v26;
    (*(v11 + 8))(v16, v10);
  }

  v27 = [a1 artworkCatalog];

  v28 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v29 = (a3 + v28[6]);
  *v29 = v22;
  v29[1] = v24;
  v30 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v31 = *(*(v30 - 8) + 56);
  v31(v8, 1, 1, v30);
  v32 = v28[7];
  v31(a3 + v32, 1, 1, v30);
  v33 = v28[8];
  *(a3 + v28[9]) = 1;
  v34 = v37;
  *a3 = v38;
  a3[1] = v34;
  a3[2] = a2;
  result = sub_1001B9CD4(v8, a3 + v32);
  *(a3 + v33) = v27;
  return result;
}

uint64_t sub_1001BD3D0()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_1006054B0);
  sub_100007084(v0, qword_1006054B0);
  return sub_1004B80A4();
}

uint64_t sub_1001BD450(Swift::String a1)
{
  sub_1004BC024(a1);

  return sub_1004B80A4();
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = sub_1004B68B4();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v26 - v11);
  v13 = sub_100003ABC(&qword_100605650);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v26 - v15;
  v17 = (&v26 + *(v14 + 56) - v15);
  sub_1001BDC78(a1, &v26 - v15, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001BDC78(a2, v17, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001BDC78(v16, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v22 = *v12;
    v21 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v17 && v21 == v17[1])
      {
      }

      else
      {
        v24 = sub_1004BD9C4();

        if ((v24 & 1) == 0)
        {
          sub_1001BDD48(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
          goto LABEL_8;
        }
      }

      sub_1001BDD48(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_100007214(v16, &qword_100605650);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_1001BDC78(v16, v10, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v10, v27);
    goto LABEL_7;
  }

  v18 = v27;
  (*(v4 + 32))(v6, v17, v27);
  v19 = sub_1004B6864();
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v10, v18);
  sub_1001BDD48(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  return v19 & 1;
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_100003ABC(&qword_1006054D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003ABC(&qword_1006054C8);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_100003ABC(&qword_100605648);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1004BD9C4() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
  if ((_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(a1 + *(v17 + 24), a2 + *(v17 + 24)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = v10;
  v28 = v17;
  v29 = v6;
  v18 = *(v17 + 28);
  v19 = *(v14 + 48);
  sub_10000F778(a1 + v18, v16, &qword_1006054C8);
  sub_10000F778(a2 + v18, &v16[v19], &qword_1006054C8);
  v20 = *(v8 + 48);
  if (v20(v16, 1, v7) == 1)
  {
    if (v20(&v16[v19], 1, v7) == 1)
    {
      sub_100007214(v16, &qword_1006054C8);
LABEL_14:
      v25 = v29;
      sub_1001BDC78(a2, v29, type metadata accessor for NowPlaying.TrackMetadata);
      (*(*(v28 - 8) + 56))(v25, 0, 1);
      v21 = NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(v25);
      sub_100007214(v25, &qword_1006054D0);
      return v21 & 1;
    }

    goto LABEL_10;
  }

  sub_10000F778(v16, v13, &qword_1006054C8);
  if (v20(&v16[v19], 1, v7) == 1)
  {
    sub_1001BDD48(v13, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_10:
    sub_100007214(v16, &qword_100605648);
    goto LABEL_11;
  }

  v23 = v27;
  sub_1001BDCE0(&v16[v19], v27, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v24 = _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(v13, v23);
  sub_1001BDD48(v23, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001BDD48(v13, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100007214(v16, &qword_1006054C8);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1001BDC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BDCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BDD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001BDDBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100003ABC(&qword_1006054C8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001BDF00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100003ABC(&qword_1006054C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001BE030()
{
  sub_1001BE184(319, &qword_100605540, &qword_100605548);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(319);
    if (v1 <= 0x3F)
    {
      sub_1001BE12C();
      if (v2 <= 0x3F)
      {
        sub_1001BE184(319, &qword_100605558, &unk_100605560);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001BE12C()
{
  if (!qword_100605550)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_100605550);
    }
  }
}

void sub_1001BE184(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100009130(255, a3);
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001BE1DC()
{
  result = sub_1004B68B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001BE25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1004B9974();
  sub_100003ABC(&qword_100605660);
  sub_1004BA424();
  sub_1004B86C4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_100003ABC(&qword_100605668);
  (*(*(v17 - 8) + 16))(a3, a1, v17);
  v18 = a3 + *(sub_100003ABC(&qword_100605670) + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  v19 = sub_1001BE790();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a2;
  v21 = sub_100003ABC(&qword_100605678);
  *(a3 + *(v21 + 52)) = v19;
  v22 = (a3 + *(v21 + 56));
  *v22 = sub_1001BEC3C;
  v22[1] = v20;
}

uint64_t sub_1001BE3E4()
{
  sub_1004BA7C4();
  sub_1004B8B24();
}

uint64_t View.keyboardReactive()(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[1] = 0;
  sub_1004BA414();
  return sub_1004B8D54();
}

uint64_t sub_1001BE584()
{
  sub_1004B8D64();
  sub_1001BE5E8();
  return swift_getWitnessTable();
}

unint64_t sub_1001BE5E8()
{
  result = qword_100605658;
  if (!qword_100605658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605658);
  }

  return result;
}

CGFloat sub_1001BE694()
{
  v0 = sub_1004B65E4();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_1004BBE64();
  sub_1004BD3A4();
  if (!*(v1 + 16) || (v2 = sub_100034774(&v5), (v3 & 1) == 0))
  {

    sub_10003D090(&v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_100004DE4(*(v1 + 56) + 32 * v2, &v6);
  sub_10003D090(&v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_10011CF58(&v6);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v5);
  }

  return 0.0;
}

uint64_t sub_1001BE790()
{
  v0 = sub_100003ABC(&qword_100605680);
  v1 = *(v0 - 8);
  v32 = v0;
  v33 = v1;
  __chkstk_darwin(v0);
  v31 = &v28 - v2;
  v3 = sub_1004BCC74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_100605688);
  v30 = *(v7 - 8);
  v8 = v30;
  v9 = __chkstk_darwin(v7);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v28 = &v28 - v11;
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  sub_1004BCC84();

  sub_1001BECAC();
  sub_1004B85F4();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = [v12 defaultCenter];
  sub_1004BCC84();

  v16 = v29;
  sub_1004B85F4();
  v14(v6, v3);
  sub_100003ABC(&qword_100605698);
  v17 = *(v30 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004C50C0;
  v20 = v19 + v18;
  v21 = *(v8 + 16);
  v22 = v28;
  v21(v20, v28, v7);
  v21(v20 + v17, v16, v7);
  sub_1000206D4(&qword_1006056A0, &qword_100605688);
  v23 = v31;
  sub_1004B84C4();
  sub_1000206D4(&qword_1006056A8, &qword_100605680);
  v24 = v32;
  v25 = sub_1004B85E4();
  (*(v33 + 8))(v23, v24);
  v26 = *(v8 + 8);
  v26(v16, v7);
  v26(v22, v7);
  return v25;
}

uint64_t sub_1001BEC04()
{

  return swift_deallocObject();
}

unint64_t sub_1001BECAC()
{
  result = qword_100605690;
  if (!qword_100605690)
  {
    sub_1004BCC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100605690);
  }

  return result;
}

uint64_t sub_1001BED48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_1004B8564();
  return (*(v4 + 8))(a1, a2);
}

uint64_t property wrapper backing initializer of OptionalObservableObject.output(uint64_t a1)
{
  v2 = sub_1004BD174();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, a1, v2);
  sub_1001BED48(v5, v2);
  return (*(v3 + 8))(a1, v2);
}

uint64_t OptionalObservableObject.output.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();
}

uint64_t OptionalObservableObject.output.setter(uint64_t a1)
{
  sub_1001BFB44(a1);
  v2 = sub_1004BD174();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.output.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = sub_1004B8594();
  return sub_1001BF1BC;
}

void sub_1001BF1BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t OptionalObservableObject.$output.getter()
{
  swift_beginAccess();
  sub_1004BD174();
  sub_1004B85D4();
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t OptionalObservableObject.$output.setter(uint64_t a1)
{
  sub_1001BFC78(a1);
  sub_1004BD174();
  v2 = sub_1004B85C4();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.$output.modify(void *a1))(uint64_t a1, char a2)
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
  *v3 = v1;
  sub_1004BD174();
  v5 = sub_1004B85C4();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  OptionalObservableObject.$output.getter();
  return sub_1001BF478;
}

void sub_1001BF478(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1001BFC78(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1001BFC78(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OptionalObservableObject.__allocating_init(publisher:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OptionalObservableObject.init(publisher:)(a1);
  return v2;
}

uint64_t *OptionalObservableObject.init(publisher:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  sub_1004BD174();
  v6 = sub_1004B85D4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - v9;
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(v4 + 88);
  (*(*(v5 - 8) + 56))(&v21 - v11, 1, 1, v5);
  property wrapper backing initializer of OptionalObservableObject.output(v12);
  (*(v7 + 32))(v2 + v13, v10, v6);
  *(v2 + *(*v2 + 104)) = 0;
  v14 = v2 + *(*v2 + 96);
  if (!*(a1 + 24))
  {
    v18 = *(a1 + 16);
    *v14 = *a1;
    *(v14 + 16) = v18;
    *(v14 + 32) = *(a1 + 32);
LABEL_8:
    v19 = *(a1 + 16);
    v21 = *a1;
    v22 = v19;
    v23 = *(a1 + 32);
    v15 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_100009178(&v21, v15);

    v17 = sub_1004B8604();

    if (*(a1 + 24))
    {
      sub_100004C6C(a1);
    }

    goto LABEL_11;
  }

  sub_10001342C(a1, v14);
  if (!*(a1 + 24))
  {
    goto LABEL_8;
  }

  sub_10001342C(a1, &v21);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = *(a1 + 24);
  if (v16)
  {
    sub_100004C6C(a1);
    v17 = 0;
    v16 = 0;
    if (*(&v22 + 1))
    {
LABEL_11:
      sub_100004C6C(&v21);
      v16 = v17;
    }
  }

  *(v2 + *(*v2 + 104)) = v16;

  return v2;
}

uint64_t sub_1001BF878(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = sub_1004BD174();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  sub_1001BFB44(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t OptionalObservableObject.deinit()
{
  v1 = *(*v0 + 88);
  sub_1004BD174();
  v2 = sub_1004B85D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + *(*v0 + 96);
  if (*(v3 + 24))
  {
    sub_100004C6C(v3);
  }

  return v0;
}

uint64_t OptionalObservableObject.__deallocating_deinit()
{
  OptionalObservableObject.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001BFB00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OptionalObservableObject();
  result = sub_1004B8534();
  *a1 = result;
  return result;
}

uint64_t sub_1001BFB44(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1004BD174();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[2] = v3;
  swift_getKeyPath();
  v9[0] = v3;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, v4);

  return sub_1004B85B4();
}

uint64_t sub_1001BFC78(uint64_t a1)
{
  sub_1004BD174();
  v2 = sub_1004B85C4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1);
  swift_beginAccess();
  sub_1004B85D4();
  sub_1004B8584();
  return swift_endAccess();
}

uint64_t sub_1001BFDAC()
{
  sub_1004BD174();
  result = sub_1004B85D4();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PrivacyAcknowledgementObserver.__allocating_init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(a1, a2, a3);
  return v6;
}

uint64_t PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = ICPrivacyIdentifierMusic;
  *(v3 + 16) = ICPrivacyIdentifierMusic;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  v5 = objc_opt_self();
  v6 = v4;

  v7 = [v5 sharedPrivacyInfo];
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v14[4] = sub_1001C0190;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1001C0198;
  v14[3] = &unk_1005B6E90;
  v10 = _Block_copy(v14);
  v11 = v8;

  v12 = [v7 beginObservingPrivacyAcknowledgementForIdentifier:v11 handler:v10];

  _Block_release(v10);

  *(v3 + 24) = v12;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1001C0044()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001C007C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32) == 1)
    {
      sub_10009F080();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = a2 & 1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001C0450, v5);
    }

    else
    {
      (*(result + 40))(a2 & 1);
    }
  }

  return result;
}

void sub_1001C0198(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1001C020C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PrivacyAcknowledgementObserver.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t PrivacyAcknowledgementObserver.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001C0398(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);

    v4(a2 & 1);
  }

  return result;
}

uint64_t sub_1001C0418()
{

  return swift_deallocObject();
}

uint64_t sub_1001C045C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10003870C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1004B6D14();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100034820(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100039DB8();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1004B6D14();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100210DD8(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1004B6D14();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_1001C061C(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_10003E13C(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1000388D8(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_100007214(a1, &qword_100605110);
    sub_1002104A0(a2, v6);

    sub_100007214(v6, &qword_100605110);
  }
}

uint64_t sub_1001C06D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003ABC(&unk_100605810);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100007214(a1, &unk_100605810);
    sub_100210540(a2, v7);
    v12 = sub_1004B6D14();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100007214(v7, &unk_100605810);
  }

  else
  {
    sub_10003E14C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100038A28(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1004B6D14();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001C08DC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003ABC(&unk_100607670);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100003ABC(&qword_100601B90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100007214(a1, &unk_100607670);
    sub_100210828(a2, v7);
    v12 = sub_1004B6D14();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100007214(v7, &unk_100607670);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100039040(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1004B6D14();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

id sub_1001C0B10()
{
  v0 = type metadata accessor for PushNotificationObserver();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_10003DADC(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static PushNotificationObserver.shared = result;
  return result;
}

id sub_1001C0B8C()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_10003DADC(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t *PushNotificationObserver.shared.unsafeMutableAddressor()
{
  if (qword_100600038 != -1)
  {
    swift_once();
  }

  return &static PushNotificationObserver.shared;
}

uint64_t static PushNotificationObserver.shared.getter()
{
  if (qword_100600038 != -1)
  {
    swift_once();
  }
}

uint64_t PushNotificationObserver.register(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  sub_100003ABC(&unk_100605810);
  v6[11] = swift_task_alloc();
  v7 = sub_1004B6D14();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001C0DA8, v5, 0);
}

uint64_t sub_1001C0DA8()
{
  v1 = *(v0 + 80);
  if (*(v1 + 120))
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    *v7 = *(v0 + 48);
    *(v7 + 8) = v8;
    *(v7 + 24) = v6;
    v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v10 = *(v9 + 24);

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    (*(v3 + 16))(v2, v7 + v10, v4);
    sub_10003E214(v7, v5);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_1001C06D0(v5, v2);
    swift_endAccess();
    v11 = *(v1 + 120);
    if (v11)
    {
      sub_1001C2820(*(v1 + 120));
      v12 = v11;
      sub_100052270(v11);
      sub_1001C1960();
      isa = sub_1004BC284().super.isa;

      [v12 _setEnabledTopics:isa];
    }

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 120) = v16;
    *v16 = v0;
    v16[1] = sub_1001C1008;

    return sub_1001C2364();
  }
}

uint64_t sub_1001C1008()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1001C1118, v1, 0);
}

uint64_t sub_1001C1118()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  *v7 = *(v0 + 48);
  *(v7 + 8) = v8;
  *(v7 + 24) = v5;
  v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v10 = *(v9 + 24);

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  (*(v2 + 16))(v1, v7 + v10, v3);
  sub_10003E214(v7, v4);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  sub_1001C06D0(v4, v1);
  swift_endAccess();
  v11 = *(v6 + 120);
  if (v11)
  {
    sub_1001C2820(*(v6 + 120));
    v12 = v11;
    sub_100052270(v11);
    sub_1001C1960();
    isa = sub_1004BC284().super.isa;

    [v12 _setEnabledTopics:isa];
  }

  v14 = *(v0 + 8);

  return v14();
}

void PushNotificationObserver.unregister(registeredHandler:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003ABC(&unk_100605810);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1004B6D14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(v8 + 16))(v10, a1 + *(v11 + 24), v7);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  swift_beginAccess();
  sub_1001C06D0(v6, v10);
  swift_endAccess();
  v13 = (v2 + 120);
  v12 = *(v2 + 120);
  if (v12)
  {
    sub_1001C2820(*(v2 + 120));
    v14 = v12;
    sub_100052270(v12);
    sub_1001C1960();
    isa = sub_1004BC284().super.isa;

    [v14 _setEnabledTopics:isa];
  }

  if (!*(*(v2 + 112) + 16))
  {
    v16 = *v13;
    if (*v13)
    {
      [v16 setDelegate:0];
      v16 = *v13;
      if (*v13)
      {
        [v16 shutdown];
        v16 = *v13;
      }
    }

    *v13 = 0;
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    sub_100052270(v16);
  }
}

uint64_t PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003ABC(&qword_1006014F0);
  result = __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  if (a4)
  {
    v12 = sub_1004BC4B4();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v4;
    v13[5] = a2;
    v13[6] = a3;
    v13[7] = a4;

    sub_1000FD6BC(0, 0, v11, &unk_1004D23E8, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C16E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1001C1704, 0, 0);
}

uint64_t sub_1001C1704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    return _swift_task_switch(sub_1001C172C, *(v3 + 16), 0);
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1001C172C()
{
  sub_1001C1DF8(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

id *sub_1001C1960()
{
  v59 = sub_100003ABC(&qword_1006059D0);
  v1 = __chkstk_darwin(v59);
  v58 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v57 = &v49 - v4;
  v5 = __chkstk_darwin(v3);
  v56 = &v49 - v6;
  __chkstk_darwin(v5);
  v55 = &v49 - v7;
  if (!*(v0 + 152))
  {
    return _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v8 = *(*(v0 + 112) + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v63 = _swiftEmptyArrayStorage;

  sub_100015080(0, v8, 0);
  v11 = v10;
  v9 = v63;
  v12 = v11 + 64;
  result = sub_1004BD2E4();
  v14 = result;
  v15 = 0;
  v16 = *(v11 + 36);
  v50 = v11 + 72;
  v51 = v8;
  v52 = v16;
  v53 = v11 + 64;
  v54 = v11;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v11 + 32))
  {
    v18 = v14 >> 6;
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_25;
    }

    if (v16 != *(v11 + 36))
    {
      goto LABEL_26;
    }

    v60 = v15;
    v61 = 1 << v14;
    v19 = v59;
    v20 = *(v59 + 48);
    v21 = *(v11 + 48);
    v22 = sub_1004B6D14();
    v23 = *(v22 - 8);
    v24 = v23;
    v25 = v21 + *(v23 + 72) * v14;
    v26 = *(v23 + 16);
    v62 = v9;
    v27 = v55;
    v26(v55, v25, v22);
    v28 = *(v11 + 56);
    v29 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    sub_10003E214(v28 + *(*(v29 - 8) + 72) * v14, &v27[v20]);
    v30 = *(v24 + 32);
    v31 = v56;
    v30(v56, v27, v22);
    sub_10003E14C(&v27[v20], v31 + *(v19 + 48));
    v32 = v57;
    sub_1001C37B8(v31, v57);
    v33 = *(v19 + 48);
    v34 = v58;
    v35 = &v58[v33];
    v30(v58, v32, v22);
    v36 = v32 + v33;
    v9 = v62;
    sub_10003E14C(v36, v34 + v33);
    v37 = *v35;
    v38 = *(v35 + 1);

    sub_100007214(v34, &qword_1006059D0);
    result = sub_100007214(v31, &qword_1006059D0);
    v63 = v9;
    v40 = v9[2];
    v39 = v9[3];
    if (v40 >= v39 >> 1)
    {
      result = sub_100015080((v39 > 1), v40 + 1, 1);
      v9 = v63;
    }

    v9[2] = (v40 + 1);
    v41 = &v9[2 * v40];
    v41[4] = v37;
    v41[5] = v38;
    v11 = v54;
    v17 = 1 << *(v54 + 32);
    if (v14 >= v17)
    {
      goto LABEL_27;
    }

    v12 = v53;
    v42 = *(v53 + 8 * v18);
    if ((v42 & v61) == 0)
    {
      goto LABEL_28;
    }

    LODWORD(v16) = v52;
    if (v52 != *(v54 + 36))
    {
      goto LABEL_29;
    }

    v43 = v42 & (-2 << (v14 & 0x3F));
    if (v43)
    {
      v17 = __clz(__rbit64(v43)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v44 = v18 << 6;
      v45 = v18 + 1;
      v46 = (v50 + 8 * v18);
      while (v45 < (v17 + 63) >> 6)
      {
        v48 = *v46++;
        v47 = v48;
        v44 += 64;
        ++v45;
        if (v48)
        {
          result = sub_1001C3828(v14, v52, 0);
          v17 = __clz(__rbit64(v47)) + v44;
          goto LABEL_5;
        }
      }

      result = sub_1001C3828(v14, v52, 0);
    }

LABEL_5:
    v15 = v60 + 1;
    v14 = v17;
    if (v60 + 1 == v51)
    {

      return v9;
    }
  }

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
  return result;
}

uint64_t sub_1001C1DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v56 = a1;
  v5 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v51 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v39 - v9;
  v55 = sub_1004B6D14();
  v10 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003ABC(&qword_1006059C8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  swift_beginAccess();
  v18 = *(v3 + 112);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v40 = (v19 + 63) >> 6;
  v43 = v10 + 32;
  v44 = v10 + 16;
  v49 = v10;
  v22 = (v10 + 8);
  v23 = v18 + 64;
  v53 = v18;
  v54 = v22;

  v25 = 0;
  v52 = a2;
  v46 = v15;
  v47 = v8;
  v45 = v17;
  v42 = v23;
  while (v21)
  {
    v26 = v25;
LABEL_16:
    v29 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v30 = v29 | (v26 << 6);
    v31 = v53;
    v32 = v49;
    (*(v49 + 16))(v48, *(v53 + 48) + *(v49 + 72) * v30, v55);
    v33 = *(v31 + 56);
    v34 = v50;
    sub_10003E214(v33 + *(v51 + 72) * v30, v50);
    v35 = sub_100003ABC(&qword_1006059D0);
    v36 = *(v35 + 48);
    v15 = v46;
    (*(v32 + 32))();
    sub_10003E14C(v34, &v15[v36]);
    (*(*(v35 - 8) + 56))(v15, 0, 1, v35);
    a2 = v52;
    v8 = v47;
    v17 = v45;
    v23 = v42;
LABEL_17:
    sub_1001C35C8(v15, v17);
    v37 = sub_100003ABC(&qword_1006059D0);
    if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
    {
    }

    sub_10003E14C(&v17[*(v37 + 48)], v8);
    if (*v8 == v56 && *(v8 + 1) == a2 || (sub_1004BD9C4() & 1) != 0)
    {
      (*(v8 + 2))(v56, a2, v41);
    }

    sub_1001C3638(v8);
    result = (*v54)(v17, v55);
  }

  if (v40 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v40;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v40)
    {
      v38 = sub_100003ABC(&qword_1006059D0);
      (*(*(v38 - 8) + 56))(v15, 1, 1, v38);
      v21 = 0;
      v25 = v28;
      goto LABEL_17;
    }

    v21 = *(v23 + 8 * v26);
    ++v25;
    if (v21)
    {
      v25 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001C22CC(id a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[15];
  if (v7)
  {
    [v7 setDelegate:0];
    v8 = v3[15];
    if (v8)
    {
      [v8 shutdown];
    }
  }

  if (a1)
  {
    [a1 setDelegate:v3];
  }

  v9 = v3[15];
  v3[15] = a1;
  v3[16] = a2;
  v3[17] = a3;

  return sub_100052270(v9);
}

uint64_t sub_1001C2364()
{
  *(v1 + 32) = v0;
  v2 = sub_1001C3834();
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_1001C2450;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v0, v2, 0xD000000000000017, 0x8000000100503100, sub_1001C2938, 0, &type metadata for PushNotificationObserver.PushConfiguration);
}

uint64_t sub_1001C2450()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1001C2560, v1, 0);
}

uint64_t sub_1001C2560()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  if (v2)
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      sub_1004BBE64();
      sub_10009F080();

      v5 = sub_1004BCB44();
      v6 = objc_allocWithZone(APSConnection);
      v7 = sub_1004BBE24();
      v8 = sub_1004BBE24();

      v9 = [v6 initWithEnvironmentName:v7 namedDelegatePort:v8 queue:v5];

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v9 = 0;
    }

    v3 = 0;
    v2 = 0;
  }

  else
  {
    v9 = 0;
    v3 = 0;
  }

LABEL_10:
  v10 = v0[4];
  v11 = v10[15];
  v12 = v10[16];
  v13 = v10[17];
  if (v11)
  {

    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  sub_1001C2820(v11);
  sub_100052270(v11);
  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
    if (!v2)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v2)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v14 != v3 || v15 != v2)
  {
    v16 = sub_1004BD9C4();

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_23:
    sub_1001C22CC(v9, v3, v2);
    goto LABEL_26;
  }

LABEL_25:
  sub_100052270(v9);
LABEL_26:
  v17 = v0[1];

  return v17();
}

uint64_t type metadata accessor for PushNotificationObserver.RegisteredHandler()
{
  result = qword_100605900;
  if (!qword_100605900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1001C2820(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_1001C2864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001384C;

  return sub_1001C16E0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001C2938(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006059E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  v9 = static BagProvider.shared;
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v10(v6, v8, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v8, v2);
  v13 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  sub_100003ABC(&qword_100603560);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  v14 = v23;
  if (v23)
  {
    sub_1001C2C98(v23);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v15 = swift_allocObject();
    v22[1] = v13;
    v16 = v15;
    swift_weakInit();
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    swift_weakAssign();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = sub_1001C391C;
    v18[3] = v12;
    v18[4] = v17;
    v18[5] = v16;
    v19 = *(v16 + 24);
    *(v16 + 24) = sub_1000F2FCC;
    *(v16 + 32) = v18;

    sub_10003CC4C(v19);

    __chkstk_darwin(v20);
    v22[-2] = v9;
    v22[-1] = v16;
    UnfairLock.locked<A>(_:)(sub_1000F2FD8);
    sub_1000FAAD0(0);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1001C2C98(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyPushNotifications];
  if (!v1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1004BBC44();

  sub_1004BD3A4();
  if (!*(v3 + 16) || (v4 = sub_100034774(&v10), (v5 & 1) == 0))
  {

    sub_10003D090(&v10);
    goto LABEL_8;
  }

  sub_100004DE4(*(v3 + 56) + 32 * v4, v12);
  sub_10003D090(&v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = sub_1004BBE64();
    v11 = v8;
    goto LABEL_10;
  }

  v6 = objc_opt_self();
  v7 = sub_1004BBE24();
  LODWORD(v6) = [v6 isValidEnvironment:v7];

  if (!v6)
  {

    goto LABEL_8;
  }

  v10 = 0x6D6E6F7269766E65;
  v11 = 0xEB00000000746E65;
LABEL_10:
  sub_100003ABC(&qword_1006059E8);
  return sub_1004BC404();
}

uint64_t PushNotificationObserver.deinit()
{

  sub_100052270(*(v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushNotificationObserver.__deallocating_deinit()
{

  sub_100052270(*(v0 + 120));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001C2F24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1004B6D14();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001C2FE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004B6D14();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1001C3088()
{
  result = sub_100020C70();
  if (v1 <= 0x3F)
  {
    result = sub_1004B6D14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001C311C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001C318C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1001C32CC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1001C34EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1001C353C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001C3590(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001C35C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1006059C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C3638(uint64_t a1)
{
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C3694()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001C36E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000136EC;

  return sub_1001C16E0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001C37B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1006059D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C3828(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1001C3834()
{
  result = qword_1006059D8;
  if (!qword_1006059D8)
  {
    type metadata accessor for PushNotificationObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006059D8);
  }

  return result;
}

uint64_t sub_1001C3888()
{
  v1 = sub_100003ABC(&qword_1006059E8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001C391C(void *a1)
{
  sub_100003ABC(&qword_1006059E8);

  return sub_1001C2C98(a1);
}

uint64_t sub_1001C3998()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001C39D0()
{

  return swift_deallocObject();
}

uint64_t Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a5;
  v72 = a6;
  v77 = a4;
  v69 = a9;
  v70 = a3;
  v74 = a2;
  v13 = sub_100003ABC(&qword_100601C50);
  v65 = *(v13 - 8);
  v76 = *(v65 + 64);
  v14 = __chkstk_darwin(v13 - 8);
  v68 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v75 = &v57 - v17;
  v18 = *(a7 - 8);
  v19 = __chkstk_darwin(v16);
  v67 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v62 = &v57 - v22;
  v24 = v23;
  v64 = v23;
  __chkstk_darwin(v21);
  v26 = &v57 - v25;
  v27 = a8;
  v73 = a8;
  sub_1001C4D30(a7, a9);
  v58 = *(v18 + 16);
  v63 = a1;
  v58(v26, a1, a7);
  v28 = *(v18 + 80);
  v29 = (v28 + 32) & ~v28;
  v60 = v28 | 7;
  v30 = v24 + 7;
  v31 = (v24 + 7 + v29) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = a7;
  *(v32 + 24) = v27;
  v59 = *(v18 + 32);
  v61 = v18 + 32;
  v33 = v32 + v29;
  v34 = v32;
  v66 = v32;
  v59(v33, v26, a7);
  v35 = v74;
  *(v34 + v31) = v74;
  v36 = v62;
  v58(v62, a1, a7);
  sub_10000F778(v77, v75, &qword_100601C50);
  v37 = (v28 + 40) & ~v28;
  v38 = (v30 + v37) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v65 + 80);
  v40 = swift_allocObject();
  v41 = v73;
  v40[2] = a7;
  v40[3] = v41;
  v40[4] = v35;
  v42 = v59;
  v59(v40 + v37, v36, a7);
  sub_100048998(v70, v40 + v38);
  sub_100025B04(v75, v40 + ((v38 + v39 + 96) & ~v39), &qword_100601C50);
  v43 = v68;
  sub_100025B04(v77, v68, &qword_100601C50);
  v44 = v67;
  v42(v67, v63, a7);
  v45 = (v39 + 48) & ~v39;
  v46 = (v76 + v28 + v45) & ~v28;
  v47 = swift_allocObject();
  v48 = v73;
  *(v47 + 2) = a7;
  *(v47 + 3) = v48;
  v49 = v72;
  *(v47 + 4) = v71;
  *(v47 + 5) = v49;
  sub_100025B04(v43, &v47[v45], &qword_100601C50);
  v42(&v47[v46], v44, a7);
  v50 = type metadata accessor for Actions.Pin.Context(0);
  v51 = v69;
  v52 = (v69 + v50[5]);
  v53 = v66;
  *v52 = sub_1001C6360;
  v52[1] = v53;
  v54 = (v51 + v50[6]);
  *v54 = &unk_1004D2568;
  v54[1] = v40;
  v55 = (v51 + v50[7]);
  *v55 = &unk_1004D2578;
  v55[1] = v47;
}

int *static Actions.Pin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CC810(a1, a2, type metadata accessor for Actions.Pin.Context);
  result = sub_100003ABC(&qword_100601C68);
  *(a2 + result[9]) = 7;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_1001C4374;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_1004D2580;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_1004D2588;
  v6[1] = 0;
  return result;
}

uint64_t Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v55 = a5;
  v56 = a6;
  v57 = a4;
  v52 = a3;
  v59 = a2;
  v54 = a9;
  v11 = *(a7 - 8);
  v12 = __chkstk_darwin(a1);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v48 = &v44 - v15;
  v17 = v16;
  v50 = v16;
  __chkstk_darwin(v14);
  v19 = &v44 - v18;
  v21 = v20;
  v58 = v20;
  sub_1001C4D30(v22, v23);
  v47 = *(v11 + 16);
  v47(v19, v21, a7);
  v49 = *(v11 + 80);
  v24 = (v49 + 40) & ~v49;
  v25 = swift_allocObject();
  v53 = v25;
  *(v25 + 2) = a7;
  *(v25 + 3) = a8;
  v26 = v59;
  *(v25 + 4) = v59;
  v45 = *(v11 + 32);
  v46 = v11 + 32;
  v45(v25 + v24, v19, a7);
  v27 = v48;
  v47(v48, v58, a7);
  v28 = swift_allocObject();
  *(v28 + 2) = a7;
  *(v28 + 3) = a8;
  *(v28 + 4) = v26;
  v29 = v27;
  v30 = v45;
  v45(&v28[v24], v29, a7);
  sub_100048998(v52, &v28[(v24 + v17 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v31 = v51;
  v30(v51, v58, a7);
  v32 = *(sub_100003ABC(&qword_100601C50) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v49 + v33) & ~v49;
  v35 = swift_allocObject();
  *(v35 + 2) = a7;
  *(v35 + 3) = a8;
  v36 = v56;
  *(v35 + 4) = v55;
  *(v35 + 5) = v36;
  sub_100025B04(v57, &v35[v33], &qword_100601C50);
  v30(&v35[v34], v31, a7);
  v37 = type metadata accessor for Actions.Unpin.Context(0);
  v39 = v53;
  v38 = v54;
  v40 = (v54 + v37[5]);
  *v40 = sub_1001CAED4;
  v40[1] = v39;
  v41 = (v38 + v37[6]);
  *v41 = &unk_1004D2598;
  v41[1] = v28;
  v42 = (v38 + v37[7]);
  *v42 = &unk_1004D25A8;
  v42[1] = v35;
}

int *static Actions.Unpin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CC810(a1, a2, type metadata accessor for Actions.Unpin.Context);
  result = sub_100003ABC(&qword_100601C60);
  *(a2 + result[9]) = 8;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_1001C45C4;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_1004D25B0;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_1004D25B8;
  v6[1] = 0;
  return result;
}

uint64_t sub_1001C43AC()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10005DCBC;

  return v5();
}

uint64_t sub_1001C44C8()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10005DCBC;

  return v5();
}

uint64_t sub_1001C463C()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10005DCBC;

  return v5();
}

uint64_t sub_1001C4758()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10005DCBC;

  return v5();
}

int *static Actions.UpdatePinAction.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004B79C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  v9 = updated - 8;
  __chkstk_darwin(updated);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CC810(a1, v11, type metadata accessor for Actions.UpdatePinAction.Context);
  (*(v5 + 16))(v7, a1 + *(v9 + 28), v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v12 != enum case for MusicPin.Action.play(_:))
    {
      if (v12 == enum case for MusicPin.Action.shuffle(_:))
      {
        v13 = 45;
        goto LABEL_8;
      }

      (*(v5 + 8))(v7, v4);
    }

    v13 = 44;
    goto LABEL_8;
  }

  v13 = 46;
LABEL_8:
  sub_1001D1068(v11, a2, type metadata accessor for Actions.UpdatePinAction.Context);
  result = sub_100003ABC(&qword_1006059F0);
  *(a2 + result[9]) = v13;
  *(a2 + result[11]) = 0x4014000000000000;
  v15 = (a2 + result[10]);
  *v15 = sub_1001C4AB8;
  v15[1] = 0;
  v16 = (a2 + result[12]);
  *v16 = &unk_1004D25C0;
  v16[1] = 0;
  v17 = (a2 + result[13]);
  *v17 = &unk_1004D25C8;
  v17[1] = 0;
  return result;
}

uint64_t sub_1001C4B14()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10005D520;

  return v5();
}

uint64_t sub_1001C4C30()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 32));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10005DCBC;

  return v5();
}

uint64_t sub_1001C4D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v95 = sub_1004B79E4();
  v93 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v92 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v94 = &v92 - v5;
  v105 = sub_1004B75E4();
  v98 = *(v105 - 8);
  v6 = __chkstk_darwin(v105);
  v96 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v97 = &v92 - v9;
  __chkstk_darwin(v8);
  v99 = &v92 - v10;
  v102 = sub_1004BB9B4();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1004BBA44();
  v104 = *(v110 - 8);
  v12 = __chkstk_darwin(v110);
  v103 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v92 - v14;
  v112 = sub_1004BB4D4();
  v109 = *(v112 - 8);
  v15 = __chkstk_darwin(v112);
  v107 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v108 = &v92 - v18;
  __chkstk_darwin(v17);
  v111 = &v92 - v19;
  v116 = sub_1004BB384();
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1004BBA84();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004BAD04();
  v118 = *(v23 - 8);
  v119 = v23;
  __chkstk_darwin(v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1004BB564();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1004BB434();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v37;
  (*(v37 + 16))(v36, v120, a1);
  if (swift_dynamicCast())
  {
    v38 = v121;
    (*(v31 + 32))(v121, v34, v30);
    v39 = &enum case for MusicPin.Item.album(_:);
LABEL_3:
    v40 = *v39;
    v41 = sub_1004B7994();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v38, v40, v41);
    (*(v42 + 56))(v38, 0, 1, v41);
    return (*(v122 + 8))(v36, a1);
  }

  v43 = v121;
  if (swift_dynamicCast())
  {
    v44 = v43;
    (*(v27 + 32))(v43, v29, v26);
    v45 = enum case for MusicPin.Item.artist(_:);
    v46 = sub_1004B7994();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v44, v45, v46);
    (*(v47 + 56))(v44, 0, 1, v46);
    return (*(v122 + 8))(v36, a1);
  }

  v49 = v119;
  if (swift_dynamicCast())
  {
    v38 = v43;
    (*(v118 + 32))(v43, v25, v49);
    v39 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_3;
  }

  v50 = v117;
  v38 = v43;
  if (swift_dynamicCast())
  {
    (*(v115 + 32))(v43, v22, v50);
    v39 = &enum case for MusicPin.Item.playlist(_:);
    goto LABEL_3;
  }

  v51 = v114;
  v52 = v116;
  if (swift_dynamicCast())
  {
    (*(v113 + 32))(v38, v51, v52);
    v39 = &enum case for MusicPin.Item.song(_:);
    goto LABEL_3;
  }

  v53 = v111;
  v54 = v112;
  if (swift_dynamicCast())
  {
    v56 = v108;
    v55 = v109;
    (*(v109 + 32))(v108, v53, v54);
    v57 = v107;
    (*(v55 + 16))(v107, v56, v54);
    v58 = (*(v55 + 88))(v57, v54);
    if (v58 == enum case for Track.song(_:))
    {
      (*(v55 + 96))(v57, v54);
      (*(v113 + 32))(v38, v57, v52);
LABEL_16:
      v59 = &enum case for MusicPin.Item.song(_:);
LABEL_29:
      v77 = *v59;
      v78 = sub_1004B7994();
      v79 = *(v78 - 8);
      (*(v79 + 104))(v38, v77, v78);
      (*(v79 + 56))(v38, 0, 1, v78);
      goto LABEL_30;
    }

    if (v58 != enum case for Track.musicVideo(_:))
    {
      v80 = sub_1004B7994();
      (*(*(v80 - 8) + 56))(v38, 1, 1, v80);
      v81 = *(v55 + 8);
      v81(v57, v54);
      v81(v56, v54);
      return (*(v122 + 8))(v36, a1);
    }

    (*(v55 + 96))(v57, v54);
    (*(v118 + 32))(v38, v57, v49);
LABEL_28:
    v59 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_29;
  }

  v60 = v106;
  v54 = v110;
  if (swift_dynamicCast())
  {
    v56 = v103;
    v55 = v104;
    (*(v104 + 32))(v103, v60, v54);
    v61 = v100;
    sub_1004BB9C4();
    v62 = v101;
    v63 = v102;
    v64 = (*(v101 + 88))(v61, v102);
    if (v64 != enum case for Playlist.Entry.InternalItem.musicMovie(_:))
    {
      if (v64 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v62 + 96))(v61, v63);
        (*(v118 + 32))(v38, v61, v119);
        goto LABEL_28;
      }

      if (v64 == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v62 + 96))(v61, v63);
        (*(v113 + 32))(v38, v61, v116);
        goto LABEL_16;
      }

      if (v64 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:) && v64 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v64 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        v90 = sub_1004B7994();
        (*(*(v90 - 8) + 56))(v38, 1, 1, v90);
        (*(v62 + 8))(v61, v63);
        goto LABEL_30;
      }
    }

    (*(v62 + 8))(v61, v63);
    v65 = sub_1004B7994();
    (*(*(v65 - 8) + 56))(v38, 1, 1, v65);
LABEL_30:
    (*(v55 + 8))(v56, v54);
    return (*(v122 + 8))(v36, a1);
  }

  v66 = v99;
  v67 = v105;
  if (swift_dynamicCast())
  {
    v68 = v98;
    v69 = v97;
    (*(v98 + 32))(v97, v66, v67);
    v70 = v96;
    (*(v68 + 16))(v96, v69, v67);
    v71 = (*(v68 + 88))(v70, v67);
    if (v71 == enum case for RecentlyAddedMusicItem.album(_:))
    {
      (*(v68 + 96))(v70, v67);
      (*(v31 + 32))(v38, v70, v30);
      v72 = &enum case for MusicPin.Item.album(_:);
LABEL_25:
      v73 = *v72;
      v74 = v69;
      v75 = sub_1004B7994();
      v76 = *(v75 - 8);
      (*(v76 + 104))(v38, v73, v75);
      (*(v76 + 56))(v38, 0, 1, v75);
      (*(v68 + 8))(v74, v67);
      return (*(v122 + 8))(v36, a1);
    }

    if (v71 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      goto LABEL_35;
    }

    if (v71 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v68 + 96))(v70, v67);
      (*(v118 + 32))(v38, v70, v119);
      v72 = &enum case for MusicPin.Item.musicVideo(_:);
      goto LABEL_25;
    }

    if (v71 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v68 + 96))(v70, v67);
      (*(v115 + 32))(v38, v70, v117);
      v72 = &enum case for MusicPin.Item.playlist(_:);
      goto LABEL_25;
    }

    if (v71 == enum case for RecentlyAddedMusicItem.tvSeason(_:) || v71 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
LABEL_35:
      v87 = *(v68 + 8);
      v87(v70, v67);
      v88 = sub_1004B7994();
      (*(*(v88 - 8) + 56))(v38, 1, 1, v88);
    }

    else
    {
      v91 = sub_1004B7994();
      (*(*(v91 - 8) + 56))(v38, 1, 1, v91);
      v87 = *(v68 + 8);
      v87(v70, v67);
    }

    v87(v69, v67);
    return (*(v122 + 8))(v36, a1);
  }

  v82 = v94;
  v83 = v95;
  if (swift_dynamicCast())
  {
    v84 = v93;
    v85 = v92;
    (*(v93 + 32))(v92, v82, v83);
    sub_1004B79A4();
    (*(v84 + 8))(v85, v83);
    v86 = sub_1004B7994();
    (*(*(v86 - 8) + 56))(v38, 0, 1, v86);
  }

  else
  {
    v89 = sub_1004B7994();
    (*(*(v89 - 8) + 56))(v38, 1, 1, v89);
  }

  return (*(v122 + 8))(v36, a1);
}

uint64_t sub_1001C5EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v36 = a2;
  v33 = sub_1004BB1A4();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100605C60);
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_100003ABC(&qword_100601E48);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  v15 = *(a3 - 8);
  __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004BB434();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v15 + 16);
  v34 = a1;
  v22(v17, a1, a3);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v14, 1, 1, v18);
    sub_100007214(v14, &qword_100601E48);
    goto LABEL_5;
  }

  v24(v14, 0, 1, v18);
  (*(v19 + 32))(v21, v14, v18);
  v25 = Album.childrenAddStatus(_:)(v36);
  (*(v19 + 8))(v21, v18);
  if (v25 != 1)
  {
LABEL_5:
    sub_1004B76C4();
    v27 = v33;
    sub_1004BAF94();
    (*(v35 + 8))(v7, v27);
    v26 = sub_1001C63C8();
    (*(v30 + 8))(v10, v31);
    return v26;
  }

  return 0x206C616974726150;
}

uint64_t sub_1001C62CC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001C63C8()
{
  v1 = sub_1004BB194();
  v27 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - v5;
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_100003ABC(&qword_100605C60);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v25 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = *(v10 + 16);
  v26 = v0;
  v15(&v24 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v36[0] = 0;
      *(&v36[0] + 1) = 0xE000000000000000;
      sub_1004BD404(27);

      *&v36[0] = 0xD000000000000019;
      *(&v36[0] + 1) = 0x80000001004FDBC0;
      v15(v25, v26, v9);
      v37._countAndFlagsBits = sub_1004BBF04();
      sub_1004BC024(v37);

      v21 = *&v36[0];
      (*(v10 + 8))(v14, v9);
      return v21;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v27;
  (*(v27 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  v20 = v8;
  if (v19 != enum case for MusicLibrary.PinAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.alreadyPinned(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0x2079646165726C41;
    }

    if (v19 != enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
      {
        if (qword_1005FFE10 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004B85A4();

        v36[4] = v32;
        v36[5] = v33;
        v36[6] = v34;
        v36[7] = v35;
        v36[0] = v28;
        v36[1] = v29;
        v36[2] = v30;
        v36[3] = v31;
        sub_100051DEC(v36);
        if ((WORD4(v36[0]) & 0x100) != 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0xD000000000000016;
        }
      }

      else
      {
        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryInitialImport(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD00000000000001CLL;
        }

        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryIneligible(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD000000000000018;
        }

        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.sharedLibrary(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0x6C20646572616853;
        }

        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.notInLibrary(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0x4C206E6920746F4ELL;
        }

        v21 = 0x206E776F6E6B6E55;
        if (v19 != enum case for MusicLibrary.PinAction.UnsupportedReason.unknown(_:))
        {
          *&v36[0] = 0;
          *(&v36[0] + 1) = 0xE000000000000000;
          sub_1004BD404(17);

          *&v36[0] = 0x206E776F6E6B6E55;
          *(&v36[0] + 1) = 0xEF206E6F73616572;
          v18(v24, v20, v1);
          v38._countAndFlagsBits = sub_1004BBF04();
          sub_1004BC024(v38);

          v21 = *&v36[0];
          v23 = *(v17 + 8);
          v23(v20, v1);
          v23(v6, v1);
          return v21;
        }
      }

      (*(v17 + 8))(v20, v1);
      return v21;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v21 = 0xD000000000000010;
  (*(v17 + 8))(v20, v1);
  return v21;
}

uint64_t sub_1001C6B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v6[65] = a3;
  v6[63] = a1;
  v6[64] = a2;
  v8 = sub_1004BADE4();
  v6[69] = v8;
  v6[70] = *(v8 - 8);
  v6[71] = swift_task_alloc();
  v9 = sub_1004B6D14();
  v6[72] = v9;
  v6[73] = *(v9 - 8);
  v6[74] = swift_task_alloc();
  v10 = *(sub_100003ABC(&qword_100601C50) - 8);
  v6[75] = v10;
  v6[76] = *(v10 + 64);
  v6[77] = swift_task_alloc();
  sub_1004B6E64();
  v6[78] = swift_task_alloc();
  v11 = sub_1004BBE14();
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  sub_1004BBDF4();
  v6[83] = swift_task_alloc();
  v12 = sub_1004BB194();
  v6[84] = v12;
  v6[85] = *(v12 - 8);
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v13 = *(a5 - 8);
  v6[88] = v13;
  v6[89] = *(v13 + 64);
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = type metadata accessor for Notice.Variant(0);
  v6[93] = swift_task_alloc();
  v14 = sub_1004B79C4();
  v6[94] = v14;
  v6[95] = *(v14 - 8);
  v6[96] = swift_task_alloc();
  v15 = sub_1004BB1A4();
  v6[97] = v15;
  v6[98] = *(v15 - 8);
  v6[99] = swift_task_alloc();
  v16 = sub_100003ABC(&qword_100605C60);
  v6[100] = v16;
  v6[101] = *(v16 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();

  return _swift_task_switch(sub_1001C6F88, 0, 0);
}

uint64_t sub_1001C6F88()
{
  v1 = v0[103];
  v2 = v0[101];
  v34 = v0[100];
  v35 = v0[102];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  sub_1004B76C4();
  sub_1004BAF94();
  (*(v4 + 8))(v3, v5);
  (*(v2 + 16))(v35, v1, v34);
  v6 = (*(v2 + 88))(v35, v34);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[102];
    v8 = v0[87];
    v9 = v0[86];
    v10 = v0[85];
    v11 = v0[84];
    (*(v0[101] + 96))(v7, v0[100]);
    (*(v10 + 32))(v8, v7, v11);
    (*(v10 + 16))(v9, v8, v11);
    v12 = (*(v10 + 88))(v9, v11);
    if (v12 == enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      v0[118] = sub_1004BC474();
      v0[119] = sub_1004BC464();
      v13 = sub_1004BC3E4();
      v15 = v14;
      v16 = sub_1001C7F04;
      v17 = v13;
      v18 = v15;
LABEL_10:

      return _swift_task_switch(v16, v17, v18);
    }

    if (v12 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      v0[111] = sub_1004BC474();
      v0[112] = sub_1004BC464();
      v27 = sub_1004BC3E4();
      v18 = v28;
      v0[113] = v27;
      v0[114] = v28;
      v16 = sub_1001C7AA4;
      v17 = v27;
      goto LABEL_10;
    }

    v29 = v0 + 87;
    v30 = v0 + 85;
    v31 = v0 + 84;
    (*(v0[85] + 8))(v0[86], v0[84]);
    goto LABEL_15;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 102;
    v30 = v0 + 101;
    v31 = v0 + 100;
LABEL_15:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[101] + 8))(v0[103], v0[100]);

    v32 = v0[1];

    return v32();
  }

  v19 = v0[96];
  v20 = enum case for MusicPin.Action.navigate(_:);
  v21 = sub_1004B79C4();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  v22 = swift_task_alloc();
  v0[104] = v22;
  *v22 = v0;
  v22[1] = sub_1001C747C;
  v23 = v0[96];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[64];

  return MusicLibrary.pin<A>(_:defaultAction:)(v26, v23, v25, v24);
}

uint64_t sub_1001C747C()
{
  v2 = *(*v1 + 768);
  v3 = *(*v1 + 760);
  v4 = *(*v1 + 752);
  *(*v1 + 840) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1001C8744;
  }

  else
  {
    v5 = sub_1001C75EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001C75EC()
{
  swift_storeEnumTagMultiPayload();
  *(v0 + 848) = sub_1004BC474();
  *(v0 + 856) = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001C7694, v2, v1);
}

uint64_t sub_1001C7694()
{
  v1 = *(v0 + 744);

  sub_100178D50(v1, 0);
  sub_1000C3C6C(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1001C772C, 0, 0);
}

uint64_t sub_1001C772C()
{
  (*(*(v0 + 704) + 16))(*(v0 + 728), *(v0 + 512), *(v0 + 536));
  sub_100003ABC(&qword_100601518);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 480);
    sub_100009178((v0 + 448), v1);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      sub_100004C6C(v0 + 448);
    }

    else
    {
      sub_100004C6C(v0 + 448);
      v6 = 0;
    }
  }

  else
  {
    *(v0 + 480) = 0;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    sub_100007214(v0 + 448, &unk_100606F20);
    v6 = 0;
    v5 = 0;
  }

  *(v0 + 872) = v5;
  *(v0 + 864) = v6;
  *(v0 + 880) = sub_1004BC464();
  v8 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001C78A4, v8, v7);
}

uint64_t sub_1001C78A4()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[66];

  PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(v2, v1, v3);

  return _swift_task_switch(sub_1001C793C, 0, 0);
}

uint64_t sub_1001C793C()
{
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001C7AA4()
{
  v1 = v0[65];
  v2 = sub_1004BC464();
  v0[115] = v2;
  v3 = swift_task_alloc();
  v0[116] = v3;
  *(v3 + 16) = 7;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[117] = v4;
  *v4 = v0;
  v4[1] = sub_1001C7BB8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 122, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004FC910, sub_100052470, v3, &type metadata for Bool);
}

uint64_t sub_1001C7BB8()
{
  v1 = *v0;

  v2 = *(v1 + 912);
  v3 = *(v1 + 904);

  return _swift_task_switch(sub_1001C7D18, v3, v2);
}

uint64_t sub_1001C7D18()
{

  return _swift_task_switch(sub_1001C7D80, 0, 0);
}

uint64_t sub_1001C7D80()
{
  (*(v0[85] + 8))(v0[87], v0[84]);
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001C7F04()
{

  sub_100114418(0, v0 + 280);

  return _swift_task_switch(sub_1001C7F78, 0, 0);
}

uint64_t sub_1001C7F78()
{
  *(v0 + 960) = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001C8004, v2, v1);
}

uint64_t sub_1001C8004()
{
  v1 = *(v0 + 520);

  v2 = sub_1000C88F4(v0 + 280, 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006000B8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_1004B80B4();
    sub_100007084(v7, qword_100607AD0);
    v8 = sub_1004B8094();
    v9 = sub_1004BC9A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 520);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_10023620C;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_10023720C;
    *(v0 + 376) = &unk_1005B7550;
    v13 = _Block_copy((v0 + 352));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_100047AC4(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_100048998(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_10005BC70, v15);
    sub_10003CC4C(v5);

    sub_100052310(v0 + 280);
  }

  else
  {
    sub_1002346EC(v2, *(v0 + 312), 1, 0, 0);

    sub_100052310(v0 + 280);
  }

  return _swift_task_switch(sub_1001D15CC, 0, 0);
}

uint64_t sub_1001C82EC()
{
  v1 = *(v0 + 520);

  v2 = sub_1000C88F4(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006000B8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_1004B80B4();
    sub_100007084(v7, qword_100607AD0);
    v8 = sub_1004B8094();
    v9 = sub_1004BC9A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 520);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_10023620C;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_10023720C;
    *(v0 + 424) = &unk_1005B75C8;
    v13 = _Block_copy((v0 + 400));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_100047AC4(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_100048998(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_10005BC70, v15);
    sub_10003CC4C(v5);

    sub_100052310(v0 + 208);
    v18 = sub_1001C85D4;
  }

  else
  {
    sub_1002346EC(v2, *(v0 + 240), 1, 0, 0);

    sub_100052310(v0 + 208);
    v18 = sub_1001D1600;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_1001C85D4()
{

  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001C8744()
{
  *(v0 + 488) = *(v0 + 840);
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 560) + 88))(*(v0 + 568), *(v0 + 552)) == enum case for MusicLibrary.InternalError.maximumPinCountReached(_:))
    {
      v1 = *(v0 + 656);
      v2 = *(v0 + 648);
      v3 = *(v0 + 640);
      v4 = *(v0 + 632);

      sub_1004BB1D4();
      sub_1004BB1C4();
      sub_1004BAE64();

      v5 = sub_1004B7754();

      sub_1004BBDE4();
      v52._countAndFlagsBits = 0xD000000000000035;
      v52._object = 0x8000000100503140;
      sub_1004BBDD4(v52);
      v48 = v5;
      *(v0 + 496) = v5;
      sub_1001D112C();
      v53._countAndFlagsBits = sub_1004BD274();
      sub_1004BBDC4(v53);

      v54._countAndFlagsBits = 0xD000000000000018;
      v54._object = 0x8000000100503180;
      sub_1004BBDD4(v54);
      sub_1004BBE04();
      v38 = *(v3 + 16);
      v38(v2, v1, v4);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 656);
      v7 = *(v0 + 648);
      v8 = *(v0 + 640);
      v9 = *(v0 + 632);
      v40 = *(v0 + 720);
      v41 = *(v0 + 616);
      v43 = *(v0 + 712);
      v42 = *(v0 + 600);
      v44 = *(v0 + 592);
      v45 = *(v0 + 584);
      v46 = *(v0 + 576);
      v34 = *(v0 + 528);
      v35 = *(v0 + 704);
      v33 = *(v0 + 512);
      v10 = qword_100617118;
      v49 = *(v0 + 536);
      sub_1004B6DF4();
      v11 = v10;
      v50 = sub_1004BBED4();
      v32 = v12;
      v13 = *(v8 + 8);
      v13(v6, v9);
      v31 = v13;
      sub_1004BBDA4();
      v38(v7, v6, v9);
      sub_1004B6DF4();
      v14 = sub_1004BBED4();
      v36 = v15;
      v37 = v14;
      v13(v6, v9);
      sub_100003ABC(&qword_1006011F0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1004C50A0;
      sub_1004BBDA4();
      v38(v7, v6, v9);
      sub_1004B6DF4();
      v47 = sub_1004BBED4();
      v39 = v17;
      v31(v6, v9);
      (*(v35 + 16))(v40, v33, v49);
      sub_10000F778(v34, v41, &qword_100601C50);
      v18 = (*(v35 + 80) + 56) & ~*(v35 + 80);
      v19 = (v43 + *(v42 + 80) + v18) & ~*(v42 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v49;
      *(v20 + 32) = v50;
      *(v20 + 40) = v32;
      *(v20 + 48) = v48;
      (*(v35 + 32))(v20 + v18, v40, v49);
      sub_100025B04(v41, v20 + v19, &qword_100601C50);

      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v21 = sub_1004B6CE4();
      v23 = v22;
      (*(v45 + 8))(v44, v46);
      *(v16 + 32) = v21;
      *(v16 + 40) = v23;
      *(v16 + 48) = v47;
      *(v16 + 56) = v39;
      *(v16 + 64) = 2;
      *(v16 + 72) = &unk_1004D26B0;
      *(v16 + 80) = v20;
      *(v0 + 208) = v37;
      *(v0 + 216) = v36;
      *(v0 + 224) = v50;
      *(v0 + 232) = v32;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
      *(v0 + 256) = 1;
      *(v0 + 264) = v16;
      *(v0 + 272) = 0;
      sub_1004BC474();
      *(v0 + 968) = sub_1004BC464();
      v25 = sub_1004BC3E4();

      return _swift_task_switch(sub_1001C82EC, v25, v24);
    }

    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  }

  v26 = *(v0 + 824);
  v27 = *(v0 + 808);
  v28 = *(v0 + 800);

  (*(v27 + 8))(v26, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1001C8E7C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(sub_100003ABC(&qword_100601C50) - 8) + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    sub_100048974(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = sub_1004B6B04();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1001C919C()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100003ABC(&qword_100601C50) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[4];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10001384C;

  return sub_1001C6B04(v8, v0 + v4, v0 + v5, v0 + v7, v3, v2);
}

void PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v5 = sub_100003ABC(&qword_100601C50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v40 - v7;
  v9 = sub_100003ABC(&qword_1006059F8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v43 = objc_opt_self();
  v13 = [v43 standardUserDefaults];
  v14 = sub_10013377C();
  v15 = sub_10000E7F4();
  v44 = v14;
  v42 = v15;
  NSUserDefaults.subscript.getter(&aBlock);

  if (v48)
  {
    if (swift_dynamicCast() & 1) != 0 && (v51[0])
    {
      return;
    }
  }

  else
  {
    sub_100007214(&aBlock, &qword_100605110);
  }

  sub_1004BB1D4();
  sub_1004BB1C4();
  sub_1004BAE64();

  sub_1004B7764();

  sub_1001CC898();
  sub_1004BC724();
  sub_1004BC764();
  v16 = sub_1004BC754();
  (*(v10 + 8))(v12, v9);
  if (v16 >= 2)
  {
    v17 = [objc_opt_self() sharedCloudController];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 isAutomaticDownloadsEnabledForPinnedLibraryEntities];

      if ((v19 & 1) == 0)
      {
        sub_10000F778(a3, v8, &qword_100601C50);
        v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = v41;
        *(v21 + 24) = a2;
        sub_100025B04(v8, v21 + v20, &qword_100601C50);

        sub_100117828(sub_1001D0158, v21, v51);

        v22 = sub_1000C88F4(v51, 0, 1);
        v23 = v22;
        v24 = v52;
        v25 = v45;
        v26 = *(v45 + 80);
        if (v26)
        {
          v27 = qword_1006000B8;

          if (v27 != -1)
          {
            swift_once();
          }

          v28 = sub_1004B80B4();
          sub_100007084(v28, qword_100607AD0);
          v29 = sub_1004B8094();
          v30 = sub_1004BC9A4();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "Deferring presentation…", v31, 2u);
          }

          v32 = objc_allocWithZone(MSVBlockGuard);
          v49 = sub_10023620C;
          v50 = 0;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v47 = sub_10023720C;
          v48 = &unk_1005B7228;
          v33 = _Block_copy(&aBlock);
          v34 = [v32 initWithTimeout:v33 interruptionHandler:10.0];
          _Block_release(v33);

          sub_100047AC4(v25, &aBlock);
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          sub_100048998(&aBlock, v35 + 24);
          *(v35 + 120) = v23;
          *(v35 + 128) = v24;
          *(v35 + 129) = 1;
          *(v35 + 136) = 0;
          *(v35 + 144) = 0;
          v36 = v34;
          v37 = v23;
          v26(v25, v37, sub_10005BB20, v35);
          sub_10003CC4C(v26);
        }

        else
        {
          sub_1002346EC(v22, v52, 1, 0, 0);
        }

        sub_100052310(v51);
        v38 = [v43 standardUserDefaults];
        v48 = &type metadata for Bool;
        LOBYTE(aBlock) = 1;
        NSUserDefaults.subscript.setter(&aBlock, v39, &_s4KeysON);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001C9934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[53] = a3;
  v8[54] = a4;
  sub_100003ABC(&qword_100601C50);
  v8[59] = swift_task_alloc();
  v8[60] = *(a8 - 8);
  v8[61] = swift_task_alloc();

  return _swift_task_switch(sub_1001C9A30, 0, 0);
}

uint64_t sub_1001C9A30()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  sub_1004BD404(79);
  v21._countAndFlagsBits = 0xD000000000000035;
  v21._object = 0x8000000100503140;
  sub_1004BC024(v21);
  *(v0 + 416) = v5;
  sub_1001D112C();
  v22._countAndFlagsBits = sub_1004BD274();
  sub_1004BC024(v22);

  v23._countAndFlagsBits = 0xD000000000000018;
  v23._object = 0x8000000100503180;
  sub_1004BC024(v23);
  (*(v2 + 16))(v1, v4, v3);
  sub_100003ABC(&qword_100601518);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 400);
    v7 = *(v0 + 408);
    sub_100009178((v0 + 376), v6);
    v8 = (*(v7 + 8))(v6, v7);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
    }

    else
    {
      v11 = 0xEB000000006D6574;
      v10 = 0x497972617262694CLL;
    }

    sub_100004C6C(v0 + 376);
  }

  else
  {
    v11 = 0xEB000000006D6574;
    v10 = 0x497972617262694CLL;
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    sub_100007214(v0 + 376, &unk_100606F20);
  }

  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  strcpy((v0 + 16), "PinnedContent");
  *(v0 + 30) = -4864;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001005031A0;
  *(v0 + 56) = v13;
  *(v0 + 64) = v12;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = &off_1005A5CA8;
  *(v0 + 96) = v10;
  *(v0 + 104) = v11;
  *(v0 + 112) = 19279;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = 0;
  strcpy((v0 + 136), "PinnedContent");
  *(v0 + 150) = -4864;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xD000000000000014;
  *(v0 + 168) = 0x80000001005031A0;
  *(v0 + 176) = v13;
  *(v0 + 184) = v12;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = &off_1005A5CA8;
  *(v0 + 216) = v10;
  *(v0 + 224) = v11;
  *(v0 + 232) = 19279;
  *(v0 + 240) = 0xE200000000000000;
  *(v0 + 248) = 0;

  sub_1000DD610(v0 + 16, v0 + 256);
  sub_1000DD648(v0 + 136);
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 472);
  sub_10000F778(*(v0 + 456), v14, &qword_100601C50);
  v15 = type metadata accessor for Actions.MetricsReportingContext();
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  v17 = *(v0 + 472);
  if (v16 == 1)
  {
    sub_100007214(*(v0 + 472), &qword_100601C50);
  }

  else
  {

    sub_1000C3C6C(v17, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v0 + 16);

  sub_1000DD648(v0 + 16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001C9E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100003ABC(&qword_1006014F8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100003ABC(&qword_100601C50);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001CA024, 0, 0);
}