@interface NWHTTPConnectionInfo
@end

@implementation NWHTTPConnectionInfo

void __52___NWHTTPConnectionInfo_sendPingWithReceiveHandler___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    if (v4)
    {
      v6 = *(v4 + 16);
    }

    else
    {
      v6 = 0;
    }

    v7 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52___NWHTTPConnectionInfo_sendPingWithReceiveHandler___block_invoke_3;
    v12[3] = &unk_1E6A3BAB0;
    v8 = v13;
    v13[0] = *(a1 + 40);
    v13[1] = a3;
    if (!v6)
    {
      goto LABEL_15;
    }

LABEL_14:
    [(NWURLSessionDelegateQueue *)*(v6 + 56) runDelegateBlock:v7];
    goto LABEL_15;
  }

  if (v4)
  {
    v9 = *(v4 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (nw_http_connection_metadata_get_is_closed(v9))
  {
    v10 = 57;
  }

  else
  {
    v10 = 45;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v6 = *(v11 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v14;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52___NWHTTPConnectionInfo_sendPingWithReceiveHandler___block_invoke_2;
  v14[3] = &unk_1E6A3CEC0;
  v8 = &v15;
  v15 = *(a1 + 40);
  v16 = v10;
  if (v6)
  {
    goto LABEL_14;
  }

LABEL_15:
}

void __52___NWHTTPConnectionInfo_sendPingWithReceiveHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:0];
  (*(v1 + 16))(v1, v2, 0.0);
}

uint64_t __52___NWHTTPConnectionInfo_sendPingWithReceiveHandler___block_invoke_3(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v4 = dword_1ED4117CC;
  }

  a2.n128_f64[0] = (v3 * time_base / v4) / 1000000000.0;
  v5 = *(v2 + 16);

  return v5(v2, 0, a2);
}

@end