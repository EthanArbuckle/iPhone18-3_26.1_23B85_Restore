uint64_t sub_1AE888998(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE8889B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1AE8889E0()
{
  MEMORY[0x1B270B3B0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1AE888A18()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1AE888A68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1AE888AB0()
{

  return swift_deallocObject();
}

uint64_t sub_1AE888AE8()
{

  return swift_deallocObject();
}

uint64_t sub_1AE888B28()
{

  return swift_deallocObject();
}

uint64_t sub_1AE888B70()
{

  return swift_deallocObject();
}

uint64_t sub_1AE888BA8()
{

  return swift_deallocObject();
}

uint64_t sub_1AE888C18()
{

  return swift_deallocObject();
}

uint64_t sub_1AE888C68()
{
  MEMORY[0x1B270B3B0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1AE888CA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    TupleTypeMetadata = sub_1AE988AD4();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v2)
    {
      v7 = v4 & 0xFFFFFFFFFFFFFFFELL;
      v8 = (&v11 - v6);
      v9 = v2;
      do
      {
        v7 += 8;
        *v8++ = sub_1AE988AD4();
        --v9;
      }

      while (v9);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 8))(v1 + ((*(*(TupleTypeMetadata - 8) + 80) + 40) & ~*(*(TupleTypeMetadata - 8) + 80)));
  return swift_deallocObject();
}

uint64_t sub_1AE888DDC()
{

  return swift_deallocObject();
}

uint64_t sub_1AE888E1C()
{
  MEMORY[0x1B270B3B0](v0 + 16);

  return swift_deallocObject();
}

uint64_t LPLogChannelFetching()
{
  if (LPLogChannelFetching_onceToken != -1)
  {
    LPLogChannelFetching_cold_1();
  }

  return LPLogChannelFetching_log;
}

void __LPLogChannelFetching_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "Fetching");
  v1 = LPLogChannelFetching_log;
  LPLogChannelFetching_log = v0;
}

uint64_t LPLogChannelFilesystem()
{
  if (LPLogChannelFilesystem_onceToken != -1)
  {
    LPLogChannelFilesystem_cold_1();
  }

  return LPLogChannelFilesystem_log;
}

void __LPLogChannelFilesystem_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "Filesystem");
  v1 = LPLogChannelFilesystem_log;
  LPLogChannelFilesystem_log = v0;
}

uint64_t LPLogChannelImage()
{
  if (LPLogChannelImage_onceToken != -1)
  {
    LPLogChannelImage_cold_1();
  }

  return LPLogChannelImage_log;
}

void __LPLogChannelImage_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "Image");
  v1 = LPLogChannelImage_log;
  LPLogChannelImage_log = v0;
}

uint64_t LPLogChannelPlugin()
{
  if (LPLogChannelPlugin_onceToken != -1)
  {
    LPLogChannelPlugin_cold_1();
  }

  return LPLogChannelPlugin_log;
}

void __LPLogChannelPlugin_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "Plugin");
  v1 = LPLogChannelPlugin_log;
  LPLogChannelPlugin_log = v0;
}

uint64_t LPLogChannelSerialization()
{
  if (LPLogChannelSerialization_onceToken != -1)
  {
    LPLogChannelSerialization_cold_1();
  }

  return LPLogChannelSerialization_log;
}

void __LPLogChannelSerialization_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "Serialization");
  v1 = LPLogChannelSerialization_log;
  LPLogChannelSerialization_log = v0;
}

uint64_t LPLogChannelSnapshotGenerator()
{
  if (LPLogChannelSnapshotGenerator_onceToken != -1)
  {
    LPLogChannelSnapshotGenerator_cold_1();
  }

  return LPLogChannelSnapshotGenerator_log;
}

void __LPLogChannelSnapshotGenerator_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "SnapshotGenerator");
  v1 = LPLogChannelSnapshotGenerator_log;
  LPLogChannelSnapshotGenerator_log = v0;
}

uint64_t LPLogChannelTypes()
{
  if (LPLogChannelTypes_onceToken != -1)
  {
    LPLogChannelTypes_cold_1();
  }

  return LPLogChannelTypes_log;
}

void __LPLogChannelTypes_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "Types");
  v1 = LPLogChannelTypes_log;
  LPLogChannelTypes_log = v0;
}

uint64_t LPLogChannelUI()
{
  if (LPLogChannelUI_onceToken != -1)
  {
    LPLogChannelUI_cold_1();
  }

  return LPLogChannelUI_log;
}

void __LPLogChannelUI_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "UI");
  v1 = LPLogChannelUI_log;
  LPLogChannelUI_log = v0;
}

uint64_t LPLogChannelTranscoding()
{
  if (LPLogChannelTranscoding_onceToken != -1)
  {
    LPLogChannelTranscoding_cold_1();
  }

  return LPLogChannelTranscoding_log;
}

void __LPLogChannelTranscoding_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "Transcoding");
  v1 = LPLogChannelTranscoding_log;
  LPLogChannelTranscoding_log = v0;
}

uint64_t LPLogChannelVideo()
{
  if (LPLogChannelVideo_onceToken != -1)
  {
    LPLogChannelVideo_cold_1();
  }

  return LPLogChannelVideo_log;
}

void __LPLogChannelVideo_block_invoke()
{
  v0 = os_log_create("com.apple.LinkPresentation", "Video");
  v1 = LPLogChannelVideo_log;
  LPLogChannelVideo_log = v0;
}

void sub_1AE88A368(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

id linkPresentationBundle()
{
  if (linkPresentationBundle_onceToken != -1)
  {
    linkPresentationBundle_cold_1();
  }

  v1 = linkPresentationBundle_linkPresentationBundle;

  return v1;
}

void __linkPresentationBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = linkPresentationBundle_linkPresentationBundle;
  linkPresentationBundle_linkPresentationBundle = v0;
}

id LPLocalizedString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = linkPresentationBundle();
    v3 = [v2 localizedStringForKey:v1 value:v1 table:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id LPValueForEntitlement(void *a1)
{
  v1 = a1;
  [v1 UTF8String];
  v2 = xpc_copy_entitlement_for_self();
  if (v2)
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1AE88F064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LPStreamingVideoView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE890008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE89094C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, int a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  return result;
}

void OUTLINED_FUNCTION_1(double a1, float a2, uint64_t a3, uint64_t a4, int a5)
{
  *a4 = a2;
  *(a4 + 4) = a5;
  *(a4 + 8) = 2048;
  *(a4 + 10) = a1;
}

void OUTLINED_FUNCTION_2(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 8u);
}

uint64_t objectsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqual:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1AE891C14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE891D40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE891F0C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE89273C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE892FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE893464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1AE8938A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE8940D8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1AE8942E0(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_1AE89452C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1AE894704(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void __asyncImageLoadingSerialRequestQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.LinkPresentation.AsyncImageLoadingRequest", v2);
  v1 = asyncImageLoadingSerialRequestQueue_queue;
  asyncImageLoadingSerialRequestQueue_queue = v0;
}

void __asyncImageLoadingQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.LinkPresentation.AsyncImageLoading", v2);
  v1 = asyncImageLoadingQueue_queue;
  asyncImageLoadingQueue_queue = v0;
}

void __knownApplication_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 bundleIdentifier];

  v1 = 1;
  while (1)
  {
    v2 = [LPApplicationIdentification bundleIdentifiersForKnownApplication:v1];
    v3 = [v4 _lp_isEqualToAnyIgnoringCase:v2];

    if (v3)
    {
      break;
    }

    if (++v1 == 8)
    {
      goto LABEL_6;
    }
  }

  knownApplication_knownApplication = v1;
LABEL_6:
}

void sub_1AE896130(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE8961F0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id truncatedStringAtMaximumMetadataLength(void *a1)
{
  v1 = a1;
  if ([v1 length] > 0x3E8)
  {
    v2 = [v1 substringToIndex:1000];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id truncatedAttributedStringAtLength(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 >= 0x3E8)
  {
    a2 = 1000;
  }

  if ([v3 length] <= a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v4 attributedSubstringFromRange:{0, a2}];
  }

  v6 = v5;

  return v6;
}

id truncatedAttributedStringAtMaximumMetadataLength(void *a1)
{
  v1 = truncatedAttributedStringAtLength(a1, 0x3E8uLL);

  return v1;
}

id URLForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 length])
  {
    v3 = URLFromStringIfHTTPFamily(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id stringForKey(void *a1, void *a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = LPLogChannelSerialization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = objc_opt_class();
      stringForKey_cold_1(v8, v4, v10, v7);
    }
  }

  else if ([v5 length])
  {
    v6 = truncatedStringAtMaximumMetadataLength(v5);
    goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

id numberForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id arrayOfStringsForKey(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKey:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 count])
  {
    if ([v2 count] >= 0xB)
    {
      v3 = [v2 subarrayWithRange:{0, 10}];

      v2 = v3;
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v2;
    v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v10 = 0;
            goto LABEL_16;
          }

          v9 = truncatedStringAtMaximumMetadataLength(v8);
          [v4 addObject:{v9, v12}];
        }

        v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v10 = v4;
LABEL_16:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id URLFromStringIfHTTPFamily(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:a1];
  if ([v1 _lp_isHTTPFamilyURL])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id arrayOfDictionariesForKey(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKey:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 count])
  {
    if ([v2 count] >= 0xB)
    {
      v3 = [v2 subarrayWithRange:{0, 10}];

      v2 = v3;
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = v2;
    v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_15;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v2 = v2;
    v7 = v2;
  }

  else
  {
LABEL_15:
    v7 = 0;
  }

  return v7;
}

void sub_1AE899E00(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = objc_begin_catch(a1);
    v8 = LPLogChannelSerialization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [LPLinkMetadata initWithCoder:];
    }

    objc_end_catch();
    JUMPOUT(0x1AE899D34);
  }

  _Unwind_Resume(a1);
}

id decodeURLForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:v4];
  if ([v3 _lp_coderType] == 1 || (objc_msgSend(v5, "_lp_isHTTPFamilyURL") & 1) != 0 || (objc_msgSend(v5, "_lp_hasAllowedNonHTTPSchemeForMetadataDecoding") & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id decodeStringForKey(void *a1, uint64_t a2)
{
  v2 = [a1 _lp_strictlyDecodeNSStringForKey:a2];
  v3 = truncatedStringAtMaximumMetadataLength(v2);

  return v3;
}

id decodableSpecializationClasses(uint64_t a1)
{
  if (decodableSpecializationClasses_onceToken != -1)
  {
    decodableSpecializationClasses_cold_1();
  }

  v2 = &decodableSpecializationClasses_allSpecializationClasses;
  if (a1 != 1)
  {
    v2 = &decodableSpecializationClasses_decodableSpecializationClassesForGeneralUse;
  }

  v3 = *v2;

  return v3;
}

uint64_t objectsAreEqual_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqual:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1AE89D138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1AE89D1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1AE89D39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1AE89D784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE89ED88(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

id decodeNumberForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

id decodeArrayOfStringsForKey(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [v1 _lp_strictlyDecodeArrayOfObjectsOfClasses:v4 forKey:@"offers"];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = truncatedStringAtMaximumMetadataLength(*(*(&v13 + 1) + 8 * i));
        [v6 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v6;
}

void sub_1AE8AC698(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1AE8AD6D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id decodeAttributedStringForKey(void *a1, uint64_t a2)
{
  v2 = [a1 _lp_strictlyDecodeNSAttributedStringForKey:a2];
  v3 = truncatedAttributedStringAtMaximumMetadataLength(v2);

  return v3;
}

void sub_1AE8B31F0(_Unwind_Exception *a1, int a2)
{
  v6 = v4;

  if (a2 == 1)
  {
    v8 = objc_begin_catch(a1);
    v9 = LPLogChannelSerialization();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LPSharedObjectMetadata initWithCoder:];
    }

    objc_end_catch();
    JUMPOUT(0x1AE8B31B8);
  }

  _Unwind_Resume(a1);
}

Class __getTUConversationActivityClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A35928;
    v9 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LPMetadata.m" lineNumber:41 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("TUConversationActivity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUConversationActivityClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPMetadata.m" lineNumber:42 description:{@"Unable to find class %s", "TUConversationActivity"}];

LABEL_10:
    __break(1u);
  }

  getTUConversationActivityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __SharedWithYouLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SharedWithYouLibraryCore_frameworkLibrary = result;
  return result;
}

void __decodableSpecializationClasses_block_invoke()
{
  v44 = MEMORY[0x1E695DFD8];
  v43 = objc_opt_class();
  v42 = objc_opt_class();
  v41 = objc_opt_class();
  v40 = objc_opt_class();
  v39 = objc_opt_class();
  v38 = objc_opt_class();
  v37 = objc_opt_class();
  v36 = objc_opt_class();
  v35 = objc_opt_class();
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v44 setWithObjects:{v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = decodableSpecializationClasses_allSpecializationClasses;
  decodableSpecializationClasses_allSpecializationClasses = v10;

  v45 = [MEMORY[0x1E695DFA8] setWithSet:decodableSpecializationClasses_allSpecializationClasses];
  v12 = specializationClassesForLocalUseOnly();
  [v45 minusSet:v12];

  v13 = [v45 copy];
  v14 = decodableSpecializationClasses_decodableSpecializationClassesForGeneralUse;
  decodableSpecializationClasses_decodableSpecializationClassesForGeneralUse = v13;
}

id specializationClassesForLocalUseOnly()
{
  if (specializationClassesForLocalUseOnly_onceToken != -1)
  {
    specializationClassesForLocalUseOnly_cold_1();
  }

  v1 = specializationClassesForLocalUseOnly_specializationClassesForLocalUseOnly;

  return v1;
}

void __specializationClassesForLocalUseOnly_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v3 = specializationClassesForLocalUseOnly_specializationClassesForLocalUseOnly;
  specializationClassesForLocalUseOnly_specializationClassesForLocalUseOnly = v2;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1AE8B4B6C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8B4C40(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8B4D14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8B4DE8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8B5998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = LPLinkMetadataStatusTransformer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE8B6C84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sizeFittingInsideSizeMaintainingAspectRatio(double a1, double a2, double a3, double a4)
{
  result = sizeIsEmptyOrInvalid(a1, a2);
  if ((result & 1) == 0)
  {
    return sizeIsEmptyOrInvalid(a3, a4);
  }

  return result;
}

uint64_t sizeIsEmptyOrInvalid(double a1, double a2)
{
  result = 1;
  if (a1 != 0.0 && a2 != 0.0)
  {
    if (CGFloatIsValid())
    {
      return CGFloatIsValid() ^ 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1AE8B9CD4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE8B9F28(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t appIsLTR()
{
  if (+[LPTestingOverrides forceRTL])
  {
    v0 = 0;
  }

  else
  {
    if (appIsLTR_onceToken != -1)
    {
      appIsLTR_cold_1();
    }

    v0 = appIsLTR_isLTR;
  }

  return v0 & 1;
}

void __appIsLTR_block_invoke()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  appIsLTR_isLTR = [v0 userInterfaceLayoutDirection] == 0;
}

void sub_1AE8BBF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LPVisualMediaView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE8BCBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AE8BCDF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE8BE010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id squareImageWithCornerRadius(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7)
{
  v12 = a1;
  v13 = a2;
  if (v12)
  {
    v14 = [v12 platformImage];
    v15 = [v14 _lp_isTemplate];

    if ((v15 & 1) == 0)
    {
      v16 = [v12 platformImage];
      v17 = [v16 _lp_CGImage];

      if (v17)
      {
        CGImageGetWidth(v17);
        CGImageGetHeight(v17);
        v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        v19 = a3 * a6;
        v20 = a4 * a6;
        v21 = CGBitmapContextCreate(0, v19, v20, 8uLL, vcvtd_n_u64_f64(v19, 2uLL), v18, 1u);
        CFRelease(v18);
        if (v21)
        {
          v34.origin.x = 0.0;
          v34.origin.y = 0.0;
          v34.size.width = v19;
          v34.size.height = v20;
          v35 = CGRectInset(v34, a6 * a7, a6 * a7);
          x = v35.origin.x;
          y = v35.origin.y;
          width = v35.size.width;
          height = v35.size.height;
          v26 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:? cornerRadius:?];
          v27 = CFRetain([v26 CGPath]);

          CGContextAddPath(v21, v27);
          CGPathRelease(v27);
          CGContextClip(v21);
          if (v13)
          {
            CGContextSetFillColorWithColor(v21, [v13 CGColor]);
            v36.origin.x = x;
            v36.origin.y = y;
            v36.size.width = width;
            v36.size.height = height;
            CGContextFillRect(v21, v36);
          }

          CGContextDrawImageFromRect();
          Image = CGBitmapContextCreateImage(v21);
          if (Image)
          {
            v29 = [LPImage alloc];
            v30 = [v12 properties];
            v31 = [(LPImage *)v29 _initWithCGImage:Image properties:v30];

            CGImageRelease(Image);
            CGContextRelease(v21);
            goto LABEL_12;
          }

          CGContextRelease(v21);
        }
      }
    }

    v31 = v12;
  }

  else
  {
    v31 = 0;
  }

LABEL_12:

  return v31;
}

id squareFittingImageWithCornerRadius(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  v14 = a2;
  if (v13)
  {
    v15 = [v13 platformImage];
    v16 = [v15 _lp_isTemplate];

    if ((v16 & 1) == 0)
    {
      v17 = [v13 platformImage];
      v18 = [v17 _lp_CGImage];

      if (v18)
      {
        Width = CGImageGetWidth(v18);
        Height = CGImageGetHeight(v18);
        v21 = a3 * a6;
        v22 = a4 * a6;
        v23 = a6 * a7 + a6 * a7;
        v24 = a4 * a6 - v23;
        v25 = Width;
        v26 = Height;
        sizeFittingInsideSizeMaintainingAspectRatio(Width, Height, a3 * a6 - v23, v24);
        v28 = v27;
        v30 = v29;
        v31 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        v32 = CGBitmapContextCreate(0, v21, v22, 8uLL, vcvtd_n_u64_f64(v21, 2uLL), v31, 1u);
        CFRelease(v31);
        if (v32)
        {
          v33 = a5 * a6;
          if (v14)
          {
            v34 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v21, v22, v33}];
            v35 = CFRetain([v34 CGPath]);

            CGContextSetFillColorWithColor(v32, [v14 CGColor]);
            CGContextAddPath(v32, v35);
            CGPathRelease(v35);
            CGContextFillPath(v32);
          }

          v36 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:vabdd_f64(v28 cornerRadius:{v21) * 0.5, vabdd_f64(v30, v22) * 0.5, v28, v30, v33}];
          v37 = CFRetain([v36 CGPath]);

          CGContextAddPath(v32, v37);
          CGContextClip(v32);
          CGContextDrawImageFromRect();
          if (v25 != v26)
          {
            CGContextAddPath(v32, v37);
            CGContextSetLineWidth(v32, 2.0);
            v38 = [MEMORY[0x1E69DC888] blackColor];
            v39 = [v38 colorWithAlphaComponent:0.3];
            CGContextSetStrokeColorWithColor(v32, [v39 CGColor]);

            CGContextStrokePath(v32);
          }

          CGContextResetClip(v32);
          CGPathRelease(v37);
          Image = CGBitmapContextCreateImage(v32);
          if (Image)
          {
            v41 = [LPImage alloc];
            v42 = [v13 properties];
            v43 = [(LPImage *)v41 _initWithCGImage:Image properties:v42];

            CGImageRelease(Image);
            CGContextRelease(v32);
            goto LABEL_14;
          }

          CGContextRelease(v32);
        }
      }
    }

    v43 = v13;
  }

  else
  {
    v43 = 0;
  }

LABEL_14:

  return v43;
}

id squareBitmapImageWithInlaidImage(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 platformImage];
    v10 = [v9 _lp_CGImage];

    if (v10)
    {
      Width = CGImageGetWidth(v10);
      Height = CGImageGetHeight(v10);
      sizeFittingInsideSizeMaintainingAspectRatio(Width, Height, a2 * a4, a3 * a4);
      v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v14 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, vcvtd_n_u64_f64(a2 * a4, 2uLL), v13, 1u);
      CFRelease(v13);
      if (v14)
      {
        CGContextDrawImageFromRect();
        Image = CGBitmapContextCreateImage(v14);
        if (Image)
        {
          v16 = [LPImage alloc];
          v17 = [v8 properties];
          v18 = [(LPImage *)v16 _initWithCGImage:Image properties:v17];

          CGImageRelease(Image);
          CGContextRelease(v14);
          goto LABEL_9;
        }

        CGContextRelease(v14);
      }
    }

    v18 = v8;
  }

  else
  {
    v18 = 0;
  }

