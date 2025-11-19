@interface NMSSHChannel
- (BOOL)downloadFile:(id)a3 to:(id)a4 progress:(id)a5;
- (BOOL)openChannel:(id *)a3;
- (BOOL)requestSizeWidth:(unint64_t)a3 height:(unint64_t)a4;
- (BOOL)sendEOF;
- (BOOL)startShell:(id *)a3;
- (BOOL)uploadFile:(id)a3 to:(id)a4 progress:(id)a5;
- (BOOL)write:(id)a3 error:(id *)a4 timeout:(id)a5;
- (BOOL)writeData:(id)a3 error:(id *)a4 timeout:(id)a5;
- (NMSSHChannel)initWithSession:(id)a3;
- (NMSSHChannelDelegate)delegate;
- (const)ptyTerminalName;
- (id)execute:(id)a3 error:(id *)a4 timeout:(id)a5;
- (id)readResponseWithError:(id *)a3 timeout:(id)a4 userInfo:(id)a5;
- (void)closeChannel;
- (void)closeShell;
- (void)executeCommandAsynchronously:(id)a3;
- (void)waitEOF;
@end

@implementation NMSSHChannel

- (NMSSHChannelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)downloadFile:(id)a3 to:(id)a4 progress:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NMSSHChannel *)self channel])
  {
    v11 = +[NMSSHLogger sharedLogger];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"The channel will be closed before continue"];
    [v11 logWarn:v12];

    if ([(NMSSHChannel *)self type]== 2)
    {
      [(NMSSHChannel *)self closeShell];
    }

    else
    {
      [(NMSSHChannel *)self closeChannel];
    }
  }

  v13 = [v9 stringByExpandingTildeInPath];

  if ([v13 hasSuffix:@"/"])
  {
    v14 = [v8 componentsSeparatedByString:@"/"];
    v15 = [v14 lastObject];
    v16 = [v13 stringByAppendingString:v15];

    v13 = v16;
  }

  v17 = [(NMSSHChannel *)self session];
  libssh2_session_set_blocking([v17 rawSession], 1);

  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  memset(v44, 0, sizeof(v44));
  v18 = [(NMSSHChannel *)self session];
  libssh2_scp_recv([v18 rawSession], objc_msgSend(v8, "UTF8String"), v44);
  v20 = v19;

  if (!v20)
  {
    v35 = +[NMSSHLogger sharedLogger];
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open SCP session"];
    [v35 logError:v36];

    v34 = 0;
    goto LABEL_29;
  }

  v43 = v8;
  [(NMSSHChannel *)self setChannel:v20];
  [(NMSSHChannel *)self setType:3];
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [v21 fileExistsAtPath:v13];

  if (v22)
  {
    v23 = +[NMSSHLogger sharedLogger];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"A file already exists at %@, it will be overwritten", v13];
    [v23 logInfo:v24];

    v25 = [MEMORY[0x277CCAA00] defaultManager];
    [v25 removeItemAtPath:v13 error:0];
  }

  v26 = open([v13 UTF8String], 513, 420);
  if (v45 < 1)
  {
LABEL_22:
    close(v26);
    [(NMSSHChannel *)self closeChannel];
    v34 = 1;
    goto LABEL_28;
  }

  v27 = 0;
  while (1)
  {
    v28 = [(NMSSHChannel *)self bufferSize];
    v29 = v28;
    v30 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v45 - v27 >= v28 ? v28 : v45 - v27;
    v32 = libssh2_channel_read_ex([(NMSSHChannel *)self channel], 0, v30, v31);
    v33 = v32;
    if (v32 < 1)
    {
      break;
    }

    if (write(v26, v30, v32) < v32)
    {
      v37 = @"Failed to write to local file";
      goto LABEL_26;
    }

    v27 += v33;
    if (v10 && (v10[2](v10, v27, v45) & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_21:
    bzero(v30, v29);
    if (v27 >= v45)
    {
      goto LABEL_22;
    }
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

  v37 = @"Failed to read SCP data";
LABEL_26:
  v38 = +[NMSSHLogger sharedLogger];
  v39 = [MEMORY[0x277CCACA8] stringWithFormat:v37];
  [v38 logError:v39];

LABEL_27:
  close(v26);
  [(NMSSHChannel *)self closeChannel];
  v34 = 0;
LABEL_28:
  v8 = v43;
LABEL_29:

  v40 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)uploadFile:(id)a3 to:(id)a4 progress:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NMSSHChannel *)self channel])
  {
    v11 = +[NMSSHLogger sharedLogger];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"The channel will be closed before continue"];
    [v11 logWarn:v12];

    if ([(NMSSHChannel *)self type]== 2)
    {
      [(NMSSHChannel *)self closeShell];
    }

    else
    {
      [(NMSSHChannel *)self closeChannel];
    }
  }

  v13 = [v8 stringByExpandingTildeInPath];

  if ([v9 hasSuffix:@"/"])
  {
    v14 = [v13 componentsSeparatedByString:@"/"];
    v15 = [v14 lastObject];
    v16 = [v9 stringByAppendingString:v15];

    v9 = v16;
  }

  v17 = fopen([v13 UTF8String], "rb");
  if (v17)
  {
    v18 = [(NMSSHChannel *)self session];
    libssh2_session_set_blocking([v18 rawSession], 1);

    memset(&v42, 0, sizeof(v42));
    stat([v13 UTF8String], &v42);
    v19 = [(NMSSHChannel *)self session];
    v20 = [v19 rawSession];
    v21 = [v9 UTF8String];
    v22 = libssh2_scp_send64(v20, v21, v42.st_mode & 0x1A4, v42.st_size, 0, 0);

    if (v22)
    {
      v41 = v17;
      v39 = v9;
      [(NMSSHChannel *)self setChannel:v22];
      [(NMSSHChannel *)self setType:3];
      v38 = &v38;
      v40 = [(NMSSHChannel *)self bufferSize];
      v23 = &v38 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = 0;
LABEL_10:
      v25 = fread(v23, 1uLL, v40, v41);
      LOBYTE(v17) = v25 == 0;
      if (v25)
      {
        v26 = v25;
        v27 = v23;
        while (1)
        {
          v28 = libssh2_channel_write_ex([(NMSSHChannel *)self channel], 0, v27, v26);
          if (v28 < 0)
          {
            break;
          }

          v29 = v28;
          v24 += v28;
          if (v10 && !v10[2](v10, v24))
          {
            goto LABEL_20;
          }

          v27 += v29;
          v26 -= v29;
          if (!v26)
          {
            goto LABEL_10;
          }
        }

        v34 = +[NMSSHLogger sharedLogger];
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed writing file"];
        [v34 logError:v35];

        LOBYTE(v17) = 0;
      }

      else
      {
LABEL_20:
        fclose(v41);
        if ([(NMSSHChannel *)self sendEOF])
        {
          [(NMSSHChannel *)self waitEOF];
        }
      }

      v9 = v39;
      [(NMSSHChannel *)self closeChannel];
    }

    else
    {
      v32 = +[NMSSHLogger sharedLogger];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open SCP session"];
      [v32 logError:v33];

      fclose(v17);
      LOBYTE(v17) = 0;
    }
  }

  else
  {
    v30 = +[NMSSHLogger sharedLogger];
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't read local file"];
    [v30 logError:v31];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)requestSizeWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v4 = libssh2_channel_request_pty_size_ex([(NMSSHChannel *)self channel], a3, a4, 0, 0);
  if (v4)
  {
    v5 = +[NMSSHLogger sharedLogger];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request size failed with error %i", v4];
    [v5 logError:v6];
  }

  return v4 == 0;
}

