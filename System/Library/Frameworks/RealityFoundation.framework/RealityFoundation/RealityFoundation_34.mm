uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v16 = v4;
      v18 = v7 == v4;
      v4 += 32;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v18 = v7 == v6;
    v6 += 32;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 32;
    v5 -= 32;
    v21 = v15;
    do
    {
      v22 = *(v21 - 4);
      v23 = *(v21 - 3);
      v21 -= 32;
      v24 = *(v6 - 4) == v22 && *(v6 - 3) == v23;
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v26 = *(v6 - 1);
          *v5 = *v20;
          *(v5 + 1) = v26;
        }

        if (v15 <= v4 || (v6 -= 32, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v15)
      {
        v25 = *(v21 + 1);
        *v5 = *v21;
        *(v5 + 1) = v25;
      }

      v5 -= 32;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_43:
  v27 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v13)
  {
    v14 = v10 << 6;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v20 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v16 = v4;
      v20 = v7 == v4;
      v4 += 64;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v20 = v7 == v6;
    v6 += 64;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 3);
    *(v7 + 2) = *(v16 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v21 = v13 << 6;
  if (a4 != __src || &__src[v21] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v15 = &v4[v21];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_28:
    v5 -= 64;
    do
    {
      v22 = *(v15 - 7) == *(v6 - 7) && *(v15 - 6) == *(v6 - 6);
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v27 = v6 - 64;
        if (v5 + 64 != v6)
        {
          v28 = *v27;
          v29 = *(v6 - 3);
          v30 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v30;
          *v5 = v28;
          *(v5 + 1) = v29;
        }

        if (v15 <= v4 || (v6 -= 64, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v23 = v15 - 64;
      if (v5 + 64 != v15)
      {
        v24 = *v23;
        v25 = *(v15 - 3);
        v26 = *(v15 - 1);
        *(v5 + 2) = *(v15 - 2);
        *(v5 + 3) = v26;
        *v5 = v24;
        *(v5 + 1) = v25;
      }

      v5 -= 64;
      v15 -= 64;
    }

    while (v23 > v4);
    v15 = v23;
  }

LABEL_43:
  v31 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v6 != v4 || v6 >= &v4[v31])
  {
    memmove(v6, v4, v31);
  }

  return 1;
}

uint64_t specialized static PhotogrammetrySessionImpl.verifyFreeStorageForFolderInputOrThrow(inputFolder:configuration:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  result = specialized static ImageHelper.calculateTotalImagesSizeInFolderShallowly(_:)();
  if (v2)
  {
    return result;
  }

  v19 = 3 * result;
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_5:
    v21 = __swift_project_value_buffer(v10, static PhotogrammetryFileHelpers.temporaryDirectory);
    (*(v11 + 16))(v17, v21, v10);
    if (v3(v9, 1, v10) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    goto LABEL_8;
  }

  a1 = 0;
  v20 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  outlined init with copy of [String : String](a2 + *(v20 + 28), v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(v11 + 48);
  if (v3(v9, 1, v10) == 1)
  {
    if (one-time initialization token for temporaryDirectory == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  (*(v11 + 32))(v17, v9, v10);
LABEL_8:
  specialized static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)(v17);
  if (a1 || specialized static PhotogrammetryFileHelpers.checkIfSufficientStorageSpace(requiredBytes:directory:)(v19, v17))
  {
    return (*(v11 + 8))(v17, v10);
  }

  v23 = v22;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, logger);
  (*(v11 + 16))(v14, v17, v10);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v43 = v26;
    v45 = v23;
    v27 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v27 = 141558530;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v44 = *(v11 + 8);
    v44(v14, v10);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v46);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2082;
    if (one-time initialization token for byteFormatter != -1)
    {
      swift_once();
    }

    v32 = v45;
    v33 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v46);

    *(v27 + 24) = v37;
    _os_log_impl(&dword_1C1358000, v25, v43, "Insufficient storage remaining in checkpointDirectory = %{mask.hash}s  Required bytes = %{public}s", v27, 0x20u);
    v38 = v42;
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v38, -1, -1);
    v39 = v27;
    v23 = v32;
    MEMORY[0x1C6902A30](v39, -1, -1);

    v40 = v44;
  }

  else
  {

    v40 = *(v11 + 8);
    v40(v14, v10);
  }

  type metadata accessor for PhotogrammetrySession.Error(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error);
  swift_allocError();
  *v41 = v23;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (v40)(v17, v10);
}

BOOL specialized static PhotogrammetrySessionImpl.containsMinimalNumberOfImages(_:)(uint64_t a1)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImageHelper();
  v9 = static ImageHelper.enumerateImageFilesInFolderShallowly(_:sorted:)(a1, 0);
  if (!v1)
  {
    v21[1] = 0;
    v10 = *(v9 + 16);

    v2 = v10 > 2;
    if (v10 <= 2)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      (*(v5 + 16))(v8, a1, v4);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v21[0] = swift_slowAlloc();
        v22 = v21[0];
        *v14 = 141558274;
        *(v14 + 4) = 1752392040;
        *(v14 + 12) = 2080;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;
        (*(v5 + 8))(v8, v4);
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v22);

        *(v14 + 14) = v18;
        _os_log_impl(&dword_1C1358000, v12, v13, "There are not enough images in the input folder: %{mask.hash}s", v14, 0x16u);
        v19 = v21[0];
        __swift_destroy_boxed_opaque_existential_1(v21[0]);
        MEMORY[0x1C6902A30](v19, -1, -1);
        MEMORY[0x1C6902A30](v14, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }
    }
  }

  return v2;
}

uint64_t specialized static PhotogrammetrySessionImpl.isCheckpointDirectoryValidForResumingReconstruction(checkpointDirectory:inputURL:internalConfiguration:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static PhotogrammetryFileHelpers.isEmptyDirectory(_:)())
  {
    type metadata accessor for ImageHelper();
    v4 = static ImageHelper.enumerateImageFilesInFolderShallowly(_:sorted:)(a2, 0);
    type metadata accessor for PhotogrammetrySession();
    v5 = static PhotogrammetrySession.getNumberOfSamplesInSnapshot(snapshotURL:)();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    v8 = *(v4 + 16);

    if (v8 == v7)
    {
      v9 = static PhotogrammetrySession.isConfigurationCompatibleWithSnapshot(configuration:snapshotURL:)();
      if (v9 != 2 && (v9 & 1) != 0)
      {
        v10 = static PhotogrammetrySession.isDeviceCompatibleWithSnapshot(snapshotURL:)();
        if (v10 != 2 && (v10 & 1) != 0)
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          __swift_project_value_buffer(v11, logger);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v12, v13))
          {
            v3 = 1;
            goto LABEL_30;
          }

          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_1C1358000, v12, v13, "The checkpoint directory is valid for resuming reconstruction.", v14, 2u);
          v3 = 1;
          goto LABEL_24;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, logger);
        v12 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v16))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          v17 = "The checkpoint is not compatible with this device. Ignoring the checkpoint...";
          goto LABEL_23;
        }

LABEL_29:
        v3 = 0;
        goto LABEL_30;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, logger);
      v12 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v12, v16))
      {
        goto LABEL_29;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v17 = "The configuration is different than the one in the checkpoint. Ignoring the checkpoint...";
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, logger);
      v12 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v12, v16))
      {
        goto LABEL_29;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v17 = "Number of input images does not match the samples in the checkpoint. Ignoring the checkpoint...";
    }

LABEL_23:
    _os_log_impl(&dword_1C1358000, v12, v16, v17, v14, 2u);
    v3 = 0;
LABEL_24:
    MEMORY[0x1C6902A30](v14, -1, -1);
LABEL_30:

    return v3;
  }

  return 0;
}

uint64_t *specialized PhotogrammetrySessionImpl.__allocating_init(id:input:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v231 = a1;
  v232 = type metadata accessor for UUID();
  v230 = *(v232 - 8);
  v5 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v228 = (v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v223 - 8) + 64);
  MEMORY[0x1EEE9AC00](v223);
  v222 = v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v227 = (v204 - v10);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v233 = v11;
  v234 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v224 = v204 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v226 = (v204 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v225 = (v204 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v204 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v204 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v204 - v26);
  v28 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v204 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v204 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v204 - v36;
  v38 = v229;
  specialized static PhotogrammetrySessionImpl.verifyFreeStorageForFolderInputOrThrow(inputFolder:configuration:)(a2, a3);
  if (v38)
  {
    outlined destroy of PhotogrammetrySession.Request(a3, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v234 + 8))(a2, v233);
    (*(v230 + 8))(v231, v232);
    return v24;
  }

  v217 = v37;
  v218 = v24;
  v219 = v28;
  v220 = v27;
  v229 = v21;
  v215 = v31;
  v216 = v34;
  v221 = a3;
  v39 = specialized static PhotogrammetrySessionImpl.containsMinimalNumberOfImages(_:)(a2);
  v40 = a2;
  v42 = v232;
  v43 = v221;
  v44 = v234;
  v214 = v40;
  if (!v39)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, logger);
    v72 = v226;
    v73 = v233;
    v228 = *(v44 + 16);
    v229 = (v44 + 16);
    v228(v226, v40, v233);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = v72;
      v77 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v236 = v227;
      *v77 = 141558274;
      *(v77 + 4) = 1752392040;
      *(v77 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v81 = v76;
      v42 = v232;
      v234 = *(v44 + 8);
      (v234)(v81, v73);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v236);
      v43 = v221;

      *(v77 + 14) = v82;
      _os_log_impl(&dword_1C1358000, v74, v75, "The given URL didn't have enough images to reconstruct: %{mask.hash}s", v77, 0x16u);
      v83 = v227;
      __swift_destroy_boxed_opaque_existential_1(v227);
      MEMORY[0x1C6902A30](v83, -1, -1);
      MEMORY[0x1C6902A30](v77, -1, -1);
    }

    else
    {

      v234 = *(v44 + 8);
      (v234)(v72, v73);
    }

    v92 = v231;
    type metadata accessor for PhotogrammetrySession.Error(0);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error);
    v24 = swift_allocError();
    v93 = v214;
    v228(v94, v214, v73);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of PhotogrammetrySession.Request(v43, type metadata accessor for PhotogrammetrySession.Configuration);
    (v234)(v93, v73);
    (*(v230 + 8))(v92, v42);
    return v24;
  }

  v212 = 0;
  v45 = type metadata accessor for PhotogrammetrySession.Configuration();
  v209 = v204;
  v46 = *(v45 - 1);
  v47 = v46[8];
  MEMORY[0x1EEE9AC00](v45);
  v226 = v48;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = v217;
  outlined init with copy of PhotogrammetrySession.Request(v43, v217, type metadata accessor for PhotogrammetrySession.Configuration);
  PhotogrammetrySession.Configuration.init(_:)(v50);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v52 = __swift_project_value_buffer(v51, logger);
  v206 = v204;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v54 = v204 - v49;
  v55 = v46[2];
  v217 = v204 - v49;
  v55(v204 - v49, v204 - v49, v45, v53);
  v213 = v52;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = os_log_type_enabled(v56, v57);
  v211 = v46 + 2;
  v210 = v55;
  if (v58)
  {
    v59 = v46;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v205 = v61;
    v204[1] = v204;
    v236 = v61;
    *v60 = 136315138;
    v62 = MEMORY[0x1EEE9AC00](v61);
    v55(v204 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v45, v62);
    v64 = String.init<A>(describing:)();
    v65 = v57;
    v67 = v66;
    v207 = v59[1];
    v207(v54, v45);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v67, &v236);

    v69 = v60;
    v46 = v59;
    v40 = v214;
    *(v69 + 1) = v68;
    _os_log_impl(&dword_1C1358000, v56, v65, "Using internal session config = %s", v69, 0xCu);
    v70 = v205;
    __swift_destroy_boxed_opaque_existential_1(v205);
    MEMORY[0x1C6902A30](v70, -1, -1);
    MEMORY[0x1C6902A30](v69, -1, -1);
  }

  else
  {

    v207 = v46[1];
    v207(v54, v45);
  }

  v84 = v233;
  v85 = v218;
  v86 = v227;
  outlined init with copy of [String : String](v221 + *(v219 + 28), v227, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v87 = v234;
  v88 = (*(v234 + 48))(v86, 1, v84);
  v227 = v45;
  v89 = v229;
  v90 = v220;
  v208 = v46;
  if (v88 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v86, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v91 = v87;
  }

  else
  {
    (*(v87 + 32))(v220, v86, v84);
    v91 = v87;
    if (specialized static PhotogrammetrySessionImpl.isCheckpointDirectoryValidForResumingReconstruction(checkpointDirectory:inputURL:internalConfiguration:)(v90, v40))
    {
      v95 = v85;
      v218 = *(v87 + 16);
      (v218)(v85, v90, v84);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = v87;
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v236 = v100;
        *v99 = 141558274;
        *(v99 + 4) = 1752392040;
        *(v99 + 12) = 2080;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v84;
        v104 = v103;
        v105 = *(v98 + 8);
        v105(v95, v102);
        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v104, &v236);

        *(v99 + 14) = v106;
        _os_log_impl(&dword_1C1358000, v96, v97, "Resuming internal photogrammetry session from checkpointDirectory = %{mask.hash}s", v99, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v100);
        MEMORY[0x1C6902A30](v100, -1, -1);
        v107 = v99;
        v90 = v220;
        MEMORY[0x1C6902A30](v107, -1, -1);
      }

      else
      {

        v105 = *(v87 + 8);
        v108 = (v105)(v95, v84);
      }

      v109 = MEMORY[0x1EEE9AC00](v108);
      v210(v204 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0), v217, v227, v109);
      v111 = type metadata accessor for PhotogrammetrySession();
      v112 = *(v111 + 48);
      v113 = *(v111 + 52);
      swift_allocObject();
      v114 = v212;
      v115 = PhotogrammetrySession.init(configuration:)();
      if (!v114)
      {
        v126 = v115;
        v229 = v105;
        v105(v90, v233);
        v127 = v230;
        v128 = v228;
LABEL_36:
        v153 = v231;
        (*(v127 + 16))(v128, v231, v232);
        v154 = v216;
        outlined init with copy of PhotogrammetrySession.Request(v221, v216, type metadata accessor for PhotogrammetrySession.Configuration);
        v155 = type metadata accessor for PhotogrammetrySessionImpl(0);
        v156 = *(v155 + 48);
        v157 = *(v155 + 52);
        v24 = swift_allocObject();

        PhotogrammetrySessionImpl.init(id:using:configuration:)(v128, v126, v154);
        type metadata accessor for ImageHelper();

        v158 = static ImageHelper.enumerateImageFilesInFolderShallowly(_:sorted:)(v40, 1);
        v196 = v40;
        v197 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles;
        v198 = *(v24 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles);
        *(v24 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles) = v158;

        v199 = *(v24 + v197);

        specialized static ImageHelper.logFilenames(files:)(v200);

        v207(v217, v227);
        PhotogrammetrySessionImpl.logAnalyticsEvents(sourceType:)(0);
        outlined destroy of PhotogrammetrySession.Request(v221, type metadata accessor for PhotogrammetrySession.Configuration);
        v229(v196, v233);
        (*(v127 + 8))(v153, v232);

        return v24;
      }

      v212 = 0;
      v116 = v114;
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v236 = v120;
        *v119 = 136446210;
        v235 = v114;
        v121 = v114;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v122 = String.init<A>(describing:)();
        v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v236);

        *(v119 + 4) = v124;
        _os_log_impl(&dword_1C1358000, v117, v118, "Resuming internal photogrammetry session failed with %{public}s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v120);
        MEMORY[0x1C6902A30](v120, -1, -1);
        MEMORY[0x1C6902A30](v119, -1, -1);

        v91 = v234;
        v125 = v220;
      }

      else
      {

        v91 = v234;
        v125 = v90;
      }

      v84 = v233;
      v105(v125, v233);
      v89 = v229;
    }

    else
    {
      (*(v87 + 8))(v90, v84);
    }
  }

  v218 = *(v91 + 16);
  (v218)(v89, v40, v84);
  v129 = v91;
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = v89;
    v133 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v236 = v220;
    *v133 = 141558274;
    *(v133 + 4) = 1752392040;
    *(v133 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v134 = dispatch thunk of CustomStringConvertible.description.getter();
    v136 = v135;
    v229 = *(v129 + 8);
    v229(v132, v233);
    v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v136, &v236);
    v138 = v40;
    v139 = v137;
    v84 = v233;

    *(v133 + 14) = v139;
    v40 = v138;
    _os_log_impl(&dword_1C1358000, v130, v131, "Creating internal photogrammetry session from imageURL = %{mask.hash}s", v133, 0x16u);
    v140 = v220;
    __swift_destroy_boxed_opaque_existential_1(v220);
    MEMORY[0x1C6902A30](v140, -1, -1);
    MEMORY[0x1C6902A30](v133, -1, -1);
  }

  else
  {

    v229 = *(v129 + 8);
    v229(v89, v84);
  }

  v141 = v210;
  v142 = (v218)(v225, v40, v84);
  v143 = MEMORY[0x1EEE9AC00](v142);
  v145 = v217;
  v24 = v227;
  v141(v204 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0), v217, v227, v143);
  v146 = type metadata accessor for PhotogrammetrySession();
  v147 = *(v146 + 48);
  v148 = *(v146 + 52);
  swift_allocObject();
  v149 = v212;
  v150 = PhotogrammetrySession.init(imagesURL:configuration:)();
  v128 = v228;
  if (!v149)
  {
    v126 = v150;
    v127 = v230;
    v40 = v214;
    goto LABEL_36;
  }

  v207(v145, v24);
  LODWORD(v228) = 0;
  v152 = v230;
  v151 = v231;
  v236 = v149;
  v159 = type metadata accessor for PhotogrammetrySession.Error();
  v160 = *(v159 - 8);
  v161 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v163 = v204 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v165 = swift_dynamicCast();
  v166 = v232;
  if (!v165)
  {
    goto LABEL_52;
  }

  v227 = v204;
  v167 = (*(v160 + 88))(v163, v159);
  v168 = v167;
  if (MEMORY[0x1E6998308] && v167 == *MEMORY[0x1E6998308])
  {

    v169 = v215;
    outlined init with copy of PhotogrammetrySession.Request(v221, v215, type metadata accessor for PhotogrammetrySession.Configuration);
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v235 = v226;
      *v172 = 141558274;
      *(v172 + 4) = 1752392040;
      *(v172 + 12) = 2080;
      v173 = v169 + *(v219 + 28);
      LODWORD(v225) = v171;
      outlined init with copy of [String : String](v173, v222, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v174 = String.init<A>(describing:)();
      v176 = v175;
      outlined destroy of PhotogrammetrySession.Request(v169, type metadata accessor for PhotogrammetrySession.Configuration);
      v177 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v176, &v235);
      v152 = v230;

      *(v172 + 14) = v177;
      _os_log_impl(&dword_1C1358000, v170, v225, "Internal photogrammetry session init failed for checkpointDirectory = %{mask.hash}s", v172, 0x16u);
      v178 = v226;
      __swift_destroy_boxed_opaque_existential_1(v226);
      MEMORY[0x1C6902A30](v178, -1, -1);
      v179 = v172;
      v166 = v232;
      MEMORY[0x1C6902A30](v179, -1, -1);
    }

    else
    {

      outlined destroy of PhotogrammetrySession.Request(v169, type metadata accessor for PhotogrammetrySession.Configuration);
    }

LABEL_54:
    lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error();
    swift_allocError();
    (*(v160 + 104))(v195, v168, v159);
    swift_willThrow();
    outlined destroy of PhotogrammetrySession.Request(v221, type metadata accessor for PhotogrammetrySession.Configuration);
    v229(v214, v233);
    (*(v152 + 8))(v231, v166);

LABEL_55:
    if (!v228)
    {
      return v24;
    }

LABEL_56:

    return v24;
  }

  if (!MEMORY[0x1E6998300] || v167 != *MEMORY[0x1E6998300])
  {
    if (MEMORY[0x1E69982F8] && v167 == *MEMORY[0x1E69982F8])
    {

      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        *v193 = 0;
        _os_log_impl(&dword_1C1358000, v191, v192, "Internal photogrammetry session init failed!", v193, 2u);
        v194 = v193;
        v166 = v232;
        MEMORY[0x1C6902A30](v194, -1, -1);
      }

      goto LABEL_54;
    }

    (*(v160 + 8))(v163, v159);
    v151 = v231;
LABEL_52:

    swift_willThrow();
    outlined destroy of PhotogrammetrySession.Request(v221, type metadata accessor for PhotogrammetrySession.Configuration);
    v229(v214, v233);
    (*(v152 + 8))(v151, v166);
    goto LABEL_55;
  }

  v180 = v233;
  v181 = (v234 + 16);
  v182 = v224;
  (v218)(v224, v214, v233);
  v183 = Logger.logObject.getter();
  v184 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v235 = v225;
    *v185 = 141558274;
    *(v185 + 4) = 1752392040;
    *(v185 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v186 = dispatch thunk of CustomStringConvertible.description.getter();
    v226 = v181;
    v188 = v187;
    v229(v182, v180);
    v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v188, &v235);

    *(v185 + 14) = v189;
    _os_log_impl(&dword_1C1358000, v183, v184, "Internal photogrammetry session init failed for imageURL = %{mask.hash}s", v185, 0x16u);
    v190 = v225;
    __swift_destroy_boxed_opaque_existential_1(v225);
    MEMORY[0x1C6902A30](v190, -1, -1);
    MEMORY[0x1C6902A30](v185, -1, -1);
  }

  else
  {

    v229(v182, v180);
  }

  v201 = v231;
  type metadata accessor for PhotogrammetrySession.Error(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error);
  swift_allocError();
  v202 = v214;
  (v218)(v203, v214, v180);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined destroy of PhotogrammetrySession.Request(v221, type metadata accessor for PhotogrammetrySession.Configuration);
  v229(v202, v180);
  (*(v230 + 8))(v201, v232);

  if (v228)
  {
    goto LABEL_56;
  }

  return v24;
}

uint64_t specialized static PhotogrammetrySessionImpl.verifyFreeStorageForSequenceInputOrThrow(configuration:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  if (one-time initialization token for requiredBytesForImagesCaptureDirectory != -1)
  {
    swift_once();
  }

  v16 = 3 * static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory;
  if ((static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory * 3) >> 64 != (3 * static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory) >> 63)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  v17 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  outlined init with copy of [String : String](a1 + *(v17 + 28), v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = *(v9 + 48);
  if (v2(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v15, v7, v8);
    goto LABEL_9;
  }

  if (one-time initialization token for temporaryDirectory != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  v18 = __swift_project_value_buffer(v8, static PhotogrammetryFileHelpers.temporaryDirectory);
  (*(v9 + 16))(v15, v18, v8);
  if (v2(v7, 1, v8) != 1)
  {
    outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

LABEL_9:
  specialized static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)(v15);
  if (v1 || specialized static PhotogrammetryFileHelpers.checkIfSufficientStorageSpace(requiredBytes:directory:)(v16, v15))
  {
    return (*(v9 + 8))(v15, v8);
  }

  v21 = v19;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  (*(v9 + 16))(v12, v15, v8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v41 = v24;
    v42 = v23;
    v25 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v25 = 141558530;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v9 + 8);
    v29(v12, v8);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v43);

    *(v25 + 14) = v30;
    *(v25 + 22) = 2082;
    if (one-time initialization token for byteFormatter != -1)
    {
      swift_once();
    }

    v31 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v43);

    *(v25 + 24) = v35;
    v36 = v42;
    _os_log_impl(&dword_1C1358000, v42, v41, "Insufficient storage remaining in checkpointDirectory = %{mask.hash}s  Required bytes = %{public}s", v25, 0x20u);
    v37 = v40;
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v37, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  else
  {

    v29 = *(v9 + 8);
    v29(v12, v8);
  }

  type metadata accessor for PhotogrammetrySession.Error(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error);
  swift_allocError();
  *v38 = v21;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (v29)(v15, v8);
}