LABEL_9:

  return v18;
}

id appIconImage(void *a1, double a2, double a3, double a4)
{
  v4 = appIconImageForShape(a1, 1, a2, a3, a4);

  return v4;
}

id appIconImageForShape(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = [v9 platformImage];
  v11 = [v10 _lp_CGImage];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69A8A00]);
    v13 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:v11 scale:a5];
    v25[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v15 = [v12 initWithImages:v14];

    v16 = objc_alloc_init(MEMORY[0x1E69A8A30]);
    [v9 _pixelSize];
    sizeFittingInsideSizeMaintainingAspectRatio(v17, v18, a3, a4);
    [v16 setSize:?];
    [v16 setScale:a5];
    [v16 setShape:a2];
    v19 = [v15 prepareImageForDescriptor:v16];
    v20 = [v19 CGImage];
    v21 = [LPImage alloc];
    v22 = [v9 properties];
    v23 = [(LPImage *)v21 _initWithCGImage:v20 properties:v22];
  }

  else
  {
    v23 = v9;
  }

  return v23;
}

id watchAppIconImage(void *a1, double a2, double a3, double a4)
{
  v4 = appIconImageForShape(a1, 2, a2, a3, a4);

  return v4;
}

id messagesAppIconImage(void *a1, double a2, double a3, double a4)
{
  v4 = appIconImageForShape(a1, 4, a2, a3, a4);

  return v4;
}

id appClipIconImage(void *a1, double a2, double a3, double a4)
{
  v4 = appIconImageForShape(a1, 5, a2, a3, a4);

  return v4;
}

LPImage *flatImageWithColor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [LPImage alloc];
    v6 = [v3 platformImage];
    v7 = [v6 _flatImageWithColor:v4];
    v8 = [(LPImage *)v5 initWithPlatformImage:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id mapsBackgroundImage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 platformImage];
    v4 = [v3 _lp_CGImage];

    if (v4 && (Width = CGImageGetWidth(v4), Height = CGImageGetHeight(v4), v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]), v8 = Width, v9 = Height, v10 = CGBitmapContextCreate(0, Width, Height, 8uLL, vcvtd_n_u64_f64(Width, 2uLL), v7, 1u), CFRelease(v7), v10))
    {
      v11 = *(MEMORY[0x1E695EFD0] + 16);
      *&v25.a = *MEMORY[0x1E695EFD0];
      *&v25.c = v11;
      *&v25.tx = *(MEMORY[0x1E695EFD0] + 32);
      memset(&v26, 0, sizeof(v26));
      CGAffineTransformTranslate(&v26, &v25, 0.0, v9);
      v24 = v26;
      memset(&v25, 0, sizeof(v25));
      CGAffineTransformScale(&v25, &v24, 1.0, -1.0);
      v12 = [MEMORY[0x1E695F658] imageWithCGImage:v4];
      v24 = v25;
      v13 = [v12 imageByApplyingTransform:&v24];
      v14 = [MEMORY[0x1E695F648] gaussianBlurFilter];
      [v14 setInputImage:v13];
      LODWORD(v15) = 1120403456;
      [v14 setRadius:v15];
      v16 = [MEMORY[0x1E695F620] contextWithOptions:0];
      v17 = [v14 outputImage];
      v18 = [v16 createCGImage:v17 fromRect:{0.0, 0.0, v8, v9}];

      v28.origin.x = 0.0;
      v28.origin.y = 0.0;
      v28.size.width = v8;
      v28.size.height = v9;
      CGContextDrawImage(v10, v28, v18);
      CGImageRelease(v18);
      Image = CGBitmapContextCreateImage(v10);
      if (Image)
      {
        v20 = [LPImage alloc];
        v21 = [v2 properties];
        v22 = [(LPImage *)v20 _initWithCGImage:Image properties:v21];

        CGImageRelease(Image);
        CGContextRelease(v10);
      }

      else
      {
        CGContextRelease(v10);
        v22 = v2;
      }
    }

    else
    {
      v22 = v2;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id lyricBackgroundImage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 platformImage];
    v4 = [v3 _lp_CGImage];

    if (v4 && (Width = CGImageGetWidth(v4), Height = CGImageGetHeight(v4), v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]), v8 = CGBitmapContextCreate(0, 0x384uLL, 0x384uLL, 8uLL, 0xE10uLL, v7, 1u), CFRelease(v7), v8))
    {
      v9 = [MEMORY[0x1E695F658] imageWithCGImage:v4];
      v10 = fmax(900.0 / Width, 900.0 / Height);
      CGAffineTransformMakeScale(&v37, v10, v10);
      v11 = [v9 imageByApplyingTransform:&v37];

      CGAffineTransformMakeTranslation(&v37, 450.0, 450.0);
      CGAffineTransformRotate(&v36, &v37, -2.09);
      CGAffineTransformScale(&v37, &v36, 3.88, 3.88);
      CGAffineTransformTranslate(&v36, &v37, -450.0, -450.0);
      CGAffineTransformTranslate(&v37, &v36, -150.0, 100.0);
      v34 = v11;
      v12 = [v11 imageByApplyingTransform:&v37];
      CGAffineTransformMakeTranslation(&v37, 450.0, 450.0);
      CGAffineTransformRotate(&v36, &v37, 0.84);
      CGAffineTransformScale(&v37, &v36, 2.0, 2.0);
      CGAffineTransformTranslate(&v36, &v37, -450.0, -450.0);
      CGAffineTransformTranslate(&v37, &v36, 450.0, 0.0);
      v33 = v12;
      v32 = [v11 imageByApplyingTransform:&v37];
      v31 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
      v13 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
      [v31 setValue:v13 forKey:@"inputColor"];

      v14 = [v32 imageByCompositingOverImage:v12];
      v15 = [v31 outputImage];
      v35 = [v14 imageByCompositingOverImage:v15];

      v16 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
      v17 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
      [v16 setValue:v17 forKey:@"inputColor"];

      v18 = [v16 outputImage];
      v19 = [v18 imageByCompositingOverImage:v35];

      v20 = [MEMORY[0x1E695F648] filterWithName:@"CIColorControls"];
      [v20 setValue:v19 forKey:@"inputImage"];
      [v20 setValue:&unk_1F2483D78 forKey:@"inputSaturation"];
      v21 = [MEMORY[0x1E695F648] filterWithName:@"CIGaussianBlur"];
      v22 = [v20 outputImage];
      [v21 setValue:v22 forKey:@"inputImage"];

      [v21 setValue:&unk_1F2483458 forKey:@"inputRadius"];
      v23 = [MEMORY[0x1E695F620] contextWithOptions:0];
      v24 = [v21 outputImage];
      v25 = [v23 createCGImage:v24 fromRect:{0.0, 0.0, 900.0, 900.0}];

      v39.origin.x = 0.0;
      v39.origin.y = 0.0;
      v39.size.width = 900.0;
      v39.size.height = 900.0;
      CGContextDrawImage(v8, v39, v25);
      CGImageRelease(v25);
      Image = CGBitmapContextCreateImage(v8);
      if (Image)
      {
        v27 = [LPImage alloc];
        v28 = [v2 properties];
        v29 = [(LPImage *)v27 _initWithCGImage:Image properties:v28];

        CGImageRelease(Image);
        CGContextRelease(v8);
      }

      else
      {
        CGContextRelease(v8);
        v29 = v2;
      }
    }

    else
    {
      v29 = v2;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

id bookCoverImage(void *a1, int a2, int a3, double a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v43 = a1;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2050000000;
  v7 = getBCUImageRenderContextClass_softClass;
  v58 = getBCUImageRenderContextClass_softClass;
  if (!getBCUImageRenderContextClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBCUImageRenderContextClass_block_invoke;
    v60 = &unk_1E7A35518;
    v61 = &v55;
    __getBCUImageRenderContextClass_block_invoke(buf);
    v7 = v56[3];
  }

  v8 = v7;
  _Block_object_dispose(&v55, 8);
  v44 = [[v7 alloc] initWithMode:1];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v12 = getBCUCoverEffectsFilterInfoCoverEffectStyleKeySymbolLoc_ptr;
  v58 = getBCUCoverEffectsFilterInfoCoverEffectStyleKeySymbolLoc_ptr;
  if (!getBCUCoverEffectsFilterInfoCoverEffectStyleKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBCUCoverEffectsFilterInfoCoverEffectStyleKeySymbolLoc_block_invoke;
    v60 = &unk_1E7A35518;
    v61 = &v55;
    v13 = BookCoverUtilityLibrary();
    v14 = dlsym(v13, "BCUCoverEffectsFilterInfoCoverEffectStyleKey");
    *(v61[1] + 24) = v14;
    getBCUCoverEffectsFilterInfoCoverEffectStyleKeySymbolLoc_ptr = *(v61[1] + 24);
    v12 = v56[3];
  }

  _Block_object_dispose(&v55, 8);
  if (!v12)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBCUCoverEffectsFilterInfoCoverEffectStyleKey(void)"];
    [v37 handleFailureInFunction:v38 file:@"LPImageFilters.m" lineNumber:34 description:{@"%s", dlerror()}];

    goto LABEL_23;
  }

  [v9 setObject:v11 forKey:*v12];

  if (a3)
  {
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v15 = getBCUCoverEffectsFilterInfoContentRTLKeySymbolLoc_ptr;
    v58 = getBCUCoverEffectsFilterInfoContentRTLKeySymbolLoc_ptr;
    if (!getBCUCoverEffectsFilterInfoContentRTLKeySymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getBCUCoverEffectsFilterInfoContentRTLKeySymbolLoc_block_invoke;
      v60 = &unk_1E7A35518;
      v61 = &v55;
      v16 = BookCoverUtilityLibrary();
      v17 = dlsym(v16, "BCUCoverEffectsFilterInfoContentRTLKey");
      *(v61[1] + 24) = v17;
      getBCUCoverEffectsFilterInfoContentRTLKeySymbolLoc_ptr = *(v61[1] + 24);
      v15 = v56[3];
    }

    _Block_object_dispose(&v55, 8);
    if (!v15)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBCUCoverEffectsFilterInfoContentRTLKey(void)"];
      [v41 handleFailureInFunction:v42 file:@"LPImageFilters.m" lineNumber:36 description:{@"%s", dlerror()}];

LABEL_23:
      __break(1u);
    }

    [v9 setValue:MEMORY[0x1E695E118] forKey:*v15];
  }

  v18 = [LPImage alloc];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __bookCoverImage_block_invoke;
  v50[3] = &unk_1E7A35AD8;
  v19 = v44;
  v51 = v19;
  v20 = v43;
  v52 = v20;
  v21 = v9;
  v53 = v21;
  v54 = a4;
  v22 = [v20 properties];
  v23 = [(LPImage *)v18 _initWithPlatformImageGenerator:v50 properties:v22];

  v24 = [v21 mutableCopy];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v25 = getBCUCoverEffectsFilterInfoAlternativeAppearanceKeySymbolLoc_ptr;
  v58 = getBCUCoverEffectsFilterInfoAlternativeAppearanceKeySymbolLoc_ptr;
  if (!getBCUCoverEffectsFilterInfoAlternativeAppearanceKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBCUCoverEffectsFilterInfoAlternativeAppearanceKeySymbolLoc_block_invoke;
    v60 = &unk_1E7A35518;
    v61 = &v55;
    v26 = BookCoverUtilityLibrary();
    v27 = dlsym(v26, "BCUCoverEffectsFilterInfoAlternativeAppearanceKey");
    *(v61[1] + 24) = v27;
    getBCUCoverEffectsFilterInfoAlternativeAppearanceKeySymbolLoc_ptr = *(v61[1] + 24);
    v25 = v56[3];
  }

  _Block_object_dispose(&v55, 8);
  if (!v25)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBCUCoverEffectsFilterInfoAlternativeAppearanceKey(void)"];
    [v39 handleFailureInFunction:v40 file:@"LPImageFilters.m" lineNumber:35 description:{@"%s", dlerror()}];

    goto LABEL_23;
  }

  [v24 setValue:MEMORY[0x1E695E118] forKey:*v25];
  v28 = [LPImage alloc];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __bookCoverImage_block_invoke_3;
  v45[3] = &unk_1E7A35AD8;
  v29 = v19;
  v46 = v29;
  v30 = v20;
  v47 = v30;
  v31 = v24;
  v48 = v31;
  v49 = a4;
  v32 = [v30 properties];
  v33 = [(LPImage *)v28 _initWithPlatformImageGenerator:v45 properties:v32];

  v34 = LPLogChannelImage();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = v33;
    _os_log_impl(&dword_1AE886000, v34, OS_LOG_TYPE_INFO, "LPImage<%p, %p>: created async LPImages for book cover", buf, 0x16u);
  }

  [v23 _setDarkInterfaceAlternativeImage:v33];
  v35 = v23;

  return v23;
}

void sub_1AE8C3508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

void __bookCoverImage_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) platformImage];
  v6 = [v5 _lp_CGImage];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __bookCoverImage_block_invoke_2;
  v10[3] = &unk_1E7A35AB0;
  v9 = v3;
  v12 = v9;
  v11 = *(a1 + 40);
  [v4 filteredImageFromImage:v6 filterInfo:v7 size:1 contentsScale:0 waitForCPUSynchronization:v10 logKey:300.0 completion:{1.79769313e308, v8}];
}

void __bookCoverImage_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:a2];
  }

  else
  {
    [*(a1 + 32) platformImage];
  }
  v3 = ;
  (*(v2 + 16))(v2);
}

void __bookCoverImage_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) platformImage];
  v6 = [v5 _lp_CGImage];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __bookCoverImage_block_invoke_4;
  v10[3] = &unk_1E7A35AB0;
  v9 = v3;
  v12 = v9;
  v11 = *(a1 + 40);
  [v4 filteredImageFromImage:v6 filterInfo:v7 size:1 contentsScale:0 waitForCPUSynchronization:v10 logKey:300.0 completion:{1.79769313e308, v8}];
}