- (BOOL)writeData:(id)a3 error:(id *)a4 timeout:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(NMSSHChannel *)self openChannel:a4])
  {
    v10 = +[NMSSHLogger sharedLogger];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Writing %lu bytes", objc_msgSend(v8, "length")];
    [v10 logVerbose:v11];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__16466;
    v25 = __Block_byref_object_dispose__16467;
    v26 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    [v9 doubleValue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__NMSSHChannel_writeData_error_timeout___block_invoke;
    v17[3] = &unk_278C1B5A8;
    v17[4] = self;
    v20 = Current + v13;
    v18 = v9;
    v19 = &v21;
    [v8 enumerateByteRangesUsingBlock:v17];
    v14 = v22[5];
    v15 = v14 == 0;
    if (a4 && v14)
    {
      *a4 = v14;
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __40__NMSSHChannel_writeData_error_timeout___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = a4;
    v9 = 0;
    while (1)
    {
      while (1)
      {
        v10 = libssh2_channel_write_ex([*(a1 + 32) channel], 0, (a2 + v9), v6);
        if (v10 != -37)
        {
          break;
        }

        if ([*(a1 + 40) longValue] >= 1)
        {
          v11 = *(a1 + 56);
          if (v11 < CFAbsoluteTimeGetCurrent())
          {
            v15 = MEMORY[0x277CCA9B8];
            v33 = *MEMORY[0x277CCA450];
            v34[0] = @"Connection timed out";
            v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
            v17 = [v15 errorWithDomain:@"NMSSH" code:3 userInfo:v16];
            v18 = *(*(a1 + 48) + 8);
            v19 = *(v18 + 40);
            *(v18 + 40) = v17;

            if (!a5)
            {
              goto LABEL_12;
            }

            goto LABEL_11;
          }
        }

        v12 = [*(a1 + 32) session];
        Native = CFSocketGetNative([v12 socket]);
        v14 = [*(a1 + 32) session];
        waitsocket(Native, [v14 rawSession]);
      }

      if (v10 < 0)
      {
        break;
      }

      v9 += v10;
      v6 -= v10;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    v21 = +[NMSSHLogger sharedLogger];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error writing"];
    [v21 logError:v22];

    v23 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v24 = [*(a1 + 32) session];
    v25 = [v24 lastError];
    v26 = [v25 localizedDescription];
    v32 = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v28 = [v23 errorWithDomain:@"NMSSH" code:6 userInfo:v27];
    v29 = *(*(a1 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    if (a5)
    {
LABEL_11:
      *a5 = 1;
    }
  }

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)write:(id)a3 error:(id *)a4 timeout:(id)a5
{
  v8 = a5;
  v9 = [a3 dataUsingEncoding:4];
  LOBYTE(a4) = [(NMSSHChannel *)self writeData:v9 error:a4 timeout:v8];

  return a4;
}

- (void)closeShell
{
  v3 = [(NMSSHChannel *)self source];

  if (v3)
  {
    v4 = [(NMSSHChannel *)self source];
    dispatch_source_cancel(v4);
  }

  if ([(NMSSHChannel *)self type]== 2)
  {
    v5 = [(NMSSHChannel *)self session];
    libssh2_session_set_blocking([v5 rawSession], 1);

    [(NMSSHChannel *)self sendEOF];
  }

  [(NMSSHChannel *)self closeChannel];
}

- (BOOL)startShell:(id *)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = +[NMSSHLogger sharedLogger];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting shell"];
  [v5 logInfo:v6];

  if ([(NMSSHChannel *)self openChannel:a3])
  {
    v7 = [(NMSSHChannel *)self session];
    libssh2_session_set_blocking([v7 rawSession], 0);

    [(NMSSHChannel *)self setLastResponse:0];
    v8 = [(NMSSHChannel *)self session];
    Native = CFSocketGetNative([v8 socket]);
    v10 = dispatch_get_global_queue(2, 0);
    v11 = dispatch_source_create(MEMORY[0x277D85D28], Native, 0, v10);
    [(NMSSHChannel *)self setSource:v11];

    v12 = [(NMSSHChannel *)self source];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__NMSSHChannel_startShell___block_invoke;
    handler[3] = &unk_278C224A0;
    handler[4] = self;
    dispatch_source_set_event_handler(v12, handler);

    v13 = [(NMSSHChannel *)self source];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __27__NMSSHChannel_startShell___block_invoke_2;
    v30[3] = &unk_278C224A0;
    v30[4] = self;
    dispatch_source_set_cancel_handler(v13, v30);

    v14 = [(NMSSHChannel *)self source];
    dispatch_resume(v14);
    while (1)
    {

      v15 = libssh2_channel_process_startup([(NMSSHChannel *)self channel], "shell", 5u, 0, 0);
      if (v15 != -37)
      {
        break;
      }

      v14 = [(NMSSHChannel *)self session];
      v16 = CFSocketGetNative([v14 socket]);
      v17 = [(NMSSHChannel *)self session];
      waitsocket(v16, [v17 rawSession]);
    }

    v18 = v15;
    v19 = v15 == 0;
    v20 = +[NMSSHLogger sharedLogger];
    if (v18)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shell request error"];
      [v20 logError:v21];

      if (a3)
      {
        v22 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA450];
        v23 = [(NMSSHChannel *)self session];
        v24 = [v23 lastError];
        v25 = [v24 localizedDescription];
        v33[0] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        *a3 = [v22 errorWithDomain:@"NMSSH" code:5 userInfo:v26];
      }

      [(NMSSHChannel *)self closeShell];
    }

    else
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shell allocated"];
      [v20 logVerbose:v27];

      [(NMSSHChannel *)self setType:2];
    }
  }

  else
  {
    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

void __27__NMSSHChannel_startShell___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = +[NMSSHLogger sharedLogger];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data available on the socket!"];
  [v2 logVerbose:v3];

  v4 = [*(a1 + 32) bufferSize];
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(a1 + 32) channel])
  {
    goto LABEL_30;
  }

  v41 = sel_channel_didReadError_;
  v42 = sel_channel_didReadRawError_;
  v43 = sel_channel_didReadData_;
  v40 = @"Host EOF received, closing channel...";
  while (1)
  {
    v6 = libssh2_channel_read_ex([*(a1 + 32) channel], 0, v5, v4);
    v7 = libssh2_channel_read_ex([*(a1 + 32) channel], 1, v5, v4);
    v8 = v7;
    if (v6 < 0 && v7 < 0)
    {
      break;
    }

    if (v6 >= 1)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v5 length:v6];
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
      v11 = *(a1 + 32);
      v12 = [v10 copy];
      [v11 setLastResponse:v12];

      if (v10)
      {
        v13 = [*(a1 + 32) delegate];
        if (v13)
        {
          v14 = v13;
          v15 = [*(a1 + 32) delegate];
          v16 = objc_opt_respondsToSelector();

          if (v16)
          {
            v17 = [*(a1 + 32) delegate];
            v18 = *(a1 + 32);
            v19 = [v18 lastResponse];
            [v17 channel:v18 didReadData:v19];
          }
        }
      }

      v20 = [*(a1 + 32) delegate];
      if (v20)
      {
        v21 = v20;
        v22 = [*(a1 + 32) delegate];
        v23 = objc_opt_respondsToSelector();

        if (v23)
        {
          v24 = [*(a1 + 32) delegate];
          [v24 channel:*(a1 + 32) didReadRawData:v9];
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    }

    if (v7 >= 1)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v5 length:v7];
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
      if (v10)
      {
        v25 = [*(a1 + 32) delegate];
        if (v25)
        {
          v26 = v25;
          v27 = [*(a1 + 32) delegate];
          v28 = objc_opt_respondsToSelector();

          if (v28)
          {
            v29 = [*(a1 + 32) delegate];
            [v29 channel:*(a1 + 32) didReadError:v10];
          }
        }
      }

      v30 = [*(a1 + 32) delegate];
      if (v30)
      {
        v31 = v30;
        v32 = [*(a1 + 32) delegate];
        v33 = objc_opt_respondsToSelector();

        if (v33)
        {
          v24 = [*(a1 + 32) delegate];
          [v24 channel:*(a1 + 32) didReadRawError:v9];
LABEL_21:
        }
      }

