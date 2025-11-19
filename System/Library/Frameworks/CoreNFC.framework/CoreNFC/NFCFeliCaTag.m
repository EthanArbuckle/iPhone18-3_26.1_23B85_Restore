@interface NFCFeliCaTag
- (id)copyWithZone:(_NSZone *)a3;
- (void)pollingWithSystemCode:(id)a3 requestCode:(int64_t)a4 timeSlot:(int64_t)a5 completionHandler:(id)a6;
- (void)readWithoutEncryptionWithServiceCodeList:(id)a3 blockList:(id)a4 completionHandler:(id)a5;
- (void)requestResponseWithCompletionHandler:(id)a3;
- (void)requestServiceV2WithNodeCodeList:(id)a3 completionHandler:(id)a4;
- (void)requestServiceWithNodeCodeList:(id)a3 completionHandler:(id)a4;
- (void)requestSpecificationVersionWithCompletionHandler:(id)a3;
- (void)requestSystemCodeWithCompletionHandler:(id)a3;
- (void)resetModeWithCompletionHandler:(id)a3;
- (void)sendFeliCaCommandPacket:(id)a3 completionHandler:(id)a4;
- (void)writeWithoutEncryptionWithServiceCodeList:(id)a3 blockList:(id)a4 blockData:(id)a5 completionHandler:(id)a6;
@end

@implementation NFCFeliCaTag

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = NFCFeliCaTag;
  return [(NFCTag *)&v4 copyWithZone:a3];
}

- (void)pollingWithSystemCode:(id)a3 requestCode:(int64_t)a4 timeSlot:(int64_t)a5 completionHandler:(id)a6
{
  v7 = a5;
  v8 = a4;
  v11 = a3;
  v12 = a6;
  v13 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag pollingWithSystemCode:requestCode:timeSlot:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  if ([v11 length] == 2)
  {
    v14 = [v11 bytes];
    LOBYTE(state.opaque[0]) = 0;
    BYTE1(state.opaque[0]) = *v14;
    v15 = v14[1];
    BYTE2(state.opaque[0]) = v14[1];
    BYTE3(state.opaque[0]) = v8;
    BYTE4(state.opaque[0]) = v7;
    if (BYTE1(state.opaque[0]) == 255 || v15 == 255)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_2372A7B5C;
      v19[3] = &unk_278A29BE8;
      v19[4] = self;
      v20 = v12;
      v21 = a2;
      [(NFCTag *)self dispatchOnDelegateQueueAsync:v19];
      v16 = v20;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&state length:5];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2372A7D28;
      v17[3] = &unk_278A29C10;
      v18 = v12;
      [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v16 completionHandler:v17];
    }
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2372A7990;
    v22[3] = &unk_278A29BE8;
    v22[4] = self;
    v23 = v12;
    v24 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v22];
  }
}

