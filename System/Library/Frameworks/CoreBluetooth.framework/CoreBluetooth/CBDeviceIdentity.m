@interface CBDeviceIdentity
- (BOOL)isEqual:(id)a3;
- (CBDeviceIdentity)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation CBDeviceIdentity

- (void)encodeWithXPCObject:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSString *)self->_accountID UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "acID", v5);
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    *uuid = 0;
    v33 = 0;
    v7 = v4;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v7, "btID", uuid);
  }

  contactID = self->_contactID;
  v9 = v4;
  v10 = [(NSString *)contactID UTF8String];
  if (v10)
  {
    xpc_dictionary_set_string(v9, "cnID", v10);
  }

  irkData = self->_irkData;
  if (irkData)
  {
    v12 = irkData;
    v13 = v9;
    v14 = irkData;
    v15 = [(NSData *)v14 bytes];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = "";
    }

    v17 = [(NSData *)v14 length];

    xpc_dictionary_set_data(v13, "irkD", v16, v17);
  }

  identifier = self->_identifier;
  v19 = v9;
  v20 = [(NSString *)identifier UTF8String];
  if (v20)
  {
    xpc_dictionary_set_string(v19, "id", v20);
  }

  idsDeviceID = self->_idsDeviceID;
  v22 = v19;
  v23 = [(NSString *)idsDeviceID UTF8String];
  if (v23)
  {
    xpc_dictionary_set_string(v22, "idsI", v23);
  }

  model = self->_model;
  v25 = v22;
  v26 = [(NSString *)model UTF8String];
  if (v26)
  {
    xpc_dictionary_set_string(v25, "md", v26);
  }

  name = self->_name;
  v28 = v25;
  v29 = [(NSString *)name UTF8String];
  if (v29)
  {
    xpc_dictionary_set_string(v28, "nm", v29);
  }

  type = self->_type;
  if (type)
  {
    xpc_dictionary_set_int64(v28, "idTy", type);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)descriptionWithLevel:(int)a3
{
  type = self->_type;
  if (type > 7)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1E811DF58[type];
  }

  v30 = v6;
  NSAppendPrintF_safe();
  v7 = 0;
  v8 = self->_identifier;
  v9 = self->_idsDeviceID;
  if (([(NSString *)v9 isEqual:v8, v30]& 1) != 0)
  {
    v10 = v8;
    v8 = 0;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    NSAppendPrintF_safe();
    v11 = v7;
    v10 = v7;
    v7 = v11;
  }