LABEL_22:

      goto LABEL_23;
    }

    if (libssh2_channel_eof([*(a1 + 32) channel]) == 1)
    {
      goto LABEL_29;
    }

LABEL_23:
    if (![*(a1 + 32) channel])
    {
      goto LABEL_30;
    }
  }

  v34 = +[NMSSHLogger sharedLogger];
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Return code of response %ld, error %ld", v6, v8];
  [v34 logVerbose:v35];

  v40 = @"Error received, closing channel...";
  if (v6 == -43 || v8 == -43)
  {
LABEL_29:
    v36 = +[NMSSHLogger sharedLogger];
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:v40];
    [v36 logVerbose:v37];

    [*(a1 + 32) closeShell];
  }

LABEL_30:
  v38 = *MEMORY[0x277D85DE8];
}

void __27__NMSSHChannel_startShell___block_invoke_2(uint64_t a1)
{
  v2 = +[NMSSHLogger sharedLogger];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shell source cancelled"];
  [v2 logVerbose:v3];

  v4 = [*(a1 + 32) delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [*(a1 + 32) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 32) delegate];
      [v8 channelShellDidClose:*(a1 + 32)];
    }
  }
}

- (void)executeCommandAsynchronously:(id)a3
{
  v11 = a3;
  v4 = +[NMSSHLogger sharedLogger];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exec command %@", v11];
  [v4 logInfo:v5];

  if ([(NMSSHChannel *)self openChannel:0])
  {
    libssh2_channel_set_blocking([(NMSSHChannel *)self channel], 0);
    v6 = [(NMSSHChannel *)self channel];
    v7 = v11;
    v8 = [v11 UTF8String];
    v9 = v11;
    v10 = strlen([v11 UTF8String]);
    libssh2_channel_process_startup(v6, "exec", 4u, v8, v10);
    libssh2_channel_set_blocking([(NMSSHChannel *)self channel], 1);
  }
}