void __bookCoverImage_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    [MEMORY[0x1E69DCAB8] _lp_createImageWithCGImage:a2];
  }

  else
  {
    [*(a1 + 32) platformImage];
  }
  v3 = ;
  (*(v2 + 16))(v2);
}

id fitImageInSizeSync(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 MIMEType];
    v8 = [LPMIMETypeRegistry isLosslessImageType:v7];

    v9 = [v6 platformImage];
    v10 = [v9 _lp_CGImage];

    if (v10)
    {
      Width = CGImageGetWidth(v10);
      Height = CGImageGetHeight(v10);
      if (a2 < Width || a3 < Height)
      {
        sizeFittingInsideSizeMaintainingAspectRatio(Width, Height, a2, a3);
        v15 = v14;
        v17 = v16;
        ColorSpace = CGImageGetColorSpace(v10);
        CFRetain(ColorSpace);
        if (!CGColorSpaceSupportsOutput(ColorSpace))
        {
          CFRelease(ColorSpace);
          ColorSpace = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        }

        v19 = CGBitmapContextCreate(0, v15, v17, 8uLL, vcvtd_n_u64_f64(v15, 2uLL), ColorSpace, 1u);
        CFRelease(ColorSpace);
        if (v19)
        {
          CGContextSetInterpolationQuality(v19, kCGInterpolationHigh);
          v26.origin.x = 0.0;
          v26.origin.y = 0.0;
          v26.size.width = v15;
          v26.size.height = v17;
          CGContextDrawImage(v19, v26, v10);
          Image = CGBitmapContextCreateImage(v19);
          if (Image)
          {
            v21 = [LPImage alloc];
            v22 = [v6 properties];
            v23 = [(LPImage *)v21 _initWithCGImage:Image properties:v22];

            [v23 set_useLossyCompressionForEncodedData:!v8];
            CGImageRelease(Image);
            CGContextRelease(v19);
            goto LABEL_16;
          }

          CGContextRelease(v19);
        }
      }
    }

    v23 = v6;
  }

  else
  {
    v23 = 0;
  }

LABEL_16:

  return v23;
}

void fitImageInSize(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if (v8)
  {
    if (imageFilteringQueue_onceToken != -1)
    {
      fitImageInSize_cold_1();
    }

    v9 = imageFilteringQueue_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __fitImageInSize_block_invoke;
    v10[3] = &unk_1E7A35B00;
    v11 = v7;
    v13 = a3;
    v14 = a4;
    v12 = v8;
    dispatch_async(v9, v10);
  }
}

void __fitImageInSize_block_invoke(uint64_t a1)
{
  v2 = fitImageInSizeSync(*(a1 + 32), *(a1 + 48), *(a1 + 56));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __fitImageInSize_block_invoke_2;
  v5[3] = &unk_1E7A35428;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void fitImagesInSize(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if ([v7 count])
  {
    v16 = v8;
    v9 = dispatch_group_create();
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i < [v7 count]; ++i)
    {
      dispatch_group_enter(v9);
      v12 = v10;
      objc_sync_enter(v12);
      v13 = [MEMORY[0x1E695DFB0] null];
      [v12 addObject:v13];

      objc_sync_exit(v12);
      v14 = [v7 objectAtIndexedSubscript:i];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __fitImagesInSize_block_invoke;
      v20[3] = &unk_1E7A35B28;
      v21 = v12;
      v23 = i;
      v22 = v9;
      fitImageInSize(v14, v20, a3, a4);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fitImagesInSize_block_invoke_2;
    block[3] = &unk_1E7A35428;
    v8 = v16;
    v18 = v10;
    v19 = v16;
    v15 = v10;
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(v8 + 2))(v8, v7);
  }
}

void __fitImagesInSize_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  objc_sync_enter(v4);
  [*(a1 + 32) replaceObjectAtIndex:*(a1 + 48) withObject:v5];

  objc_sync_exit(v4);
  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_1AE8C41B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void __getBCUImageRenderContextClass_block_invoke(uint64_t a1)
{
  BookCoverUtilityLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BCUImageRenderContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBCUImageRenderContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBCUImageRenderContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPImageFilters.m" lineNumber:33 description:{@"Unable to find class %s", "BCUImageRenderContext"}];

    __break(1u);
  }
}

void *BookCoverUtilityLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BookCoverUtilityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BookCoverUtilityLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A35B48;
    v6 = 0;
    BookCoverUtilityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BookCoverUtilityLibraryCore_frameworkLibrary;
  if (!BookCoverUtilityLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BookCoverUtilityLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LPImageFilters.m" lineNumber:32 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __BookCoverUtilityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BookCoverUtilityLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBCUCoverEffectsFilterInfoCoverEffectStyleKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BookCoverUtilityLibrary();
  result = dlsym(v2, "BCUCoverEffectsFilterInfoCoverEffectStyleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBCUCoverEffectsFilterInfoCoverEffectStyleKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBCUCoverEffectsFilterInfoContentRTLKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BookCoverUtilityLibrary();
  result = dlsym(v2, "BCUCoverEffectsFilterInfoContentRTLKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBCUCoverEffectsFilterInfoContentRTLKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBCUCoverEffectsFilterInfoAlternativeAppearanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BookCoverUtilityLibrary();
  result = dlsym(v2, "BCUCoverEffectsFilterInfoAlternativeAppearanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBCUCoverEffectsFilterInfoAlternativeAppearanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __imageFilteringQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.LinkPresentation.ImageFiltering", v2);
  v1 = imageFilteringQueue_queue;
  imageFilteringQueue_queue = v0;
}

void sub_1AE8C4DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

Class __getSFPasswordManagerURLClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!SafariFoundationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __SafariFoundationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A35B60;
    v9 = 0;
    SafariFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariFoundationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LPPasswordsInviteTransformers.m" lineNumber:24 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SFPasswordManagerURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFPasswordManagerURLClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPPasswordsInviteTransformers.m" lineNumber:25 description:{@"Unable to find class %s", "SFPasswordManagerURL"}];

LABEL_10:
    __break(1u);
  }

  getSFPasswordManagerURLClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SafariFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AE8C5234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1AE8C5470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE8C58B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1AE8C5F20(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE8C5FEC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE8C620C(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8C6474(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8C65A8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___ZL20get_MKURLParserClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_MKURLParser");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_MKURLParserClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_MKURLParserClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:35 description:{@"Unable to find class %s", "_MKURLParser"}];

    __break(1u);
  }
}

void MapKitLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MapKitLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL17MapKitLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A35BF0;
    v5 = 0;
    MapKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!MapKitLibraryCore(char **)::frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MapKitLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:25 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t ___ZL17MapKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  MapKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL36getMKLinkPreviewMetadataRequestClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLinkPreviewMetadataRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLinkPreviewMetadataRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLinkPreviewMetadataRequestClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:26 description:{@"Unable to find class %s", "MKLinkPreviewMetadataRequest"}];

    __break(1u);
  }
}

void ___ZL39getMKLinkPreviewDirectionsMetadataClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLinkPreviewDirectionsMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLinkPreviewDirectionsMetadataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLinkPreviewDirectionsMetadataClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:32 description:{@"Unable to find class %s", "MKLinkPreviewDirectionsMetadata"}];

    __break(1u);
  }
}

void ___ZL38getMKLinkPreviewPublisherMetadataClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLinkPreviewPublisherMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLinkPreviewPublisherMetadataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLinkPreviewPublisherMetadataClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:34 description:{@"Unable to find class %s", "MKLinkPreviewPublisherMetadata"}];

    __break(1u);
  }
}

void ___ZL36getMKLinkPreviewSnapshotRequestClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLinkPreviewSnapshotRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLinkPreviewSnapshotRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLinkPreviewSnapshotRequestClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:27 description:{@"Unable to find class %s", "MKLinkPreviewSnapshotRequest"}];

    __break(1u);
  }
}

void ___ZL34getMKLinkPreviewFrameMetadataClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLinkPreviewFrameMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLinkPreviewFrameMetadataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLinkPreviewFrameMetadataClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:28 description:{@"Unable to find class %s", "MKLinkPreviewFrameMetadata"}];

    __break(1u);
  }
}

void ___ZL35getMKLinkPreviewSearchMetadataClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLinkPreviewSearchMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLinkPreviewSearchMetadataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLinkPreviewSearchMetadataClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:29 description:{@"Unable to find class %s", "MKLinkPreviewSearchMetadata"}];

    __break(1u);
  }
}

void ___ZL34getMKLinkPreviewPlaceMetadataClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLinkPreviewPlaceMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLinkPreviewPlaceMetadataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLinkPreviewPlaceMetadataClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:30 description:{@"Unable to find class %s", "MKLinkPreviewPlaceMetadata"}];

    __break(1u);
  }
}

void ___ZL39getMKLinkPreviewLookAroundMetadataClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLinkPreviewLookAroundMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLinkPreviewLookAroundMetadataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLinkPreviewLookAroundMetadataClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:31 description:{@"Unable to find class %s", "MKLinkPreviewLookAroundMetadata"}];

    __break(1u);
  }
}

void ___ZL35getMKLinkPreviewGuidesMetadataClassv_block_invoke(uint64_t a1)
{
  MapKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLinkPreviewGuidesMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLinkPreviewGuidesMetadataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKLinkPreviewGuidesMetadataClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAppleMapsMetadataProviderSpecialization.mm" lineNumber:33 description:{@"Unable to find class %s", "MKLinkPreviewGuidesMetadata"}];

    __break(1u);
  }
}

void sub_1AE8C7BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __getCPSClipURLClass_block_invoke(uint64_t a1)
{
  ClipServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSClipURL");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCPSClipURLClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCPSClipURLClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAssociatedApplicationMetadataFetcher.m" lineNumber:18 description:{@"Unable to find class %s", "CPSClipURL"}];

    __break(1u);
  }
}

void ClipServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ClipServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ClipServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A35C80;
    v5 = 0;
    ClipServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ClipServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ClipServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"LPAssociatedApplicationMetadataFetcher.m" lineNumber:16 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ClipServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ClipServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getCPSClipMetadataRequestClass_block_invoke(uint64_t a1)
{
  ClipServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSClipMetadataRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCPSClipMetadataRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCPSClipMetadataRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPAssociatedApplicationMetadataFetcher.m" lineNumber:17 description:{@"Unable to find class %s", "CPSClipMetadataRequest"}];

    __break(1u);
  }
}

id storefrontIdentifierFromURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [[LPiTunesMediaURLComponents alloc] initWithURL:v1];
    v3 = v2;
    if (v2)
    {
      v4 = [(LPiTunesMediaURLComponents *)v2 storefrontCountryCode];
      v5 = [LPiTunesMediaStorefrontMappings storefrontIdentifierFromCountryCode:v4];

      if (v5)
      {
        v6 = v5;
      }
    }

    else
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v7 = getMPStoreLyricsSnippetURLComponentsClass_softClass;
      v18 = getMPStoreLyricsSnippetURLComponentsClass_softClass;
      if (!getMPStoreLyricsSnippetURLComponentsClass_softClass)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __getMPStoreLyricsSnippetURLComponentsClass_block_invoke;
        v14[3] = &unk_1E7A35518;
        v14[4] = &v15;
        __getMPStoreLyricsSnippetURLComponentsClass_block_invoke(v14);
        v7 = v16[3];
      }

      v8 = v7;
      _Block_object_dispose(&v15, 8);
      v9 = [[v7 alloc] initWithURL:v1];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 countryCode];
        v12 = [LPiTunesMediaStorefrontMappings storefrontIdentifierFromCountryCode:v11];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1AE8C94FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void populateCaptionBar(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v28 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [v28 captionBar];
  v16 = [v14 _rowConfigurationForStyle:{objc_msgSend(v28, "style")}];
  if ((v16 - 2) < 2)
  {
    v21 = [v15 top];
    v22 = [v21 leading];
    [v22 setText:v11];

    v23 = [v15 bottom];
    v24 = [v23 leading];
    [v24 setText:v12];

    v19 = [v15 belowBottom];
    v20 = [v19 leading];
    [v20 setText:v13];
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_14;
    }

    v17 = [v15 top];
    v18 = [v17 leading];
    [v18 setText:v11];

    if ([v14 effectiveSizeClass] == 2)
    {
      v19 = [v15 bottom];
      v20 = [v19 leading];
      [v20 setText:v12];
    }

    else
    {
      v19 = joinedBySpace(v12, v13);
      v20 = [v15 bottom];
      v27 = [v20 leading];
      [v27 setText:v19];
    }

    goto LABEL_12;
  }

  v19 = v11;
  if (a5)
  {
    v19 = joinedByEmDash(v11, v12);
  }

  v25 = [v15 top];
  v26 = [v25 leading];
  [v26 setText:v19];

  if (a5)
  {
    goto LABEL_13;
  }

LABEL_14:
}

id appleMusicWordmark(void *a1)
{
  v1 = a1;
  v2 = [v1 canonicalURL];
  v3 = [LPPresentationSpecializations isAppleMusicClassicalURL:v2];

  if (v3)
  {
    v4 = @" Music Classical";
  }

  else
  {
    v4 = @" Music";
  }

  v5 = LPLocalizedString(v4);

  return v5;
}

void sub_1AE8CA200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id emphasizedPreferredFontForTextStyle(uint64_t a1)
{
  v1 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a1];
  v2 = [v1 fontDescriptorWithSymbolicTraits:{objc_msgSend(v1, "symbolicTraits") | 2}];

  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

void sub_1AE8CA8FC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id subscribeToAppleMusicStatus(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = LPLocalizedString(@"Subscribe to <link>Apple Music</link>");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1AE8CAAD8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id replaceScheme(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v3 resolvingAgainstBaseURL:0];
  [v5 setScheme:v4];
  v6 = [v5 URL];

  return v6;
}

void sub_1AE8CC960(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE8CD4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1AE8CDE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1AE8CE634(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE8CEA00(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __getMPStoreLyricsSnippetURLComponentsClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPStoreLyricsSnippetURLComponents");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPStoreLyricsSnippetURLComponentsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPStoreLyricsSnippetURLComponentsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPiTunesMediaTransformers.m" lineNumber:38 description:{@"Unable to find class %s", "MPStoreLyricsSnippetURLComponents"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A35D80;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LPiTunesMediaTransformers.m" lineNumber:37 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPiTunesMediaTransformers.m" lineNumber:45 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPiTunesMediaTransformers.m" lineNumber:44 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void *__getMPMediaItemPropertyStorePlaylistIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyStorePlaylistID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyStorePlaylistIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

LPiTunesMediaAsset *mediaAsset(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a5;
  v14 = a6;
  v15 = [[LPiTunesMediaLookupItemArtwork alloc] initWithDictionary:v11];
  v16 = [(LPiTunesMediaLookupItemArtwork *)v15 URLWithHeight:a3 width:a4 cropStyle:v13 format:v14];
  if (v16)
  {
    v17 = [LPiTunesMediaAsset alloc];
    v18 = [(LPiTunesMediaLookupItemArtwork *)v15 colors];
    v19 = [(LPiTunesMediaAsset *)v17 initWithImageURL:v16 colors:v18 name:v12];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_1AE8D749C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

Class __getMPStoreLyricsSnippetURLComponentsClass_block_invoke_0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_0)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __MediaPlayerLibraryCore_block_invoke_0;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A36018;
    v9 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LPiTunesMediaMetadataProviderSpecialization.m" lineNumber:28 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MPStoreLyricsSnippetURLComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPStoreLyricsSnippetURLComponentsClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPiTunesMediaMetadataProviderSpecialization.m" lineNumber:29 description:{@"Unable to find class %s", "MPStoreLyricsSnippetURLComponents"}];

LABEL_10:
    __break(1u);
  }

  getMPStoreLyricsSnippetURLComponentsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id cloudServiceControllerQueue()
{
  if (cloudServiceControllerQueue_onceToken != -1)
  {
    cloudServiceControllerQueue_cold_1();
  }

  v1 = cloudServiceControllerQueue_queue;

  return v1;
}

void sub_1AE8D7DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1AE8D8038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __cloudServiceControllerQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.LinkPresentation.iTunesStoreInformation", v2);
  v1 = cloudServiceControllerQueue_queue;
  cloudServiceControllerQueue_queue = v0;
}

void __getSKCloudServiceControllerClass_block_invoke(uint64_t a1)
{
  StoreKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SKCloudServiceController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKCloudServiceControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSKCloudServiceControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPiTunesStoreInformation.m" lineNumber:17 description:{@"Unable to find class %s", "SKCloudServiceController"}];

    __break(1u);
  }
}

void *StoreKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __StoreKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A360A8;
    v6 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = StoreKitLibraryCore_frameworkLibrary;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *StoreKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LPiTunesStoreInformation.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __StoreKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSKStorefrontIdentifierDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreKitLibrary();
  result = dlsym(v2, "SKStorefrontIdentifierDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKStorefrontIdentifierDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSKCloudServiceCapabilitiesDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreKitLibrary();
  result = dlsym(v2, "SKCloudServiceCapabilitiesDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKCloudServiceCapabilitiesDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE8D9FE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t hasAssetWithFlavorContainingCaseInsensitiveString(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = [a1 objectForKeyedSubscript:@"assets"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v12;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 objectForKeyedSubscript:@"flavor"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 rangeOfString:v3 options:1] != 0x7FFFFFFFFFFFFFFFLL)
            {

              v10 = 1;
              goto LABEL_17;
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_17:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1AE8DB614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1AE8DC924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1AE8DD0C0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8E0D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

Class __getMPStoreLyricsSnippetRequestClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_1)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __MediaPlayerLibraryCore_block_invoke_1;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A36338;
    v9 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LPiTunesMediaUnresolvedMetadata.m" lineNumber:28 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MPStoreLyricsSnippetRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPStoreLyricsSnippetRequestClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPiTunesMediaUnresolvedMetadata.m" lineNumber:29 description:{@"Unable to find class %s", "MPStoreLyricsSnippetRequest"}];

LABEL_10:
    __break(1u);
  }

  getMPStoreLyricsSnippetRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_1AE8E1DAC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 96), 8);

  _Unwind_Resume(a1);
}

