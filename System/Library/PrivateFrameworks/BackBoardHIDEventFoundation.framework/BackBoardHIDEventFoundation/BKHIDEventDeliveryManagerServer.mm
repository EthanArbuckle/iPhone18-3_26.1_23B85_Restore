@interface BKHIDEventDeliveryManagerServer
- (BKHIDEventDeliveryManagerServer)initWithDeliveryManagerProvider:(id)a3 ruleChangeAuthority:(id)a4;
- (BKHIDEventDeliveryManagerServer)initWithIncomingServiceConnectionHandler:(id)a3 ruleChangeAuthority:(id)a4;
- (__CFString)_performDescriptionRetrieval:(void *)a3 forConnection:;
- (id)_deliveryManagerForEstablishedConnection:(uint64_t)a1;
- (id)connectionDescriptionForDeferringRuleIdentity:(id)a3;
- (id)deliveryChainsDescription;
- (id)deliveryGraphDescription;
- (id)resolutionDescriptionForEventDescriptor:(id)a3 senderDescriptor:(id)a4;
- (id)resolutionDescriptionForKeyCommand:(id)a3 senderDescriptor:(id)a4;
- (void)acceptIncomingServiceConnection:(id)a3 mappedObject:(id)a4;
- (void)connectionDidTerminate:(id)a3;
- (void)handleIncomingServiceConnection:(id)a3;
- (void)rejectIncomingServiceConnection:(id)a3;
- (void)submitRuleChanges:(id)a3;
@end

@implementation BKHIDEventDeliveryManagerServer

- (id)resolutionDescriptionForKeyCommand:(id)a3 senderDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = MEMORY[0x277D85DD0];
  v15 = v6;
  v16 = v7;
  v8 = MEMORY[0x277CF3280];
  v9 = v7;
  v10 = v6;
  v11 = [v8 currentContext];
  v12 = [(BKHIDEventDeliveryManagerServer *)self _performDescriptionRetrieval:v11 forConnection:?];

  return v12;
}

- (__CFString)_performDescriptionRetrieval:(void *)a3 forConnection:
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 remoteToken];
    v9 = v8;
    if (v8 && ![v8 isInvalid])
    {
      if ([v9 hasEntitlement:@"com.apple.backboardd.eventResolution"])
      {
        os_unfair_lock_lock(a1 + 4);
        v14 = [(BKHIDEventDeliveryManagerServer *)a1 _deliveryManagerForEstablishedConnection:v7];
        if (!v14)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"deliveryManager"];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v17 = NSStringFromSelector(sel__performDescriptionRetrieval_forConnection_);
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            *buf = 138544642;
            v21 = v17;
            v22 = 2114;
            v23 = v19;
            v24 = 2048;
            v25 = a1;
            v26 = 2114;
            v27 = @"BKHIDEventDeliveryManagerServer.m";
            v28 = 1024;
            v29 = 280;
            v30 = 2114;
            v31 = v16;
            _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v16 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x223CDDB58);
        }

        v15 = v14;
        v11 = v5[2](v5, v14);
        os_unfair_lock_unlock(a1 + 4);

        goto LABEL_8;
      }
    }

    else
    {
      v10 = BKLogEventDelivery();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v9;
        _os_log_error_impl(&dword_223CBE000, v10, OS_LOG_TYPE_ERROR, "invalid remote audit token: %{public}@", buf, 0xCu);
      }
    }

    v11 = &stru_283738628;
LABEL_8:

    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_deliveryManagerForEstablishedConnection:(uint64_t)a1
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 8) userInfoForConnection:v3];
    if (!v4)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to find delivery manager for established connection: %@", v3];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(sel__deliveryManagerForEstablishedConnection_);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v12 = v8;
        v13 = 2114;
        v14 = v10;
        v15 = 2048;
        v16 = a1;
        v17 = 2114;
        v18 = @"BKHIDEventDeliveryManagerServer.m";
        v19 = 1024;
        v20 = 288;
        v21 = 2114;
        v22 = v7;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CDDCECLL);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)resolutionDescriptionForEventDescriptor:(id)a3 senderDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = MEMORY[0x277D85DD0];
  v15 = v6;
  v16 = v7;
  v8 = MEMORY[0x277CF3280];
  v9 = v7;
  v10 = v6;
  v11 = [v8 currentContext];
  v12 = [(BKHIDEventDeliveryManagerServer *)self _performDescriptionRetrieval:v11 forConnection:?];

  return v12;
}