- (id)readResponseWithError:(id *)a3 timeout:(id)a4 userInfo:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [v9 mutableCopy];
  v11 = v10;
  v52 = v9;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
  }

  v59 = v12;

  v13 = [(NMSSHChannel *)self session];
  libssh2_session_set_blocking([v13 rawSession], 0);

  Current = CFAbsoluteTimeGetCurrent();
  [v8 doubleValue];
  v16 = Current + v15;
  v17 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v56 = *MEMORY[0x277CCA450];
  v54 = *MEMORY[0x277CCA470];
  v55 = v17;
  while (2)
  {
    v18 = [(NMSSHChannel *)self bufferSize];
    v53 = &v51;
    v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = [(NMSSHChannel *)self bufferSize];
    v57 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v20;
    do
    {
      v21 = libssh2_channel_read_ex([(NMSSHChannel *)self channel], 0, v19, v18);
      if (v21 >= 1)
      {
        [v17 appendBytes:v19 length:v21];
      }

      exit_status = libssh2_channel_get_exit_status([(NMSSHChannel *)self channel]);
      if (a3 && exit_status)
      {
        v23 = [(NMSSHChannel *)self channel];
        v24 = v57;
        v25 = v8;
        v26 = libssh2_channel_read_ex(v23, 1, v57, v58);
        v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v24 length:v26 encoding:4];
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = @"An unspecified error occurred";
        }

        v29 = a3;
        v30 = v59;
        [v59 setObject:v28 forKey:v56];
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zi", v26];
        [v30 setObject:v31 forKey:v54];

        v8 = v25;
        v32 = v30;
        a3 = v29;
        v17 = v55;
        *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NMSSH" code:0 userInfo:v32];
      }

      v33 = libssh2_channel_eof([(NMSSHChannel *)self channel]);
      if (!v21 || v33 == 1)
      {
        while (1)
        {
          v37 = libssh2_channel_read_ex([(NMSSHChannel *)self channel], 0, v19, v18);
          if (v37 < 1)
          {
            break;
          }

          [v17 appendBytes:v19 length:v37];
        }

LABEL_28:
        v40 = [v17 copy];
        [(NMSSHChannel *)self setLastResponse:v40];

        [(NMSSHChannel *)self closeChannel];
        v41 = [(NMSSHChannel *)self lastResponse];
        goto LABEL_29;
      }

      if ([v8 longValue] >= 1 && v16 < CFAbsoluteTimeGetCurrent())
      {
        if (a3)
        {
          v38 = v59;
          [v59 setObject:@"Connection timed out" forKey:v56];
          *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NMSSH" code:3 userInfo:v38];
        }

        while (1)
        {
          v39 = libssh2_channel_read_ex([(NMSSHChannel *)self channel], 0, v19, v18);
          if (v39 < 1)
          {
            break;
          }

          [v17 appendBytes:v19 length:v39];
        }

        goto LABEL_28;
      }
    }

    while (v21 > 0);
    if (v21 == -37)
    {
      v34 = [(NMSSHChannel *)self session];
      Native = CFSocketGetNative([v34 socket]);
      v36 = [(NMSSHChannel *)self session];
      waitsocket(Native, [v36 rawSession]);

      continue;
    }

    break;
  }

  if (a3)
  {
    v44 = [(NMSSHChannel *)self session];
    v45 = [v44 lastError];
    v46 = [v45 localizedDescription];
    v47 = a3;
    v48 = v59;
    [v59 setObject:v46 forKey:v56];

    *v47 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NMSSH" code:1 userInfo:v48];
    v17 = v55;
  }

  v49 = +[NMSSHLogger sharedLogger];
  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error fetching response from command"];
  [v49 logError:v50];

  [(NMSSHChannel *)self closeChannel];
  v41 = 0;