id sharedLibraryLog()
{
  if (sharedLibraryLog_predicate != -1)
  {
    sharedLibraryLog_cold_1();
  }

  v1 = sharedLibraryLog_log;

  return v1;
}

id getPHPhotoLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHPhotoLibraryClass_softClass;
  v7 = getPHPhotoLibraryClass_softClass;
  if (!getPHPhotoLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPHPhotoLibraryClass_block_invoke;
    v3[3] = &unk_1E7A35518;
    v3[4] = &v4;
    __getPHPhotoLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE8E1F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE8E22A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __sharedLibraryLog_block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "SharedLibrary");
  v1 = sharedLibraryLog_log;
  sharedLibraryLog_log = v0;
}

void __getPHPhotoLibraryClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPhotoLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHPhotoLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization.m" lineNumber:21 description:{@"Unable to find class %s", "PHPhotoLibrary"}];

    __break(1u);
  }
}

void PhotosLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotosLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A363C8;
    v5 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization.m" lineNumber:19 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotosLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

void __getPHLibraryScopeClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHLibraryScope");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHLibraryScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHLibraryScopeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization.m" lineNumber:20 description:{@"Unable to find class %s", "PHLibraryScope"}];

    __break(1u);
  }
}

void __getPHShareParticipantClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHShareParticipant");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHShareParticipantClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHShareParticipantClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization.m" lineNumber:22 description:{@"Unable to find class %s", "PHShareParticipant"}];

    __break(1u);
  }
}

void __knownUnavailableMediaMIMETypes_block_invoke()
{
  v0 = knownUnavailableMediaMIMETypes_types;
  knownUnavailableMediaMIMETypes_types = &unk_1F2483938;
}

void __knownAvailableMediaMIMETypes_block_invoke()
{
  v0 = knownAvailableMediaMIMETypes_types;
  knownAvailableMediaMIMETypes_types = &unk_1F2483950;
}

void __avFoundationMIMETypes_block_invoke()
{
  v2 = [MEMORY[0x1E6988168] audiovisualMIMETypes];
  v0 = [v2 copy];
  v1 = avFoundationMIMETypes_types;
  avFoundationMIMETypes_types = v0;
}

void sub_1AE8E3F48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE8E41E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = LPMetadataProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE8E4584(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1AE8E5E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__144(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1AE8EBC88(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t imageIsInteresting(void *a1)
{
  v1 = a1;
  v2 = [v1 properties];
  v3 = [v2 hasSingleDominantColor];

  if (v3)
  {
    v4 = [v1 platformImage];
    v5 = [v4 _lp_hasSingleColor];

    v6 = v5 ^ 1u;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_1AE8ED54C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE8EE910(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8EE9F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8EEAD0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8EEBB0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_1AE8EED34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LPiTunesPlayButtonControl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE8EF4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

id getMPMusicPlayerControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMusicPlayerControllerClass_softClass;
  v7 = getMPMusicPlayerControllerClass_softClass;
  if (!getMPMusicPlayerControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMusicPlayerControllerClass_block_invoke;
    v3[3] = &unk_1E7A35518;
    v3[4] = &v4;
    __getMPMusicPlayerControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE8EF688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMusicPlayerControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMusicPlayerController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMusicPlayerControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMusicPlayerControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPiTunesPlayButtonControl.m" lineNumber:30 description:{@"Unable to find class %s", "MPMusicPlayerController"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A36700;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_2;
  if (!MediaPlayerLibraryCore_frameworkLibrary_2)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LPiTunesPlayButtonControl.m" lineNumber:28 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getMPMusicPlayerControllerItemPlaybackDidEndNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_0();
  result = dlsym(v2, "MPMusicPlayerControllerItemPlaybackDidEndNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMusicPlayerControllerItemPlaybackDidEndNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getMPMusicPlayerStoreQueueDescriptorClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMusicPlayerStoreQueueDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMusicPlayerStoreQueueDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMusicPlayerStoreQueueDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPiTunesPlayButtonControl.m" lineNumber:31 description:{@"Unable to find class %s", "MPMusicPlayerStoreQueueDescriptor"}];

    __break(1u);
  }
}

void sub_1AE8F0550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = LPAVPlayerViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void NewsCoreLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!NewsCoreLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL19NewsCoreLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A36740;
    v5 = 0;
    NewsCoreLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!NewsCoreLibraryCore(char **)::frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NewsCoreLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"LPNSURLExtras.mm" lineNumber:21 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void TelephonyUtilitiesLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TelephonyUtilitiesLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL29TelephonyUtilitiesLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A36758;
    v5 = 0;
    TelephonyUtilitiesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore(char **)::frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"LPNSURLExtras.mm" lineNumber:15 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void sub_1AE8F1390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL19NewsCoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  NewsCoreLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t ___ZL29TelephonyUtilitiesLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL26getTUConversationLinkClassv_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUConversationLink");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUConversationLinkClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUConversationLinkClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPNSURLExtras.mm" lineNumber:16 description:{@"Unable to find class %s", "TUConversationLink"}];

    __break(1u);
  }
}

void sub_1AE8F1D1C(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_1AE8F2BE0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1AE8F2F88(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1AE8F3810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LPApplePhotosMetadataProviderSpecialization;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE8F3BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

id getPHAssetClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetClass(void)::softClass;
  v7 = getPHAssetClass(void)::softClass;
  if (!getPHAssetClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL15getPHAssetClassv_block_invoke;
    v3[3] = &unk_1E7A35518;
    v3[4] = &v4;
    ___ZL15getPHAssetClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE8F414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPHImageManagerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHImageManagerClass(void)::softClass;
  v7 = getPHImageManagerClass(void)::softClass;
  if (!getPHImageManagerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL22getPHImageManagerClassv_block_invoke;
    v3[3] = &unk_1E7A35518;
    v3[4] = &v4;
    ___ZL22getPHImageManagerClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE8F42C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE8F468C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL23PhotosUICoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PhotosUICoreLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL22getPHPhotoLibraryClassv_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPhotoLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPhotoLibraryClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHPhotoLibraryClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPApplePhotosMetadataProviderSpecialization.mm" lineNumber:35 description:{@"Unable to find class %s", "PHPhotoLibrary"}];

    __break(1u);
  }
}

void PhotosLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotosLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL17PhotosLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A367D8;
    v5 = 0;
    PhotosLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosLibraryCore(char **)::frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"LPApplePhotosMetadataProviderSpecialization.mm" lineNumber:28 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t ___ZL17PhotosLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PhotosLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL21getPHMomentShareClassv_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHMomentShare");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHMomentShareClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHMomentShareClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPApplePhotosMetadataProviderSpecialization.mm" lineNumber:34 description:{@"Unable to find class %s", "PHMomentShare"}];

    __break(1u);
  }
}

void ___ZL22getPHFetchOptionsClassv_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHFetchOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHFetchOptionsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHFetchOptionsClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPApplePhotosMetadataProviderSpecialization.mm" lineNumber:31 description:{@"Unable to find class %s", "PHFetchOptions"}];

    __break(1u);
  }
}

void ___ZL15getPHAssetClassv_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHAssetClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPApplePhotosMetadataProviderSpecialization.mm" lineNumber:30 description:{@"Unable to find class %s", "PHAsset"}];

    __break(1u);
  }
}

void ___ZL22getPHImageManagerClassv_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHImageManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHImageManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHImageManagerClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPApplePhotosMetadataProviderSpecialization.mm" lineNumber:32 description:{@"Unable to find class %s", "PHImageManager"}];

    __break(1u);
  }
}

void ___ZL29getPHImageRequestOptionsClassv_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHImageRequestOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHImageRequestOptionsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHImageRequestOptionsClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPApplePhotosMetadataProviderSpecialization.mm" lineNumber:33 description:{@"Unable to find class %s", "PHImageRequestOptions"}];

    __break(1u);
  }
}

id countryCodeToStorefrontMapping()
{
  v1 = countryCodeToStorefrontMapping_map;
  if (countryCodeToStorefrontMapping_map)
  {
  }

  else
  {
    countryCodeToStorefrontMapping_map = &unk_1F2483D50;

    v1 = &unk_1F2483D50;
  }

  return v1;
}

