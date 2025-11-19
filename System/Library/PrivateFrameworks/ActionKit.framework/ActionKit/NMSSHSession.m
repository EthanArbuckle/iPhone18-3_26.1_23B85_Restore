@interface NMSSHSession
+ (id)URLForHost:(id)a3;
+ (id)connectToHost:(id)a3 port:(int64_t)a4 withUsername:(id)a5;
+ (id)connectToHost:(id)a3 withUsername:(id)a4;
- (BOOL)addKnownHostName:(id)a3 port:(int64_t)a4 toFile:(id)a5 withSalt:(id)a6;
- (BOOL)authenticateByInMemoryPublicKey:(id)a3 privateKey:(id)a4 andPassword:(id)a5;
- (BOOL)authenticateByKeyboardInteractiveUsingBlock:(id)a3;
- (BOOL)authenticateByPassword:(id)a3;
- (BOOL)authenticateByPublicKey:(id)a3 privateKey:(id)a4 andPassword:(id)a5;
- (BOOL)connect;
- (BOOL)connectToAgent;
- (BOOL)connectWithTimeout:(id)a3;
- (BOOL)isAuthorized;
- (BOOL)supportsAuthenticationMethod:(id)a3;
- (NMSFTP)sftp;
- (NMSSHChannel)channel;
- (NMSSHSession)initWithHost:(id)a3 andUsername:(id)a4;
- (NMSSHSession)initWithHost:(id)a3 configs:(id)a4 withDefaultPort:(int64_t)a5 defaultUsername:(id)a6;
- (NMSSHSession)initWithHost:(id)a3 port:(int64_t)a4 andUsername:(id)a5;
- (NMSSHSessionDelegate)delegate;
- (NSError)lastError;
- (NSNumber)timeout;
- (NSString)remoteBanner;
- (id)applicationSupportDirectory;
- (id)fingerprint:(int64_t)a3;
- (id)hostIPAddresses;
- (id)keyboardInteractiveRequest:(id)a3;
- (id)supportedAuthenticationMethods;
- (id)userKnownHostsFileName;
- (int64_t)knownHostStatusInFiles:(id)a3;
- (int64_t)knownHostStatusWithFile:(id)a3;
- (void)disconnect;
- (void)setTimeout:(id)a3;
@end

@implementation NMSSHSession

- (NMSSHSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NMSFTP)sftp
{
  sftp = self->_sftp;
  if (!sftp)
  {
    v4 = [[NMSFTP alloc] initWithSession:self];
    v5 = self->_sftp;
    self->_sftp = v4;

    sftp = self->_sftp;
  }

  return sftp;
}

- (NMSSHChannel)channel
{
  channel = self->_channel;
  if (!channel)
  {
    v4 = [[NMSSHChannel alloc] initWithSession:self];
    v5 = self->_channel;
    self->_channel = v4;

    channel = self->_channel;
  }

  return channel;
}

