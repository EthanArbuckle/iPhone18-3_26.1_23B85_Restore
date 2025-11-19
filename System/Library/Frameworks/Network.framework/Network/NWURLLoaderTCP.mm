@interface NWURLLoaderTCP
- (OS_nw_connection)underlyingConnection;
- (OS_sec_trust)peerTrust;
- (id)errorForNWError:(id *)a1;
- (void)configureTLS:(uint64_t)a1;
- (void)readDataOfMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5;
- (void)readResponse:(id)a3;
- (void)start:(id)a3;
- (void)stop;
- (void)updateClient:(id)a3;
- (void)writeData:(id)a3 complete:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation NWURLLoaderTCP

- (OS_nw_connection)underlyingConnection
{
  if (self)
  {
    self = self->_connection;
  }

  return self;
}

- (void)writeData:(id)a3 complete:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __55__NWURLLoaderTCP_writeData_complete_completionHandler___block_invoke;
  v20 = &unk_1E6A39CC0;
  v21 = self;
  v10 = v8;
  v22 = v10;
  v24 = a4;
  v11 = v9;
  v23 = v11;
  v12 = _Block_copy(&v17);
  v13 = v12;
  if (!self)
  {
    pendingWork = 0;
    goto LABEL_6;
  }

  if (!self->_ready)
  {
    pendingWork = self->_pendingWork;
LABEL_6:
    v15 = pendingWork;
    v16 = _Block_copy(v13);
    [(NSMutableArray *)v15 addObject:v16, v17, v18, v19, v20, v21, v22];

    goto LABEL_4;
  }

  (*(v12 + 2))(v12);
LABEL_4:
}

void __55__NWURLLoaderTCP_writeData_complete_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 64);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__NWURLLoaderTCP_writeData_complete_completionHandler___block_invoke_2;
  v5[3] = &unk_1E6A33F60;
  v5[4] = v1;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  nw_connection_send(v2, v4, &__block_literal_global_8_44676, v3, v5);
}

void __55__NWURLLoaderTCP_writeData_complete_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (!v3)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_11;
  }

  v4 = *(a1 + 32);
  if (v4 && *(v4 + 72))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v6 = [(NWURLLoaderTCP *)*(a1 + 32) errorForNWError:v3];
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_storeStrong((v7 + 72), v6);
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (!v4)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  v8 = *(v4 + 72);
LABEL_10:
  (*(v5 + 16))(v5, v8);
LABEL_11:
}

- (id)errorForNWError:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [NWURLError alloc];
    v5 = [v2[5] loaderTask];
    v2 = [(NWURLError *)v4 initWithNWError:v3 forLoader:v2 andTask:v5];
  }

  return v2;
}

- (OS_sec_trust)peerTrust
{
  if (self)
  {
    self = self->_peerTrustInternal;
  }

  return self;
}

- (void)readDataOfMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __84__NWURLLoaderTCP_readDataOfMinimumIncompleteLength_maximumLength_completionHandler___block_invoke;
  v18 = &unk_1E6A2D7C0;
  v19 = self;
  v21 = a3;
  v22 = a4;
  v9 = v8;
  v20 = v9;
  v10 = _Block_copy(&v15);
  v11 = v10;
  if (!self)
  {
    pendingWork = 0;
    goto LABEL_6;
  }

  if (!self->_ready)
  {
    pendingWork = self->_pendingWork;
LABEL_6:
    v13 = pendingWork;
    v14 = _Block_copy(v11);
    [(NSMutableArray *)v13 addObject:v14, v15, v16, v17, v18, v19];

    goto LABEL_4;
  }

  (*(v10 + 2))(v10);
LABEL_4:
}

void __84__NWURLLoaderTCP_readDataOfMinimumIncompleteLength_maximumLength_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 64);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__NWURLLoaderTCP_readDataOfMinimumIncompleteLength_maximumLength_completionHandler___block_invoke_2;
  v5[3] = &unk_1E6A3A670;
  v5[4] = v1;
  v6 = *(a1 + 40);
  nw_connection_receive_internal(v2, 0, v3, v4, v5);
}

void __84__NWURLLoaderTCP_readDataOfMinimumIncompleteLength_maximumLength_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = a2;
  v8 = a5;
  if (!v8)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

  v9 = *(a1 + 32);
  v10 = v15;
  if (v9 && *(v9 + 72))
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v12 = [(NWURLLoaderTCP *)*(a1 + 32) errorForNWError:v8];
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_storeStrong((v13 + 72), v12);
    }

    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (!v9)
    {
      v14 = 0;
      v10 = v15;
      goto LABEL_11;
    }

    v10 = v15;
  }

  v14 = *(v9 + 72);
LABEL_11:
  (*(v11 + 16))(v11, v10, a4, v14);
LABEL_12:
}

- (void)readResponse:(id)a3
{
  v3 = a3;
  _os_crash();
  __break(1u);
}

- (void)updateClient:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_storeStrong(&self->_client, a3);
  }
}