void sub_1AE8F5540(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1AE8F55FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1AE8F5730(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1AE8F57B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t twoImagesHorizontalOrVerticalLayout(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 platformImage];
  [v4 _lp_pixelSize];
  aspectRatioFromSize(v5, v6);
  v8 = v7;

  v9 = [v3 platformImage];
  [v9 _lp_pixelSize];
  aspectRatioFromSize(v10, v11);
  v13 = v8 < 1.5;
  if (v12 >= 1.5)
  {
    v13 = 0;
  }

  if (v8 <= 1.5)
  {
    v13 = 1;
  }

  v14 = v12 <= 1.5 || v13;

  return v14;
}

uint64_t computeMultipleImageLayoutForImages(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  v3 = v2;
  if ((v2 - 3) >= 2)
  {
    if (v2 == 2)
    {
      v4 = [v1 objectAtIndexedSubscript:0];
      v5 = [v1 objectAtIndexedSubscript:1];
      v6 = twoImagesHorizontalOrVerticalLayout(v4, v5);

      if (v6)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_1AE8F5ABC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t shouldUseFlexibleWidth(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 1;
  if (a2 != 1 && a2 != 8)
  {
    v6 = a1 - 5;
    if (v6 < 0x26 && ((0x3003CA4401uLL >> v6) & 1) != 0)
    {
      return 0;
    }

    else
    {
      return (a3 | a4) ^ 1u;
    }
  }

  return result;
}

BOOL shouldUseSkinnyWidth(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  v13 = 0;
  if (a1 != 15 && !v9 && (a5 & 1) == 0)
  {
    if (v10)
    {
      v14 = [v10 platformImage];
      [v14 size];
      aspectRatioFromSize(v15, v16);
      v18 = v17;
    }

    else
    {
      if (!v11)
      {
        goto LABEL_14;
      }

      [v11 _intrinsicSizeIfKnown];
      if (v19 == *MEMORY[0x1E695F060] && v20 == *(MEMORY[0x1E695F060] + 8))
      {
        v18 = 1.33333333;
        goto LABEL_16;
      }

      aspectRatioFromSize(v19, v20);
      v18 = v22;
    }

    if (v18 >= 0.0)
    {
LABEL_16:
      v13 = vabdd_f64(1.0, v18) <= 0.1 || v18 <= 1.0;
      goto LABEL_19;
    }

LABEL_14:
    v13 = 0;
  }

LABEL_19:

  return v13;
}

uint64_t rowConfigurationForSizeClass(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 3;
  }

  else
  {
    return qword_1AE9C6408[a1 - 1];
  }
}

uint64_t maximumRowConfigurationForStyle(unint64_t a1)
{
  if (a1 > 0x3D)
  {
    return 3;
  }

  else
  {
    return qword_1AE9C6470[a1];
  }
}

uint64_t shouldUseIconPlatter(void *a1, uint64_t a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a3;
  if (([v7 allowsPlatterPresentation] & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = [v7 fixedSize];

  v10 = 0;
  if (a2 == 14 && v9)
  {
    v11 = [v8 properties];
    v12 = [v11 type];

    if (v12 || ([v8 _isFallbackIcon] & 1) != 0)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }

    [v8 _pixelSize];
    v15 = v14;
    v16 = [v7 fixedSize];
    v17 = [v16 width];
    [v17 value];
    v19 = v18 * a4;

    if (v15 >= v19)
    {
      v10 = [v8 _hasTransparencyInCenter];
    }

    else
    {
      v10 = 2;
    }
  }

LABEL_7:

  return v10;
}

void sub_1AE8F61A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *vibrancyEffectStyleForColor(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69DC888] labelColor];
  v3 = [v1 isEqual:v2];

  if (v3)
  {
    v4 = &unk_1F24834E8;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v6 = [v1 isEqual:v5];

    if (v6)
    {
      v4 = &unk_1F2483500;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v8 = [v1 isEqual:v7];

      if (v8)
      {
        v4 = &unk_1F2483518;
      }

      else
      {
        v9 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
        v10 = [v1 isEqual:v9];

        if (v10)
        {
          v4 = &unk_1F2483530;
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

void sub_1AE8F62E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *nameForStyle(uint64_t a1)
{
  if ((a1 - 1) > 0x3C)
  {
    return @"Regular";
  }

  else
  {
    return off_1E7A36818[a1 - 1];
  }
}

void performForEachStyle(void *a1)
{
  v1 = a1;
  v1[2](v1, 0);
  v1[2](v1, 1);
  v1[2](v1, 2);
  v1[2](v1, 3);
  v1[2](v1, 4);
  v1[2](v1, 5);
  v1[2](v1, 6);
  v1[2](v1, 7);
  v1[2](v1, 40);
  v1[2](v1, 8);
  v1[2](v1, 9);
  v1[2](v1, 56);
  v1[2](v1, 10);
  v1[2](v1, 55);
  v1[2](v1, 11);
  v1[2](v1, 12);
  v1[2](v1, 13);
  v1[2](v1, 57);
  v1[2](v1, 14);
  v1[2](v1, 15);
  v1[2](v1, 16);
  v1[2](v1, 17);
  v1[2](v1, 18);
  v1[2](v1, 19);
  v1[2](v1, 20);
  v1[2](v1, 21);
  v1[2](v1, 22);
  v1[2](v1, 23);
  v1[2](v1, 24);
  v1[2](v1, 26);
  v1[2](v1, 27);
  v1[2](v1, 28);
  v1[2](v1, 29);
  v1[2](v1, 30);
  v1[2](v1, 31);
  v1[2](v1, 59);
  v1[2](v1, 32);
  v1[2](v1, 33);
  v1[2](v1, 34);
  v1[2](v1, 36);
  v1[2](v1, 37);
  v1[2](v1, 38);
  v1[2](v1, 39);
  v1[2](v1, 41);
  v1[2](v1, 42);
  v1[2](v1, 43);
  v1[2](v1, 44);
  v1[2](v1, 53);
  v1[2](v1, 46);
  v1[2](v1, 47);
  v1[2](v1, 48);
  v1[2](v1, 49);
  v1[2](v1, 50);
  v1[2](v1, 51);
  v1[2](v1, 52);
  v1[2](v1, 58);
  v1[2](v1, 60);
  v1[2](v1, 61);
}

__CFString *nameForSizeClass(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"automatic";
  }

  else
  {
    return off_1E7A36A00[a1 - 1];
  }
}

void performForEachSizeClass(void *a1)
{
  v1 = a1;
  v1[2](v1, 0);
  v1[2](v1, 1);
  v1[2](v1, 2);
  v1[2](v1, 3);
  v1[2](v1, 4);
  v1[2](v1, 8);
  v1[2](v1, 5);
  v1[2](v1, 6);
  v1[2](v1, 7);
  v1[2](v1, 9);
  v1[2](v1, 10);
  v1[2](v1, 11);
  v1[2](v1, 12);
  v1[2](v1, 13);
}

id presentationOverrideBackgroundColorForProperties(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 dominantImageBackgroundColor];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 allowsDominantImageBackgroundColorAsCaptionBackground];
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == 1)
  {
    v5 = MEMORY[0x1E69DC888];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __presentationOverrideBackgroundColorForProperties_block_invoke;
    v8[3] = &unk_1E7A367F8;
    v9 = v2;
    v6 = [v5 _lp_colorWithDynamicProvider:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    v6 = [v1 backgroundColor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __presentationOverrideBackgroundColorForProperties_block_invoke(uint64_t a1)
{
  v2 = +[LPResources linkMediaBackgroundColor];
  v3 = [v2 _lp_colorBlendedWithColor:*(a1 + 32)];

  return v3;
}

void sub_1AE8F719C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t objectsAreEqual_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqual:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1AE8F7508(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8F7B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LPVideo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE8F7CA4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8F8F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v18 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id allStreamingAudioPlayers()
{
  v0 = allStreamingAudioPlayers_allStreamingAudioPlayers;
  if (!allStreamingAudioPlayers_allStreamingAudioPlayers)
  {
    v1 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v2 = allStreamingAudioPlayers_allStreamingAudioPlayers;
    allStreamingAudioPlayers_allStreamingAudioPlayers = v1;

    v0 = allStreamingAudioPlayers_allStreamingAudioPlayers;
  }

  return v0;
}

void sub_1AE8F9D10(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE8F9E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LPStreamingAudioPlayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE8FA028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t LPImageViewFilterResolve(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 properties];
  v9 = [v8 type];

  if ((v9 - 1) >= 7)
  {
    if ([v6 filter])
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    v10 = [v11 filter];
  }

  else
  {
    v10 = qword_1AE9C6668[v9 - 1];
  }

  return v10;
}

void sub_1AE8FC1F8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE8FD8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1AE8FE0E4(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE8FF0A0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1AE8FFD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48)
{
  _Block_object_dispose(&a43, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

LPPointUnit *pt(double a1)
{
  v1 = [[LPPointUnit alloc] initWithValue:a1];

  return v1;
}

id outerHorizontalTextMargin(id a1)
{
  v1 = a1;
  if (!outerHorizontalTextMargin_normal16)
  {
    v2 = [[LPPointUnit alloc] initWithValue:16.0];
    v3 = outerHorizontalTextMargin_normal16;
    outerHorizontalTextMargin_normal16 = v2;
  }

  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        if (v1 != 2)
        {
          goto LABEL_20;
        }

        v4 = outerHorizontalTextMargin_watch;
        if (!outerHorizontalTextMargin_watch)
        {
          v5 = [[LPPointUnit alloc] initWithValue:6.0];
          v6 = outerHorizontalTextMargin_watch;
          outerHorizontalTextMargin_watch = v5;

          v4 = outerHorizontalTextMargin_watch;
        }

        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

  else if (v1 > 4)
  {
    if (v1 == 6)
    {
      v4 = outerHorizontalTextMargin_tv;
      if (!outerHorizontalTextMargin_tv)
      {
        v9 = [[LPPointUnit alloc] initWithValue:24.0];
        v10 = outerHorizontalTextMargin_tv;
        outerHorizontalTextMargin_tv = v9;

        v4 = outerHorizontalTextMargin_tv;
      }

      goto LABEL_19;
    }

    if (v1 != 5)
    {
      goto LABEL_20;
    }
  }

  else if (v1 != 3)
  {
LABEL_15:
    v4 = outerHorizontalTextMargin_normal;
    if (!outerHorizontalTextMargin_normal)
    {
      v7 = [[LPPointUnit alloc] initWithValue:10.0];
      v8 = outerHorizontalTextMargin_normal;
      outerHorizontalTextMargin_normal = v7;

      v4 = outerHorizontalTextMargin_normal;
    }

    goto LABEL_19;
  }

  v4 = outerHorizontalTextMargin_normal16;
LABEL_19:
  a1 = v4;
LABEL_20:

  return a1;
}

id topCaptionFont(uint64_t a1, uint64_t a2)
{
  if (+[LPTestingOverrides forceMonospaceFonts])
  {
    goto LABEL_2;
  }

  if (a1 > 3)
  {
    switch(a1)
    {
      case 6:
        v6 = MEMORY[0x1E69DDD80];
        break;
      case 5:
        if (a2 == 5 || (IsCardHeading = sizeClassIsCardHeading(a2), a2 == 11) || IsCardHeading)
        {
          v7 = *MEMORY[0x1E69DDD40];
          v8 = 0;
          goto LABEL_20;
        }

        v6 = MEMORY[0x1E69DDCF8];
        break;
      case 4:
LABEL_18:
        v10 = MEMORY[0x1E69DDD80];
LABEL_19:
        v7 = *v10;
        v8 = 32770;
        goto LABEL_20;
      default:
        goto LABEL_2;
    }

    v7 = *v6;
    v8 = 2;
LABEL_20:
    v9 = a2;
    goto LABEL_21;
  }

  if (!a1)
  {
    goto LABEL_18;
  }

  if (a1 == 1)
  {
    if (a2 == 2)
    {
      v5 = MEMORY[0x1E69DDD40];
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (a1 != 2)
  {
LABEL_2:
    v4 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB970]];
    goto LABEL_22;
  }

  if (a2 != 2)
  {
    v10 = MEMORY[0x1E69DDD38];
    goto LABEL_19;
  }

  v5 = MEMORY[0x1E69DDCF8];
LABEL_17:
  v7 = *v5;
  v8 = 0x8000;
  v9 = 2;
LABEL_21:
  v4 = fontWithTraits(v7, v8, v9);
LABEL_22:

  return v4;
}

id bottomCaptionFont(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (+[LPTestingOverrides forceMonospaceFonts])
  {
    v4 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
LABEL_24:
    v5 = v4;
    goto LABEL_25;
  }

  if (a1 <= 3)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (a2 == 2)
        {
          fontWithTraits(*MEMORY[0x1E69DDD80], 0x8000, 2);
        }

        else
        {
          fontWithTraits(*MEMORY[0x1E69DDD28], 0x8000, a2);
        }

        goto LABEL_9;
      }

      if (a1 == 2)
      {
        if (a2 == 2)
        {
          fontWithTraits(*MEMORY[0x1E69DDD30], 0x8000, 2);
        }

        else
        {
          fontWithTraits(*MEMORY[0x1E69DDD38], 0x8000, a2);
        }

        v4 = LABEL_9:;
        goto LABEL_24;
      }

LABEL_17:
      v4 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB978]];
      goto LABEL_24;
    }

LABEL_13:
    if (a2 == 12 && +[LPSettings useOnGlassShareSheetAppearance])
    {
      v4 = fontWithTraits(*MEMORY[0x1E69DDD80], 0x8000, 12);
    }

    else
    {
      v4 = fontWithTraits(*MEMORY[0x1E69DDD28], 0x8000, a2);
    }

    goto LABEL_24;
  }

  if (a1 == 6)
  {
    goto LABEL_13;
  }

  if (a1 != 5)
  {
    if (a1 != 4)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (sizeClassIsCardHeading(a2))
  {
    v4 = fontWithTraits(*MEMORY[0x1E69DDD00], 0, a2);
    goto LABEL_24;
  }

  v12 = *MEMORY[0x1E69DB8F0];
  v10 = *MEMORY[0x1E69DB990];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB978]];
  v11 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v5 = fontWithTraitsAndAttributes(*MEMORY[0x1E69DDD28], 0, v9, a2);

LABEL_25:

  return v5;
}

void sub_1AE904C3C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id outerHorizontalIconMargin(id a1)
{
  if (a1 <= 6)
  {
    if (a1 == 2)
    {
      v2 = &outerHorizontalIconMargin_watch;
      v3 = outerHorizontalIconMargin_watch;
      if (outerHorizontalIconMargin_watch)
      {
LABEL_6:
        a1 = v3;

        return a1;
      }

      v4 = 6.0;
    }

    else
    {
      v2 = &outerHorizontalIconMargin_normal;
      v3 = outerHorizontalIconMargin_normal;
      if (outerHorizontalIconMargin_normal)
      {
        goto LABEL_6;
      }

      v4 = 12.0;
    }

    v5 = [[LPPointUnit alloc] initWithValue:v4];
    v6 = *v2;
    *v2 = v5;

    v3 = *v2;
    goto LABEL_6;
  }

  return a1;
}

void sub_1AE90661C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE906ADC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id iconSize(id a1)
{
  if (a1 <= 6)
  {
    if (a1 == 2)
    {
      v2 = &iconSize_watchSize;
      v3 = iconSize_watchSize;
      if (iconSize_watchSize)
      {
LABEL_6:
        a1 = v3;

        return a1;
      }

      v4 = 22.0;
    }

    else
    {
      v2 = &iconSize_normalSize;
      v3 = iconSize_normalSize;
      if (iconSize_normalSize)
      {
        goto LABEL_6;
      }

      v4 = 30.0;
    }

    v5 = [[LPSize alloc] initWithSquareSize:v4];
    v6 = *v2;
    *v2 = v5;

    v3 = *v2;
    goto LABEL_6;
  }

  return a1;
}

id fallbackIconSize(unint64_t a1)
{
  if (a1 <= 6)
  {
    if (((1 << a1) & 0x69) != 0)
    {
      v2 = &fallbackIconSize_normalSize;
      v3 = fallbackIconSize_normalSize;
      if (fallbackIconSize_normalSize)
      {
        goto LABEL_11;
      }

      v4 = 28.0;
    }

    else if (((1 << a1) & 0x12) != 0)
    {
      v2 = &fallbackIconSize_normalSize_1284;
      v3 = fallbackIconSize_normalSize_1284;
      if (fallbackIconSize_normalSize_1284)
      {
        goto LABEL_11;
      }

      v4 = 24.0;
    }

    else
    {
      v2 = &fallbackIconSize_watchSize;
      v3 = fallbackIconSize_watchSize;
      if (fallbackIconSize_watchSize)
      {
        goto LABEL_11;
      }

      v4 = 14.0;
    }

    v5 = [[LPPointUnit alloc] initWithValue:v4];
    v6 = *v2;
    *v2 = v5;

    v3 = *v2;
LABEL_11:
    a1 = v3;

    return a1;
  }

  return a1;
}

void sub_1AE9085C0(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE908BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LPThemeParametersObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id themeCache()
{
  v0 = themeCache_themeCache;
  if (!themeCache_themeCache)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = themeCache_themeCache;
    themeCache_themeCache = v1;

    v0 = themeCache_themeCache;
  }

  return v0;
}

id defaultBackgroundColor(uint64_t a1)
{
  if (a1 == 5)
  {
    if (+[LPSettings useLightweightMaterials])
    {
      [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v1 = ;
  }

  else
  {
    v1 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_1295];
  }

  return v1;
}

void sub_1AE90A1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v10;

  _Unwind_Resume(a1);
}

id fontWithTraits(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = fontWithTraitsAndAttributes(a1, a2, 0, a3);

  return v3;
}

id cardHeadingIconSize(unint64_t a1, id a2)
{
  if (a1 < 5)
  {
    goto LABEL_2;
  }

  if (a1 == 5)
  {
    v2 = &cardHeadingIconSize_normalSize_1299;
    v3 = cardHeadingIconSize_normalSize_1299;
    if (cardHeadingIconSize_normalSize_1299)
    {
      goto LABEL_5;
    }

    v4 = 44.0;
    goto LABEL_4;
  }

  if (a1 == 6)
  {
LABEL_2:
    v2 = &cardHeadingIconSize_normalSize;
    v3 = cardHeadingIconSize_normalSize;
    if (cardHeadingIconSize_normalSize)
    {
LABEL_5:
      a2 = v3;
      goto LABEL_6;
    }

    v4 = 40.0;
LABEL_4:
    v5 = [[LPSize alloc] initWithSquareSize:v4];
    v6 = *v2;
    *v2 = v5;

    v3 = *v2;
    goto LABEL_5;
  }

LABEL_6:

  return a2;
}

id cardHeadingVerticalIconMargin(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 onlyShowIcon])
  {
    goto LABEL_2;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
LABEL_2:
        v5 = +[LPPointUnit zero];
LABEL_18:
        v2 = v5;
        goto LABEL_19;
      }

      if (a1 != 2)
      {
        goto LABEL_19;
      }

      v6 = cardHeadingVerticalIconMargin_watchMargin;
      if (!cardHeadingVerticalIconMargin_watchMargin)
      {
        v7 = [[LPPointUnit alloc] initWithValue:8.0];
        v8 = &cardHeadingVerticalIconMargin_watchMargin;
LABEL_15:
        v9 = *v8;
        *v8 = v7;

        v6 = *v8;
      }

LABEL_17:
      v5 = v6;
      goto LABEL_18;
    }

LABEL_13:
    v6 = cardHeadingVerticalIconMargin_normalMargin;
    if (!cardHeadingVerticalIconMargin_normalMargin)
    {
      v7 = [[LPPointUnit alloc] initWithValue:16.0];
      v8 = &cardHeadingVerticalIconMargin_normalMargin;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if ((a1 - 3) < 2)
  {
    goto LABEL_13;
  }

  if (a1 == 5)
  {
    v6 = cardHeadingVerticalIconMargin_visionMargin;
    if (cardHeadingVerticalIconMargin_visionMargin)
    {
      goto LABEL_17;
    }

    v7 = [[LPPointUnit alloc] initWithValue:24.0];
    v8 = &cardHeadingVerticalIconMargin_visionMargin;
    goto LABEL_15;
  }

  if (a1 == 6)
  {
    goto LABEL_13;
  }

LABEL_19:

  return v2;
}

void applyCommonCardHeadingCaptionBarProperties(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = a1;
  applyCommonListOrCaptionBarIconProperties(v9, a2, a3, a4, a5);
  v10 = [v9 textStack];
  [v10 setShouldAlignToBaselines:0];

  if (!cardHeadingLeadingTextPadding_normalMargin)
  {
    v11 = [[LPPointUnit alloc] initWithValue:8.0];
    v12 = cardHeadingLeadingTextPadding_normalMargin;
    cardHeadingLeadingTextPadding_normalMargin = v11;
  }

  if (!cardHeadingLeadingTextPadding_normalVisionMargin)
  {
    v13 = [[LPPointUnit alloc] initWithValue:11.0];
    v14 = cardHeadingLeadingTextPadding_normalVisionMargin;
    cardHeadingLeadingTextPadding_normalVisionMargin = v13;
  }

  if (!cardHeadingLeadingTextPadding_largeMargin)
  {
    v15 = [[LPPointUnit alloc] initWithValue:16.0];
    v16 = cardHeadingLeadingTextPadding_largeMargin;
    cardHeadingLeadingTextPadding_largeMargin = v15;
  }

  p_cb = &OBJC_PROTOCOL___UIContextMenuInteractionDelegate.cb;
  if (!cardHeadingLeadingTextPadding_onGlassMargin)
  {
    v18 = [[LPPointUnit alloc] initWithValue:15.0];
    v19 = cardHeadingLeadingTextPadding_onGlassMargin;
    cardHeadingLeadingTextPadding_onGlassMargin = v18;
  }

  if (a2 < 5)
  {
    goto LABEL_10;
  }

  if (a2 == 5)
  {
    v21 = &cardHeadingLeadingTextPadding_normalVisionMargin;
LABEL_19:
    p_cb = *v21;
    goto LABEL_20;
  }

  if (a2 == 6)
  {
LABEL_10:
    if (a4 == 12)
    {
      v20 = +[LPSettings useOnGlassShareSheetAppearance];
      v21 = &cardHeadingLeadingTextPadding_largeMargin;
      if (v20)
      {
        v21 = &cardHeadingLeadingTextPadding_onGlassMargin;
      }
    }

    else
    {
      v21 = &cardHeadingLeadingTextPadding_normalMargin;
    }

    goto LABEL_19;
  }

LABEL_20:
  v22 = [v9 textStack];
  v23 = [v22 captionTextPadding];
  [v23 setLeading:p_cb];

  v24 = +[LPPointUnit zero];
  v25 = [v9 textStack];
  v26 = [v25 captionTextPadding];
  [v26 setTrailing:v24];

  if (a2 == 2)
  {
    v27 = +[LPPointUnit zero];
  }

  else
  {
    v27 = [[LPPointUnit alloc] initWithValue:2.0];
  }

  v28 = v27;
  v29 = [v9 textStack];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __applyCommonCardHeadingCaptionBarProperties_block_invoke;
  v31[3] = &unk_1E7A36CD0;
  v30 = v28;
  v32 = v30;
  [v29 applyToLowerTextRowStyles:v31];
}

void applyCommonListOrCaptionBarIconProperties(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = a1;
  v9 = [v30 leadingIcon];
  v10 = v9;
  if (a2 == 2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [v9 setScalingMode:v11];

  if (a2 != 2)
  {
    v12 = [MEMORY[0x1E69DC888] whiteColor];
    v13 = [v30 leadingIcon];
    [v13 setBackgroundColor:v12];
  }

  if (styleRequiresUncroppedImageDisplay(a3))
  {
    v14 = [v30 leadingIcon];
    [v14 setScalingMode:1];

    v15 = [v30 leadingIcon];
    [v15 setRequireFixedSize:0];
  }

  if (a2 != 2 && styleSupportsIconPlatter(a3))
  {
    v16 = [v30 leadingIcon];
    [v16 setAllowsPlatterPresentation:1];
  }

  if (a3 <= 31)
  {
    if (a3 <= 11)
    {
      if (a3 != 4)
      {
        if (a3 != 7)
        {
          goto LABEL_31;
        }

LABEL_26:
        v18 = [v30 leadingIcon];
        [v18 setFilter:13];

        goto LABEL_31;
      }

      goto LABEL_27;
    }

    if (a3 == 12)
    {
      v19 = [v30 leadingIcon];
      [v19 setFilter:5];
      goto LABEL_30;
    }

    if (a3 == 18)
    {
      v19 = [v30 leadingIcon];
      [v19 setFilter:7];
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (a3 > 39)
  {
    if (a3 == 40)
    {
      goto LABEL_26;
    }

    if (a3 != 47)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (a3 == 32)
  {
LABEL_27:
    v19 = [[LPGlyphStyle alloc] initSearchGlyph];
    v20 = [v30 textStack];
    v21 = [v20 topCaption];
    v22 = [v21 leading];
    [v22 setLeadingGlyph:v19];

LABEL_30:
    goto LABEL_31;
  }

  if (a3 == 33)
  {
LABEL_25:
    v17 = [v30 leadingIcon];
    [v17 setRequireFixedSize:0];
  }

LABEL_31:
  if (a5)
  {
    v23 = [v30 leadingIcon];
    applyFallbackIconProperties(v23, a2, a3, a4);
  }

  if (a3 == 46 && sizeClassIsCardHeading(a4))
  {
    v24 = [v30 leadingIcon];
    [v24 setFilter:13];

    v25 = [v30 leadingIcon];
    [v25 setShouldApplyBackground:1];

    v26 = [MEMORY[0x1E69DC888] _lp_secondarySystemFillColor];
    v27 = [v30 leadingIcon];
    [v27 setBackgroundColor:v26];

    v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v29 = [v30 leadingIcon];
    [v29 setMaskColor:v28];
  }
}

void applyFallbackIconProperties(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  [v24 setFilter:12];
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [v24 setBackgroundColor:v7];

  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v24 setMaskColor:v8];

  if (a4 == 13 || a2 == 1 && a4 == 2 || a2 <= 6 && ((1 << a2) & 0x61) != 0 && (a3 != 2 || a4 == 8))
  {
    v9 = +[LPPointUnit zero];
  }

  else
  {
    v21 = fallbackIconBackgroundInset_defaultFallbackIconBackgroundInset;
    if (!fallbackIconBackgroundInset_defaultFallbackIconBackgroundInset)
    {
      v22 = [[LPPointUnit alloc] initWithValue:3.0];
      v23 = fallbackIconBackgroundInset_defaultFallbackIconBackgroundInset;
      fallbackIconBackgroundInset_defaultFallbackIconBackgroundInset = v22;

      v21 = fallbackIconBackgroundInset_defaultFallbackIconBackgroundInset;
    }

    v9 = v21;
  }

  v10 = v9;
  [v24 setBackgroundInset:v9];

  [v24 setScalingMode:3];
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v11 = [[LPSize alloc] initWithSquareSize:13.0];
    [v24 setFixedSize:v11];

    v12 = bottomCaptionFont(a2, a4);
    [v24 setFixedFallbackImageFont:v12];

    v13 = +[LPPointUnit zero];
    [v24 setCornerRadius:v13];

    v14 = [MEMORY[0x1E69DC888] clearColor];
    [v24 setBackgroundColor:v14];
  }

  else if (a4 == 13)
  {
    goto LABEL_13;
  }

  IsCardHeading = sizeClassIsCardHeading(a4);
  v16 = a3 == 47 || IsCardHeading;
  if ((v16 & 1) == 0)
  {
    v17 = +[LPPointUnit zero];
    v18 = [v24 margin];
    [v18 setTop:v17];

    v19 = +[LPPointUnit zero];
    v20 = [v24 margin];
    [v20 setBottom:v19];
  }

LABEL_13:
}

LPPointUnit *tweetTextToIconPadding(LPPointUnit *a1)
{
  if (a1 <= 6)
  {
    a1 = [[LPPointUnit alloc] initWithValue:dbl_1AE9C6A50[a1]];
  }

  return a1;
}

LPPointUnit *tweetTextOuterPadding(LPPointUnit *a1)
{
  if (a1 <= 6)
  {
    a1 = [[LPPointUnit alloc] initWithValue:dbl_1AE9C6A88[a1]];
  }

  return a1;
}

id fontWithTraitsAndAttributes(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v9 = MEMORY[0x1E69DB880];
  v10 = MEMORY[0x1E69DD1B8];
  v11 = maximumContentSizeCategory(a4);
  v12 = [v10 traitCollectionWithPreferredContentSizeCategory:v11];
  v13 = [v9 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:v12];

  v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7];
  [v13 pointSize];
  v16 = v15;
  [v14 pointSize];
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v18 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7 addingSymbolicTraits:a2 options:0];
  v19 = v18;
  if (v8)
  {
    v20 = [v18 fontDescriptorByAddingAttributes:v8];

    v19 = v20;
  }

  v21 = [MEMORY[0x1E69DB878] fontWithDescriptor:v19 size:v16];

  return v21;
}

id musicArtistOuterPadding(void *a1, void *a2)
{
  if (a1 < 5)
  {
    goto LABEL_2;
  }

  if (a1 == 5)
  {
    v4 = musicArtistOuterPadding_visionSize;
    if (!musicArtistOuterPadding_visionSize)
    {
      v5 = [[LPPointUnit alloc] initWithValue:16.0];
      v6 = musicArtistOuterPadding_visionSize;
      musicArtistOuterPadding_visionSize = v5;

      v4 = musicArtistOuterPadding_visionSize;
    }

    v2 = v4;
    goto LABEL_3;
  }

  if (a1 == 6)
  {
LABEL_2:
    v2 = outerHorizontalTextMargin(a1);
LABEL_3:
    a2 = v2;
  }

  return a2;
}

id businessChatImageSmallSize()
{
  v0 = businessChatImageSmallSize_normalSize;
  if (!businessChatImageSmallSize_normalSize)
  {
    v1 = [[LPSize alloc] initWithSize:60.0, 60.0];
    v2 = businessChatImageSmallSize_normalSize;
    businessChatImageSmallSize_normalSize = v1;

    v0 = businessChatImageSmallSize_normalSize;
  }

  return v0;
}

id businessChatImageIconSize()
{
  v0 = businessChatImageIconSize_normalSize;
  if (!businessChatImageIconSize_normalSize)
  {
    v1 = [[LPSize alloc] initWithSize:40.0, 40.0];
    v2 = businessChatImageIconSize_normalSize;
    businessChatImageIconSize_normalSize = v1;

    v0 = businessChatImageIconSize_normalSize;
  }

  return v0;
}

id iMessageAppLinkIconSize(id a1)
{
  if (a1 <= 6)
  {
    if (a1 == 2)
    {
      v2 = &iMessageAppLinkIconSize_watchSize;
      v3 = iMessageAppLinkIconSize_watchSize;
      if (iMessageAppLinkIconSize_watchSize)
      {
LABEL_6:
        a1 = v3;

        return a1;
      }

      v4 = 18.0;
      v5 = 24.0;
    }

    else
    {
      v2 = &iMessageAppLinkIconSize_normalSize;
      v3 = iMessageAppLinkIconSize_normalSize;
      if (iMessageAppLinkIconSize_normalSize)
      {
        goto LABEL_6;
      }

      v4 = 27.0;
      v5 = 36.0;
    }

    v6 = [[LPSize alloc] initWithSize:v5, v4];
    v7 = *v2;
    *v2 = v6;

    v3 = *v2;
    goto LABEL_6;
  }

  return a1;
}

id mediumOrLargeHorizontalFillColor(unint64_t a1)
{
  if (a1 > 6)
  {
  }

  else
  {
    if (((1 << a1) & 0x65) != 0)
    {
      [MEMORY[0x1E69DC888] grayColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] _lp_systemFillColor];
    }
    a1 = ;
  }

  return a1;
}

id mediumOrLargeHorizontalForegroundColor(unint64_t a1)
{
  if (a1 <= 6)
  {
    if (((1 << a1) & 0x65) != 0)
    {
      v2 = [MEMORY[0x1E69DC888] labelColor];
      v1 = [v2 _lp_colorForcingUserInterfaceStyle:1];
    }

    else
    {
      v1 = [MEMORY[0x1E69DC888] labelColor];
    }
  }

  return v1;
}

__CFString *CSSAlignmentFromLPTextAlignment(uint64_t a1)
{
  IsLTR = appIsLTR();
  if (a1 == 1)
  {
    v3 = @"left";
    v4 = @"right";
  }

  else
  {
    if (a1)
    {
      v5 = @"center";
      goto LABEL_9;
    }

    v3 = @"right";
    v4 = @"left";
  }

  if (IsLTR)
  {
    v3 = v4;
  }

  v5 = v3;
LABEL_9:

  return v5;
}

__CFString *CSSFlexAlignmentFromLPVerticalAlignment(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"flex-start";
  }

  else
  {
    return off_1E7A36DC0[a1];
  }
}