- (id)keyboardInteractiveRequest:(id)a3
{
  v4 = a3;
  v5 = +[NMSSHLogger sharedLogger];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Server request '%@'", v4];
  [v5 logVerbose:v6];

  v7 = [(NMSSHSession *)self kbAuthenticationBlock];

  if (v7)
  {
    v8 = [(NMSSHSession *)self kbAuthenticationBlock];
    v9 = (v8)[2](v8, v4);
LABEL_3:
    v10 = v9;
    goto LABEL_8;
  }

  v11 = [(NMSSHSession *)self delegate];
  if (v11)
  {
    v12 = v11;
    v13 = [(NMSSHSession *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v8 = [(NMSSHSession *)self delegate];
      v9 = [v8 session:self keyboardInteractiveRequest:v4];
      goto LABEL_3;
    }
  }

  v8 = +[NMSSHLogger sharedLogger];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Keyboard interactive requires a delegate that responds to session:keyboardInteractiveRequest: or a block!"];
  [v8 logWarn:v15];

  v10 = &stru_2850323E8;
LABEL_8:

  return v10;
}

- (BOOL)addKnownHostName:(id)a3 port:(int64_t)a4 toFile:(id)a5 withSalt:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 == 22)
  {
    v13 = v10;
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]:%d", v10, a4];
  }

  v14 = v13;
  if (!v11)
  {
    v11 = [(NMSSHSession *)self userKnownHostsFileName];
  }

  *v46 = 0;
  v45 = 0;
  v15 = libssh2_session_hostkey([(NMSSHSession *)self rawSession], v46, &v45);
  if (!v15)
  {
    v22 = +[NMSSHLogger sharedLogger];
    v23 = MEMORY[0x277CCACA8];
    v24 = @"Failed to get host key.";
LABEL_13:
    v25 = [v23 stringWithFormat:v24];
    [v22 logError:v25];

    goto LABEL_14;
  }

  v16 = v15;
  v17 = libssh2_knownhost_init([(NMSSHSession *)self rawSession]);
  if (!v17)
  {
    v22 = +[NMSSHLogger sharedLogger];
    v23 = MEMORY[0x277CCACA8];
    v24 = @"Failed to initialize knownhosts.";
    goto LABEL_13;
  }

  v18 = v17;
  [v11 UTF8String];
  v19 = libssh2_knownhost_readfile(v18);
  if ((v19 & 0x80000000) == 0 || v19 == -16)
  {
    if (v45 == 1)
    {
      v28 = 589824;
    }

    else
    {
      v28 = 851968;
    }

    if (v12)
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    v30 = [v14 UTF8String];
    v31 = [v12 UTF8String];
    v32 = libssh2_knownhost_addc(v18, v30, v31, v16, *v46, 0, 0, v28 | v29, 0);
    if (v32)
    {
      v33 = v32;
      v34 = +[NMSSHLogger sharedLogger];
      v35 = MEMORY[0x277CCACA8];
      v36 = [(NMSSHSession *)self lastError];
      v37 = [v35 stringWithFormat:@"Failed to add host to known hosts: error %d (%@)", v33, v36];
      [v34 logError:v37];
    }

    else
    {
      [v11 UTF8String];
      v38 = libssh2_knownhost_writefile(v18);
      v39 = +[NMSSHLogger sharedLogger];
      v40 = MEMORY[0x277CCACA8];
      if ((v38 & 0x80000000) == 0)
      {
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Host added to known hosts."];
        [v39 logInfo:v41];

        v26 = v38 == 0;
        goto LABEL_27;
      }

      v42 = [(NMSSHSession *)self userKnownHostsFileName];
      v43 = [(NMSSHSession *)self lastError];
      v44 = [v40 stringWithFormat:@"Couldn't write to %@: %@", v42, v43];
      [v39 logError:v44];
    }

    v26 = 0;
LABEL_27:
    libssh2_knownhost_free(v18);
    goto LABEL_15;
  }

  v20 = +[NMSSHLogger sharedLogger];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read known hosts file."];
  [v20 logError:v21];

  libssh2_knownhost_free(v18);
LABEL_14:
  v26 = 0;
LABEL_15:

  return v26;
}

- (int64_t)knownHostStatusWithFile:(id)a3
{
  v4 = a3;
  v5 = libssh2_knownhost_init([(NMSSHSession *)self rawSession]);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  [v4 UTF8String];
  v7 = libssh2_knownhost_readfile(v6);
  if (v7 < 0)
  {
    v25 = v7;
    libssh2_knownhost_free(v6);
    v26 = +[NMSSHLogger sharedLogger];
    if (v25 == -16)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"No known hosts file %@.", v4];
      [v26 logInfo:v27];

      v23 = 2;
      goto LABEL_16;
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read known hosts file %@.", v4];
    [v26 logError:v31];

LABEL_15:
    v23 = 3;
    goto LABEL_16;
  }

  v35 = 0;
  v34 = 0;
  v8 = libssh2_session_hostkey([(NMSSHSession *)self rawSession], &v34, &v35);
  if (!v8)
  {
    v28 = +[NMSSHLogger sharedLogger];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get host key."];
    [v28 logError:v29];

    libssh2_knownhost_free(v6);
    goto LABEL_15;
  }

  v9 = v8;
  v10 = v35;
  v33 = 0;
  v11 = +[NMSSHLogger sharedLogger];
  v12 = MEMORY[0x277CCACA8];
  v13 = [(NMSSHSession *)self host];
  v14 = [(NMSSHSession *)self port];
  v15 = [v12 stringWithFormat:@"Check for host %@, port %@ in file %@", v13, v14, v4];
  [v11 logInfo:v15];

  v16 = [(NMSSHSession *)self host];
  v17 = [v16 UTF8String];
  v18 = [(NMSSHSession *)self port];
  v19 = [v18 intValue];
  if (v10 == 1)
  {
    v20 = 589825;
  }

  else
  {
    v20 = 851969;
  }

  v21 = libssh2_knownhost_checkp(v6, v17, v19, v9, v34, v20, &v33);

  libssh2_knownhost_free(v6);
  v22 = +[NMSSHLogger sharedLogger];
  if (v21 > 2)
  {
    v24 = @"Failure";
    v23 = 3;
  }

  else
  {
    v23 = v21;
    v24 = off_278C1C548[v21];
  }

  v30 = [MEMORY[0x277CCACA8] stringWithFormat:v24];
  [v22 logInfo:v30];