uint64_t specialized PhotogrammetrySessionImpl.isValidModelUrl(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_14;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "modelFile output URL must be a file URL!";
    goto LABEL_13;
  }

  if (URL.hasDirectoryPath.getter())
  {
    if (specialized static PhotogrammetryFileHelpers.isExistingDirectory(_:)())
    {
      if (!specialized static PhotogrammetryFileHelpers.isEmptyDirectory(_:)())
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, logger);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_14;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Existing directory output URL must be empty!";
LABEL_13:
        _os_log_impl(&dword_1C1358000, v8, v9, v11, v10, 2u);
        MEMORY[0x1C6902A30](v10, -1, -1);
LABEL_14:

        return 0;
      }
    }

    else
    {
      v29 = [objc_opt_self() defaultManager];
      v30 = URL.path.getter();
      v31 = MEMORY[0x1C68F3280](v30);

      v32 = [v29 fileExistsAtPath_];

      if (v32)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, logger);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_14;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Model output directory URL provided, but a non-directory already exists at this URL!";
        goto LABEL_13;
      }
    }

    return 1;
  }

  if (URL.pathExtension.getter() == 2053403509 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_14;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Output URL must be specify a '.usdz' extension file!";
      goto LABEL_13;
    }
  }

  v16 = [objc_opt_self() defaultManager];
  v17 = URL.path.getter();
  v18 = MEMORY[0x1C68F3280](v17);

  v19 = [v16 fileExistsAtPath_];

  if (!v19)
  {
    return 1;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  (*(v3 + 16))(v6, a1, v2);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 141558274;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v3 + 8))(v6, v2);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v36);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_1C1358000, v21, v22, "A file already exists at url %{mask.hash}s and will not be overwritten!", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1C6902A30](v24, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

void specialized PhotogrammetrySessionImpl.throwIfInvalidRequests(_:)(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = (v19 + 32);
    v14 = (v19 + 8);
    v15 = *(v3 + 72);
    do
    {
      outlined init with copy of PhotogrammetrySession.Request(v12, v6, type metadata accessor for PhotogrammetrySession.Request);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of PhotogrammetrySession.Request(v6, type metadata accessor for PhotogrammetrySession.Request);
      }

      else
      {
        (*v13)(v10, v6, v7);
        if ((specialized PhotogrammetrySessionImpl.isValidModelUrl(_:)(v10) & 1) == 0)
        {
          type metadata accessor for PhotogrammetrySession.Error(0);
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error);
          swift_allocError();
          v16 = v19 + 16;
          (*(v19 + 16))(v17, v10, v7);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v16 - 8))(v10, v7);
          return;
        }

        (*v14)(v10, v7);
      }

      v12 += v15;
      --v11;
    }

    while (v11);
  }
}

uint64_t outlined destroy of PhotogrammetrySession.Request(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for UUID() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t partial apply for closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t outlined init with copy of PhotogrammetrySession.Request(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in OutputPublisherMonitor.handleProcessingCancelled()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in OutputPublisherMonitor.handleProcessingCancelled()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in OutputPublisherMonitor.handleProcessingComplete()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in OutputPublisherMonitor.handleProcessingComplete()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error)
  {
    type metadata accessor for PhotogrammetrySession.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in OutputPublisherMonitor.connectPublisher(_:)()
{
  v1 = *(type metadata accessor for PhotogrammetrySession.Output() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #1 in OutputPublisherMonitor.connectPublisher(_:)(v2, v3);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of PhotogrammetrySession.Request(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  return MEMORY[0x1C68F2C00](a1 + *(v4 + 20), v3) & 1;
}

{
  return partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(a1) & 1;
}

uint64_t partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionInitEvent(event:)()
{
  v1 = *(type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in AnalyticsManager.sendPhotogrammetrySessionInitEvent(event:)(v2);
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(a1, v4, v5);
}

void partial apply for closure #4 in closure #1 in OutputPublisherMonitor.init(publisher:)()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR) - 8) + 80);

  closure #4 in closure #1 in OutputPublisherMonitor.init(publisher:)();
}

uint64_t objectdestroy_179Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t objectdestroy_134Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PhotogrammetrySession.Output(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(v0 + v2, v5);
}

void type metadata completion function for AsyncOutputIterator()
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for AsyncStream<PhotogrammetrySession.Output>.Iterator, type metadata accessor for PhotogrammetrySession.Output, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t protocol witness for LocalizedError.errorDescription.getter in conformance AudioFileGroupResource.Error()
{
  v1 = 0xD000000000000050;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000064;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x206E776F6E6B6E55;
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for AccessibilityComponent.RotorTypeInternal);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for __RKEntityTriggerSpecification);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for __RKEntityActionSpecification);
}

