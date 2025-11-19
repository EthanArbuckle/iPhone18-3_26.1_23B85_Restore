@interface CXChannelUpdate
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (CXChannelUpdate)init;
- (CXChannelUpdate)initWithCoder:(id)a3;
- (CXChannelUpdate)updateWithUpdate:(id)a3;
- (NSURL)imageURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioCategory:(id)a3;
- (void)setAudioMode:(id)a3;
- (void)setImageURL:(id)a3;
- (void)setName:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXChannelUpdate

- (CXChannelUpdate)init
{
  v7.receiver = self;
  v7.super_class = CXChannelUpdate;
  v2 = [(CXChannelUpdate *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 9) = 0;
    v4 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    UUID = v3->_UUID;
    v3->_UUID = v4;
  }

  return v3;
}

- (void)setAudioCategory:(id)a3
{
  *(&self->_accessoryButtonEventsEnabled + 1) |= 4u;
  v4 = [a3 copy];
  audioCategory = self->_audioCategory;
  self->_audioCategory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAudioMode:(id)a3
{
  *(&self->_accessoryButtonEventsEnabled + 1) |= 0x20u;
  v4 = [a3 copy];
  audioMode = self->_audioMode;
  self->_audioMode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setName:(id)a3
{
  *(&self->_accessoryButtonEventsEnabled + 1) |= 0x40u;
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (NSURL)imageURL
{
  v2 = [(CXChannelUpdate *)self sandboxExtendedImageURL];
  v3 = [v2 URL];

  return v3;
}

- (void)setImageURL:(id)a3
{
  if (a3)
  {
    v4 = CXGetSandboxExtendedFileURL(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(CXChannelUpdate *)self setSandboxExtendedImageURL:v4];
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v13 = a3;
  v6 = [(CXChannelUpdate *)self UUID];
  v7 = [v6 copyWithZone:a4];
  v8 = *(v13 + 12);
  *(v13 + 12) = v7;

  if (([(CXChannelUpdate *)self hasSet]& 1) != 0)
  {
    *(v13 + 9) |= 1u;
    v9 = [(CXChannelUpdate *)self activeRemoteParticipant];
    [v13 setActiveRemoteParticipant:v9];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x40) != 0)
  {
    *(v13 + 9) |= 0x40u;
    v10 = [(CXChannelUpdate *)self name];
    v11 = [v10 copyWithZone:a4];
    [v13 setName:v11];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x80) != 0)
  {
    *(v13 + 9) |= 0x80u;
    v12 = [(CXChannelUpdate *)self sandboxExtendedImageURL];
    [v13 setSandboxExtendedImageURL:v12];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x100) != 0)
  {
    *(v13 + 9) |= 0x100u;
    [v13 setServiceStatus:{-[CXChannelUpdate serviceStatus](self, "serviceStatus")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x200) != 0)
  {
    *(v13 + 9) |= 0x200u;
    [v13 setTransmissionMode:{-[CXChannelUpdate transmissionMode](self, "transmissionMode")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x400) != 0)
  {
    *(v13 + 9) |= 0x400u;
    [v13 setAccessoryButtonEventsEnabled:{-[CXChannelUpdate accessoryButtonEventsEnabled](self, "accessoryButtonEventsEnabled")}];
  }
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXChannelUpdate *)self updateSanitizedCopy:v5 withZone:a3];

  return v5;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v10 = a3;
  [CXChannelUpdate updateSanitizedCopy:"updateSanitizedCopy:withZone:" withZone:?];
  if (([(CXChannelUpdate *)self hasSet]& 2) != 0)
  {
    *(v10 + 9) |= 2u;
    [v10 setAudioBluetoothFormat:-[CXChannelUpdate audioBluetoothFormat](self, "audioBluetoothFormat")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 4) != 0)
  {
    *(v10 + 9) |= 4u;
    v6 = [(CXChannelUpdate *)self audioCategory];
    v7 = [v6 copyWithZone:a4];
    [v10 setAudioCategory:v7];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x10) != 0)
  {
    *(v10 + 9) |= 0x10u;
    [v10 setAudioInterruptionOperationMode:{-[CXChannelUpdate audioInterruptionOperationMode](self, "audioInterruptionOperationMode")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 8) != 0)
  {
    *(v10 + 9) |= 8u;
    [v10 setAudioInterruptionProvider:{-[CXChannelUpdate audioInterruptionProvider](self, "audioInterruptionProvider")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x20) != 0)
  {
    *(v10 + 9) |= 0x20u;
    v8 = [(CXChannelUpdate *)self audioMode];
    v9 = [v8 copyWithZone:a4];
    [v10 setAudioMode:v9];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXChannelUpdate *)self updateCopy:v5 withZone:a3];
  return v5;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

- (CXChannelUpdate)initWithCoder:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = CXChannelUpdate;
  v5 = [(CXChannelUpdate *)&v39 init];
  if (!v5)
  {
LABEL_35:
    v34 = v5;
    goto LABEL_36;
  }

  v38 = 0;
  v6 = v4;
  v7 = NSStringFromSelector(sel_hasSet);
  v8 = [v4 decodeBytesForKey:v7 returnedLength:&v38];

  if (v38 == 2)
  {
    *(v5 + 9) = *v8;
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_UUID);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    v12 = *(v5 + 12);
    *(v5 + 12) = v11;

    if ([v5 hasSet])
    {
      v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"activeRemoteParticipant"];
      v15 = *(v5 + 2);
      *(v5 + 2) = v14;
    }

    if (([v5 hasSet] & 2) != 0)
    {
      *(v5 + 6) = [v4 decodeIntegerForKey:@"audioBluetoothFormat"];
    }

    if (([v5 hasSet] & 4) != 0)
    {
      v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"audioCategory"];
      v18 = *(v5 + 7);
      *(v5 + 7) = v17;
    }

    if (([v5 hasSet] & 0x10) != 0)
    {
      *(v5 + 8) = [v4 decodeIntegerForKey:@"audioInterruptionOperationMode"];
    }

    if (([v5 hasSet] & 8) != 0)
    {
      *(v5 + 9) = [v4 decodeIntegerForKey:@"audioInterruptionProvider"];
    }

    if (([v5 hasSet] & 0x20) != 0)
    {
      v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v20 = [v4 decodeObjectOfClasses:v19 forKey:@"audioMode"];
      v21 = *(v5 + 10);
      *(v5 + 10) = v20;
    }

    if (([v5 hasSet] & 0x40) != 0)
    {
      v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v23 = [v4 decodeObjectOfClasses:v22 forKey:@"name"];
      v24 = *(v5 + 3);
      *(v5 + 3) = v23;
    }

    if (([v5 hasSet] & 0x100) != 0)
    {
      *(v5 + 4) = [v4 decodeIntegerForKey:@"serviceStatus"];
    }

    if (([v5 hasSet] & 0x200) != 0)
    {
      *(v5 + 5) = [v4 decodeIntegerForKey:@"transmissionMode"];
    }

    if (([v5 hasSet] & 0x400) != 0)
    {
      v5[8] = [v4 decodeBoolForKey:@"accessoryButtonEventsEnabled"];
    }

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_sandboxExtendedImageURL);
    v27 = [v4 decodeObjectOfClass:v25 forKey:v26];

    if (v27)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 connection], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
      {
        v29 = [v4 connection];
        v30 = [v27 URL];
        v31 = [v29 cx_clientSandboxCanAccessFileURL:v30];

        if (v31)
        {
          v32 = v27;
          v33 = *(v5 + 11);
          *(v5 + 11) = v32;
        }

        else
        {
          v33 = CXDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v27;
            _os_log_impl(&dword_1B47F3000, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Client does not have permission to access %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v35 = v27;
        v29 = *(v5 + 11);
        *(v5 + 11) = v35;
      }
    }

    goto LABEL_35;
  }

  v34 = 0;