LABEL_16:
  return v23;
}

- (int64_t)knownHostStatusInFiles:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = [(NMSSHSession *)self userKnownHostsFileName];
    v19[0] = v5;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [(NMSSHSession *)self knownHostStatusWithFile:*(*(&v14 + 1) + 8 * v10), v14];
      if ((v11 - 4) < 0xFFFFFFFFFFFFFFFELL)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 3;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)userKnownHostsFileName
{
  v2 = [(NMSSHSession *)self applicationSupportDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"known_hosts"];

  return v3;
}

- (id)applicationSupportDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 stringByAppendingPathComponent:@"NMSSH"];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    [v7 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v4;
}

- (id)fingerprint:(int64_t)a3
{
  if ([(NMSSHSession *)self rawSession])
  {
    if (a3)
    {
      v5 = 0;
    }

    else
    {
      v5 = 16;
    }

    v6 = a3 == 1 || a3 == 0;
    if (a3 == 1)
    {
      v7 = 20;
    }

    else
    {
      v7 = v5;
    }

    if (a3 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = a3 == 0;
    }

    v9 = libssh2_hostkey_hash([(NMSSHSession *)self rawSession], v8);
    if (v9)
    {
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%02X", *v9];
      if (v6)
      {
        if (v7 <= 2)
        {
          v12 = 2;
        }

        else
        {
          v12 = v7;
        }

        v13 = v12 - 1;
        v14 = v10 + 1;
        do
        {
          v15 = *v14++;
          [v11 appendFormat:@":%02X", v15];
          --v13;
        }

        while (v13);
      }

      v16 = [v11 copy];
    }

    else
    {
      v11 = +[NMSSHLogger sharedLogger];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to retrive host's fingerprint"];
      [v11 logWarn:v17];

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)supportsAuthenticationMethod:(id)a3
{
  v4 = a3;
  v5 = [(NMSSHSession *)self supportedAuthenticationMethods];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)supportedAuthenticationMethods
{
  v3 = [(NMSSHSession *)self rawSession];
  v4 = [(NMSSHSession *)self username];
  v5 = [v4 UTF8String];
  v6 = [(NMSSHSession *)self username];
  v7 = strlen([v6 UTF8String]);
  v8 = libssh2_userauth_list(v3, v5, v7);

  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
    v10 = +[NMSSHLogger sharedLogger];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"User auth list: %@", v9];
    [v10 logVerbose:v11];

    v12 = [v9 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v9 = +[NMSSHLogger sharedLogger];
    v13 = MEMORY[0x277CCACA8];
    v14 = [(NMSSHSession *)self host];
    v15 = [(NMSSHSession *)self port];
    v16 = [v13 stringWithFormat:@"Failed to get authentication method for host %@:%@", v14, v15];
    [v9 logInfo:v16];

    v12 = 0;
  }

  return v12;
}

- (BOOL)connectToAgent
{
  v3 = [(NMSSHSession *)self supportsAuthenticationMethod:@"publickey"];
  if (v3)
  {
    [(NMSSHSession *)self setAgent:libssh2_agent_init([(NMSSHSession *)self rawSession])];
    if (![(NMSSHSession *)self agent])
    {
      v4 = +[NMSSHLogger sharedLogger];
      v5 = MEMORY[0x277CCACA8];
      v6 = @"Could not start a new agent";
      goto LABEL_13;
    }

    if (libssh2_agent_connect([(NMSSHSession *)self agent]))
    {
      v4 = +[NMSSHLogger sharedLogger];
      v5 = MEMORY[0x277CCACA8];
      v6 = @"Failed connection to agent";
LABEL_13:
      v11 = [v5 stringWithFormat:v6];
      [v4 logError:v11];

      LOBYTE(v3) = 0;
      return v3;
    }

    if (libssh2_agent_list_identities([(NMSSHSession *)self agent]))
    {
      v4 = +[NMSSHLogger sharedLogger];
      v5 = MEMORY[0x277CCACA8];
      v6 = @"Failed to request agent identities";
      goto LABEL_13;
    }

    v7 = 0;
    for (i = 0; ; v7 = i)
    {
      if (libssh2_agent_get_identity([(NMSSHSession *)self agent], &i, v7))
      {
        v4 = +[NMSSHLogger sharedLogger];
        v5 = MEMORY[0x277CCACA8];
        v6 = @"Failed to find a valid identity for the agent";
        goto LABEL_13;
      }

      v8 = [(NMSSHSession *)self agent];
      v9 = [(NMSSHSession *)self username];
      v10 = [v9 UTF8String];
      LODWORD(v8) = libssh2_agent_userauth(v8, v10, i);

      if (!v8)
      {
        break;
      }
    }

    LOBYTE(v3) = [(NMSSHSession *)self isAuthorized];
  }

  return v3;
}

- (BOOL)authenticateByKeyboardInteractiveUsingBlock:(id)a3
{
  v4 = a3;
  if ([(NMSSHSession *)self supportsAuthenticationMethod:@"keyboard-interactive"])
  {
    [(NMSSHSession *)self setKbAuthenticationBlock:v4];
    v5 = [(NMSSHSession *)self rawSession];
    v6 = [(NMSSHSession *)self username];
    v7 = [v6 UTF8String];
    v8 = [(NMSSHSession *)self username];
    v9 = strlen([v8 UTF8String]);
    v10 = libssh2_userauth_keyboard_interactive_ex(v5, v7, v9, kb_callback);

    [(NMSSHSession *)self setKbAuthenticationBlock:0];
    v11 = +[NMSSHLogger sharedLogger];
    if (!v10)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Keyboard-interactive authentication succeeded."];
      [v11 logVerbose:v15];

      v13 = [(NMSSHSession *)self isAuthorized];
      goto LABEL_5;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Keyboard-interactive authentication failed with reason %i", v10];
    [v11 logError:v12];
  }

  v13 = 0;
LABEL_5:

  return v13;
}

- (BOOL)authenticateByInMemoryPublicKey:(id)a3 privateKey:(id)a4 andPassword:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NMSSHSession *)self supportsAuthenticationMethod:@"publickey"])
  {
    if (!v10)
    {
      v10 = &stru_2850323E8;
    }

    v20 = [(NMSSHSession *)self rawSession];
    v11 = [(NMSSHSession *)self username];
    v19 = [v11 UTF8String];
    v12 = [(NMSSHSession *)self username];
    v13 = libssh2_userauth_publickey_frommemory(v20, v19, [v12 length], objc_msgSend(v8, "UTF8String"), objc_msgSend(v8, "length"), objc_msgSend(v9, "UTF8String"), objc_msgSend(v9, "length"), -[__CFString UTF8String](v10, "UTF8String"));

    v14 = +[NMSSHLogger sharedLogger];
    if (!v13)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Public key authentication succeeded."];
      [v14 logVerbose:v18];

      v16 = [(NMSSHSession *)self isAuthorized];
      goto LABEL_7;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Public key authentication failed with reason %i", v13];
    [v14 logError:v15];
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (BOOL)authenticateByPublicKey:(id)a3 privateKey:(id)a4 andPassword:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NMSSHSession *)self supportsAuthenticationMethod:@"publickey"])
  {
    if (!v10)
    {
      v10 = &stru_2850323E8;
    }

    v11 = [v8 stringByExpandingTildeInPath];
    v25 = [v11 UTF8String];

    v12 = [v9 stringByExpandingTildeInPath];
    v13 = [v12 UTF8String];

    v14 = [(NMSSHSession *)self rawSession];
    v15 = [(NMSSHSession *)self username];
    v16 = [v15 UTF8String];
    v17 = [(NMSSHSession *)self username];
    v18 = strlen([v17 UTF8String]);
    v19 = libssh2_userauth_publickey_fromfile_ex(v14, v16, v18, v25, v13, [(__CFString *)v10 UTF8String]);

    v20 = +[NMSSHLogger sharedLogger];
    if (!v19)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Public key authentication succeeded."];
      [v20 logVerbose:v24];

      v22 = [(NMSSHSession *)self isAuthorized];
      goto LABEL_7;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Public key authentication failed with reason %i", v19];
    [v20 logError:v21];
  }

  v22 = 0;
