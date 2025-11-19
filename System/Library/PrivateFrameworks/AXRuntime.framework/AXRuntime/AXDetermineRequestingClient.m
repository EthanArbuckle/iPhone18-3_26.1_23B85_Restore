@interface AXDetermineRequestingClient
@end

@implementation AXDetermineRequestingClient

void ___AXDetermineRequestingClient_block_invoke()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  memset(v26, 0, sizeof(v26));
  proc_name(v0, v26, 0x100u);
  if (LODWORD(v26[0]) == 7630710)
  {
    v24 = 0x1EBDE6000uLL;
    v25 = 3;
    goto LABEL_89;
  }

  v1 = *&v26[0] == 0x7265747069726373 && WORD4(v26[0]) == 50;
  if (v1 || (*&v26[0] == 0x616D6F7475616975 ? (v2 = *(v26 + 6) == 0x646E6F6974616DLL) : (v2 = 0), v2 || (*&v26[0] == 0x6F626E7532616975 ? (v3 = DWORD2(v26[0]) == 6579576) : (v3 = 0), v3)))
  {
    v24 = 0x1EBDE6000;
    v25 = 1;
LABEL_89:
    *(v24 + 3600) = v25;
    return;
  }

  if (*&v26[0] == 0x7669747369737361 && *(&v26[0] + 1) == 0x646863756F7465)
  {
    _AXDetermineRequestingClient__sIsAST = 1;
    return;
  }

  if (*&v26[0] == 0x616E616D74736574 && *(v26 + 5) == 0x64726567616E61)
  {
    v24 = 0x1EBDE6000;
    v25 = 2;
    goto LABEL_89;
  }

  if (!(*&v26[0] ^ 0x6474696475617861 | BYTE8(v26[0])))
  {
    v24 = 0x1EBDE6000;
    v25 = 12;
    goto LABEL_89;
  }

  if (*&v26[0] == 0x41646E616D6D6F43 && *(&v26[0] + 1) == 0x6F72746E6F43646ELL && LOWORD(v26[1]) == 108)
  {
    v24 = 0x1EBDE6000;
    v25 = 5;
    goto LABEL_89;
  }

  if (*&v26[0] == 0x6279654B6C6C7546 && *(&v26[0] + 1) == 0x656363416472616FLL && *(v26 + 11) == 0x73736563634164)
  {
    v24 = 0x1EBDE6000;
    v25 = 10;
    goto LABEL_89;
  }

  if (*&v26[0] == 0x6F42686374656B53 && DWORD2(v26[0]) == 6582881)
  {
    v24 = 0x1EBDE6000;
    v25 = 6;
    goto LABEL_89;
  }

  if (LODWORD(v26[0]) == 1768978772 && *(v26 + 3) == 7631721)
  {
    v24 = 0x1EBDE6000;
    v25 = 8;
    goto LABEL_89;
  }

  if (LODWORD(v26[0]) == 1952675937 && WORD2(v26[0]) == 108)
  {
    v24 = 0x1EBDE6000;
    v25 = 13;
    goto LABEL_89;
  }

  if (*&v26[0] == 0x6F436E6565726353 && *(&v26[0] + 1) == 0x797469756E69746ELL && *(v26 + 14) == 0x6C6C6568537974)
  {
    v24 = 0x1EBDE6000;
    v25 = 16;
    goto LABEL_89;
  }

  v17 = *&v26[0] == 0x6C7070612E6D6F63 && *(&v26[0] + 1) == 0x7373656363612E65 && *&v26[1] == 0x2E7974696C696269 && *(&v26[1] + 1) == 0x69737365636341;
  if (v17 || (*&v26[0] == 0x6269737365636341 ? (v18 = *(&v26[0] + 1) == 0x5349557974696C69) : (v18 = 0), v18 ? (v19 = *(v26 + 14) == 0x72657672655349) : (v19 = 0), v19))
  {
    v24 = 0x1EBDE6000;
    v25 = 9999;
    goto LABEL_89;
  }

  if (*&v26[0] == 0x6E6F436863746157 && *(v26 + 5) == 0x6C6F72746E6F43)
  {
    v24 = 0x1EBDE6000;
    v25 = 14;
    goto LABEL_89;
  }

  if (*&v26[0] == 0x6269737365636341 && *(&v26[0] + 1) == 0x6165527974696C69 && *&v26[1] == 0x534F695F726564)
  {
    v24 = 0x1EBDE6000;
    v25 = 19;
    goto LABEL_89;
  }

  v23 = AXRuntimeLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    ___AXDetermineRequestingClient_block_invoke_cold_1(v26, v23);
  }
}

void ___AXDetermineRequestingClient_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_ERROR, "Unknown client: %s", &v2, 0xCu);
}

@end