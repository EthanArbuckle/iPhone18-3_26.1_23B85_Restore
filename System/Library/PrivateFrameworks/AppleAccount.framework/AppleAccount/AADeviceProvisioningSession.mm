@interface AADeviceProvisioningSession
- (AADeviceProvisioningSession)initWithAccount:(id)account;
- (AADeviceProvisioningSession)initWithDSID:(id)d;
- (id)deviceProvisioningInfo;
- (int)eraseProvisioning;
- (int)provisionDeviceWithData:(id)data;
- (int)synchronizeProvisioningWithData:(id)data;
- (void)addProvisioningInfoToAARequest:(id)request withFallback:(BOOL)fallback;
- (void)addProvisioningInfoToURLRequest:(id)request sendEmptyValues:(BOOL)values;
@end

@implementation AADeviceProvisioningSession

- (AADeviceProvisioningSession)initWithDSID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "BADNESS!!! Nil DSID passed into provisioning session.", buf, 2u);
    }
  }

  v12.receiver = self;
  v12.super_class = AADeviceProvisioningSession;
  v7 = [(AADeviceProvisioningSession *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dsid, d);
    longLongValue = [dCopy longLongValue];
    v8->_dsidNumber = longLongValue;
    if (!longLongValue)
    {
      v10 = _AALogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "BADNESS!!! Invalid DSID passed into provisioning session.", buf, 2u);
      }
    }
  }

  return v8;
}

- (AADeviceProvisioningSession)initWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    [(AADeviceProvisioningSession *)a2 initWithAccount:?];
  }

  aa_personID = [accountCopy aa_personID];
  v7 = [(AADeviceProvisioningSession *)self initWithDSID:aa_personID];

  return v7;
}

- (void)addProvisioningInfoToAARequest:(id)request withFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  requestCopy = request;
  deviceProvisioningInfo = [(AADeviceProvisioningSession *)self deviceProvisioningInfo];
  v7 = deviceProvisioningInfo;
  if (deviceProvisioningInfo)
  {
    v8 = [deviceProvisioningInfo objectForKeyedSubscript:@"mid_data"];
    [requestCopy setDeviceProvisioningMachineId:v8];

    v9 = [v7 objectForKeyedSubscript:@"otp_data"];
    [requestCopy setDeviceProvisioningOneTimePassword:v9];
  }

  else if (fallbackCopy)
  {
    [requestCopy setDeviceProvisioningOneTimePassword:&stru_1F2EF6280];
    [requestCopy setDeviceProvisioningMachineId:&stru_1F2EF6280];
  }
}

- (void)addProvisioningInfoToURLRequest:(id)request sendEmptyValues:(BOOL)values
{
  valuesCopy = values;
  v14 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  deviceProvisioningInfo = [(AADeviceProvisioningSession *)self deviceProvisioningInfo];
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = valuesCopy;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Adding HSA info to request. sendEmptyValues = %d", v13, 8u);
  }

  v9 = [deviceProvisioningInfo objectForKeyedSubscript:@"mid_data"];
  v10 = [deviceProvisioningInfo objectForKeyedSubscript:@"otp_data"];
  v11 = v10;
  if (valuesCopy)
  {
    if (!v9)
    {
      v9 = &stru_1F2EF6280;
    }

    if (!v10)
    {
      v11 = &stru_1F2EF6280;
    }
  }

  else if (!v9)
  {
    goto LABEL_11;
  }

  [requestCopy setValue:v9 forHTTPHeaderField:@"X-Apple-MD-M"];