- (void)stop
{
  if (self)
  {
    v3 = self->_connection;
    if (v3)
    {
      cancelled = self->_cancelled;

      if (!cancelled)
      {
        self->_cancelled = 1;
        nw_connection_cancel(self->_connection);
      }
    }

    client = self->_client;
    self->_client = 0;
  }
}

- (void)start:(id)a3
{
  if (self)
  {
    hostname = self->_hostname;
  }

  else
  {
    hostname = 0;
  }

  v6 = hostname;
  v7 = a3;
  v8 = [(NSString *)v6 UTF8String];
  if (self)
  {
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v8, LOWORD(self->_port));
    v10 = _Block_copy(&__block_literal_global_19409);
    if (self->_TLS)
    {
      self->_addedTLS = 1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __24__NWURLLoaderTCP_start___block_invoke;
      aBlock[3] = &unk_1E6A3A230;
      aBlock[4] = self;
      v11 = _Block_copy(aBlock);

      v10 = v11;
    }

    secure_tcp = nw_parameters_create_secure_tcp(v10, &__block_literal_global_498);
    configuration = self->_configuration;
  }

  else
  {
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v8, 0);
    v10 = _Block_copy(&__block_literal_global_19409);
    secure_tcp = nw_parameters_create_secure_tcp(v10, &__block_literal_global_498);
    configuration = 0;
  }

  [(NWURLSessionTaskConfiguration *)&configuration->super.isa configureParameters:?];
  v14 = nw_connection_create(host_with_numeric_port, secure_tcp);
  if (self)
  {
    connection = self->_connection;
    self->_connection = v14;

    v16 = self->_connection;
  }

  else
  {

    v16 = 0;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __24__NWURLLoaderTCP_start___block_invoke_3;
  handler[3] = &unk_1E6A3D820;
  handler[4] = self;
  nw_connection_set_state_changed_handler(v16, handler);
  if (self)
  {
    v17 = self->_connection;
  }

  else
  {
    v17 = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __24__NWURLLoaderTCP_start___block_invoke_4;
  v24[3] = &unk_1E6A313C0;
  v24[4] = self;
  nw_connection_set_better_path_available_handler(v17, v24);
  if (self)
  {
    v18 = self->_connection;
  }

  else
  {
    v18 = 0;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __24__NWURLLoaderTCP_start___block_invoke_5;
  v23[3] = &unk_1E6A313C0;
  v23[4] = self;
  nw_connection_set_viability_changed_handler(v18, v23);
  if (self)
  {
    v19 = self->_connection;
    nw_connection_set_queue(v19, self->_queue);

    v20 = self->_configuration;
    v21 = self->_connection;
  }

  else
  {
    nw_connection_set_queue(0, 0);
    v20 = 0;
    v21 = 0;
  }

  [(NWURLSessionTaskConfiguration *)v20 configureConnection:v21];

  if (self)
  {
    v22 = self->_connection;
  }

  else
  {
    v22 = 0;
  }

  nw_connection_start(v22);
  v7[2](v7);
}

void __24__NWURLLoaderTCP_start___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [(NWURLLoaderTCP *)v2 configureTLS:v3];
}

void __24__NWURLLoaderTCP_start___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v24 = *(a1 + 32);
      if (v24)
      {
        [*(v24 + 40) loaderWaitingForConnectivity];
      }

      else
      {
        [0 loaderWaitingForConnectivity];
      }
    }

    else if (a2 == 2)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(v6 + 40);
      }

      else
      {
        v7 = 0;
      }

      [v7 loaderToggleRequestTimeoutTimer:1];
    }

    goto LABEL_61;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      goto LABEL_61;
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[7];
    }

    v9 = v8;
    v10 = *(a1 + 32);
    if (v10 && (v11 = *(v10 + 56), *(v10 + 56) = 0, v11, (v12 = *(a1 + 32)) != 0))
    {
      v13 = *(v12 + 8);
      *(v12 + 8) = 1;
      if (v5)
      {
LABEL_14:
        v14 = *(a1 + 32);
        if (!v14 || !*(v14 + 72))
        {
          v15 = [(NWURLLoaderTCP *)v14 errorForNWError:v5];
          v16 = *(a1 + 32);
          if (v16)
          {
            objc_storeStrong((v16 + 72), v15);
          }
        }
      }
    }

    else
    {
      v13 = 0;
      if (v5)
      {
        goto LABEL_14;
      }
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = v9;
    v18 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v18)
    {
      v19 = *v50;
      do
      {
        v20 = 0;
        do
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(v17);
          }

          (*(*(*(&v49 + 1) + 8 * v20) + 16))(*(*(&v49 + 1) + 8 * v20));
          ++v20;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v18);
    }

    if (v13)
    {
      goto LABEL_32;
    }

    v21 = *(a1 + 32);
    if (!v21)
    {
      goto LABEL_67;
    }

    if (*(v21 + 9))
    {
LABEL_32:

      goto LABEL_61;
    }

    *(v21 + 9) = 1;
    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(v22 + 64);
    }

    else
    {
LABEL_67:
      v23 = 0;
    }

    nw_connection_cancel(v23);
    goto LABEL_32;
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = *(v25 + 40);
  }

  else
  {
    v26 = 0;
  }

  [v26 loaderConnectedWithHTTPConnectionMetadata:0 CNAMEChain:0 unlistedTracker:0];
  v27 = *(a1 + 32);
  if (v27)
  {
    if (*(v27 + 10) == 1 && (*(v27 + 11) & 1) == 0)
    {
      *(v27 + 11) = 1;
      v43 = nw_protocol_boringssl_copy_definition();
      options = nw_protocol_create_options(v43);

      v45 = *(a1 + 32);
      v46 = options;
      [(NWURLLoaderTCP *)v45 configureTLS:v46];

      v47 = *(a1 + 32);
      if (v47)
      {
        v48 = *(v47 + 64);
      }

      else
      {
        v48 = 0;
      }

      nw_connection_append_and_start_application_protocol(v48, v46);

      goto LABEL_61;
    }

    v27 = *(v27 + 64);
  }

  v28 = v27;
  v29 = nw_protocol_boringssl_copy_definition();
  v30 = nw_connection_copy_protocol_metadata(v28, v29);

  if (v30)
  {
    v31 = v30;
    v32 = sec_protocol_metadata_copy_sec_trust();
    v33 = *(a1 + 32);
    if (v33)
    {
      objc_storeStrong((v33 + 80), v32);
    }
  }

  v34 = *(a1 + 32);
  if (v34)
  {
    v34 = v34[7];
  }

  v35 = v34;
  v36 = *(a1 + 32);
  if (v36)
  {
    v37 = *(v36 + 56);
    *(v36 + 56) = 0;

    v38 = *(a1 + 32);
    if (v38)
    {
      *(v38 + 8) = 1;
    }
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v39 = v35;
  v40 = [v39 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v40)
  {
    v41 = *v54;
    do
    {
      v42 = 0;
      do
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(v39);
        }

        (*(*(*(&v53 + 1) + 8 * v42++) + 16))();
      }

      while (v40 != v42);
      v40 = [v39 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v40);
  }

