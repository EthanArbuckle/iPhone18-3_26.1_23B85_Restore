@interface CBDeviceIdentity
- (BOOL)isEqual:(id)equal;
- (CBDeviceIdentity)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBDeviceIdentity

- (void)encodeWithXPCObject:(id)object
{
  v34 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  uTF8String = [(NSString *)self->_accountID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(objectCopy, "acID", uTF8String);
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    *uuid = 0;
    v33 = 0;
    v7 = objectCopy;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v7, "btID", uuid);
  }

  contactID = self->_contactID;
  v9 = objectCopy;
  uTF8String2 = [(NSString *)contactID UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v9, "cnID", uTF8String2);
  }

  irkData = self->_irkData;
  if (irkData)
  {
    v12 = irkData;
    v13 = v9;
    v14 = irkData;
    bytes = [(NSData *)v14 bytes];
    if (bytes)
    {
      v16 = bytes;
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
  uTF8String3 = [(NSString *)identifier UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v19, "id", uTF8String3);
  }

  idsDeviceID = self->_idsDeviceID;
  v22 = v19;
  uTF8String4 = [(NSString *)idsDeviceID UTF8String];
  if (uTF8String4)
  {
    xpc_dictionary_set_string(v22, "idsI", uTF8String4);
  }

  model = self->_model;
  v25 = v22;
  uTF8String5 = [(NSString *)model UTF8String];
  if (uTF8String5)
  {
    xpc_dictionary_set_string(v25, "md", uTF8String5);
  }

  name = self->_name;
  v28 = v25;
  uTF8String6 = [(NSString *)name UTF8String];
  if (uTF8String6)
  {
    xpc_dictionary_set_string(v28, "nm", uTF8String6);
  }

  type = self->_type;
  if (type)
  {
    xpc_dictionary_set_int64(v28, "idTy", type);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)descriptionWithLevel:(int)level
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
    uUIDString = [(NSUUID *)v14 UUIDString];
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

  if (level <= 20)
  {
    NSAppendPrintF_safe();
    v27 = v7;

    v7 = v27;
  }

  v28 = v7;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      accountID = [(CBDeviceIdentity *)v5 accountID];
      accountID = self->_accountID;
      v8 = accountID;
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

      bluetoothIdentifier = [(CBDeviceIdentity *)v5 bluetoothIdentifier];
      bluetoothIdentifier = self->_bluetoothIdentifier;
      v8 = bluetoothIdentifier;
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

      contactID = [(CBDeviceIdentity *)v5 contactID];
      contactID = self->_contactID;
      v8 = contactID;
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

      identifier = [(CBDeviceIdentity *)v5 identifier];
      identifier = self->_identifier;
      v8 = identifier;
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

      idsDeviceID = [(CBDeviceIdentity *)v5 idsDeviceID];
      idsDeviceID = self->_idsDeviceID;
      v8 = idsDeviceID;
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

      irkData = [(CBDeviceIdentity *)v5 irkData];
      irkData = self->_irkData;
      v8 = irkData;
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

      model = [(CBDeviceIdentity *)v5 model];
      model = self->_model;
      v8 = model;
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

      name = [(CBDeviceIdentity *)v5 name];
      name = self->_name;
      v8 = name;
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

- (CBDeviceIdentity)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = CBDeviceIdentity;
  v13 = [(CBDeviceIdentity *)&v19 init];
  if (!v13)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    v17 = "CBDeviceIdentity super init failed";
LABEL_20:
    CBErrorF(-6756, v17, v7, v8, v9, v10, v11, v12, v18);
    *error = v15 = 0;
    goto LABEL_15;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (!error)
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