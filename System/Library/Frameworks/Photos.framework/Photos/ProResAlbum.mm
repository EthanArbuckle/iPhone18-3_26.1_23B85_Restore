@interface ProResAlbum
@end

@implementation ProResAlbum

id PHQueryForAssetInAlbumKind_ProResAlbum_block_invoke_94(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLPhotoKitGetLog();
  v4 = os_signpost_id_generate(v3);

  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v11 = 136315138;
    v12 = "PHQueryForAssetInAlbumKind_ProResAlbum_block_invoke_94";
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "QueryIdentificationBlock", "%s", &v11, 0xCu);
  }

  v7 = v2[2](v2);
  v8 = v6;
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v9, OS_SIGNPOST_INTERVAL_END, v4, "QueryIdentificationBlock", byte_19CB567AE, &v11, 2u);
  }

  return v7;
}

@end