LABEL_7:

  return v22;
}

- (BOOL)authenticateByPassword:(id)a3
{
  v4 = a3;
  if (v4 && [(NMSSHSession *)self supportsAuthenticationMethod:@"password"])
  {
    v5 = [(NMSSHSession *)self rawSession];
    v6 = [(NMSSHSession *)self username];
    v7 = [v6 UTF8String];
    v8 = [(NMSSHSession *)self username];
    v9 = strlen([v8 UTF8String]);
    v10 = [v4 UTF8String];
    v11 = strlen([v4 UTF8String]);
    v12 = libssh2_userauth_password_ex(v5, v7, v9, v10, v11, 0);

    v13 = +[NMSSHLogger sharedLogger];
    if (!v12)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Password authentication succeeded."];
      [v13 logVerbose:v17];

      v15 = [(NMSSHSession *)self isAuthorized];
      goto LABEL_6;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Password authentication failed with reason %i", v12];
    [v13 logError:v14];
  }

  v15 = 0;
LABEL_6:

  return v15;
}

- (BOOL)isAuthorized
{
  v3 = [(NMSSHSession *)self rawSession];
  if (v3)
  {
    LOBYTE(v3) = libssh2_userauth_authenticated([(NMSSHSession *)self rawSession]) == 1;
  }

  return v3;
}