LABEL_29:

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)execute:(id)a3 error:(id *)a4 timeout:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NMSSHLogger sharedLogger];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exec command %@", v8];
  [v10 logInfo:v11];

  v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:v8 forKey:@"command"];
  if ([(NMSSHChannel *)self openChannel:a4])
  {
    [(NMSSHChannel *)self setLastResponse:0];
    [(NMSSHChannel *)self setType:1];
    v13 = [(NMSSHChannel *)self channel];
    v14 = [v8 UTF8String];
    v15 = strlen([v8 UTF8String]);
    v16 = libssh2_channel_process_startup(v13, "exec", 4u, v14, v15);
    if (!v16)
    {
      v26 = [(NMSSHChannel *)self readResponseWithError:a4 timeout:v9 userInfo:v12];
      if (v26)
      {
        v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v26 encoding:4];
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_7;
    }

    if (a4)
    {
      v17 = v16;
      v18 = [(NMSSHChannel *)self session];
      v19 = [v18 lastError];
      v20 = [v19 localizedDescription];
      [v12 setObject:v20 forKey:*MEMORY[0x277CCA450]];

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", v17];
      [v12 setObject:v21 forKey:*MEMORY[0x277CCA470]];

      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NMSSH" code:0 userInfo:v12];
    }

    v22 = +[NMSSHLogger sharedLogger];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error executing command"];
    [v22 logError:v23];

    [(NMSSHChannel *)self closeChannel];
  }

  v24 = 0;