- (id)connectionDescriptionForDeferringRuleIdentity:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__BKHIDEventDeliveryManagerServer_connectionDescriptionForDeferringRuleIdentity___block_invoke;
  v10[3] = &unk_2784F6C98;
  v11 = v4;
  v5 = MEMORY[0x277CF3280];
  v6 = v4;
  v7 = [v5 currentContext];
  v8 = [(BKHIDEventDeliveryManagerServer *)self _performDescriptionRetrieval:v10 forConnection:v7];

  return v8;
}

- (id)deliveryChainsDescription
{
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [(BKHIDEventDeliveryManagerServer *)self _performDescriptionRetrieval:v3 forConnection:?];

  return v4;
}

- (id)deliveryGraphDescription
{
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [(BKHIDEventDeliveryManagerServer *)self _performDescriptionRetrieval:v3 forConnection:?];

  return v4;
}

- (void)submitRuleChanges:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BKHIDDomainServiceServer *)self->_server currentConnection];
  v6 = [v5 remoteToken];

  if (v6 && ![v6 isInvalid])
  {
    v9 = [v6 pid];
    if (v9 <= 0)
    {
      v7 = BKLogEventDelivery();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      *buf = 67109120;
      LODWORD(v55) = v9;
      v22 = "invalid remote pid: %d";
      v23 = v7;
      v24 = 8;
LABEL_27:
      _os_log_error_impl(&dword_223CBE000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
      goto LABEL_4;
    }

    v10 = [(BKHIDEventDeliveryManagerServerRuleChangeAuthority *)self->_ruleChangeAuthority permittedRuleChangeMaskForAuditToken:v6];
    v11 = [v4 contentsMask];
    v12 = v11;
    v13 = v11 & v10;
    if ((v11 & v10) != v11)
    {
      v14 = BKLogEventDelivery();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v45 = BSProcessDescriptionForPID();
        *buf = 138543874;
        v55 = v45;
        v56 = 1024;
        *v57 = v12;
        *&v57[4] = 1024;
        *&v57[6] = v10;
        _os_log_error_impl(&dword_223CBE000, v14, OS_LOG_TYPE_ERROR, "process %{public}@ tried to make unauthorized changes (%X allowed:%X) -- ignoring", buf, 0x18u);
      }

      LOBYTE(v12) = v13;
    }

    os_unfair_lock_lock(&self->_lock);
    v15 = [(BKHIDDomainServiceServer *)self->_server currentConnection];
    v16 = v4;
    v17 = v15;
    v18 = [(BKHIDEventDeliveryManagerServer *)self _deliveryManagerForEstablishedConnection:v17];
    if (!v18)
    {
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"deliveryManager"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v47 = NSStringFromSelector(sel__lock_submitRuleChanges_validatedContentsMask_connection_);
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *buf = 138544642;
        v55 = v47;
        v56 = 2114;
        *v57 = v49;
        *&v57[8] = 2048;
        v58 = self;
        v59 = 2114;
        v60 = @"BKHIDEventDeliveryManagerServer.m";
        v61 = 1024;
        v62 = 190;
        v63 = 2114;
        v64 = v46;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v46 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CDE7C8);
    }

    v19 = v18;
    v20 = [v17 remoteToken];
    v21 = [v20 pid];

    if (!v21)
    {
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"remotePID"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v51 = NSStringFromSelector(sel__lock_submitRuleChanges_validatedContentsMask_connection_);
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        *buf = 138544642;
        v55 = v51;
        v56 = 2114;
        *v57 = v53;
        *&v57[8] = 2048;
        v58 = self;
        v59 = 2114;
        v60 = @"BKHIDEventDeliveryManagerServer.m";
        v61 = 1024;
        v62 = 192;
        v63 = 2114;
        v64 = v50;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v50 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CDE8C0);
    }

    if (v12)
    {
      v25 = [v16 discreteDispatchingRules];
      if (v25)
      {
        [v19 setDispatchingRoots:v25 forClientWithPID:v21];
      }

      else
      {
        v26 = BKLogEventDelivery();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v55) = v21;
          _os_log_error_impl(&dword_223CBE000, v26, OS_LOG_TYPE_ERROR, "missing dispatch roots from pid:%d", buf, 8u);
        }
      }

      if ((v12 & 4) == 0)
      {
LABEL_15:
        if ((v12 & 2) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_38;
      }
    }

    else if ((v12 & 4) == 0)
    {
      goto LABEL_15;
    }

    v27 = [v16 keyCommandDispatchingRules];
    if (v27)
    {
      [v19 setKeyCommandRoots:v27 forClientWithPID:v21];
    }

    else
    {
      v28 = BKLogEventDelivery();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v55) = v21;
        _os_log_error_impl(&dword_223CBE000, v28, OS_LOG_TYPE_ERROR, "missing key command roots from pid:%d", buf, 8u);
      }
    }

    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }

