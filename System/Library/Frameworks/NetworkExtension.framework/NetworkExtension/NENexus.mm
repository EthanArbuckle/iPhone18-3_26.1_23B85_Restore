@interface NENexus
- (BOOL)handleRequestNexusFromClient:(id)client;
- (NENexus)initWithLevel:(unint64_t)level name:(id)name virtualInterfaceType:(int64_t)type delegate:(id)delegate channelCount:(unsigned int)count netifRingSize:(unsigned int)size kernelPipeTxRingSize:(unsigned int)ringSize kernelPipeRxRingSize:(unsigned int)self0 execUUID:(id)self1;
- (NENexus)initWithName:(id)name delegate:(id)delegate;
- (NSString)interfaceName;
- (void)cancel;
- (void)closeFlowWithClientIdentifier:(id)identifier;
- (void)dealloc;
- (void)handleAssertFromClient:(id)client;
- (void)handleStartFromClient:(id)client;
- (void)handleUnassertFromClient:(id)client;
- (void)rejectFlowWithClientIdentifier:(void *)identifier;
- (void)setAvailability:(unint64_t)availability;
- (void)setDnsServerAddresses:(id)addresses;
- (void)setLocalAddresses:(id)addresses;
- (void)setMaximumTransmissionUnit:(unint64_t)unit;
@end

@implementation NENexus

- (void)setMaximumTransmissionUnit:(unint64_t)unit
{
  unitCopy = unit;
  self->_maximumTransmissionUnit = unit;
  virtualInterface = [(NENexus *)self virtualInterface];

  NEVirtualInterfaceSetMTU(virtualInterface, unitCopy);
}