LABEL_7:

  return v24;
}

- (const)ptyTerminalName
{
  v2 = [(NMSSHChannel *)self ptyTerminalType];
  if ((v2 - 1) > 4)
  {
    return "vanilla";
  }

  else
  {
    return off_278C1B5C8[v2 - 1];
  }
}

- (void)waitEOF
{
  if (!libssh2_channel_eof([(NMSSHChannel *)self channel]))
  {
    v3 = libssh2_channel_wait_eof([(NMSSHChannel *)self channel]);
    v5 = +[NMSSHLogger sharedLogger];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received host acknowledge for EOF (return code = %i)", v3];
    [v5 logVerbose:v4];
  }
}

- (BOOL)sendEOF
{
  v2 = libssh2_channel_send_eof([(NMSSHChannel *)self channel]);
  v3 = +[NMSSHLogger sharedLogger];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sent EOF to host (return code = %i)", v2];
  [v3 logVerbose:v4];

  return v2 == 0;
}

- (void)closeChannel
{
  v3 = [(NMSSHChannel *)self session];
  libssh2_session_set_blocking([v3 rawSession], 1);

  if ([(NMSSHChannel *)self channel])
  {
    if (!libssh2_channel_close([(NMSSHChannel *)self channel]))
    {
      libssh2_channel_wait_closed([(NMSSHChannel *)self channel]);
    }

    libssh2_channel_free([(NMSSHChannel *)self channel]);
    [(NMSSHChannel *)self setType:0];

    [(NMSSHChannel *)self setChannel:0];
  }
}