- (void)disconnect
{
  channel = self->_channel;
  if (channel)
  {
    [(NMSSHChannel *)channel closeShell];
    [(NMSSHSession *)self setChannel:0];
  }

  sftp = self->_sftp;
  if (sftp)
  {
    if ([(NMSFTP *)sftp isConnected])
    {
      [(NMSFTP *)self->_sftp disconnect];
    }

    [(NMSSHSession *)self setSftp:0];
  }

  if ([(NMSSHSession *)self agent])
  {
    libssh2_agent_disconnect([(NMSSHSession *)self agent]);
    libssh2_agent_free([(NMSSHSession *)self agent]);
    [(NMSSHSession *)self setAgent:0];
  }

  if ([(NMSSHSession *)self rawSession])
  {
    libssh2_session_disconnect_ex([(NMSSHSession *)self rawSession], 0xBu, "NMSSH: Disconnect", "");
    libssh2_session_free([(NMSSHSession *)self rawSession]);
    [(NMSSHSession *)self setSession:0];
  }

  socket = self->_socket;
  if (socket)
  {
    CFSocketInvalidate(socket);
    CFRelease(self->_socket);
    self->_socket = 0;
  }

  libssh2_exit();
  v6 = +[NMSSHLogger sharedLogger];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Disconnected"];
  [v6 logVerbose:v7];

  [(NMSSHSession *)self setConnected:0];
}