void __dynamicTypeLeadingScalingFactorLargeToXXXL_block_invoke()
{
  v0 = CTFontDescriptorCreateWithTextStyle();
  v1 = CTFontCreateWithFontDescriptorAndOptions(v0, 0.0, 0, 0);
  CFRelease(v0);
  v2 = CTFontDescriptorCreateWithTextStyle();
  v3 = CTFontCreateWithFontDescriptorAndOptions(v2, 0.0, 0, 0);
  CFRelease(v2);
  Size = CTFontGetSize(v1);
  *&dynamicTypeLeadingScalingFactorLargeToXXXL_scalingFactor = Size / CTFontGetSize(v3);
  CFRelease(v1);

  CFRelease(v3);
}

id maximumContentSizeCategory(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v2 = *MEMORY[0x1E69DDC20];
  }

  else
  {
    if (isTinyiPhoneSize_onceToken != -1)
    {
      maximumContentSizeCategory_cold_1();
    }

    if (isTinyiPhoneSize_isTinyiPhoneSize)
    {
      v4 = MEMORY[0x1E69DDC50];
    }

    else
    {
      v4 = MEMORY[0x1E69DDC38];
    }

    v2 = *v4;
  }

  return v2;
}

uint64_t __isTinyiPhoneSize_block_invoke()
{
  result = MGGetSInt32Answer();
  isTinyiPhoneSize_isTinyiPhoneSize = result == 5;
  return result;
}

id __defaultBackgroundColor_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [v3 resolvedColorWithTraitCollection:v2];
  v5 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  v6 = [v4 _lp_colorBlendedWithColor:v5];
  v7 = [v6 resolvedColorWithTraitCollection:v2];

  return v7;
}

id __mediaBackgroundColor_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [v3 resolvedColorWithTraitCollection:v2];
  v5 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v6 = [v4 _lp_colorBlendedWithColor:v5];
  v7 = [v6 resolvedColorWithTraitCollection:v2];

  return v7;
}

void __applyCommonCardHeadingCaptionBarProperties_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 leading];
  v6 = [v5 padding];
  [v6 setTop:v4];

  v7 = *(a1 + 32);
  v8 = [v11 trailing];
  v9 = [v8 padding];
  [v9 setTop:v7];

  v10 = [v11 trailing];
  [v10 setTextAlignment:0];

  [v11 setBalancingMode:1];
}

void sub_1AE9180A4(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE918DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *exc_buf)
{
  if (a2 == 1)
  {
    v22 = objc_begin_catch(a1);
    v23 = LPLogChannelFetching();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[LPMessagesPayload _linkWithDataRepresentation:substitutingAttachments:attachments:];
    }

    objc_end_catch();
    JUMPOUT(0x1AE918BF8);
  }

  _Unwind_Resume(a1);
}

void sub_1AE9193C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE919A88(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE91B00C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE91B414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE91B50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LPPlayButtonView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t appIsAvailable(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [LPApplicationIdentification bundleIdentifiersForKnownApplication:a1, 0];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = *v12;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
        v7 = v6;
        if (v6)
        {
          v8 = [v6 applicationState];
          v9 = [v8 isInstalled];

          if (v9)
          {
            v2 = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }

LABEL_12:

  return v2;
}

id formattedAddressWithFallback(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    if (a3)
    {
      cityAndState(v5);
    }

    else
    {
      [MEMORY[0x1E695CF68] stringFromPostalAddress:v5 style:0];
    }
    v8 = ;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

void sub_1AE91D098(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id stringFromCLLocationCoordinate2D(double a1, double a2)
{
  if (a1 < 0.0)
  {
    v4 = @"South (abbreviated)";
  }

  else
  {
    v4 = @"North (abbreviated)";
  }

  v5 = LPLocalizedString(v4);
  if (a2 < 0.0)
  {
    v6 = @"West (abbreviated)";
  }

  else
  {
    v6 = @"East (abbreviated)";
  }

  v7 = LPLocalizedString(v6);
  v8 = MEMORY[0x1E696AEC0];
  v9 = LPLocalizedString(@"%.5f %@, %.5f %@");
  v10 = [v8 localizedStringWithFormat:v9, fabs(a1), v5, fabs(a2), v7];

  return v10;
}

id cityAndState(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 setStreet:&stru_1F2447CF0];
  [v1 setCountry:&stru_1F2447CF0];
  [v1 setPostalCode:&stru_1F2447CF0];
  [v1 setISOCountryCode:&stru_1F2447CF0];
  v2 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:v1 addCountryName:0];

  return v2;
}

void sub_1AE91E530(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

void sub_1AE91F7AC(_Unwind_Exception *a1)
{
  v9 = v4;

  _Unwind_Resume(a1);
}

Class __getMKDistanceFormatterClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __MapKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A36E30;
    v9 = 0;
    MapKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LPAppleMapsTransformers.m" lineNumber:25 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MKDistanceFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKDistanceFormatterClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPAppleMapsTransformers.m" lineNumber:26 description:{@"Unable to find class %s", "MKDistanceFormatter"}];

LABEL_10:
    __break(1u);
  }

  getMKDistanceFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MapKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AE92026C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id googleSuffixChecker()
{
  if (googleSuffixChecker_onceToken != -1)
  {
    googleSuffixChecker_cold_1();
  }

  v1 = googleSuffixChecker_checker;

  return v1;
}

id searchQueryForDuckDuckGoURL(void *a1)
{
  v1 = a1;
  v2 = [v1 pathComponents];
  if ([v2 count] < 2 || (objc_msgSend(v1, "_lp_pathComponentAtIndex:", 1), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "_lp_isEqualToAnyIgnoringCase:", &unk_1F2483A88), v3, (v4 & 1) != 0))
  {
    v5 = [v1 _lp_valueForQueryKey:@"q"];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1AE921114(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id baiduSuffixChecker()
{
  if (baiduSuffixChecker_onceToken != -1)
  {
    baiduSuffixChecker_cold_1();
  }

  v1 = baiduSuffixChecker_checker;

  return v1;
}

id searchQueryForBaiduURL(void *a1)
{
  v1 = a1;
  v2 = [v1 _lp_pathComponentAtIndex:1];
  v3 = [v2 _lp_isEqualToAnyIgnoringCase:&unk_1F2483AB8];

  if (v3)
  {
    v4 = [v1 _lp_valueForQueryKey:@"wd"];
    if (!v4)
    {
      v4 = [v1 _lp_valueForQueryKey:@"word"];
    }

    v5 = [v4 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __googleSuffixChecker_block_invoke()
{
  v0 = [[LPURLSuffixChecker alloc] initWithSuffixes:&unk_1F24839C8];
  v1 = googleSuffixChecker_checker;
  googleSuffixChecker_checker = v0;
}

void __yahooSuffixChecker_block_invoke()
{
  v0 = [[LPURLSuffixChecker alloc] initWithSuffixes:&unk_1F24839E0];
  v1 = yahooSuffixChecker_checker;
  yahooSuffixChecker_checker = v0;
}

void __yandexSuffixChecker_block_invoke()
{
  v0 = [[LPURLSuffixChecker alloc] initWithSuffixes:&unk_1F2483A10];
  v1 = yandexSuffixChecker_checker;
  yandexSuffixChecker_checker = v0;
}

void __bingSuffixChecker_block_invoke()
{
  v0 = [[LPURLSuffixChecker alloc] initWithSuffixes:&unk_1F2483A40];
  v1 = bingSuffixChecker_checker;
  bingSuffixChecker_checker = v0;
}

void __duckDuckGoSuffixChecker_block_invoke()
{
  v0 = [[LPURLSuffixChecker alloc] initWithSuffixes:&unk_1F2483A70];
  v1 = duckDuckGoSuffixChecker_checker;
  duckDuckGoSuffixChecker_checker = v0;
}

void __baiduSuffixChecker_block_invoke()
{
  v0 = [[LPURLSuffixChecker alloc] initWithSuffixes:&unk_1F2483AA0];
  v1 = baiduSuffixChecker_checker;
  baiduSuffixChecker_checker = v0;
}

void sub_1AE922480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LPLinkView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE922900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE92316C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE923A1C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE9240A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1AE9259CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v11 = v9;

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_1AE926374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1AE92AB14(_Unwind_Exception *a1)
{
  v4 = v1;

  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 24));
  _Unwind_Resume(a1);
}

void sub_1AE92DEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1AE92DFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1AE92E1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE92F0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __getCPSClipURLClass_block_invoke_0(uint64_t a1)
{
  ClipServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSClipURL");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCPSClipURLClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCPSClipURLClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPLinkView.m" lineNumber:100 description:{@"Unable to find class %s", "CPSClipURL"}];

    __break(1u);
  }
}

void ClipServicesLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ClipServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ClipServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A370F8;
    v5 = 0;
    ClipServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ClipServicesLibraryCore_frameworkLibrary_0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ClipServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"LPLinkView.m" lineNumber:98 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ClipServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ClipServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __getCPSClipRequestClass_block_invoke(uint64_t a1)
{
  ClipServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSClipRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCPSClipRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCPSClipRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPLinkView.m" lineNumber:99 description:{@"Unable to find class %s", "CPSClipRequest"}];

    __break(1u);
  }
}

void __getDDContextMenuActionClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DDContextMenuAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDContextMenuActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDContextMenuActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPLinkView.m" lineNumber:106 description:{@"Unable to find class %s", "DDContextMenuAction"}];

    __break(1u);
  }
}

