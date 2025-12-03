@interface ACCNavigationShim
- (ACCNavigationShim)initWithDelegate:(id)delegate;
- (ACCNavigationShimProtocol)delegate;
- (BOOL)tryProcessXPCMessage:(id)message connection:(id)connection server:(id)server;
- (id)convertIAP2ACCManeuverInfo:(id)info forAccessory:(id)accessory;
- (id)convertIAP2ACCRouteGuidanceInfo:(id)info forAccessory:(id)accessory;
- (id)description;
- (void)accessoryAttached:(id)attached;
- (void)accessoryDetached:(id)detached;
- (void)accessoryNavigation:(id)navigation updateManeuverInfo:(id)info;
- (void)accessoryNavigation:(id)navigation updateRouteGuidanceInfo:(id)info;
- (void)accessoryStartRouteGuidance:(id)guidance componentList:(id)list;
- (void)accessoryStopRouteGuidance:(id)guidance componentList:(id)list;
- (void)dealloc;
@end

@implementation ACCNavigationShim

- (ACCNavigationShim)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ACCNavigationShim;
  v5 = [(ACCNavigationShim *)&v10 init];
  if (v5)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uid = v5->_uid;
    v5->_uid = uUIDString;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)dealloc
{
  uid = self->_uid;
  self->_uid = 0;

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = ACCNavigationShim;
  [(ACCNavigationShim *)&v4 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  uid = self->_uid;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  weakRetained = [v2 stringWithFormat:@"<ACCNavigationShim>[_uid=%@ _delegate=%@]", uid, WeakRetained];

  return weakRetained;
}

- (void)accessoryAttached:(id)attached
{
  v12 = *MEMORY[0x277D85DE8];
  attachedCopy = attached;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = attachedCopy;
    _os_log_impl(&dword_2335F7000, v7, OS_LOG_TYPE_INFO, "[#Navigation] accessoryAttached: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained notifyNavigationAccessoryClientsOfStateChange];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDetached:(id)detached
{
  v12 = *MEMORY[0x277D85DE8];
  detachedCopy = detached;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = detachedCopy;
    _os_log_impl(&dword_2335F7000, v7, OS_LOG_TYPE_INFO, "[#Navigation] accessoryDetached: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained notifyNavigationAccessoryClientsOfStateChange];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)accessoryStartRouteGuidance:(id)guidance componentList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  listCopy = list;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = guidanceCopy;
    v15 = 2112;
    v16 = listCopy;
    _os_log_impl(&dword_2335F7000, v10, OS_LOG_TYPE_INFO, "[#Navigation] accessoryStartRouteGuidance: %@ componentList: %@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained notifyNavigationAccessoryClientsOfStateChange];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessoryStopRouteGuidance:(id)guidance componentList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  listCopy = list;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = guidanceCopy;
    v15 = 2112;
    v16 = listCopy;
    _os_log_impl(&dword_2335F7000, v10, OS_LOG_TYPE_INFO, "[#Navigation] accessoryStopRouteGuidance: %@ componentList: %@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained notifyNavigationAccessoryClientsOfStateChange];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessoryNavigation:(id)navigation updateRouteGuidanceInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  navigationCopy = navigation;
  infoCopy = info;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = navigationCopy;
    v19 = 2112;
    v20 = infoCopy;
    _os_log_impl(&dword_2335F7000, v10, OS_LOG_TYPE_INFO, "[#Navigation] accessoryNavigation: %@ updateRouteGuidanceInfo: %@", &v17, 0x16u);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v12 = [infoCopy objectForKey:v11];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v13 addObject:v12];
  }

  else
  {
    v13 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [(ACCNavigationShim *)self convertIAP2ACCRouteGuidanceInfo:infoCopy forAccessory:navigationCopy];
  [WeakRetained updateRouteGuidanceInfo:v15 componentIdList:v13 accessory:navigationCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)accessoryNavigation:(id)navigation updateManeuverInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  navigationCopy = navigation;
  infoCopy = info;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = navigationCopy;
    v19 = 2112;
    v20 = infoCopy;
    _os_log_impl(&dword_2335F7000, v10, OS_LOG_TYPE_INFO, "[#Navigation] accessoryNavigation: %@ updateManeuverInfo: %@", &v17, 0x16u);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v12 = [infoCopy objectForKey:v11];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v13 addObject:v12];
  }

  else
  {
    v13 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [(ACCNavigationShim *)self convertIAP2ACCManeuverInfo:infoCopy forAccessory:navigationCopy];
  [WeakRetained updateManeuverInfo:v15 componentIdList:v13 accessory:navigationCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)convertIAP2ACCRouteGuidanceInfo:(id)info forAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_alloc_init(MEMORY[0x277CE82F8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [infoCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        integerValue = [v11 integerValue];
        v13 = [infoCopy objectForKey:v11];
        [v5 setInfo:integerValue data:v13];
      }

      v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)convertIAP2ACCManeuverInfo:(id)info forAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_alloc_init(MEMORY[0x277CE82E8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [infoCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        integerValue = [v11 integerValue];
        v13 = [infoCopy objectForKey:v11];
        [v5 setInfo:integerValue data:v13];
      }

      v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)tryProcessXPCMessage:(id)message connection:(id)connection server:(id)server
{
  v64 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  connectionCopy = connection;
  string = xpc_dictionary_get_string(messageCopy, MEMORY[0x277CE8508]);
  v10 = 0x2812FF000uLL;
  v11 = 0x2812FF000uLL;
  if (!string)
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v14 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *gLogObjects;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v56[0]) = 0;
      _os_log_impl(&dword_2335F7000, v14, OS_LOG_TYPE_DEFAULT, "[#Navigation] RequestType not specified in xpc message!", v56, 2u);
    }

    string = "<nil>";
  }

  if (gLogObjects)
  {
    v15 = gNumLogObjects < 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACCNavigationShim tryProcessXPCMessage:v17 connection:? server:?];
  }

  if (strcmp(string, "nav_requestConnectedAccessories"))
  {
    if (strcmp(string, "nav_sendGuidanceUpdate"))
    {
      if (strcmp(string, "nav_sendManeuverUpdate"))
      {
        v18 = 0;
        goto LABEL_73;
      }

      uint64 = xpc_dictionary_get_uint64(messageCopy, "nav_accessoryIdentifier");
      v56[0] = 0xAAAAAAAAAAAAAAAALL;
      data = xpc_dictionary_get_data(messageCopy, "nav_payload", v56);
      v32 = [MEMORY[0x277CBEA90] dataWithBytes:data length:v56[0]];
      v61[0] = NSClassFromString(&cfstr_Nsdictionary.isa);
      v61[1] = NSClassFromString(&cfstr_Nsarray.isa);
      v61[2] = NSClassFromString(&cfstr_Nsstring.isa);
      v61[3] = NSClassFromString(&cfstr_Nsnumber.isa);
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
      v34 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v33];
      v35 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v34 fromData:v32 error:0];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v37 = [WeakRetained navigationShimAccessoryForConnectionID:uint64];

      if (v37)
      {
        [(ACCNavigationShim *)self accessoryNavigation:v37 updateManeuverInfo:v35];
        reply = xpc_dictionary_create_reply(messageCopy);
        v11 = 0x2812FF000uLL;
        if (reply)
        {
          goto LABEL_41;
        }

LABEL_59:
        v48 = *(v11 + 1384);
        if (gLogObjects && v48 >= 1)
        {
          v42 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCNavigationShimAccessory create_xpc_representation];
          }

          v42 = MEMORY[0x277D86220];
          v50 = MEMORY[0x277D86220];
        }

        v11 = 0x2812FF000uLL;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [ACCNavigationShim tryProcessXPCMessage:connection:server:];
        }

        goto LABEL_72;
      }

      reply = xpc_dictionary_create_reply(messageCopy);
      v11 = 0x2812FF000;
      if (!reply)
      {
        goto LABEL_59;
      }

LABEL_57:
      v42 = reply;
      v43 = MEMORY[0x277CE8510];
      v44 = 0;
      goto LABEL_58;
    }

    v30 = xpc_dictionary_get_uint64(messageCopy, "nav_accessoryIdentifier");
    v56[0] = 0xAAAAAAAAAAAAAAAALL;
    v31 = xpc_dictionary_get_data(messageCopy, "nav_payload", v56);
    v32 = [MEMORY[0x277CBEA90] dataWithBytes:v31 length:v56[0]];
    v62[0] = NSClassFromString(&cfstr_Nsdictionary.isa);
    v62[1] = NSClassFromString(&cfstr_Nsarray.isa);
    v62[2] = NSClassFromString(&cfstr_Nsstring.isa);
    v62[3] = NSClassFromString(&cfstr_Nsnumber.isa);
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    v34 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v33];
    v35 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v34 fromData:v32 error:0];
    v36 = objc_loadWeakRetained(&self->_delegate);
    v37 = [v36 navigationShimAccessoryForConnectionID:v30];

    if (v37)
    {
      [(ACCNavigationShim *)self accessoryNavigation:v37 updateRouteGuidanceInfo:v35];
      reply = xpc_dictionary_create_reply(messageCopy);
      v11 = 0x2812FF000;
      if (reply)
      {
LABEL_41:
        v42 = reply;
        v43 = MEMORY[0x277CE8510];
        v44 = 1;
LABEL_58:
        xpc_dictionary_set_BOOL(reply, v43, v44);
        xpc_connection_send_message(connectionCopy, v42);
LABEL_72:

        v18 = 1;
        v10 = 0x2812FF000uLL;
        goto LABEL_73;
      }
    }

    else
    {
      reply = xpc_dictionary_create_reply(messageCopy);
      v11 = 0x2812FF000uLL;
      if (reply)
      {
        goto LABEL_57;
      }
    }

    v46 = *(v11 + 1384);
    if (gLogObjects && v46 >= 1)
    {
      v42 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v42 = MEMORY[0x277D86220];
      v49 = MEMORY[0x277D86220];
    }

    v11 = 0x2812FF000;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShim tryProcessXPCMessage:connection:server:];
    }

    goto LABEL_72;
  }

  v19 = xpc_array_create(0, 0);
  v20 = objc_loadWeakRetained(&self->_delegate);
  navigationShimAccessoryList = [v20 navigationShimAccessoryList];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v22 = navigationShimAccessoryList;
  v23 = [v22 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v58;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v58 != v25)
        {
          objc_enumerationMutation(v22);
        }

        create_xpc_representation = [*(*(&v57 + 1) + 8 * i) create_xpc_representation];
        xpc_array_append_value(v19, create_xpc_representation);
      }

      v24 = [v22 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v24);
  }

  v28 = xpc_dictionary_create_reply(messageCopy);
  v29 = v28;
  if (v28)
  {
    xpc_dictionary_set_BOOL(v28, MEMORY[0x277CE8510], 1);
    xpc_dictionary_set_value(v29, "nav_accessoriesConnected", v19);
    xpc_connection_send_message(connectionCopy, v29);
    v10 = 0x2812FF000;
  }

  else
  {
    v10 = 0x2812FF000uLL;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v45 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v45 = MEMORY[0x277D86220];
      v47 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShim tryProcessXPCMessage:connection:server:];
    }
  }

  v18 = 1;
LABEL_73:
  v51 = *(v10 + 1392);
  if (v51 && *(v11 + 1384) >= 1)
  {
    v52 = *v51;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v52 = MEMORY[0x277D86220];
    v53 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    [ACCNavigationShim tryProcessXPCMessage:v18 connection:v52 server:?];
  }

  v54 = *MEMORY[0x277D85DE8];
  return v18;
}

- (ACCNavigationShimProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tryProcessXPCMessage:(uint64_t)a1 connection:(NSObject *)a2 server:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_2335F7000, a2, OS_LOG_TYPE_DEBUG, "[#Navigation] tryProcessXPCMessage: messagetype=%s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)tryProcessXPCMessage:(uint64_t)a1 connection:(char)a2 server:(os_log_t)log .cold.11(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136315394;
  v5 = a1;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_2335F7000, log, OS_LOG_TYPE_DEBUG, "[#Navigation] tryProcessXPCMessage: messagetype=%s processed=%d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end