- (BOOL)connectWithTimeout:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v55 = a3;
  if ([(NMSSHSession *)self isConnected])
  {
    [(NMSSHSession *)self disconnect];
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NMSSHSession_connectWithTimeout___block_invoke;
  block[3] = &unk_278C222B8;
  block[4] = &v57;
  if (connectWithTimeout__onceToken != -1)
  {
    dispatch_once(&connectWithTimeout__onceToken, block);
  }

  if (*(v58 + 24) != 1)
  {
    v21 = 0;
    goto LABEL_32;
  }

  v4 = [(NMSSHSession *)self port];
  v5 = [v4 integerValue];

  v6 = [(NMSSHSession *)self hostIPAddresses];
  if (!v6)
  {
LABEL_24:
    v22 = +[NMSSHLogger sharedLogger];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failure establishing socket connection"];
    [v22 logError:v23];

    [(NMSSHSession *)self disconnect];
    goto LABEL_25;
  }

  v7 = 0;
  v54 = bswap32(v5) >> 16;
  v8 = *MEMORY[0x277CBECE8];
  v9 = 1;
  while (v7 < [v6 count] && v9)
  {
    v10 = [v6 objectAtIndexedSubscript:v7];
    if ([v10 length] == 16)
    {
      *bytes = 0;
      v62 = 0;
      [v10 getBytes:bytes length:16];
      *&bytes[2] = v54;
      inet_ntop(2, &bytes[4], v63, 0x10u);
      v11 = [MEMORY[0x277CCACA8] stringWithCString:v63 encoding:4];
      v12 = CFDataCreate(v8, bytes, 16);
      v13 = 2;
    }

    else
    {
      if ([v10 length] != 28)
      {
        v11 = +[NMSSHLogger sharedLogger];
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown address, it's not IPv4 or IPv6!"];
        [v11 logVerbose:v20];

        goto LABEL_21;
      }

      *v63 = 0;
      v64[0] = 0;
      v65 = 0;
      v64[1] = 0;
      [v10 getBytes:v63 length:28];
      *&v63[2] = v54;
      inet_ntop(30, v64, bytes, 0x2Eu);
      v11 = [MEMORY[0x277CCACA8] stringWithCString:bytes encoding:4];
      v12 = CFDataCreate(v8, v63, 28);
      v13 = 30;
    }

    v14 = CFSocketCreate(v8, v13, 1, 0, 0, 0, 0);
    self->_socket = v14;
    if (!v14)
    {
      v24 = +[NMSSHLogger sharedLogger];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error creating the socket"];
      [v24 logError:v25];

      CFRelease(v12);
      goto LABEL_28;
    }

    *bytes = 1;
    Native = CFSocketGetNative(v14);
    if (setsockopt(Native, 0xFFFF, 4130, bytes, 4u))
    {
      v26 = +[NMSSHLogger sharedLogger];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error setting socket option"];
      [v26 logError:v27];

      CFRelease(v12);
      [(NMSSHSession *)self disconnect];
LABEL_28:

LABEL_29:
      v21 = 0;
      goto LABEL_30;
    }

    socket = self->_socket;
    [v55 doubleValue];
    v9 = CFSocketConnectToAddress(socket, v12, v17);
    CFRelease(v12);
    v18 = +[NMSSHLogger sharedLogger];
    if (v9)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Socket connection to %@ on port %ld failed with reason %li, trying next address...", v11, v5, v9];
      [v18 logVerbose:v19];
    }

    else
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Socket connection to %@ on port %ld succesful", v11, v5];
      [v18 logInfo:v19];
    }