{
  v5 = v1;
  v6 = a1;
  v7 = *(a1 + 16);
  ChildCount = REEntityGetChildCount();
  if (ChildCount < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = ChildCount;
  if (ChildCount)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v6 + 16);
      if (v9 >= REEntityGetChildCount())
      {
        break;
      }

      if (v2 == ++v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_6:
  if (!(*v5 >> 62))
  {
    if (!__OFADD__(*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10), v2))
    {
      goto LABEL_8;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  if (__OFADD__(__CocoaSet.count.getter(), v2))
  {
    goto LABEL_18;
  }

LABEL_8:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v3 = *v5;
  v4 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = *(v4 + 0x10);
  v12 = (*(v4 + 0x18) >> 1) - v11;
  v13 = specialized Sequence._copySequenceContents(initializing:)(&v21, v4 + 8 * v11 + 32, v12, v6);
  if (v13 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13 >= 1)
  {
    v14 = *(v4 + 16);
    v15 = __OFADD__(v14, v13);
    v16 = v14 + v13;
    if (v15)
    {
      __break(1u);
LABEL_32:
      *(v2 + 16) = v6;
      goto LABEL_13;
    }

    *(v4 + 16) = v16;
  }

  if (v13 != v12)
  {
    goto LABEL_13;
  }

LABEL_20:
  v6 = *(v4 + 16);
  v18 = specialized Entity.ChildCollection.IndexingIterator.next()();
  if (v18)
  {
    while (1)
    {
      if (v6 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = v18;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v20;
      }

      v3 = *v5;
      v2 = *v5 & 0xFFFFFFFFFFFFFF8;
      if (v6 <= *(v2 + 0x18) >> 1)
      {
        v19 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      else
      {
        v19 = v6;
      }

      while (v19 != v6)
      {
        *(v2 + 32 + 8 * v6++) = v18;
        v18 = specialized Entity.ChildCollection.IndexingIterator.next()();
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      *(v2 + 16) = v19;
      v6 = v19;
    }
  }

LABEL_13:

  *v5 = v3;
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for __RKEntityInteractionSpecification);
}

Swift::Int specialized Array.append<A>(contentsOf:)(Swift::Int result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = String.UTF8View._foreignCount()();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v9 = v5 + v3;
      }

      else
      {
        v9 = v5;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v4);
      v10 = *(v4 + 3) >> 1;
    }

    v11 = *(v4 + 2);

    result = _StringGuts.copyUTF8(into:)();
    if (v12)
    {
      goto LABEL_22;
    }

    v13 = result;
    result = swift_bridgeObjectRelease_n();
    if (v13 >= v3)
    {
      if (v13 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v14 = *(v4 + 2);
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      if (!v15)
      {
        *(v4 + 2) = v16;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pMd, &_ss9CodingKey_pMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = __CocoaSet.count.getter();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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
  v10 = *v3;
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
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t MeshDescriptor.makeGeomMesh()@<X0>(uint64_t a1@<X8>)
{
  v62 = v1[1];
  v63 = *v1;
  v3 = v1[2];
  v64 = *(v1 + 32);
  v4 = v1[5];
  v5 = v1[6];
  LODWORD(v6) = *(v1 + 56);
  v65 = v1[9];
  v56 = v1[8];
  v57 = v1[10];
  v58 = v1[11];
  v60 = v1[3];
  v61 = v1[12];
  if (one-time initialization token for positions != -1)
  {
LABEL_109:
    swift_once();
  }

  if (*(v3 + 16) && (!HIBYTE(word_1EBEAD0B8) ? (v7 = 0) : (v7 = 256), v8 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v7 | word_1EBEAD0B8), (v9 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v8, &v88);
    outlined init with take of BindableDataInternal(&v88, &v94);
    v52 = v6;
    v6 = *(&v95 + 1);
    v10 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v13 = v6;
    LODWORD(v6) = v52;
    v11(&v100, v12, v13, v10);
    __swift_destroy_boxed_opaque_existential_1(&v94);
  }

  else
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
  }

  v96 = v102;
  v97 = v103;
  v98 = v104;
  v99 = v105;
  v94 = v100;
  v95 = v101;
  if (!v100)
  {
    _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(MEMORY[0x1E69E7CC0], &v82);
    v90 = v84;
    v91 = v85;
    v92 = v86;
    v93 = v87;
    v88 = v82;
    v89 = v83;
    result = outlined destroy of BodyTrackingComponent?(&v88, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
    if (*(&v92 + 1))
    {
      goto LABEL_11;
    }

LABEL_21:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 18) = 1;
    return result;
  }

  result = outlined destroy of BodyTrackingComponent?(&v94, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
  if (!*(&v98 + 1))
  {
    goto LABEL_21;
  }

LABEL_11:
  if (*(v3 + 16) && (!HIBYTE(word_1EBEAD0B8) ? (v15 = 0) : (v15 = 256), v16 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v15 | word_1EBEAD0B8), (v17 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v16, &v76);
    outlined init with take of BindableDataInternal(&v76, &v82);
    v53 = v4;
    v18 = v6;
    v6 = *(&v83 + 1);
    v19 = v84;
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    v20 = *(v19 + 56);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v22 = v6;
    LODWORD(v6) = v18;
    v4 = v53;
    v20(&v88, v21, v22, v19);
    __swift_destroy_boxed_opaque_existential_1(&v82);
  }

  else
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v88 = 0u;
  }

  v84 = v90;
  v85 = v91;
  v86 = v92;
  v87 = v93;
  v82 = v88;
  v83 = v89;
  if (v88)
  {
    result = outlined destroy of BodyTrackingComponent?(&v82, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
    v23 = *(&v86 + 1);
  }

  else
  {
    _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(MEMORY[0x1E69E7CC0], &v70);
    v79 = v73;
    v80 = v74;
    v81 = v75;
    v76 = v70;
    v77 = v71;
    v78 = v72;
    result = outlined destroy of BodyTrackingComponent?(&v76, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
    v23 = *(&v80 + 1);
  }

  v59 = a1;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v25 = *(v4 + 16);
      v26 = v25 / 3;
      v27 = v4;
      v28 = *(v5 + 16);
      v29 = v28 >> 2;
      v54 = v27;
      outlined copy of MeshDescriptor.Primitives(v27, v5, 2u);
      if (v25 >= 3)
      {
        v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v30 + 16) = v26;
        memset((v30 + 32), 3, v25 / 3);
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

      v24 = v29 + v26;
      if (v28 >= 4)
      {
        v32 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v32 + 16) = v29;
        memset((v32 + 32), 4, v28 >> 2);
      }

      else
      {
        v32 = MEMORY[0x1E69E7CC0];
      }

      *&v76 = v30;
      specialized Array.append<A>(contentsOf:)(v32);
      *&v76 = v54;
      result = specialized Array.append<A>(contentsOf:)(v5);
    }

    else
    {
      v24 = 0;
    }
  }

  else if (v6)
  {
    v24 = *(v4 + 16);
    result = outlined copy of MeshDescriptor.Primitives(v4, v5, 1u);
  }

  else if (*(v4 + 16) >= 3uLL)
  {
    v24 = *(v4 + 16) / 3uLL;
    outlined copy of MeshDescriptor.Primitives(v4, v5, 0);
    v31 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v31 + 16) = v24;
    result = memset((v31 + 32), 3, v24);
  }

  else
  {
    result = outlined copy of MeshDescriptor.Primitives(v4, v5, 0);
    v24 = 0;
  }

  if (v23 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_111;
  }

  if (v23 < 0)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (HIDWORD(v24))
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v6 = REGeomModelDescriptorCreate();

  if (!v6)
  {
    *v59 = xmmword_1C18A4F10;
    *(v59 + 16) = 0;
    *(v59 + 18) = 1;
    return result;
  }

  v55 = v23;
  v33 = MeshBufferDictionary.entries.getter(v3);
  v3 = v33;
  v5 = 0;
  a1 = v33 + 64;
  v34 = 1 << *(v33 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v33 + 64);
  v4 = (v34 + 63) >> 6;
  while (v36)
  {
LABEL_52:
    outlined init with copy of AnyMeshBuffer(*(v3 + 56) + 40 * (__clz(__rbit64(v36)) | (v5 << 6)), &v76);
    *&v72 = v78;
    v70 = v76;
    v71 = v77;
    v38 = *(&v77 + 1);
    v39 = v78;
    __swift_project_boxed_opaque_existential_1(&v70, *(&v77 + 1));
    (*(v39 + 8))(&v66, v38, v39);
    v40 = v66;
    v41 = v67;
    if (one-time initialization token for triangleIndices != -1)
    {
      v45 = v66;
      swift_once();
      v40 = v45;
    }

    v36 &= v36 - 1;
    if (v40 == static MeshBuffers.Identifier.triangleIndices && v41 == *algn_1EBEAD098)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        v43 = *(&v71 + 1);
        v44 = v72;
        __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
        (*(v44 + 32))(&v66, v43, v44);
        if (v66 > 5u)
        {
          if (v66 > 8u)
          {
            if (v66 == 9)
            {
              if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeVector3F(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeVector3F(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
              {
                goto LABEL_104;
              }
            }

            else if (v66 != 10 || (specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeVector4F(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeVector4F(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
LABEL_104:
              RERelease();
              v47 = *(&v71 + 1);
              v48 = v72;
              __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
              (*(v48 + 8))(&v66, v47, v48);

              result = outlined destroy of AnyMeshBuffer(&v70);
              v49 = v67;
              v50 = v68;
              if (v69)
              {
                v51 = 256;
              }

              else
              {
                v51 = 0;
              }

              *v59 = v66;
              *(v59 + 8) = v49;
              *(v59 + 16) = v51 | v50;
              *(v59 + 18) = 1;
              return result;
            }
          }

          else if (v66 == 6)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeFloat(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeFloat(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_104;
            }
          }

          else if (v66 == 7)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeDouble(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeDouble(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_104;
            }
          }

          else if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeVector2F(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeVector2F(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        else if (v66 > 2u)
        {
          if (v66 == 3)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeInt8(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeInt8(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_104;
            }
          }

          else if (v66 == 4)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeInt16(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeInt16(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_104;
            }
          }

          else if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeInt32(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeInt32(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        else if (v66)
        {
          if (v66 == 1)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeUInt16(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeUInt16(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_104;
            }
          }

          else if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeUInt32(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeUInt32(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        else if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v70, @nonobjc REGeomModelDescriptorAddAttributeUInt8(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeUInt8(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
        {
          goto LABEL_104;
        }
      }
    }

    outlined destroy of AnyMeshBuffer(&v70);
  }

  while (1)
  {
    v37 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_109;
    }

    if (v37 >= v4)
    {
      break;
    }

    v36 = *(a1 + 8 * v37);
    ++v5;
    if (v36)
    {
      v5 = v37;
      goto LABEL_52;
    }
  }

  String.utf8CString.getter();
  REGeomModelDescriptorSetName();

  if (v64)
  {
    result = REGeomModelDescriptorSetMaterialAssignmentsPerFace();
  }

  else
  {
    result = REGeomModelDescriptorSetMaterialAssignmentForModel();
  }

  if (!v65)
  {
    goto LABEL_102;
  }

  v46 = v61 * v55;
  if ((v61 * v55) >> 64 != (v61 * v55) >> 63)
  {
    goto LABEL_113;
  }

  if (!v46 || *(v58 + 16) != v46 || *(v57 + 16) != v46)
  {
    result = RERelease();
    *v59 = xmmword_1C18A4F10;
    *(v59 + 16) = 0;
    *(v59 + 18) = 1;
    return result;
  }

  if (v61 < 0xFFFFFFFF80000000)
  {
    goto LABEL_114;
  }

  if (v61 <= 0x7FFFFFFF)
  {
    String.utf8CString.getter();
    REGeomModelDescriptorAddSkinningData();

LABEL_102:
    *v59 = v6;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0;
    *(v59 + 18) = 0;
    return result;
  }

LABEL_115:
  __break(1u);
  return result;
}

uint64_t MeshJointInfluence.init(jointIndex:weight:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a2 = result;
    *(a2 + 4) = a3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t MeshJointInfluence.jointIndex.setter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*MeshJointInfluence.jointIndex.modify(void *a1))(uint64_t result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return MeshJointInfluence.jointIndex.modify;
}

uint64_t MeshJointInfluence.jointIndex.modify(uint64_t result, char a2)
{
  v2 = *result;
  v3 = *result < 0xFFFFFFFF80000000;
  if (a2)
  {
    if (*result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v3 = v2 < 0x7FFFFFFF;
    if (v2 <= 0x7FFFFFFF)
    {
LABEL_7:
      **(result + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

float (*MeshJointInfluence.weight.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return MeshJointInfluence.weight.modify;
}

float MeshJointInfluence.weight.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 4) = result;
  return result;
}

uint64_t MeshBuffers.Identifier.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void one-time initialization function for positions()
{
  strcpy(&static MeshBuffers.Identifier.positions, "vertexPosition");
  unk_1EBEAD027 = -18;
  word_1EBEAD028 = 0;
}

{
  strcpy(&static MeshBuffers.positions, "vertexPosition");
  unk_1EBEAD0B7 = -18;
  word_1EBEAD0B8 = 0;
}

uint64_t static MeshBuffers.Identifier.positions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for positions != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD020;
  v3 = word_1EBEAD028;
  v4 = HIBYTE(word_1EBEAD028);
  *a1 = static MeshBuffers.Identifier.positions;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for normals()
{
  strcpy(&static MeshBuffers.Identifier.normals, "vertexNormal");
  algn_1EBEAD038[5] = 0;
  *&algn_1EBEAD038[6] = -5120;
  word_1EBEAD040 = 0;
}

{
  strcpy(&static MeshBuffers.normals, "vertexNormal");
  algn_1EBEAD0C8[5] = 0;
  *&algn_1EBEAD0C8[6] = -5120;
  word_1EBEAD0D0 = 0;
}

uint64_t static MeshBuffers.Identifier.normals.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for normals != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD038;
  v3 = word_1EBEAD040;
  v4 = HIBYTE(word_1EBEAD040);
  *a1 = static MeshBuffers.Identifier.normals;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for tangents()
{
  strcpy(&static MeshBuffers.Identifier.tangents, "vertexTangent");
  unk_1EBEAD056 = -4864;
  word_1EBEAD058 = 0;
}

{
  strcpy(&static MeshBuffers.tangents, "vertexTangent");
  unk_1EBEAD0E6 = -4864;
  word_1EBEAD0E8 = 0;
}

uint64_t static MeshBuffers.Identifier.tangents.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for tangents != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD050;
  v3 = word_1EBEAD058;
  v4 = HIBYTE(word_1EBEAD058);
  *a1 = static MeshBuffers.Identifier.tangents;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for bitangents()
{
  static MeshBuffers.Identifier.bitangents = 0x6942786574726576;
  *algn_1EBEAD068 = 0xEF746E65676E6174;
  word_1EBEAD070 = 0;
}

{
  static MeshBuffers.bitangents = 0x6942786574726576;
  *algn_1EBEAD0F8 = 0xEF746E65676E6174;
  word_1EBEAD100 = 0;
}

uint64_t static MeshBuffers.Identifier.bitangents.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bitangents != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD068;
  v3 = word_1EBEAD070;
  v4 = HIBYTE(word_1EBEAD070);
  *a1 = static MeshBuffers.Identifier.bitangents;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for textureCoordinates()
{
  static MeshBuffers.Identifier.textureCoordinates = 0x5655786574726576;
  unk_1EBEAD080 = 0xE800000000000000;
  word_1EBEAD088 = 0;
}

{
  static MeshBuffers.textureCoordinates = 0x5655786574726576;
  unk_1EBEAD110 = 0xE800000000000000;
  word_1EBEAD118 = 0;
}

uint64_t static MeshBuffers.Identifier.textureCoordinates.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for textureCoordinates != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD080;
  v3 = word_1EBEAD088;
  v4 = HIBYTE(word_1EBEAD088);
  *a1 = static MeshBuffers.Identifier.textureCoordinates;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for triangleIndices()
{
  strcpy(&static MeshBuffers.Identifier.triangleIndices, "indexTriangles");
  algn_1EBEAD098[7] = -18;
  word_1EBEAD0A0 = 0;
}

{
  strcpy(&static MeshBuffers.triangleIndices, "indexTriangles");
  algn_1EBEAD128[7] = -18;
  word_1EBEAD130 = 0;
}

uint64_t static MeshBuffers.Identifier.triangleIndices.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for triangleIndices != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD098;
  v3 = word_1EBEAD0A0;
  v4 = HIBYTE(word_1EBEAD0A0);
  *a1 = static MeshBuffers.Identifier.triangleIndices;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t MeshBuffers.Identifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    v3 = 34;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 16))
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v1, v2);

  MEMORY[0x1C68F3410](v3, v4);

  return v3;
}

uint64_t MeshBuffers.Identifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

uint64_t static MeshBuffers.Identifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int MeshBuffers.Identifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MeshBuffers.Identifier()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MeshBuffers.Identifier()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MeshBuffers.Identifier()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MeshBuffers.Identifier(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshBuffers.Identifier()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    v3 = 34;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 16))
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v1, v2);

  MEMORY[0x1C68F3410](v3, v4);

  return v3;
}

uint64_t MeshBuffers.ElementType.genericAttributeDescriptor.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 > 8u)
    {
      v8 = MEMORY[0x1E6998E70];
      if (v1 != 10)
      {
        v8 = MEMORY[0x1E6998ED0];
      }

      if (v1 == 9)
      {
        v6 = MEMORY[0x1E6998E68];
      }

      else
      {
        v6 = v8;
      }
    }

    else if (v1 == 6)
    {
      v6 = MEMORY[0x1E6998E58];
    }

    else
    {
      if (v1 == 7)
      {
        return 0;
      }

      v6 = MEMORY[0x1E6998E60];
    }
  }

  else
  {
    v2 = MEMORY[0x1E6998EA0];
    v3 = MEMORY[0x1E6998E88];
    v4 = MEMORY[0x1E6998E78];
    if (v1 != 4)
    {
      v4 = MEMORY[0x1E6998E80];
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = MEMORY[0x1E6998E90];
    if (v1 != 1)
    {
      v5 = MEMORY[0x1E6998E98];
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      v6 = v2;
    }

    else
    {
      v6 = v3;
    }
  }

  v9 = *v6;
  type metadata accessor for MeshAttributeDescriptor();
  result = swift_allocObject();
  *(result + 16) = v9;
  return result;
}

uint64_t BufferDescriptor.description.getter()
{
  v1 = *(v0 + 18);
  v2 = *(v0 + 19);
  v3 = *(v0 + 20);
  MEMORY[0x1C68F3410](*v0, *(v0 + 8));
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  if (v3)
  {
    v4 = 695216160;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v4, v5);

  return 0;
}

uint64_t MeshBuffers.Semantic.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.positions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for positions != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *(&static MeshBuffers.positions + 1);
  v3 = word_1EBEAD0B8;
  v4 = HIBYTE(word_1EBEAD0B8);
  *a1 = static MeshBuffers.positions;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.normals.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for normals != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD0C8;
  v3 = word_1EBEAD0D0;
  v4 = HIBYTE(word_1EBEAD0D0);
  *a1 = static MeshBuffers.normals;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.tangents.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for tangents != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD0E0;
  v3 = word_1EBEAD0E8;
  v4 = HIBYTE(word_1EBEAD0E8);
  *a1 = static MeshBuffers.tangents;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.bitangents.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bitangents != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD0F8;
  v3 = word_1EBEAD100;
  v4 = HIBYTE(word_1EBEAD100);
  *a1 = static MeshBuffers.bitangents;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.textureCoordinates.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for textureCoordinates != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD110;
  v3 = word_1EBEAD118;
  v4 = HIBYTE(word_1EBEAD118);
  *a1 = static MeshBuffers.textureCoordinates;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.triangleIndices.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for triangleIndices != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD128;
  v3 = word_1EBEAD130;
  v4 = HIBYTE(word_1EBEAD130);
  *a1 = static MeshBuffers.triangleIndices;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

unint64_t static MeshBuffers.custom<A>(_:type:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  result = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v7);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = result == 8;
  *(a3 + 17) = 0;
  return result;
}

void one-time initialization function for jointInfluences()
{
  static MeshBuffers.jointInfluences = 0xD00000000000001FLL;
  unk_1EBEAD140 = 0x80000001C18DD9B0;
  word_1EBEAD148 = 0;
}

{
  static MeshBuffers.Identifier.jointInfluences = 0xD00000000000001FLL;
  unk_1EBEAD170 = 0x80000001C18DD9B0;
  word_1EBEAD178 = 0;
}

uint64_t static MeshBuffers.jointInfluences.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for jointInfluences != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD140;
  v3 = word_1EBEAD148;
  v4 = HIBYTE(word_1EBEAD148);
  *a1 = static MeshBuffers.jointInfluences;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for jointInfluenceEndIndices()
{
  static MeshBuffers.jointInfluenceEndIndices = 0xD000000000000023;
  *algn_1EBEAD158 = 0x80000001C18DD9D0;
  word_1EBEAD160 = 0;
}

{
  static MeshBuffers.Identifier.jointInfluenceEndIndices = 0xD000000000000023;
  *algn_1EBEAD188 = 0x80000001C18DD9D0;
  word_1EBEAD190 = 0;
}

uint64_t static MeshBuffers.jointInfluenceEndIndices.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for jointInfluenceEndIndices != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD158;
  v3 = word_1EBEAD160;
  v4 = HIBYTE(word_1EBEAD160);
  *a1 = static MeshBuffers.jointInfluenceEndIndices;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.Identifier.jointInfluences.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for jointInfluences != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD170;
  v3 = word_1EBEAD178;
  v4 = HIBYTE(word_1EBEAD178);
  *a1 = static MeshBuffers.Identifier.jointInfluences;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.Identifier.jointInfluenceEndIndices.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for jointInfluenceEndIndices != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD188;
  v3 = word_1EBEAD190;
  v4 = HIBYTE(word_1EBEAD190);
  *a1 = static MeshBuffers.Identifier.jointInfluenceEndIndices;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

Swift::Bool __swiftcall MeshBuffer.Iterator.getChunk()()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v2(*v1);
  v6 = v5;
  if (v5)
  {
    *v1 = v4;
    v7 = v1[1];

    v1[1] = v6;
  }

  return v6 != 0;
}

uint64_t MeshBuffer.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - v10;
  if (*(v2 + 8))
  {
    v12 = *(v2 + 8);

    AnyIterator.next()();
    v13 = *(v5 - 8);
    if ((*(v13 + 48))(v11, 1, v5) == 1)
    {
      (*(v7 + 8))(v11, v6);
      if (MeshBuffer.Iterator.getChunk()())
      {
        MeshBuffer.Iterator.next()(a1);
      }

      else
      {
        (*(v13 + 56))(a2, 1, 1, v5);
      }
    }

    else
    {

      (*(v13 + 32))(a2, v11, v5);
      return (*(v13 + 56))(a2, 0, 1, v5);
    }
  }

  else
  {
    v14 = *(*(v5 - 8) + 56);

    return v14(a2, 1, 1, v5, v9);
  }
}

BOOL MeshBuffer.makeIterator()@<W0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(v1 + 48);
  return MeshBuffer.Iterator.getChunk()();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = closure #1 in MeshBuffer.init<A>(_:)specialized partial apply;
  *(a2 + 8) = v5;
  *(a2 + 16) = closure #2 in MeshBuffer.init<A>(_:)specialized partial apply;
  *(a2 + 24) = v6;
  *(a2 + 32) = closure #3 in MeshBuffer.init<A>(_:)specialized partial apply;
  *(a2 + 40) = v7;
  *(a2 + 48) = closure #4 in MeshBuffer.init<A>(_:)specialized partial apply;
  *(a2 + 56) = v8;
  *(a2 + 64) = 9;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs4Int8V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 3;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs4Int8V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 3;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5UInt8V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 0;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5UInt8V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 0;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int16V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 4;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int16V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 4;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt16V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 1;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt16V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 1;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int32V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 5;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int32V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 5;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt32V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 2;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt32V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 2;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCSf_AA05ArrayD0VySfGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 6;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCSf_AA08IndexingD0VySfGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 6;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCSd_AA05ArrayD0VySdGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 7;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCSd_AA08IndexingD0VySdGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 7;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 8;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA08IndexingD0VyAJGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 8;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA08IndexingD0VyAJGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 9;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD4VySfG_AA05ArrayD0VyAJGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 10;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD4VySfG_AA08IndexingD0VyAJGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 10;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCAA0C14JointInfluenceV_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 11;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCAA0C14JointInfluenceV_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 11;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t specialized closure #3 in MeshBuffer.init<A>(_:)(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  result = REMeshAssetGetModelPartBufferAttributeCount();
  if ((result - 0x800000000000000) >> 60 == 15)
  {
    v8[0] = specialized Data.init(count:)(16 * result);
    v8[1] = v7;

    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v8, a1);
    return v8[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  ModelPartBufferAttributeCount = REMeshAssetGetModelPartBufferAttributeCount();
  v7 = (ModelPartBufferAttributeCount * 12) >> 64;
  result = 12 * ModelPartBufferAttributeCount;
  if (v7 == result >> 63)
  {
    v10[0] = specialized Data.init(count:)(result);
    v10[1] = v9;

    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v10, a1);
    return v10[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  result = REMeshAssetGetModelPartBufferAttributeCount();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    v8[0] = specialized Data.init(count:)(8 * result);
    v8[1] = v7;

    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v8, a1);
    return v8[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  result = REMeshAssetGetModelPartBufferAttributeCount();
  if ((result - 0x2000000000000000) >> 62 == 3)
  {
    v8[0] = specialized Data.init(count:)(4 * result);
    v8[1] = v7;

    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v8, a1);
    return v8[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  result = REMeshAssetGetModelPartBufferAttributeCount();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v8[0] = specialized Data.init(count:)(2 * result);
    v8[1] = v7;

    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v8, a1);
    return v8[0];
  }

  return result;
}

uint64_t specialized closure #4 in MeshBuffer.init<A>(_:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = a2[6];

  v13 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD4VySfG_Tt1g5092_s17RealityFoundation14MeshPartBufferC9copySlice6offset5countSayxGSi_SitFySryxGz_SiztXEfU_s5F9VySfG_Tg50H10Foundation0jkL0CyAGGS2iTf1nc_nTf4ngnn_nTm(v12, a2, a1, v12, a3, a4);

  v15 = *(v13 + 16);
  if (!v15)
  {

    return 0;
  }

  v16 = __OFADD__(a1, v15);
  v17 = a1 + v15;
  if (!v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = 0;
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #4 in MeshBuffer.init<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a2[6];

  v10 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfC17RealityFoundation18MeshJointInfluenceV_Tt1g504_s17f12Foundation14h69PartBufferC9copySlice6offset5countSayxGSi_SitFySryxGz_SiztXEfU_AA0C14iJ5V_Tg5AE0hmN0CyAGGS2iTf1nc_nTf4ngnn_nTm(v9, a2);

  v12 = *(v10 + 16);
  if (!v12)
  {

    return 0;
  }

  v13 = __OFADD__(a1, v12);
  v14 = a1 + v12;
  if (!v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = 0;
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t MeshBuffer.elements.getter(uint64_t a1)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v17[3] = v3;
  v17[4] = v1[4];
  v18 = *(v1 + 80);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  result = (*&v17[0])();
  if (!result)
  {
    v6 = v1[2];
    v7 = v1[4];
    v14 = v1[3];
    v15 = v7;
    v16 = *(v1 + 80);
    v8 = v1[1];
    v11 = *v1;
    v12 = v8;
    v13 = v6;
    (*(*(a1 - 8) + 16))(v10, v17, a1);
    v9 = *(a1 + 16);
    swift_getWitnessTable();
    return Array.init<A>(_:)();
  }

  return result;
}

uint64_t MeshBuffer.usingRate(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(v3 + 32);
  v7 = *(v3 + 64);
  v13 = *(v3 + 48);
  v6 = v13;
  v14 = v7;
  v15 = *(v3 + 80);
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v5;
  *(a3 + 32) = v5;
  *(a3 + 48) = v6;
  *(a3 + 64) = v7;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 80) = v4;
  return (*(*(a2 - 8) + 16))(v11, v12, a2);
}

uint64_t MeshBuffer.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(*(v6 - 8) + 56))(v16 - v11, 1, 1, v6, v10);
  v23 = 1;
  v13 = v3[3];
  v19 = v3[2];
  v20 = v13;
  v21 = v3[4];
  v22 = *(v3 + 80);
  v14 = v3[1];
  v17 = *v3;
  v18 = v14;
  v16[4] = v6;
  v16[5] = &v23;
  v16[6] = v12;
  v16[7] = a1;
  v16[8] = a2;
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  return (*(v8 + 8))(v12, v7);
}

{
  v21 = a2;
  v20 = a1;
  v4 = *(a3 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = *(*(v4 - 8) + 56);
  v14(&v19 - v12, 1, 1, v4, v11);
  (v14)(v9, 1, 1, v4);
  v34 = 1;
  v15 = v3[3];
  v30 = v3[2];
  v31 = v15;
  v32 = v3[4];
  v33 = *(v3 + 80);
  v16 = v3[1];
  v28 = *v3;
  v29 = v16;
  v22 = v4;
  v23 = &v34;
  v24 = v13;
  v25 = v9;
  v26 = v20;
  v27 = v21;
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  v17 = *(v6 + 8);
  v17(v9, v5);
  return (v17)(v13, v5);
}

{
  v24 = a3;
  v23 = a2;
  v22 = a1;
  v4 = *(a3 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  v17 = *(*(v4 - 8) + 56);
  v17(&v22 - v15, 1, 1, v4, v14);
  (v17)(v12, 1, 1, v4);
  (v17)(v9, 1, 1, v4);
  v38 = 1;
  v18 = v3[3];
  v34 = v3[2];
  v35 = v18;
  v36 = v3[4];
  v37 = *(v3 + 80);
  v19 = v3[1];
  v32 = *v3;
  v33 = v19;
  v25 = v4;
  v26 = &v38;
  v27 = v16;
  v28 = v12;
  v29 = v9;
  v30 = v22;
  v31 = v23;
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  v20 = *(v6 + 8);
  v20(v9, v5);
  v20(v12, v5);
  return (v20)(v16, v5);
}

void closure #1 in MeshBuffer.forEach(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Optional();
  v13 = *(*(v12 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v22 - v17;
  if (*a2 != 2)
  {
    if (*a2 != 1)
    {
      return;
    }

    (*(v15 + 8))(a3, v14, v16);
    v19 = *(a6 - 8);
    (*(v19 + 16))(a3, a1, a6);
    (*(v19 + 56))(a3, 0, 1, a6);
    v20 = 2;
    goto LABEL_7;
  }

  (*(v15 + 16))(v18, a3, v16);
  v21 = *(a6 - 8);
  if ((*(v21 + 48))(v18, 1, a6) == 1)
  {
    __break(1u);
    return;
  }

  a4(v18, a1);
  (*(v21 + 8))(v18, a6);
  if (!v6)
  {
    v20 = 1;
LABEL_7:
    *a2 = v20;
  }
}

void closure #1 in MeshBuffer.forEach(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t), uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a5;
  v35 = a1;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v18;
  v21 = *a2;
  if (*a2 == 1)
  {
    v34 = a2;
    v22 = 2;
LABEL_10:
    (*(v13 + 8))(a3, v12, v19);
    v28 = *(a7 - 8);
    (*(v28 + 16))(a3, v35, a7);
    (*(v28 + 56))(a3, 0, 1, a7);
    goto LABEL_11;
  }

  if (v21 != 3)
  {
    if (v21 != 2)
    {
      return;
    }

    v34 = a2;
    v22 = 3;
    a3 = a4;
    goto LABEL_10;
  }

  v34 = a2;
  v23 = *(v13 + 16);
  v30 = v7;
  v31 = v23;
  (v23)(&v29 - v18, a3, v12, v19);
  v24 = *(a7 - 8);
  v25 = *(v24 + 48);
  if (v25(v20, 1, a7) == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v31(v16, a4, v12);
  if (v25(v16, 1, a7) == 1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v26 = v30;
  v33(v20, v16, v35);
  v27 = *(v24 + 8);
  v27(v16, a7);
  v27(v20, a7);
  if (v26)
  {
    return;
  }

  v22 = 1;
LABEL_11:
  *v34 = v22;
}

void closure #1 in MeshBuffer.forEach(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, char *, uint64_t), uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a6;
  v37 = a5;
  v38 = a4;
  v40 = a1;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - v21;
  v24 = *a2;
  if (*a2 <= 2)
  {
    if (v24 == 1)
    {
      v39 = a2;
      v25 = 2;
    }

    else
    {
      if (v24 != 2)
      {
        return;
      }

      v39 = a2;
      v25 = 3;
      a3 = v38;
    }

    goto LABEL_14;
  }

  if (v24 == 3)
  {
    v39 = a2;
    v25 = 4;
    a3 = v37;
LABEL_14:
    (*(v13 + 8))(a3, v12, v22);
    v31 = *(a8 - 8);
    (*(v31 + 16))(a3, v40, a8);
    (*(v31 + 56))(a3, 0, 1, a8);
    goto LABEL_15;
  }

  if (v24 != 4)
  {
    return;
  }

  v39 = a2;
  v26 = *(v13 + 16);
  v33 = v8;
  v34 = v26;
  (v26)(&v32 - v21, a3, v12, v22);
  v27 = *(a8 - 8);
  v28 = *(v27 + 48);
  if (v28(v23, 1, a8) == 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v34(v19, v38, v12);
  if (v28(v19, 1, a8) == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34(v16, v37, v12);
  if (v28(v16, 1, a8) == 1)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v29 = v33;
  v36(v23, v19, v16, v40);
  v30 = *(v27 + 8);
  v30(v16, a8);
  v30(v19, a8);
  v30(v23, a8);
  if (v29)
  {
    return;
  }

  v25 = 1;
LABEL_15:
  *v39 = v25;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance MeshBuffer<A>(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  v4 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v4;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  (*(*(a1 - 8) + 8))(v7, a1);
  return v3;
}

double MeshBuffer<A>.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs4Int8V_AA05ArrayD0VyAIGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5UInt8V_AA05ArrayD0VyAIGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int16V_AA05ArrayD0VyAIGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt16V_AA05ArrayD0VyAIGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int32V_AA05ArrayD0VyAIGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt32V_AA05ArrayD0VyAIGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCSf_AA05ArrayD0VySfGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCSd_AA05ArrayD0VySdGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD4VySfG_AA05ArrayD0VyAJGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCAA0C14JointInfluenceV_AA05ArrayD0VyAIGTt1g5(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

double MeshBuffer<A>.init(elements:indices:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs4Int8V_AA08IndexingD0VyAIGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5UInt8V_AA08IndexingD0VyAIGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int16V_AA08IndexingD0VyAIGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt16V_AA08IndexingD0VyAIGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int32V_AA08IndexingD0VyAIGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt32V_AA08IndexingD0VyAIGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCSf_AA08IndexingD0VySfGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCSd_AA08IndexingD0VySdGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA08IndexingD0VyAJGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA08IndexingD0VyAJGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD4VySfG_AA08IndexingD0VyAJGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

{
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCAA0C14JointInfluenceV_AA08IndexingD0VyAIGTt1g5(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

uint64_t MeshBuffer<A>.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = specialized SequenceBuffer.init<A>(_:)(a1, MEMORY[0x1E69E7230], a2);
  v8 = v7;
  (*(*(a2 - 8) + 8))(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v9;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v10;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v11;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v12;
  *(a3 + 64) = 3;
  *(a3 + 72) = v8;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = specialized SequenceBuffer.init<A>(_:)(a1, MEMORY[0x1E69E7508], a2);
  v8 = v7;
  (*(*(a2 - 8) + 8))(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v9;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v10;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v11;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v12;
  *(a3 + 64) = 0;
  *(a3 + 72) = v8;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = specialized SequenceBuffer.init<A>(_:)(a1, MEMORY[0x1E69E7290], a2);
  v8 = v7;
  (*(*(a2 - 8) + 8))(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v9;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v10;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v11;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v12;
  *(a3 + 64) = 4;
  *(a3 + 72) = v8;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = specialized SequenceBuffer.init<A>(_:)(a1, MEMORY[0x1E69E75F8], a2);
  v8 = v7;
  (*(*(a2 - 8) + 8))(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v9;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v10;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v11;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v12;
  *(a3 + 64) = 1;
  *(a3 + 72) = v8;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = specialized SequenceBuffer.init<A>(_:)(a1, MEMORY[0x1E69E72F0], a2);
  v8 = v7;
  (*(*(a2 - 8) + 8))(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v9;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v10;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v11;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v12;
  *(a3 + 64) = 5;
  *(a3 + 72) = v8;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = specialized SequenceBuffer.init<A>(_:)(a1, MEMORY[0x1E69E7668], a2);
  v8 = v7;
  (*(*(a2 - 8) + 8))(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v9;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v10;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v11;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v12;
  *(a3 + 64) = 2;
  *(a3 + 72) = v8;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = specialized SequenceBuffer.init<A>(_:)(a1, MEMORY[0x1E69E6448], a2);
  v8 = v7;
  (*(*(a2 - 8) + 8))(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v9;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v10;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v11;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v12;
  *(a3 + 64) = 6;
  *(a3 + 72) = v8;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = specialized SequenceBuffer.init<A>(_:)(a1, MEMORY[0x1E69E63B0], a2);
  v8 = v7;
  (*(*(a2 - 8) + 8))(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v9;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v10;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v11;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v12;
  *(a3 + 64) = 7;
  *(a3 + 72) = v8;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  v7 = specialized SequenceBuffer.init<A>(_:)(a1, v6, a2);
  v9 = v8;
  (*(*(a2 - 8) + 8))(a1, a2);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v10;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v11;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v12;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v13;
  *(a3 + 64) = 8;
  *(a3 + 72) = v9;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v7 = specialized SequenceBuffer.init<A>(_:)(a1, v6, a2);
  v9 = v8;
  (*(*(a2 - 8) + 8))(a1, a2);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v10;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v11;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v12;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v13;
  *(a3 + 64) = 9;
  *(a3 + 72) = v9;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  v7 = specialized SequenceBuffer.init<A>(_:)(a1, v6, a2);
  v9 = v8;
  (*(*(a2 - 8) + 8))(a1, a2);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v10;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v11;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v12;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v13;
  *(a3 + 64) = 10;
  *(a3 + 72) = v9;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

{
  v6 = specialized SequenceBuffer.init<A>(_:)(a1, &type metadata for MeshJointInfluence, a2);
  v8 = v7;
  (*(*(a2 - 8) + 8))(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v9;
  *(a3 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a3 + 24) = v10;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v11;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v12;
  *(a3 + 64) = 11;
  *(a3 + 72) = v8;
  *(a3 + 80) = 0;
  return swift_retain_n();
}

uint64_t IndexingBuffer.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v3 = v2[2];
  if (v3 >= *(v4 + 16))
  {
    v12 = *(*(*(result + 16) - 8) + 56);

    return v12(a2, 1, 1);
  }

  else
  {
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = *v2;
      v6 = *(v4 + 4 * v3 + 32);
      v7 = *(result + 16);
      Array.subscript.getter();
      result = (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
      v9 = v2[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (!v10)
      {
        v2[2] = v11;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ConversionBuffer.ConvertingIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  AnyIterator.next()();
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17 = 1;
  }

  else
  {
    (*(v11 + 32))(v15, v10, v5);
    v18 = v2[1];
    v19 = v2[2];
    v18(v15);
    (*(v11 + 8))(v15, v5);
    v17 = 0;
  }

  return (*(*(*(a1 + 16) - 8) + 56))(a2, v17, 1);
}

float closure #1 in MeshBuffer<A>.asSIMD3.getter@<S0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v2 = *a1;
  *(&v2 + 1) = *(a1 + 8);
  *a2 = v2;
  return *&v2;
}

uint64_t static MeshBuffers.blendShapeOffsets(named:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  v6 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v9);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 17) = v6 == 8;
}

__n128 MeshBufferDictionary.BufferEntry.init<A>(_:buffer:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a2 + 64);
  v11 = *(a2 + 65);
  v29 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a4 + 24);
  v13(&v30, a3, a4);
  v27 = v31;
  v28 = v30;
  v25 = v33;
  v26 = v32;
  v13(&v30, a3, a4);
  v14 = v30;
  v15 = v31;
  if (one-time initialization token for triangleIndices != -1)
  {
    v24 = v30;
    swift_once();
    v14 = v24;
  }

  v16 = 2;
  if (v14 != static MeshBuffers.Identifier.triangleIndices || v15 != *algn_1EBEAD098)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v16 = 2;
    }

    else
    {
      v16 = v12;
    }
  }

  (*(*(a3 - 8) + 8))(a1, a3);

  v18 = *(a2 + 16);
  *&v34[5] = *a2;
  *&v34[21] = v18;
  v19 = *(a2 + 48);
  *&v34[37] = *(a2 + 32);
  *&v34[53] = v19;
  *a5 = v28;
  *(a5 + 8) = v27;
  *(a5 + 16) = v26;
  *(a5 + 17) = v25;
  *(a5 + 24) = v29;
  *(a5 + 32) = v16;
  *(a5 + 33) = v10;
  *(a5 + 34) = v11 & 1;
  v20 = *&v34[16];
  *(a5 + 35) = *v34;
  result = *&v34[32];
  v22 = *&v34[48];
  *(a5 + 96) = *&v34[61];
  *(a5 + 83) = v22;
  *(a5 + 67) = result;
  *(a5 + 51) = v20;
  *(a5 + 104) = v10;
  *(a5 + 105) = v11;
  v23 = *(a2 + 66);
  *(a5 + 110) = *(a2 + 70);
  *(a5 + 106) = v23;
  *(a5 + 112) = v29;
  *(a5 + 120) = v12;
  return result;
}

uint64_t MeshBufferDictionary.BufferEntry.asGPUData.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return v1();
}

double MeshBufferDictionary.BufferEntry.get<A>()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 33);
  v7 = *(v3 + 34);
  v8 = *(v3 + 88);
  v75[2] = *(v3 + 72);
  v75[3] = v8;
  v75[4] = *(v3 + 104);
  v76 = *(v3 + 120);
  v9 = *(v3 + 56);
  v75[0] = *(v3 + 40);
  v75[1] = v9;
  if (v6 != 1)
  {
    if (v6 == 9)
    {
      if (v7)
      {
        v10 = a1;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        a1 = v10;
        if (v11 == a2)
        {
          v12 = *(v3 + 88);
          v71 = *(v3 + 72);
          v72 = v12;
          v73 = *(v3 + 104);
          v74 = *(v3 + 120);
          v13 = *(v3 + 56);
          v69 = *(v3 + 40);
          v70 = v13;
          v14 = *(v10 + 16);
          v15 = type metadata accessor for MeshBuffer();
          (*(*(v15 - 8) + 16))(&v51, v75, v15);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGMR);
          if (swift_dynamicCast())
          {
            v16 = v67;
            v17 = v68;
            v18 = swift_allocObject();
            v19 = v65;
            *(v18 + 48) = v64;
            *(v18 + 64) = v19;
            v20 = v66;
            v21 = v63;
            *(v18 + 16) = v62;
            *(v18 + 32) = v21;
            *(v18 + 80) = v20;
            *(v18 + 88) = v16;
            *(v18 + 96) = v17;
            *(v18 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
            *(v18 + 112) = 0;
            v22 = swift_allocObject();
            v22[2] = partial apply for specialized closure #1 in ConversionBuffer.init(_:_:);
            v22[3] = v18;
            v22[4] = v16;
            v23 = swift_allocObject();
            v23[2] = partial apply for specialized closure #1 in ConversionBuffer.init(_:_:);
            v23[3] = v18;
            v23[4] = v16;
            v24 = swift_allocObject();
            v24[2] = partial apply for specialized closure #1 in ConversionBuffer.init(_:_:);
            v24[3] = v18;
            v24[4] = v16;
            v25 = swift_allocObject();
            v25[2] = partial apply for specialized closure #1 in ConversionBuffer.init(_:_:);
            v25[3] = v18;
            v25[4] = v16;
            v51 = __RKEntityLookAtCameraAction.reversed();
            v52 = v22;
            v53 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
            v54 = v23;
            v55 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
            v56 = v24;
            v57 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
            v58 = v25;
            v59 = 9;
            v60 = v16;
            v61 = 0;
            swift_retain_n();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
            goto LABEL_13;
          }

          goto LABEL_9;
        }
      }
    }

LABEL_8:
    v26 = *(v3 + 88);
    v71 = *(v3 + 72);
    v72 = v26;
    v73 = *(v3 + 104);
    v74 = *(v3 + 120);
    v27 = *(v3 + 56);
    v69 = *(v3 + 40);
    v70 = v27;
    v28 = *(a1 + 16);
    v29 = type metadata accessor for MeshBuffer();
    (*(*(v29 - 8) + 16))(&v62, v75, v29);
    type metadata accessor for MeshBuffer();
    if (swift_dynamicCast())
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a2 != MEMORY[0x1E69E7668])
  {
    goto LABEL_8;
  }

  v31 = *(v3 + 88);
  v71 = *(v3 + 72);
  v72 = v31;
  v73 = *(v3 + 104);
  v74 = *(v3 + 120);
  v32 = *(v3 + 56);
  v69 = *(v3 + 40);
  v70 = v32;
  v33 = *(a1 + 16);
  v34 = type metadata accessor for MeshBuffer();
  (*(*(v34 - 8) + 16))(&v51, v75, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MeshBufferVys6UInt16VGMd, &_s17RealityFoundation10MeshBufferVys6UInt16VGMR);
  if (swift_dynamicCast())
  {
    v35 = v67;
    v36 = v68;
    v37 = swift_allocObject();
    v38 = v65;
    *(v37 + 48) = v64;
    *(v37 + 64) = v38;
    v39 = v66;
    v40 = v63;
    *(v37 + 16) = v62;
    *(v37 + 32) = v40;
    *(v37 + 80) = v39;
    *(v37 + 88) = v35;
    *(v37 + 96) = v36;
    *(v37 + 104) = closure #1 in MeshBuffer<A>.asUInt32.getter;
    *(v37 + 112) = 0;
    v41 = swift_allocObject();
    v41[2] = partial apply for specialized closure #1 in ConversionBuffer.init(_:_:);
    v41[3] = v37;
    v41[4] = v35;
    v42 = swift_allocObject();
    v42[2] = partial apply for specialized closure #1 in ConversionBuffer.init(_:_:);
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_allocObject();
    v43[2] = partial apply for specialized closure #1 in ConversionBuffer.init(_:_:);
    v43[3] = v37;
    v43[4] = v35;
    v44 = swift_allocObject();
    v44[2] = partial apply for specialized closure #1 in ConversionBuffer.init(_:_:);
    v44[3] = v37;
    v44[4] = v35;
    v51 = __RKEntityLookAtCameraAction.reversed();
    v52 = v41;
    v53 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
    v54 = v42;
    v55 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
    v56 = v43;
    v57 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
    v58 = v44;
    v59 = 2;
    v60 = v35;
    v61 = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MeshBufferVys6UInt32VGMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGMR);
LABEL_13:
    type metadata accessor for MeshBuffer();
    if (swift_dynamicCast())
    {
      *(a3 + 32) = v47;
      *(a3 + 48) = v48;
      *(a3 + 64) = v49;
      *(a3 + 80) = v50;
      result = *&v45;
      *a3 = v45;
      *(a3 + 16) = v46;
      return result;
    }
  }

LABEL_9:
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t protocol witness for MeshBufferErased.id.getter in conformance MeshBufferDictionary.BufferEntry<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t MeshBufferDictionary.entries.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC03AnyE6BufferVGMd, &_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC03AnyE6BufferVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v33 = result;
  v34 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v32 = result + 64;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v35 = (v10 - 1) & v10;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = 24 * v15;
      v17 = *(v34 + 48) + 24 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 17);
      v22 = 40 * v15;
      outlined init with copy of __REAssetService(*(v34 + 56) + 40 * v15, v38);
      result = outlined init with take of BindableDataInternal(v38, v36);
      v23 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v24 = 1 << v15;
      v3 = v33;
      *(v32 + v23) |= v24;
      v25 = v33[6] + v16;
      *v25 = v18;
      *(v25 + 8) = v19;
      *(v25 + 16) = v20;
      *(v25 + 17) = v21;
      v26 = v33[7] + v22;
      v27 = v37;
      v28 = v36[1];
      *v26 = v36[0];
      *(v26 + 16) = v28;
      *(v26 + 32) = v27;
      v29 = v33[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v33[2] = v31;

      v10 = v35;
      if (!v35)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double MeshBufferDictionary.subscript.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 24))(v16, a2, a3);
  if (*(a1 + 16))
  {
    if (v18)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v16[0], v16[1], v6 | v17);
    v9 = v8;

    if (v9)
    {
      outlined init with copy of __REAssetService(*(a1 + 56) + 40 * v7, v15);
      outlined init with take of BindableDataInternal(v15, v19);
      v10 = v20;
      v11 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v12 = *(v11 + 56);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v12(AssociatedTypeWitness, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return result;
    }
  }

  else
  {
  }

  *(a4 + 80) = 0;
  result = 0.0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t MeshBufferDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13[3];
  v47 = v13[2];
  v48 = v14;
  v49 = v13[4];
  v50 = *(v13 + 80);
  v15 = v13[1];
  v45 = *v13;
  v46 = v15;
  v16 = v45;
  if (v45)
  {
    v28 = v4;
    (*(a4 + 24))(v36, a3, a4);
    v26 = v36[1];
    v27 = v36[0];
    HIDWORD(v25) = v37;
    v17 = v38;
    (*(v9 + 16))(v12, a2, a3);
    v30 = v16;
    v18 = *(a1 + 24);
    v33 = *(a1 + 40);
    v34[0] = *(a1 + 56);
    *(v34 + 9) = *(a1 + 65);
    v31 = *(a1 + 8);
    v32 = v18;
    swift_getAssociatedTypeWitness();
    v35[3] = type metadata accessor for MeshBufferDictionary.BufferEntry();
    v35[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v19 = swift_allocObject();
    v35[0] = v19;
    v41 = v47;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v39 = v45;
    v40 = v46;
    v20 = type metadata accessor for MeshBuffer();
    (*(*(v20 - 8) + 16))(&v29, &v39, v20);
    MeshBufferDictionary.BufferEntry.init<A>(_:buffer:)(v12, &v30, a3, a4, v19 + 16);
    if (v17)
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    specialized Dictionary.subscript.setter(v35, v27, v26, v21 | WORD2(v25));
    v22 = type metadata accessor for Optional();
    (*(*(v22 - 8) + 8))(&v45, v22);
  }

  else
  {
    (*(a4 + 24))(&v30, a3, a4);
    if (BYTE9(v31))
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    specialized Dictionary.subscript.setter(&v39, v30, v31, v23 | BYTE8(v31));
  }

  return (*(v9 + 8))(a2, a3);
}

uint64_t AnyMeshBuffer.id.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t AnyMeshBuffer.count.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t AnyMeshBuffer.rate.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t AnyMeshBuffer.elementType.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t AnyMeshBuffer.get<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  return (*(v5 + 56))(a2, v4, v5);
}

double MeshBufferContainer.positions.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for positions != -1)
  {
    swift_once();
  }

  v12 = static MeshBuffers.positions;
  LOWORD(v13) = word_1EBEAD0B8;
  v6 = *(a2 + 16);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v8 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v6(&v18, &v12, v7, v8, a1, a2);

  if (v18)
  {
    *a3 = v18;
    *(a3 + 24) = v20;
    *(a3 + 40) = v21;
    *(a3 + 56) = v22[0];
    *(a3 + 65) = *(v22 + 9);
    result = *&v19;
    *(a3 + 8) = v19;
  }

  else
  {
    _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(MEMORY[0x1E69E7CC0], &v12);
    v10 = v15;
    *(a3 + 32) = v14;
    *(a3 + 48) = v10;
    *(a3 + 64) = v16;
    *(a3 + 80) = v17;
    result = *&v12;
    v11 = v13;
    *a3 = v12;
    *(a3 + 16) = v11;
  }

  return result;
}

uint64_t MeshBufferContainer.positions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for positions != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v5 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v5;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v12 = static MeshBuffers.positions;
  v13 = word_1EBEAD0B8;
  v7 = *(a3 + 24);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v9 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  return v7(v14, &v12, v8, v9, a2, a3);
}

void (*MeshBufferContainer.positions.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x178uLL);
  }

  *a1 = v7;
  v7[45] = a3;
  v7[46] = v3;
  v7[44] = a2;
  MeshBufferContainer.positions.getter(a2, a3, v7);
  return MeshBufferContainer.positions.modify;
}

void MeshBufferContainer.positions.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = *(v2 + 1);
    *(v2 + 13) = v4;
    *(v2 + 14) = v3;
    v6 = *(v2 + 3);
    *(v2 + 15) = *(v2 + 4);
    v7 = *(v2 + 1);
    v8 = *v2;
    *(v2 + 11) = *v2;
    *(v2 + 12) = v7;
    v21 = v4;
    v22 = v6;
    v23 = *(v2 + 4);
    v10 = *(v2 + 45);
    v9 = *(v2 + 46);
    v11 = *(v2 + 44);
    v2[256] = v2[80];
    v24 = v2[80];
    v19 = v8;
    v20 = v5;
    outlined init with copy of [String : String]((v2 + 176), (v2 + 264), &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
    MeshBufferContainer.positions.setter(&v19, v11, v10);
    v12 = *(v2 + 3);
    *(v2 + 120) = *(v2 + 2);
    *(v2 + 136) = v12;
    *(v2 + 152) = *(v2 + 4);
    v2[168] = v2[80];
    v13 = *(v2 + 1);
    *(v2 + 88) = *v2;
    *(v2 + 104) = v13;
    outlined destroy of BodyTrackingComponent?((v2 + 88), &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  }

  else
  {
    v14 = *(v2 + 45);
    v15 = *(v2 + 46);
    v16 = *(v2 + 44);
    v17 = *(v2 + 3);
    v21 = *(v2 + 2);
    v22 = v17;
    v23 = *(v2 + 4);
    v24 = v2[80];
    v18 = *(v2 + 1);
    v19 = *v2;
    v20 = v18;
    MeshBufferContainer.positions.setter(&v19, v16, v14);
  }

  free(v2);
}

uint64_t MeshBufferContainer.normals.getter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for normals != -1)
  {
    swift_once();
  }

  v8[0] = static MeshBuffers.normals;
  v8[1] = *algn_1EBEAD0C8;
  v9 = word_1EBEAD0D0;
  v4 = *(a2 + 16);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v6 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v4(v8, v5, v6, a1, a2);
}

uint64_t MeshBufferContainer.normals.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for normals != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v5 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v5;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v12[0] = static MeshBuffers.normals;
  v12[1] = *algn_1EBEAD0C8;
  v13 = word_1EBEAD0D0;
  v7 = *(a3 + 24);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v9 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  return v7(v14, v12, v8, v9, a2, a3);
}

void (*MeshBufferContainer.normals.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x178uLL);
  }

  *a1 = v7;
  v7[45] = a3;
  v7[46] = v3;
  v7[44] = a2;
  MeshBufferContainer.normals.getter(a2, a3);
  return MeshBufferContainer.normals.modify;
}

uint64_t MeshBufferContainer.tangents.getter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for tangents != -1)
  {
    swift_once();
  }

  v8[0] = static MeshBuffers.tangents;
  v8[1] = unk_1EBEAD0E0;
  v9 = word_1EBEAD0E8;
  v4 = *(a2 + 16);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v6 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v4(v8, v5, v6, a1, a2);
}

