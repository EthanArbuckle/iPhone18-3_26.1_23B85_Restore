@interface ATXApp2VecMapping
- (ATXApp2VecMapping)initWithPath:(id)a3;
- (BOOL)getVectorForBundleId:(id)a3 into:(float *)a4;
- (BOOL)getVectorForBundleIdWithGenreBackup:(id)a3 into:(float *)a4;
- (void)dealloc;
@end

@implementation ATXApp2VecMapping

- (ATXApp2VecMapping)initWithPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(ATXApp2VecMapping *)a2 initWithPath:?];
  }

  v20.receiver = self;
  v20.super_class = ATXApp2VecMapping;
  v6 = [(ATXApp2VecMapping *)&v20 init];
  if (v6)
  {
    v19 = 0;
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:1 error:&v19];
    v8 = v19;
    data = v6->_data;
    v6->_data = v7;

    v10 = v6->_data;
    if (!v10)
    {
      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXApp2VecMapping initWithPath:];
      }

      goto LABEL_18;
    }

    if ([(NSData *)v10 length]<= 0xF)
    {
      v11 = __atxlog_handle_default();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

        v17 = 0;
        goto LABEL_19;
      }

LABEL_7:
      [ATXApp2VecMapping initWithPath:];
      goto LABEL_18;
    }

    v6->_hdr = *[(NSData *)v6->_data bytes];
    v12 = [(NSData *)v6->_data bytes];
    v13 = v12 + 16 + 2 * v6->_hdr.length * v6->_hdr.nvectors;
    v6->_matrix = (v12 + 16);
    v6->_endOfMatrix = v13;
    v14 = [(NSData *)v6->_data bytes];
    if (v13 >= v14 + [(NSData *)v6->_data length])
    {
      v11 = __atxlog_handle_default();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    endOfMatrix = v6->_endOfMatrix;
    v16 = CFBurstTrieCreateFromMapBytes();
    v6->_idxForBundleId = v16;
    if (!v16)
    {
      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXApp2VecMapping initWithPath:];
      }

      goto LABEL_18;
    }
  }

  v17 = v6;
LABEL_19:

  return v17;
}

- (void)dealloc
{
  if (self->_idxForBundleId)
  {
    CFBurstTrieRelease();
    self->_idxForBundleId = 0;
  }

  v3.receiver = self;
  v3.super_class = ATXApp2VecMapping;
  [(ATXApp2VecMapping *)&v3 dealloc];
}

- (BOOL)getVectorForBundleId:(id)a3 into:(float *)a4
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXApp2VecMapping getVectorForBundleId:v12 into:?];
    }

    goto LABEL_14;
  }

  [ATXApp2VecMapping getVectorForBundleId:a2 into:self];
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_3:
  idxForBundleId = self->_idxForBundleId;
  [v8 length];
  if (!CFBurstTrieContains())
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  length = self->_hdr.length;
  v11 = &self->_matrix[-length];
  if (&v11[length] > self->_endOfMatrix)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXApp2VecMapping getVectorForBundleId:v12 into:?];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (length)
  {
    base = self->_hdr.fixinfo.base;
    incr = self->_hdr.fixinfo.incr;
    do
    {
      v15 = *v11++;
      *a4++ = base + (v15 * incr);
      --length;
    }

    while (length);
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (BOOL)getVectorForBundleIdWithGenreBackup:(id)a3 into:(float *)a4
{
  v6 = a3;
  if ([(ATXApp2VecMapping *)self getVectorForBundleId:v6 into:a4])
  {
    v7 = 1;
  }

  else
  {
    v8 = +[_ATXAppInfoManager sharedInstance];
    v9 = [v8 genreIdForBundleId:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 stringValue];
      v7 = [(ATXApp2VecMapping *)self getVectorForBundleId:v11 into:a4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)initWithPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXApp2VecMapping.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"path"}];
}

- (void)initWithPath:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Truncated app2vec mapping: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPath:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Could not open app2vec trie: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPath:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Could not read app2vec mapping %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getVectorForBundleId:(uint64_t)a1 into:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXApp2VecMapping.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];
}

@end