LABEL_21:
    ++v7;
  }

  if (v9)
  {
    goto LABEL_24;
  }

  [(NMSSHSession *)self setSession:libssh2_session_init_ex(0, 0, 0, self)];
  libssh2_session_callback_set([(NMSSHSession *)self rawSession], 2u, disconnect_callback);
  libssh2_session_set_blocking([(NMSSHSession *)self rawSession], 1);
  v30 = [(NMSSHSession *)self banner];
  if (v30)
  {
    v31 = [(NMSSHSession *)self rawSession];
    v32 = [(NMSSHSession *)self banner];
    v33 = v32;
    LOBYTE(v31) = libssh2_session_banner_set(v31, [v32 UTF8String]) == 0;

    if ((v31 & 1) == 0)
    {
      v34 = +[NMSSHLogger sharedLogger];
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failure setting the banner"];
      [v34 logError:v35];
    }
  }

  v36 = [(NMSSHSession *)self rawSession];
  v37 = CFSocketGetNative(self->_socket);
  if (!libssh2_session_handshake(v36, v37))
  {
    v40 = +[NMSSHLogger sharedLogger];
    v41 = MEMORY[0x277CCACA8];
    v42 = [(NMSSHSession *)self remoteBanner];
    v43 = [v41 stringWithFormat:@"Remote host banner is %@", v42];
    [v40 logVerbose:v43];

    v10 = [(NMSSHSession *)self fingerprint:[(NMSSHSession *)self fingerprintHash]];
    v44 = +[NMSSHLogger sharedLogger];
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"The host's fingerprint is %@", v10];
    [v44 logInfo:v45];

    v46 = [(NMSSHSession *)self delegate];
    if (v46)
    {
      v47 = [(NMSSHSession *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v48 = [(NMSSHSession *)self delegate];
        v49 = [v48 session:self shouldConnectToHostWithFingerprint:v10];

        if ((v49 & 1) == 0)
        {
          v50 = +[NMSSHLogger sharedLogger];
          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint refused, aborting connection..."];
          [v50 logWarn:v51];

          [(NMSSHSession *)self disconnect];
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    v52 = +[NMSSHLogger sharedLogger];
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"SSH session started"];
    [v52 logVerbose:v53];

    [(NMSSHSession *)self setConnected:1];
    v21 = [(NMSSHSession *)self isConnected];
LABEL_30:

    goto LABEL_31;
  }

  v38 = +[NMSSHLogger sharedLogger];
  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failure establishing SSH session"];
  [v38 logError:v39];

  [(NMSSHSession *)self disconnect];
LABEL_25:
  v21 = 0;
LABEL_31:

LABEL_32:
  _Block_object_dispose(&v57, 8);

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

void __35__NMSSHSession_connectWithTimeout___block_invoke(uint64_t a1)
{
  if (libssh2_init(0))
  {
    v2 = +[NMSSHLogger sharedLogger];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"libssh2 initialization failed"];
    [v2 logError:v3];

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v5 = +[NMSSHLogger sharedLogger];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"libssh2 (v%s) initialized", libssh2_version(0)];
  [v5 logVerbose:v4];
}

- (BOOL)connect
{
  v3 = [MEMORY[0x277CCABB0] numberWithLong:10];
  LOBYTE(self) = [(NMSSHSession *)self connectWithTimeout:v3];

  return self;
}

- (NSString)remoteBanner
{
  v2 = libssh2_session_banner_get([(NMSSHSession *)self rawSession]);
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v2 encoding:4];
  }

  return v2;
}

- (NSError)lastError
{
  v17[1] = *MEMORY[0x277D85DE8];
  if ([(NMSSHSession *)self rawSession])
  {
    v13 = 0;
    v3 = libssh2_session_last_error([(NMSSHSession *)self rawSession], &v13, 0, 0);
    v4 = MEMORY[0x277CCA9B8];
    v5 = v3;
    v14 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    v15 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = [v4 errorWithDomain:@"libssh2" code:v5 userInfo:v7];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Error retrieving last session error due to absence of an active session.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v8 = [v9 errorWithDomain:@"libssh2" code:0 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setTimeout:(id)a3
{
  v4 = a3;
  if ([(NMSSHSession *)self rawSession])
  {
    libssh2_session_set_timeout(-[NMSSHSession rawSession](self, "rawSession"), 1000 * [v4 longValue]);
  }
}

- (NSNumber)timeout
{
  if ([(NMSSHSession *)self rawSession])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLong:{libssh2_session_get_timeout(-[NMSSHSession rawSession](self, "rawSession")) / 1000}];
  }

  else
  {
    v3 = &unk_28509BB40;
  }

  return v3;
}

- (id)hostIPAddresses
{
  v3 = [(NSString *)self->_host componentsSeparatedByString:@":"];
  v4 = [v3 count];
  v5 = [v3 objectAtIndexedSubscript:0];
  if (v4 >= 4)
  {
    v6 = [v3 objectAtIndexedSubscript:0];
    if ([v6 hasPrefix:@"["])
    {
      v7 = [v3 objectAtIndexedSubscript:v4 - 2];
      v8 = [v7 hasSuffix:@"]"];

      if (v8)
      {
        v9 = [(NSString *)self->_host substringWithRange:1, [(NSString *)self->_host rangeOfString:@"]" options:4]- 1];
LABEL_9:
        v10 = v9;

        v5 = v10;
        goto LABEL_10;
      }
    }

    else
    {
    }

LABEL_8:
    v9 = self->_host;
    goto LABEL_9;
  }

  if (v4 == 3)
  {
    goto LABEL_8;
  }

LABEL_10:
  v11 = CFHostCreateWithName(*MEMORY[0x277CBECE8], v5);
  error.domain = 0;
  *&error.error = 0;
  v12 = +[NMSSHLogger sharedLogger];
  if (v11)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Start %@ resolution", v5];
    [v12 logVerbose:v13];

    if (CFHostStartInfoResolution(v11, kCFHostAddresses, &error))
    {
      v14 = CFHostGetAddressing(v11, 0);
    }

    else
    {
      v16 = +[NMSSHLogger sharedLogger];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to resolve host %@", v5];
      [v16 logError:v17];

      v14 = 0;
    }

    CFRelease(v11);
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error allocating CFHost for %@", v5];
    [v12 logError:v15];

    v14 = 0;
  }

  return v14;
}