- (void)setDnsServerAddresses:(id)addresses
{
  v21 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  objc_storeStrong(&self->_dnsServerAddresses, addresses);
  if ([addressesCopy count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = addressesCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            hostname = [v12 hostname];
            [v6 addObject:hostname];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  virtualInterface = [(NENexus *)self virtualInterface];
  NEVirtualInterfaceSetDNSServers(virtualInterface, v6);
  NEVirtualInterfaceUpdateAdHocServiceReturnChanges(virtualInterface, 0, 1);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setLocalAddresses:(id)addresses
{
  v41 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:addressesCopy];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:self->_localAddresses];
  [v6 minusSet:v7];

  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:self->_localAddresses];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:addressesCopy];
  [v8 minusSet:v9];

  objc_storeStrong(&self->_localAddresses, addresses);
  virtualInterface = [(NENexus *)self virtualInterface];
  if ([v8 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        v15 = 0;
        do
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            hostname = [v16 hostname];
            NEVirtualInterfaceRemoveAddress(virtualInterface, hostname);
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);
    }
  }

  if ([v6 count])
  {
    v28 = v8;
    v29 = v6;
    v30 = addressesCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        v22 = 0;
        do
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * v22);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
            v25 = @"255.255.255.255";
            if ([v24 addressFamily] == 2 || (v25 = @"FFFF:FFFF:FFFF:FFFF::", objc_msgSend(v24, "addressFamily") == 30))
            {
              hostname2 = [v24 hostname];
              NEVirtualInterfaceAddAddressInternal(virtualInterface, hostname2, v25, 0);
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v20);
    }

    v6 = v29;
    addressesCopy = v30;
    v8 = v28;
  }

  NEVirtualInterfaceUpdateAdHocServiceReturnChanges(virtualInterface, 0, 1);

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleUnassertFromClient:(id)client
{
  clientCopy = client;
  if (self)
  {
    Property = objc_getProperty(self, v4, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  objc_sync_enter(v6);
  if (self)
  {
    v8 = objc_getProperty(self, v7, 96, 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 objectForKeyedSubscript:clientCopy];

  if (v10)
  {
    if ([v10 unsignedIntegerValue] > 1)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") - 1}];
      if (self)
      {
        v20 = objc_getProperty(self, v18, 96, 1);
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      [v21 setObject:v19 forKeyedSubscript:clientCopy];
    }

    else
    {
      if (self)
      {
        v12 = objc_getProperty(self, v11, 96, 1);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      [v13 setObject:0 forKeyedSubscript:clientCopy];

      if ([(NENexus *)self isAsserted])
      {
        v15 = self ? objc_getProperty(self, v14, 96, 1) : 0;
        v16 = v15;
        v17 = [v16 count];

        if (!v17)
        {
          [(NENexus *)self setAsserted:0];
        }
      }
    }
  }

  objc_sync_exit(v6);
}

- (void)handleAssertFromClient:(id)client
{
  clientCopy = client;
  if (self)
  {
    Property = objc_getProperty(self, v4, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  objc_sync_enter(v6);
  if (self)
  {
    v8 = objc_getProperty(self, v7, 96, 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 objectForKeyedSubscript:clientCopy];

  if (v10)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") + 1}];
    if (self)
    {
      v13 = objc_getProperty(self, v11, 96, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v14 setObject:v12 forKeyedSubscript:clientCopy];
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    if (self)
    {
      v17 = objc_getProperty(self, v15, 96, 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    [v18 setObject:v16 forKeyedSubscript:clientCopy];

    if (![(NENexus *)self isAsserted])
    {
      v20 = self ? objc_getProperty(self, v19, 96, 1) : 0;
      v21 = v20;
      v22 = [v21 count];

      if (v22)
      {
        [(NENexus *)self setAsserted:1];
      }
    }
  }

  objc_sync_exit(v6);
}

- (void)handleStartFromClient:(id)client
{
  v14 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v5 = [MEMORY[0x1E6977E48] pathForClientID:clientCopy];
  v6 = v5;
  if (v5)
  {
    parameters = [v5 parameters];
    if ([parameters pid])
    {
      v8 = [[NENexusPathFlow alloc] initWithPath:v6];
      [v8 setState:1];
      if (self)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        WeakRetained = 0;
      }

      [WeakRetained handleRequestToActivateNexus:self fromFlow:v8];
    }

    else
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Client has no pid, cannot assign nexus", &v12, 2u);
      }
    }
  }

  else
  {
    parameters = ne_log_obj();
    if (os_log_type_enabled(parameters, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = clientCopy;
      _os_log_error_impl(&dword_1BA83C000, parameters, OS_LOG_TYPE_ERROR, "Failed to get path for client %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setAvailability:(unint64_t)availability
{
  self->_availability = availability;
  [objc_getProperty(self a2];
  Property = objc_getProperty(self, v5, 128, 1);
  if (Property)
  {
    Property = objc_getProperty(Property, v7, 32, 1);
  }

  v8 = Property;
  [v8 updateNetworkAgent:{objc_getProperty(self, v9, 128, 1)}];

  virtualInterface = [(NENexus *)self virtualInterface];
  if (virtualInterface && !*(virtualInterface + 264))
  {
    v11 = *(virtualInterface + 312);
    if ((availability == 3) != (v11 & 1))
    {
      *(virtualInterface + 312) = v11 & 0xFE | (availability == 3);
    }

    v12 = *(virtualInterface + 312);
    if ((availability == 2) == ((v12 & 2) == 0))
    {
      *(virtualInterface + 312) = v12 & 0xFD | (2 * (availability == 2));
    }

    v13 = *(virtualInterface + 312);
    if ((availability == 4) == ((v13 & 4) == 0))
    {
      *(virtualInterface + 312) = v13 & 0xFB | (4 * (availability == 4));
    }

    v14 = *(virtualInterface + 312);
    if (availability < 2 == ((v14 & 8) == 0))
    {
      *(virtualInterface + 312) = v14 & 0xF7 | (8 * (availability < 2));
    }
  }

  NEVirtualInterfaceUpdateAdHocServiceReturnChanges(virtualInterface, 0, 1);
}

- (void)closeFlowWithClientIdentifier:(id)identifier
{
  v77 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 88, 1);
    }

    else
    {
      Property = 0;
    }

    v7 = [Property objectForKeyedSubscript:identifierCopy];
    v9 = v7;
    if (v7 && (v10 = objc_getProperty(v7, v8, 24, 1)) != 0)
    {
      v11 = v10;
      [v9 setState:3];
      if (self)
      {
        [objc_getProperty(self v12];
        v14 = objc_getProperty(self, v13, 80, 1);
      }

      else
      {
        [0 setObject:0 forKeyedSubscript:identifierCopy];
        v14 = 0;
      }

      v15 = [v14 objectForKeyedSubscript:v11];
      unsignedIntegerValue = [v15 unsignedIntegerValue];
      if (unsignedIntegerValue > 1)
      {
        v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue - 1];
        if (self)
        {
          v54 = objc_getProperty(self, v52, 80, 1);
        }

        else
        {
          v54 = 0;
        }

        [v54 setObject:v53 forKeyedSubscript:v11];
      }

      else
      {
        v57 = v15;
        if (self)
        {
          [objc_getProperty(self v17];
          v19 = objc_getProperty(self, v18, 112, 1);
          v21 = v19;
          if (v19)
          {
            v19 = objc_getProperty(v19, v20, 32, 1);
          }
        }

        else
        {
          [0 setObject:0 forKeyedSubscript:v11];
          v21 = 0;
          v19 = 0;
        }

        v22 = [v19 objectForKeyedSubscript:v11];

        v23 = nw_context_copy_implicit_context();
        v67 = MEMORY[0x1E69E9820];
        v68 = 3221225472;
        v69 = __41__NENexus_closeFlowWithClientIdentifier___block_invoke;
        v70 = &unk_1E7F0A0E8;
        v71 = v22;
        v72 = v9;
        nw_queue_context_async();

        array = [MEMORY[0x1E695DF70] array];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v58 = v9;
        v56 = v71;
        if (self)
        {
          v26 = objc_getProperty(self, v24, 72, 1);
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        v28 = [v27 countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v28)
        {
          v30 = v28;
          v31 = *v64;
          do
          {
            v32 = 0;
            do
            {
              if (*v64 != v31)
              {
                objc_enumerationMutation(v27);
              }

              v33 = *(*(&v63 + 1) + 8 * v32);
              if (self)
              {
                v34 = objc_getProperty(self, v29, 72, 1);
              }

              else
              {
                v34 = 0;
              }

              v35 = [v34 objectForKeyedSubscript:v33];

              if (v35 == v11)
              {
                [array addObject:v33];
              }

              ++v32;
            }

            while (v30 != v32);
            v36 = [v27 countByEnumeratingWithState:&v63 objects:v74 count:16];
            v30 = v36;
          }

          while (v36);
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v37 = array;
        v38 = [v37 countByEnumeratingWithState:&v59 objects:v73 count:16];
        if (v38)
        {
          v40 = v38;
          v41 = *v60;
          do
          {
            v42 = 0;
            do
            {
              if (*v60 != v41)
              {
                objc_enumerationMutation(v37);
              }

              v43 = *(*(&v59 + 1) + 8 * v42);
              if (self)
              {
                v44 = objc_getProperty(self, v39, 72, 1);
              }

              else
              {
                v44 = 0;
              }

              [v44 setObject:0 forKeyedSubscript:v43];
              ++v42;
            }

            while (v40 != v42);
            v45 = [v37 countByEnumeratingWithState:&v59 objects:v73 count:16];
            v40 = v45;
          }

          while (v45);
        }

        if (self)
        {
          v48 = v56;
          if (objc_getProperty(self, v46, 64, 1))
          {
            objc_getProperty(self, v47, 64, 1);
            nw_nexus_close_channel_and_instance();
          }

          v49 = objc_getProperty(self, v47, 112, 1);
          v51 = v49;
          v9 = v58;
          if (v49)
          {
            v49 = objc_getProperty(v49, v50, 32, 1);
          }
        }

        else
        {
          v51 = 0;
          v49 = 0;
          v9 = v58;
          v48 = v56;
        }

        [v49 setObject:0 forKeyedSubscript:v11];

        [(NENexus *)self rejectFlowWithClientIdentifier:identifierCopy];
        v15 = v57;
      }
    }

    else
    {
      [(NENexus *)self rejectFlowWithClientIdentifier:identifierCopy];
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v76 = "[NENexus closeFlowWithClientIdentifier:]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null clientUUID", buf, 0xCu);
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (void)rejectFlowWithClientIdentifier:(void *)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (identifier)
  {
    v16 = 0;
    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    assign_message = nw_path_create_assign_message();
    if (!assign_message)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "nw_path_create_assign_message failed", v15, 2u);
      }

      goto LABEL_10;
    }

    v6 = assign_message;
    Property = objc_getProperty(identifier, v5, 128, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 32, 1);
    }

    v9 = MEMORY[0x1E695DEF0];
    v10 = Property;
    v11 = [v9 dataWithBytes:v6 length:v16];
    v12 = [v10 assignNexusData:v11 toClient:v3];

    free(v6);
    if ((v12 & 1) == 0)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 0;
        _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "assignNexusData:toClient: failed", v15, 2u);
      }

LABEL_10:
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __41__NENexus_closeFlowWithClientIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  protocol_handler = nw_channel_get_protocol_handler();
  result = [*(a1 + 40) protocol];
  if (protocol_handler)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(*(protocol_handler + 24) + 8);

    return v6(protocol_handler, result, 1);
  }

  return result;
}

- (BOOL)handleRequestNexusFromClient:(id)client
{
  v27 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v5 = [MEMORY[0x1E6977E48] pathForClientID:clientCopy];
  v6 = v5;
  if (v5)
  {
    parameters = [v5 parameters];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v25 = 0x2020000000;
    v26 = [parameters pid];
    v8 = *(*(&buf + 1) + 24);
    v9 = v8 != 0;
    if (!v8)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Client has no pid, cannot assign nexus", v23, 2u);
      }

      goto LABEL_14;
    }

    v10 = [[NENexusPathFlow alloc] initWithPath:v6];
    [v10 setState:1];
    if (self)
    {
      Property = objc_getProperty(self, v11, 112, 1);
      if (!v10)
      {
LABEL_6:
        if (self)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
        }

        else
        {
          WeakRetained = 0;
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __40__NENexus_handleRequestNexusFromClient___block_invoke;
        v17[3] = &unk_1E7F097F8;
        v14 = v10;
        v18 = v14;
        selfCopy = self;
        p_buf = &buf;
        v20 = clientCopy;
        v21 = parameters;
        [WeakRetained acceptNewFlow:v14 fromNexus:self completionHandler:v17];

LABEL_14:
        _Block_object_dispose(&buf, 8);
        goto LABEL_15;
      }
    }

    else
    {
      Property = 0;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    objc_storeWeak(v10 + 4, Property);
    goto LABEL_6;
  }

  parameters = ne_log_obj();
  if (os_log_type_enabled(parameters, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = clientCopy;
    _os_log_error_impl(&dword_1BA83C000, parameters, OS_LOG_TYPE_ERROR, "Failed to get path for client %@", &buf, 0xCu);
  }

  v9 = 0;
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

void __40__NENexus_handleRequestNexusFromClient___block_invoke(uint64_t a1, void *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_73;
  }

  [v4 setState:2];
  v93 = 0;
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 72, 1);
  }

  v7 = MEMORY[0x1E696AD98];
  v8 = *(*(*(a1 + 64) + 8) + 24);
  v9 = Property;
  v10 = [v7 numberWithInt:v8];
  v11 = [v9 objectForKeyedSubscript:v10];

  v13 = *(a1 + 40);
  if (v11)
  {
    if (v13)
    {
      v13 = objc_getProperty(v13, v12, 80, 1);
    }

    v14 = [v13 objectForKeyedSubscript:v11];
    if (v14)
    {
      v16 = v14;
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "unsignedIntegerValue") + 1}];
    }

    else
    {
      v17 = &unk_1F38BA5E0;
    }

    v27 = *(a1 + 40);
    if (v27)
    {
      v27 = objc_getProperty(v27, v15, 80, 1);
    }

    [v27 setObject:v17 forKeyedSubscript:v11];
    v29 = *(a1 + 40);
    if (v29)
    {
      v29 = objc_getProperty(v29, v28, 112, 1);
      v31 = v29;
      if (v29)
      {
        v29 = objc_getProperty(v29, v30, 32, 1);
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = [v29 objectForKeyedSubscript:v11];

    if (v32)
    {
      nw_channel_get_key();
    }

    v33 = nw_context_copy_implicit_context();
    v85 = MEMORY[0x1E69E9820];
    v86 = 3221225472;
    v87 = __40__NENexus_handleRequestNexusFromClient___block_invoke_200;
    v88 = &unk_1E7F097D0;
    v34 = *(a1 + 40);
    v35 = *(a1 + 48);
    v89 = v32;
    v90 = v34;
    v91 = v35;
    v92 = *(a1 + 32);
    v20 = v32;
    nw_queue_context_async();

    v36 = v89;
    goto LABEL_27;
  }

  if (v13)
  {
    objc_getProperty(v13, v12, 64, 1);
  }

  channel_to_new_instance = nw_nexus_create_channel_to_new_instance();
  if (!channel_to_new_instance)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *v96 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_FAULT, "nw_nexus_create_channel_to_new_instance failed", v96, 2u);
    }

    goto LABEL_72;
  }

  v19 = channel_to_new_instance;
  *v96 = 0;
  v97 = 0;
  [0 getUUIDBytes:v96];
  *buf = 0;
  if ((nw_channel_get_nexus_instance() & 1) == 0)
  {
    v58 = ne_log_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      *v94 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_FAULT, "nw_channel_get_nexus_instance failed", v94, 2u);
    }

    goto LABEL_72;
  }

  nw_channel_get_key();
  v20 = [*(a1 + 56) processUUID];
  v21 = [*(a1 + 56) effectiveProcessUUID];
  v22 = [v21 isEqual:v20];

  if (v22)
  {
    if (v20)
    {
      *v94 = 0;
      v95 = 0;
      [v20 getUUIDBytes:v94];
      v25 = *(a1 + 40);
      if (v25)
      {
        objc_getProperty(v25, v24, 64, 1);
      }

      v26 = *(*(a1 + 64) + 8) + 24;
    }

    else
    {
      v61 = *(a1 + 40);
      if (v61)
      {
        objc_getProperty(v61, v23, 64, 1);
      }

      v62 = *(*(a1 + 64) + 8) + 24;
    }
  }

  else if (v20)
  {
    *v94 = 0;
    v95 = 0;
    [v20 getUUIDBytes:v94];
    v60 = *(a1 + 40);
    if (v60)
    {
      objc_getProperty(v60, v59, 64, 1);
    }
  }

  else
  {
    v63 = *(a1 + 40);
    if (v63)
    {
      objc_getProperty(v63, v23, 64, 1);
    }
  }

  if ((nw_nexus_bind_client_port() & 1) == 0)
  {
    v77 = ne_log_obj();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v79 = *(*(*(a1 + 64) + 8) + 24);
      *v94 = 67109120;
      *&v94[4] = v79;
      _os_log_error_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_ERROR, "Failed to bind nexus port for %d", v94, 8u);
    }