LABEL_61:
}

uint64_t __24__NWURLLoaderTCP_start___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      v3 = *(v2 + 40);
    }

    else
    {
      v3 = 0;
    }

    return [v3 loaderBetterPathAvailable];
  }

  return result;
}

void __24__NWURLLoaderTCP_start___block_invoke_5(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (!v3 || !*(v3 + 72))
    {
      v4 = [NWURLError alloc];
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = v5[5];
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v8 = [v7 loaderTask];
      v9 = v5;
      v10 = v8;
      if (v4)
      {
        v11 = [(NWURLError *)v4 initWithErrorCode:-1005];
        v4 = v11;
        if (v11)
        {
          [(NWURLError *)v11 fillErrorForLoader:v9 andTask:v10];
        }
      }

      v12 = *(a1 + 32);
      if (v12)
      {
        objc_storeStrong((v12 + 72), v4);
      }

      v3 = *(a1 + 32);
      if (!v3)
      {
        goto LABEL_19;
      }
    }

    if (*(v3 + 9))
    {
      return;
    }

    *(v3 + 9) = 1;
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 64);
    }

    else
    {
LABEL_19:
      v14 = 0;
    }

    nw_connection_cancel(v14);
  }
}

- (void)configureTLS:(uint64_t)a1
{
  if (a1)
  {
    verify_block[0] = MEMORY[0x1E69E9820];
    verify_block[1] = 3221225472;
    verify_block[2] = __31__NWURLLoaderTCP_configureTLS___block_invoke;
    verify_block[3] = &unk_1E6A3A2A8;
    verify_block[4] = a1;
    v3 = *(a1 + 48);
    v4 = a2;
    sec_protocol_options_set_verify_block(v4, verify_block, v3);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __31__NWURLLoaderTCP_configureTLS___block_invoke_2;
    v5[3] = &unk_1E6A3A2F8;
    v5[4] = a1;
    sec_protocol_options_set_challenge_block(v4, v5, *(a1 + 48));
    [(NWURLSessionTaskConfiguration *)*(a1 + 32) configureSecProtocolOptions:v4 QUIC:0];
  }
}

uint64_t __31__NWURLLoaderTCP_configureTLS___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  return [v5 loaderDidReceiveServerTrustChallenge:a3 secProtocolMetadata:a2 completionHandler:a4];
}

void __31__NWURLLoaderTCP_configureTLS___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __31__NWURLLoaderTCP_configureTLS___block_invoke_3;
  handler[3] = &unk_1E6A3A2D0;
  v9 = v8;
  v14 = v9;
  sec_protocol_metadata_access_distinguished_names(v7, handler);

  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[5];
  }

  v11 = v10;
  v12 = [v9 copy];
  [v11 loaderDidReceiveClientCertificateChallenge:v12 completionHandler:v6];
}

@end