LABEL_9:
  if (v9)
  {
    NSAppendPrintF_safe();
    v12 = v7;

    v7 = v12;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v14 = bluetoothIdentifier;
    v31 = [(NSUUID *)v14 UUIDString];
    NSAppendPrintF_safe();
    v15 = v7;

    v7 = v15;
  }

  name = self->_name;
  if (name)
  {
    v32 = name;
    NSAppendPrintF_safe();
    v17 = v7;

    v7 = v17;
  }

  model = self->_model;
  if (model)
  {
    v33 = model;
    NSAppendPrintF_safe();
    v19 = v7;

    v7 = v19;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    v34 = accountID;
    NSAppendPrintF_safe();
    v21 = v7;

    v7 = v21;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    v35 = contactID;
    NSAppendPrintF_safe();
    v23 = v7;

    v7 = v23;
  }

  irkData = self->_irkData;
  if (irkData)
  {
    v25 = irkData;
    v36 = CUPrintNSObjectMasked();
    NSAppendPrintF_safe();
    v26 = v7;

    v7 = v26;
  }

  if (a3 <= 20)
  {
    NSAppendPrintF_safe();
    v27 = v7;

    v7 = v27;
  }

  v28 = v7;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CBDeviceIdentity *)v5 accountID];
      accountID = self->_accountID;
      v8 = v6;
      v9 = accountID;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          goto LABEL_44;
        }

        v10 = v9;
        v11 = [(NSUUID *)v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_45;
        }
      }

      v13 = [(CBDeviceIdentity *)v5 bluetoothIdentifier];
      bluetoothIdentifier = self->_bluetoothIdentifier;
      v8 = v13;
      v9 = bluetoothIdentifier;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          goto LABEL_44;
        }

        v15 = v9;
        v16 = [(NSUUID *)v8 isEqual:v9];

        if (!v16)
        {
          goto LABEL_45;
        }
      }

      v17 = [(CBDeviceIdentity *)v5 contactID];
      contactID = self->_contactID;
      v8 = v17;
      v9 = contactID;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          goto LABEL_44;
        }

        v19 = v9;
        v20 = [(NSUUID *)v8 isEqual:v9];

        if (!v20)
        {
          goto LABEL_45;
        }
      }

      v21 = [(CBDeviceIdentity *)v5 identifier];
      identifier = self->_identifier;
      v8 = v21;
      v9 = identifier;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          goto LABEL_44;
        }

        v23 = v9;
        v24 = [(NSUUID *)v8 isEqual:v9];

        if (!v24)
        {
          goto LABEL_45;
        }
      }

      v25 = [(CBDeviceIdentity *)v5 idsDeviceID];
      idsDeviceID = self->_idsDeviceID;
      v8 = v25;
      v9 = idsDeviceID;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          goto LABEL_44;
        }

        v27 = v9;
        v28 = [(NSUUID *)v8 isEqual:v9];

        if (!v28)
        {
          goto LABEL_45;
        }
      }

      v29 = [(CBDeviceIdentity *)v5 irkData];
      irkData = self->_irkData;
      v8 = v29;
      v9 = irkData;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          goto LABEL_44;
        }

        v31 = v9;
        v32 = [(NSUUID *)v8 isEqual:v9];

        if (!v32)
        {
          goto LABEL_45;
        }
      }

      v33 = [(CBDeviceIdentity *)v5 model];
      model = self->_model;
      v8 = v33;
      v9 = model;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          goto LABEL_44;
        }

        v35 = v9;
        v36 = [(NSUUID *)v8 isEqual:v9];

        if (!v36)
        {
          goto LABEL_45;
        }
      }

      v37 = [(CBDeviceIdentity *)v5 name];
      name = self->_name;
      v8 = v37;
      v9 = name;
      if (v8 == v9)
      {

LABEL_49:
        v12 = [(CBDeviceIdentity *)v5 type]== self->_type;
        goto LABEL_46;
      }

      if ((v8 != 0) != (v9 == 0))
      {
        v39 = v9;
        v40 = [(NSUUID *)v8 isEqual:v9];

        if (v40)
        {
          goto LABEL_49;
        }

LABEL_45:
        v12 = 0;
LABEL_46:

        goto LABEL_47;
      }

LABEL_44:

      goto LABEL_45;
    }

    v12 = 0;
  }

LABEL_47:

  return v12;
}

- (CBDeviceIdentity)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = CBDeviceIdentity;
  v13 = [(CBDeviceIdentity *)&v19 init];
  if (!v13)
  {
    if (!a4)
    {
      goto LABEL_21;
    }

    v17 = "CBDeviceIdentity super init failed";
LABEL_20:
    CBErrorF(-6756, v17, v7, v8, v9, v10, v11, v12, v18);
    *a4 = v15 = 0;
    goto LABEL_15;
  }

  if (MEMORY[0x1C68DFDD0](v6) != MEMORY[0x1E69E9E80])
  {
    if (!a4)
    {
      goto LABEL_21;
    }

    v17 = "XPC non-dict";
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSUUID())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  if (!CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  v20 = 0;
  v14 = CUXPCDecodeSInt64RangedEx();
  if (v14 != 6)
  {
    if (v14 != 5)
    {
      goto LABEL_14;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_15;
  }

  v13->_type = v20;
LABEL_14:
  v15 = v13;
LABEL_15:

  return v15;
}

@end