LABEL_72:
    v4 = *(a1 + 32);
LABEL_73:
    [v4 setState:3];
    goto LABEL_74;
  }

  v64 = nw_context_copy_implicit_context();
  v80 = MEMORY[0x1E69E9820];
  v17 = v19;
  v81 = *(a1 + 40);
  v82 = *(a1 + 48);
  v83 = *(a1 + 32);
  nw_queue_context_async();

  v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{v96, v80, 3221225472, __40__NENexus_handleRequestNexusFromClient___block_invoke_201, &unk_1E7F097D0}];
  v66 = *(a1 + 40);
  if (v66)
  {
    v66 = objc_getProperty(v66, v65, 112, 1);
    v68 = v66;
    if (v66)
    {
      v66 = objc_getProperty(v66, v67, 32, 1);
    }
  }

  else
  {
    v68 = 0;
  }

  [v66 setObject:v17 forKeyedSubscript:v11];

  v70 = *(a1 + 40);
  if (v70)
  {
    v70 = objc_getProperty(v70, v69, 72, 1);
  }

  v71 = MEMORY[0x1E696AD98];
  v72 = *(*(*(a1 + 64) + 8) + 24);
  v73 = v70;
  v74 = [v71 numberWithInt:v72];
  [v73 setObject:v11 forKeyedSubscript:v74];

  v76 = *(a1 + 40);
  if (v76)
  {
    v76 = objc_getProperty(v76, v75, 80, 1);
  }

  [v76 setObject:&unk_1F38BA5E0 forKeyedSubscript:v11];

  v36 = v17;