- (void)requestServiceWithNodeCodeList:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestServiceWithNodeCodeList:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if ([v7 count] && objc_msgSend(v7, "count") < 0x21)
  {
    v21 = a2;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          if ([v19 length] != 2)
          {
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = sub_2372A8434;
            v24[3] = &unk_278A29BE8;
            v24[4] = self;
            v25 = v8;
            v26 = v21;
            [(NFCTag *)self dispatchOnDelegateQueueAsync:v24];

            goto LABEL_5;
          }

          [v11 appendData:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(state.opaque[0]) = 2;
    [v10 appendBytes:&state length:1];
    v20 = [(NFCTag *)self identifier];
    [v10 appendData:v20];

    LOBYTE(state.opaque[0]) = [v14 count];
    [v10 appendBytes:&state length:1];
    [v10 appendData:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2372A85E4;
    v22[3] = &unk_278A29C10;
    v23 = v8;
    [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v10 completionHandler:v22];
    v12 = v23;
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2372A8284;
    v31[3] = &unk_278A29BE8;
    v31[4] = self;
    v32 = v8;
    v33 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v31];
    v12 = v32;
  }

LABEL_5:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestResponseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestResponseWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  LOBYTE(state.opaque[0]) = 4;
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
  v7 = [(NFCTag *)self identifier];
  [v6 appendData:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372A8940;
  v9[3] = &unk_278A29C10;
  v10 = v4;
  v8 = v4;
  [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v6 completionHandler:v9];
}

- (void)readWithoutEncryptionWithServiceCodeList:(id)a3 blockList:(id)a4 completionHandler:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag readWithoutEncryptionWithServiceCodeList:blockList:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  if ([v9 count] && objc_msgSend(v9, "count") < 0x11)
  {
    v32 = a2;
    v13 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v46;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v45 + 1) + 8 * i);
          if ([v19 length] != 2)
          {
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = sub_2372A910C;
            v42[3] = &unk_278A29BE8;
            v42[4] = self;
            v43 = v11;
            v44 = v32;
            [(NFCTag *)self dispatchOnDelegateQueueAsync:v42];

            v20 = v14;
            goto LABEL_25;
          }

          [v13 appendData:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v30 = v11;

    v20 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = v10;
    v21 = v10;
    v22 = [v21 countByEnumeratingWithState:&v38 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v39;
      while (2)
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v38 + 1) + 8 * j);
          if ([v26 length] != 2 && objc_msgSend(v26, "length") != 3)
          {
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = sub_2372A92C4;
            v35[3] = &unk_278A29BE8;
            v11 = v30;
            v35[4] = self;
            v36 = v30;
            v37 = v32;
            [(NFCTag *)self dispatchOnDelegateQueueAsync:v35];

            goto LABEL_24;
          }

          [v20 appendData:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v38 objects:v53 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(state.opaque[0]) = 6;
    v27 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
    v28 = [(NFCTag *)self identifier];
    [v27 appendData:v28];

    LOBYTE(state.opaque[0]) = [v14 count];
    [v27 appendBytes:&state length:1];
    [v27 appendData:v13];
    LOBYTE(state.opaque[0]) = [v21 count];
    [v27 appendBytes:&state length:1];
    [v27 appendData:v20];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2372A947C;
    v33[3] = &unk_278A29C10;
    v11 = v30;
    v34 = v30;
    [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v27 completionHandler:v33];

LABEL_24:
    v10 = v31;
LABEL_25:
  }

  else
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_2372A8F54;
    v49[3] = &unk_278A29BE8;
    v49[4] = self;
    v50 = v11;
    v51 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v49];
    v13 = v50;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)writeWithoutEncryptionWithServiceCodeList:(id)a3 blockList:(id)a4 blockData:(id)a5 completionHandler:(id)a6
{
  v80 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag writeWithoutEncryptionWithServiceCodeList:blockList:blockData:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[1] = 0;
  state.opaque[0] = 0;
  os_activity_scope_enter(v15, &state);
  os_activity_scope_leave(&state);

  if ([v11 count] && objc_msgSend(v11, "count") < 0x11)
  {
    v18 = [v12 count];
    if (v18 == [v13 count])
    {
      if ([v12 count] < 0x100)
      {
        v41 = v13;
        v16 = objc_opt_new();
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        obj = v11;
        v19 = [obj countByEnumeratingWithState:&v63 objects:v79 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v64;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v64 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v63 + 1) + 8 * i);
              if ([v23 length] != 2)
              {
                v60[0] = MEMORY[0x277D85DD0];
                v60[1] = 3221225472;
                v60[2] = sub_2372AA32C;
                v60[3] = &unk_278A29BE8;
                v60[4] = self;
                v61 = v14;
                v62 = a2;
                [(NFCTag *)self dispatchOnDelegateQueueAsync:v60];
                v37 = v61;
                v24 = obj;
                goto LABEL_39;
              }

              [v16 appendData:v23];
            }

            v20 = [obj countByEnumeratingWithState:&v63 objects:v79 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v24 = objc_opt_new();
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v39 = v12;
        v42 = v12;
        v25 = [v42 countByEnumeratingWithState:&v56 objects:v78 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v57;
          while (2)
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v57 != v27)
              {
                objc_enumerationMutation(v42);
              }

              v29 = *(*(&v56 + 1) + 8 * j);
              if ([v29 length] != 2 && objc_msgSend(v29, "length") != 3)
              {
                v53[0] = MEMORY[0x277D85DD0];
                v53[1] = 3221225472;
                v53[2] = sub_2372AA4CC;
                v53[3] = &unk_278A29BE8;
                v53[4] = self;
                v54 = v14;
                v55 = a2;
                [(NFCTag *)self dispatchOnDelegateQueueAsync:v53];

                v37 = v42;
                goto LABEL_37;
              }

              [v24 appendData:v29];
            }

            v26 = [v42 countByEnumeratingWithState:&v56 objects:v78 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v38 = objc_opt_new();
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v40 = v41;
        v30 = [v40 countByEnumeratingWithState:&v49 objects:v77 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v50;
          while (2)
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v50 != v32)
              {
                objc_enumerationMutation(v40);
              }

              v34 = *(*(&v49 + 1) + 8 * k);
              if ([v34 length] != 16)
              {
                v46[0] = MEMORY[0x277D85DD0];
                v46[1] = 3221225472;
                v46[2] = sub_2372AA66C;
                v46[3] = &unk_278A29BE8;
                v46[4] = self;
                v47 = v14;
                v48 = a2;
                [(NFCTag *)self dispatchOnDelegateQueueAsync:v46];

                v37 = v38;
                v12 = v39;
                goto LABEL_39;
              }

              [v24 appendData:v34];
            }

            v31 = [v40 countByEnumeratingWithState:&v49 objects:v77 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }
        }

        LOBYTE(state.opaque[0]) = 8;
        v35 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
        v36 = [(NFCTag *)self identifier];
        [v35 appendData:v36];

        LOBYTE(state.opaque[0]) = [obj count];
        [v35 appendBytes:&state length:1];
        [v35 appendData:v16];
        LOBYTE(state.opaque[0]) = [v42 count];
        [v35 appendBytes:&state length:1];
        [v35 appendData:v24];
        v37 = v38;
        [v35 appendData:v38];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = sub_2372AA80C;
        v44[3] = &unk_278A29C10;
        v45 = v14;
        [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v35 completionHandler:v44];

LABEL_37:
        v12 = v39;
LABEL_39:

        v13 = v41;
      }

      else
      {
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = sub_2372AA18C;
        v67[3] = &unk_278A29BE8;
        v67[4] = self;
        v68 = v14;
        v69 = a2;
        [(NFCTag *)self dispatchOnDelegateQueueAsync:v67];
        v16 = v68;
      }
    }

    else
    {
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = sub_2372A9FEC;
      v70[3] = &unk_278A29BE8;
      v71 = v14;
      v70[4] = self;
      v72 = a2;
      [(NFCTag *)self dispatchOnDelegateQueueAsync:v70];
      v16 = v71;
    }
  }

  else
  {
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_2372A9E4C;
    v73[3] = &unk_278A29BE8;
    v74 = v14;
    v73[4] = self;
    v75 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v73];
    v16 = v74;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)requestSystemCodeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestSystemCodeWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  LOBYTE(state.opaque[0]) = 12;
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
  v7 = [(NFCTag *)self identifier];
  [v6 appendData:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AAA88;
  v9[3] = &unk_278A29C10;
  v10 = v4;
  v8 = v4;
  [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v6 completionHandler:v9];
}