- (NMSSHSession)initWithHost:(id)a3 andUsername:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() URLForHost:v7];

  v9 = [v8 host];
  v10 = [v8 port];
  v11 = v10;
  if (!v10)
  {
    v10 = &unk_28509BB28;
  }

  v12 = -[NMSSHSession initWithHost:port:andUsername:](self, "initWithHost:port:andUsername:", v9, [v10 intValue], v6);

  return v12;
}

- (NMSSHSession)initWithHost:(id)a3 configs:(id)a4 withDefaultPort:(int64_t)a5 defaultUsername:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_alloc_init(NMSSHHostConfig);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v29 + 1) + 8 * v17) hostConfigForHost:v9];
        if (v18)
        {
          [(NMSSHHostConfig *)v12 mergeFrom:v18];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v19 = objc_alloc_init(NMSSHHostConfig);
  [(NMSSHHostConfig *)v19 setHostname:v9];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [(NMSSHHostConfig *)v19 setPort:v20];

  [(NMSSHHostConfig *)v19 setUser:v11];
  [(NMSSHHostConfig *)v12 mergeFrom:v19];
  v21 = [(NMSSHHostConfig *)v12 hostname];
  v22 = [(NMSSHHostConfig *)v12 port];
  v23 = [v22 integerValue];
  v24 = [(NMSSHHostConfig *)v12 user];
  v25 = [(NMSSHSession *)self initWithHost:v21 port:v23 andUsername:v24];

  if (v25)
  {
    [(NMSSHSession *)v25 setHostConfig:v12];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (NMSSHSession)initWithHost:(id)a3 port:(int64_t)a4 andUsername:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = NMSSHSession;
  v10 = [(NMSSHSession *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(NMSSHSession *)v10 setHost:v8];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NMSSHSession *)v11 setPort:v12];

    [(NMSSHSession *)v11 setUsername:v9];
    [(NMSSHSession *)v11 setConnected:0];
    [(NMSSHSession *)v11 setFingerprintHash:0];
  }

  return v11;
}

+ (id)URLForHost:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] >= 3)
  {
    v5 = [v3 hasPrefix:@"["];

    if (v5)
    {
      goto LABEL_5;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", v3];
    v3 = v4 = v3;
  }

LABEL_5:
  v6 = MEMORY[0x277CBEBC0];
  v7 = [@"ssh://" stringByAppendingString:v3];
  v8 = [v6 URLWithString:v7];

  return v8;
}

+ (id)connectToHost:(id)a3 withUsername:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NMSSHSession alloc] initWithHost:v6 andUsername:v5];

  [(NMSSHSession *)v7 connect];

  return v7;
}

+ (id)connectToHost:(id)a3 port:(int64_t)a4 withUsername:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[NMSSHSession alloc] initWithHost:v8 port:a4 andUsername:v7];

  [(NMSSHSession *)v9 connect];

  return v9;
}

@end