LABEL_11:
  if (v11)
  {
    [requestCopy setValue:v11 forHTTPHeaderField:@"X-Apple-MD"];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)deviceProvisioningInfo
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->_dsid)
  {
    v10 = 0;
    goto LABEL_21;
  }

  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Request device provisioning info.", buf, 2u);
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  qi864985u0(self->_dsidNumber, &v21, &v19 + 4, &v20, &v19);
  if (!v4)
  {
    v11 = objc_alloc(MEMORY[0x1E695DEF0]);
    v6 = [v11 initWithBytesNoCopy:v21 length:HIDWORD(v19) freeWhenDone:0];
    v12 = objc_alloc(MEMORY[0x1E695DEF0]);
    v13 = [v12 initWithBytesNoCopy:v20 length:v19 freeWhenDone:0];
    v14 = [v6 base64EncodedStringWithOptions:0];
    v15 = [v13 base64EncodedStringWithOptions:0];
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Provisioning Info: mid - %@ otp - %@", buf, 0x16u);
    }

    v22[0] = @"mid_data";
    v22[1] = @"otp_data";
    v23[0] = v14;
    v23[1] = v15;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    if (v21)
    {
      jk24uiwqrg(v21);
    }

    if (v20)
    {
      jk24uiwqrg(v20);
    }

    goto LABEL_20;
  }

  v5 = v4;
  if (v4 == -45061)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Account not provisioned";
      v8 = v6;
      v9 = 2;
LABEL_18:
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v25) = v5;
      v7 = "ADIOTPRequest failed. ERROR: %d";
      v8 = v6;
      v9 = 8;
      goto LABEL_18;
    }
  }

  v10 = 0;
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (int)provisionDeviceWithData:(id)data
{
  v57 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Begin device provisioning.", buf, 2u);
  }

  v47 = 0;
  v48 = 0;
  dsidNumber = self->_dsidNumber;
  v7 = dataCopy;
  rsegvyrt87(dsidNumber, [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v48, &v47 + 4, &v47);
  v9 = v8;
  v10 = v8 == 0;
  v11 = _AALogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "ADIProvisioningStart successful", buf, 2u);
    }

    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:v48 length:HIDWORD(v47)];
    v13 = +[AAURLConfiguration urlConfiguration];
    finishProvisioningURL = [v13 finishProvisioningURL];

    v15 = [[AADeviceProvisioningRequest alloc] initWithDSID:self->_dsid URLString:finishProvisioningURL requestData:v11];
    v16 = v15;
    if (self->_cookieStorageRef)
    {
      [(AARequest *)v15 setCookieStorage:?];
    }

    *buf = 0;
    v52 = buf;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__10;
    v55 = __Block_byref_object_dispose__10;
    v56 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__10;
    v45 = __Block_byref_object_dispose__10;
    v46 = 0;
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Sending finishProvisioningMachine Request", v37, 2u);
    }

    v18 = dispatch_semaphore_create(0);
    *v37 = 0;
    v38 = v37;
    v39 = 0x2020000000;
    v40 = 1;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __55__AADeviceProvisioningSession_provisionDeviceWithData___block_invoke;
    v32[3] = &unk_1E7C9CB00;
    v34 = v37;
    v32[4] = self;
    v35 = buf;
    v36 = &v41;
    v19 = v18;
    v33 = v19;
    [(AARequest *)v16 performRequestWithHandler:v32];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    if (v38[24] == 1)
    {
      v20 = _AALogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Calling ADIProvisioningEnd", v49, 2u);
      }

      [*(v52 + 5) bytes];
      [*(v52 + 5) length];
      [v42[5] bytes];
      [v42[5] length];
      uv5t6nhkui();
      v22 = v21;
      if (v21)
      {
        v23 = _AALogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v49 = 67109120;
          v50 = v22;
          _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "ADIProvisioningEnd failed. ERROR: %d", v49, 8u);
        }
      }
    }

    v24 = _AALogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "Calling ADIProvisioningSessionDestroy", v49, 2u);
    }

    fy34trz2st();
    v9 = v25;
    if (v25)
    {
      v26 = _AALogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 67109120;
        v50 = v9;
        v27 = "ADIProvisioningSessionDestroy failed. ERROR: %d";
        v28 = v26;
        v29 = 8;
LABEL_26:
        _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, v27, v49, v29);
      }
    }

    else
    {
      v26 = _AALogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        v27 = "Device provisioning complete. Huzzah!";
        v28 = v26;
        v29 = 2;
        goto LABEL_26;
      }
    }

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(&v41, 8);

    _Block_object_dispose(buf, 8);
    goto LABEL_28;
  }

  if (v12)
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "ADIProvisioningStart failed. ERROR: %d", buf, 8u);
  }

LABEL_28:

  v30 = *MEMORY[0x1E69E9840];
  return v9;
}