- (void)requestServiceV2WithNodeCodeList:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestServiceV2WithNodeCodeList:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if ([v7 count] && objc_msgSend(v7, "count") < 0x21)
  {
    v21 = a2;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          if ([v19 length] != 2)
          {
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = sub_2372AB1E0;
            v24[3] = &unk_278A29BE8;
            v24[4] = self;
            v25 = v8;
            v26 = v21;
            [(NFCTag *)self dispatchOnDelegateQueueAsync:v24];

            goto LABEL_5;
          }

          [v11 appendData:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(state.opaque[0]) = 50;
    [v10 appendBytes:&state length:1];
    v20 = [(NFCTag *)self identifier];
    [v10 appendData:v20];

    LOBYTE(state.opaque[0]) = [v14 count];
    [v10 appendBytes:&state length:1];
    [v10 appendData:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2372AB3B8;
    v22[3] = &unk_278A29C10;
    v23 = v8;
    [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v10 completionHandler:v22];
    v12 = v23;
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2372AB008;
    v31[3] = &unk_278A29BE8;
    v31[4] = self;
    v32 = v8;
    v33 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v31];
    v12 = v32;
  }

LABEL_5:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestSpecificationVersionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestSpecificationVersionWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = objc_opt_new();
  v11 = 60;
  [v6 appendBytes:&v11 length:1];
  v7 = [(NFCTag *)self identifier];
  [v6 appendData:v7];

  LOWORD(state.opaque[0]) = 0;
  [v6 appendBytes:&state length:2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AB8C0;
  v9[3] = &unk_278A29C10;
  v10 = v4;
  v8 = v4;
  [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v6 completionHandler:v9];
}

- (void)resetModeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag resetModeWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = objc_opt_new();
  v11 = 62;
  [v6 appendBytes:&v11 length:1];
  v7 = [(NFCTag *)self identifier];
  [v6 appendData:v7];

  LOWORD(state.opaque[0]) = 0;
  [v6 appendBytes:&state length:2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372ABD64;
  v9[3] = &unk_278A29C10;
  v10 = v4;
  v8 = v4;
  [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v6 completionHandler:v9];
}

- (void)sendFeliCaCommandPacket:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag sendFeliCaCommandPacket:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  if ([v7 length] && objc_msgSend(v7, "length") < 0xFF)
  {
    if (*[v7 bytes] || objc_msgSend(v7, "length") == 5)
    {
      LOBYTE(state.opaque[0]) = [v7 length] + 1;
      v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
      [v11 appendData:v7];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_2372AC320;
      v12[3] = &unk_278A29C10;
      v13 = v8;
      [(NFCTag *)self _transceiveWithData:v11 completionHandler:v12];

      goto LABEL_8;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2372AC2A0;
    v14[3] = &unk_278A29C38;
    v15 = v8;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v14];
    v10 = v15;
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2372AC0F0;
    v16[3] = &unk_278A29BE8;
    v16[4] = self;
    v17 = v8;
    v18 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v16];
    v10 = v17;
  }

LABEL_8:
}

@end