- (BOOL)openChannel:(id *)a3
{
  v4 = self;
  v65[1] = *MEMORY[0x277D85DE8];
  if (![(NMSSHChannel *)self channel])
  {
    v6 = [(NMSSHChannel *)v4 session];
    libssh2_session_set_blocking([v6 rawSession], 1);

    v7 = [(NMSSHChannel *)v4 session];
    v8 = libssh2_channel_open_ex([v7 rawSession], "session", 7u, 0x200000u, 0x8000u, 0, 0);

    if (v8)
    {
      [(NMSSHChannel *)v4 setChannel:v8];
      v9 = [(NMSSHChannel *)v4 environmentVariables];

      if (v9)
      {
        v53 = a3;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v10 = [(NMSSHChannel *)v4 environmentVariables];
        v11 = [v10 countByEnumeratingWithState:&v57 objects:v63 count:16];
        v12 = v4;
        if (v11)
        {
          v13 = v11;
          v14 = *v58;
          v15 = 0x277CCA000uLL;
          v54 = v10;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v58 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v17 = *(*(&v57 + 1) + 8 * i);
              v18 = *(v15 + 3240);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = [(NMSSHChannel *)v12 environmentVariables];
                v20 = [v19 objectForKey:v17];
                v21 = *(v15 + 3240);
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v56 = [(NMSSHChannel *)v12 channel];
                  v55 = [v17 UTF8String];
                  v23 = v13;
                  v24 = strlen([v17 UTF8String]);
                  v25 = [(NMSSHChannel *)v12 environmentVariables];
                  v26 = [v25 objectForKey:v17];
                  v27 = v14;
                  v28 = [v26 UTF8String];
                  [(NMSSHChannel *)v12 environmentVariables];
                  v30 = v29 = v12;
                  v31 = [v30 objectForKey:v17];
                  v32 = strlen([v31 UTF8String]);
                  v33 = v24;
                  v13 = v23;
                  v34 = v28;
                  v14 = v27;
                  libssh2_channel_setenv_ex(v56, v55, v33, v34, v32);

                  v12 = v29;
                  v10 = v54;
                  v15 = 0x277CCA000;
                }
              }
            }

            v13 = [v10 countByEnumeratingWithState:&v57 objects:v63 count:16];
          }

          while (v13);
        }

        a3 = v53;
        v4 = v12;
      }

      if (![(NMSSHChannel *)v4 requestPty])
      {
        goto LABEL_2;
      }

      v35 = v4;
      v36 = [(NMSSHChannel *)v4 channel];
      v37 = [(NMSSHChannel *)v35 ptyTerminalName];
      v38 = strlen([(NMSSHChannel *)v35 ptyTerminalName]);
      if (!libssh2_channel_request_pty_ex(v36, v37, v38, 0, 0, 80, 24, 0, 0))
      {
        goto LABEL_2;
      }

      if (a3)
      {
        v61 = *MEMORY[0x277CCA450];
        v39 = MEMORY[0x277CCACA8];
        v40 = [(NMSSHChannel *)v35 ptyTerminalName];
        v41 = [(NMSSHChannel *)v35 session];
        v42 = [v41 lastError];
        v43 = [v42 localizedDescription];
        v44 = [v39 stringWithFormat:@"Error requesting %s pty: %@", v40, v43];
        v62 = v44;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];

        *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NMSSH" code:2 userInfo:v45];
      }

      v46 = +[NMSSHLogger sharedLogger];
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error requesting pseudo terminal"];
      [v46 logError:v47];

      [(NMSSHChannel *)v35 closeChannel];
    }

    else
    {
      v48 = +[NMSSHLogger sharedLogger];
      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open a session"];
      [v48 logError:v49];

      if (a3)
      {
        v50 = MEMORY[0x277CCA9B8];
        v64 = *MEMORY[0x277CCA450];
        v65[0] = @"Channel allocation error";
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
        *a3 = [v50 errorWithDomain:@"NMSSH" code:4 userInfo:v51];
      }
    }

    result = 0;
    goto LABEL_24;
  }

LABEL_2:
  result = 1;
LABEL_24:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

- (NMSSHChannel)initWithSession:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NMSSHChannel;
  v5 = [(NMSSHChannel *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(NMSSHChannel *)v5 setSession:v4];
    [(NMSSHChannel *)v6 setBufferSize:0x4000];
    [(NMSSHChannel *)v6 setRequestPty:0];
    [(NMSSHChannel *)v6 setPtyTerminalType:0];
    [(NMSSHChannel *)v6 setType:0];
    v7 = [(NMSSHChannel *)v6 session];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      objc_exception_throw(@"You have to provide a valid NMSSHSession!");
    }
  }

  return v6;
}

@end