void __55__AADeviceProvisioningSession_provisionDeviceWithData___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v7;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "finishProvisioningMachine failed. ERROR: %@", &v24, 0xCu);
    }
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "finishProvisioningMachine succeeded", &v24, 2u);
    }

    v10 = [v6 responseDictionary];
    v8 = [v10 objectForKeyedSubscript:@"settingInfo"];

    v11 = [v6 responseDictionary];
    v12 = [v11 objectForKeyedSubscript:@"transportKey"];

    v13 = [v6 responseDictionary];
    v14 = [v13 objectForKeyedSubscript:@"dsId"];
    v15 = [v14 longLongValue];

    if (v15 != *(*(a1 + 32) + 16))
    {
      v16 = _AALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Returned DSID from finishProvisioningMachine doesn't match!", &v24, 2u);
      }
    }

    if (v8)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      v18 = *(*(a1 + 56) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    else
    {
      v19 = _AALogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Didn't get a settingsInfo back from the server", &v24, 2u);
      }
    }

    if (v12)
    {
      v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
      v21 = *(*(a1 + 64) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }

    else
    {
      v22 = _AALogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Didn't get a transportKey back from the server", &v24, 2u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v23 = *MEMORY[0x1E69E9840];
}

- (int)synchronizeProvisioningWithData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Begin synchronizing device provisioning.", buf, 2u);
  }

  v25 = 0;
  *buf = 0;
  v24 = 0;
  dsidNumber = self->_dsidNumber;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];

  tn46gtiuhw(dsidNumber, bytes, v8, buf, &v24 + 4, &v25, &v24);
  v10 = v9;
  v11 = _AALogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *v27 = 67109120;
      v28 = v10;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "ADISynchronize failed. ERROR: %d", v27, 8u);
    }
  }

  else
  {
    if (v12)
    {
      *v27 = 0;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "ADISynchronize successful", v27, 2u);
    }

    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:v25 length:v24];
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v13 initWithBytes:*buf length:HIDWORD(v24) encoding:0];
    v15 = +[AAURLConfiguration urlConfiguration];
    syncMachineURL = [v15 syncMachineURL];

    v17 = [[AADeviceProvisioningRequest alloc] initWithDSID:self->_dsid URLString:syncMachineURL requestData:v11];
    [(AARequest *)v17 setDeviceProvisioningMachineId:v14];
    if (self->_cookieStorageRef)
    {
      [(AARequest *)v17 setCookieStorage:?];
    }

    v18 = dispatch_semaphore_create(0);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63__AADeviceProvisioningSession_synchronizeProvisioningWithData___block_invoke;
    v22[3] = &unk_1E7C9BD68;
    v22[4] = self;
    v23 = v18;
    v19 = v18;
    [(AARequest *)v17 performRequestWithHandler:v22];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

void __63__AADeviceProvisioningSession_synchronizeProvisioningWithData___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v17 = 138412290;
      v18 = v7;
      v10 = "syncMachine failed. ERROR: %@";
      v11 = v8;
      v12 = 12;
LABEL_9:
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v9)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "syncMachine succeeded", &v17, 2u);
  }

  v13 = [v6 responseDictionary];
  v14 = [v13 objectForKeyedSubscript:@"dsId"];
  v15 = [v14 longLongValue];

  if (v15 != *(*(a1 + 32) + 16))
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v10 = "Returned DSID from finishProvisioningMachine doesn't match!";
      v11 = v8;
      v12 = 2;
      goto LABEL_9;
    }

LABEL_10:
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v16 = *MEMORY[0x1E69E9840];
}

- (int)eraseProvisioning
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    dsid = self->_dsid;
    *v10 = 138412290;
    *&v10[4] = dsid;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Erase device provisioning for dsid:%{mask}@", v10, 0xCu);
  }

  v5 = [MEMORY[0x1E696AE88] scannerWithString:self->_dsid];
  *v10 = 0;
  [v5 scanUnsignedLongLong:v10];
  p435tmhbla();
  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)initWithAccount:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AADeviceProvisioningSession.m" lineNumber:47 description:@"Nil account passed to provisioning session."];
}

@end