LABEL_27:

  v38 = *(a1 + 32);
  if (v38)
  {
    objc_setProperty_atomic(v38, v37, v11, 24);
  }

  v39 = [v3 localEndpoint];
  v40 = v39;
  if (v39)
  {
    v41 = [v39 copyCEndpoint];
  }

  else
  {
    v42 = [*(a1 + 40) localAddresses];
    v43 = [v42 firstObject];
    v41 = [v43 copyCEndpoint];
  }

  *v94 = 0;
  *v96 = 0;
  v97 = 0;
  [v11 getUUIDBytes:v96];
  assign_message = nw_path_create_assign_message();
  if (assign_message)
  {
    v46 = assign_message;
    v47 = *(a1 + 40);
    if (v47)
    {
      v47 = objc_getProperty(v47, v45, 128, 1);
      v49 = v47;
      if (v47)
      {
        v47 = objc_getProperty(v47, v48, 32, 1);
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = MEMORY[0x1E695DEF0];
    v51 = *v94;
    v52 = v47;
    v53 = [v50 dataWithBytes:v46 length:v51];
    LOBYTE(v51) = [v52 assignNexusData:v53 toClient:*(a1 + 48)];

    free(v46);
    if (v51)
    {
      v56 = *(a1 + 32);
      v55 = *(a1 + 40);
      if (v55)
      {
        v55 = objc_getProperty(v55, v54, 88, 1);
      }

      [v55 setObject:v56 forKeyedSubscript:*(a1 + 48)];
      goto LABEL_45;
    }

    v57 = ne_log_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_DEBUG, "assignNexusData:toClient: failed", buf, 2u);
    }
  }

  else
  {
    v57 = ne_log_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_FAULT, "nw_path_create_assign_message failed", buf, 2u);
    }
  }

  [*(a1 + 32) setState:3];