uint64_t MeshBufferContainer.tangents.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for tangents != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v5 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v5;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v12[0] = static MeshBuffers.tangents;
  v12[1] = unk_1EBEAD0E0;
  v13 = word_1EBEAD0E8;
  v7 = *(a3 + 24);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v9 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  return v7(v14, v12, v8, v9, a2, a3);
}

void (*MeshBufferContainer.tangents.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x178uLL);
  }

  *a1 = v7;
  v7[45] = a3;
  v7[46] = v3;
  v7[44] = a2;
  MeshBufferContainer.tangents.getter(a2, a3);
  return MeshBufferContainer.tangents.modify;
}

void MeshBufferContainer.normals.modify(void **a1, char a2, void (*a3)(__int128 *, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v6 = *a1;
  if (a2)
  {
    v8 = v6[2];
    v7 = v6[3];
    v9 = v6[1];
    v6[13] = v8;
    v6[14] = v7;
    v10 = v6[3];
    v6[15] = v6[4];
    v11 = v6[1];
    v12 = *v6;
    v6[11] = *v6;
    v6[12] = v11;
    v27 = v8;
    v28 = v10;
    v29 = v6[4];
    v14 = *(v6 + 45);
    v13 = *(v6 + 46);
    v15 = *(v6 + 44);
    *(v6 + 256) = *(v6 + 80);
    v30 = *(v6 + 80);
    v25 = v12;
    v26 = v9;
    outlined init with copy of [String : String]((v6 + 11), v6 + 264, a4, a5);
    a3(&v25, v15, v14);
    v18 = v6[3];
    *(v6 + 120) = v6[2];
    *(v6 + 136) = v18;
    *(v6 + 152) = v6[4];
    *(v6 + 168) = *(v6 + 80);
    v19 = v6[1];
    *(v6 + 88) = *v6;
    *(v6 + 104) = v19;
    outlined destroy of BodyTrackingComponent?(v6 + 88, a4, a5);
  }

  else
  {
    v20 = *(v6 + 45);
    v21 = *(v6 + 46);
    v22 = *(v6 + 44);
    v23 = v6[3];
    v27 = v6[2];
    v28 = v23;
    v29 = v6[4];
    v30 = *(v6 + 80);
    v24 = v6[1];
    v25 = *v6;
    v26 = v24;
    a3(&v25, v22, v20);
  }

  free(v6);
}

uint64_t MeshBufferContainer.bitangents.getter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for bitangents != -1)
  {
    swift_once();
  }

  v8[0] = static MeshBuffers.bitangents;
  v8[1] = *algn_1EBEAD0F8;
  v9 = word_1EBEAD100;
  v4 = *(a2 + 16);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v6 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v4(v8, v5, v6, a1, a2);
}

uint64_t MeshBufferContainer.bitangents.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for bitangents != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v5 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v5;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v12[0] = static MeshBuffers.bitangents;
  v12[1] = *algn_1EBEAD0F8;
  v13 = word_1EBEAD100;
  v7 = *(a3 + 24);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v9 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  return v7(v14, v12, v8, v9, a2, a3);
}

void (*MeshBufferContainer.bitangents.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x178uLL);
  }

  *a1 = v7;
  v7[45] = a3;
  v7[46] = v3;
  v7[44] = a2;
  MeshBufferContainer.bitangents.getter(a2, a3);
  return MeshBufferContainer.bitangents.modify;
}

uint64_t MeshBufferContainer.textureCoordinates.getter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for textureCoordinates != -1)
  {
    swift_once();
  }

  v8[0] = static MeshBuffers.textureCoordinates;
  v8[1] = unk_1EBEAD110;
  v9 = word_1EBEAD118;
  v4 = *(a2 + 16);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD2VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD2VySfGGMR);
  v6 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD2<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD2VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD2VySfGGMR);
  v4(v8, v5, v6, a1, a2);
}

uint64_t MeshBufferContainer.textureCoordinates.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for textureCoordinates != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v5 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v5;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v12[0] = static MeshBuffers.textureCoordinates;
  v12[1] = unk_1EBEAD110;
  v13 = word_1EBEAD118;
  v7 = *(a3 + 24);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD2VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD2VySfGGMR);
  v9 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD2<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD2VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD2VySfGGMR);
  return v7(v14, v12, v8, v9, a2, a3);
}

void (*MeshBufferContainer.textureCoordinates.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x178uLL);
  }

  *a1 = v7;
  v7[45] = a3;
  v7[46] = v3;
  v7[44] = a2;
  MeshBufferContainer.textureCoordinates.getter(a2, a3);
  return MeshBufferContainer.textureCoordinates.modify;
}

uint64_t MeshBufferContainer.blendShapeOffsets(named:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v15._countAndFlagsBits = a1;
  v15._object = a2;
  v12[0] = a1;
  v12[1] = a2;
  v13 = 0;
  v14 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v15) == 8;
  v8 = *(a4 + 16);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v10 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v8(v12, v9, v10, a3, a4);
}

uint64_t MeshBufferContainer.setBlendShapeOffsets(named:buffer:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 48);
  v25[2] = *(a3 + 32);
  v25[3] = v10;
  v25[4] = *(a3 + 64);
  v26 = *(a3 + 80);
  v11 = *(a3 + 16);
  v25[0] = *a3;
  v25[1] = v11;

  v27._countAndFlagsBits = a1;
  v27._object = a2;
  v12 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v27);
  v13 = *(a3 + 48);
  v23[2] = *(a3 + 32);
  v23[3] = v13;
  v23[4] = *(a3 + 64);
  v24 = *(a3 + 80);
  v14 = *(a3 + 16);
  v23[0] = *a3;
  v23[1] = v14;
  v20[0] = a1;
  v20[1] = a2;
  v21 = 0;
  v22 = v12 == 8;
  v15 = *(a5 + 24);

  outlined init with copy of [String : String](v25, &v19, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  v17 = lazy protocol witness table accessor for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>(&lazy protocol witness table cache variable for type MeshBuffers.Semantic<SIMD3<Float>> and conformance MeshBuffers.Semantic<A>, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMd, &_s17RealityFoundation11MeshBuffersO8SemanticVy_s5SIMD3VySfGGMR);
  return v15(v23, v20, v16, v17, a4, a5);
}

uint64_t MeshBufferContainer.blendShapeNames.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))();
  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v34 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v10 = v4;
  if (!v8)
  {
    goto LABEL_7;
  }

  do
  {
    v4 = v10;
LABEL_10:
    v11 = __clz(__rbit64(v8)) | (v4 << 6);
    v12 = *(v3 + 48) + 24 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 17);
    outlined init with copy of AnyMeshBuffer(*(v3 + 56) + 40 * v11, &v40);
    v35 = v40;
    v36 = v41;
    v16 = v42;

    if (!v13)
    {
LABEL_27:

      return v34;
    }

    v8 &= v8 - 1;
    v40 = v35;
    v41 = v36;
    v42 = v16;
    if ((v15 & 1) == 0)
    {
      outlined destroy of AnyMeshBuffer(&v40);

      goto LABEL_5;
    }

    __swift_project_boxed_opaque_existential_1(&v40, *(&v36 + 1));
    (*(v16 + 24))(&v39, *(&v36 + 1), v16);
    if (v39)
    {
      type metadata accessor for OS_os_log();

      v17 = static OS_os_log.default.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v37 = v3;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136315138;
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v39);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_1C1358000, v17, v18, "Skipping non-vertex rate blendShape attribute '%s'", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1C6902A30](v20, -1, -1);
        v22 = v19;
        v3 = v37;
LABEL_18:
        MEMORY[0x1C6902A30](v22, -1, -1);

        goto LABEL_20;
      }
    }

    else
    {
      v23 = *(&v41 + 1);
      v24 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      (*(v24 + 32))(&v39, v23, v24);
      if (MeshBuffers.ElementType.genericAttributeDescriptor.getter())
      {

        v30 = v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        }

        v32 = *(v34 + 2);
        v31 = *(v34 + 3);
        if (v32 >= v31 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v34);
        }

        *(v34 + 2) = v32 + 1;
        v33 = &v34[16 * v32];
        *(v33 + 4) = v14;
        *(v33 + 5) = v13;
        result = outlined destroy of AnyMeshBuffer(&v40);
        v3 = v30;
        goto LABEL_5;
      }

      type metadata accessor for OS_os_log();

      v17 = static OS_os_log.default.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v25))
      {
        v26 = swift_slowAlloc();
        v38 = v3;
        v27 = swift_slowAlloc();
        v39 = v27;
        *v26 = 136315138;
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v39);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_1C1358000, v17, v25, "Skipping unknown element type '%s'", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        v29 = v27;
        v3 = v38;
        MEMORY[0x1C6902A30](v29, -1, -1);
        v22 = v26;
        goto LABEL_18;
      }
    }