LABEL_36:

  v36 = *MEMORY[0x1E69E9840];
  return v34;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(CXChannelUpdate *)self UUID];
  v5 = NSStringFromSelector(sel_UUID);
  [v12 encodeObject:v4 forKey:v5];

  v6 = NSStringFromSelector(sel_hasSet);
  [v12 encodeBytes:&self->_accessoryButtonEventsEnabled + 1 length:2 forKey:v6];

  if (([(CXChannelUpdate *)self hasSet]& 1) != 0)
  {
    v7 = [(CXChannelUpdate *)self activeRemoteParticipant];
    [v12 encodeObject:v7 forKey:@"activeRemoteParticipant"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 2) != 0)
  {
    [v12 encodeInteger:-[CXChannelUpdate audioBluetoothFormat](self forKey:{"audioBluetoothFormat"), @"audioBluetoothFormat"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 4) != 0)
  {
    v8 = [(CXChannelUpdate *)self audioCategory];
    [v12 encodeObject:v8 forKey:@"audioCategory"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x10) != 0)
  {
    [v12 encodeInteger:-[CXChannelUpdate audioInterruptionOperationMode](self forKey:{"audioInterruptionOperationMode"), @"audioInterruptionOperationMode"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 8) != 0)
  {
    [v12 encodeInteger:-[CXChannelUpdate audioInterruptionProvider](self forKey:{"audioInterruptionProvider"), @"audioInterruptionProvider"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x20) != 0)
  {
    v9 = [(CXChannelUpdate *)self audioMode];
    [v12 encodeObject:v9 forKey:@"audioMode"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x40) != 0)
  {
    v10 = [(CXChannelUpdate *)self name];
    [v12 encodeObject:v10 forKey:@"name"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x80) != 0)
  {
    v11 = [(CXChannelUpdate *)self sandboxExtendedImageURL];
    [v12 encodeObject:v11 forKey:@"sandboxExtendedImageURL"];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x100) != 0)
  {
    [v12 encodeInteger:-[CXChannelUpdate serviceStatus](self forKey:{"serviceStatus"), @"serviceStatus"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x200) != 0)
  {
    [v12 encodeInteger:-[CXChannelUpdate transmissionMode](self forKey:{"transmissionMode"), @"transmissionMode"}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x400) != 0)
  {
    [v12 encodeBool:-[CXChannelUpdate accessoryButtonEventsEnabled](self forKey:{"accessoryButtonEventsEnabled"), @"accessoryButtonEventsEnabled"}];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXChannelUpdate *)self UUID];
  v6 = [v3 stringWithFormat:@"<%@ %p UUID=%@>", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXChannelUpdate *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  if (([(CXChannelUpdate *)self hasSet]& 1) != 0)
  {
    v5 = [(CXChannelUpdate *)self activeRemoteParticipant];
    [v3 appendFormat:@" activeRemoteParticipant=%@", v5];
  }

  if (([(CXChannelUpdate *)self hasSet]& 2) != 0)
  {
    [v3 appendFormat:@" audioBluetoothFormat=%ld", -[CXChannelUpdate audioBluetoothFormat](self, "audioBluetoothFormat")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 4) != 0)
  {
    v6 = [(CXChannelUpdate *)self audioCategory];
    [v3 appendFormat:@" audioCategory=%@", v6];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x10) != 0)
  {
    [v3 appendFormat:@" audioInterruptionOperationMode=%ld", -[CXChannelUpdate audioInterruptionOperationMode](self, "audioInterruptionOperationMode")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 8) != 0)
  {
    [v3 appendFormat:@" audioInterruptionProvider=%ld", -[CXChannelUpdate audioInterruptionProvider](self, "audioInterruptionProvider")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x20) != 0)
  {
    v7 = [(CXChannelUpdate *)self audioMode];
    [v3 appendFormat:@" audioMode=%@", v7];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x80) != 0)
  {
    v8 = [(CXChannelUpdate *)self sandboxExtendedImageURL];
    [v3 appendFormat:@" imageURL=%@", v8];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x40) != 0)
  {
    v9 = [(CXChannelUpdate *)self name];
    [v3 appendFormat:@" name=%@", v9];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x100) != 0)
  {
    [v3 appendFormat:@" serviceStatus=%ld", -[CXChannelUpdate serviceStatus](self, "serviceStatus")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x200) != 0)
  {
    [v3 appendFormat:@" transmissionMode=%ld", -[CXChannelUpdate transmissionMode](self, "transmissionMode")];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x400) != 0)
  {
    [v3 appendFormat:@" accessoryButtonEventsEnabled=%d", -[CXChannelUpdate accessoryButtonEventsEnabled](self, "accessoryButtonEventsEnabled")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (CXChannelUpdate)updateWithUpdate:(id)a3
{
  v4 = a3;
  v5 = [(CXChannelUpdate *)self copy];
  if ([v4 hasSet])
  {
    v6 = [v4 activeRemoteParticipant];
    [v5 setActiveRemoteParticipant:v6];
  }

  if (([v4 hasSet] & 2) != 0)
  {
    [v5 setAudioBluetoothFormat:objc_msgSend(v4, "audioBluetoothFormat")];
  }

  if (([v4 hasSet] & 4) != 0)
  {
    v7 = [v4 audioCategory];
    [v5 setAudioCategory:v7];
  }

  if (([v4 hasSet] & 0x10) != 0)
  {
    [v5 setAudioInterruptionOperationMode:{objc_msgSend(v4, "audioInterruptionOperationMode")}];
  }

  if (([v4 hasSet] & 8) != 0)
  {
    [v5 setAudioInterruptionProvider:{objc_msgSend(v4, "audioInterruptionProvider")}];
  }

  if (([v4 hasSet] & 0x20) != 0)
  {
    v8 = [v4 audioMode];
    [v5 setAudioMode:v8];
  }

  if (([v4 hasSet] & 0x40) != 0)
  {
    v9 = [v4 name];
    [v5 setName:v9];
  }

  if (([v4 hasSet] & 0x80) != 0)
  {
    v10 = [v4 sandboxExtendedImageURL];
    [v5 setSandboxExtendedImageURL:v10];
  }

  if (([v4 hasSet] & 0x100) != 0)
  {
    [v5 setServiceStatus:{objc_msgSend(v4, "serviceStatus")}];
  }

  if (([v4 hasSet] & 0x200) != 0)
  {
    [v5 setTransmissionMode:{objc_msgSend(v4, "transmissionMode")}];
  }

  if (([v4 hasSet] & 0x400) != 0)
  {
    [v5 setAccessoryButtonEventsEnabled:{objc_msgSend(v4, "accessoryButtonEventsEnabled")}];
  }

  return v5;
}

@end