LABEL_45:

LABEL_74:
  v78 = *MEMORY[0x1E69E9840];
}

uint64_t __40__NENexus_handleRequestNexusFromClient___block_invoke_200(uint64_t a1)
{
  v2 = *(a1 + 32);
  protocol_handler = nw_channel_get_protocol_handler();
  if (protocol_handler)
  {
    result = (**(protocol_handler + 24))(protocol_handler, [*(a1 + 56) protocol]);
    if (result)
    {
      return result;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v6 = "Failed to attach network protocol to user channel";
      v7 = &v8;
LABEL_9:
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Could not get channel protocol";
      v7 = buf;
      goto LABEL_9;
    }
  }

  return [*(a1 + 40) closeFlowWithClientIdentifier:*(a1 + 48)];
}

uint64_t __40__NENexus_handleRequestNexusFromClient___block_invoke_201(uint64_t a1)
{
  v2 = *(a1 + 32);
  protocol_handler = nw_channel_get_protocol_handler();
  if (protocol_handler)
  {
    result = (**(protocol_handler + 24))(protocol_handler, [*(a1 + 56) protocol]);
    if (result)
    {
      return result;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v6 = "Failed to attach network protocol to user channel";
      v7 = &v8;
LABEL_9:
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Could not get channel protocol";
      v7 = buf;
      goto LABEL_9;
    }
  }

  return [*(a1 + 40) closeFlowWithClientIdentifier:*(a1 + 48)];
}