LABEL_20:
    result = outlined destroy of AnyMeshBuffer(&v40);
    v10 = v4;
  }

  while (v8);
LABEL_7:
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_27;
    }

    v8 = *(v5 + 8 * v4);
    ++v10;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

RealityFoundation::MeshSkeleton __swiftcall MeshSkeleton.init(name:inverseBindPoses:jointPaths:)(Swift::String name, Swift::OpaquePointer inverseBindPoses, Swift::OpaquePointer jointPaths)
{
  *v3 = name;
  *(v3 + 16) = inverseBindPoses;
  *(v3 + 24) = jointPaths;
  result.name = name;
  result.jointPaths = jointPaths;
  result.inverseBindPoses = inverseBindPoses;
  return result;
}

uint64_t MeshSkeleton.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MeshSkeleton.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MeshSkeleton.inverseBindPoses.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MeshSkeleton.jointPaths.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

double MeshDescriptor.init(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = -1;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t MeshDescriptor.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MeshDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MeshDescriptor.materials.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  return outlined copy of MeshDescriptor.Materials(v2, v3);
}

uint64_t MeshDescriptor.materials.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of MeshDescriptor.Materials(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t MeshDescriptor.primitives.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return outlined copy of MeshDescriptor.Primitives?(v2, v3, v4);
}

uint64_t MeshDescriptor.primitives.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of MeshDescriptor.Primitives?(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t key path setter for MeshDescriptor.subscript<A>(_:) : <A>MeshDescriptorA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v18 = *(a1 + 32);
  v19 = v5;
  v7 = *(a1 + 48);
  v20 = *(a1 + 64);
  v8 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v8;
  v15[1] = v6;
  v15[2] = v18;
  v9 = *(a1 + 64);
  v15[3] = v7;
  v15[4] = v9;
  v10 = *(a3 + a4 - 16);
  v11 = *(a3 + a4 - 8);
  v21 = *(a1 + 80);
  v16 = *(a1 + 80);
  v15[0] = v17[0];
  swift_getAssociatedTypeWitness();
  type metadata accessor for MeshBuffer();
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 16))(v14, v17, v12);
  return specialized MeshDescriptor.subscript.setter(v15, a3, v10, v11);
}

uint64_t MeshDescriptor.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized MeshDescriptor.subscript.setter(a1, a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

void (*MeshDescriptor.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x188uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[45] = a4;
  v9[46] = v4;
  v9[44] = a3;
  v11 = *(a3 - 8);
  v12 = v11;
  v9[47] = v11;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  *(v10 + 384) = v13;
  (*(v12 + 16))();
  MeshBufferDictionary.subscript.getter(*(v4 + 16), a3, a4, v10);
  return MeshDescriptor.subscript.modify;
}

void MeshDescriptor.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = *(v2 + 1);
    *(v2 + 13) = v4;
    *(v2 + 14) = v3;
    v6 = *(v2 + 3);
    *(v2 + 15) = *(v2 + 4);
    v7 = *(v2 + 1);
    v8 = *v2;
    *(v2 + 11) = *v2;
    *(v2 + 12) = v7;
    v26 = v4;
    v27 = v6;
    v28 = *(v2 + 4);
    v10 = *(v2 + 47);
    v9 = *(v2 + 48);
    v12 = *(v2 + 45);
    v11 = *(v2 + 46);
    v13 = *(v2 + 44);
    v2[256] = v2[80];
    v29 = v2[80];
    v24 = v8;
    v25 = v5;
    swift_getAssociatedTypeWitness();
    type metadata accessor for MeshBuffer();
    v14 = type metadata accessor for Optional();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v2 + 264, v2 + 176, v14);
    specialized MeshDescriptor.subscript.setter(&v24, v9, v13, v12);
    (*(v10 + 8))(v9, v13);
    v16 = *(v2 + 3);
    *(v2 + 120) = *(v2 + 2);
    *(v2 + 136) = v16;
    *(v2 + 152) = *(v2 + 4);
    v2[168] = v2[80];
    v17 = *(v2 + 1);
    *(v2 + 88) = *v2;
    *(v2 + 104) = v17;
    (*(v15 + 8))(v2 + 88, v14);
  }

  else
  {
    v18 = *(v2 + 47);
    v9 = *(v2 + 48);
    v19 = *(v2 + 45);
    v20 = *(v2 + 46);
    v21 = *(v2 + 44);
    v22 = *(v2 + 3);
    v26 = *(v2 + 2);
    v27 = v22;
    v28 = *(v2 + 4);
    v29 = v2[80];
    v23 = *(v2 + 1);
    v24 = *v2;
    v25 = v23;
    specialized MeshDescriptor.subscript.setter(&v24, v9, v21, v19);
    (*(v18 + 8))(v9, v21);
  }

  free(v9);

  free(v2);
}

uint64_t MeshDescriptor.skinning.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return outlined copy of MeshDescriptor.Skinning?(v2, v3);
}

__n128 MeshDescriptor.skinning.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  outlined consume of StateMachineGraph?(v1[8], v1[9]);
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v8;
  v1[12] = v3;
  return result;
}