LABEL_38:
    v29 = [v16 deferringRules];
    if (v29)
    {
      [v19 setDeferringRules:v29 forClientWithPID:v21];
    }

    else
    {
      v30 = BKLogEventDelivery();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v55) = v21;
        _os_log_error_impl(&dword_223CBE000, v30, OS_LOG_TYPE_ERROR, "missing deferring rules from pid:%d", buf, 8u);
      }
    }

    if ((v12 & 8) == 0)
    {
LABEL_17:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }

LABEL_44:
    v31 = MEMORY[0x277CBEB98];
    v32 = [v16 keyCommandsRegistrations];
    v33 = [v31 setWithArray:v32];

    if (v33)
    {
      [v19 setKeyCommandsRegistrations:v33 forClientWithPID:v21];
    }

    else
    {
      v34 = BKLogEventDelivery();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v55) = v21;
        _os_log_error_impl(&dword_223CBE000, v34, OS_LOG_TYPE_ERROR, "missing key commands registration from pid:%d", buf, 8u);
      }
    }

    if ((v12 & 0x10) == 0)
    {
LABEL_18:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_56;
    }

LABEL_50:
    v35 = MEMORY[0x277CBEB98];
    v36 = [v16 bufferingPredicates];
    v37 = [v35 setWithArray:v36];

    if (v37)
    {
      [v19 setEventBufferingPredicates:v37 forClientWithPID:v21];
    }

    else
    {
      v38 = BKLogEventDelivery();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v55) = v21;
        _os_log_error_impl(&dword_223CBE000, v38, OS_LOG_TYPE_ERROR, "missing buffering predicates from pid:%d", buf, 8u);
      }
    }

    if ((v12 & 0x20) == 0)
    {
LABEL_19:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_62;
    }

LABEL_56:
    v39 = [v16 constraintAssertions];
    if (v39)
    {
      [v19 setConstraintAssertions:v39 forClientWithPID:v21];
    }

    else
    {
      v40 = BKLogEventDelivery();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v55) = v21;
        _os_log_error_impl(&dword_223CBE000, v40, OS_LOG_TYPE_ERROR, "missing constraint assertions from pid:%d", buf, 8u);
      }
    }

    if ((v12 & 0x40) == 0)
    {
LABEL_20:
      if ((v12 & 0x80) == 0)
      {
LABEL_74:

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_5;
      }

LABEL_68:
      v43 = [v16 selectionRequests];
      if (v43)
      {
        [v19 requestSelectionChanges:v43 forClientWithPID:v21];
      }

      else
      {
        v44 = BKLogEventDelivery();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v55) = v21;
          _os_log_error_impl(&dword_223CBE000, v44, OS_LOG_TYPE_ERROR, "missing selection requests from pid:%d", buf, 8u);
        }
      }

      goto LABEL_74;
    }

LABEL_62:
    v41 = [v16 modalityAssertions];
    if (v41)
    {
      [v19 setModalityAssertions:v41 forClientWithPID:v21];
    }

    else
    {
      v42 = BKLogEventDelivery();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v55) = v21;
        _os_log_error_impl(&dword_223CBE000, v42, OS_LOG_TYPE_ERROR, "missing modality assertions from pid:%d", buf, 8u);
      }
    }

    if ((v12 & 0x80) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_68;
  }

  v7 = BKLogEventDelivery();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v55 = v6;
    v22 = "invalid remote audit token: %{public}@";
    v23 = v7;
    v24 = 12;
    goto LABEL_27;
  }