- (NSString)interfaceName
{
  virtualInterface = [(NENexus *)self virtualInterface];
  if (virtualInterface)
  {
    virtualInterface = [(NENexus *)self virtualInterface];
    if (virtualInterface)
    {
      virtualInterface = CFStringCreateWithCString(*MEMORY[0x1E695E480], &virtualInterface[8].info + 1, 0x600u);
    }
  }

  return virtualInterface;
}

- (void)dealloc
{
  if ([(NENexus *)self virtualInterface])
  {
    CFRelease([(NENexus *)self virtualInterface]);
    [(NENexus *)self setVirtualInterface:0];
  }

  if (self)
  {
    Property = objc_getProperty(self, v3, 128, 1);
    v6 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 32, 1);
    }
  }

  else
  {
    v6 = 0;
    Property = 0;
  }

  [Property unregisterNetworkAgent];

  v7.receiver = self;
  v7.super_class = NENexus;
  [(NENexus *)&v7 dealloc];
}

- (void)cancel
{
  selfCopy = self;
  v39 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (self)
  {
    self = objc_getProperty(self, a2, 88, 1);
  }

  selfCopy2 = self;
  v4 = [(NENexus *)selfCopy2 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(selfCopy2);
        }

        [(NENexus *)selfCopy closeFlowWithClientIdentifier:*(*(&v34 + 1) + 8 * i)];
      }

      v5 = [(NENexus *)selfCopy2 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  if (!selfCopy)
  {
    v29 = 0;
    v27 = 0;
    goto LABEL_23;
  }

  v9 = objc_getProperty(selfCopy, v8, 112, 1);
  v11 = v9;
  if (!v9)
  {
    goto LABEL_18;
  }

  Property = objc_getProperty(v9, v10, 8, 1);

  if (Property)
  {
    v14 = objc_getProperty(selfCopy, v13, 112, 1);
    v16 = objc_getProperty(selfCopy, v15, 112, 1);
    v18 = v16;
    if (v16)
    {
      v16 = objc_getProperty(v16, v17, 8, 1);
    }

    v19 = v16;

    v20 = nw_context_copy_implicit_context();
    v32 = v19;
    v33 = v14;
    v11 = v14;
    v21 = v19;
    nw_queue_context_async_if_needed();

    v23 = objc_getProperty(selfCopy, v22, 112, 1);
    if (v23)
    {
      v25 = v23;
      objc_setProperty_atomic(v23, v24, 0, 8);
    }

LABEL_18:
  }

  if (objc_getProperty(selfCopy, v13, 64, 1))
  {
    objc_getProperty(selfCopy, v26, 64, 1);
    nw_nexus_close();
  }

  v27 = objc_getProperty(selfCopy, v26, 128, 1);
  v29 = v27;
  if (v27)
  {
    v27 = objc_getProperty(v27, v28, 32, 1);
  }

LABEL_23:
  [v27 unregisterNetworkAgent];

  virtualInterface = [(NENexus *)selfCopy virtualInterface];
  if (!virtualInterface || *(virtualInterface + 256) != 2)
  {
    NEVirtualInterfaceInvalidate([(NENexus *)selfCopy virtualInterface]);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __17__NENexus_cancel__block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  nw_channel_close();
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = a1[6];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "Closed channel for nexus %@ flow manager %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (NENexus)initWithName:(id)name delegate:(id)delegate
{
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Cannot instantiate an NENexus directly", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = NENexus;
  [(NENexus *)&v8 doesNotRecognizeSelector:a2];

  return 0;
}

- (NENexus)initWithLevel:(unint64_t)level name:(id)name virtualInterfaceType:(int64_t)type delegate:(id)delegate channelCount:(unsigned int)count netifRingSize:(unsigned int)size kernelPipeTxRingSize:(unsigned int)ringSize kernelPipeRxRingSize:(unsigned int)self0 execUUID:(id)self1
{
  v89 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  delegateCopy = delegate;
  dCopy = d;
  if (!nameCopy)
  {
    v73 = ne_log_obj();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    *uu = 136315138;
    *&uu[4] = "[NENexus initWithLevel:name:virtualInterfaceType:delegate:channelCount:netifRingSize:kernelPipeTxRingSize:kernelPipeRxRingSize:execUUID:]";
    v79 = "%s called with null name";
    goto LABEL_78;
  }

  if (!delegateCopy)
  {
    v73 = ne_log_obj();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    *uu = 136315138;
    *&uu[4] = "[NENexus initWithLevel:name:virtualInterfaceType:delegate:channelCount:netifRingSize:kernelPipeTxRingSize:kernelPipeRxRingSize:execUUID:]";
    v79 = "%s called with null delegate";
LABEL_78:
    v82 = uu;
    v83 = v73;
    v84 = 12;
    goto LABEL_66;
  }

  v87.receiver = self;
  v87.super_class = NENexus;
  v21 = [(NENexus *)&v87 init];
  if (!v21)
  {
    self = ne_log_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *uu = 0;
      _os_log_fault_impl(&dword_1BA83C000, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", uu, 2u);
    }

    goto LABEL_49;
  }

  self = v21;
  if (level == 2)
  {
    v22 = 2;
  }

  else
  {
    if (level != 4)
    {
      v73 = ne_log_obj();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        *uu = 67109120;
        *&uu[4] = level;
        _os_log_error_impl(&dword_1BA83C000, v73, OS_LOG_TYPE_ERROR, "Nexus level %u is invalid", uu, 8u);
      }

      goto LABEL_48;
    }

    v22 = 4;
  }

  v21->_level = level;
  v21->_availability = 0;
  objc_storeStrong(&v21->_name, name);
  objc_storeWeak(&self->_delegate, delegateCopy);
  v23 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040C9AB51B7uLL);
  if (!v23)
  {
    v74 = ne_log_obj();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
    {
      *uu = 134217984;
      *&uu[4] = 64;
      _os_log_fault_impl(&dword_1BA83C000, v74, OS_LOG_TYPE_FAULT, "calloc(%zu) failed", uu, 0xCu);
    }

LABEL_47:
    v73 = ne_log_obj();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      *uu = 0;
      v79 = "setupFlowManager failed";
      goto LABEL_64;
    }

    goto LABEL_48;
  }

  v24 = v23;
  v85 = dCopy;
  if (setupFlowManager_onceToken != -1)
  {
    dispatch_once(&setupFlowManager_onceToken, &__block_literal_global_18138);
  }

  v24[2] = &NENexusFlowIdentifier;
  v24[3] = &NENexusFlowCallbacks;
  v25 = objc_alloc_init(NENexusFlowManager);
  objc_setProperty_atomic(self, v26, v25, 112);

  if (!objc_getProperty(self, v27, 112, 1))
  {
    v75 = ne_log_obj();
    dCopy = v85;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      *uu = 0;
      _os_log_fault_impl(&dword_1BA83C000, v75, OS_LOG_TYPE_FAULT, "[NENexusFlowManager init] failed", uu, 2u);
    }

    free(v24);
    goto LABEL_47;
  }

  v24[5] = objc_getProperty(self, v28, 112, 1);
  Property = objc_getProperty(self, v29, 112, 1);
  if (Property)
  {
    Property[2] = v24;
  }

  v31 = objc_alloc_init(NEPolicySession);
  objc_setProperty_atomic(self, v32, v31, 120);

  if (!objc_getProperty(self, v33, 120, 1))
  {
    v78 = ne_log_obj();
    dCopy = v85;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
    {
      *uu = 0;
      _os_log_fault_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_FAULT, "[NEPolicySession init] failed", uu, 2u);
    }

    v73 = ne_log_obj();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    *uu = 0;
    v79 = "setupPolicySession failed";
    goto LABEL_64;
  }

  if (level == 4 || !count)
  {
    [nameCopy UTF8String];
    v34 = nw_nexus_create();
    userNexus = self->_userNexus;
    self->_userNexus = v34;

    if (!self->_userNexus)
    {
      v80 = ne_log_obj();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        *uu = 0;
        v81 = "nw_nexus_create failed";
        goto LABEL_73;
      }

LABEL_60:

      selfCopy = 0;
      dCopy = v85;
      goto LABEL_50;
    }
  }

  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  flowManager = self->_flowManager;
  if (flowManager)
  {
    objc_setProperty_atomic(flowManager, v36, v37, 32);
  }

  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  userNexusInstances = self->_userNexusInstances;
  self->_userNexusInstances = v39;

  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  userNexusClientCount = self->_userNexusClientCount;
  self->_userNexusClientCount = v41;

  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  userNexusClientFlows = self->_userNexusClientFlows;
  self->_userNexusClientFlows = v43;

  v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  kernelNexusClientFlows = self->_kernelNexusClientFlows;
  self->_kernelNexusClientFlows = v45;

  v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
  assertions = self->_assertions;
  self->_assertions = v47;

  v49 = objc_alloc_init(NENexusAgent);
  agent = self->_agent;
  self->_agent = v49;

  v51 = self->_agent;
  if (!v51)
  {
    v80 = ne_log_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
    {
      *uu = 0;
      v81 = "[NENexusAgent init] failed";
LABEL_73:
      _os_log_fault_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_FAULT, v81, uu, 2u);
      goto LABEL_60;
    }

    goto LABEL_60;
  }

  [(NENexusAgent *)v51 setActive:0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(NENexusAgent *)self->_agent setAgentUUID:uUID];

  [(NENexusAgent *)self->_agent setAgentDescription:nameCopy];
  v53 = self->_agent;
  if (v53 && (v53->_frameType = v22, (v54 = self->_agent) != 0))
  {
    objc_storeWeak(&v54->_delegate, self);
    v55 = self->_agent;
  }

  else
  {
    v55 = 0;
  }

  [(NENexusAgent *)v55 setNexusProvider:level == 4];
  v57 = [objc_alloc(MEMORY[0x1E6977E38]) initWithNetworkAgentClass:objc_opt_class()];
  v58 = self->_agent;
  if (v58)
  {
    objc_setProperty_atomic(v58, v56, v57, 32);
  }

  v60 = self->_agent;
  dCopy = v85;
  if (!v60 || !objc_getProperty(v60, v59, 32, 1))
  {
    v73 = ne_log_obj();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      *uu = 0;
      v79 = "[NWNetworkAgentRegistration initWithNetworkAgentClass] failed";
LABEL_64:
      v82 = uu;
LABEL_65:
      v83 = v73;
      v84 = 2;
LABEL_66:
      _os_log_fault_impl(&dword_1BA83C000, v83, OS_LOG_TYPE_FAULT, v79, v82, v84);
    }