uint64_t protocol witness for MeshBufferContainer.subscript.setter in conformance MeshDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized MeshDescriptor.subscript.setter(a1, a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

void (*protocol witness for MeshBufferContainer.subscript.modify in conformance MeshDescriptor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MeshDescriptor.subscript.modify(v8, a2, a3, a4);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t MeshDescriptor.Skinning.skeletonName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MeshDescriptor.Skinning.skeletonName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MeshDescriptor.Skinning.jointIndices.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MeshDescriptor.Skinning.weights.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t MeshDescriptor.Skinning.init(skeletonName:jointIndices:weights:influencesPerVertex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void *specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(void *a1, uint64_t (*a2)(uint64_t, uint64_t, void, unint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v69, v8, v9);
  v53 = 0x30201u >> (8 * v69);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v69, v10, v11);
  if (v69 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v62, &type metadata for FloatVector3Packed, v12, v13), (v14 = v62) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = (*(v27 + 56))(&v62, MEMORY[0x1E69E7508], v26, v27);
    if (v62)
    {
      v29 = (*(&v63 + 1))(v28);
      if (v29)
      {
        v31 = v29;
        v32 = v30;
        v33 = *(v29 + 16);
        v34 = *(v30 + 16);
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v35);
        result = (*(v36 + 8))(&v69, v35, v36);
        if (!((v34 | v33) >> 32))
        {
          v38 = String.utf8CString.getter();

          v39 = a4(a6, v38 + 32, v53, v33, v31 + 32, v34, v32 + 32);

          outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys5UInt8VGSgMd, &_s17RealityFoundation10MeshBufferVys5UInt8VGSgMR);

          return (v39 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys5UInt8VGSgMd, &_s17RealityFoundation10MeshBufferVys5UInt8VGSgMR);
    }

    v40 = a1[3];
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    v42 = (*(v41 + 56))(v56, MEMORY[0x1E69E7508], v40, v41);
    if (!v56[0])
    {
      goto LABEL_15;
    }

    v69 = v56[0];
    v70 = v56[1];
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v71 = v57;
    v43 = (v56[0])(v42);
    if (!v43)
    {
      v43 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
    }

    v44 = v43;
    outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation10MeshBufferVys5UInt8VGSgMd, &_s17RealityFoundation10MeshBufferVys5UInt8VGSgMR);
    v45 = a1[3];
    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v45);
    result = (*(v46 + 8))(&v55, v45, v46);
    v47 = *(v44 + 16);
    if (!HIDWORD(v47))
    {
      v48 = String.utf8CString.getter();

      v39 = a2(a6, v48 + 32, v53, v47, v44 + 32);

LABEL_19:

      return (v39 & 1);
    }

    goto LABEL_22;
  }

  v15 = v67;
  v16 = v68;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v63;
  *(v17 + 40) = v64;
  *(v17 + 56) = v65;
  *(v17 + 72) = v66;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v69 = __RKEntityLookAtCameraAction.reversed();
  v70 = v18;
  *&v71 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v71 + 1) = v19;
  *&v72 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v72 + 1) = v20;
  *&v73 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v73 + 1) = v21;
  LOWORD(v74) = 9;
  *(&v74 + 1) = v15;
  v75 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v62, v56, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
  outlined destroy of BodyTrackingComponent?(&v69, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v56[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v56[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v39 = 0;
    return (v39 & 1);
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 8))(v56, v49, v50);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v51 = String.utf8CString.getter();

    v39 = a2(a6, v51 + 32, v53, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v69, v8, v9);
  v53 = 0x30201u >> (8 * v69);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v69, v10, v11);
  if (v69 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v62, &type metadata for FloatVector3Packed, v12, v13), (v14 = v62) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = (*(v27 + 56))(&v62, MEMORY[0x1E69E75F8], v26, v27);
    if (v62)
    {
      v29 = (*(&v63 + 1))(v28);
      if (v29)
      {
        v31 = v29;
        v32 = v30;
        v33 = *(v29 + 16);
        v34 = *(v30 + 16);
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v35);
        result = (*(v36 + 8))(&v69, v35, v36);
        if (!((v34 | v33) >> 32))
        {
          v38 = String.utf8CString.getter();

          v39 = a4(a6, v38 + 32, v53, v33, v31 + 32, v34, v32 + 32);

          outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys6UInt16VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt16VGSgMR);

          return (v39 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys6UInt16VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt16VGSgMR);
    }

    v40 = a1[3];
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    v42 = (*(v41 + 56))(v56, MEMORY[0x1E69E75F8], v40, v41);
    if (!v56[0])
    {
      goto LABEL_15;
    }

    v69 = v56[0];
    v70 = v56[1];
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v71 = v57;
    v43 = (v56[0])(v42);
    if (!v43)
    {
      v43 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
    }

    v44 = v43;
    outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation10MeshBufferVys6UInt16VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt16VGSgMR);
    v45 = a1[3];
    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v45);
    result = (*(v46 + 8))(&v55, v45, v46);
    v47 = *(v44 + 16);
    if (!HIDWORD(v47))
    {
      v48 = String.utf8CString.getter();

      v39 = a2(a6, v48 + 32, v53, v47, v44 + 32);

LABEL_19:

      return (v39 & 1);
    }

    goto LABEL_22;
  }

  v15 = v67;
  v16 = v68;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v63;
  *(v17 + 40) = v64;
  *(v17 + 56) = v65;
  *(v17 + 72) = v66;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v69 = __RKEntityLookAtCameraAction.reversed();
  v70 = v18;
  *&v71 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v71 + 1) = v19;
  *&v72 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v72 + 1) = v20;
  *&v73 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v73 + 1) = v21;
  LOWORD(v74) = 9;
  *(&v74 + 1) = v15;
  v75 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v62, v56, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
  outlined destroy of BodyTrackingComponent?(&v69, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v56[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v56[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v39 = 0;
    return (v39 & 1);
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 8))(v56, v49, v50);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v51 = String.utf8CString.getter();

    v39 = a2(a6, v51 + 32, v53, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v69, v8, v9);
  v53 = 0x30201u >> (8 * v69);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v69, v10, v11);
  if (v69 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v62, &type metadata for FloatVector3Packed, v12, v13), (v14 = v62) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = (*(v27 + 56))(&v62, MEMORY[0x1E69E7668], v26, v27);
    if (v62)
    {
      v29 = (*(&v63 + 1))(v28);
      if (v29)
      {
        v31 = v29;
        v32 = v30;
        v33 = *(v29 + 16);
        v34 = *(v30 + 16);
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v35);
        result = (*(v36 + 8))(&v69, v35, v36);
        if (!((v34 | v33) >> 32))
        {
          v38 = String.utf8CString.getter();

          v39 = a4(a6, v38 + 32, v53, v33, v31 + 32, v34, v32 + 32);

          outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);

          return (v39 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    }

    v40 = a1[3];
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    v42 = (*(v41 + 56))(v56, MEMORY[0x1E69E7668], v40, v41);
    if (!v56[0])
    {
      goto LABEL_15;
    }

    v69 = v56[0];
    v70 = v56[1];
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v71 = v57;
    v43 = (v56[0])(v42);
    if (!v43)
    {
      v43 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
    }

    v44 = v43;
    outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    v45 = a1[3];
    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v45);
    result = (*(v46 + 8))(&v55, v45, v46);
    v47 = *(v44 + 16);
    if (!HIDWORD(v47))
    {
      v48 = String.utf8CString.getter();

      v39 = a2(a6, v48 + 32, v53, v47, v44 + 32);

LABEL_19:

      return (v39 & 1);
    }

    goto LABEL_22;
  }

  v15 = v67;
  v16 = v68;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v63;
  *(v17 + 40) = v64;
  *(v17 + 56) = v65;
  *(v17 + 72) = v66;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v69 = __RKEntityLookAtCameraAction.reversed();
  v70 = v18;
  *&v71 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v71 + 1) = v19;
  *&v72 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v72 + 1) = v20;
  *&v73 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v73 + 1) = v21;
  LOWORD(v74) = 9;
  *(&v74 + 1) = v15;
  v75 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v62, v56, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
  outlined destroy of BodyTrackingComponent?(&v69, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v56[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v56[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v39 = 0;
    return (v39 & 1);
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 8))(v56, v49, v50);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v51 = String.utf8CString.getter();

    v39 = a2(a6, v51 + 32, v53, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v69, v8, v9);
  v53 = 0x30201u >> (8 * v69);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v69, v10, v11);
  if (v69 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v62, &type metadata for FloatVector3Packed, v12, v13), (v14 = v62) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = (*(v27 + 56))(&v62, MEMORY[0x1E69E7230], v26, v27);
    if (v62)
    {
      v29 = (*(&v63 + 1))(v28);
      if (v29)
      {
        v31 = v29;
        v32 = v30;
        v33 = *(v29 + 16);
        v34 = *(v30 + 16);
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v35);
        result = (*(v36 + 8))(&v69, v35, v36);
        if (!((v34 | v33) >> 32))
        {
          v38 = String.utf8CString.getter();

          v39 = a4(a6, v38 + 32, v53, v33, v31 + 32, v34, v32 + 32);

          outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys4Int8VGSgMd, &_s17RealityFoundation10MeshBufferVys4Int8VGSgMR);

          return (v39 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys4Int8VGSgMd, &_s17RealityFoundation10MeshBufferVys4Int8VGSgMR);
    }

    v40 = a1[3];
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    v42 = (*(v41 + 56))(v56, MEMORY[0x1E69E7230], v40, v41);
    if (!v56[0])
    {
      goto LABEL_15;
    }

    v69 = v56[0];
    v70 = v56[1];
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v71 = v57;
    v43 = (v56[0])(v42);
    if (!v43)
    {
      v43 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
    }

    v44 = v43;
    outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation10MeshBufferVys4Int8VGSgMd, &_s17RealityFoundation10MeshBufferVys4Int8VGSgMR);
    v45 = a1[3];
    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v45);
    result = (*(v46 + 8))(&v55, v45, v46);
    v47 = *(v44 + 16);
    if (!HIDWORD(v47))
    {
      v48 = String.utf8CString.getter();

      v39 = a2(a6, v48 + 32, v53, v47, v44 + 32);

LABEL_19:

      return (v39 & 1);
    }

    goto LABEL_22;
  }

  v15 = v67;
  v16 = v68;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v63;
  *(v17 + 40) = v64;
  *(v17 + 56) = v65;
  *(v17 + 72) = v66;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v69 = __RKEntityLookAtCameraAction.reversed();
  v70 = v18;
  *&v71 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v71 + 1) = v19;
  *&v72 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v72 + 1) = v20;
  *&v73 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v73 + 1) = v21;
  LOWORD(v74) = 9;
  *(&v74 + 1) = v15;
  v75 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v62, v56, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
  outlined destroy of BodyTrackingComponent?(&v69, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v56[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v56[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v39 = 0;
    return (v39 & 1);
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 8))(v56, v49, v50);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v51 = String.utf8CString.getter();

    v39 = a2(a6, v51 + 32, v53, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v69, v8, v9);
  v53 = 0x30201u >> (8 * v69);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v69, v10, v11);
  if (v69 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v62, &type metadata for FloatVector3Packed, v12, v13), (v14 = v62) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = (*(v27 + 56))(&v62, MEMORY[0x1E69E7290], v26, v27);
    if (v62)
    {
      v29 = (*(&v63 + 1))(v28);
      if (v29)
      {
        v31 = v29;
        v32 = v30;
        v33 = *(v29 + 16);
        v34 = *(v30 + 16);
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v35);
        result = (*(v36 + 8))(&v69, v35, v36);
        if (!((v34 | v33) >> 32))
        {
          v38 = String.utf8CString.getter();

          v39 = a4(a6, v38 + 32, v53, v33, v31 + 32, v34, v32 + 32);

          outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys5Int16VGSgMd, &_s17RealityFoundation10MeshBufferVys5Int16VGSgMR);

          return (v39 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys5Int16VGSgMd, &_s17RealityFoundation10MeshBufferVys5Int16VGSgMR);
    }

    v40 = a1[3];
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    v42 = (*(v41 + 56))(v56, MEMORY[0x1E69E7290], v40, v41);
    if (!v56[0])
    {
      goto LABEL_15;
    }

    v69 = v56[0];
    v70 = v56[1];
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v71 = v57;
    v43 = (v56[0])(v42);
    if (!v43)
    {
      v43 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
    }

    v44 = v43;
    outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation10MeshBufferVys5Int16VGSgMd, &_s17RealityFoundation10MeshBufferVys5Int16VGSgMR);
    v45 = a1[3];
    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v45);
    result = (*(v46 + 8))(&v55, v45, v46);
    v47 = *(v44 + 16);
    if (!HIDWORD(v47))
    {
      v48 = String.utf8CString.getter();

      v39 = a2(a6, v48 + 32, v53, v47, v44 + 32);

LABEL_19:

      return (v39 & 1);
    }

    goto LABEL_22;
  }

  v15 = v67;
  v16 = v68;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v63;
  *(v17 + 40) = v64;
  *(v17 + 56) = v65;
  *(v17 + 72) = v66;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v69 = __RKEntityLookAtCameraAction.reversed();
  v70 = v18;
  *&v71 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v71 + 1) = v19;
  *&v72 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v72 + 1) = v20;
  *&v73 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v73 + 1) = v21;
  LOWORD(v74) = 9;
  *(&v74 + 1) = v15;
  v75 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v62, v56, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
  outlined destroy of BodyTrackingComponent?(&v69, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v56[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v56[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v39 = 0;
    return (v39 & 1);
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 8))(v56, v49, v50);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v51 = String.utf8CString.getter();

    v39 = a2(a6, v51 + 32, v53, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v69, v8, v9);
  v53 = 0x30201u >> (8 * v69);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v69, v10, v11);
  if (v69 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v62, &type metadata for FloatVector3Packed, v12, v13), (v14 = v62) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = (*(v27 + 56))(&v62, MEMORY[0x1E69E72F0], v26, v27);
    if (v62)
    {
      v29 = (*(&v63 + 1))(v28);
      if (v29)
      {
        v31 = v29;
        v32 = v30;
        v33 = *(v29 + 16);
        v34 = *(v30 + 16);
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v35);
        result = (*(v36 + 8))(&v69, v35, v36);
        if (!((v34 | v33) >> 32))
        {
          v38 = String.utf8CString.getter();

          v39 = a4(a6, v38 + 32, v53, v33, v31 + 32, v34, v32 + 32);

          outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys5Int32VGSgMd, &_s17RealityFoundation10MeshBufferVys5Int32VGSgMR);

          return (v39 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVys5Int32VGSgMd, &_s17RealityFoundation10MeshBufferVys5Int32VGSgMR);
    }

    v40 = a1[3];
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    v42 = (*(v41 + 56))(v56, MEMORY[0x1E69E72F0], v40, v41);
    if (!v56[0])
    {
      goto LABEL_15;
    }

    v69 = v56[0];
    v70 = v56[1];
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v71 = v57;
    v43 = (v56[0])(v42);
    if (!v43)
    {
      v43 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
    }

    v44 = v43;
    outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation10MeshBufferVys5Int32VGSgMd, &_s17RealityFoundation10MeshBufferVys5Int32VGSgMR);
    v45 = a1[3];
    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v45);
    result = (*(v46 + 8))(&v55, v45, v46);
    v47 = *(v44 + 16);
    if (!HIDWORD(v47))
    {
      v48 = String.utf8CString.getter();

      v39 = a2(a6, v48 + 32, v53, v47, v44 + 32);

LABEL_19:

      return (v39 & 1);
    }

    goto LABEL_22;
  }

  v15 = v67;
  v16 = v68;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v63;
  *(v17 + 40) = v64;
  *(v17 + 56) = v65;
  *(v17 + 72) = v66;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v69 = __RKEntityLookAtCameraAction.reversed();
  v70 = v18;
  *&v71 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v71 + 1) = v19;
  *&v72 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v72 + 1) = v20;
  *&v73 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v73 + 1) = v21;
  LOWORD(v74) = 9;
  *(&v74 + 1) = v15;
  v75 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v62, v56, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
  outlined destroy of BodyTrackingComponent?(&v69, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v56[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v56[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v39 = 0;
    return (v39 & 1);
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 8))(v56, v49, v50);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v51 = String.utf8CString.getter();

    v39 = a2(a6, v51 + 32, v53, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v69, v8, v9);
  v53 = 0x30201u >> (8 * v69);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v69, v10, v11);
  if (v69 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v62, &type metadata for FloatVector3Packed, v12, v13), (v14 = v62) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = (*(v27 + 56))(&v62, MEMORY[0x1E69E63B0], v26, v27);
    if (v62)
    {
      v29 = (*(&v63 + 1))(v28);
      if (v29)
      {
        v31 = v29;
        v32 = v30;
        v33 = *(v29 + 16);
        v34 = *(v30 + 16);
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v35);
        result = (*(v36 + 8))(&v69, v35, v36);
        if (!((v34 | v33) >> 32))
        {
          v38 = String.utf8CString.getter();

          v39 = a4(a6, v38 + 32, v53, v33, v31 + 32, v34, v32 + 32);

          outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVySdGSgMd, &_s17RealityFoundation10MeshBufferVySdGSgMR);

          return (v39 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVySdGSgMd, &_s17RealityFoundation10MeshBufferVySdGSgMR);
    }

    v40 = a1[3];
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    v42 = (*(v41 + 56))(v56, MEMORY[0x1E69E63B0], v40, v41);
    if (!v56[0])
    {
      goto LABEL_15;
    }

    v69 = v56[0];
    v70 = v56[1];
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v71 = v57;
    v43 = (v56[0])(v42);
    if (!v43)
    {
      v43 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
    }

    v44 = v43;
    outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation10MeshBufferVySdGSgMd, &_s17RealityFoundation10MeshBufferVySdGSgMR);
    v45 = a1[3];
    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v45);
    result = (*(v46 + 8))(&v55, v45, v46);
    v47 = *(v44 + 16);
    if (!HIDWORD(v47))
    {
      v48 = String.utf8CString.getter();

      v39 = a2(a6, v48 + 32, v53, v47, v44 + 32);

LABEL_19:

      return (v39 & 1);
    }

    goto LABEL_22;
  }

  v15 = v67;
  v16 = v68;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v63;
  *(v17 + 40) = v64;
  *(v17 + 56) = v65;
  *(v17 + 72) = v66;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v69 = __RKEntityLookAtCameraAction.reversed();
  v70 = v18;
  *&v71 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v71 + 1) = v19;
  *&v72 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v72 + 1) = v20;
  *&v73 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v73 + 1) = v21;
  LOWORD(v74) = 9;
  *(&v74 + 1) = v15;
  v75 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v62, v56, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
  outlined destroy of BodyTrackingComponent?(&v69, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v56[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v56[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v39 = 0;
    return (v39 & 1);
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 8))(v56, v49, v50);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v51 = String.utf8CString.getter();

    v39 = a2(a6, v51 + 32, v53, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v71, v8, v9);
  v55 = 0x30201u >> (8 * v71);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v71, v10, v11);
  if (v71 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v64, &type metadata for FloatVector3Packed, v12, v13), (v14 = v64) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = *(v27 + 56);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    v30 = v28(&v64, v29, v26, v27);
    if (v64)
    {
      v31 = (*(&v65 + 1))(v30);
      if (v31)
      {
        v33 = v31;
        v34 = v32;
        v35 = *(v31 + 16);
        v36 = *(v32 + 16);
        v37 = a1[3];
        v38 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v37);
        result = (*(v38 + 8))(&v71, v37, v38);
        if (!((v36 | v35) >> 32))
        {
          v40 = String.utf8CString.getter();

          v41 = a4(a6, v40 + 32, v55, v35, v33 + 32, v36, v34 + 32);

          outlined destroy of BodyTrackingComponent?(&v64, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMR);

          return (v41 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v64, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMR);
    }

    v42 = a1[3];
    v43 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v42);
    v44 = (*(v43 + 56))(v58, v29, v42, v43);
    if (!v58[0])
    {
      goto LABEL_15;
    }

    v71 = v58[0];
    v72 = v58[1];
    v74 = v60;
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v73 = v59;
    v45 = (v58[0])(v44);
    if (!v45)
    {
      v45 = specialized _copySequenceToContiguousArray<A>(_:)(&v71);
    }

    v46 = v45;
    outlined destroy of BodyTrackingComponent?(v58, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMR);
    v47 = a1[3];
    v48 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v47);
    result = (*(v48 + 8))(&v57, v47, v48);
    v49 = *(v46 + 16);
    if (!HIDWORD(v49))
    {
      v50 = String.utf8CString.getter();

      v41 = a2(a6, v50 + 32, v55, v49, v46 + 32);

LABEL_19:

      return (v41 & 1);
    }

    goto LABEL_22;
  }

  v15 = v69;
  v16 = v70;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v65;
  *(v17 + 40) = v66;
  *(v17 + 56) = v67;
  *(v17 + 72) = v68;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v71 = __RKEntityLookAtCameraAction.reversed();
  v72 = v18;
  *&v73 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v73 + 1) = v19;
  *&v74 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v74 + 1) = v20;
  *&v75 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v75 + 1) = v21;
  LOWORD(v76) = 9;
  *(&v76 + 1) = v15;
  v77 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v64, v58, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v71);
  outlined destroy of BodyTrackingComponent?(&v71, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v58[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v58[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v64, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v41 = 0;
    return (v41 & 1);
  }

  v51 = a1[3];
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v51);
  result = (*(v52 + 8))(v58, v51, v52);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v53 = String.utf8CString.getter();

    v41 = a2(a6, v53 + 32, v55, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v64, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v68, v8, v9);
  v52 = 0x30201u >> (8 * v68);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v68, v10, v11);
  if (v68 == 9)
  {
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    (*(v13 + 56))(&v61, &type metadata for FloatVector3Packed, v12, v13);
    v14 = v61;
    if (v61)
    {
      v15 = v66;
      v16 = v67;
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v62;
      *(v17 + 40) = v63;
      *(v17 + 56) = v64;
      *(v17 + 72) = v65;
      *(v17 + 88) = v15;
      *(v17 + 96) = v16;
      *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
      *(v17 + 112) = 0;
      v18 = swift_allocObject();
      v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
      v18[3] = v17;
      v18[4] = v15;
      v19 = swift_allocObject();
      v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
      v19[3] = v17;
      v19[4] = v15;
      v20 = swift_allocObject();
      v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
      v20[3] = v17;
      v20[4] = v15;
      v21 = swift_allocObject();
      v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
      v21[3] = v17;
      v21[4] = v15;
      v68 = __RKEntityLookAtCameraAction.reversed();
      v69 = v18;
      *&v70 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
      *(&v70 + 1) = v19;
      *&v71 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
      *(&v71 + 1) = v20;
      *&v72 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
      *(&v72 + 1) = v21;
      LOWORD(v73) = 9;
      *(&v73 + 1) = v15;
      v74 = 0;
      swift_retain_n();
      outlined init with copy of [String : String](&v61, v55, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
      v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v68);
      outlined destroy of BodyTrackingComponent?(&v68, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      v23 = a1[3];
      v24 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v23);
      result = (*(v24 + 8))(v55, v23, v24);
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v15))
      {
        v26 = String.utf8CString.getter();

        v27 = a2(a6, v26 + 32, v52, v15, v22 + 32);
        outlined destroy of BodyTrackingComponent?(&v61, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_16:

        return (v27 & 1);
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = *(v29 + 56);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v32 = v30(&v61, v31, v28, v29);
  if (v61)
  {
    v33 = (*(&v62 + 1))(v32);
    if (v33)
    {
      v35 = v33;
      v36 = v34;
      v37 = *(v33 + 16);
      v38 = *(v34 + 16);
      v39 = a1[3];
      v40 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v39);
      result = (*(v40 + 8))(&v68, v39, v40);
      if (!((v38 | v37) >> 32))
      {
        v41 = String.utf8CString.getter();

        v27 = a4(a6, v41 + 32, v52, v37, v35 + 32, v38, v36 + 32);

        outlined destroy of BodyTrackingComponent?(&v61, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);

        return (v27 & 1);
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    outlined destroy of BodyTrackingComponent?(&v61, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
  }

  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = (*(v43 + 56))(v55, v31, v42, v43);
  if (!v55[0])
  {
    v27 = 0;
    return (v27 & 1);
  }

  v68 = v55[0];
  v69 = v55[1];
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v74 = v60;
  v70 = v56;
  v45 = (v55[0])(v44);
  if (!v45)
  {
    v45 = specialized _copySequenceToContiguousArray<A>(_:)(&v68);
  }

  v46 = v45;
  outlined destroy of BodyTrackingComponent?(v55, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  result = (*(v48 + 8))(&v54, v47, v48);
  v49 = *(v46 + 16);
  if (!HIDWORD(v49))
  {
    v50 = String.utf8CString.getter();

    v27 = a2(a6, v50 + 32, v52, v49, v46 + 32);

    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v71, v8, v9);
  v55 = 0x30201u >> (8 * v71);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v71, v10, v11);
  if (v71 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v64, &type metadata for FloatVector3Packed, v12, v13), (v14 = v64) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = *(v27 + 56);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    v30 = v28(&v64, v29, v26, v27);
    if (v64)
    {
      v31 = (*(&v65 + 1))(v30);
      if (v31)
      {
        v33 = v31;
        v34 = v32;
        v35 = *(v31 + 16);
        v36 = *(v32 + 16);
        v37 = a1[3];
        v38 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v37);
        result = (*(v38 + 8))(&v71, v37, v38);
        if (!((v36 | v35) >> 32))
        {
          v40 = String.utf8CString.getter();

          v41 = a4(a6, v40 + 32, v55, v35, v33 + 32, v36, v34 + 32);

          outlined destroy of BodyTrackingComponent?(&v64, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);

          return (v41 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v64, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
    }

    v42 = a1[3];
    v43 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v42);
    v44 = (*(v43 + 56))(v58, v29, v42, v43);
    if (!v58[0])
    {
      goto LABEL_15;
    }

    v71 = v58[0];
    v72 = v58[1];
    v74 = v60;
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v73 = v59;
    v45 = (v58[0])(v44);
    if (!v45)
    {
      v45 = specialized _copySequenceToContiguousArray<A>(_:)(&v71);
    }

    v46 = v45;
    outlined destroy of BodyTrackingComponent?(v58, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
    v47 = a1[3];
    v48 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v47);
    result = (*(v48 + 8))(&v57, v47, v48);
    v49 = *(v46 + 16);
    if (!HIDWORD(v49))
    {
      v50 = String.utf8CString.getter();

      v41 = a2(a6, v50 + 32, v55, v49, v46 + 32);

LABEL_19:

      return (v41 & 1);
    }

    goto LABEL_22;
  }

  v15 = v69;
  v16 = v70;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v65;
  *(v17 + 40) = v66;
  *(v17 + 56) = v67;
  *(v17 + 72) = v68;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v71 = __RKEntityLookAtCameraAction.reversed();
  v72 = v18;
  *&v73 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v73 + 1) = v19;
  *&v74 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v74 + 1) = v20;
  *&v75 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v75 + 1) = v21;
  LOWORD(v76) = 9;
  *(&v76 + 1) = v15;
  v77 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v64, v58, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v71);
  outlined destroy of BodyTrackingComponent?(&v71, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v58[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v58[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v64, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v41 = 0;
    return (v41 & 1);
  }

  v51 = a1[3];
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v51);
  result = (*(v52 + 8))(v58, v51, v52);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v53 = String.utf8CString.getter();

    v41 = a2(a6, v53 + 32, v55, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v64, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

void *specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(void *a1, uint64_t (*a2)(uint64_t, uint64_t, void, unint64_t, unint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(&v69, v8, v9);
  v53 = 0x30201u >> (8 * v69);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(&v69, v10, v11);
  if (v69 != 9 || (v12 = a1[3], v13 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v12), (*(v13 + 56))(&v62, &type metadata for FloatVector3Packed, v12, v13), (v14 = v62) == 0))
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = (*(v27 + 56))(&v62, MEMORY[0x1E69E6448], v26, v27);
    if (v62)
    {
      v29 = (*(&v63 + 1))(v28);
      if (v29)
      {
        v31 = v29;
        v32 = v30;
        v33 = *(v29 + 16);
        v34 = *(v30 + 16);
        v35 = a1[3];
        v36 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v35);
        result = (*(v36 + 8))(&v69, v35, v36);
        if (!((v34 | v33) >> 32))
        {
          v38 = String.utf8CString.getter();

          v39 = a4(a6, v38 + 32, v53, v33, v31 + 32, v34, v32 + 32);

          outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVySfGSgMd, &_s17RealityFoundation10MeshBufferVySfGSgMR);

          return (v39 & 1);
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVySfGSgMd, &_s17RealityFoundation10MeshBufferVySfGSgMR);
    }

    v40 = a1[3];
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    v42 = (*(v41 + 56))(v56, MEMORY[0x1E69E6448], v40, v41);
    if (!v56[0])
    {
      goto LABEL_15;
    }

    v69 = v56[0];
    v70 = v56[1];
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v71 = v57;
    v43 = (v56[0])(v42);
    if (!v43)
    {
      v43 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
    }

    v44 = v43;
    outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation10MeshBufferVySfGSgMd, &_s17RealityFoundation10MeshBufferVySfGSgMR);
    v45 = a1[3];
    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v45);
    result = (*(v46 + 8))(&v55, v45, v46);
    v47 = *(v44 + 16);
    if (!HIDWORD(v47))
    {
      v48 = String.utf8CString.getter();

      v39 = a2(a6, v48 + 32, v53, v47, v44 + 32);

LABEL_19:

      return (v39 & 1);
    }

    goto LABEL_22;
  }

  v15 = v67;
  v16 = v68;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v63;
  *(v17 + 40) = v64;
  *(v17 + 56) = v65;
  *(v17 + 72) = v66;
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = closure #1 in MeshBuffer<A>.asSIMD3.getter;
  *(v17 + 112) = 0;
  v18 = swift_allocObject();
  v18[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v18[3] = v17;
  v18[4] = v15;
  v19 = swift_allocObject();
  v19[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v19[3] = v17;
  v19[4] = v15;
  v20 = swift_allocObject();
  v20[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v20[3] = v17;
  v20[4] = v15;
  v21 = swift_allocObject();
  v21[2] = closure #1 in ConversionBuffer.init(_:_:)specialized partial apply;
  v21[3] = v17;
  v21[4] = v15;
  v69 = __RKEntityLookAtCameraAction.reversed();
  v70 = v18;
  *&v71 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(&v71 + 1) = v19;
  *&v72 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(&v72 + 1) = v20;
  *&v73 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(&v73 + 1) = v21;
  LOWORD(v74) = 9;
  *(&v74 + 1) = v15;
  v75 = 0;
  swift_retain_n();
  outlined init with copy of [String : String](&v62, v56, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);
  v22 = specialized _copySequenceToContiguousArray<A>(_:)(&v69);
  outlined destroy of BodyTrackingComponent?(&v69, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v23 = *(v22 + 16);
  v56[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v24 = v56[0];
  v25 = *(v22 + 16);

  if (v25)
  {
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

LABEL_15:
    v39 = 0;
    return (v39 & 1);
  }

  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  result = (*(v50 + 8))(v56, v49, v50);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!HIDWORD(v15))
  {
    v51 = String.utf8CString.getter();

    v39 = a2(a6, v51 + 32, v53, v15, v24 + 32);
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMd, &_s17RealityFoundation10MeshBufferVyAA18FloatVector3PackedVGSgMR);

    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t MeshPartBuffer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t static MeshResource.Skeleton.unpack(coreAsset:skeletonIndex:)@<X0>(uint64_t a1@<X8>)
{
  SkeletonJointCount = REMeshAssetGetSkeletonJointCount();
  REMeshAssetGetSkeletonName();
  v3 = String.init(cString:)();
  v35 = v4;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, SkeletonJointCount & ~(SkeletonJointCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, SkeletonJointCount & ~(SkeletonJointCount >> 63), 0, v5);
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, SkeletonJointCount & ~(SkeletonJointCount >> 63), 0, v5);
  if (SkeletonJointCount < 0)
  {
    __break(1u);
    _StringGuts.grow(_:)(31);
    MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E86F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v8;
    v33 = v3;
    v34 = a1;
    if (SkeletonJointCount)
    {
      for (i = 0; i != SkeletonJointCount; ++i)
      {
        REMeshAssetGetSkeletonJointName();
        v11 = String.init(cString:)();
        v13 = v12;
        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v11;
        *(v16 + 5) = v13;
        REMeshAssetGetSkeletonBindPoseTransform();
        v20 = v17;
        if (one-time initialization token for identity != -1)
        {
          v38 = v19;
          v40 = v17;
          v31 = v18;
          swift_once();
          v18 = v31;
          v19 = v38;
          v20 = v40;
        }

        v22 = *(v7 + 2);
        v21 = *(v7 + 3);
        if (v22 >= v21 >> 1)
        {
          v39 = v19;
          v41 = v20;
          v32 = v18;
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v7);
          v18 = v32;
          v19 = v39;
          v20 = v41;
          v7 = v27;
        }

        HIDWORD(v20) = v37;
        HIDWORD(v19) = v36;
        *(v7 + 2) = v22 + 1;
        v23 = &v7[48 * v22];
        *(v23 + 2) = v20;
        *(v23 + 3) = v18;
        *(v23 + 4) = v19;
        SkeletonJointParent = REMeshAssetGetSkeletonJointParent();
        v26 = *(v9 + 2);
        v25 = *(v9 + 3);
        if (v26 >= v25 >> 1)
        {
          v28 = SkeletonJointParent;
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v9);
          SkeletonJointParent = v28;
        }

        *(v9 + 2) = v26 + 1;
        *&v9[8 * v26 + 32] = SkeletonJointParent;
      }

      type metadata accessor for simd_float4x4(0);
      v29 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v29 + 16) = SkeletonJointCount;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    REMeshAssetCopySkeletonInverseBindPoseTransforms();
    *(v29 + 16) = SkeletonJointCount;

    MeshResource.Skeleton.init(id:jointNames:inverseBindPose:localRestPose:parentIndices:)(v33, v35, v6, v29, v7, v9, v34);
  }

  return result;
}

uint64_t MeshResource.Model.combine()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v354 = v0[4];
  v352 = v0[5];
  v6 = REMeshModelDefinitionCreate();
  type metadata accessor for MeshModelDefinition();
  v367 = swift_allocObject();
  *(v367 + 16) = v6;
  v7 = String.utf8CString.getter();
  REMeshModelDefinitionSetName();

  *&v424 = specialized _copyCollectionToContiguousArray<A>(_:)(v4, v5);
  specialized MutableCollection<>.sort(by:)(&v424, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for MeshResource.Part, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  if (v1)
  {
    goto LABEL_382;
  }

  v361 = 0;
  v357 = *(v424 + 16);
  if (!v357)
  {
LABEL_354:

    return v367;
  }

  v8 = 0;
  v9 = &v403;
  v356 = v424 + 32;
  v353 = *MEMORY[0x1E6998ED0];
  v351 = *MEMORY[0x1E6998EC8];
  v347 = *MEMORY[0x1E6998E30];
  v343 = *MEMORY[0x1E6998E68];
  v344 = *MEMORY[0x1E6998E70];
  v342 = *MEMORY[0x1E6998E60];
  v345 = *MEMORY[0x1E6998EE8];
  v346 = *MEMORY[0x1E6998E20];
  v10 = *MEMORY[0x1E6998ED8];
  v348 = *MEMORY[0x1E6998ED8];
  v349 = *MEMORY[0x1E6998EA8];
  v350 = *MEMORY[0x1E6998EB8];
  v11 = MEMORY[0x1E69E7CC0];
  v12 = -1;
  v355 = v424;
  while (1)
  {
    v13 = (v356 + (v8 << 6));
    v15 = v13[1];
    v14 = v13[2];
    v16 = *(v13 + 41);
    v505 = *v13;
    *&v507[9] = v16;
    v506 = v15;
    *v507 = v14;
    v17 = v505;
    outlined init with copy of MeshResource.Part(&v505, &v424);
    if (one-time initialization token for positions != -1)
    {
      swift_once();
    }

    v365 = v17;
    if (*(v17 + 16) && (!HIBYTE(word_1EBEAD0B8) ? (v18 = 0) : (v18 = 256), v19 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v18 | word_1EBEAD0B8), (v20 & 1) != 0))
    {
      outlined init with copy of __REAssetService(*(v17 + 56) + 40 * v19, v422);
      outlined init with take of BindableDataInternal(v422, &v424);
      v21 = *(&v425 + 1);
      v7 = v426;
      __swift_project_boxed_opaque_existential_1(&v424, *(&v425 + 1));
      v22 = *(v7 + 56);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v22(&v437, v23, v21, v7);
      v9 = &v403;
      __swift_destroy_boxed_opaque_existential_1(&v424);
    }

    else
    {
      v442 = 0;
      v440 = 0u;
      v441 = 0u;
      v438 = 0u;
      v439 = 0u;
      v437 = 0u;
    }

    v434[2] = v439;
    v434[3] = v440;
    v435 = v441;
    v436 = v442;
    v434[0] = v437;
    v434[1] = v438;
    if (v437)
    {
      outlined destroy of BodyTrackingComponent?(v434, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
      v24 = *(&v435 + 1);
    }

    else
    {
      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      v26 = swift_allocObject();
      *(v26 + 16) = v11;
      v7 = swift_allocObject();
      *(v7 + 16) = v11;
      v27 = swift_allocObject();
      *(v27 + 16) = v11;
      *&v424 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
      *(&v424 + 1) = v25;
      *&v425 = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
      *(&v425 + 1) = v26;
      *&v426 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
      *(&v426 + 1) = v7;
      *&v427 = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
      *(&v427 + 1) = v27;
      LOWORD(v428) = 9;
      *(&v428 + 1) = 0;
      LOBYTE(v429) = 0;
      outlined destroy of BodyTrackingComponent?(&v424, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      v24 = *(&v428 + 1);
    }

    ++v12;
    if (v24 >= 1)
    {
      break;
    }

    outlined destroy of MeshResource.Part(&v505);
LABEL_351:
    if (++v8 == v357)
    {
      goto LABEL_354;
    }

    if (v8 >= *(v355 + 16))
    {
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:

      outlined destroy of MeshResource.Part(&v505);

      lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
      swift_allocError();
      *v337 = v9;
      v337[1] = v7;
      swift_willThrow();

      outlined destroy of AnyMeshBuffer(v413);
      goto LABEL_359;
    }
  }

  v358 = v24;
  v7 = *(&v506 + 1);
  v28 = *v507;
  v421 = v11;
  v366 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(v11);
  v363 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(v11);
  v364 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(v11);
  v420 = 0;
  v418 = 0u;
  v419 = 0u;
  *v409 = v505;
  *&v409[16] = v506;
  *&v409[32] = *v507;
  *&v409[41] = *&v507[9];
  MeshResource.Part.jointInfluences.getter(v29, v413);
  v422[7] = v415;
  v422[8] = v416;
  v423[0] = v417[0];
  *(v423 + 9) = *(v417 + 9);
  v422[4] = *&v413[64];
  v422[5] = *&v413[80];
  v422[6] = v414;
  v422[0] = *v413;
  v422[1] = *&v413[16];
  v422[2] = *&v413[32];
  v422[3] = *&v413[48];
  v431 = v415;
  v432 = v416;
  v433[0] = v417[0];
  *(v433 + 9) = *(v417 + 9);
  v428 = *&v413[64];
  v429 = *&v413[80];
  v430 = v414;
  v424 = *v413;
  v425 = *&v413[16];
  v426 = *&v413[32];
  v427 = *&v413[48];
  v30 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg(&v424);
  v520 = v12;
  v359 = v28;
  v360 = v8;
  if (v30 == 1 || (outlined destroy of BodyTrackingComponent?(v422, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMR), !v28))
  {
    v362 = v11;
  }

  else
  {
    type metadata accessor for MeshAttributeDescriptor();
    v7 = swift_allocObject();
    *(v7 + 16) = v353;
    MEMORY[0x1C68F3650]();
    if (*((v421 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v421 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v331 = *((v421 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    *(swift_allocObject() + 16) = v351;
    MEMORY[0x1C68F3650]();
    if (*((v421 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v421 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((v421 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v362 = v421;
  }

  v31 = MeshBufferDictionary.entries.getter(v365);
  v32 = v31;
  v33 = 0;
  v34 = v31 + 64;
  v35 = 1 << *(v31 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(v31 + 64);
  v38 = (v35 + 63) >> 6;
  while (1)
  {
    if (v37)
    {
      goto LABEL_35;
    }

    do
    {
      v39 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:

        outlined destroy of MeshResource.Part(&v505);

        v333 = v411;
        v334 = v412;
        __swift_project_boxed_opaque_existential_1(v410, v411);
        (*(v334 + 8))(&v397, v333, v334);
        v335 = v397;
        lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
        swift_allocError();
        *v336 = v335;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1(v410);
LABEL_359:
        outlined destroy of BodyTrackingComponent?(&v418, &_s17RealityFoundation13AnyMeshBufferVSgMd, &_s17RealityFoundation13AnyMeshBufferVSgMR);

        return v367;
      }

      if (v39 >= v38)
      {
        goto LABEL_91;
      }

      v37 = *(v34 + 8 * v39);
      ++v33;
    }

    while (!v37);
    v33 = v39;
LABEL_35:
    v40 = __clz(__rbit64(v37)) | (v33 << 6);
    v41 = *(v32 + 48) + 24 * v40;
    v9 = *v41;
    v7 = *(v41 + 8);
    v42 = *(v41 + 17);
    outlined init with copy of AnyMeshBuffer(*(v32 + 56) + 40 * v40, v413);
    v378 = *v413;
    v394 = *&v413[16];
    v43 = *&v413[32];

    if (!v7)
    {
      break;
    }

    *v413 = v378;
    *&v413[16] = v394;
    *&v413[32] = v43;
    if (one-time initialization token for triangleIndices != -1)
    {
      swift_once();
    }

    v37 &= v37 - 1;
    v44 = v9 == static MeshBuffers.Identifier.triangleIndices && v7 == *algn_1EBEAD098;
    if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      outlined destroy of BodyTrackingComponent?(&v418, &_s17RealityFoundation13AnyMeshBufferVSgMd, &_s17RealityFoundation13AnyMeshBufferVSgMR);
      v418 = *v413;
      v419 = *&v413[16];
      v420 = *&v413[32];
    }

    else
    {
      if (one-time initialization token for jointInfluences != -1)
      {
        swift_once();
      }

      v45 = v9 == static MeshBuffers.Identifier.jointInfluences && v7 == unk_1EBEAD170;
      if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_57;
      }

      if (one-time initialization token for jointInfluenceEndIndices != -1)
      {
        swift_once();
      }

      v46 = v9 == static MeshBuffers.Identifier.jointInfluenceEndIndices && v7 == *algn_1EBEAD188;
      if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_57:

        goto LABEL_58;
      }

      v395 = v32;
      v47 = *&v413[24];
      v48 = *&v413[32];
      __swift_project_boxed_opaque_existential_1(v413, *&v413[24]);
      (*(v48 + 24))(v409, v47, v48);
      if (v409[0])
      {
        type metadata accessor for OS_os_log();

        v49 = static OS_os_log.default.getter();
        v50 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v379 = swift_slowAlloc();
          *v409 = v379;
          *v51 = 136315138;
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v7, v409);

          *(v51 + 4) = v52;
          _os_log_impl(&dword_1C1358000, v49, v50, "Skipping non-vertex rate attribute '%s'", v51, 0xCu);
          v7 = v379;
          __swift_destroy_boxed_opaque_existential_1(v379);
          MEMORY[0x1C6902A30](v379, -1, -1);
          MEMORY[0x1C6902A30](v51, -1, -1);
        }

        else
        {
        }

        v32 = v395;
LABEL_58:
        outlined destroy of AnyMeshBuffer(v413);
      }

      else
      {
        v53 = *&v413[24];
        v54 = *&v413[32];
        __swift_project_boxed_opaque_existential_1(v413, *&v413[24]);
        (*(v54 + 32))(v409, v53, v54);
        if (!MeshBuffers.ElementType.genericAttributeDescriptor.getter())
        {
          goto LABEL_368;
        }

        v380 = *&v413[24];
        v55 = *&v413[32];
        __swift_project_boxed_opaque_existential_1(v413, *&v413[24]);
        v1 = (v55 + 48);
        v371 = *(v55 + 48);

        v56 = v371(v380, v55);
        if (v57 >> 60 == 15)
        {
          v58 = v364;
          v381 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v7);
          v60 = v59;

          if (v60)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v409 = v364;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v58 = *v409;
            }

            v62 = *(*(v58 + 48) + 16 * v381 + 8);

            outlined consume of Data._Representation(*(*(v58 + 56) + 16 * v381), *(*(v58 + 56) + 16 * v381 + 8));
            specialized _NativeDictionary._delete(at:)(v381, v58);
          }
        }

        else
        {
          v63 = v56;
          v382 = v57;
          v64 = swift_isUniquelyReferenced_nonNull_native();
          *v409 = v364;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v382, v9, v7, v64);

          v58 = *v409;
        }

        v364 = v58;
        if (v362 >> 62)
        {
          v65 = __CocoaSet.count.getter();
        }

        else
        {
          v65 = *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v66 = swift_isUniquelyReferenced_nonNull_native();
        *v409 = v363;
        v383 = v65;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v7, v65, v66);
        v363 = *v409;

        v372 = swift_isUniquelyReferenced_nonNull_native();
        *v409 = v366;
        v67 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v7);
        v69 = v366[2];
        v70 = (v68 & 1) == 0;
        v71 = __OFADD__(v69, v70);
        v72 = v69 + v70;
        if (v71)
        {
          goto LABEL_375;
        }

        if (v366[3] < v72)
        {
          v368 = v68;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, v372);
          v67 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v7);
          v74 = v73 & 1;
          v68 = v368;
          if ((v368 & 1) != v74)
          {
            goto LABEL_378;
          }

LABEL_78:
          if (v68)
          {
            goto LABEL_79;
          }

          goto LABEL_82;
        }

        if (v372)
        {
          goto LABEL_78;
        }

        v373 = v67;
        v76 = v68;
        specialized _NativeDictionary.copy()();
        v67 = v373;
        if (v76)
        {
LABEL_79:
          v75 = v67;

          v366 = *v409;
          *(*(*v409 + 56) + 8 * v75) = v383;
          goto LABEL_84;
        }

LABEL_82:
        v77 = *v409;
        *(*v409 + 8 * (v67 >> 6) + 64) |= 1 << v67;
        v78 = (v77[6] + 16 * v67);
        *v78 = v9;
        v78[1] = v7;
        *(v77[7] + 8 * v67) = v383;
        v79 = v77[2];
        v71 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v71)
        {
          goto LABEL_376;
        }

        v366 = v77;
        v77[2] = v80;
LABEL_84:

        if (v42)
        {
          type metadata accessor for MeshAttributeDescriptor();
          v7 = swift_allocObject();
          *(v7 + 16) = v347;
          MEMORY[0x1C68F3650]();
          if (*((v421 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v421 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v82 = *((v421 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }
        }

        else
        {

          MEMORY[0x1C68F3650](v81);
          if (*((v421 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v421 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v7 = *((v421 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v362 = v421;
        outlined destroy of AnyMeshBuffer(v413);
        v32 = v395;
      }
    }
  }

LABEL_91:

  if (*(&v419 + 1))
  {
    outlined init with copy of AnyMeshBuffer(&v418, v413);
    v83 = *&v413[24];
    v7 = *&v413[32];
    __swift_project_boxed_opaque_existential_1(v413, *&v413[24]);
    v84 = *(v7 + 16);

    v85 = v84(v83, v7);
    outlined destroy of AnyMeshBuffer(v413);
  }

  else
  {

    v85 = 0;
  }

  v86 = v366;

  v396 = specialized MeshDefinition.__allocating_init(attributes:vertexCount:indexCount:customNames:)(v362, v358, v85, v363);
  if (!*(&v419 + 1))
  {
    goto LABEL_108;
  }

  outlined init with copy of AnyMeshBuffer(&v418, v409);
  outlined init with take of BindableDataInternal(v409, v413);
  outlined init with take of BindableDataInternal(v413, v410);
  v87 = v411;
  v88 = v412;
  __swift_project_boxed_opaque_existential_1(v410, v411);
  v89 = (*(v88 + 48))(v87, v88);
  if (v90 >> 60 != 15)
  {
    v102 = *(v396 + 16);
    v103 = v89;
    v7 = v90;
    isa = Data._bridgeToObjectiveC()().super.isa;
    REMeshDefinitionSetIndicesWithData();

    outlined consume of Data?(v103, v7);
    goto LABEL_107;
  }

  v91 = v411;
  v92 = v412;
  __swift_project_boxed_opaque_existential_1(v410, v411);
  v93 = (*(v92 + 56))(v409, MEMORY[0x1E69E7668], v91, v92);
  *&v413[32] = *&v409[32];
  *&v413[48] = *&v409[48];
  *&v413[64] = *&v409[64];
  v413[80] = v409[80];
  *v413 = *v409;
  *&v413[16] = *&v409[16];
  if (*v409)
  {
    v508[0] = *v413;
    v508[1] = *&v413[8];
    v511 = *&v409[48];
    v512 = *&v409[64];
    v513 = v409[80];
    v509 = *&v409[16];
    v510 = *&v409[32];
    v94 = (*v413)(v93);
    if (!v94)
    {
      v94 = specialized _copySequenceToContiguousArray<A>(_:)(v508);
    }

    v95 = *(v396 + 16);
    v7 = _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt32V_Tt0g5(v94 + 32, *(v94 + 16));
    v97 = v96;
    v98.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v7, v97);
    REMeshDefinitionSetIndicesWithDataUInt32();
    v99 = v413;
    v100 = &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd;
    v101 = &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR;
    goto LABEL_106;
  }

  v105 = v411;
  v106 = v412;
  __swift_project_boxed_opaque_existential_1(v410, v411);
  v107 = (*(v106 + 56))(&v397, MEMORY[0x1E69E75F8], v105, v106);
  v406 = v400;
  v407 = v401;
  v408 = v402;
  v403 = v397;
  v404 = v398;
  v405 = v399;
  if (!v397)
  {
    goto LABEL_358;
  }

  v514[0] = v397;
  v514[1] = *(&v403 + 1);
  v517 = v400;
  v518 = v401;
  v519 = v402;
  v515 = v398;
  v516 = v399;
  v108 = (v397)(v107);
  if (!v108)
  {
    v108 = specialized _copySequenceToContiguousArray<A>(_:)(v514);
  }

  v109 = *(v396 + 16);
  v7 = _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt16V_Tt0g5(v108 + 32, *(v108 + 16));
  v111 = v110;
  v98.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v7, v111);
  REMeshDefinitionSetIndicesWithDataUInt16();
  v99 = &v403;
  v100 = &_s17RealityFoundation10MeshBufferVys6UInt16VGSgMd;
  v101 = &_s17RealityFoundation10MeshBufferVys6UInt16VGSgMR;
LABEL_106:
  outlined destroy of BodyTrackingComponent?(v99, v100, v101);

LABEL_107:
  __swift_destroy_boxed_opaque_existential_1(v410);
  v86 = v366;
LABEL_108:
  v112 = MeshBufferDictionary.entries.getter(v365);
  v113 = 0;
  v114 = v112 + 64;
  v115 = 1 << *(v112 + 32);
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  else
  {
    v116 = -1;
  }

  v117 = v116 & *(v112 + 64);
  v118 = (v115 + 63) >> 6;
  v119 = v112;
  v369 = v118;
  v370 = v112 + 64;
  while (2)
  {
    if (!v117)
    {
      do
      {
        v120 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          goto LABEL_357;
        }

        if (v120 >= v118)
        {
          goto LABEL_303;
        }

        v117 = *(v114 + 8 * v120);
        ++v113;
      }

      while (!v117);
      v113 = v120;
    }

    v121 = __clz(__rbit64(v117)) | (v113 << 6);
    v122 = *(v119 + 48) + 24 * v121;
    v123 = *v122;
    v7 = *(v122 + 8);
    v124 = *(v122 + 17);
    outlined init with copy of AnyMeshBuffer(*(v119 + 56) + 40 * v121, v413);
    v374 = *&v413[16];
    v384 = *v413;
    v1 = *&v413[32];

    if (!v7)
    {
LABEL_303:

      v8 = v360;
      v9 = &v403;
      v289 = MEMORY[0x1E69E7CC0];
      if (one-time initialization token for jointInfluences != -1)
      {
        swift_once();
      }

      if (HIBYTE(word_1EBEAD148))
      {
        v290 = 256;
      }

      else
      {
        v290 = 0;
      }

      specialized MeshResource.Part.subscript.getter(static MeshBuffers.jointInfluences, unk_1EBEAD140, v290 | word_1EBEAD148, v409);
      *&v413[32] = *&v409[32];
      *&v413[48] = *&v409[48];
      *&v413[64] = *&v409[64];
      v413[80] = v409[80];
      *v413 = *v409;
      *&v413[16] = *&v409[16];
      v291 = *v409;
      if (*v409)
      {
        v7 = *&v413[8];
        v493[0] = *v413;
        v493[1] = *&v413[8];
        v496 = *&v409[48];
        v497 = *&v409[64];
        v498 = v409[80];
        v494 = *&v409[16];
        v495 = *&v409[32];
        if (v359)
        {
          v292 = one-time initialization token for jointInfluenceEndIndices;

          if (v292 != -1)
          {
            swift_once();
          }

          if (HIBYTE(word_1EBEAD160))
          {
            v293 = 256;
          }

          else
          {
            v293 = 0;
          }

          specialized MeshResource.Part.subscript.getter(static MeshBuffers.jointInfluenceEndIndices, *algn_1EBEAD158, v293 | word_1EBEAD160, &v403);
          *&v409[32] = v405;
          *&v409[48] = v406;
          *&v409[64] = v407;
          v409[80] = v408;
          *v409 = v403;
          *&v409[16] = v404;
          if (v403)
          {
            v499[0] = *v409;
            v499[1] = *&v409[8];
            v502 = v406;
            v503 = v407;
            v504 = v408;
            v500 = v404;
            v501 = v405;
            v294 = (*v409)();
            if (!v294)
            {
              v294 = specialized _copySequenceToContiguousArray<A>(_:)(v499);
            }

            v295 = v294;
            outlined destroy of BodyTrackingComponent?(v409, &_s17RealityFoundation10MeshBufferVys5Int32VGSgMd, &_s17RealityFoundation10MeshBufferVys5Int32VGSgMR);
LABEL_327:
            type metadata accessor for MeshAttributeDescriptor();
            v301 = swift_allocObject();
            *(v301 + 16) = v353;
            v302 = v291();
            if (!v302)
            {
              specialized _copySequenceToContiguousArray<A>(_:)(v493);
            }

            v303 = *(v302 + 16);
            v304 = v302;
            v305 = MEMORY[0x1C68FBDA0](v353, v302 + 32, v303, 0, 0);
            *&v403 = specialized Data.init(count:)(v305);
            *(&v403 + 1) = v306;

            specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v403, v301, v304 + 32, v303, v304);
            v307 = v403;

            v308 = *(v396 + 16);
            v309 = *(v301 + 16);
            v310 = Data._bridgeToObjectiveC()().super.isa;
            REMeshDefinitionSetAttributeWithData();

            outlined consume of Data._Representation(v307, *(&v307 + 1));
            swift_setDeallocating();
            swift_deallocClassInstance();
            v311 = swift_allocObject();
            *(v311 + 16) = v351;
            MeshDefinition.setAttribute(_:skinInfluenceEndIndices:)(v311, v295);

            swift_setDeallocating();
            swift_deallocClassInstance();
            v312 = *(v396 + 16);
            v7 = v359;
            String.utf8CString.getter();

            REMeshDefinitionSetSkeletonName();

            outlined destroy of BodyTrackingComponent?(v413, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMR);
            v9 = &v403;
            v11 = MEMORY[0x1E69E7CC0];
            goto LABEL_330;
          }

          if ((v507[12] & 1) == 0)
          {
            v296 = *&v507[8];
            v297 = static Array._allocateBufferUninitialized(minimumCapacity:)();
            v295 = v297;
            v298 = 0;
            for (i = 0; i != v358; ++i)
            {
              if (__OFADD__(v298, v296))
              {
                goto LABEL_365;
              }

              v300 = v297 + 4 * i;
              *(v300 + 32) = v298 + v296;
              v298 += v296;
            }

            *(v297 + 16) = v358;
            goto LABEL_327;
          }

          outlined destroy of BodyTrackingComponent?(v413, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMR);
        }

        else
        {
          outlined destroy of BodyTrackingComponent?(v413, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMR);
        }
      }

      v11 = v289;
LABEL_330:
      v313 = *&v507[16];
      v314 = *(v354 + 16);
      v377 = HIDWORD(*&v507[16]);
      v12 = v520;
      v393 = *&v507[16];
      if (v314)
      {
        *v409 = specialized _copyCollectionToContiguousArray<A>(_:)(v354, v352);
        specialized MutableCollection<>.sort(by:)(v409, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata for MeshResource.Level_v1, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

        v7 = *(*v409 + 16);
        if (v7)
        {
          v315 = 0;
          v316 = *v409 + 32;
          v317 = 0.0;
          v318 = INFINITY;
          v9 = v393;
          while (2)
          {
            v319 = v314;
            v320 = v316 + 32 * v315;
            v321 = *(v320 + 8);
            v322 = *(v320 + 16);
            v323 = *(v320 + 24);
            v324 = *(v320 + 28);
            ++v315;
            --v314;
            v325 = *(v322 + 16);
            v326 = 32;
            do
            {
              if (!v325)
              {
                goto LABEL_333;
              }

              v327 = *(v322 + v326);
              v326 += 8;
              --v325;
            }

            while (v327 != v12);
            if (v324)
            {
              v318 = v323;
            }

            else
            {
              v317 = v323;
            }

            if (v319 < 1)
            {
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
              goto LABEL_364;
            }

            if (HIDWORD(v314))
            {
              goto LABEL_361;
            }

            v328 = *(v367 + 16);

            MEMORY[0x1C68FC2A0](v328, v314, v317, v318);
            if (v9 < 0)
            {
              goto LABEL_362;
            }

            if (v377)
            {
              goto LABEL_363;
            }

            v329 = *(v396 + 16);
            String.utf8CString.getter();
            v9 = v393;
            REMeshModelDefinitionAppendTrianglesWithName();

            v12 = v520;
LABEL_333:
            if (v315 != v7)
            {
              continue;
            }

            break;
          }

          v8 = v360;
          v9 = &v403;
          v11 = MEMORY[0x1E69E7CC0];
        }

        else
        {
        }
      }

      else
      {

        MEMORY[0x1C68FC2A0](*(v367 + 16), 0, 0.0, INFINITY);
        if (v313 < 0)
        {
          goto LABEL_366;
        }

        if (v377)
        {
          goto LABEL_367;
        }

        v330 = *(v396 + 16);
        String.utf8CString.getter();
        REMeshModelDefinitionAppendTrianglesWithName();

        v12 = v520;
      }

      outlined destroy of MeshResource.Part(&v505);
      outlined destroy of BodyTrackingComponent?(&v418, &_s17RealityFoundation13AnyMeshBufferVSgMd, &_s17RealityFoundation13AnyMeshBufferVSgMR);

      goto LABEL_351;
    }

    v117 &= v117 - 1;
    v398 = v374;
    v397 = v384;
    *&v399 = v1;
    if (!v86[2] || (, specialized __RawDictionaryStorage.find<A>(_:)(v123, v7), v126 = v125, , (v126 & 1) == 0))
    {

      outlined destroy of AnyMeshBuffer(&v397);
      goto LABEL_113;
    }

    if (!*(v364 + 16) || (, v127 = specialized __RawDictionaryStorage.find<A>(_:)(v123, v7), v129 = v128, , (v129 & 1) == 0) || !v366[2])
    {
LABEL_132:
      if (v124)
      {
        v202 = *(&v398 + 1);
        v203 = v399;
        __swift_project_boxed_opaque_existential_1(&v397, *(&v398 + 1));
        v387 = *(v203 + 56);
        v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v387(v409, v204, v202, v203);
        *&v413[32] = *&v409[32];
        *&v413[48] = *&v409[48];
        *&v413[64] = *&v409[64];
        v413[80] = v409[80];
        *v413 = *v409;
        *&v413[16] = *&v409[16];
        v205 = *v409;
        if (!*v409)
        {
          goto LABEL_377;
        }

        v443[0] = *v409;
        v443[1] = *&v413[8];
        v446 = *&v413[48];
        v447 = *&v413[64];
        v448 = v413[80];
        v444 = *&v413[16];
        v445 = *&v413[32];
        *&v409[32] = *&v413[32];
        *&v409[48] = *&v413[48];
        *&v409[64] = *&v413[64];
        v409[80] = v413[80];
        *v409 = *v413;
        *&v409[16] = *&v413[16];
        v206 = outlined init with copy of [String : String](v409, &v403, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        v207 = v205(v206);
        v208 = v341;
        if (!v207)
        {
          v207 = specialized _copySequenceToContiguousArray<A>(_:)(v443);
        }

        v209 = v207;
        outlined destroy of BodyTrackingComponent?(v413, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
        v210 = swift_allocObject();
        *(v210 + 16) = v347;
        v388 = *(v209 + 16);
        v211 = MEMORY[0x1C68FBD60]();
        v212 = v211;
        if (v211)
        {
          if (v211 <= 14)
          {
            if (v211 < 0)
            {
              goto LABEL_374;
            }

            v211 = 0;
            v341 = v341 & 0xF00000000000000 | (v212 << 48);
            v217 = v208 & 0xF00000000000000 | (v212 << 48);
          }

          else
          {
            v213 = type metadata accessor for __DataStorage();
            v214 = *(v213 + 48);
            v215 = *(v213 + 52);
            swift_allocObject();
            v216 = __DataStorage.init(length:)();
            if (v212 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v211 = swift_allocObject();
              *(v211 + 16) = 0;
              *(v211 + 24) = v212;
              v217 = v216 | 0x8000000000000000;
            }

            else
            {
              v211 = v212 << 32;
              v217 = v216 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v217 = 0xC000000000000000;
        }

        *&v403 = v211;
        *(&v403 + 1) = v217;

        _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_n(&v403, _s17RealityFoundation23MeshAttributeDescriptorC8makeData17blendShapeOffsets0B00G0VSays5SIMD3VySfGG_tFSiSPyAKG_SiSvSgSitcSo06REMeshdE3Refacfu_SiAM_SiANSitcfu0_TA_0, v210, v209 + 32, v388, v209);
        v256 = v403;

        v389 = *(v396 + 16);
        v257 = Data._bridgeToObjectiveC()().super.isa;
        String.utf8CString.getter();

        REMeshDefinitionSetCustomAttributeWithData();

        outlined consume of Data._Representation(v256, *(&v256 + 1));

        outlined destroy of BodyTrackingComponent?(v413, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
        goto LABEL_282;
      }

      if (one-time initialization token for positions != -1)
      {
        swift_once();
      }

      v141 = static MeshBuffers.Identifier.positions == v123 && v7 == unk_1EBEAD020;
      if (!v141 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v86 = v366;
        if (one-time initialization token for normals != -1)
        {
          swift_once();
        }

        if (static MeshBuffers.Identifier.normals == v123 && v7 == *algn_1EBEAD038 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if (one-time initialization token for normals != -1)
          {
            v151 = swift_once();
          }

          if (*(v365 + 16) && (!HIBYTE(word_1EBEAD0D0) ? (v152 = 0) : (v152 = 256), v151 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.normals, *algn_1EBEAD0C8, v152 | word_1EBEAD0D0), (v153 & 1) != 0))
          {
            outlined init with copy of __REAssetService(*(v365 + 56) + 40 * v151, &v403);
            outlined init with take of BindableDataInternal(&v403, v409);
            v154 = *&v409[24];
            v155 = *&v409[32];
            __swift_project_boxed_opaque_existential_1(v409, *&v409[24]);
            v156 = *(v155 + 56);
            v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
            v156(v413, v157, v154, v155);
            v151 = __swift_destroy_boxed_opaque_existential_1(v409);
          }

          else
          {
            memset(v413, 0, 81);
          }

          *&v409[32] = *&v413[32];
          *&v409[48] = *&v413[48];
          *&v409[64] = *&v413[64];
          v409[80] = v413[80];
          *v409 = *v413;
          *&v409[16] = *&v413[16];
          if (*v413)
          {
            v451[0] = *v409;
            v451[1] = *&v409[8];
            v454 = *&v413[48];
            v455 = *&v413[64];
            v456 = v413[80];
            v452 = *&v413[16];
            v453 = *&v413[32];
            v194 = (*v409)(v151);
            if (!v194)
            {
              v194 = specialized _copySequenceToContiguousArray<A>(_:)(v451);
            }

            v195 = v194;
            outlined destroy of BodyTrackingComponent?(v409, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
          }

          else
          {
            v195 = MEMORY[0x1E69E7CC0];
          }

          v218 = swift_allocObject();
          *(v218 + 16) = v349;
          v219 = *(v195 + 16);
          v220 = MEMORY[0x1C68FBDB0]();
          v221 = v220;
          if (v220)
          {
            if (v220 <= 14)
            {
              if (v220 < 0)
              {
                goto LABEL_372;
              }

              v220 = 0;
              v226 = v339 & 0xF00000000000000 | (v221 << 48);
              v339 = v226;
            }

            else
            {
              v222 = type metadata accessor for __DataStorage();
              v223 = *(v222 + 48);
              v224 = *(v222 + 52);
              swift_allocObject();
              v225 = __DataStorage.init(length:)();
              if (v221 >= 0x7FFFFFFF)
              {
                type metadata accessor for Data.RangeReference();
                v220 = swift_allocObject();
                *(v220 + 16) = 0;
                *(v220 + 24) = v221;
                v226 = v225 | 0x8000000000000000;
              }

              else
              {
                v220 = v221 << 32;
                v226 = v225 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v226 = 0xC000000000000000;
          }

          *&v403 = v220;
          *(&v403 + 1) = v226;

          _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_n(&v403, _s17RealityFoundation23MeshAttributeDescriptorC8makeData7normals0B00G0VSays5SIMD3VySfGG_tFSiSPyAKG_SiSvSgSitcSo06REMeshdE3Refacfu_SiAM_SiANSitcfu0_TA_0, v218, v195 + 32, v219, v195);
          v7 = *(&v403 + 1);
          v252 = v403;

          v253 = *(v396 + 16);
          v254.super.isa = Data._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          if (one-time initialization token for tangents != -1)
          {
            swift_once();
          }

          if ((static MeshBuffers.Identifier.tangents != v123 || v7 != unk_1EBEAD050) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (one-time initialization token for bitangents != -1)
            {
              swift_once();
            }

            if (static MeshBuffers.Identifier.bitangents == v123 && v7 == *algn_1EBEAD068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (one-time initialization token for bitangents != -1)
              {
                v165 = swift_once();
              }

              if (*(v365 + 16) && (!HIBYTE(word_1EBEAD100) ? (v166 = 0) : (v166 = 256), v165 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.bitangents, *algn_1EBEAD0F8, v166 | word_1EBEAD100), (v167 & 1) != 0))
              {
                outlined init with copy of __REAssetService(*(v365 + 56) + 40 * v165, &v403);
                outlined init with take of BindableDataInternal(&v403, v409);
                v168 = *&v409[24];
                v169 = *&v409[32];
                __swift_project_boxed_opaque_existential_1(v409, *&v409[24]);
                v170 = *(v169 + 56);
                v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
                v170(v413, v171, v168, v169);
                v165 = __swift_destroy_boxed_opaque_existential_1(v409);
              }

              else
              {
                memset(v413, 0, 81);
              }

              *&v409[32] = *&v413[32];
              *&v409[48] = *&v413[48];
              *&v409[64] = *&v413[64];
              v409[80] = v413[80];
              *v409 = *v413;
              *&v409[16] = *&v413[16];
              if (*v413)
              {
                v463[0] = *v409;
                v463[1] = *&v409[8];
                v466 = *&v413[48];
                v467 = *&v413[64];
                v468 = v413[80];
                v464 = *&v413[16];
                v465 = *&v413[32];
                v198 = (*v409)(v165);
                if (!v198)
                {
                  v198 = specialized _copySequenceToContiguousArray<A>(_:)(v463);
                }

                v199 = v198;
                outlined destroy of BodyTrackingComponent?(v409, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
              }

              else
              {
                v199 = MEMORY[0x1E69E7CC0];
              }

              v236 = swift_allocObject();
              *(v236 + 16) = v346;
              v237 = *(v199 + 16);
              v238 = MEMORY[0x1C68FBD50](v346, v199 + 32, v237, 0, 0);
              *&v403 = specialized Data.init(count:)(v238);
              *(&v403 + 1) = v239;

              v240 = v361;
              _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_n(&v403, _s17RealityFoundation23MeshAttributeDescriptorC8makeData10bitangents0B00G0VSays5SIMD3VySfGG_tFSiSPyAKG_SiSvSgSitcSo06REMeshdE3Refacfu_SiAM_SiANSitcfu0_TA_0, v236, v199 + 32, v237, v199);
            }

            else
            {
              if (one-time initialization token for textureCoordinates != -1)
              {
                swift_once();
              }

              if ((static MeshBuffers.Identifier.textureCoordinates != v123 || v7 != unk_1EBEAD080) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                if (one-time initialization token for jointInfluences != -1)
                {
                  swift_once();
                }

                if (static MeshBuffers.Identifier.jointInfluences == v123 && v7 == unk_1EBEAD170 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_170;
                }

                if (one-time initialization token for jointInfluenceEndIndices != -1)
                {
                  swift_once();
                }

                if (static MeshBuffers.Identifier.jointInfluenceEndIndices == v123 && v7 == *algn_1EBEAD188 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
LABEL_170:
                  outlined destroy of AnyMeshBuffer(&v397);

                  goto LABEL_113;
                }

                v258 = *(&v398 + 1);
                v259 = v399;
                __swift_project_boxed_opaque_existential_1(&v397, *(&v398 + 1));
                (*(v259 + 32))(v410, v258, v259);
                switch(LOBYTE(v410[0]))
                {
                  case 0xAu:
                    v280 = *(&v398 + 1);
                    v281 = v399;
                    __swift_project_boxed_opaque_existential_1(&v397, *(&v398 + 1));
                    v392 = *(v281 + 56);
                    v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
                    v392(v409, v282, v280, v281);
                    *&v413[32] = *&v409[32];
                    *&v413[48] = *&v409[48];
                    *&v413[64] = *&v409[64];
                    v413[80] = v409[80];
                    *v413 = *v409;
                    *&v413[16] = *&v409[16];
                    type metadata accessor for MeshAttributeDescriptor();
                    v283 = swift_allocObject();
                    *(v283 + 16) = v344;
                    v284 = *v413;
                    if (!*v413)
                    {
                      goto LABEL_381;
                    }

                    v285 = v283;
                    v487[0] = *v413;
                    v487[1] = *&v413[8];
                    v490 = *&v413[48];
                    v491 = *&v413[64];
                    v492 = v413[80];
                    v488 = *&v413[16];
                    v489 = *&v413[32];
                    *&v409[32] = *&v413[32];
                    *&v409[48] = *&v413[48];
                    *&v409[64] = *&v413[64];
                    v409[80] = v413[80];
                    *v409 = *v413;
                    *&v409[16] = *&v413[16];
                    v286 = outlined init with copy of [String : String](v409, &v403, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMR);
                    v287 = v284(v286);
                    if (!v287)
                    {
                      v287 = specialized _copySequenceToContiguousArray<A>(_:)(v487);
                    }

                    v288 = v287;
                    outlined destroy of BodyTrackingComponent?(v413, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
                    MeshDefinition.setAttribute(_:custom:name:)(v285, v288, v123, v7);
                    v269 = &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd;
                    v270 = &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR;
                    goto LABEL_300;
                  case 9u:
                    v271 = *(&v398 + 1);
                    v272 = v399;
                    __swift_project_boxed_opaque_existential_1(&v397, *(&v398 + 1));
                    v391 = *(v272 + 56);
                    v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
                    v391(v409, v273, v271, v272);
                    *&v413[32] = *&v409[32];
                    *&v413[48] = *&v409[48];
                    *&v413[64] = *&v409[64];
                    v413[80] = v409[80];
                    *v413 = *v409;
                    *&v413[16] = *&v409[16];
                    type metadata accessor for MeshAttributeDescriptor();
                    v274 = swift_allocObject();
                    *(v274 + 16) = v343;
                    v275 = *v413;
                    if (!*v413)
                    {
                      goto LABEL_380;
                    }

                    v276 = v274;
                    v481[0] = *v413;
                    v481[1] = *&v413[8];
                    v484 = *&v413[48];
                    v485 = *&v413[64];
                    v486 = v413[80];
                    v482 = *&v413[16];
                    v483 = *&v413[32];
                    *&v409[32] = *&v413[32];
                    *&v409[48] = *&v413[48];
                    *&v409[64] = *&v413[64];
                    v409[80] = v413[80];
                    *v409 = *v413;
                    *&v409[16] = *&v413[16];
                    v277 = outlined init with copy of [String : String](v409, &v403, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
                    v278 = v275(v277);
                    if (!v278)
                    {
                      v278 = specialized _copySequenceToContiguousArray<A>(_:)(v481);
                    }

                    v279 = v278;
                    outlined destroy of BodyTrackingComponent?(v413, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
                    MeshDefinition.setAttribute(_:custom:name:)(v276, v279, v123, v7);
                    v269 = &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd;
                    v270 = &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR;
                    goto LABEL_300;
                  case 8u:
                    v260 = *(&v398 + 1);
                    v261 = v399;
                    __swift_project_boxed_opaque_existential_1(&v397, *(&v398 + 1));
                    v390 = *(v261 + 56);
                    v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
                    v390(v409, v262, v260, v261);
                    *&v413[32] = *&v409[32];
                    *&v413[48] = *&v409[48];
                    *&v413[64] = *&v409[64];
                    v413[80] = v409[80];
                    *v413 = *v409;
                    *&v413[16] = *&v409[16];
                    type metadata accessor for MeshAttributeDescriptor();
                    v263 = swift_allocObject();
                    *(v263 + 16) = v342;
                    v264 = *v413;
                    if (!*v413)
                    {
                      goto LABEL_379;
                    }

                    v265 = v263;
                    v475[0] = *v413;
                    v475[1] = *&v413[8];
                    v478 = *&v413[48];
                    v479 = *&v413[64];
                    v480 = v413[80];
                    v476 = *&v413[16];
                    v477 = *&v413[32];
                    *&v409[32] = *&v413[32];
                    *&v409[48] = *&v413[48];
                    *&v409[64] = *&v413[64];
                    v409[80] = v413[80];
                    *v409 = *v413;
                    *&v409[16] = *&v413[16];
                    v266 = outlined init with copy of [String : String](v409, &v403, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
                    v267 = v264(v266);
                    if (!v267)
                    {
                      v267 = specialized _copySequenceToContiguousArray<A>(_:)(v475);
                    }

                    v268 = v267;
                    outlined destroy of BodyTrackingComponent?(v413, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMR);
                    MeshDefinition.setAttribute(_:custom:name:)(v265, v268, v123, v7);
                    v269 = &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMd;
                    v270 = &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMR;
LABEL_300:
                    outlined destroy of BodyTrackingComponent?(v413, v269, v270);

                    swift_setDeallocating();
                    swift_deallocClassInstance();
                    goto LABEL_282;
                }

LABEL_281:

                goto LABEL_282;
              }

              if (one-time initialization token for textureCoordinates != -1)
              {
                v172 = swift_once();
              }

              if (*(v365 + 16) && (!HIBYTE(word_1EBEAD118) ? (v173 = 0) : (v173 = 256), v172 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.textureCoordinates, unk_1EBEAD110, v173 | word_1EBEAD118), (v174 & 1) != 0))
              {
                outlined init with copy of __REAssetService(*(v365 + 56) + 40 * v172, &v403);
                outlined init with take of BindableDataInternal(&v403, v409);
                v175 = *&v409[24];
                v176 = *&v409[32];
                __swift_project_boxed_opaque_existential_1(v409, *&v409[24]);
                v177 = *(v176 + 56);
                v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
                v177(v413, v178, v175, v176);
                v172 = __swift_destroy_boxed_opaque_existential_1(v409);
              }

              else
              {
                memset(v413, 0, 81);
              }

              *&v409[32] = *&v413[32];
              *&v409[48] = *&v413[48];
              *&v409[64] = *&v413[64];
              v409[80] = v413[80];
              *v409 = *v413;
              *&v409[16] = *&v413[16];
              if (*v413)
              {
                v469[0] = *v409;
                v469[1] = *&v409[8];
                v472 = *&v413[48];
                v473 = *&v413[64];
                v474 = v413[80];
                v470 = *&v413[16];
                v471 = *&v413[32];
                v200 = (*v409)(v172);
                if (!v200)
                {
                  v200 = specialized _copySequenceToContiguousArray<A>(_:)(v469);
                }

                v201 = v200;
                outlined destroy of BodyTrackingComponent?(v409, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGSgMR);
              }

              else
              {
                v201 = MEMORY[0x1E69E7CC0];
              }

              v241 = swift_allocObject();
              *(v241 + 16) = v345;
              v242 = *(v201 + 16);
              v243 = MEMORY[0x1C68FBDF0](v345, v201 + 32, v242, 0, 0);
              *&v403 = specialized Data.init(count:)(v243);
              *(&v403 + 1) = v244;

              v240 = v361;
              _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_n(&v403, _s17RealityFoundation23MeshAttributeDescriptorC8makeData3uvs0B00G0VSays5SIMD2VySfGG_tFSiSPyAKG_SiSvSgSitcSo06REMeshdE3Refacfu_SiAM_SiANSitcfu0_TA_0, v241, v201 + 32, v242, v201);
            }

            v361 = v240;
            v245 = *(&v403 + 1);
            v7 = v403;

            v246 = *(v396 + 16);
            v247 = Data._bridgeToObjectiveC()().super.isa;
            REMeshDefinitionSetAttributeWithData();

            v248 = v7;
            goto LABEL_274;
          }

          if (one-time initialization token for tangents != -1)
          {
            v158 = swift_once();
          }

          if (*(v365 + 16) && (!HIBYTE(word_1EBEAD0E8) ? (v159 = 0) : (v159 = 256), v158 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.tangents, unk_1EBEAD0E0, v159 | word_1EBEAD0E8), (v160 & 1) != 0))
          {
            outlined init with copy of __REAssetService(*(v365 + 56) + 40 * v158, &v403);
            outlined init with take of BindableDataInternal(&v403, v409);
            v161 = *&v409[24];
            v162 = *&v409[32];
            __swift_project_boxed_opaque_existential_1(v409, *&v409[24]);
            v163 = *(v162 + 56);
            v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
            v163(v413, v164, v161, v162);
            v158 = __swift_destroy_boxed_opaque_existential_1(v409);
          }

          else
          {
            memset(v413, 0, 81);
          }

          *&v409[32] = *&v413[32];
          *&v409[48] = *&v413[48];
          *&v409[64] = *&v413[64];
          v409[80] = v413[80];
          *v409 = *v413;
          *&v409[16] = *&v413[16];
          if (*v413)
          {
            v457[0] = *v409;
            v457[1] = *&v409[8];
            v460 = *&v413[48];
            v461 = *&v413[64];
            v462 = v413[80];
            v458 = *&v413[16];
            v459 = *&v413[32];
            v196 = (*v409)(v158);
            if (!v196)
            {
              v196 = specialized _copySequenceToContiguousArray<A>(_:)(v457);
            }

            v197 = v196;
            outlined destroy of BodyTrackingComponent?(v409, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
          }

          else
          {
            v197 = MEMORY[0x1E69E7CC0];
          }

          v227 = swift_allocObject();
          *(v227 + 16) = v348;
          v228 = *(v197 + 16);
          v229 = MEMORY[0x1C68FBDE0]();
          v230 = v229;
          if (v229)
          {
            if (v229 <= 14)
            {
              if (v229 < 0)
              {
                goto LABEL_373;
              }

              v229 = 0;
              v235 = v338 & 0xF00000000000000 | (v230 << 48);
              v338 = v235;
            }

            else
            {
              v231 = type metadata accessor for __DataStorage();
              v232 = *(v231 + 48);
              v233 = *(v231 + 52);
              swift_allocObject();
              v234 = __DataStorage.init(length:)();
              if (v230 >= 0x7FFFFFFF)
              {
                type metadata accessor for Data.RangeReference();
                v229 = swift_allocObject();
                *(v229 + 16) = 0;
                *(v229 + 24) = v230;
                v235 = v234 | 0x8000000000000000;
              }

              else
              {
                v229 = v230 << 32;
                v235 = v234 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v235 = 0xC000000000000000;
          }

          *&v403 = v229;
          *(&v403 + 1) = v235;

          _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_n(&v403, _s17RealityFoundation23MeshAttributeDescriptorC8makeData8tangents0B00G0VSays5SIMD3VySfGG_tFSiSPyAKG_SiSvSgSitcSo06REMeshdE3Refacfu_SiAM_SiANSitcfu0_TA_0, v227, v197 + 32, v228, v197);
          v7 = *(&v403 + 1);
          v252 = v403;

          v255 = *(v396 + 16);
          v254.super.isa = Data._bridgeToObjectiveC()().super.isa;
        }

        REMeshDefinitionSetAttributeWithData();

        v248 = v252;
        v251 = v7;
        goto LABEL_280;
      }

      if (*(v365 + 16) && (!HIBYTE(word_1EBEAD0B8) ? (v142 = 0) : (v142 = 256), v143 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v142 | word_1EBEAD0B8), (v144 & 1) != 0))
      {
        outlined init with copy of __REAssetService(*(v365 + 56) + 40 * v143, &v403);
        outlined init with take of BindableDataInternal(&v403, v409);
        v145 = *&v409[24];
        v146 = *&v409[32];
        __swift_project_boxed_opaque_existential_1(v409, *&v409[24]);
        v147 = *(v146 + 56);
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v147(v413, v148, v145, v146);
        v149 = __swift_destroy_boxed_opaque_existential_1(v409);
        v150 = *v413;
        if (*v413)
        {
          *&v409[8] = *&v413[8];
          *&v409[65] = *&v413[65];
          *&v409[56] = *&v413[56];
          *&v409[40] = *&v413[40];
          *&v409[24] = *&v413[24];
LABEL_212:
          *v409 = v150;
          v449[2] = *&v409[32];
          v449[3] = *&v409[48];
          v449[4] = *&v409[64];
          v450 = v409[80];
          v449[0] = *v409;
          v449[1] = *&v409[16];
          v183 = (v150)(v149);
          if (!v183)
          {
            v183 = specialized _copySequenceToContiguousArray<A>(_:)(v449);
          }

          v184 = v183;
          outlined destroy of BodyTrackingComponent?(v409, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
          v185 = swift_allocObject();
          *(v185 + 16) = v350;
          v186 = *(v184 + 16);
          v187 = MEMORY[0x1C68FBDC0]();
          v188 = v187;
          if (v187)
          {
            if (v187 <= 14)
            {
              if (v187 < 0)
              {
                goto LABEL_371;
              }

              v187 = 0;
              v193 = v340 & 0xF00000000000000 | (v188 << 48);
              v340 = v193;
            }

            else
            {
              v189 = type metadata accessor for __DataStorage();
              v190 = *(v189 + 48);
              v191 = *(v189 + 52);
              swift_allocObject();
              v192 = __DataStorage.init(length:)();
              if (v188 >= 0x7FFFFFFF)
              {
                type metadata accessor for Data.RangeReference();
                v187 = swift_allocObject();
                *(v187 + 16) = 0;
                *(v187 + 24) = v188;
                v193 = v192 | 0x8000000000000000;
              }

              else
              {
                v187 = v188 << 32;
                v193 = v192 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v193 = 0xC000000000000000;
          }

          *&v403 = v187;
          *(&v403 + 1) = v193;

          _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_n(&v403, _s17RealityFoundation23MeshAttributeDescriptorC8makeData9positions0B00G0VSays5SIMD3VySfGG_tFSiSPyAKG_SiSvSgSitcSo06REMeshdE3Refacfu_SiAM_SiANSitcfu0_TA_0, v185, v184 + 32, v186, v184);
          v245 = *(&v403 + 1);
          v249 = v403;

          v7 = *(v396 + 16);
          v250 = Data._bridgeToObjectiveC()().super.isa;
          REMeshDefinitionSetAttributeWithData();

          v248 = v249;
LABEL_274:
          v251 = v245;
LABEL_280:
          outlined consume of Data._Representation(v248, v251);
          goto LABEL_281;
        }
      }

      else
      {
        memset(v413, 0, 81);
      }

      v179 = swift_allocObject();
      v180 = MEMORY[0x1E69E7CC0];
      *(v179 + 16) = MEMORY[0x1E69E7CC0];
      v181 = swift_allocObject();
      *(v181 + 16) = v180;
      v182 = swift_allocObject();
      *(v182 + 16) = v180;
      v149 = swift_allocObject();
      *(v149 + 16) = v180;
      *&v409[8] = v179;
      *&v409[16] = closure #2 in MeshBuffer.init<A>(_:)specialized partial apply;
      *&v409[24] = v181;
      *&v409[32] = closure #3 in MeshBuffer.init<A>(_:)specialized partial apply;
      *&v409[40] = v182;
      *&v409[48] = closure #4 in MeshBuffer.init<A>(_:)specialized partial apply;
      *&v409[56] = v149;
      strcpy(&v409[64], "\t");
      *&v409[72] = 0;
      v409[80] = 0;
      v150 = closure #1 in MeshBuffer.init<A>(_:)specialized partial apply;
      goto LABEL_212;
    }

    v385 = v119;
    v130 = (*(v364 + 56) + 16 * v127);
    v131 = *v130;
    v132 = v130[1];

    outlined copy of Data._Representation(v131, v132);
    v375 = specialized __RawDictionaryStorage.find<A>(_:)(v123, v7);
    v134 = v133;

    if ((v134 & 1) == 0)
    {
      outlined consume of Data._Representation(v131, v132);
      v119 = v385;
      goto LABEL_132;
    }

    v135 = v132;
    v136 = *(v366[7] + 8 * v375);
    if ((v362 & 0xC000000000000001) != 0)
    {
      v139 = MEMORY[0x1C68F41F0](v136, v362);
      v119 = v385;
      v137 = v131;
      v138 = v135;
      goto LABEL_130;
    }

    v119 = v385;
    if ((v136 & 0x8000000000000000) == 0)
    {
      if (v136 >= *((v362 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_370;
      }

      v137 = v131;
      v138 = v135;
      v139 = *(v362 + 32 + 8 * v136);

LABEL_130:
      v386 = *(v396 + 16);
      v376 = *(v139 + 16);
      v140 = Data._bridgeToObjectiveC()().super.isa;
      String.utf8CString.getter();

      REMeshDefinitionSetCustomAttributeWithData();

      outlined consume of Data._Representation(v137, v138);

LABEL_282:
      outlined destroy of AnyMeshBuffer(&v397);
      v86 = v366;
LABEL_113:
      v118 = v369;
      v114 = v370;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);

  __break(1u);
LABEL_382:

  __break(1u);
  return result;
}