LABEL_4:

LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidTerminate:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v5 = [v14 remoteToken];
  v6 = [v5 pid];

  v7 = [(BKHIDEventDeliveryManagerServer *)self _deliveryManagerForEstablishedConnection:v14];
  if (!v7)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"deliveryManager"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      v20 = self;
      v21 = 2114;
      v22 = @"BKHIDEventDeliveryManagerServer.m";
      v23 = 1024;
      v24 = 122;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDEA70);
  }

  v8 = v7;
  [v7 processDidTerminate:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)rejectIncomingServiceConnection:(id)a3
{
  v3 = [a3 domainIncomingServiceConnection];
  [v3 rejectConnection];
}

- (void)acceptIncomingServiceConnection:(id)a3 mappedObject:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to provide delivery manager for incoming connection: %@", v20];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v22 = v17;
      v23 = 2114;
      v24 = v19;
      v25 = 2048;
      v26 = self;
      v27 = 2114;
      v28 = @"BKHIDEventDeliveryManagerServer.m";
      v29 = 1024;
      v30 = 105;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDECC8);
  }

  v12 = [v20 domainIncomingServiceConnection];
  server = self->_server;
  v14 = [v12 connection];
  [(BKHIDDomainServiceServer *)server setUserInfo:v11 forConnection:v14];

  [v12 acceptConnection];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleIncomingServiceConnection:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (!self->_incomingServiceConnectionHandler)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_incomingServiceConnectionHandler"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"BKHIDEventDeliveryManagerServer.m";
      v20 = 1024;
      v21 = 94;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDEE7CLL);
  }

  v5 = [[BKHIDIncomingServiceConnection alloc] initWithIncomingServiceConnection:v11 debugMappedObjectName:@"delivery manager"];
  [(BKHIDIncomingServiceConnection *)v5 setHandler:self];
  [(BKHIDEventDeliveryManagerIncomingServiceConnectionHandler *)self->_incomingServiceConnectionHandler handleIncomingDeliveryManagerConnection:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (BKHIDEventDeliveryManagerServer)initWithIncomingServiceConnectionHandler:(id)a3 ruleChangeAuthority:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"BKHIDEventDeliveryManagerServer.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"incomingServiceConnectionHandler"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"BKHIDEventDeliveryManagerServer.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"authority"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = BKHIDEventDeliveryManagerServer;
  v11 = [(BKHIDEventDeliveryManagerServer *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v11->_incomingServiceConnectionHandler, a3);
    objc_storeStrong(&v12->_ruleChangeAuthority, a4);
    v13 = [BKHIDDomainServiceServer alloc];
    v14 = *MEMORY[0x277CF0590];
    v15 = BKLogEventDelivery();
    v16 = [(BKHIDDomainServiceServer *)v13 initWithDelegate:v12 incomingServiceConnectionHandler:v12 serverTarget:v12 serverProtocol:&unk_2837425D8 clientProtocol:&unk_283745258 serviceName:v14 queue:0 log:v15 entitlement:0];
    server = v12->_server;
    v12->_server = v16;
  }

  return v12;
}

- (BKHIDEventDeliveryManagerServer)initWithDeliveryManagerProvider:(id)a3 ruleChangeAuthority:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [_BKHIDDeliveryManagerDeprecatedIncomingConnectionHandler alloc];
    v10 = v7;
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"BKHIDEventDeliveryManagerServer.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"deliveryManagerProvider"}];

    v9 = [_BKHIDDeliveryManagerDeprecatedIncomingConnectionHandler alloc];
    v10 = 0;
  }

  v11 = [(_BKHIDDeliveryManagerDeprecatedIncomingConnectionHandler *)v9 initWithDeliveryManagerProvider:v10];
  v12 = [(BKHIDEventDeliveryManagerServer *)self initWithIncomingServiceConnectionHandler:v11 ruleChangeAuthority:v8];

  return v12;
}

@end