LABEL_48:

LABEL_49:
    selfCopy = 0;
    goto LABEL_50;
  }

  v62 = self->_agent;
  if (v62)
  {
    v62 = objc_getProperty(v62, v61, 32, 1);
    v63 = self->_agent;
  }

  else
  {
    v63 = 0;
  }

  if (([v62 registerNetworkAgent:v63] & 1) == 0)
  {
    v73 = ne_log_obj();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      *uu = 0;
      v79 = "[NWNetworkAgentRegistration registerNetworkAgent] failed";
      goto LABEL_64;
    }

    goto LABEL_48;
  }

  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (v85)
  {
    [v85 getUUIDBytes:uu];
  }

  v64 = *MEMORY[0x1E695E480];
  NexusExtendedWithOptions = NEVirtualInterfaceCreateNexusExtendedWithOptions(*MEMORY[0x1E695E480], type, 0, 0, 1, 0, count, 0, size, ringSize, rxRingSize, uu, 0);
  self->_virtualInterface = NexusExtendedWithOptions;
  if (!NexusExtendedWithOptions)
  {
    v73 = ne_log_obj();
    dCopy = v85;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    v86 = 0;
    v79 = "NEVirtualInterfaceCreateNexus failed";
    goto LABEL_71;
  }

  virtualInterface = NexusExtendedWithOptions;
  v68 = self->_agent;
  dCopy = v85;
  if (v68)
  {
    v69 = objc_getProperty(v68, v66, 32, 1);
    virtualInterface = self->_virtualInterface;
    v70 = v69;
    if (!virtualInterface)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v70 = 0;
  }

  virtualInterface = CFStringCreateWithCString(v64, virtualInterface + 265, 0x600u);
LABEL_37:
  v71 = [v70 addNetworkAgentToInterfaceNamed:virtualInterface];

  if ((v71 & 1) == 0)
  {
    v73 = ne_log_obj();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_48;
    }

    v86 = 0;
    v79 = "[NWNetworkAgentRegistration addNetworkAgentToInterfaceNamed] failed";
LABEL_71:
    v82 = &v86;
    goto LABEL_65;
  }

  selfCopy = self;
LABEL_50:

  v76 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

void __27__NENexus_setupFlowManager__block_invoke()
{
  dword_1EBC11CF0 = 4;
  NENexusFlowCallbacks = nw_nexus_flow_add_input_handler;
  qword_1EBC11C00 = nw_nexus_flow_input_available;
  qword_1EBC11C08 = nw_nexus_flow_output_available;
  qword_1EBC11C10 = nw_nexus_flow_get_input_frames;
  qword_1EBC11C18 = nw_nexus_flow_get_output_frames;
  qword_1EBC11C20 = nw_nexus_flow_finalize_output_frames;
}

@end