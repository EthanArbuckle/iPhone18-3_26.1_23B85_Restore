@interface AFClientLite
- (AFClientLite)init;
- (void)dealloc;
- (void)handleOneWayCommand:(id)a3 commandHandler:(id)a4 completion:(id)a5;
@end

@implementation AFClientLite

- (void)handleOneWayCommand:(id)a3 commandHandler:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[AFClientLite handleOneWayCommand:commandHandler:completion:]";
    v15 = 2048;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s %p %@", &v13, 0x20u);
  }

  [(AFClientLite *)self _handleCommand:v8 afterCurrentRequest:1 isOneWay:1 commandHandler:v9 completion:v10];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFClientLite dealloc]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = AFClientLite;
  [(AFClientLite *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (AFClientLite)init
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AFClientLite;
  v3 = [(AFClientLite *)&v19 init];
  if (v3)
  {
    if (v2 && (memset(&v20, 0, sizeof(v20)), dladdr(v2, &v20)))
    {
      if (v20.dli_fname && *v20.dli_fname)
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        v5 = [v4 initWithUTF8String:v20.dli_fname];
      }

      else
      {
        v5 = 0;
      }

      if (v20.dli_sname && *v20.dli_sname)
      {
        v7 = objc_alloc(MEMORY[0x1E696AEC0]);
        v8 = [v7 initWithUTF8String:v20.dli_sname];
      }

      else
      {
        v8 = 0;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __20__AFClientLite_init__block_invoke;
      v16[3] = &unk_1E7347250;
      v17 = v5;
      v18 = v8;
      v9 = v8;
      v10 = v5;
      v6 = [AFCallSiteInfo newWithBuilder:v16];
    }

    else
    {
      v6 = 0;
    }

    initiationCallSiteInfo = v3->_initiationCallSiteInfo;
    v3->_initiationCallSiteInfo = v6;

    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v13 = v3->_initiationCallSiteInfo;
      LODWORD(v20.dli_fname) = 136315650;
      *(&v20.dli_fname + 4) = "[AFClientLite init]";
      WORD2(v20.dli_fbase) = 2048;
      *(&v20.dli_fbase + 6) = v3;
      HIWORD(v20.dli_sname) = 2112;
      v20.dli_saddr = v13;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %p (Caller = %@)", &v20, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

void __20__AFClientLite_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setImagePath:v3];
  [v4 setSymbolName:*(a1 + 40)];
}

@end