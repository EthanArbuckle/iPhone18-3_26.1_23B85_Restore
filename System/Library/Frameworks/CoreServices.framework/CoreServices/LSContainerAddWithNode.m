@interface LSContainerAddWithNode
@end

@implementation LSContainerAddWithNode

void ___LSContainerAddWithNode_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v2 = *(a1 + 32);
  v43 = 0;
  v3 = _LSCreateContainerNodesAndFlagsForNode(v2, &v46, &v45, &v44, &v43);
  v4 = v43;
  if (v46)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v42 = v4;
    v6 = [v46 bookmarkDataRelativeToNode:0 error:&v42];
    v7 = v42;

    v3 = v6 != 0;
    v4 = v7;
  }

  else
  {
    v6 = 0;
  }

  if (!v3 || v45 == 0)
  {
    v9 = 0;
  }

  else
  {
    v41 = v4;
    v9 = [v45 bookmarkDataRelativeToNode:0 error:&v41];
    v10 = v41;

    if (!v9)
    {
      v11 = _LSDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        *buf = 138478083;
        *&buf[4] = v12;
        *&buf[12] = 2113;
        *&buf[14] = v45;
        _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_INFO, "_LSContainerAddWithNode(%{private}@, failed to get bookmarkData for diskImageNode %{private}@ but registering this container anyway.", buf, 0x16u);
      }

      v9 = 0;
    }

    v4 = v10;
  }

  v40 = 0;
  v13 = v46;
  if (v46)
  {
    v14 = v3;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v39 = v4;
    v15 = [v46 getVolumeIdentifier:&v40 error:&v39];
    v37 = v39;

    if (v15)
    {
      v13 = v46;
      v16 = v40;
LABEL_26:
      v17 = v44;
      v18 = *(a1 + 56);
      v38 = *(a1 + 40);
      v19 = v13;
      v36 = v6;
      v20 = v6;
      v21 = v9;
      v22 = v38;
      MEMORY[0x1865D7C40](v22, v23);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke;
      v50 = &unk_1E6A1B400;
      v24 = v19;
      v56 = v17;
      v51 = v24;
      v55 = v16;
      v25 = v22;
      v54 = v38;
      v26 = v20;
      v52 = v26;
      v27 = v21;
      v53 = v27;
      v28 = MEMORY[0x1865D71B0](buf);
      v6 = v36;
      v29 = v28;
      if (v18)
      {
        (*(v28 + 16))(v28);
      }

      else
      {
        v34 = +[LSDBExecutionContext sharedServerInstance];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_42;
        v47[3] = &unk_1E6A1A660;
        v48 = v29;
        [(LSDBExecutionContext *)v34 performAsyncWrite:v47];
      }

      v4 = v37;
      goto LABEL_34;
    }

    v4 = v37;
  }

  else if (v3)
  {
    v16 = 0;
    v37 = v4;
    goto LABEL_26;
  }

  v30 = _LSDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = *(a1 + 32);
    v32 = *(a1 + 56);
    *buf = 138478083;
    *&buf[4] = v31;
    *&buf[12] = 1024;
    *&buf[14] = v32;
    _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_INFO, "_LSContainerAddWithNode(%{private}@ sync=%{BOOL}d) failed to add container.", buf, 0x12u);
  }

  v33 = (*(*(a1 + 40) + 16))();
LABEL_34:
  MEMORY[0x1865D7C50](v33);

  v35 = *MEMORY[0x1E69E9840];
}

@end