void sub_2334CC840(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(*(a1 + 32) + 32);
  v6 = a3;
  v7 = [v5 profileDataForKey:v9];
  v8 = [v7 isEqualToData:v6];

  if ((v8 & 1) == 0)
  {
    [*(a1 + 40) addObject:v9];
  }
}

void sub_2334CC8D8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 8) objectForKey:?];

  if (!v3)
  {
    [*(*(a1 + 32) + 24) addObject:v4];
  }
}

id CorrectionsProfilesDigest(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 allKeys];
  v3 = [v2 mutableCopy];

  [v3 sortUsingComparator:&unk_2848D2B60];
  v4 = AFSecurityDigestChunksWithProvider();
  v5 = 0;
  if (v5)
  {
    v6 = *MEMORY[0x277CEF0D0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "CorrectionsProfilesDigest";
      v16 = 2112;
      v17 = v1;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_2334CB000, v6, OS_LOG_TYPE_ERROR, "%s Error creating digest for correction profiles %@: %@", buf, 0x20u);
    }

    v7 = 0;
  }

  else
  {
    v8 = [v4 length];
    v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * v8];
    v9 = [v4 bytes];
    if (v8)
    {
      v10 = v9;
      do
      {
        v11 = *v10++;
        [v7 appendFormat:@"%02x", v11];
        --v8;
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t sub_2334CD558(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 absoluteString];
  v6 = [v4 absoluteString];

  v7 = [v5 compare:v6];
  return v7;
}