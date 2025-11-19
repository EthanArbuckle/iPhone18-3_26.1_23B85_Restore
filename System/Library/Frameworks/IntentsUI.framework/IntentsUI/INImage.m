@interface INImage
@end

@implementation INImage

void __49__INImage_IntentsUI__fetchUIImageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277D755B8] imageWithData:v7];
    (*(v11 + 16))(v11, v12);
  }

  else
  {
    if (v9)
    {
      v13 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "[INImage(IntentsUI) fetchUIImageWithCompletion:]_block_invoke";
        v17 = 2112;
        v18 = v10;
        _os_log_error_impl(&dword_22CA36000, v13, OS_LOG_TYPE_ERROR, "%s UIImage loading failed with error: %@", &v15, 0x16u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end