void *DataDetectorsUILibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DataDetectorsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A37110;
    v6 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LPLinkView.m" lineNumber:105 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkDDContextMenuActionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDDContextMenuActionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDDContextMenuActionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDDContextMenuWantsPreviewKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDDContextMenuWantsPreviewKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDDContextMenuWantsPreviewKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t result, int a2, uint64_t a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 8) = 2048;
  *(result + 10) = a3;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x12u);
}

void sub_1AE932AC8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE932CE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE932E0C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE934E84(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE935D9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE937A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1AE9383A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t objectsAreEqual_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqual:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1AE938914(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE938BCC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1AE938C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1AE938D68(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1AE9394D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id getMPPropertySetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPPropertySetClass_softClass;
  v7 = getMPPropertySetClass_softClass;
  if (!getMPPropertySetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPPropertySetClass_block_invoke;
    v3[3] = &unk_1E7A35518;
    v3[4] = &v4;
    __getMPPropertySetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE93C5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPCPlayerRequestClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __MediaPlaybackCoreLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A37268;
    v9 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlaybackCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:39 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MPCPlayerRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPCPlayerRequestClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:40 description:{@"Unable to find class %s", "MPCPlayerRequest"}];

LABEL_10:
    __break(1u);
  }

  getMPCPlayerRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMPModelRelationshipGenericSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_1();
  result = dlsym(v2, "MPModelRelationshipGenericSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaPlayerLibrary_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A37280;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_3;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_3 = result;
  return result;
}

void *__getMPModelRelationshipSongAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_1();
  result = dlsym(v2, "MPModelRelationshipSongAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPodcastEpisodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_1();
  result = dlsym(v2, "MPModelRelationshipGenericPodcastEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPodcastEpisodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipPodcastEpisodePodcastSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_1();
  result = dlsym(v2, "MPModelRelationshipPodcastEpisodePodcast");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipPodcastEpisodePodcastSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_1();
  result = dlsym(v2, "MPModelRelationshipGenericPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getMPPropertySetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPPropertySet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPPropertySetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPPropertySetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPMediaRemotePlaybackObserver.m" lineNumber:35 description:{@"Unable to find class %s", "MPPropertySet"}];

    __break(1u);
  }
}

void *__getMPModelRelationshipGenericRadioStationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_1();
  result = dlsym(v2, "MPModelRelationshipGenericRadioStation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericRadioStationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id makeLPError(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = MEMORY[0x1E696ABC0];
  if (v3)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 errorWithDomain:@"LPErrorDomain" code:a1 userInfo:v6];
  if (v4)
  {
  }

  return v7;
}

void sub_1AE93E694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = LPYouTubePlayerView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE93F2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1AE93F3BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE941CBC(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void *imageOnlyIfViable(void *a1)
{
  v1 = a1;
  v2 = [v1 platformImage];
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_1AE9434AC()
{
  objc_end_catch();

  JUMPOUT(0x1AE9437E0);
}

void sub_1AE94397C(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1AE943C08(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE943EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  v34 = v31;

  _Unwind_Resume(a1);
}

void sub_1AE9448CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void ensureOnMainThread(void *a1)
{
  block = a1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    block[2](block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1AE946408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1AE9466CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, void *a32, void *a33)
{
  v38 = v37;

  _Unwind_Resume(a1);
}

void *__getBREntitlementSharingPrivateInterfaceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary();
  result = dlsym(v2, "BREntitlementSharingPrivateInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBREntitlementSharingPrivateInterfaceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CloudDocsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudDocsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A374C0;
    v6 = 0;
    CloudDocsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CloudDocsLibraryCore_frameworkLibrary;
  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudDocsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LPiCloudSharingMetadataProviderSpecialization.m" lineNumber:24 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CloudDocsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudDocsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBRContainerProxyEntitlementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary();
  result = dlsym(v2, "BRContainerProxyEntitlement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBRContainerProxyEntitlementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getBRShareCopyDocumentURLForRecordIDClass_block_invoke(uint64_t a1)
{
  CloudDocsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BRShareCopyDocumentURLForRecordID");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBRShareCopyDocumentURLForRecordIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBRShareCopyDocumentURLForRecordIDClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LPiCloudSharingMetadataProviderSpecialization.m" lineNumber:27 description:{@"Unable to find class %s", "BRShareCopyDocumentURLForRecordID"}];

    __break(1u);
  }
}

void sub_1AE9474B8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE947844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LPStreamingAudioPlayButtonControl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *urlByRemovingTrackingInformation(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10[0] = 0;
  if (!WebPrivacyLibraryCore_frameworkLibrary)
  {
    v10[1] = MEMORY[0x1E69E9820];
    v10[2] = 3221225472;
    v10[3] = __WebPrivacyLibraryCore_block_invoke;
    v10[4] = &__block_descriptor_40_e5_v8__0l;
    v10[5] = v10;
    v11 = xmmword_1E7A374D8;
    v12 = 0;
    WebPrivacyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (WebPrivacyLibraryCore_frameworkLibrary)
  {
    v2 = v10[0];
    if (!v10[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebPrivacyLibrary(void)"];
    [v8 handleFailureInFunction:v9 file:@"LPWebPrivacyUtilities.m" lineNumber:13 description:{@"%s", v10[0]}];

    __break(1u);
  }

  free(v2);
LABEL_5:
  v3 = [v1 _wp_urlByRemovingTrackingInformation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v1;
  }

  v6 = v5;

  return v5;
}

void sub_1AE947BA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t __WebPrivacyLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WebPrivacyLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AE9480B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE948978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1AE948CAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE948E08(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE949CC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE94A05C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1AE94A18C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE94B044(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

Class __getGEOResourceManifestManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __GeoServicesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A37510;
    v9 = 0;
    GeoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GeoServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LPPresentationSpecializations.m" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("GEOResourceManifestManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGEOResourceManifestManagerClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPPresentationSpecializations.m" lineNumber:18 description:{@"Unable to find class %s", "GEOResourceManifestManager"}];

LABEL_10:
    __break(1u);
  }

  getGEOResourceManifestManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GeoServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GeoServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AE94B608(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));

  _Unwind_Resume(a1);
}

void sub_1AE94B76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LPLinkSnapshotGenerator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE94B900(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1AE94C530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LPLinkMetadataObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AE94C774(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t objectsAreEqual_3(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqual:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1AE94CED8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

double delayTimeFromImageProperties(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696DB70]];
  v3 = v2;
  if (v2 && ([v2 objectForKeyedSubscript:*MEMORY[0x1E696DB68]], v4 = objc_claimAutoreleasedReturnValue(), (v5 = v4) != 0))
  {
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v8 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696DEB0]];
    v5 = v8;
    v7 = 0.05;
    if (v8)
    {
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D3C0]];
      v10 = v9;
      if (v9)
      {
        [v9 doubleValue];
        v7 = v11;
      }
    }
  }

  return v7;
}

void sub_1AE94DC78(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1AE94EE04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

LPImageRemoteURLRepresentation *remoteURL(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [LPImageRemoteURLRepresentation alloc];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  v6 = [(LPImageRemoteURLRepresentation *)v4 initWithScale:a1 URL:v5];

  return v6;
}

void sub_1AE94F390(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id iconForKnownApplication(uint64_t a1, void *a2)
{
  v3 = a2;
  +[LPTheme largestIconSizeInPoints];
  v5 = iconForKnownApplicationWithSize(a1, v3, v4);

  return v5;
}

void sub_1AE94F56C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE94F6D8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE94F844(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE94F9D0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

LPImageProperties *imagePropertiesForPrecomposedApplicationIcon()
{
  v0 = objc_alloc_init(LPImageProperties);
  [(LPImageProperties *)v0 setType:7];

  return v0;
}

void sub_1AE94FBA0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE94FD0C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id iconForKnownApplicationWithSize(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = [LPApplicationIdentification bundleIdentifiersForKnownApplication:a1];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __iconForBundleIdentifiers_block_invoke;
  v10[3] = &unk_1E7A37578;
  v10[4] = &v11;
  *&v10[5] = a3;
  [v6 enumerateObjectsUsingBlock:v10];
  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  if (v5 && !v7)
  {
    v8 = objc_alloc_init(LPImageProperties);
    [(LPImageProperties *)v8 setType:1];
    v7 = [LPImage _PNGImageNamed:v5 template:0 properties:v8];
  }

  return v7;
}

id dynamicColorWithVariants(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E69DC888];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __dynamicColorWithVariants_block_invoke;
  v20[3] = &unk_1E7A375A0;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = [v13 _lp_colorWithDynamicProvider:v20 name:a1];

  return v18;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __iconForBundleIdentifiers_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v22 = v6;
  if (currentProcessCanMapLSDatabase_onceToken != -1)
  {
    __iconForBundleIdentifiers_block_invoke_cold_1();
  }

  if (currentProcessCanMapLSDatabase_canMapLSDatabase == 1 && !+[LPTestingOverrides forceUseCannedIcons])
  {
    v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v22 allowPlaceholder:1 error:0];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v22];
      v11 = objc_alloc(MEMORY[0x1E69A8A30]);
      v12 = +[LPTestingOverrides forceImageLoadingScaleFactor];
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        [MEMORY[0x1E69DCEB0] _lp_mainScreenScale];
        v13 = v14;
      }

      v15 = [v11 initWithSize:v7 scale:{v7, v13}];
      v16 = [v10 prepareImageForDescriptor:v15];
      if ([v16 placeholder])
      {
        v8 = 0;
      }

      else
      {
        v17 = [v16 CGImage];
        v18 = [LPImage alloc];
        v19 = imagePropertiesForPrecomposedApplicationIcon();
        v8 = [(LPImage *)v18 _initWithCGImage:v17 properties:v19];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = *(*(a1 + 32) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v8;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __currentProcessCanMapLSDatabase_block_invoke()
{
  *task_info_out = 0u;
  v4 = 0u;
  task_info_outCnt = 8;
  if (!task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt))
  {
    v0 = [MEMORY[0x1E6963608] defaultWorkspace];
    v1[0] = *task_info_out;
    v1[1] = v4;
    currentProcessCanMapLSDatabase_canMapLSDatabase = [v0 mayProcessWithAuditTokenMapDatabase:v1];
  }
}

void *__dynamicColorWithVariants_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _lp_prefersDarkInterface];
  v5 = [v3 _lp_prefersHighContrast];
  if (v4)
  {
    if (!v5 || (v6 = *(a1 + 32)) == 0)
    {
      v7 = 40;
LABEL_8:
      v6 = *(a1 + v7);
    }
  }

  else if (!v5 || (v6 = *(a1 + 48)) == 0)
  {
    v7 = 56;
    goto LABEL_8;
  }

  v8 = v6;

  return v6;
}

void sub_1AE95115C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

Class __getCNAvatarViewClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __ContactsUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A37610;
    v9 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"LPContactsBadgeView.m" lineNumber:19 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CNAvatarView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAvatarViewClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPContactsBadgeView.m" lineNumber:22 description:{@"Unable to find class %s", "CNAvatarView"}];

LABEL_10:
    __break(1u);
  }

  getCNAvatarViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AE957CEC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id createViewForRow(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 hasAnyContent])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __createViewForRow_block_invoke;
    v13[3] = &unk_1E7A376F0;
    v14 = v7;
    v15 = v10;
    v16 = v8;
    v11 = __createViewForRow_block_invoke(v13);
    [v11 setEmphasizedTextExpression:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1AE9596A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

LPHorizontalCaptionPairView *__createViewForRow_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) button];

  if (v2)
  {
    goto LABEL_2;
  }

  v17 = [*(a1 + 32) leading];
  v18 = [v17 attributedText];
  if (!v18)
  {

LABEL_10:
    v24 = [*(a1 + 32) trailing];
    v25 = [v24 attributedText];
    if (v25)
    {
      v26 = [*(a1 + 32) leading];
      v27 = [v26 attributedText];

      if (!v27)
      {
        v28 = [LPTextView alloc];
        v29 = *(a1 + 40);
        v13 = [*(a1 + 32) trailing];
        v33 = [v13 attributedText];
        v14 = [*(a1 + 32) trailing];
        v15 = [*(a1 + 48) trailing];
        v5 = textViewStyleForCaption(v14, v15);
        v23 = [(LPTextView *)v28 initWithHost:v29 text:v33 style:v5];
        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_2:
    v3 = [LPHorizontalCaptionPairView alloc];
    v4 = *(a1 + 40);
    v32 = [*(a1 + 32) leading];
    v33 = [v32 attributedText];
    v31 = [*(a1 + 32) leading];
    v30 = [*(a1 + 48) leading];
    v5 = textViewStyleForCaption(v31, v30);
    v6 = [*(a1 + 32) trailing];
    v7 = [v6 attributedText];
    v8 = [*(a1 + 32) trailing];
    v9 = [*(a1 + 48) trailing];
    v10 = textViewStyleForCaption(v8, v9);
    v11 = [*(a1 + 32) button];
    v12 = -[LPHorizontalCaptionPairView initWithHost:leadingText:leadingStyle:trailingText:trailingStyle:button:balancingMode:](v3, "initWithHost:leadingText:leadingStyle:trailingText:trailingStyle:button:balancingMode:", v4, v33, v5, v7, v10, v11, [*(a1 + 48) balancingMode]);

    v14 = v31;
    v13 = v32;
    v15 = v30;
    goto LABEL_3;
  }

  v19 = [*(a1 + 32) trailing];
  v20 = [v19 attributedText];

  if (v20)
  {
    goto LABEL_10;
  }

  v21 = [LPTextView alloc];
  v22 = *(a1 + 40);
  v13 = [*(a1 + 32) leading];
  v33 = [v13 attributedText];
  v14 = [*(a1 + 32) leading];
  v15 = [*(a1 + 48) leading];
  v5 = textViewStyleForCaption(v14, v15);
  v23 = [(LPTextView *)v21 initWithHost:v22 text:v33 style:v5];
LABEL_13:
  v12 = v23;
LABEL_3:

  return v12;
}

id textViewStyleForCaption(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 color];
  if (v5 || ([v3 textScale], v28 != 1.0))
  {
  }

  else
  {
    v29 = [v3 maximumNumberOfLines];

    if (!v29)
    {
      v6 = v4;
      goto LABEL_12;
    }
  }

  v6 = [v4 copy];
  v7 = [v3 color];

  if (v7)
  {
    v8 = [v3 color];
    [v6 setColor:v8];
  }

  v9 = [v3 maximumNumberOfLines];

  if (v9)
  {
    v10 = [v3 maximumNumberOfLines];
    [v6 setMaximumLines:{objc_msgSend(v10, "unsignedIntValue")}];
  }

  [v3 textScale];
  if (v11 != 1.0)
  {
    [v3 textScale];
    v13 = v12;
    v14 = [v6 font];
    [v14 pointSize];
    v16 = v15;

    v17 = [v6 font];
    v18 = v13 * v16;
    v19 = [v17 fontWithSize:v18];
    [v6 setFont:v19];

    v20 = [v6 fallbackFontForTruncatedSingleLine];
    v21 = [v20 fontWithSize:v18];
    [v6 setFallbackFontForTruncatedSingleLine:v21];

    v22 = [LPPointUnit alloc];
    v23 = [v6 firstLineLeading];
    [v23 value];
    v25 = v24;
    [v3 textScale];
    v27 = [(LPPointUnit *)v22 initWithValue:v25 * v26];
    [v6 setFirstLineLeading:v27];
  }

LABEL_12:

  return v6;
}

void sub_1AE95A534(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE95AD64(_Unwind_Exception *a1)
{
  v10 = v5;

  _Unwind_Resume(a1);
}

void sub_1AE95B2A0(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void LPPLCMMTitleAndSubtitleForTitleAndFallbackDates(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v12 = getPLCMMTitleAndSubtitleForTitleAndFallbackDatesSymbolLoc_ptr;
  v19 = getPLCMMTitleAndSubtitleForTitleAndFallbackDatesSymbolLoc_ptr;
  if (!getPLCMMTitleAndSubtitleForTitleAndFallbackDatesSymbolLoc_ptr)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getPLCMMTitleAndSubtitleForTitleAndFallbackDatesSymbolLoc_block_invoke;
    v15[3] = &unk_1E7A35518;
    v15[4] = &v16;
    __getPLCMMTitleAndSubtitleForTitleAndFallbackDatesSymbolLoc_block_invoke(v15);
    v12 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v12)
  {
    v12(v9, v10, v11, a4, a5);
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void LPPLCMMTitleAndSubtitleForTitleAndFallbackDates(NSString *__strong, NSDate *__strong, NSDate *__strong, NSString *__autoreleasing *, NSString *__autoreleasing *)"}];
    [v13 handleFailureInFunction:v14 file:@"LPApplePhotosTransformers.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1AE95C6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t __PhotoLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPLCMMTitleAndSubtitleForTitleAndFallbackDatesSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PhotoLibraryServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7A37750;
    v7 = 0;
    PhotoLibraryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PhotoLibraryServicesLibraryCore_frameworkLibrary;
  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoLibraryServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"LPApplePhotosTransformers.m" lineNumber:36 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "PLCMMTitleAndSubtitleForTitleAndFallbackDates");
  *(*(a1[4] + 8) + 24) = result;
  getPLCMMTitleAndSubtitleForTitleAndFallbackDatesSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __PhotoLibraryServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoLibraryServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPLLocalizedCountDescriptionSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PhotoLibraryServicesCoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7A37768;
    v7 = 0;
    PhotoLibraryServicesCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PhotoLibraryServicesCoreLibraryCore_frameworkLibrary;
  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoLibraryServicesCoreLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"LPApplePhotosTransformers.m" lineNumber:29 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "PLLocalizedCountDescription");
  *(*(a1[4] + 8) + 24) = result;
  getPLLocalizedCountDescriptionSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __PhotoLibraryServicesCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoLibraryServicesCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPXCMMStringForExpiryDateSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PhotosUICoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PhotosUICoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7A37780;
    v7 = 0;
    PhotosUICoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PhotosUICoreLibraryCore_frameworkLibrary;
  if (!PhotosUICoreLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosUICoreLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"LPApplePhotosTransformers.m" lineNumber:38 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "PXCMMStringForExpiryDate");
  *(*(a1[4] + 8) + 24) = result;
  getPXCMMStringForExpiryDateSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __PhotosUICoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosUICoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AE95E6CC(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE95EE84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE95F154(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE95F440(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE95FA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1AE963DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v11;

  _Unwind_Resume(a1);
}

void sub_1AE9646A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id joinedByEmDash(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] || objc_msgSend(v4, "length"))
  {
    v5 = [v3 length];
    v6 = v4;
    if (v5 && (v7 = [v4 length], v6 = v3, v7))
    {
      v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@ — %@", v3, v4];
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id joinedBySpace(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] || objc_msgSend(v4, "length"))
  {
    v5 = [v3 length];
    v6 = v4;
    if (v5 && (v7 = [v4 length], v6 = v3, v7))
    {
      v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@ %@", v3, v4];
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id joinedByDot(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] || objc_msgSend(v4, "length"))
  {
    v5 = [v3 length];
    v6 = v4;
    if (v5 && (v7 = [v4 length], v6 = v3, v7))
    {
      v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@ · %@", v3, v4];
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

Class ___ZL28getNLLanguageRecognizerClassv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!NaturalLanguageLibraryCore(char **)::frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = ___ZL26NaturalLanguageLibraryCorePPc_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7A378D8;
    v9 = 0;
    NaturalLanguageLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!NaturalLanguageLibraryCore(char **)::frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NaturalLanguageLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"LPNSStringExtras.mm" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("NLLanguageRecognizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNLLanguageRecognizerClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"LPNSStringExtras.mm" lineNumber:18 description:{@"Unable to find class %s", "NLLanguageRecognizer"}];

LABEL_10:
    __break(1u);
  }

  getNLLanguageRecognizerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL26NaturalLanguageLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  NaturalLanguageLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_1AE965E68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE96704C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AE9673A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id customIconForUTI(void *a1, double a2)
{
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithType:v3];
  v5 = objc_alloc_init(MEMORY[0x1E69A8A30]);
  +[LPTheme largestIconSizeInPoints];
  v7 = v6;
  +[LPTheme largestIconSizeInPoints];
  [v5 setSize:{v7, v8}];
  [v5 setScale:a2];
  v9 = [v4 prepareImageForDescriptor:v5];
  v10 = [v9 CGImage];
  v11 = objc_alloc_init(LPImageProperties);
  [(LPImageProperties *)v11 setType:5];
  v12 = [[LPImage alloc] _initWithCGImage:v10 properties:v11];

  return v12;
}

uint64_t sub_1AE9687A8()
{
  v1 = [v0 video];
  if (v1 || (v1 = [v0 arAsset]) != 0)
  {

    return 1;
  }

  v3 = [v0 image];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 _isLowResolutionAsImage];

    if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1AE968844()
{
  v1 = v0;
  v2 = sub_1AE988604();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6510);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v87 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v87 - v16;
  v99 = MEMORY[0x1E69E7CC0];
  v18 = [v1 URL];
  if (v18)
  {
    v19 = v18;
    sub_1AE9885F4();

    v20 = *(v3 + 32);
    v20(v15, v5, v2);
    v21 = *(v3 + 56);
    v21(v15, 0, 1, v2);
    v20(v17, v15, v2);
    v21(v17, 0, 1, v2);
  }

  else
  {
    v22 = *(v3 + 56);
    v23 = 1;
    v22(v15, 1, 1, v2);
    v24 = [v1 originalURL];
    if (v24)
    {
      v25 = v24;
      sub_1AE9885F4();

      v23 = 0;
    }

    v22(v12, v23, 1, v2);
    sub_1AE969998(v12, v17);
    if ((*(v3 + 48))(v15, 1, v2) != 1)
    {
      sub_1AE969A08(v15);
    }
  }

  sub_1AE969A70(v17, v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1AE9885E4();
    (*(v3 + 8))(v9, v2);
  }

  v27 = [objc_opt_self() shouldAllowHoistingContentImagesForURL_];

  v28 = &selRef_animateWithDuration_animations_;
  v29 = [v1 contentImagesMetadata];
  if (v29)
  {
    sub_1AE969B54(0, &qword_1EB5E4DE0);
    v30 = sub_1AE988794();

    if (v30 >> 62)
    {
LABEL_115:
      v31 = sub_1AE9889A4();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = &selRef_animateWithDuration_animations_;
  v33 = [v1 contentImages];
  v98 = v33 == 0;
  if (!v33)
  {
    v35 = 0;
    if (!v29)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  sub_1AE969B54(0, &qword_1EB5E4DC8);
  v34 = sub_1AE988794();

  if (v34 >> 62)
  {
    v35 = sub_1AE9889A4();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29)
  {
LABEL_19:
    if (v33)
    {
      v36 = v31 == v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v98 = v37;
  }

LABEL_26:
  v38 = [v1 contentImages];
  v39 = &selRef_fileIcon;
  if (!v38)
  {
LABEL_39:
    v45 = [v1 *(v32 + 2128)];
    if (v45)
    {
      v46 = v45;
      sub_1AE969B54(0, &qword_1EB5E4DC8);
      v32 = sub_1AE988794();
    }

    else
    {
      v32 = 0;
    }

    v44 = 0;
    goto LABEL_43;
  }

  v40 = v38;
  v29 = sub_1AE969B54(0, &qword_1EB5E4DC8);
  v41 = sub_1AE988794();

  v42 = [v1 image];
  if (v42)
  {
    v43 = v42;

    goto LABEL_39;
  }

  if (!v27)
  {
LABEL_38:

    goto LABEL_39;
  }

  v32 = v41 >> 62;
  if (v41 >> 62)
  {
    v44 = sub_1AE9889A4();
    if (v44)
    {
LABEL_34:
      if ((v41 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1B2709E60](0, v41);
        if ((v44 & 0x8000000000000000) != 0)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_187;
        }

        v39 = *(v41 + 32);
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_119;
    }
  }

  else
  {
    v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
      goto LABEL_34;
    }
  }

  v39 = 0;
LABEL_119:
  v27 = v44 != 0;
  if (v32)
  {
    if (v41 < 0)
    {
      v40 = v41;
    }

    else
    {
      v40 = (v41 & 0xFFFFFFFFFFFFFF8);
    }

    if (sub_1AE9889A4() < v27)
    {
      goto LABEL_175;
    }

    v70 = sub_1AE9889A4();
  }

  else
  {
    v70 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70 < v27)
    {
LABEL_175:
      __break(1u);
LABEL_176:
      sub_1AE9887A4();
      v29 = v96;
      goto LABEL_68;
    }
  }

  if (v70 < v44)
  {
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  if ((v41 & 0xC000000000000001) != 0)
  {

    if (v44 >= 2)
    {
      v71 = v44 != 0;
      do
      {
        v72 = v71 + 1;
        sub_1AE988A44();
        v71 = v72;
      }

      while (v44 != v72);
    }
  }

  else
  {
  }

  if (v32)
  {
    v29 = sub_1AE988B14();
    v32 = v73;
    v27 = v74;
    v44 = v75;

    if ((v44 & 1) == 0)
    {
      goto LABEL_138;
    }
  }

  else
  {
    v29 = (v41 & 0xFFFFFFFFFFFFFF8);
    v32 = (v41 & 0xFFFFFFFFFFFFFF8) + 32;
    v44 = (2 * v44) | 1;
    if ((v44 & 1) == 0)
    {
      goto LABEL_138;
    }
  }

  sub_1AE988B94();
  swift_unknownObjectRetain_n();
  v77 = swift_dynamicCastClass();
  if (!v77)
  {
    swift_unknownObjectRelease();
    v77 = MEMORY[0x1E69E7CC0];
  }

  v78 = *(v77 + 16);

  if (__OFSUB__(v44 >> 1, v27))
  {
    goto LABEL_188;
  }

  if (v78 != (v44 >> 1) - v27)
  {
    goto LABEL_190;
  }

  v32 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v44 = v39;
  v39 = &selRef_fileIcon;
  if (!v32)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_145;
  }

LABEL_43:
  while (1)
  {
    v47 = [v1 *(v28 + 2136)];
    if (!v47)
    {
      break;
    }

    v40 = v47;
    v29 = sub_1AE969B54(0, &qword_1EB5E4DE0);
    v27 = sub_1AE988794();

    v48 = [v1 v39[134]];
    if (v48)
    {

LABEL_53:

      break;
    }

    if (!v98)
    {
      goto LABEL_53;
    }

    v41 = v27 >> 62;
    if (v27 >> 62)
    {
      v28 = sub_1AE9889A4();
      v97 = v32;
      if (!v28)
      {
LABEL_147:
        v90 = 0;
        goto LABEL_148;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v97 = v32;
      if (!v28)
      {
        goto LABEL_147;
      }
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v90 = MEMORY[0x1B2709E60](0, v27);
      if ((v28 & 0x8000000000000000) != 0)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      v90 = *(v27 + 32);
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }
    }

LABEL_148:
    v32 = v28 != 0;
    if (v41)
    {
      if (v27 < 0)
      {
        v40 = v27;
      }

      else
      {
        v40 = (v27 & 0xFFFFFFFFFFFFFF8);
      }

      if (sub_1AE9889A4() < v32)
      {
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v79 = sub_1AE9889A4();
    }

    else
    {
      v79 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v79 < v32)
      {
        goto LABEL_177;
      }
    }

    if (v79 < v28)
    {
      goto LABEL_179;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {

      if (v28 >= 2)
      {
        v80 = v28 != 0;
        do
        {
          v81 = v80 + 1;
          sub_1AE988A44();
          v80 = v81;
        }

        while (v28 != v81);
      }
    }

    else
    {
    }

    v39 = v44;

    if (v41)
    {
      v29 = sub_1AE988B14();
      v44 = v82;
      v32 = v83;
      v28 = v84;

      v41 = v90;
      if ((v28 & 1) == 0)
      {
        goto LABEL_167;
      }
    }

    else
    {
      v29 = (v27 & 0xFFFFFFFFFFFFFF8);
      v44 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
      v28 = (2 * v28) | 1;
      v41 = v90;
      if ((v28 & 1) == 0)
      {
        goto LABEL_167;
      }
    }

    sub_1AE988B94();
    swift_unknownObjectRetain_n();
    v86 = swift_dynamicCastClass();
    if (!v86)
    {
      swift_unknownObjectRelease();
      v86 = MEMORY[0x1E69E7CC0];
    }

    v27 = *(v86 + 16);

    if (!__OFSUB__(v28 >> 1, v32))
    {
      if (v27 == (v28 >> 1) - v32)
      {
        v28 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v44 = v39;
        v32 = v97;
        if (v28)
        {
          goto LABEL_58;
        }

        v28 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        swift_unknownObjectRelease_n();
LABEL_167:
        sub_1AE969B9C(v29, v44, v32, v28, &qword_1EB5E4DE0);
        v28 = v85;
        v44 = v39;
        v32 = v97;
      }

      swift_unknownObjectRelease();
      goto LABEL_58;
    }

LABEL_189:
    __break(1u);
LABEL_190:
    swift_unknownObjectRelease_n();
LABEL_138:
    sub_1AE969B9C(v29, v32, v27, v44, &qword_1EB5E4DC8);
    v32 = v76;
    v44 = v39;
    v39 = &selRef_fileIcon;
LABEL_145:
    swift_unknownObjectRelease();
  }

  v49 = [v1 *(v28 + 2136)];
  if (v49)
  {
    v50 = v49;
    sub_1AE969B54(0, &qword_1EB5E4DE0);
    v28 = sub_1AE988794();
  }

  else
  {
    v28 = 0;
  }

  v41 = 0;
LABEL_58:
  [v1 copy];
  sub_1AE988954();
  swift_unknownObjectRelease();
  sub_1AE969B54(0, &qword_1ED5F3F20);
  swift_dynamicCast();
  v51 = v100;
  if (v44)
  {
    [v100 setImage_];
    [v51 setImageMetadata_];
  }

  [v51 setContentImages_];
  [v51 setContentImagesMetadata_];
  v29 = v51;
  MEMORY[0x1B2709B80]();
  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AE9887A4();
  }

  sub_1AE9887C4();
  v27 = v99;
  v52 = [v1 specialization];
  if (v52)
  {

    goto LABEL_64;
  }

  if (![v1 _hasMedia])
  {
    sub_1AE969A08(v17);

    return v27;
  }

  v53 = [v1 selectedText];
  v96 = v29;
  if (!v53)
  {
    goto LABEL_69;
  }

  [v1 copy];
  sub_1AE988954();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v54 = v100;
  [v100 setSelectedText_];
  v40 = v54;
  MEMORY[0x1B2709B80]();
  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_176;
  }

LABEL_68:
  sub_1AE9887C4();

  v27 = v99;
LABEL_69:
  if (v32 && v28)
  {
    v55 = v32 & 0xFFFFFFFFFFFFFF8;
    v90 = v41;
    if (v32 >> 62)
    {
      v56 = sub_1AE9889A4();
    }

    else
    {
      v56 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v89 = v17;
    if ((v28 & 0x8000000000000000) == 0)
    {
      v57 = v28 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v57 = v28;
    }

    if (v56)
    {
      v87 = v57;
      v88 = v44;
      v17 = 0;
      v92 = v32 & 0xFFFFFFFFFFFFFF8;
      v93 = v28 & 0xC000000000000001;
      v94 = v28 >> 62;
      v95 = v32 & 0xC000000000000001;
      v91 = v56;
      v97 = v32;
      do
      {
        v58 = v17 + 4;
        while (1)
        {
          v59 = v58 - 4;
          if (v95)
          {
            v60 = MEMORY[0x1B2709E60](v58 - 4, v97);
          }

          else
          {
            if (v59 >= *(v55 + 16))
            {
              goto LABEL_113;
            }

            v60 = *(v97 + 8 * v58);
          }

          v29 = v60;
          v17 = v58 - 3;
          if (__OFADD__(v59, 1))
          {
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          if (v94)
          {
            if (v59 == sub_1AE9889A4())
            {
LABEL_103:

              v44 = v88;
              v17 = v89;
              v41 = v90;
              v29 = v96;
              goto LABEL_105;
            }
          }

          else if (v59 == *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_103;
          }

          if (v93)
          {
            v61 = MEMORY[0x1B2709E60](v58 - 4, v28);
          }

          else
          {
            if (v59 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_114;
            }

            v61 = *(v28 + 8 * v58);
          }

          v62 = v61;
          [v1 copy];
          sub_1AE988954();
          swift_unknownObjectRelease();
          swift_dynamicCast();
          v63 = v100;
          [v100 setImage_];
          if (v98)
          {
            [v63 setImageMetadata_];
          }

          [v63 dropAuxiliaryMedia];
          if ([v63 _hasMedia])
          {
            break;
          }

          ++v58;
          v55 = v92;
          v29 = v96;
          if (v17 == v91)
          {
            v44 = v88;
            goto LABEL_104;
          }
        }

        v64 = v63;
        MEMORY[0x1B2709B80]();
        if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AE9887A4();
        }

        sub_1AE9887C4();

        v27 = v99;
        v55 = v92;
        v44 = v88;
        v29 = v96;
      }

      while (v17 != v91);
    }

LABEL_104:

    v17 = v89;
    v41 = v90;
  }

  else
  {
  }

LABEL_105:
  v65 = [v29 image];
  if (v65)
  {

    [v1 copy];
    sub_1AE988954();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v66 = v100;
    v67 = [v100 icon];
    if (!v67)
    {
      v68 = [v66 image];
      [v66 setIcon_];
      v67 = v68;
    }

    [v66 setImage_];
    [v66 setImageMetadata_];
    [v66 dropAuxiliaryMedia];
    v40 = v66;
    MEMORY[0x1B2709B80]();
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_109:
      sub_1AE9887C4();

      sub_1AE969A08(v17);
      return v99;
    }

LABEL_180:
    sub_1AE9887A4();
    goto LABEL_109;
  }

LABEL_64:
  sub_1AE969A08(v17);
  return v27;
}