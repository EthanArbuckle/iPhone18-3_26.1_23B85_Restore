@interface INVocabularyConnection
@end

@implementation INVocabularyConnection

uint64_t __42___INVocabularyConnection_settingsService__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    v3 = [*(v2 + 8) remoteObjectProxy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    [v2 _connect];
    v6 = [objc_claimAutoreleasedReturnValue() remoteObjectProxy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return MEMORY[0x1EEE66BB8]();
}

void __35___INVocabularyConnection__connect__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[_INVocabularyConnection _connect]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = WeakRetained;
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s connection %@ by %@ was interrupted", &v6, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __35___INVocabularyConnection__connect__block_invoke_69(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[_INVocabularyConnection _connect]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = WeakRetained;
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s connection %@ by %@ was invalidated", &v6, 0x20u);
  }

  [WeakRetained _clearConnection];

  v5 = *MEMORY[0x1E69E9840];
}

void __43___INVocabularyConnection__clearConnection__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  [*(*(a1 + 32) + 8) setInvalidationHandler:0];
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

@end